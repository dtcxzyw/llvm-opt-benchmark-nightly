inline.NumInlined: 4066
inline.NumDeleted: 1630
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_ELb1EEdeEv:bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS2_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %.0.val
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr %.0.val, ptr %.8.val, i64 noundef range(i64 0, -1) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.c = ptrtoint ptr %.8.val to i64
  %i.d = ptrtoint ptr %.0.val to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %0, ptr %i.a, align 8, !tbaa !14
  store i64 %i.f, ptr %i.b, align 8, !tbaa !14
  %.not.i.i = icmp ult i64 %0, %i.f
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEELb1ESaIS6_EE3getILb1EEERS6_m.exit, label %bb.b, !prof !147

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.69, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.g) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_12_GLOBAL__N_117SortKeyVectorDataESt14default_deleteIS3_ELb1EEELb1ESaIS6_EE3getILb1EEERS6_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %0
  ret ptr %i.m
}

declare noundef zeroext i1 @_ZN6duckdb18TypeIsConstantSizeENS_12PhysicalTypeE(i8 noundef zeroext) local_unnamed_addr #2

declare noundef i64 @_ZN6duckdb13GetTypeIdSizeENS_12PhysicalTypeE(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_125GetSortKeyLengthRecursiveERNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE(ptr noundef nonnull align 8 dereferenceable(122) %0, ptr nofree noundef readonly byval(%"struct.duckdb::(anonymous namespace)::SortKeyChunk") align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::(anonymous namespace)::SortKeyChunk", align 8 ; 7 uses
  %4 = alloca %"struct.duckdb::(anonymous namespace)::SortKeyChunk", align 8 ; 7 uses
  %5 = alloca %"struct.duckdb::(anonymous namespace)::SortKeyChunk", align 8 ; 8 uses
  %.sroa.8 = alloca [7 x i8], align 1             ; 4 uses
  %6 = alloca %"struct.duckdb::string_t", align 8 ; 14 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %.val = load ptr, ptr %0, align 8, !tbaa !66    ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 9
  %.val.val = load i8, ptr %i.b, align 1, !tbaa !67 ; 2 uses
  store i8 %.val.val, ptr %i.a, align 1, !tbaa !599
  switch i8 %.val.val, label %bb.cq [
    i8 1, label %bb.b
    i8 2, label %bb.g
    i8 3, label %bb.l
    i8 4, label %bb.q
    i8 5, label %bb.v
    i8 6, label %bb.aa
    i8 7, label %bb.af
    i8 8, label %bb.ak
    i8 9, label %bb.ap
    i8 11, label %bb.au
    i8 12, label %bb.az
    i8 21, label %bb.be
    i8 -53, label %bb.bj
    i8 -52, label %bb.bo
    i8 -56, label %bb.bt
    i8 24, label %bb.ce
    i8 23, label %bb.cg
    i8 29, label %bb.cl
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.0690.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 14 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !14 ; 10 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %.sroa.4691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4691.0.copyload = load i8, ptr %.sroa.4691.0..sroa_idx, align 8, !tbaa !189
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIbEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.c)
  %i.d = icmp ult i64 %.sroa.0690.0.copyload, %.sroa.2.0.copyload
  br i1 %i.d, label %.lr.ph.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !157
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !158  ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null              ; 2 uses
  %i.g = trunc nuw i8 %.sroa.4691.0.copyload to i1 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39   ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !159  ; 5 uses
  %.not.i15.i = icmp eq ptr %i.k, null
  br i1 %.not.i15.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  br i1 %.not.i.i, label %.lr.ph.split.us.split.us.i, label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.split.us.i
  br i1 %i.g, label %._crit_edge.sink.split.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader: ; preds = %.lr.ph.split.us.split.us.i
  %i.l = sub i64 %.sroa.2.0.copyload, %.sroa.0690.0.copyload ; 3 uses
  %min.iters.check1871 = icmp ult i64 %i.l, 4
  br i1 %min.iters.check1871, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader1883, label %vector.ph1872

vector.ph1872:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader
  %n.vec1874 = and i64 %i.l, -4                   ; 3 uses
  %i.m = add i64 %.sroa.0690.0.copyload, %n.vec1874
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.0690.0.copyload
  br label %vector.body1875

vector.body1875:                                  ; preds = %vector.body1875, %vector.ph1872
  %index1876 = phi i64 [ 0, %vector.ph1872 ], [ %index.next1879, %vector.body1875 ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index1876 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %wide.load1877 = load <2 x i64>, ptr %i.o, align 8, !tbaa !14
  %wide.load1878 = load <2 x i64>, ptr %i.p, align 8, !tbaa !14
  %i.q = add <2 x i64> %wide.load1877, splat (i64 2)
  %i.r = add <2 x i64> %wide.load1878, splat (i64 2)
  store <2 x i64> %i.q, ptr %i.o, align 8, !tbaa !14
  store <2 x i64> %i.r, ptr %i.p, align 8, !tbaa !14
  %index.next1879 = add nuw i64 %index1876, 4     ; 2 uses
  %i.s = icmp eq i64 %index.next1879, %n.vec1874
  br i1 %i.s, label %middle.block1880, label %vector.body1875, !llvm.loop !600

middle.block1880:                                 ; preds = %vector.body1875
  %cmp.n1881 = icmp eq i64 %i.l, %n.vec1874
  br i1 %cmp.n1881, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader1883

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader1883: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader, %middle.block1880
  %.017.us.us.i.ph = phi i64 [ %.sroa.0690.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader ], [ %i.m, %middle.block1880 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader1883, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i
  %.017.us.us.i = phi i64 [ %i.w, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i ], [ %.017.us.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader1883 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.017.us.us.i ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !14
  %i.v = add i64 %i.u, 2
  store i64 %i.v, ptr %i.t, align 8, !tbaa !14
  %i.w = add nuw i64 %.017.us.us.i, 1             ; 2 uses
  %exitcond44.not.i = icmp eq i64 %i.w, %.sroa.2.0.copyload
  br i1 %exitcond44.not.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i, !llvm.loop !601

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.split.us.i
  br i1 %i.g, label %._crit_edge.sink.split.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader: ; preds = %.lr.ph.split.us.split.i
  %i.x = sub i64 %.sroa.2.0.copyload, %.sroa.0690.0.copyload ; 3 uses
  %min.iters.check1858 = icmp ult i64 %i.x, 4
  br i1 %min.iters.check1858, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader1884, label %vector.ph1859

vector.ph1859:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader
  %n.vec1861 = and i64 %i.x, -4                   ; 3 uses
  %i.y = add i64 %.sroa.0690.0.copyload, %n.vec1861
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.0690.0.copyload
  br label %vector.body1862

vector.body1862:                                  ; preds = %vector.body1862, %vector.ph1859
  %index1863 = phi i64 [ 0, %vector.ph1859 ], [ %index.next1866, %vector.body1862 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index1863 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %wide.load1864 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !14
  %wide.load1865 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !14
  %i.ac = add <2 x i64> %wide.load1864, splat (i64 2)
  %i.ad = add <2 x i64> %wide.load1865, splat (i64 2)
  store <2 x i64> %i.ac, ptr %i.aa, align 8, !tbaa !14
  store <2 x i64> %i.ad, ptr %i.ab, align 8, !tbaa !14
  %index.next1866 = add nuw i64 %index1863, 4     ; 2 uses
  %i.ae = icmp eq i64 %index.next1866, %n.vec1861
  br i1 %i.ae, label %middle.block1867, label %vector.body1862, !llvm.loop !602

middle.block1867:                                 ; preds = %vector.body1862
  %cmp.n1868 = icmp eq i64 %i.x, %n.vec1861
  br i1 %cmp.n1868, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader1884

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader1884: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader, %middle.block1867
  %.017.us.i.ph = phi i64 [ %.sroa.0690.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader ], [ %i.y, %middle.block1867 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader1884, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i
  %.017.us.i = phi i64 [ %i.ai, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i ], [ %.017.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader1884 ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.017.us.i ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !14
  %i.ah = add i64 %i.ag, 2
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !14
  %i.ai = add nuw i64 %.017.us.i, 1               ; 2 uses
  %exitcond43.not.i = icmp eq i64 %i.ai, %.sroa.2.0.copyload
  br i1 %exitcond43.not.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, !llvm.loop !603

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %.not.i.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  br i1 %i.g, label %.lr.ph.split.split.us.split.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i

.lr.ph.split.split.us.split.us.i:                 ; preds = %.lr.ph.split.split.us.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.3.0.copyload ; 3 uses
  %.promoted26.i = load i64, ptr %i.aj, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i: ; preds = %bb.c, %.lr.ph.split.split.us.split.us.i
  %i.ak = phi i64 [ %.promoted26.i, %.lr.ph.split.split.us.split.us.i ], [ %i.at, %bb.c ] ; 2 uses
  %.017.us18.us.i = phi i64 [ %.sroa.0690.0.copyload, %.lr.ph.split.split.us.split.us.i ], [ %i.au, %bb.c ] ; 3 uses
  %i.al = add i64 %i.ak, 1                        ; 2 uses
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !14
  %i.am = lshr i64 %.017.us18.us.i, 6
  %i.an = and i64 %.017.us18.us.i, 63
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.am
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !14
  %i.aq = shl nuw i64 1, %i.an
  %i.ar = and i64 %i.ap, %i.aq
  %.not.us.us.i = icmp eq i64 %i.ar, 0
  br i1 %.not.us.us.i, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i
  %i.as = add i64 %i.ak, 2                        ; 2 uses
  store i64 %i.as, ptr %i.aj, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i
  %i.at = phi i64 [ %i.al, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i ], [ %i.as, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i ]
  %i.au = add nuw i64 %.017.us18.us.i, 1          ; 2 uses
  %exitcond42.not.i = icmp eq i64 %i.au, %.sroa.2.0.copyload
  br i1 %exitcond42.not.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i, !llvm.loop !604

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i: ; preds = %.lr.ph.split.split.us.i, %bb.d
  %.017.us18.i = phi i64 [ %i.bf, %bb.d ], [ %.sroa.0690.0.copyload, %.lr.ph.split.split.us.i ] ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.017.us18.i ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !14 ; 2 uses
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !14
  %i.ay = lshr i64 %.017.us18.i, 6
  %i.az = and i64 %.017.us18.i, 63
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ay
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !14
  %i.bc = shl nuw i64 1, %i.az
  %i.bd = and i64 %i.bb, %i.bc
  %.not.us.i = icmp eq i64 %i.bd, 0
  br i1 %.not.us.i, label %bb.d, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i
  %i.be = add i64 %i.aw, 2
  store i64 %i.be, ptr %i.av, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i
  %i.bf = add nuw i64 %.017.us18.i, 1             ; 2 uses
  %exitcond41.not.i = icmp eq i64 %i.bf, %.sroa.2.0.copyload
  br i1 %exitcond41.not.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i, !llvm.loop !604

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  br i1 %i.g, label %.lr.ph.split.split.split.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

.lr.ph.split.split.split.us.i:                    ; preds = %.lr.ph.split.split.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.3.0.copyload ; 3 uses
  %.promoted.i = load i64, ptr %i.bg, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i: ; preds = %bb.e, %.lr.ph.split.split.split.us.i
  %i.bh = phi i64 [ %.promoted.i, %.lr.ph.split.split.split.us.i ], [ %i.bt, %bb.e ] ; 2 uses
  %.017.us22.i = phi i64 [ %.sroa.0690.0.copyload, %.lr.ph.split.split.split.us.i ], [ %i.bu, %bb.e ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.017.us22.i
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = add i64 %i.bh, 1                        ; 2 uses
  store i64 %i.bl, ptr %i.bg, align 8, !tbaa !14
  %i.bm = lshr i64 %i.bk, 6
  %i.bn = and i64 %i.bk, 63
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bm
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !14
  %i.bq = shl nuw i64 1, %i.bn
  %i.br = and i64 %i.bq, %i.bp
  %.not.us24.i = icmp eq i64 %i.br, 0
  br i1 %.not.us24.i, label %bb.e, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i
  %i.bs = add i64 %i.bh, 2                        ; 2 uses
  store i64 %i.bs, ptr %i.bg, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i
  %i.bt = phi i64 [ %i.bl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i ], [ %i.bs, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i ]
  %i.bu = add nuw i64 %.017.us22.i, 1             ; 2 uses
  %exitcond40.not.i = icmp eq i64 %i.bu, %.sroa.2.0.copyload
  br i1 %exitcond40.not.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i, !llvm.loop !604

._crit_edge.sink.split.i:                         ; preds = %.lr.ph.split.us.split.i, %.lr.ph.split.us.split.us.i
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.3.0.copyload ; 2 uses
  %.promoted30.i = load i64, ptr %i.bv, align 8, !tbaa !14
  %i.bw = sub i64 %.sroa.2.0.copyload, %.sroa.0690.0.copyload
  %i.bx = shl i64 %i.bw, 1
  %i.by = add i64 %i.bx, %.promoted30.i
  store i64 %i.by, ptr %i.bv, align 8, !tbaa !14
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %.lr.ph.split.split.i, %bb.f
  %.017.i = phi i64 [ %i.cm, %bb.f ], [ %.sroa.0690.0.copyload, %.lr.ph.split.split.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.017.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.017.i ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !14 ; 2 uses
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !14
  %i.cf = lshr i64 %i.cb, 6
  %i.cg = and i64 %i.cb, 63
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cf
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !14
  %i.cj = shl nuw i64 1, %i.cg
  %i.ck = and i64 %i.ci, %i.cj
  %.not.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i, label %bb.f, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.cl = add i64 %i.cd, 2
  store i64 %i.cl, ptr %i.cc, align 8, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.cm = add nuw i64 %.017.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cm, %.sroa.2.0.copyload
  br i1 %exitcond.not.i, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, !llvm.loop !604

bb.g:                                             ; preds = %bb.a
  %.sroa.0698.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 14 uses
  %.sroa.2699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2699.0.copyload = load i64, ptr %.sroa.2699.0..sroa_idx, align 8, !tbaa !14 ; 10 uses
  %.sroa.3700.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3700.0.copyload = load i64, ptr %.sroa.3700.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %.sroa.4701.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4701.0.copyload = load i8, ptr %.sroa.4701.0..sroa_idx, align 8, !tbaa !189
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.cn)
  %i.co = icmp ult i64 %.sroa.0698.0.copyload, %.sroa.2699.0.copyload
  br i1 %i.co, label %.lr.ph.i45, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

.lr.ph.i45:                                       ; preds = %bb.g
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !157
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !158 ; 3 uses
  %.not.i.i46 = icmp eq ptr %i.cq, null           ; 2 uses
  %i.cr = trunc nuw i8 %.sroa.4701.0.copyload to i1 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !39 ; 9 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !159 ; 5 uses
  %.not.i15.i49 = icmp eq ptr %i.cv, null
  br i1 %.not.i15.i49, label %.lr.ph.split.us.i77, label %.lr.ph.split.i50

.lr.ph.split.us.i77:                              ; preds = %.lr.ph.i45
  br i1 %.not.i.i46, label %.lr.ph.split.us.split.us.i84, label %.lr.ph.split.us.split.i78

.lr.ph.split.us.split.us.i84:                     ; preds = %.lr.ph.split.us.i77
  br i1 %i.cr, label %._crit_edge.sink.split.i82, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i85.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i85.preheader: ; preds = %.lr.ph.split.us.split.us.i84
  %i.cw = sub i64 %.sroa.2699.0.copyload, %.sroa.0698.0.copyload ; 3 uses
  %min.iters.check1845 = icmp ult i64 %i.cw, 4
  br i1 %min.iters.check1845, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i85.preheader1890, label %vector.ph1846

vector.ph1846:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i85.preheader
  %n.vec1848 = and i64 %i.cw, -4                  ; 3 uses
  %i.cx = add i64 %.sroa.0698.0.copyload, %n.vec1848
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.sroa.0698.0.copyload
  br label %vector.body1849

vector.body1849:                                  ; preds = %vector.body1849, %vector.ph1846
  %index1850 = phi i64 [ 0, %vector.ph1846 ], [ %index.next1853, %vector.body1849 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %index1850 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %wide.load1851 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !14
  %wide.load1852 = load <2 x i64>, ptr %i.da, align 8, !tbaa !14
  %i.db = add <2 x i64> %wide.load1851, splat (i64 2)
  %i.dc = add <2 x i64> %wide.load1852, splat (i64 2)
  store <2 x i64> %i.db, ptr %i.cz, align 8, !tbaa !14
  store <2 x i64> %i.dc, ptr %i.da, align 8, !tbaa !14
  %index.next1853 = add nuw i64 %index1850, 4     ; 2 uses
  %i.dd = icmp eq i64 %index.next1853, %n.vec1848
  br i1 %i.dd, label %middle.block1854, label %vector.body1849, !llvm.loop !605

middle.block1854:                                 ; preds = %vector.body1849
  %cmp.n1855 = icmp eq i64 %i.cw, %n.vec1848
  br i1 %cmp.n1855, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i85.preheader1890

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i85.preheader1890: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i85.preheader, %middle.block1854
  %.017.us.us.i86.ph = phi i64 [ %.sroa.0698.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i85.preheader ], [ %i.cx, %middle.block1854 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i85

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i85: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i85.preheader1890, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i85
  %.017.us.us.i86 = phi i64 [ %i.dh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i85 ], [ %.017.us.us.i86.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i85.preheader1890 ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.017.us.us.i86 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !14
  %i.dg = add i64 %i.df, 2
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !14
  %i.dh = add nuw i64 %.017.us.us.i86, 1          ; 2 uses
  %exitcond44.not.i87 = icmp eq i64 %i.dh, %.sroa.2699.0.copyload
  br i1 %exitcond44.not.i87, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i85, !llvm.loop !606

.lr.ph.split.us.split.i78:                        ; preds = %.lr.ph.split.us.i77
  br i1 %i.cr, label %._crit_edge.sink.split.i82, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i79.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i79.preheader: ; preds = %.lr.ph.split.us.split.i78
  %i.di = sub i64 %.sroa.2699.0.copyload, %.sroa.0698.0.copyload ; 3 uses
  %min.iters.check1832 = icmp ult i64 %i.di, 4
  br i1 %min.iters.check1832, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i79.preheader1892, label %vector.ph1833

vector.ph1833:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i79.preheader
  %n.vec1835 = and i64 %i.di, -4                  ; 3 uses
  %i.dj = add i64 %.sroa.0698.0.copyload, %n.vec1835
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.sroa.0698.0.copyload
  br label %vector.body1836

vector.body1836:                                  ; preds = %vector.body1836, %vector.ph1833
  %index1837 = phi i64 [ 0, %vector.ph1833 ], [ %index.next1840, %vector.body1836 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %index1837 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %wide.load1838 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !14
  %wide.load1839 = load <2 x i64>, ptr %i.dm, align 8, !tbaa !14
  %i.dn = add <2 x i64> %wide.load1838, splat (i64 2)
  %i.do = add <2 x i64> %wide.load1839, splat (i64 2)
  store <2 x i64> %i.dn, ptr %i.dl, align 8, !tbaa !14
  store <2 x i64> %i.do, ptr %i.dm, align 8, !tbaa !14
  %index.next1840 = add nuw i64 %index1837, 4     ; 2 uses
  %i.dp = icmp eq i64 %index.next1840, %n.vec1835
  br i1 %i.dp, label %middle.block1841, label %vector.body1836, !llvm.loop !607

middle.block1841:                                 ; preds = %vector.body1836
  %cmp.n1842 = icmp eq i64 %i.di, %n.vec1835
  br i1 %cmp.n1842, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i79.preheader1892

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i79.preheader1892: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i79.preheader, %middle.block1841
  %.017.us.i80.ph = phi i64 [ %.sroa.0698.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i79.preheader ], [ %i.dj, %middle.block1841 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i79

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i79: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i79.preheader1892, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i79
  %.017.us.i80 = phi i64 [ %i.dt, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i79 ], [ %.017.us.i80.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i79.preheader1892 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.017.us.i80 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !14
  %i.ds = add i64 %i.dr, 2
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !14
  %i.dt = add nuw i64 %.017.us.i80, 1             ; 2 uses
  %exitcond43.not.i81 = icmp eq i64 %i.dt, %.sroa.2699.0.copyload
  br i1 %exitcond43.not.i81, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i79, !llvm.loop !608

.lr.ph.split.i50:                                 ; preds = %.lr.ph.i45
  br i1 %.not.i.i46, label %.lr.ph.split.split.us.i64, label %.lr.ph.split.split.i51

.lr.ph.split.split.us.i64:                        ; preds = %.lr.ph.split.i50
  br i1 %i.cr, label %.lr.ph.split.split.us.split.us.i70, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i65

.lr.ph.split.split.us.split.us.i70:               ; preds = %.lr.ph.split.split.us.i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.sroa.3700.0.copyload ; 3 uses
  %.promoted26.i71 = load i64, ptr %i.du, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i72

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i72: ; preds = %bb.h, %.lr.ph.split.split.us.split.us.i70
  %i.dv = phi i64 [ %.promoted26.i71, %.lr.ph.split.split.us.split.us.i70 ], [ %i.ee, %bb.h ] ; 2 uses
  %.017.us18.us.i73 = phi i64 [ %.sroa.0698.0.copyload, %.lr.ph.split.split.us.split.us.i70 ], [ %i.ef, %bb.h ] ; 3 uses
  %i.dw = add i64 %i.dv, 1                        ; 2 uses
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !14
  %i.dx = lshr i64 %.017.us18.us.i73, 6
  %i.dy = and i64 %.017.us18.us.i73, 63
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dx
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !14
  %i.eb = shl nuw i64 1, %i.dy
  %i.ec = and i64 %i.ea, %i.eb
  %.not.us.us.i74 = icmp eq i64 %i.ec, 0
  br i1 %.not.us.us.i74, label %bb.h, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i75

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i75: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i72
  %i.ed = add i64 %i.dv, 2                        ; 2 uses
  store i64 %i.ed, ptr %i.du, align 8, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i75, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i72
  %i.ee = phi i64 [ %i.dw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i72 ], [ %i.ed, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i75 ]
  %i.ef = add nuw i64 %.017.us18.us.i73, 1        ; 2 uses
  %exitcond42.not.i76 = icmp eq i64 %i.ef, %.sroa.2699.0.copyload
  br i1 %exitcond42.not.i76, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i72, !llvm.loop !609

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i65: ; preds = %.lr.ph.split.split.us.i64, %bb.i
  %.017.us18.i66 = phi i64 [ %i.eq, %bb.i ], [ %.sroa.0698.0.copyload, %.lr.ph.split.split.us.i64 ] ; 4 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.017.us18.i66 ; 3 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !14 ; 2 uses
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !14
  %i.ej = lshr i64 %.017.us18.i66, 6
  %i.ek = and i64 %.017.us18.i66, 63
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ej
  %i.em = load i64, ptr %i.el, align 8, !tbaa !14
  %i.en = shl nuw i64 1, %i.ek
  %i.eo = and i64 %i.em, %i.en
  %.not.us.i67 = icmp eq i64 %i.eo, 0
  br i1 %.not.us.i67, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i68

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i68: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i65
  %i.ep = add i64 %i.eh, 2
  store i64 %i.ep, ptr %i.eg, align 8, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i68, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i65
  %i.eq = add nuw i64 %.017.us18.i66, 1           ; 2 uses
  %exitcond41.not.i69 = icmp eq i64 %i.eq, %.sroa.2699.0.copyload
  br i1 %exitcond41.not.i69, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i65, !llvm.loop !609

.lr.ph.split.split.i51:                           ; preds = %.lr.ph.split.i50
  br i1 %i.cr, label %.lr.ph.split.split.split.us.i57, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52

.lr.ph.split.split.split.us.i57:                  ; preds = %.lr.ph.split.split.i51
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.sroa.3700.0.copyload ; 3 uses
  %.promoted.i58 = load i64, ptr %i.er, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i59

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i59: ; preds = %bb.j, %.lr.ph.split.split.split.us.i57
  %i.es = phi i64 [ %.promoted.i58, %.lr.ph.split.split.split.us.i57 ], [ %i.fe, %bb.j ] ; 2 uses
  %.017.us22.i60 = phi i64 [ %.sroa.0698.0.copyload, %.lr.ph.split.split.split.us.i57 ], [ %i.ff, %bb.j ] ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.017.us22.i60
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ev = zext i32 %i.eu to i64                   ; 2 uses
  %i.ew = add i64 %i.es, 1                        ; 2 uses
  store i64 %i.ew, ptr %i.er, align 8, !tbaa !14
  %i.ex = lshr i64 %i.ev, 6
  %i.ey = and i64 %i.ev, 63
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.ex
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !14
  %i.fb = shl nuw i64 1, %i.ey
  %i.fc = and i64 %i.fb, %i.fa
  %.not.us24.i61 = icmp eq i64 %i.fc, 0
  br i1 %.not.us24.i61, label %bb.j, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i62

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i62: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i59
  %i.fd = add i64 %i.es, 2                        ; 2 uses
  store i64 %i.fd, ptr %i.er, align 8, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i62, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i59
  %i.fe = phi i64 [ %i.ew, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i59 ], [ %i.fd, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i62 ]
  %i.ff = add nuw i64 %.017.us22.i60, 1           ; 2 uses
  %exitcond40.not.i63 = icmp eq i64 %i.ff, %.sroa.2699.0.copyload
  br i1 %exitcond40.not.i63, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i59, !llvm.loop !609

._crit_edge.sink.split.i82:                       ; preds = %.lr.ph.split.us.split.i78, %.lr.ph.split.us.split.us.i84
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.sroa.3700.0.copyload ; 2 uses
  %.promoted30.i83 = load i64, ptr %i.fg, align 8, !tbaa !14
  %i.fh = sub i64 %.sroa.2699.0.copyload, %.sroa.0698.0.copyload
  %i.fi = shl i64 %i.fh, 1
  %i.fj = add i64 %i.fi, %.promoted30.i83
  store i64 %i.fj, ptr %i.fg, align 8, !tbaa !14
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52: ; preds = %.lr.ph.split.split.i51, %bb.k
  %.017.i53 = phi i64 [ %i.fx, %bb.k ], [ %.sroa.0698.0.copyload, %.lr.ph.split.split.i51 ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.017.i53
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.017.i53 ; 3 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !14 ; 2 uses
  %i.fp = add i64 %i.fo, 1
  store i64 %i.fp, ptr %i.fn, align 8, !tbaa !14
  %i.fq = lshr i64 %i.fm, 6
  %i.fr = and i64 %i.fm, 63
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.fq
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !14
  %i.fu = shl nuw i64 1, %i.fr
  %i.fv = and i64 %i.ft, %i.fu
  %.not.i54 = icmp eq i64 %i.fv, 0
  br i1 %.not.i54, label %bb.k, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i55

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i55: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52
  %i.fw = add i64 %i.fo, 2
  store i64 %i.fw, ptr %i.fn, align 8, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i55, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52
  %i.fx = add nuw i64 %.017.i53, 1                ; 2 uses
  %exitcond.not.i56 = icmp eq i64 %i.fx, %.sroa.2699.0.copyload
  br i1 %exitcond.not.i56, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52, !llvm.loop !609

bb.l:                                             ; preds = %bb.a
  %.sroa.0708.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 14 uses
  %.sroa.2709.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2709.0.copyload = load i64, ptr %.sroa.2709.0..sroa_idx, align 8, !tbaa !14 ; 10 uses
  %.sroa.3710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3710.0.copyload = load i64, ptr %.sroa.3710.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %.sroa.4711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4711.0.copyload = load i8, ptr %.sroa.4711.0..sroa_idx, align 8, !tbaa !189
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIaEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.fy)
  %i.fz = icmp ult i64 %.sroa.0708.0.copyload, %.sroa.2709.0.copyload
  br i1 %i.fz, label %.lr.ph.i88, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

.lr.ph.i88:                                       ; preds = %bb.l
  %i.ga = load ptr, ptr %i.fy, align 8, !tbaa !157
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !158 ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.gb, null           ; 2 uses
  %i.gc = trunc nuw i8 %.sroa.4711.0.copyload to i1 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !39 ; 9 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !159 ; 5 uses
  %.not.i15.i92 = icmp eq ptr %i.gg, null
  br i1 %.not.i15.i92, label %.lr.ph.split.us.i120, label %.lr.ph.split.i93

.lr.ph.split.us.i120:                             ; preds = %.lr.ph.i88
  br i1 %.not.i.i89, label %.lr.ph.split.us.split.us.i127, label %.lr.ph.split.us.split.i121

.lr.ph.split.us.split.us.i127:                    ; preds = %.lr.ph.split.us.i120
  br i1 %i.gc, label %._crit_edge.sink.split.i125, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i128.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i128.preheader: ; preds = %.lr.ph.split.us.split.us.i127
  %i.gh = sub i64 %.sroa.2709.0.copyload, %.sroa.0708.0.copyload ; 3 uses
  %min.iters.check1819 = icmp ult i64 %i.gh, 4
  br i1 %min.iters.check1819, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i128.preheader1898, label %vector.ph1820

vector.ph1820:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i128.preheader
  %n.vec1822 = and i64 %i.gh, -4                  ; 3 uses
  %i.gi = add i64 %.sroa.0708.0.copyload, %n.vec1822
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.sroa.0708.0.copyload
  br label %vector.body1823

vector.body1823:                                  ; preds = %vector.body1823, %vector.ph1820
  %index1824 = phi i64 [ 0, %vector.ph1820 ], [ %index.next1827, %vector.body1823 ] ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %index1824 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 2 uses
  %wide.load1825 = load <2 x i64>, ptr %i.gk, align 8, !tbaa !14
  %wide.load1826 = load <2 x i64>, ptr %i.gl, align 8, !tbaa !14
  %i.gm = add <2 x i64> %wide.load1825, splat (i64 2)
  %i.gn = add <2 x i64> %wide.load1826, splat (i64 2)
  store <2 x i64> %i.gm, ptr %i.gk, align 8, !tbaa !14
  store <2 x i64> %i.gn, ptr %i.gl, align 8, !tbaa !14
  %index.next1827 = add nuw i64 %index1824, 4     ; 2 uses
  %i.go = icmp eq i64 %index.next1827, %n.vec1822
  br i1 %i.go, label %middle.block1828, label %vector.body1823, !llvm.loop !610

middle.block1828:                                 ; preds = %vector.body1823
  %cmp.n1829 = icmp eq i64 %i.gh, %n.vec1822
  br i1 %cmp.n1829, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i128.preheader1898

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i128.preheader1898: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i128.preheader, %middle.block1828
  %.017.us.us.i129.ph = phi i64 [ %.sroa.0708.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i128.preheader ], [ %i.gi, %middle.block1828 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i128

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i128: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i128.preheader1898, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i128
  %.017.us.us.i129 = phi i64 [ %i.gs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i128 ], [ %.017.us.us.i129.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i128.preheader1898 ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.017.us.us.i129 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !14
  %i.gr = add i64 %i.gq, 2
  store i64 %i.gr, ptr %i.gp, align 8, !tbaa !14
  %i.gs = add nuw i64 %.017.us.us.i129, 1         ; 2 uses
  %exitcond44.not.i130 = icmp eq i64 %i.gs, %.sroa.2709.0.copyload
  br i1 %exitcond44.not.i130, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i128, !llvm.loop !611

.lr.ph.split.us.split.i121:                       ; preds = %.lr.ph.split.us.i120
  br i1 %i.gc, label %._crit_edge.sink.split.i125, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i122.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i122.preheader: ; preds = %.lr.ph.split.us.split.i121
  %i.gt = sub i64 %.sroa.2709.0.copyload, %.sroa.0708.0.copyload ; 3 uses
  %min.iters.check1806 = icmp ult i64 %i.gt, 4
  br i1 %min.iters.check1806, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i122.preheader1900, label %vector.ph1807

vector.ph1807:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i122.preheader
  %n.vec1809 = and i64 %i.gt, -4                  ; 3 uses
  %i.gu = add i64 %.sroa.0708.0.copyload, %n.vec1809
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.sroa.0708.0.copyload
  br label %vector.body1810

vector.body1810:                                  ; preds = %vector.body1810, %vector.ph1807
  %index1811 = phi i64 [ 0, %vector.ph1807 ], [ %index.next1814, %vector.body1810 ] ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %index1811 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %wide.load1812 = load <2 x i64>, ptr %i.gw, align 8, !tbaa !14
  %wide.load1813 = load <2 x i64>, ptr %i.gx, align 8, !tbaa !14
  %i.gy = add <2 x i64> %wide.load1812, splat (i64 2)
  %i.gz = add <2 x i64> %wide.load1813, splat (i64 2)
  store <2 x i64> %i.gy, ptr %i.gw, align 8, !tbaa !14
  store <2 x i64> %i.gz, ptr %i.gx, align 8, !tbaa !14
  %index.next1814 = add nuw i64 %index1811, 4     ; 2 uses
  %i.ha = icmp eq i64 %index.next1814, %n.vec1809
  br i1 %i.ha, label %middle.block1815, label %vector.body1810, !llvm.loop !612

middle.block1815:                                 ; preds = %vector.body1810
  %cmp.n1816 = icmp eq i64 %i.gt, %n.vec1809
  br i1 %cmp.n1816, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i122.preheader1900

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i122.preheader1900: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i122.preheader, %middle.block1815
  %.017.us.i123.ph = phi i64 [ %.sroa.0708.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i122.preheader ], [ %i.gu, %middle.block1815 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i122

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i122: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i122.preheader1900, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i122
  %.017.us.i123 = phi i64 [ %i.he, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i122 ], [ %.017.us.i123.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i122.preheader1900 ] ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.017.us.i123 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !14
  %i.hd = add i64 %i.hc, 2
  store i64 %i.hd, ptr %i.hb, align 8, !tbaa !14
  %i.he = add nuw i64 %.017.us.i123, 1            ; 2 uses
  %exitcond43.not.i124 = icmp eq i64 %i.he, %.sroa.2709.0.copyload
  br i1 %exitcond43.not.i124, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i122, !llvm.loop !613

.lr.ph.split.i93:                                 ; preds = %.lr.ph.i88
  br i1 %.not.i.i89, label %.lr.ph.split.split.us.i107, label %.lr.ph.split.split.i94

.lr.ph.split.split.us.i107:                       ; preds = %.lr.ph.split.i93
  br i1 %i.gc, label %.lr.ph.split.split.us.split.us.i113, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i108

.lr.ph.split.split.us.split.us.i113:              ; preds = %.lr.ph.split.split.us.i107
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.sroa.3710.0.copyload ; 3 uses
  %.promoted26.i114 = load i64, ptr %i.hf, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i115

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i115: ; preds = %bb.m, %.lr.ph.split.split.us.split.us.i113
  %i.hg = phi i64 [ %.promoted26.i114, %.lr.ph.split.split.us.split.us.i113 ], [ %i.hp, %bb.m ] ; 2 uses
  %.017.us18.us.i116 = phi i64 [ %.sroa.0708.0.copyload, %.lr.ph.split.split.us.split.us.i113 ], [ %i.hq, %bb.m ] ; 3 uses
  %i.hh = add i64 %i.hg, 1                        ; 2 uses
  store i64 %i.hh, ptr %i.hf, align 8, !tbaa !14
  %i.hi = lshr i64 %.017.us18.us.i116, 6
  %i.hj = and i64 %.017.us18.us.i116, 63
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.hi
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !14
  %i.hm = shl nuw i64 1, %i.hj
  %i.hn = and i64 %i.hl, %i.hm
  %.not.us.us.i117 = icmp eq i64 %i.hn, 0
  br i1 %.not.us.us.i117, label %bb.m, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i118

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i118: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i115
  %i.ho = add i64 %i.hg, 2                        ; 2 uses
  store i64 %i.ho, ptr %i.hf, align 8, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i118, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i115
  %i.hp = phi i64 [ %i.hh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i115 ], [ %i.ho, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i118 ]
  %i.hq = add nuw i64 %.017.us18.us.i116, 1       ; 2 uses
  %exitcond42.not.i119 = icmp eq i64 %i.hq, %.sroa.2709.0.copyload
  br i1 %exitcond42.not.i119, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i115, !llvm.loop !614

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i108: ; preds = %.lr.ph.split.split.us.i107, %bb.n
  %.017.us18.i109 = phi i64 [ %i.ib, %bb.n ], [ %.sroa.0708.0.copyload, %.lr.ph.split.split.us.i107 ] ; 4 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.017.us18.i109 ; 3 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !14 ; 2 uses
  %i.ht = add i64 %i.hs, 1
  store i64 %i.ht, ptr %i.hr, align 8, !tbaa !14
  %i.hu = lshr i64 %.017.us18.i109, 6
  %i.hv = and i64 %.017.us18.i109, 63
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.hu
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !14
  %i.hy = shl nuw i64 1, %i.hv
  %i.hz = and i64 %i.hx, %i.hy
  %.not.us.i110 = icmp eq i64 %i.hz, 0
  br i1 %.not.us.i110, label %bb.n, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i111

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i111: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i108
  %i.ia = add i64 %i.hs, 2
  store i64 %i.ia, ptr %i.hr, align 8, !tbaa !14
  br label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i111, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i108
  %i.ib = add nuw i64 %.017.us18.i109, 1          ; 2 uses
  %exitcond41.not.i112 = icmp eq i64 %i.ib, %.sroa.2709.0.copyload
  br i1 %exitcond41.not.i112, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i108, !llvm.loop !614

.lr.ph.split.split.i94:                           ; preds = %.lr.ph.split.i93
  br i1 %i.gc, label %.lr.ph.split.split.split.us.i100, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i95

.lr.ph.split.split.split.us.i100:                 ; preds = %.lr.ph.split.split.i94
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.sroa.3710.0.copyload ; 3 uses
  %.promoted.i101 = load i64, ptr %i.ic, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i102

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i102: ; preds = %bb.o, %.lr.ph.split.split.split.us.i100
  %i.id = phi i64 [ %.promoted.i101, %.lr.ph.split.split.split.us.i100 ], [ %i.ip, %bb.o ] ; 2 uses
  %.017.us22.i103 = phi i64 [ %.sroa.0708.0.copyload, %.lr.ph.split.split.split.us.i100 ], [ %i.iq, %bb.o ] ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %.017.us22.i103
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !3
  %i.ig = zext i32 %i.if to i64                   ; 2 uses
  %i.ih = add i64 %i.id, 1                        ; 2 uses
  store i64 %i.ih, ptr %i.ic, align 8, !tbaa !14
  %i.ii = lshr i64 %i.ig, 6
  %i.ij = and i64 %i.ig, 63
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.ii
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !14
  %i.im = shl nuw i64 1, %i.ij
  %i.in = and i64 %i.im, %i.il
  %.not.us24.i104 = icmp eq i64 %i.in, 0
  br i1 %.not.us24.i104, label %bb.o, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i105

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i105: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i102
  %i.io = add i64 %i.id, 2                        ; 2 uses
  store i64 %i.io, ptr %i.ic, align 8, !tbaa !14
  br label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i105, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i102
  %i.ip = phi i64 [ %i.ih, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i102 ], [ %i.io, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i105 ]
  %i.iq = add nuw i64 %.017.us22.i103, 1          ; 2 uses
  %exitcond40.not.i106 = icmp eq i64 %i.iq, %.sroa.2709.0.copyload
  br i1 %exitcond40.not.i106, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i102, !llvm.loop !614

._crit_edge.sink.split.i125:                      ; preds = %.lr.ph.split.us.split.i121, %.lr.ph.split.us.split.us.i127
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.sroa.3710.0.copyload ; 2 uses
  %.promoted30.i126 = load i64, ptr %i.ir, align 8, !tbaa !14
  %i.is = sub i64 %.sroa.2709.0.copyload, %.sroa.0708.0.copyload
  %i.it = shl i64 %i.is, 1
  %i.iu = add i64 %i.it, %.promoted30.i126
  store i64 %i.iu, ptr %i.ir, align 8, !tbaa !14
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i95: ; preds = %.lr.ph.split.split.i94, %bb.p
  %.017.i96 = phi i64 [ %i.ji, %bb.p ], [ %.sroa.0708.0.copyload, %.lr.ph.split.split.i94 ] ; 3 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %.017.i96
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !3
  %i.ix = zext i32 %i.iw to i64                   ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.017.i96 ; 3 uses
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !14 ; 2 uses
  %i.ja = add i64 %i.iz, 1
  store i64 %i.ja, ptr %i.iy, align 8, !tbaa !14
  %i.jb = lshr i64 %i.ix, 6
  %i.jc = and i64 %i.ix, 63
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.jb
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !14
  %i.jf = shl nuw i64 1, %i.jc
  %i.jg = and i64 %i.je, %i.jf
  %.not.i97 = icmp eq i64 %i.jg, 0
  br i1 %.not.i97, label %bb.p, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i98

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i98: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i95
  %i.jh = add i64 %i.iz, 2
  store i64 %i.jh, ptr %i.iy, align 8, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i98, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i95
  %i.ji = add nuw i64 %.017.i96, 1                ; 2 uses
  %exitcond.not.i99 = icmp eq i64 %i.ji, %.sroa.2709.0.copyload
  br i1 %exitcond.not.i99, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i95, !llvm.loop !614

bb.q:                                             ; preds = %bb.a
  %.sroa.0718.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 14 uses
  %.sroa.2719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2719.0.copyload = load i64, ptr %.sroa.2719.0..sroa_idx, align 8, !tbaa !14 ; 10 uses
  %.sroa.3720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3720.0.copyload = load i64, ptr %.sroa.3720.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %.sroa.4721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4721.0.copyload = load i8, ptr %.sroa.4721.0..sroa_idx, align 8, !tbaa !189
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeItEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.jj)
  %i.jk = icmp ult i64 %.sroa.0718.0.copyload, %.sroa.2719.0.copyload
  br i1 %i.jk, label %.lr.ph.i131, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

.lr.ph.i131:                                      ; preds = %bb.q
  %i.jl = load ptr, ptr %i.jj, align 8, !tbaa !157
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !158 ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.jm, null          ; 2 uses
  %i.jn = trunc nuw i8 %.sroa.4721.0.copyload to i1 ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !39 ; 9 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !159 ; 5 uses
  %.not.i15.i135 = icmp eq ptr %i.jr, null
  br i1 %.not.i15.i135, label %.lr.ph.split.us.i163, label %.lr.ph.split.i136

.lr.ph.split.us.i163:                             ; preds = %.lr.ph.i131
  br i1 %.not.i.i132, label %.lr.ph.split.us.split.us.i170, label %.lr.ph.split.us.split.i164

.lr.ph.split.us.split.us.i170:                    ; preds = %.lr.ph.split.us.i163
  br i1 %i.jn, label %._crit_edge.sink.split.i168, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i171.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i171.preheader: ; preds = %.lr.ph.split.us.split.us.i170
  %i.js = sub i64 %.sroa.2719.0.copyload, %.sroa.0718.0.copyload ; 3 uses
  %min.iters.check1793 = icmp ult i64 %i.js, 4
  br i1 %min.iters.check1793, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i171.preheader1906, label %vector.ph1794

vector.ph1794:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i171.preheader
  %n.vec1796 = and i64 %i.js, -4                  ; 3 uses
  %i.jt = add i64 %.sroa.0718.0.copyload, %n.vec1796
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.sroa.0718.0.copyload
  br label %vector.body1797

vector.body1797:                                  ; preds = %vector.body1797, %vector.ph1794
  %index1798 = phi i64 [ 0, %vector.ph1794 ], [ %index.next1801, %vector.body1797 ] ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %index1798 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16 ; 2 uses
  %wide.load1799 = load <2 x i64>, ptr %i.jv, align 8, !tbaa !14
  %wide.load1800 = load <2 x i64>, ptr %i.jw, align 8, !tbaa !14
  %i.jx = add <2 x i64> %wide.load1799, splat (i64 3)
  %i.jy = add <2 x i64> %wide.load1800, splat (i64 3)
  store <2 x i64> %i.jx, ptr %i.jv, align 8, !tbaa !14
  store <2 x i64> %i.jy, ptr %i.jw, align 8, !tbaa !14
  %index.next1801 = add nuw i64 %index1798, 4     ; 2 uses
  %i.jz = icmp eq i64 %index.next1801, %n.vec1796
  br i1 %i.jz, label %middle.block1802, label %vector.body1797, !llvm.loop !615

middle.block1802:                                 ; preds = %vector.body1797
  %cmp.n1803 = icmp eq i64 %i.js, %n.vec1796
  br i1 %cmp.n1803, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i171.preheader1906

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i171.preheader1906: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i171.preheader, %middle.block1802
  %.017.us.us.i172.ph = phi i64 [ %.sroa.0718.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i171.preheader ], [ %i.jt, %middle.block1802 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i171

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i171: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i171.preheader1906, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i171
  %.017.us.us.i172 = phi i64 [ %i.kd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i171 ], [ %.017.us.us.i172.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i171.preheader1906 ] ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.017.us.us.i172 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !14
  %i.kc = add i64 %i.kb, 3
  store i64 %i.kc, ptr %i.ka, align 8, !tbaa !14
  %i.kd = add nuw i64 %.017.us.us.i172, 1         ; 2 uses
  %exitcond44.not.i173 = icmp eq i64 %i.kd, %.sroa.2719.0.copyload
  br i1 %exitcond44.not.i173, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i171, !llvm.loop !616

.lr.ph.split.us.split.i164:                       ; preds = %.lr.ph.split.us.i163
  br i1 %i.jn, label %._crit_edge.sink.split.i168, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i165.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i165.preheader: ; preds = %.lr.ph.split.us.split.i164
  %i.ke = sub i64 %.sroa.2719.0.copyload, %.sroa.0718.0.copyload ; 3 uses
  %min.iters.check1780 = icmp ult i64 %i.ke, 4
  br i1 %min.iters.check1780, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i165.preheader1908, label %vector.ph1781

vector.ph1781:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i165.preheader
  %n.vec1783 = and i64 %i.ke, -4                  ; 3 uses
  %i.kf = add i64 %.sroa.0718.0.copyload, %n.vec1783
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.sroa.0718.0.copyload
  br label %vector.body1784

vector.body1784:                                  ; preds = %vector.body1784, %vector.ph1781
  %index1785 = phi i64 [ 0, %vector.ph1781 ], [ %index.next1788, %vector.body1784 ] ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %index1785 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16 ; 2 uses
  %wide.load1786 = load <2 x i64>, ptr %i.kh, align 8, !tbaa !14
  %wide.load1787 = load <2 x i64>, ptr %i.ki, align 8, !tbaa !14
  %i.kj = add <2 x i64> %wide.load1786, splat (i64 3)
  %i.kk = add <2 x i64> %wide.load1787, splat (i64 3)
  store <2 x i64> %i.kj, ptr %i.kh, align 8, !tbaa !14
  store <2 x i64> %i.kk, ptr %i.ki, align 8, !tbaa !14
  %index.next1788 = add nuw i64 %index1785, 4     ; 2 uses
  %i.kl = icmp eq i64 %index.next1788, %n.vec1783
  br i1 %i.kl, label %middle.block1789, label %vector.body1784, !llvm.loop !617

middle.block1789:                                 ; preds = %vector.body1784
  %cmp.n1790 = icmp eq i64 %i.ke, %n.vec1783
  br i1 %cmp.n1790, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i165.preheader1908

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i165.preheader1908: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i165.preheader, %middle.block1789
  %.017.us.i166.ph = phi i64 [ %.sroa.0718.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i165.preheader ], [ %i.kf, %middle.block1789 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i165

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i165: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i165.preheader1908, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i165
  %.017.us.i166 = phi i64 [ %i.kp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i165 ], [ %.017.us.i166.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i165.preheader1908 ] ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.017.us.i166 ; 2 uses
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !14
  %i.ko = add i64 %i.kn, 3
  store i64 %i.ko, ptr %i.km, align 8, !tbaa !14
  %i.kp = add nuw i64 %.017.us.i166, 1            ; 2 uses
  %exitcond43.not.i167 = icmp eq i64 %i.kp, %.sroa.2719.0.copyload
  br i1 %exitcond43.not.i167, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i165, !llvm.loop !618

.lr.ph.split.i136:                                ; preds = %.lr.ph.i131
  br i1 %.not.i.i132, label %.lr.ph.split.split.us.i150, label %.lr.ph.split.split.i137

.lr.ph.split.split.us.i150:                       ; preds = %.lr.ph.split.i136
  br i1 %i.jn, label %.lr.ph.split.split.us.split.us.i156, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i151

.lr.ph.split.split.us.split.us.i156:              ; preds = %.lr.ph.split.split.us.i150
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.sroa.3720.0.copyload ; 3 uses
  %.promoted26.i157 = load i64, ptr %i.kq, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i158

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i158: ; preds = %bb.r, %.lr.ph.split.split.us.split.us.i156
  %i.kr = phi i64 [ %.promoted26.i157, %.lr.ph.split.split.us.split.us.i156 ], [ %i.la, %bb.r ] ; 2 uses
  %.017.us18.us.i159 = phi i64 [ %.sroa.0718.0.copyload, %.lr.ph.split.split.us.split.us.i156 ], [ %i.lb, %bb.r ] ; 3 uses
  %i.ks = add i64 %i.kr, 1                        ; 2 uses
  store i64 %i.ks, ptr %i.kq, align 8, !tbaa !14
  %i.kt = lshr i64 %.017.us18.us.i159, 6
  %i.ku = and i64 %.017.us18.us.i159, 63
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.kt
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !14
  %i.kx = shl nuw i64 1, %i.ku
  %i.ky = and i64 %i.kw, %i.kx
  %.not.us.us.i160 = icmp eq i64 %i.ky, 0
  br i1 %.not.us.us.i160, label %bb.r, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i161

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i161: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i158
  %i.kz = add i64 %i.kr, 3                        ; 2 uses
  store i64 %i.kz, ptr %i.kq, align 8, !tbaa !14
  br label %bb.r

bb.r:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i161, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i158
  %i.la = phi i64 [ %i.ks, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i158 ], [ %i.kz, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i161 ]
  %i.lb = add nuw i64 %.017.us18.us.i159, 1       ; 2 uses
  %exitcond42.not.i162 = icmp eq i64 %i.lb, %.sroa.2719.0.copyload
  br i1 %exitcond42.not.i162, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i158, !llvm.loop !619

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i151: ; preds = %.lr.ph.split.split.us.i150, %bb.s
  %.017.us18.i152 = phi i64 [ %i.lm, %bb.s ], [ %.sroa.0718.0.copyload, %.lr.ph.split.split.us.i150 ] ; 4 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.017.us18.i152 ; 3 uses
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !14 ; 2 uses
  %i.le = add i64 %i.ld, 1
  store i64 %i.le, ptr %i.lc, align 8, !tbaa !14
  %i.lf = lshr i64 %.017.us18.i152, 6
  %i.lg = and i64 %.017.us18.i152, 63
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.lf
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !14
  %i.lj = shl nuw i64 1, %i.lg
  %i.lk = and i64 %i.li, %i.lj
  %.not.us.i153 = icmp eq i64 %i.lk, 0
  br i1 %.not.us.i153, label %bb.s, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i154

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i154: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i151
  %i.ll = add i64 %i.ld, 3
  store i64 %i.ll, ptr %i.lc, align 8, !tbaa !14
  br label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i154, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i151
  %i.lm = add nuw i64 %.017.us18.i152, 1          ; 2 uses
  %exitcond41.not.i155 = icmp eq i64 %i.lm, %.sroa.2719.0.copyload
  br i1 %exitcond41.not.i155, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i151, !llvm.loop !619

.lr.ph.split.split.i137:                          ; preds = %.lr.ph.split.i136
  br i1 %i.jn, label %.lr.ph.split.split.split.us.i143, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i138

.lr.ph.split.split.split.us.i143:                 ; preds = %.lr.ph.split.split.i137
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.sroa.3720.0.copyload ; 3 uses
  %.promoted.i144 = load i64, ptr %i.ln, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i145

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i145: ; preds = %bb.t, %.lr.ph.split.split.split.us.i143
  %i.lo = phi i64 [ %.promoted.i144, %.lr.ph.split.split.split.us.i143 ], [ %i.ma, %bb.t ] ; 2 uses
  %.017.us22.i146 = phi i64 [ %.sroa.0718.0.copyload, %.lr.ph.split.split.split.us.i143 ], [ %i.mb, %bb.t ] ; 2 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %.017.us22.i146
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !3
  %i.lr = zext i32 %i.lq to i64                   ; 2 uses
  %i.ls = add i64 %i.lo, 1                        ; 2 uses
  store i64 %i.ls, ptr %i.ln, align 8, !tbaa !14
  %i.lt = lshr i64 %i.lr, 6
  %i.lu = and i64 %i.lr, 63
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.lt
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !14
  %i.lx = shl nuw i64 1, %i.lu
  %i.ly = and i64 %i.lx, %i.lw
  %.not.us24.i147 = icmp eq i64 %i.ly, 0
  br i1 %.not.us24.i147, label %bb.t, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i148

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i148: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i145
  %i.lz = add i64 %i.lo, 3                        ; 2 uses
  store i64 %i.lz, ptr %i.ln, align 8, !tbaa !14
  br label %bb.t

bb.t:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i148, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i145
  %i.ma = phi i64 [ %i.ls, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i145 ], [ %i.lz, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i148 ]
  %i.mb = add nuw i64 %.017.us22.i146, 1          ; 2 uses
  %exitcond40.not.i149 = icmp eq i64 %i.mb, %.sroa.2719.0.copyload
  br i1 %exitcond40.not.i149, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i145, !llvm.loop !619

._crit_edge.sink.split.i168:                      ; preds = %.lr.ph.split.us.split.i164, %.lr.ph.split.us.split.us.i170
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.sroa.3720.0.copyload ; 2 uses
  %.promoted30.i169 = load i64, ptr %i.mc, align 8, !tbaa !14
  %reass.add927 = sub i64 %.sroa.2719.0.copyload, %.sroa.0718.0.copyload
  %reass.mul928 = mul i64 %reass.add927, 3
  %i.md = add i64 %.promoted30.i169, %reass.mul928
  store i64 %i.md, ptr %i.mc, align 8, !tbaa !14
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i138: ; preds = %.lr.ph.split.split.i137, %bb.u
  %.017.i139 = phi i64 [ %i.mr, %bb.u ], [ %.sroa.0718.0.copyload, %.lr.ph.split.split.i137 ] ; 3 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %.017.i139
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !3
  %i.mg = zext i32 %i.mf to i64                   ; 2 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.017.i139 ; 3 uses
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !14 ; 2 uses
  %i.mj = add i64 %i.mi, 1
  store i64 %i.mj, ptr %i.mh, align 8, !tbaa !14
  %i.mk = lshr i64 %i.mg, 6
  %i.ml = and i64 %i.mg, 63
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.mk
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !14
  %i.mo = shl nuw i64 1, %i.ml
  %i.mp = and i64 %i.mn, %i.mo
  %.not.i140 = icmp eq i64 %i.mp, 0
  br i1 %.not.i140, label %bb.u, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i141

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i141: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i138
  %i.mq = add i64 %i.mi, 3
  store i64 %i.mq, ptr %i.mh, align 8, !tbaa !14
  br label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i141, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i138
  %i.mr = add nuw i64 %.017.i139, 1               ; 2 uses
  %exitcond.not.i142 = icmp eq i64 %i.mr, %.sroa.2719.0.copyload
  br i1 %exitcond.not.i142, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i138, !llvm.loop !619

bb.v:                                             ; preds = %bb.a
  %.sroa.0728.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 14 uses
  %.sroa.2729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2729.0.copyload = load i64, ptr %.sroa.2729.0..sroa_idx, align 8, !tbaa !14 ; 10 uses
  %.sroa.3730.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3730.0.copyload = load i64, ptr %.sroa.3730.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %.sroa.4731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4731.0.copyload = load i8, ptr %.sroa.4731.0..sroa_idx, align 8, !tbaa !189
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIsEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.ms)
  %i.mt = icmp ult i64 %.sroa.0728.0.copyload, %.sroa.2729.0.copyload
  br i1 %i.mt, label %.lr.ph.i174, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

.lr.ph.i174:                                      ; preds = %bb.v
  %i.mu = load ptr, ptr %i.ms, align 8, !tbaa !157
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !158 ; 3 uses
  %.not.i.i175 = icmp eq ptr %i.mv, null          ; 2 uses
  %i.mw = trunc nuw i8 %.sroa.4731.0.copyload to i1 ; 4 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !39 ; 9 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !159 ; 5 uses
  %.not.i15.i178 = icmp eq ptr %i.na, null
  br i1 %.not.i15.i178, label %.lr.ph.split.us.i206, label %.lr.ph.split.i179

.lr.ph.split.us.i206:                             ; preds = %.lr.ph.i174
  br i1 %.not.i.i175, label %.lr.ph.split.us.split.us.i214, label %.lr.ph.split.us.split.i207

.lr.ph.split.us.split.us.i214:                    ; preds = %.lr.ph.split.us.i206
  br i1 %i.mw, label %._crit_edge.sink.split.i211, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i215.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i215.preheader: ; preds = %.lr.ph.split.us.split.us.i214
  %i.nb = sub i64 %.sroa.2729.0.copyload, %.sroa.0728.0.copyload ; 3 uses
  %min.iters.check1767 = icmp ult i64 %i.nb, 4
  br i1 %min.iters.check1767, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i215.preheader1914, label %vector.ph1768

vector.ph1768:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i215.preheader
  %n.vec1770 = and i64 %i.nb, -4                  ; 3 uses
  %i.nc = add i64 %.sroa.0728.0.copyload, %n.vec1770
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %.sroa.0728.0.copyload
  br label %vector.body1771

vector.body1771:                                  ; preds = %vector.body1771, %vector.ph1768
  %index1772 = phi i64 [ 0, %vector.ph1768 ], [ %index.next1775, %vector.body1771 ] ; 2 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %index1772 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16 ; 2 uses
  %wide.load1773 = load <2 x i64>, ptr %i.ne, align 8, !tbaa !14
  %wide.load1774 = load <2 x i64>, ptr %i.nf, align 8, !tbaa !14
  %i.ng = add <2 x i64> %wide.load1773, splat (i64 3)
  %i.nh = add <2 x i64> %wide.load1774, splat (i64 3)
  store <2 x i64> %i.ng, ptr %i.ne, align 8, !tbaa !14
  store <2 x i64> %i.nh, ptr %i.nf, align 8, !tbaa !14
  %index.next1775 = add nuw i64 %index1772, 4     ; 2 uses
  %i.ni = icmp eq i64 %index.next1775, %n.vec1770
  br i1 %i.ni, label %middle.block1776, label %vector.body1771, !llvm.loop !620

middle.block1776:                                 ; preds = %vector.body1771
  %cmp.n1777 = icmp eq i64 %i.nb, %n.vec1770
  br i1 %cmp.n1777, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i215.preheader1914

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i215.preheader1914: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i215.preheader, %middle.block1776
  %.017.us.us.i216.ph = phi i64 [ %.sroa.0728.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i215.preheader ], [ %i.nc, %middle.block1776 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i215

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i215: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i215.preheader1914, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i215
  %.017.us.us.i216 = phi i64 [ %i.nm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i215 ], [ %.017.us.us.i216.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i215.preheader1914 ] ; 2 uses
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %.017.us.us.i216 ; 2 uses
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !14
  %i.nl = add i64 %i.nk, 3
  store i64 %i.nl, ptr %i.nj, align 8, !tbaa !14
  %i.nm = add nuw i64 %.017.us.us.i216, 1         ; 2 uses
  %exitcond44.not.i217 = icmp eq i64 %i.nm, %.sroa.2729.0.copyload
  br i1 %exitcond44.not.i217, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i215, !llvm.loop !621

.lr.ph.split.us.split.i207:                       ; preds = %.lr.ph.split.us.i206
  br i1 %i.mw, label %._crit_edge.sink.split.i211, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i208.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i208.preheader: ; preds = %.lr.ph.split.us.split.i207
  %i.nn = sub i64 %.sroa.2729.0.copyload, %.sroa.0728.0.copyload ; 3 uses
  %min.iters.check1754 = icmp ult i64 %i.nn, 4
  br i1 %min.iters.check1754, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i208.preheader1916, label %vector.ph1755

vector.ph1755:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i208.preheader
  %n.vec1757 = and i64 %i.nn, -4                  ; 3 uses
  %i.no = add i64 %.sroa.0728.0.copyload, %n.vec1757
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %.sroa.0728.0.copyload
  br label %vector.body1758

vector.body1758:                                  ; preds = %vector.body1758, %vector.ph1755
  %index1759 = phi i64 [ 0, %vector.ph1755 ], [ %index.next1762, %vector.body1758 ] ; 2 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %index1759 ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 16 ; 2 uses
  %wide.load1760 = load <2 x i64>, ptr %i.nq, align 8, !tbaa !14
  %wide.load1761 = load <2 x i64>, ptr %i.nr, align 8, !tbaa !14
  %i.ns = add <2 x i64> %wide.load1760, splat (i64 3)
  %i.nt = add <2 x i64> %wide.load1761, splat (i64 3)
  store <2 x i64> %i.ns, ptr %i.nq, align 8, !tbaa !14
  store <2 x i64> %i.nt, ptr %i.nr, align 8, !tbaa !14
  %index.next1762 = add nuw i64 %index1759, 4     ; 2 uses
  %i.nu = icmp eq i64 %index.next1762, %n.vec1757
  br i1 %i.nu, label %middle.block1763, label %vector.body1758, !llvm.loop !622

middle.block1763:                                 ; preds = %vector.body1758
  %cmp.n1764 = icmp eq i64 %i.nn, %n.vec1757
  br i1 %cmp.n1764, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i208.preheader1916

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i208.preheader1916: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i208.preheader, %middle.block1763
  %.017.us.i209.ph = phi i64 [ %.sroa.0728.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i208.preheader ], [ %i.no, %middle.block1763 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i208

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i208: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i208.preheader1916, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i208
  %.017.us.i209 = phi i64 [ %i.ny, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i208 ], [ %.017.us.i209.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i208.preheader1916 ] ; 2 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %.017.us.i209 ; 2 uses
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !14
  %i.nx = add i64 %i.nw, 3
  store i64 %i.nx, ptr %i.nv, align 8, !tbaa !14
  %i.ny = add nuw i64 %.017.us.i209, 1            ; 2 uses
  %exitcond43.not.i210 = icmp eq i64 %i.ny, %.sroa.2729.0.copyload
  br i1 %exitcond43.not.i210, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i208, !llvm.loop !623

.lr.ph.split.i179:                                ; preds = %.lr.ph.i174
  br i1 %.not.i.i175, label %.lr.ph.split.split.us.i193, label %.lr.ph.split.split.i180

.lr.ph.split.split.us.i193:                       ; preds = %.lr.ph.split.i179
  br i1 %i.mw, label %.lr.ph.split.split.us.split.us.i199, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i194

.lr.ph.split.split.us.split.us.i199:              ; preds = %.lr.ph.split.split.us.i193
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %.sroa.3730.0.copyload ; 3 uses
  %.promoted26.i200 = load i64, ptr %i.nz, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i201

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i201: ; preds = %bb.w, %.lr.ph.split.split.us.split.us.i199
  %i.oa = phi i64 [ %.promoted26.i200, %.lr.ph.split.split.us.split.us.i199 ], [ %i.oj, %bb.w ] ; 2 uses
  %.017.us18.us.i202 = phi i64 [ %.sroa.0728.0.copyload, %.lr.ph.split.split.us.split.us.i199 ], [ %i.ok, %bb.w ] ; 3 uses
  %i.ob = add i64 %i.oa, 1                        ; 2 uses
  store i64 %i.ob, ptr %i.nz, align 8, !tbaa !14
  %i.oc = lshr i64 %.017.us18.us.i202, 6
  %i.od = and i64 %.017.us18.us.i202, 63
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.oc
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !14
  %i.og = shl nuw i64 1, %i.od
  %i.oh = and i64 %i.of, %i.og
  %.not.us.us.i203 = icmp eq i64 %i.oh, 0
  br i1 %.not.us.us.i203, label %bb.w, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i204

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i204: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i201
  %i.oi = add i64 %i.oa, 3                        ; 2 uses
  store i64 %i.oi, ptr %i.nz, align 8, !tbaa !14
  br label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i204, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i201
  %i.oj = phi i64 [ %i.ob, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i201 ], [ %i.oi, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i204 ]
  %i.ok = add nuw i64 %.017.us18.us.i202, 1       ; 2 uses
  %exitcond42.not.i205 = icmp eq i64 %i.ok, %.sroa.2729.0.copyload
  br i1 %exitcond42.not.i205, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i201, !llvm.loop !624

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i194: ; preds = %.lr.ph.split.split.us.i193, %bb.x
  %.017.us18.i195 = phi i64 [ %i.ov, %bb.x ], [ %.sroa.0728.0.copyload, %.lr.ph.split.split.us.i193 ] ; 4 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %.017.us18.i195 ; 3 uses
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !14 ; 2 uses
  %i.on = add i64 %i.om, 1
  store i64 %i.on, ptr %i.ol, align 8, !tbaa !14
  %i.oo = lshr i64 %.017.us18.i195, 6
  %i.op = and i64 %.017.us18.i195, 63
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.oo
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !14
  %i.os = shl nuw i64 1, %i.op
  %i.ot = and i64 %i.or, %i.os
  %.not.us.i196 = icmp eq i64 %i.ot, 0
  br i1 %.not.us.i196, label %bb.x, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i197

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i197: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i194
  %i.ou = add i64 %i.om, 3
  store i64 %i.ou, ptr %i.ol, align 8, !tbaa !14
  br label %bb.x

bb.x:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i197, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i194
  %i.ov = add nuw i64 %.017.us18.i195, 1          ; 2 uses
  %exitcond41.not.i198 = icmp eq i64 %i.ov, %.sroa.2729.0.copyload
  br i1 %exitcond41.not.i198, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i194, !llvm.loop !624

.lr.ph.split.split.i180:                          ; preds = %.lr.ph.split.i179
  br i1 %i.mw, label %.lr.ph.split.split.split.us.i186, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i181

.lr.ph.split.split.split.us.i186:                 ; preds = %.lr.ph.split.split.i180
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %.sroa.3730.0.copyload ; 3 uses
  %.promoted.i187 = load i64, ptr %i.ow, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i188

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i188: ; preds = %bb.y, %.lr.ph.split.split.split.us.i186
  %i.ox = phi i64 [ %.promoted.i187, %.lr.ph.split.split.split.us.i186 ], [ %i.pj, %bb.y ] ; 2 uses
  %.017.us22.i189 = phi i64 [ %.sroa.0728.0.copyload, %.lr.ph.split.split.split.us.i186 ], [ %i.pk, %bb.y ] ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %.017.us22.i189
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !3
  %i.pa = zext i32 %i.oz to i64                   ; 2 uses
  %i.pb = add i64 %i.ox, 1                        ; 2 uses
  store i64 %i.pb, ptr %i.ow, align 8, !tbaa !14
  %i.pc = lshr i64 %i.pa, 6
  %i.pd = and i64 %i.pa, 63
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.pc
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !14
  %i.pg = shl nuw i64 1, %i.pd
  %i.ph = and i64 %i.pg, %i.pf
  %.not.us24.i190 = icmp eq i64 %i.ph, 0
  br i1 %.not.us24.i190, label %bb.y, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i191

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i191: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i188
  %i.pi = add i64 %i.ox, 3                        ; 2 uses
  store i64 %i.pi, ptr %i.ow, align 8, !tbaa !14
  br label %bb.y

bb.y:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i191, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i188
  %i.pj = phi i64 [ %i.pb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i188 ], [ %i.pi, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i191 ]
  %i.pk = add nuw i64 %.017.us22.i189, 1          ; 2 uses
  %exitcond40.not.i192 = icmp eq i64 %i.pk, %.sroa.2729.0.copyload
  br i1 %exitcond40.not.i192, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i188, !llvm.loop !624

._crit_edge.sink.split.i211:                      ; preds = %.lr.ph.split.us.split.i207, %.lr.ph.split.us.split.us.i214
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %.sroa.3730.0.copyload ; 2 uses
  %.promoted30.i212 = load i64, ptr %i.pl, align 8, !tbaa !14
  %reass.add924 = sub i64 %.sroa.2729.0.copyload, %.sroa.0728.0.copyload
  %reass.mul925 = mul i64 %reass.add924, 3
  %i.pm = add i64 %.promoted30.i212, %reass.mul925
  store i64 %i.pm, ptr %i.pl, align 8, !tbaa !14
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i181: ; preds = %.lr.ph.split.split.i180, %bb.z
  %.017.i182 = phi i64 [ %i.qa, %bb.z ], [ %.sroa.0728.0.copyload, %.lr.ph.split.split.i180 ] ; 3 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %.017.i182
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !3
  %i.pp = zext i32 %i.po to i64                   ; 2 uses
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %.017.i182 ; 3 uses
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !14 ; 2 uses
  %i.ps = add i64 %i.pr, 1
  store i64 %i.ps, ptr %i.pq, align 8, !tbaa !14
  %i.pt = lshr i64 %i.pp, 6
  %i.pu = and i64 %i.pp, 63
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.pt
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !14
  %i.px = shl nuw i64 1, %i.pu
  %i.py = and i64 %i.pw, %i.px
  %.not.i183 = icmp eq i64 %i.py, 0
  br i1 %.not.i183, label %bb.z, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i184

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i184: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i181
  %i.pz = add i64 %i.pr, 3
  store i64 %i.pz, ptr %i.pq, align 8, !tbaa !14
  br label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i184, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i181
  %i.qa = add nuw i64 %.017.i182, 1               ; 2 uses
  %exitcond.not.i185 = icmp eq i64 %i.qa, %.sroa.2729.0.copyload
  br i1 %exitcond.not.i185, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i181, !llvm.loop !624

bb.aa:                                            ; preds = %bb.a
  %.sroa.0738.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 14 uses
  %.sroa.2739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2739.0.copyload = load i64, ptr %.sroa.2739.0..sroa_idx, align 8, !tbaa !14 ; 10 uses
  %.sroa.3740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3740.0.copyload = load i64, ptr %.sroa.3740.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %.sroa.4741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4741.0.copyload = load i8, ptr %.sroa.4741.0..sroa_idx, align 8, !tbaa !189
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIjEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.qb)
  %i.qc = icmp ult i64 %.sroa.0738.0.copyload, %.sroa.2739.0.copyload
  br i1 %i.qc, label %.lr.ph.i218, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

.lr.ph.i218:                                      ; preds = %bb.aa
  %i.qd = load ptr, ptr %i.qb, align 8, !tbaa !157
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !158 ; 3 uses
  %.not.i.i219 = icmp eq ptr %i.qe, null          ; 2 uses
  %i.qf = trunc nuw i8 %.sroa.4741.0.copyload to i1 ; 4 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !39 ; 9 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !159 ; 5 uses
  %.not.i15.i222 = icmp eq ptr %i.qj, null
  br i1 %.not.i15.i222, label %.lr.ph.split.us.i250, label %.lr.ph.split.i223

.lr.ph.split.us.i250:                             ; preds = %.lr.ph.i218
  br i1 %.not.i.i219, label %.lr.ph.split.us.split.us.i258, label %.lr.ph.split.us.split.i251

.lr.ph.split.us.split.us.i258:                    ; preds = %.lr.ph.split.us.i250
  br i1 %i.qf, label %._crit_edge.sink.split.i255, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259.preheader: ; preds = %.lr.ph.split.us.split.us.i258
  %i.qk = sub i64 %.sroa.2739.0.copyload, %.sroa.0738.0.copyload ; 3 uses
  %min.iters.check1741 = icmp ult i64 %i.qk, 4
  br i1 %min.iters.check1741, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259.preheader1922, label %vector.ph1742

vector.ph1742:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259.preheader
  %n.vec1744 = and i64 %i.qk, -4                  ; 3 uses
  %i.ql = add i64 %.sroa.0738.0.copyload, %n.vec1744
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %.sroa.0738.0.copyload
  br label %vector.body1745

vector.body1745:                                  ; preds = %vector.body1745, %vector.ph1742
  %index1746 = phi i64 [ 0, %vector.ph1742 ], [ %index.next1749, %vector.body1745 ] ; 2 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %index1746 ; 3 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 16 ; 2 uses
  %wide.load1747 = load <2 x i64>, ptr %i.qn, align 8, !tbaa !14
  %wide.load1748 = load <2 x i64>, ptr %i.qo, align 8, !tbaa !14
  %i.qp = add <2 x i64> %wide.load1747, splat (i64 5)
  %i.qq = add <2 x i64> %wide.load1748, splat (i64 5)
  store <2 x i64> %i.qp, ptr %i.qn, align 8, !tbaa !14
  store <2 x i64> %i.qq, ptr %i.qo, align 8, !tbaa !14
  %index.next1749 = add nuw i64 %index1746, 4     ; 2 uses
  %i.qr = icmp eq i64 %index.next1749, %n.vec1744
  br i1 %i.qr, label %middle.block1750, label %vector.body1745, !llvm.loop !625

middle.block1750:                                 ; preds = %vector.body1745
  %cmp.n1751 = icmp eq i64 %i.qk, %n.vec1744
  br i1 %cmp.n1751, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259.preheader1922

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259.preheader1922: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259.preheader, %middle.block1750
  %.017.us.us.i260.ph = phi i64 [ %.sroa.0738.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259.preheader ], [ %i.ql, %middle.block1750 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259.preheader1922, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259
  %.017.us.us.i260 = phi i64 [ %i.qv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259 ], [ %.017.us.us.i260.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259.preheader1922 ] ; 2 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %.017.us.us.i260 ; 2 uses
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !14
  %i.qu = add i64 %i.qt, 5
  store i64 %i.qu, ptr %i.qs, align 8, !tbaa !14
  %i.qv = add nuw i64 %.017.us.us.i260, 1         ; 2 uses
  %exitcond44.not.i261 = icmp eq i64 %i.qv, %.sroa.2739.0.copyload
  br i1 %exitcond44.not.i261, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259, !llvm.loop !626

.lr.ph.split.us.split.i251:                       ; preds = %.lr.ph.split.us.i250
  br i1 %i.qf, label %._crit_edge.sink.split.i255, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i252.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i252.preheader: ; preds = %.lr.ph.split.us.split.i251
  %i.qw = sub i64 %.sroa.2739.0.copyload, %.sroa.0738.0.copyload ; 3 uses
  %min.iters.check1728 = icmp ult i64 %i.qw, 4
  br i1 %min.iters.check1728, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i252.preheader1924, label %vector.ph1729

vector.ph1729:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i252.preheader
  %n.vec1731 = and i64 %i.qw, -4                  ; 3 uses
  %i.qx = add i64 %.sroa.0738.0.copyload, %n.vec1731
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %.sroa.0738.0.copyload
  br label %vector.body1732

vector.body1732:                                  ; preds = %vector.body1732, %vector.ph1729
  %index1733 = phi i64 [ 0, %vector.ph1729 ], [ %index.next1736, %vector.body1732 ] ; 2 uses
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %index1733 ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 16 ; 2 uses
  %wide.load1734 = load <2 x i64>, ptr %i.qz, align 8, !tbaa !14
  %wide.load1735 = load <2 x i64>, ptr %i.ra, align 8, !tbaa !14
  %i.rb = add <2 x i64> %wide.load1734, splat (i64 5)
  %i.rc = add <2 x i64> %wide.load1735, splat (i64 5)
  store <2 x i64> %i.rb, ptr %i.qz, align 8, !tbaa !14
  store <2 x i64> %i.rc, ptr %i.ra, align 8, !tbaa !14
  %index.next1736 = add nuw i64 %index1733, 4     ; 2 uses
  %i.rd = icmp eq i64 %index.next1736, %n.vec1731
  br i1 %i.rd, label %middle.block1737, label %vector.body1732, !llvm.loop !627

middle.block1737:                                 ; preds = %vector.body1732
  %cmp.n1738 = icmp eq i64 %i.qw, %n.vec1731
  br i1 %cmp.n1738, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i252.preheader1924

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i252.preheader1924: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i252.preheader, %middle.block1737
  %.017.us.i253.ph = phi i64 [ %.sroa.0738.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i252.preheader ], [ %i.qx, %middle.block1737 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i252

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i252: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i252.preheader1924, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i252
  %.017.us.i253 = phi i64 [ %i.rh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i252 ], [ %.017.us.i253.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i252.preheader1924 ] ; 2 uses
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %.017.us.i253 ; 2 uses
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !14
  %i.rg = add i64 %i.rf, 5
  store i64 %i.rg, ptr %i.re, align 8, !tbaa !14
  %i.rh = add nuw i64 %.017.us.i253, 1            ; 2 uses
  %exitcond43.not.i254 = icmp eq i64 %i.rh, %.sroa.2739.0.copyload
  br i1 %exitcond43.not.i254, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i252, !llvm.loop !628

.lr.ph.split.i223:                                ; preds = %.lr.ph.i218
  br i1 %.not.i.i219, label %.lr.ph.split.split.us.i237, label %.lr.ph.split.split.i224

.lr.ph.split.split.us.i237:                       ; preds = %.lr.ph.split.i223
  br i1 %i.qf, label %.lr.ph.split.split.us.split.us.i243, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i238

.lr.ph.split.split.us.split.us.i243:              ; preds = %.lr.ph.split.split.us.i237
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %.sroa.3740.0.copyload ; 3 uses
  %.promoted26.i244 = load i64, ptr %i.ri, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i245

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i245: ; preds = %bb.ab, %.lr.ph.split.split.us.split.us.i243
  %i.rj = phi i64 [ %.promoted26.i244, %.lr.ph.split.split.us.split.us.i243 ], [ %i.rs, %bb.ab ] ; 2 uses
  %.017.us18.us.i246 = phi i64 [ %.sroa.0738.0.copyload, %.lr.ph.split.split.us.split.us.i243 ], [ %i.rt, %bb.ab ] ; 3 uses
  %i.rk = add i64 %i.rj, 1                        ; 2 uses
  store i64 %i.rk, ptr %i.ri, align 8, !tbaa !14
  %i.rl = lshr i64 %.017.us18.us.i246, 6
  %i.rm = and i64 %.017.us18.us.i246, 63
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %i.rl
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !14
  %i.rp = shl nuw i64 1, %i.rm
  %i.rq = and i64 %i.ro, %i.rp
  %.not.us.us.i247 = icmp eq i64 %i.rq, 0
  br i1 %.not.us.us.i247, label %bb.ab, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i248

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i248: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i245
  %i.rr = add i64 %i.rj, 5                        ; 2 uses
  store i64 %i.rr, ptr %i.ri, align 8, !tbaa !14
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i248, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i245
  %i.rs = phi i64 [ %i.rk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i245 ], [ %i.rr, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i248 ]
  %i.rt = add nuw i64 %.017.us18.us.i246, 1       ; 2 uses
  %exitcond42.not.i249 = icmp eq i64 %i.rt, %.sroa.2739.0.copyload
  br i1 %exitcond42.not.i249, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i245, !llvm.loop !629

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i238: ; preds = %.lr.ph.split.split.us.i237, %bb.ac
  %.017.us18.i239 = phi i64 [ %i.se, %bb.ac ], [ %.sroa.0738.0.copyload, %.lr.ph.split.split.us.i237 ] ; 4 uses
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %.017.us18.i239 ; 3 uses
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !14 ; 2 uses
  %i.rw = add i64 %i.rv, 1
  store i64 %i.rw, ptr %i.ru, align 8, !tbaa !14
  %i.rx = lshr i64 %.017.us18.i239, 6
  %i.ry = and i64 %.017.us18.i239, 63
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %i.rx
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !14
  %i.sb = shl nuw i64 1, %i.ry
  %i.sc = and i64 %i.sa, %i.sb
  %.not.us.i240 = icmp eq i64 %i.sc, 0
  br i1 %.not.us.i240, label %bb.ac, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i241

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i241: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i238
  %i.sd = add i64 %i.rv, 5
  store i64 %i.sd, ptr %i.ru, align 8, !tbaa !14
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i241, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i238
  %i.se = add nuw i64 %.017.us18.i239, 1          ; 2 uses
  %exitcond41.not.i242 = icmp eq i64 %i.se, %.sroa.2739.0.copyload
  br i1 %exitcond41.not.i242, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i238, !llvm.loop !629

.lr.ph.split.split.i224:                          ; preds = %.lr.ph.split.i223
  br i1 %i.qf, label %.lr.ph.split.split.split.us.i230, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i225

.lr.ph.split.split.split.us.i230:                 ; preds = %.lr.ph.split.split.i224
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %.sroa.3740.0.copyload ; 3 uses
  %.promoted.i231 = load i64, ptr %i.sf, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i232

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i232: ; preds = %bb.ad, %.lr.ph.split.split.split.us.i230
  %i.sg = phi i64 [ %.promoted.i231, %.lr.ph.split.split.split.us.i230 ], [ %i.ss, %bb.ad ] ; 2 uses
  %.017.us22.i233 = phi i64 [ %.sroa.0738.0.copyload, %.lr.ph.split.split.split.us.i230 ], [ %i.st, %bb.ad ] ; 2 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %.017.us22.i233
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !3
  %i.sj = zext i32 %i.si to i64                   ; 2 uses
  %i.sk = add i64 %i.sg, 1                        ; 2 uses
  store i64 %i.sk, ptr %i.sf, align 8, !tbaa !14
  %i.sl = lshr i64 %i.sj, 6
  %i.sm = and i64 %i.sj, 63
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %i.sl
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !14
  %i.sp = shl nuw i64 1, %i.sm
  %i.sq = and i64 %i.sp, %i.so
  %.not.us24.i234 = icmp eq i64 %i.sq, 0
  br i1 %.not.us24.i234, label %bb.ad, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i235

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i235: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i232
  %i.sr = add i64 %i.sg, 5                        ; 2 uses
  store i64 %i.sr, ptr %i.sf, align 8, !tbaa !14
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i235, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i232
  %i.ss = phi i64 [ %i.sk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i232 ], [ %i.sr, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i235 ]
  %i.st = add nuw i64 %.017.us22.i233, 1          ; 2 uses
  %exitcond40.not.i236 = icmp eq i64 %i.st, %.sroa.2739.0.copyload
  br i1 %exitcond40.not.i236, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i232, !llvm.loop !629

._crit_edge.sink.split.i255:                      ; preds = %.lr.ph.split.us.split.i251, %.lr.ph.split.us.split.us.i258
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %.sroa.3740.0.copyload ; 2 uses
  %.promoted30.i256 = load i64, ptr %i.su, align 8, !tbaa !14
  %reass.add921 = sub i64 %.sroa.2739.0.copyload, %.sroa.0738.0.copyload
  %reass.mul922 = mul i64 %reass.add921, 5
  %i.sv = add i64 %.promoted30.i256, %reass.mul922
  store i64 %i.sv, ptr %i.su, align 8, !tbaa !14
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i225: ; preds = %.lr.ph.split.split.i224, %bb.ae
  %.017.i226 = phi i64 [ %i.tj, %bb.ae ], [ %.sroa.0738.0.copyload, %.lr.ph.split.split.i224 ] ; 3 uses
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %.017.i226
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !3
  %i.sy = zext i32 %i.sx to i64                   ; 2 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %.017.i226 ; 3 uses
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !14 ; 2 uses
  %i.tb = add i64 %i.ta, 1
  store i64 %i.tb, ptr %i.sz, align 8, !tbaa !14
  %i.tc = lshr i64 %i.sy, 6
  %i.td = and i64 %i.sy, 63
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %i.tc
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !14
  %i.tg = shl nuw i64 1, %i.td
  %i.th = and i64 %i.tf, %i.tg
  %.not.i227 = icmp eq i64 %i.th, 0
  br i1 %.not.i227, label %bb.ae, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i228

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i228: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i225
  %i.ti = add i64 %i.ta, 5
  store i64 %i.ti, ptr %i.sz, align 8, !tbaa !14
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i228, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i225
  %i.tj = add nuw i64 %.017.i226, 1               ; 2 uses
  %exitcond.not.i229 = icmp eq i64 %i.tj, %.sroa.2739.0.copyload
  br i1 %exitcond.not.i229, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i225, !llvm.loop !629

bb.af:                                            ; preds = %bb.a
  %.sroa.0748.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 14 uses
  %.sroa.2749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2749.0.copyload = load i64, ptr %.sroa.2749.0..sroa_idx, align 8, !tbaa !14 ; 10 uses
  %.sroa.3750.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3750.0.copyload = load i64, ptr %.sroa.3750.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %.sroa.4751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4751.0.copyload = load i8, ptr %.sroa.4751.0..sroa_idx, align 8, !tbaa !189
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIiEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.tk)
  %i.tl = icmp ult i64 %.sroa.0748.0.copyload, %.sroa.2749.0.copyload
  br i1 %i.tl, label %.lr.ph.i262, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

.lr.ph.i262:                                      ; preds = %bb.af
  %i.tm = load ptr, ptr %i.tk, align 8, !tbaa !157
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !158 ; 3 uses
  %.not.i.i263 = icmp eq ptr %i.tn, null          ; 2 uses
  %i.to = trunc nuw i8 %.sroa.4751.0.copyload to i1 ; 4 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !39 ; 9 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !159 ; 5 uses
  %.not.i15.i266 = icmp eq ptr %i.ts, null
  br i1 %.not.i15.i266, label %.lr.ph.split.us.i294, label %.lr.ph.split.i267

.lr.ph.split.us.i294:                             ; preds = %.lr.ph.i262
  br i1 %.not.i.i263, label %.lr.ph.split.us.split.us.i302, label %.lr.ph.split.us.split.i295

.lr.ph.split.us.split.us.i302:                    ; preds = %.lr.ph.split.us.i294
  br i1 %i.to, label %._crit_edge.sink.split.i299, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i303.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i303.preheader: ; preds = %.lr.ph.split.us.split.us.i302
  %i.tt = sub i64 %.sroa.2749.0.copyload, %.sroa.0748.0.copyload ; 3 uses
  %min.iters.check1715 = icmp ult i64 %i.tt, 4
  br i1 %min.iters.check1715, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i303.preheader1930, label %vector.ph1716

vector.ph1716:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i303.preheader
  %n.vec1718 = and i64 %i.tt, -4                  ; 3 uses
  %i.tu = add i64 %.sroa.0748.0.copyload, %n.vec1718
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %.sroa.0748.0.copyload
  br label %vector.body1719

vector.body1719:                                  ; preds = %vector.body1719, %vector.ph1716
  %index1720 = phi i64 [ 0, %vector.ph1716 ], [ %index.next1723, %vector.body1719 ] ; 2 uses
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %index1720 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 16 ; 2 uses
  %wide.load1721 = load <2 x i64>, ptr %i.tw, align 8, !tbaa !14
  %wide.load1722 = load <2 x i64>, ptr %i.tx, align 8, !tbaa !14
  %i.ty = add <2 x i64> %wide.load1721, splat (i64 5)
  %i.tz = add <2 x i64> %wide.load1722, splat (i64 5)
  store <2 x i64> %i.ty, ptr %i.tw, align 8, !tbaa !14
  store <2 x i64> %i.tz, ptr %i.tx, align 8, !tbaa !14
  %index.next1723 = add nuw i64 %index1720, 4     ; 2 uses
  %i.ua = icmp eq i64 %index.next1723, %n.vec1718
  br i1 %i.ua, label %middle.block1724, label %vector.body1719, !llvm.loop !630

middle.block1724:                                 ; preds = %vector.body1719
  %cmp.n1725 = icmp eq i64 %i.tt, %n.vec1718
  br i1 %cmp.n1725, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i303.preheader1930

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i303.preheader1930: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i303.preheader, %middle.block1724
  %.017.us.us.i304.ph = phi i64 [ %.sroa.0748.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i303.preheader ], [ %i.tu, %middle.block1724 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i303

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i303: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i303.preheader1930, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i303
  %.017.us.us.i304 = phi i64 [ %i.ue, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i303 ], [ %.017.us.us.i304.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i303.preheader1930 ] ; 2 uses
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %.017.us.us.i304 ; 2 uses
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !14
  %i.ud = add i64 %i.uc, 5
  store i64 %i.ud, ptr %i.ub, align 8, !tbaa !14
  %i.ue = add nuw i64 %.017.us.us.i304, 1         ; 2 uses
  %exitcond44.not.i305 = icmp eq i64 %i.ue, %.sroa.2749.0.copyload
  br i1 %exitcond44.not.i305, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i303, !llvm.loop !631

.lr.ph.split.us.split.i295:                       ; preds = %.lr.ph.split.us.i294
  br i1 %i.to, label %._crit_edge.sink.split.i299, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i296.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i296.preheader: ; preds = %.lr.ph.split.us.split.i295
  %i.uf = sub i64 %.sroa.2749.0.copyload, %.sroa.0748.0.copyload ; 3 uses
  %min.iters.check1702 = icmp ult i64 %i.uf, 4
  br i1 %min.iters.check1702, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i296.preheader1932, label %vector.ph1703

vector.ph1703:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i296.preheader
  %n.vec1705 = and i64 %i.uf, -4                  ; 3 uses
  %i.ug = add i64 %.sroa.0748.0.copyload, %n.vec1705
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %.sroa.0748.0.copyload
  br label %vector.body1706

vector.body1706:                                  ; preds = %vector.body1706, %vector.ph1703
  %index1707 = phi i64 [ 0, %vector.ph1703 ], [ %index.next1710, %vector.body1706 ] ; 2 uses
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %index1707 ; 3 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 16 ; 2 uses
  %wide.load1708 = load <2 x i64>, ptr %i.ui, align 8, !tbaa !14
  %wide.load1709 = load <2 x i64>, ptr %i.uj, align 8, !tbaa !14
  %i.uk = add <2 x i64> %wide.load1708, splat (i64 5)
  %i.ul = add <2 x i64> %wide.load1709, splat (i64 5)
  store <2 x i64> %i.uk, ptr %i.ui, align 8, !tbaa !14
  store <2 x i64> %i.ul, ptr %i.uj, align 8, !tbaa !14
  %index.next1710 = add nuw i64 %index1707, 4     ; 2 uses
  %i.um = icmp eq i64 %index.next1710, %n.vec1705
  br i1 %i.um, label %middle.block1711, label %vector.body1706, !llvm.loop !632

middle.block1711:                                 ; preds = %vector.body1706
  %cmp.n1712 = icmp eq i64 %i.uf, %n.vec1705
  br i1 %cmp.n1712, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i296.preheader1932

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i296.preheader1932: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i296.preheader, %middle.block1711
  %.017.us.i297.ph = phi i64 [ %.sroa.0748.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i296.preheader ], [ %i.ug, %middle.block1711 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i296

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i296: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i296.preheader1932, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i296
  %.017.us.i297 = phi i64 [ %i.uq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i296 ], [ %.017.us.i297.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i296.preheader1932 ] ; 2 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %.017.us.i297 ; 2 uses
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !14
  %i.up = add i64 %i.uo, 5
  store i64 %i.up, ptr %i.un, align 8, !tbaa !14
  %i.uq = add nuw i64 %.017.us.i297, 1            ; 2 uses
  %exitcond43.not.i298 = icmp eq i64 %i.uq, %.sroa.2749.0.copyload
  br i1 %exitcond43.not.i298, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i296, !llvm.loop !633

.lr.ph.split.i267:                                ; preds = %.lr.ph.i262
  br i1 %.not.i.i263, label %.lr.ph.split.split.us.i281, label %.lr.ph.split.split.i268

.lr.ph.split.split.us.i281:                       ; preds = %.lr.ph.split.i267
  br i1 %i.to, label %.lr.ph.split.split.us.split.us.i287, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i282

.lr.ph.split.split.us.split.us.i287:              ; preds = %.lr.ph.split.split.us.i281
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %.sroa.3750.0.copyload ; 3 uses
  %.promoted26.i288 = load i64, ptr %i.ur, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i289

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i289: ; preds = %bb.ag, %.lr.ph.split.split.us.split.us.i287
  %i.us = phi i64 [ %.promoted26.i288, %.lr.ph.split.split.us.split.us.i287 ], [ %i.vb, %bb.ag ] ; 2 uses
  %.017.us18.us.i290 = phi i64 [ %.sroa.0748.0.copyload, %.lr.ph.split.split.us.split.us.i287 ], [ %i.vc, %bb.ag ] ; 3 uses
  %i.ut = add i64 %i.us, 1                        ; 2 uses
  store i64 %i.ut, ptr %i.ur, align 8, !tbaa !14
  %i.uu = lshr i64 %.017.us18.us.i290, 6
  %i.uv = and i64 %.017.us18.us.i290, 63
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %i.uu
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !14
  %i.uy = shl nuw i64 1, %i.uv
  %i.uz = and i64 %i.ux, %i.uy
  %.not.us.us.i291 = icmp eq i64 %i.uz, 0
  br i1 %.not.us.us.i291, label %bb.ag, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i292

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i292: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i289
  %i.va = add i64 %i.us, 5                        ; 2 uses
  store i64 %i.va, ptr %i.ur, align 8, !tbaa !14
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i292, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i289
  %i.vb = phi i64 [ %i.ut, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i289 ], [ %i.va, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i292 ]
  %i.vc = add nuw i64 %.017.us18.us.i290, 1       ; 2 uses
  %exitcond42.not.i293 = icmp eq i64 %i.vc, %.sroa.2749.0.copyload
  br i1 %exitcond42.not.i293, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i289, !llvm.loop !634

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i282: ; preds = %.lr.ph.split.split.us.i281, %bb.ah
  %.017.us18.i283 = phi i64 [ %i.vn, %bb.ah ], [ %.sroa.0748.0.copyload, %.lr.ph.split.split.us.i281 ] ; 4 uses
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %.017.us18.i283 ; 3 uses
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !14 ; 2 uses
  %i.vf = add i64 %i.ve, 1
  store i64 %i.vf, ptr %i.vd, align 8, !tbaa !14
  %i.vg = lshr i64 %.017.us18.i283, 6
  %i.vh = and i64 %.017.us18.i283, 63
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %i.vg
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !14
  %i.vk = shl nuw i64 1, %i.vh
  %i.vl = and i64 %i.vj, %i.vk
  %.not.us.i284 = icmp eq i64 %i.vl, 0
  br i1 %.not.us.i284, label %bb.ah, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i285

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i285: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i282
  %i.vm = add i64 %i.ve, 5
  store i64 %i.vm, ptr %i.vd, align 8, !tbaa !14
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i285, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i282
  %i.vn = add nuw i64 %.017.us18.i283, 1          ; 2 uses
  %exitcond41.not.i286 = icmp eq i64 %i.vn, %.sroa.2749.0.copyload
  br i1 %exitcond41.not.i286, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i282, !llvm.loop !634

.lr.ph.split.split.i268:                          ; preds = %.lr.ph.split.i267
  br i1 %i.to, label %.lr.ph.split.split.split.us.i274, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i269

.lr.ph.split.split.split.us.i274:                 ; preds = %.lr.ph.split.split.i268
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %.sroa.3750.0.copyload ; 3 uses
  %.promoted.i275 = load i64, ptr %i.vo, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i276

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i276: ; preds = %bb.ai, %.lr.ph.split.split.split.us.i274
  %i.vp = phi i64 [ %.promoted.i275, %.lr.ph.split.split.split.us.i274 ], [ %i.wb, %bb.ai ] ; 2 uses
  %.017.us22.i277 = phi i64 [ %.sroa.0748.0.copyload, %.lr.ph.split.split.split.us.i274 ], [ %i.wc, %bb.ai ] ; 2 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %.017.us22.i277
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !3
  %i.vs = zext i32 %i.vr to i64                   ; 2 uses
  %i.vt = add i64 %i.vp, 1                        ; 2 uses
  store i64 %i.vt, ptr %i.vo, align 8, !tbaa !14
  %i.vu = lshr i64 %i.vs, 6
  %i.vv = and i64 %i.vs, 63
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %i.vu
  %i.vx = load i64, ptr %i.vw, align 8, !tbaa !14
  %i.vy = shl nuw i64 1, %i.vv
  %i.vz = and i64 %i.vy, %i.vx
  %.not.us24.i278 = icmp eq i64 %i.vz, 0
  br i1 %.not.us24.i278, label %bb.ai, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i279

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i279: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i276
  %i.wa = add i64 %i.vp, 5                        ; 2 uses
  store i64 %i.wa, ptr %i.vo, align 8, !tbaa !14
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i279, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i276
  %i.wb = phi i64 [ %i.vt, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i276 ], [ %i.wa, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i279 ]
  %i.wc = add nuw i64 %.017.us22.i277, 1          ; 2 uses
  %exitcond40.not.i280 = icmp eq i64 %i.wc, %.sroa.2749.0.copyload
  br i1 %exitcond40.not.i280, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i276, !llvm.loop !634

._crit_edge.sink.split.i299:                      ; preds = %.lr.ph.split.us.split.i295, %.lr.ph.split.us.split.us.i302
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %.sroa.3750.0.copyload ; 2 uses
  %.promoted30.i300 = load i64, ptr %i.wd, align 8, !tbaa !14
  %reass.add918 = sub i64 %.sroa.2749.0.copyload, %.sroa.0748.0.copyload
  %reass.mul919 = mul i64 %reass.add918, 5
  %i.we = add i64 %.promoted30.i300, %reass.mul919
  store i64 %i.we, ptr %i.wd, align 8, !tbaa !14
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i269: ; preds = %.lr.ph.split.split.i268, %bb.aj
  %.017.i270 = phi i64 [ %i.ws, %bb.aj ], [ %.sroa.0748.0.copyload, %.lr.ph.split.split.i268 ] ; 3 uses
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %.017.i270
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !3
  %i.wh = zext i32 %i.wg to i64                   ; 2 uses
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %.017.i270 ; 3 uses
  %i.wj = load i64, ptr %i.wi, align 8, !tbaa !14 ; 2 uses
  %i.wk = add i64 %i.wj, 1
  store i64 %i.wk, ptr %i.wi, align 8, !tbaa !14
  %i.wl = lshr i64 %i.wh, 6
  %i.wm = and i64 %i.wh, 63
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %i.wl
  %i.wo = load i64, ptr %i.wn, align 8, !tbaa !14
  %i.wp = shl nuw i64 1, %i.wm
  %i.wq = and i64 %i.wo, %i.wp
  %.not.i271 = icmp eq i64 %i.wq, 0
  br i1 %.not.i271, label %bb.aj, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i272

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i272: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i269
  %i.wr = add i64 %i.wj, 5
  store i64 %i.wr, ptr %i.wi, align 8, !tbaa !14
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i272, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i269
  %i.ws = add nuw i64 %.017.i270, 1               ; 2 uses
  %exitcond.not.i273 = icmp eq i64 %i.ws, %.sroa.2749.0.copyload
  br i1 %exitcond.not.i273, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i269, !llvm.loop !634

bb.ak:                                            ; preds = %bb.a
  %.sroa.0758.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 14 uses
  %.sroa.2759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2759.0.copyload = load i64, ptr %.sroa.2759.0..sroa_idx, align 8, !tbaa !14 ; 10 uses
  %.sroa.3760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3760.0.copyload = load i64, ptr %.sroa.3760.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %.sroa.4761.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4761.0.copyload = load i8, ptr %.sroa.4761.0..sroa_idx, align 8, !tbaa !189
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeImEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.wt)
  %i.wu = icmp ult i64 %.sroa.0758.0.copyload, %.sroa.2759.0.copyload
  br i1 %i.wu, label %.lr.ph.i306, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

.lr.ph.i306:                                      ; preds = %bb.ak
  %i.wv = load ptr, ptr %i.wt, align 8, !tbaa !157
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !158 ; 3 uses
  %.not.i.i307 = icmp eq ptr %i.ww, null          ; 2 uses
  %i.wx = trunc nuw i8 %.sroa.4761.0.copyload to i1 ; 4 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !39 ; 9 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !159 ; 5 uses
  %.not.i15.i310 = icmp eq ptr %i.xb, null
  br i1 %.not.i15.i310, label %.lr.ph.split.us.i338, label %.lr.ph.split.i311

.lr.ph.split.us.i338:                             ; preds = %.lr.ph.i306
  br i1 %.not.i.i307, label %.lr.ph.split.us.split.us.i346, label %.lr.ph.split.us.split.i339

.lr.ph.split.us.split.us.i346:                    ; preds = %.lr.ph.split.us.i338
  br i1 %i.wx, label %._crit_edge.sink.split.i343, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i347.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i347.preheader: ; preds = %.lr.ph.split.us.split.us.i346
  %i.xc = sub i64 %.sroa.2759.0.copyload, %.sroa.0758.0.copyload ; 3 uses
  %min.iters.check1689 = icmp ult i64 %i.xc, 4
  br i1 %min.iters.check1689, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i347.preheader1938, label %vector.ph1690

vector.ph1690:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i347.preheader
  %n.vec1692 = and i64 %i.xc, -4                  ; 3 uses
  %i.xd = add i64 %.sroa.0758.0.copyload, %n.vec1692
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %.sroa.0758.0.copyload
  br label %vector.body1693

vector.body1693:                                  ; preds = %vector.body1693, %vector.ph1690
  %index1694 = phi i64 [ 0, %vector.ph1690 ], [ %index.next1697, %vector.body1693 ] ; 2 uses
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %index1694 ; 3 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 16 ; 2 uses
  %wide.load1695 = load <2 x i64>, ptr %i.xf, align 8, !tbaa !14
  %wide.load1696 = load <2 x i64>, ptr %i.xg, align 8, !tbaa !14
  %i.xh = add <2 x i64> %wide.load1695, splat (i64 9)
  %i.xi = add <2 x i64> %wide.load1696, splat (i64 9)
  store <2 x i64> %i.xh, ptr %i.xf, align 8, !tbaa !14
  store <2 x i64> %i.xi, ptr %i.xg, align 8, !tbaa !14
  %index.next1697 = add nuw i64 %index1694, 4     ; 2 uses
  %i.xj = icmp eq i64 %index.next1697, %n.vec1692
  br i1 %i.xj, label %middle.block1698, label %vector.body1693, !llvm.loop !635

middle.block1698:                                 ; preds = %vector.body1693
  %cmp.n1699 = icmp eq i64 %i.xc, %n.vec1692
  br i1 %cmp.n1699, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i347.preheader1938

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i347.preheader1938: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i347.preheader, %middle.block1698
  %.017.us.us.i348.ph = phi i64 [ %.sroa.0758.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i347.preheader ], [ %i.xd, %middle.block1698 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i347

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i347: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i347.preheader1938, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i347
  %.017.us.us.i348 = phi i64 [ %i.xn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i347 ], [ %.017.us.us.i348.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i347.preheader1938 ] ; 2 uses
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %.017.us.us.i348 ; 2 uses
  %i.xl = load i64, ptr %i.xk, align 8, !tbaa !14
  %i.xm = add i64 %i.xl, 9
  store i64 %i.xm, ptr %i.xk, align 8, !tbaa !14
  %i.xn = add nuw i64 %.017.us.us.i348, 1         ; 2 uses
  %exitcond44.not.i349 = icmp eq i64 %i.xn, %.sroa.2759.0.copyload
  br i1 %exitcond44.not.i349, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i347, !llvm.loop !636

.lr.ph.split.us.split.i339:                       ; preds = %.lr.ph.split.us.i338
  br i1 %i.wx, label %._crit_edge.sink.split.i343, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i340.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i340.preheader: ; preds = %.lr.ph.split.us.split.i339
  %i.xo = sub i64 %.sroa.2759.0.copyload, %.sroa.0758.0.copyload ; 3 uses
  %min.iters.check1676 = icmp ult i64 %i.xo, 4
  br i1 %min.iters.check1676, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i340.preheader1940, label %vector.ph1677

vector.ph1677:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i340.preheader
  %n.vec1679 = and i64 %i.xo, -4                  ; 3 uses
  %i.xp = add i64 %.sroa.0758.0.copyload, %n.vec1679
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %.sroa.0758.0.copyload
  br label %vector.body1680

vector.body1680:                                  ; preds = %vector.body1680, %vector.ph1677
  %index1681 = phi i64 [ 0, %vector.ph1677 ], [ %index.next1684, %vector.body1680 ] ; 2 uses
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %index1681 ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 16 ; 2 uses
  %wide.load1682 = load <2 x i64>, ptr %i.xr, align 8, !tbaa !14
  %wide.load1683 = load <2 x i64>, ptr %i.xs, align 8, !tbaa !14
  %i.xt = add <2 x i64> %wide.load1682, splat (i64 9)
  %i.xu = add <2 x i64> %wide.load1683, splat (i64 9)
  store <2 x i64> %i.xt, ptr %i.xr, align 8, !tbaa !14
  store <2 x i64> %i.xu, ptr %i.xs, align 8, !tbaa !14
  %index.next1684 = add nuw i64 %index1681, 4     ; 2 uses
  %i.xv = icmp eq i64 %index.next1684, %n.vec1679
  br i1 %i.xv, label %middle.block1685, label %vector.body1680, !llvm.loop !637

middle.block1685:                                 ; preds = %vector.body1680
  %cmp.n1686 = icmp eq i64 %i.xo, %n.vec1679
  br i1 %cmp.n1686, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i340.preheader1940

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i340.preheader1940: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i340.preheader, %middle.block1685
  %.017.us.i341.ph = phi i64 [ %.sroa.0758.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i340.preheader ], [ %i.xp, %middle.block1685 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i340

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i340: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i340.preheader1940, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i340
  %.017.us.i341 = phi i64 [ %i.xz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i340 ], [ %.017.us.i341.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i340.preheader1940 ] ; 2 uses
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %.017.us.i341 ; 2 uses
  %i.xx = load i64, ptr %i.xw, align 8, !tbaa !14
  %i.xy = add i64 %i.xx, 9
  store i64 %i.xy, ptr %i.xw, align 8, !tbaa !14
  %i.xz = add nuw i64 %.017.us.i341, 1            ; 2 uses
  %exitcond43.not.i342 = icmp eq i64 %i.xz, %.sroa.2759.0.copyload
  br i1 %exitcond43.not.i342, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i340, !llvm.loop !638

.lr.ph.split.i311:                                ; preds = %.lr.ph.i306
  br i1 %.not.i.i307, label %.lr.ph.split.split.us.i325, label %.lr.ph.split.split.i312

.lr.ph.split.split.us.i325:                       ; preds = %.lr.ph.split.i311
  br i1 %i.wx, label %.lr.ph.split.split.us.split.us.i331, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i326

.lr.ph.split.split.us.split.us.i331:              ; preds = %.lr.ph.split.split.us.i325
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %.sroa.3760.0.copyload ; 3 uses
  %.promoted26.i332 = load i64, ptr %i.ya, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i333

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i333: ; preds = %bb.al, %.lr.ph.split.split.us.split.us.i331
  %i.yb = phi i64 [ %.promoted26.i332, %.lr.ph.split.split.us.split.us.i331 ], [ %i.yk, %bb.al ] ; 2 uses
  %.017.us18.us.i334 = phi i64 [ %.sroa.0758.0.copyload, %.lr.ph.split.split.us.split.us.i331 ], [ %i.yl, %bb.al ] ; 3 uses
  %i.yc = add i64 %i.yb, 1                        ; 2 uses
  store i64 %i.yc, ptr %i.ya, align 8, !tbaa !14
  %i.yd = lshr i64 %.017.us18.us.i334, 6
  %i.ye = and i64 %.017.us18.us.i334, 63
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %i.yd
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !14
  %i.yh = shl nuw i64 1, %i.ye
  %i.yi = and i64 %i.yg, %i.yh
  %.not.us.us.i335 = icmp eq i64 %i.yi, 0
  br i1 %.not.us.us.i335, label %bb.al, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i336

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i336: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i333
  %i.yj = add i64 %i.yb, 9                        ; 2 uses
  store i64 %i.yj, ptr %i.ya, align 8, !tbaa !14
  br label %bb.al

bb.al:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i336, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i333
  %i.yk = phi i64 [ %i.yc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i333 ], [ %i.yj, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i336 ]
  %i.yl = add nuw i64 %.017.us18.us.i334, 1       ; 2 uses
  %exitcond42.not.i337 = icmp eq i64 %i.yl, %.sroa.2759.0.copyload
  br i1 %exitcond42.not.i337, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i333, !llvm.loop !639

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i326: ; preds = %.lr.ph.split.split.us.i325, %bb.am
  %.017.us18.i327 = phi i64 [ %i.yw, %bb.am ], [ %.sroa.0758.0.copyload, %.lr.ph.split.split.us.i325 ] ; 4 uses
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %.017.us18.i327 ; 3 uses
  %i.yn = load i64, ptr %i.ym, align 8, !tbaa !14 ; 2 uses
  %i.yo = add i64 %i.yn, 1
  store i64 %i.yo, ptr %i.ym, align 8, !tbaa !14
  %i.yp = lshr i64 %.017.us18.i327, 6
  %i.yq = and i64 %.017.us18.i327, 63
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %i.yp
  %i.ys = load i64, ptr %i.yr, align 8, !tbaa !14
  %i.yt = shl nuw i64 1, %i.yq
  %i.yu = and i64 %i.ys, %i.yt
  %.not.us.i328 = icmp eq i64 %i.yu, 0
  br i1 %.not.us.i328, label %bb.am, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i329

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i329: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i326
  %i.yv = add i64 %i.yn, 9
  store i64 %i.yv, ptr %i.ym, align 8, !tbaa !14
  br label %bb.am

bb.am:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i329, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i326
  %i.yw = add nuw i64 %.017.us18.i327, 1          ; 2 uses
  %exitcond41.not.i330 = icmp eq i64 %i.yw, %.sroa.2759.0.copyload
  br i1 %exitcond41.not.i330, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i326, !llvm.loop !639

.lr.ph.split.split.i312:                          ; preds = %.lr.ph.split.i311
  br i1 %i.wx, label %.lr.ph.split.split.split.us.i318, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i313

.lr.ph.split.split.split.us.i318:                 ; preds = %.lr.ph.split.split.i312
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %.sroa.3760.0.copyload ; 3 uses
  %.promoted.i319 = load i64, ptr %i.yx, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i320

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i320: ; preds = %bb.an, %.lr.ph.split.split.split.us.i318
  %i.yy = phi i64 [ %.promoted.i319, %.lr.ph.split.split.split.us.i318 ], [ %i.zk, %bb.an ] ; 2 uses
  %.017.us22.i321 = phi i64 [ %.sroa.0758.0.copyload, %.lr.ph.split.split.split.us.i318 ], [ %i.zl, %bb.an ] ; 2 uses
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %.017.us22.i321
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !3
  %i.zb = zext i32 %i.za to i64                   ; 2 uses
  %i.zc = add i64 %i.yy, 1                        ; 2 uses
  store i64 %i.zc, ptr %i.yx, align 8, !tbaa !14
  %i.zd = lshr i64 %i.zb, 6
  %i.ze = and i64 %i.zb, 63
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %i.zd
  %i.zg = load i64, ptr %i.zf, align 8, !tbaa !14
  %i.zh = shl nuw i64 1, %i.ze
  %i.zi = and i64 %i.zh, %i.zg
  %.not.us24.i322 = icmp eq i64 %i.zi, 0
  br i1 %.not.us24.i322, label %bb.an, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i323

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i323: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i320
  %i.zj = add i64 %i.yy, 9                        ; 2 uses
  store i64 %i.zj, ptr %i.yx, align 8, !tbaa !14
  br label %bb.an

bb.an:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i323, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i320
  %i.zk = phi i64 [ %i.zc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i320 ], [ %i.zj, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i323 ]
  %i.zl = add nuw i64 %.017.us22.i321, 1          ; 2 uses
  %exitcond40.not.i324 = icmp eq i64 %i.zl, %.sroa.2759.0.copyload
  br i1 %exitcond40.not.i324, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i320, !llvm.loop !639

._crit_edge.sink.split.i343:                      ; preds = %.lr.ph.split.us.split.i339, %.lr.ph.split.us.split.us.i346
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %.sroa.3760.0.copyload ; 2 uses
  %.promoted30.i344 = load i64, ptr %i.zm, align 8, !tbaa !14
  %reass.add915 = sub i64 %.sroa.2759.0.copyload, %.sroa.0758.0.copyload
  %reass.mul916 = mul i64 %reass.add915, 9
  %i.zn = add i64 %.promoted30.i344, %reass.mul916
  store i64 %i.zn, ptr %i.zm, align 8, !tbaa !14
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i313: ; preds = %.lr.ph.split.split.i312, %bb.ao
  %.017.i314 = phi i64 [ %i.aab, %bb.ao ], [ %.sroa.0758.0.copyload, %.lr.ph.split.split.i312 ] ; 3 uses
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %.017.i314
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !3
  %i.zq = zext i32 %i.zp to i64                   ; 2 uses
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %.017.i314 ; 3 uses
  %i.zs = load i64, ptr %i.zr, align 8, !tbaa !14 ; 2 uses
  %i.zt = add i64 %i.zs, 1
  store i64 %i.zt, ptr %i.zr, align 8, !tbaa !14
  %i.zu = lshr i64 %i.zq, 6
  %i.zv = and i64 %i.zq, 63
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %i.zu
  %i.zx = load i64, ptr %i.zw, align 8, !tbaa !14
  %i.zy = shl nuw i64 1, %i.zv
  %i.zz = and i64 %i.zx, %i.zy
  %.not.i315 = icmp eq i64 %i.zz, 0
  br i1 %.not.i315, label %bb.ao, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i316

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i316: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i313
  %i.aaa = add i64 %i.zs, 9
  store i64 %i.aaa, ptr %i.zr, align 8, !tbaa !14
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i316, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i313
  %i.aab = add nuw i64 %.017.i314, 1              ; 2 uses
  %exitcond.not.i317 = icmp eq i64 %i.aab, %.sroa.2759.0.copyload
  br i1 %exitcond.not.i317, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i313, !llvm.loop !639

bb.ap:                                            ; preds = %bb.a
  %.sroa.0768.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 14 uses
  %.sroa.2769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2769.0.copyload = load i64, ptr %.sroa.2769.0..sroa_idx, align 8, !tbaa !14 ; 10 uses
  %.sroa.3770.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3770.0.copyload = load i64, ptr %.sroa.3770.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %.sroa.4771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4771.0.copyload = load i8, ptr %.sroa.4771.0..sroa_idx, align 8, !tbaa !189
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIlEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.aac)
  %i.aad = icmp ult i64 %.sroa.0768.0.copyload, %.sroa.2769.0.copyload
  br i1 %i.aad, label %.lr.ph.i350, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

.lr.ph.i350:                                      ; preds = %bb.ap
  %i.aae = load ptr, ptr %i.aac, align 8, !tbaa !157
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !158 ; 3 uses
  %.not.i.i351 = icmp eq ptr %i.aaf, null         ; 2 uses
  %i.aag = trunc nuw i8 %.sroa.4771.0.copyload to i1 ; 4 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !39 ; 9 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !159 ; 5 uses
  %.not.i15.i354 = icmp eq ptr %i.aak, null
  br i1 %.not.i15.i354, label %.lr.ph.split.us.i382, label %.lr.ph.split.i355

.lr.ph.split.us.i382:                             ; preds = %.lr.ph.i350
  br i1 %.not.i.i351, label %.lr.ph.split.us.split.us.i390, label %.lr.ph.split.us.split.i383

.lr.ph.split.us.split.us.i390:                    ; preds = %.lr.ph.split.us.i382
  br i1 %i.aag, label %._crit_edge.sink.split.i387, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i391.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i391.preheader: ; preds = %.lr.ph.split.us.split.us.i390
  %i.aal = sub i64 %.sroa.2769.0.copyload, %.sroa.0768.0.copyload ; 3 uses
  %min.iters.check1663 = icmp ult i64 %i.aal, 4
  br i1 %min.iters.check1663, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i391.preheader1946, label %vector.ph1664

vector.ph1664:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i391.preheader
  %n.vec1666 = and i64 %i.aal, -4                 ; 3 uses
  %i.aam = add i64 %.sroa.0768.0.copyload, %n.vec1666
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.aai, i64 %.sroa.0768.0.copyload
  br label %vector.body1667

vector.body1667:                                  ; preds = %vector.body1667, %vector.ph1664
  %index1668 = phi i64 [ 0, %vector.ph1664 ], [ %index.next1671, %vector.body1667 ] ; 2 uses
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.aan, i64 %index1668 ; 3 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 16 ; 2 uses
  %wide.load1669 = load <2 x i64>, ptr %i.aao, align 8, !tbaa !14
  %wide.load1670 = load <2 x i64>, ptr %i.aap, align 8, !tbaa !14
  %i.aaq = add <2 x i64> %wide.load1669, splat (i64 9)
  %i.aar = add <2 x i64> %wide.load1670, splat (i64 9)
  store <2 x i64> %i.aaq, ptr %i.aao, align 8, !tbaa !14
  store <2 x i64> %i.aar, ptr %i.aap, align 8, !tbaa !14
  %index.next1671 = add nuw i64 %index1668, 4     ; 2 uses
  %i.aas = icmp eq i64 %index.next1671, %n.vec1666
  br i1 %i.aas, label %middle.block1672, label %vector.body1667, !llvm.loop !640

middle.block1672:                                 ; preds = %vector.body1667
  %cmp.n1673 = icmp eq i64 %i.aal, %n.vec1666
  br i1 %cmp.n1673, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i391.preheader1946

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i391.preheader1946: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i391.preheader, %middle.block1672
  %.017.us.us.i392.ph = phi i64 [ %.sroa.0768.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i391.preheader ], [ %i.aam, %middle.block1672 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i391

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i391: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i391.preheader1946, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i391
  %.017.us.us.i392 = phi i64 [ %i.aaw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i391 ], [ %.017.us.us.i392.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i391.preheader1946 ] ; 2 uses
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %i.aai, i64 %.017.us.us.i392 ; 2 uses
  %i.aau = load i64, ptr %i.aat, align 8, !tbaa !14
  %i.aav = add i64 %i.aau, 9
  store i64 %i.aav, ptr %i.aat, align 8, !tbaa !14
  %i.aaw = add nuw i64 %.017.us.us.i392, 1        ; 2 uses
  %exitcond44.not.i393 = icmp eq i64 %i.aaw, %.sroa.2769.0.copyload
  br i1 %exitcond44.not.i393, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i391, !llvm.loop !641

.lr.ph.split.us.split.i383:                       ; preds = %.lr.ph.split.us.i382
  br i1 %i.aag, label %._crit_edge.sink.split.i387, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i384.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i384.preheader: ; preds = %.lr.ph.split.us.split.i383
  %i.aax = sub i64 %.sroa.2769.0.copyload, %.sroa.0768.0.copyload ; 3 uses
  %min.iters.check1650 = icmp ult i64 %i.aax, 4
  br i1 %min.iters.check1650, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i384.preheader1948, label %vector.ph1651

vector.ph1651:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i384.preheader
  %n.vec1653 = and i64 %i.aax, -4                 ; 3 uses
  %i.aay = add i64 %.sroa.0768.0.copyload, %n.vec1653
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.aai, i64 %.sroa.0768.0.copyload
  br label %vector.body1654

vector.body1654:                                  ; preds = %vector.body1654, %vector.ph1651
  %index1655 = phi i64 [ 0, %vector.ph1651 ], [ %index.next1658, %vector.body1654 ] ; 2 uses
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.aaz, i64 %index1655 ; 3 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 16 ; 2 uses
  %wide.load1656 = load <2 x i64>, ptr %i.aba, align 8, !tbaa !14
  %wide.load1657 = load <2 x i64>, ptr %i.abb, align 8, !tbaa !14
  %i.abc = add <2 x i64> %wide.load1656, splat (i64 9)
  %i.abd = add <2 x i64> %wide.load1657, splat (i64 9)
  store <2 x i64> %i.abc, ptr %i.aba, align 8, !tbaa !14
  store <2 x i64> %i.abd, ptr %i.abb, align 8, !tbaa !14
  %index.next1658 = add nuw i64 %index1655, 4     ; 2 uses
  %i.abe = icmp eq i64 %index.next1658, %n.vec1653
  br i1 %i.abe, label %middle.block1659, label %vector.body1654, !llvm.loop !642

middle.block1659:                                 ; preds = %vector.body1654
  %cmp.n1660 = icmp eq i64 %i.aax, %n.vec1653
  br i1 %cmp.n1660, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i384.preheader1948

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i384.preheader1948: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i384.preheader, %middle.block1659
  %.017.us.i385.ph = phi i64 [ %.sroa.0768.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i384.preheader ], [ %i.aay, %middle.block1659 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i384

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i384: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i384.preheader1948, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i384
  %.017.us.i385 = phi i64 [ %i.abi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i384 ], [ %.017.us.i385.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i384.preheader1948 ] ; 2 uses
  %i.abf = getelementptr inbounds nuw [8 x i8], ptr %i.aai, i64 %.017.us.i385 ; 2 uses
  %i.abg = load i64, ptr %i.abf, align 8, !tbaa !14
  %i.abh = add i64 %i.abg, 9
  store i64 %i.abh, ptr %i.abf, align 8, !tbaa !14
  %i.abi = add nuw i64 %.017.us.i385, 1           ; 2 uses
  %exitcond43.not.i386 = icmp eq i64 %i.abi, %.sroa.2769.0.copyload
  br i1 %exitcond43.not.i386, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i384, !llvm.loop !643

.lr.ph.split.i355:                                ; preds = %.lr.ph.i350
  br i1 %.not.i.i351, label %.lr.ph.split.split.us.i369, label %.lr.ph.split.split.i356

.lr.ph.split.split.us.i369:                       ; preds = %.lr.ph.split.i355
  br i1 %i.aag, label %.lr.ph.split.split.us.split.us.i375, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i370

.lr.ph.split.split.us.split.us.i375:              ; preds = %.lr.ph.split.split.us.i369
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.aai, i64 %.sroa.3770.0.copyload ; 3 uses
  %.promoted26.i376 = load i64, ptr %i.abj, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i377

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i377: ; preds = %bb.aq, %.lr.ph.split.split.us.split.us.i375
  %i.abk = phi i64 [ %.promoted26.i376, %.lr.ph.split.split.us.split.us.i375 ], [ %i.abt, %bb.aq ] ; 2 uses
  %.017.us18.us.i378 = phi i64 [ %.sroa.0768.0.copyload, %.lr.ph.split.split.us.split.us.i375 ], [ %i.abu, %bb.aq ] ; 3 uses
  %i.abl = add i64 %i.abk, 1                      ; 2 uses
  store i64 %i.abl, ptr %i.abj, align 8, !tbaa !14
  %i.abm = lshr i64 %.017.us18.us.i378, 6
  %i.abn = and i64 %.017.us18.us.i378, 63
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %i.aak, i64 %i.abm
  %i.abp = load i64, ptr %i.abo, align 8, !tbaa !14
  %i.abq = shl nuw i64 1, %i.abn
  %i.abr = and i64 %i.abp, %i.abq
  %.not.us.us.i379 = icmp eq i64 %i.abr, 0
  br i1 %.not.us.us.i379, label %bb.aq, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i380

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i380: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i377
  %i.abs = add i64 %i.abk, 9                      ; 2 uses
  store i64 %i.abs, ptr %i.abj, align 8, !tbaa !14
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i380, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i377
  %i.abt = phi i64 [ %i.abl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i377 ], [ %i.abs, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i380 ]
  %i.abu = add nuw i64 %.017.us18.us.i378, 1      ; 2 uses
  %exitcond42.not.i381 = icmp eq i64 %i.abu, %.sroa.2769.0.copyload
  br i1 %exitcond42.not.i381, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i377, !llvm.loop !644

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i370: ; preds = %.lr.ph.split.split.us.i369, %bb.ar
  %.017.us18.i371 = phi i64 [ %i.acf, %bb.ar ], [ %.sroa.0768.0.copyload, %.lr.ph.split.split.us.i369 ] ; 4 uses
  %i.abv = getelementptr inbounds nuw [8 x i8], ptr %i.aai, i64 %.017.us18.i371 ; 3 uses
  %i.abw = load i64, ptr %i.abv, align 8, !tbaa !14 ; 2 uses
  %i.abx = add i64 %i.abw, 1
  store i64 %i.abx, ptr %i.abv, align 8, !tbaa !14
  %i.aby = lshr i64 %.017.us18.i371, 6
  %i.abz = and i64 %.017.us18.i371, 63
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.aak, i64 %i.aby
  %i.acb = load i64, ptr %i.aca, align 8, !tbaa !14
  %i.acc = shl nuw i64 1, %i.abz
  %i.acd = and i64 %i.acb, %i.acc
  %.not.us.i372 = icmp eq i64 %i.acd, 0
  br i1 %.not.us.i372, label %bb.ar, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i373

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i373: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i370
  %i.ace = add i64 %i.abw, 9
  store i64 %i.ace, ptr %i.abv, align 8, !tbaa !14
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i373, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i370
  %i.acf = add nuw i64 %.017.us18.i371, 1         ; 2 uses
  %exitcond41.not.i374 = icmp eq i64 %i.acf, %.sroa.2769.0.copyload
  br i1 %exitcond41.not.i374, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i370, !llvm.loop !644

.lr.ph.split.split.i356:                          ; preds = %.lr.ph.split.i355
  br i1 %i.aag, label %.lr.ph.split.split.split.us.i362, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i357

.lr.ph.split.split.split.us.i362:                 ; preds = %.lr.ph.split.split.i356
  %i.acg = getelementptr inbounds nuw [8 x i8], ptr %i.aai, i64 %.sroa.3770.0.copyload ; 3 uses
  %.promoted.i363 = load i64, ptr %i.acg, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i364

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i364: ; preds = %bb.as, %.lr.ph.split.split.split.us.i362
  %i.ach = phi i64 [ %.promoted.i363, %.lr.ph.split.split.split.us.i362 ], [ %i.act, %bb.as ] ; 2 uses
  %.017.us22.i365 = phi i64 [ %.sroa.0768.0.copyload, %.lr.ph.split.split.split.us.i362 ], [ %i.acu, %bb.as ] ; 2 uses
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %.017.us22.i365
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !3
  %i.ack = zext i32 %i.acj to i64                 ; 2 uses
  %i.acl = add i64 %i.ach, 1                      ; 2 uses
  store i64 %i.acl, ptr %i.acg, align 8, !tbaa !14
  %i.acm = lshr i64 %i.ack, 6
  %i.acn = and i64 %i.ack, 63
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.aak, i64 %i.acm
  %i.acp = load i64, ptr %i.aco, align 8, !tbaa !14
  %i.acq = shl nuw i64 1, %i.acn
  %i.acr = and i64 %i.acq, %i.acp
  %.not.us24.i366 = icmp eq i64 %i.acr, 0
  br i1 %.not.us24.i366, label %bb.as, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i367

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i367: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i364
  %i.acs = add i64 %i.ach, 9                      ; 2 uses
  store i64 %i.acs, ptr %i.acg, align 8, !tbaa !14
  br label %bb.as

bb.as:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i367, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i364
  %i.act = phi i64 [ %i.acl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i364 ], [ %i.acs, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i367 ]
  %i.acu = add nuw i64 %.017.us22.i365, 1         ; 2 uses
  %exitcond40.not.i368 = icmp eq i64 %i.acu, %.sroa.2769.0.copyload
  br i1 %exitcond40.not.i368, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i364, !llvm.loop !644

._crit_edge.sink.split.i387:                      ; preds = %.lr.ph.split.us.split.i383, %.lr.ph.split.us.split.us.i390
  %i.acv = getelementptr inbounds nuw [8 x i8], ptr %i.aai, i64 %.sroa.3770.0.copyload ; 2 uses
  %.promoted30.i388 = load i64, ptr %i.acv, align 8, !tbaa !14
  %reass.add912 = sub i64 %.sroa.2769.0.copyload, %.sroa.0768.0.copyload
  %reass.mul913 = mul i64 %reass.add912, 9
  %i.acw = add i64 %.promoted30.i388, %reass.mul913
  store i64 %i.acw, ptr %i.acv, align 8, !tbaa !14
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i357: ; preds = %.lr.ph.split.split.i356, %bb.at
  %.017.i358 = phi i64 [ %i.adk, %bb.at ], [ %.sroa.0768.0.copyload, %.lr.ph.split.split.i356 ] ; 3 uses
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %.017.i358
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !3
  %i.acz = zext i32 %i.acy to i64                 ; 2 uses
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.aai, i64 %.017.i358 ; 3 uses
  %i.adb = load i64, ptr %i.ada, align 8, !tbaa !14 ; 2 uses
  %i.adc = add i64 %i.adb, 1
  store i64 %i.adc, ptr %i.ada, align 8, !tbaa !14
  %i.add = lshr i64 %i.acz, 6
  %i.ade = and i64 %i.acz, 63
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %i.aak, i64 %i.add
  %i.adg = load i64, ptr %i.adf, align 8, !tbaa !14
  %i.adh = shl nuw i64 1, %i.ade
  %i.adi = and i64 %i.adg, %i.adh
  %.not.i359 = icmp eq i64 %i.adi, 0
  br i1 %.not.i359, label %bb.at, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i360

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i360: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i357
  %i.adj = add i64 %i.adb, 9
  store i64 %i.adj, ptr %i.ada, align 8, !tbaa !14
  br label %bb.at

bb.at:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i360, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i357
  %i.adk = add nuw i64 %.017.i358, 1              ; 2 uses
  %exitcond.not.i361 = icmp eq i64 %i.adk, %.sroa.2769.0.copyload
  br i1 %exitcond.not.i361, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i357, !llvm.loop !644

bb.au:                                            ; preds = %bb.a
  %.sroa.0778.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 14 uses
  %.sroa.2779.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2779.0.copyload = load i64, ptr %.sroa.2779.0..sroa_idx, align 8, !tbaa !14 ; 10 uses
  %.sroa.3780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3780.0.copyload = load i64, ptr %.sroa.3780.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %.sroa.4781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4781.0.copyload = load i8, ptr %.sroa.4781.0..sroa_idx, align 8, !tbaa !189
  %i.adl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIfEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.adl)
  %i.adm = icmp ult i64 %.sroa.0778.0.copyload, %.sroa.2779.0.copyload
  br i1 %i.adm, label %.lr.ph.i394, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

.lr.ph.i394:                                      ; preds = %bb.au
  %i.adn = load ptr, ptr %i.adl, align 8, !tbaa !157
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !158 ; 3 uses
  %.not.i.i395 = icmp eq ptr %i.ado, null         ; 2 uses
  %i.adp = trunc nuw i8 %.sroa.4781.0.copyload to i1 ; 4 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !39 ; 9 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !159 ; 5 uses
  %.not.i15.i398 = icmp eq ptr %i.adt, null
  br i1 %.not.i15.i398, label %.lr.ph.split.us.i426, label %.lr.ph.split.i399

.lr.ph.split.us.i426:                             ; preds = %.lr.ph.i394
  br i1 %.not.i.i395, label %.lr.ph.split.us.split.us.i434, label %.lr.ph.split.us.split.i427

.lr.ph.split.us.split.us.i434:                    ; preds = %.lr.ph.split.us.i426
  br i1 %i.adp, label %._crit_edge.sink.split.i431, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i435.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i435.preheader: ; preds = %.lr.ph.split.us.split.us.i434
  %i.adu = sub i64 %.sroa.2779.0.copyload, %.sroa.0778.0.copyload ; 3 uses
  %min.iters.check1637 = icmp ult i64 %i.adu, 4
  br i1 %min.iters.check1637, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i435.preheader1954, label %vector.ph1638

vector.ph1638:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i435.preheader
  %n.vec1640 = and i64 %i.adu, -4                 ; 3 uses
  %i.adv = add i64 %.sroa.0778.0.copyload, %n.vec1640
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %.sroa.0778.0.copyload
  br label %vector.body1641

vector.body1641:                                  ; preds = %vector.body1641, %vector.ph1638
  %index1642 = phi i64 [ 0, %vector.ph1638 ], [ %index.next1645, %vector.body1641 ] ; 2 uses
  %i.adx = getelementptr inbounds nuw [8 x i8], ptr %i.adw, i64 %index1642 ; 3 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 16 ; 2 uses
  %wide.load1643 = load <2 x i64>, ptr %i.adx, align 8, !tbaa !14
  %wide.load1644 = load <2 x i64>, ptr %i.ady, align 8, !tbaa !14
  %i.adz = add <2 x i64> %wide.load1643, splat (i64 5)
  %i.aea = add <2 x i64> %wide.load1644, splat (i64 5)
  store <2 x i64> %i.adz, ptr %i.adx, align 8, !tbaa !14
  store <2 x i64> %i.aea, ptr %i.ady, align 8, !tbaa !14
  %index.next1645 = add nuw i64 %index1642, 4     ; 2 uses
  %i.aeb = icmp eq i64 %index.next1645, %n.vec1640
  br i1 %i.aeb, label %middle.block1646, label %vector.body1641, !llvm.loop !645

middle.block1646:                                 ; preds = %vector.body1641
  %cmp.n1647 = icmp eq i64 %i.adu, %n.vec1640
  br i1 %cmp.n1647, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i435.preheader1954

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i435.preheader1954: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i435.preheader, %middle.block1646
  %.017.us.us.i436.ph = phi i64 [ %.sroa.0778.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i435.preheader ], [ %i.adv, %middle.block1646 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i435

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i435: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i435.preheader1954, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i435
  %.017.us.us.i436 = phi i64 [ %i.aef, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i435 ], [ %.017.us.us.i436.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i435.preheader1954 ] ; 2 uses
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %.017.us.us.i436 ; 2 uses
  %i.aed = load i64, ptr %i.aec, align 8, !tbaa !14
  %i.aee = add i64 %i.aed, 5
  store i64 %i.aee, ptr %i.aec, align 8, !tbaa !14
  %i.aef = add nuw i64 %.017.us.us.i436, 1        ; 2 uses
  %exitcond44.not.i437 = icmp eq i64 %i.aef, %.sroa.2779.0.copyload
  br i1 %exitcond44.not.i437, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i435, !llvm.loop !646

.lr.ph.split.us.split.i427:                       ; preds = %.lr.ph.split.us.i426
  br i1 %i.adp, label %._crit_edge.sink.split.i431, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i428.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i428.preheader: ; preds = %.lr.ph.split.us.split.i427
  %i.aeg = sub i64 %.sroa.2779.0.copyload, %.sroa.0778.0.copyload ; 3 uses
  %min.iters.check1624 = icmp ult i64 %i.aeg, 4
  br i1 %min.iters.check1624, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i428.preheader1956, label %vector.ph1625

vector.ph1625:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i428.preheader
  %n.vec1627 = and i64 %i.aeg, -4                 ; 3 uses
  %i.aeh = add i64 %.sroa.0778.0.copyload, %n.vec1627
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %.sroa.0778.0.copyload
  br label %vector.body1628

vector.body1628:                                  ; preds = %vector.body1628, %vector.ph1625
  %index1629 = phi i64 [ 0, %vector.ph1625 ], [ %index.next1632, %vector.body1628 ] ; 2 uses
  %i.aej = getelementptr inbounds nuw [8 x i8], ptr %i.aei, i64 %index1629 ; 3 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 16 ; 2 uses
  %wide.load1630 = load <2 x i64>, ptr %i.aej, align 8, !tbaa !14
  %wide.load1631 = load <2 x i64>, ptr %i.aek, align 8, !tbaa !14
  %i.ael = add <2 x i64> %wide.load1630, splat (i64 5)
  %i.aem = add <2 x i64> %wide.load1631, splat (i64 5)
  store <2 x i64> %i.ael, ptr %i.aej, align 8, !tbaa !14
  store <2 x i64> %i.aem, ptr %i.aek, align 8, !tbaa !14
  %index.next1632 = add nuw i64 %index1629, 4     ; 2 uses
  %i.aen = icmp eq i64 %index.next1632, %n.vec1627
  br i1 %i.aen, label %middle.block1633, label %vector.body1628, !llvm.loop !647

middle.block1633:                                 ; preds = %vector.body1628
  %cmp.n1634 = icmp eq i64 %i.aeg, %n.vec1627
  br i1 %cmp.n1634, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i428.preheader1956

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i428.preheader1956: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i428.preheader, %middle.block1633
  %.017.us.i429.ph = phi i64 [ %.sroa.0778.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i428.preheader ], [ %i.aeh, %middle.block1633 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i428

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i428: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i428.preheader1956, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i428
  %.017.us.i429 = phi i64 [ %i.aer, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i428 ], [ %.017.us.i429.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i428.preheader1956 ] ; 2 uses
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %.017.us.i429 ; 2 uses
  %i.aep = load i64, ptr %i.aeo, align 8, !tbaa !14
  %i.aeq = add i64 %i.aep, 5
  store i64 %i.aeq, ptr %i.aeo, align 8, !tbaa !14
  %i.aer = add nuw i64 %.017.us.i429, 1           ; 2 uses
  %exitcond43.not.i430 = icmp eq i64 %i.aer, %.sroa.2779.0.copyload
  br i1 %exitcond43.not.i430, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i428, !llvm.loop !648

.lr.ph.split.i399:                                ; preds = %.lr.ph.i394
  br i1 %.not.i.i395, label %.lr.ph.split.split.us.i413, label %.lr.ph.split.split.i400

.lr.ph.split.split.us.i413:                       ; preds = %.lr.ph.split.i399
  br i1 %i.adp, label %.lr.ph.split.split.us.split.us.i419, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i414

.lr.ph.split.split.us.split.us.i419:              ; preds = %.lr.ph.split.split.us.i413
  %i.aes = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %.sroa.3780.0.copyload ; 3 uses
  %.promoted26.i420 = load i64, ptr %i.aes, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i421

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i421: ; preds = %bb.av, %.lr.ph.split.split.us.split.us.i419
  %i.aet = phi i64 [ %.promoted26.i420, %.lr.ph.split.split.us.split.us.i419 ], [ %i.afc, %bb.av ] ; 2 uses
  %.017.us18.us.i422 = phi i64 [ %.sroa.0778.0.copyload, %.lr.ph.split.split.us.split.us.i419 ], [ %i.afd, %bb.av ] ; 3 uses
  %i.aeu = add i64 %i.aet, 1                      ; 2 uses
  store i64 %i.aeu, ptr %i.aes, align 8, !tbaa !14
  %i.aev = lshr i64 %.017.us18.us.i422, 6
  %i.aew = and i64 %.017.us18.us.i422, 63
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %i.adt, i64 %i.aev
  %i.aey = load i64, ptr %i.aex, align 8, !tbaa !14
  %i.aez = shl nuw i64 1, %i.aew
  %i.afa = and i64 %i.aey, %i.aez
  %.not.us.us.i423 = icmp eq i64 %i.afa, 0
  br i1 %.not.us.us.i423, label %bb.av, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i424

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i424: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i421
  %i.afb = add i64 %i.aet, 5                      ; 2 uses
  store i64 %i.afb, ptr %i.aes, align 8, !tbaa !14
  br label %bb.av

bb.av:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i424, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i421
  %i.afc = phi i64 [ %i.aeu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i421 ], [ %i.afb, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i424 ]
  %i.afd = add nuw i64 %.017.us18.us.i422, 1      ; 2 uses
  %exitcond42.not.i425 = icmp eq i64 %i.afd, %.sroa.2779.0.copyload
  br i1 %exitcond42.not.i425, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i421, !llvm.loop !649

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i414: ; preds = %.lr.ph.split.split.us.i413, %bb.aw
  %.017.us18.i415 = phi i64 [ %i.afo, %bb.aw ], [ %.sroa.0778.0.copyload, %.lr.ph.split.split.us.i413 ] ; 4 uses
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %.017.us18.i415 ; 3 uses
  %i.aff = load i64, ptr %i.afe, align 8, !tbaa !14 ; 2 uses
  %i.afg = add i64 %i.aff, 1
  store i64 %i.afg, ptr %i.afe, align 8, !tbaa !14
  %i.afh = lshr i64 %.017.us18.i415, 6
  %i.afi = and i64 %.017.us18.i415, 63
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %i.adt, i64 %i.afh
  %i.afk = load i64, ptr %i.afj, align 8, !tbaa !14
  %i.afl = shl nuw i64 1, %i.afi
  %i.afm = and i64 %i.afk, %i.afl
  %.not.us.i416 = icmp eq i64 %i.afm, 0
  br i1 %.not.us.i416, label %bb.aw, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i417

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i417: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i414
  %i.afn = add i64 %i.aff, 5
  store i64 %i.afn, ptr %i.afe, align 8, !tbaa !14
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i417, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i414
  %i.afo = add nuw i64 %.017.us18.i415, 1         ; 2 uses
  %exitcond41.not.i418 = icmp eq i64 %i.afo, %.sroa.2779.0.copyload
  br i1 %exitcond41.not.i418, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i414, !llvm.loop !649

.lr.ph.split.split.i400:                          ; preds = %.lr.ph.split.i399
  br i1 %i.adp, label %.lr.ph.split.split.split.us.i406, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i401

.lr.ph.split.split.split.us.i406:                 ; preds = %.lr.ph.split.split.i400
  %i.afp = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %.sroa.3780.0.copyload ; 3 uses
  %.promoted.i407 = load i64, ptr %i.afp, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i408

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i408: ; preds = %bb.ax, %.lr.ph.split.split.split.us.i406
  %i.afq = phi i64 [ %.promoted.i407, %.lr.ph.split.split.split.us.i406 ], [ %i.agc, %bb.ax ] ; 2 uses
  %.017.us22.i409 = phi i64 [ %.sroa.0778.0.copyload, %.lr.ph.split.split.split.us.i406 ], [ %i.agd, %bb.ax ] ; 2 uses
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %.017.us22.i409
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !3
  %i.aft = zext i32 %i.afs to i64                 ; 2 uses
  %i.afu = add i64 %i.afq, 1                      ; 2 uses
  store i64 %i.afu, ptr %i.afp, align 8, !tbaa !14
  %i.afv = lshr i64 %i.aft, 6
  %i.afw = and i64 %i.aft, 63
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %i.adt, i64 %i.afv
  %i.afy = load i64, ptr %i.afx, align 8, !tbaa !14
  %i.afz = shl nuw i64 1, %i.afw
  %i.aga = and i64 %i.afz, %i.afy
  %.not.us24.i410 = icmp eq i64 %i.aga, 0
  br i1 %.not.us24.i410, label %bb.ax, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i411

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i411: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i408
  %i.agb = add i64 %i.afq, 5                      ; 2 uses
  store i64 %i.agb, ptr %i.afp, align 8, !tbaa !14
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i411, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i408
  %i.agc = phi i64 [ %i.afu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i408 ], [ %i.agb, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i411 ]
  %i.agd = add nuw i64 %.017.us22.i409, 1         ; 2 uses
  %exitcond40.not.i412 = icmp eq i64 %i.agd, %.sroa.2779.0.copyload
  br i1 %exitcond40.not.i412, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i408, !llvm.loop !649

._crit_edge.sink.split.i431:                      ; preds = %.lr.ph.split.us.split.i427, %.lr.ph.split.us.split.us.i434
  %i.age = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %.sroa.3780.0.copyload ; 2 uses
  %.promoted30.i432 = load i64, ptr %i.age, align 8, !tbaa !14
  %reass.add909 = sub i64 %.sroa.2779.0.copyload, %.sroa.0778.0.copyload
  %reass.mul910 = mul i64 %reass.add909, 5
  %i.agf = add i64 %.promoted30.i432, %reass.mul910
  store i64 %i.agf, ptr %i.age, align 8, !tbaa !14
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i401: ; preds = %.lr.ph.split.split.i400, %bb.ay
  %.017.i402 = phi i64 [ %i.agt, %bb.ay ], [ %.sroa.0778.0.copyload, %.lr.ph.split.split.i400 ] ; 3 uses
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %.017.i402
  %i.agh = load i32, ptr %i.agg, align 4, !tbaa !3
  %i.agi = zext i32 %i.agh to i64                 ; 2 uses
  %i.agj = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %.017.i402 ; 3 uses
  %i.agk = load i64, ptr %i.agj, align 8, !tbaa !14 ; 2 uses
  %i.agl = add i64 %i.agk, 1
  store i64 %i.agl, ptr %i.agj, align 8, !tbaa !14
  %i.agm = lshr i64 %i.agi, 6
  %i.agn = and i64 %i.agi, 63
  %i.ago = getelementptr inbounds nuw [8 x i8], ptr %i.adt, i64 %i.agm
  %i.agp = load i64, ptr %i.ago, align 8, !tbaa !14
  %i.agq = shl nuw i64 1, %i.agn
  %i.agr = and i64 %i.agp, %i.agq
  %.not.i403 = icmp eq i64 %i.agr, 0
  br i1 %.not.i403, label %bb.ay, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i404

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i404: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i401
  %i.ags = add i64 %i.agk, 5
  store i64 %i.ags, ptr %i.agj, align 8, !tbaa !14
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i404, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i401
  %i.agt = add nuw i64 %.017.i402, 1              ; 2 uses
  %exitcond.not.i405 = icmp eq i64 %i.agt, %.sroa.2779.0.copyload
  br i1 %exitcond.not.i405, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i401, !llvm.loop !649

bb.az:                                            ; preds = %bb.a
  %.sroa.0788.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 14 uses
  %.sroa.2789.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2789.0.copyload = load i64, ptr %.sroa.2789.0..sroa_idx, align 8, !tbaa !14 ; 10 uses
  %.sroa.3790.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3790.0.copyload = load i64, ptr %.sroa.3790.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %.sroa.4791.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4791.0.copyload = load i8, ptr %.sroa.4791.0..sroa_idx, align 8, !tbaa !189
  %i.agu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.agu)
  %i.agv = icmp ult i64 %.sroa.0788.0.copyload, %.sroa.2789.0.copyload
  br i1 %i.agv, label %.lr.ph.i438, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

.lr.ph.i438:                                      ; preds = %bb.az
  %i.agw = load ptr, ptr %i.agu, align 8, !tbaa !157
  %i.agx = load ptr, ptr %i.agw, align 8, !tbaa !158 ; 3 uses
  %.not.i.i439 = icmp eq ptr %i.agx, null         ; 2 uses
  %i.agy = trunc nuw i8 %.sroa.4791.0.copyload to i1 ; 4 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !39 ; 9 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !159 ; 5 uses
  %.not.i15.i442 = icmp eq ptr %i.ahc, null
  br i1 %.not.i15.i442, label %.lr.ph.split.us.i470, label %.lr.ph.split.i443

.lr.ph.split.us.i470:                             ; preds = %.lr.ph.i438
  br i1 %.not.i.i439, label %.lr.ph.split.us.split.us.i478, label %.lr.ph.split.us.split.i471

.lr.ph.split.us.split.us.i478:                    ; preds = %.lr.ph.split.us.i470
  br i1 %i.agy, label %._crit_edge.sink.split.i475, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i479.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i479.preheader: ; preds = %.lr.ph.split.us.split.us.i478
  %i.ahd = sub i64 %.sroa.2789.0.copyload, %.sroa.0788.0.copyload ; 3 uses
  %min.iters.check1611 = icmp ult i64 %i.ahd, 4
  br i1 %min.iters.check1611, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i479.preheader1962, label %vector.ph1612

vector.ph1612:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i479.preheader
  %n.vec1614 = and i64 %i.ahd, -4                 ; 3 uses
  %i.ahe = add i64 %.sroa.0788.0.copyload, %n.vec1614
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr %i.aha, i64 %.sroa.0788.0.copyload
  br label %vector.body1615

vector.body1615:                                  ; preds = %vector.body1615, %vector.ph1612
  %index1616 = phi i64 [ 0, %vector.ph1612 ], [ %index.next1619, %vector.body1615 ] ; 2 uses
  %i.ahg = getelementptr inbounds nuw [8 x i8], ptr %i.ahf, i64 %index1616 ; 3 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 16 ; 2 uses
  %wide.load1617 = load <2 x i64>, ptr %i.ahg, align 8, !tbaa !14
  %wide.load1618 = load <2 x i64>, ptr %i.ahh, align 8, !tbaa !14
  %i.ahi = add <2 x i64> %wide.load1617, splat (i64 9)
  %i.ahj = add <2 x i64> %wide.load1618, splat (i64 9)
  store <2 x i64> %i.ahi, ptr %i.ahg, align 8, !tbaa !14
  store <2 x i64> %i.ahj, ptr %i.ahh, align 8, !tbaa !14
  %index.next1619 = add nuw i64 %index1616, 4     ; 2 uses
  %i.ahk = icmp eq i64 %index.next1619, %n.vec1614
  br i1 %i.ahk, label %middle.block1620, label %vector.body1615, !llvm.loop !650

middle.block1620:                                 ; preds = %vector.body1615
  %cmp.n1621 = icmp eq i64 %i.ahd, %n.vec1614
  br i1 %cmp.n1621, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i479.preheader1962

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i479.preheader1962: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i479.preheader, %middle.block1620
  %.017.us.us.i480.ph = phi i64 [ %.sroa.0788.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i479.preheader ], [ %i.ahe, %middle.block1620 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i479

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i479: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i479.preheader1962, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i479
  %.017.us.us.i480 = phi i64 [ %i.aho, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i479 ], [ %.017.us.us.i480.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i479.preheader1962 ] ; 2 uses
  %i.ahl = getelementptr inbounds nuw [8 x i8], ptr %i.aha, i64 %.017.us.us.i480 ; 2 uses
  %i.ahm = load i64, ptr %i.ahl, align 8, !tbaa !14
  %i.ahn = add i64 %i.ahm, 9
  store i64 %i.ahn, ptr %i.ahl, align 8, !tbaa !14
  %i.aho = add nuw i64 %.017.us.us.i480, 1        ; 2 uses
  %exitcond44.not.i481 = icmp eq i64 %i.aho, %.sroa.2789.0.copyload
  br i1 %exitcond44.not.i481, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i479, !llvm.loop !651

.lr.ph.split.us.split.i471:                       ; preds = %.lr.ph.split.us.i470
  br i1 %i.agy, label %._crit_edge.sink.split.i475, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i472.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i472.preheader: ; preds = %.lr.ph.split.us.split.i471
  %i.ahp = sub i64 %.sroa.2789.0.copyload, %.sroa.0788.0.copyload ; 3 uses
  %min.iters.check1598 = icmp ult i64 %i.ahp, 4
  br i1 %min.iters.check1598, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i472.preheader1964, label %vector.ph1599

vector.ph1599:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i472.preheader
  %n.vec1601 = and i64 %i.ahp, -4                 ; 3 uses
  %i.ahq = add i64 %.sroa.0788.0.copyload, %n.vec1601
  %i.ahr = getelementptr inbounds nuw [8 x i8], ptr %i.aha, i64 %.sroa.0788.0.copyload
  br label %vector.body1602

vector.body1602:                                  ; preds = %vector.body1602, %vector.ph1599
  %index1603 = phi i64 [ 0, %vector.ph1599 ], [ %index.next1606, %vector.body1602 ] ; 2 uses
  %i.ahs = getelementptr inbounds nuw [8 x i8], ptr %i.ahr, i64 %index1603 ; 3 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 16 ; 2 uses
  %wide.load1604 = load <2 x i64>, ptr %i.ahs, align 8, !tbaa !14
  %wide.load1605 = load <2 x i64>, ptr %i.aht, align 8, !tbaa !14
  %i.ahu = add <2 x i64> %wide.load1604, splat (i64 9)
  %i.ahv = add <2 x i64> %wide.load1605, splat (i64 9)
  store <2 x i64> %i.ahu, ptr %i.ahs, align 8, !tbaa !14
  store <2 x i64> %i.ahv, ptr %i.aht, align 8, !tbaa !14
  %index.next1606 = add nuw i64 %index1603, 4     ; 2 uses
  %i.ahw = icmp eq i64 %index.next1606, %n.vec1601
  br i1 %i.ahw, label %middle.block1607, label %vector.body1602, !llvm.loop !652

middle.block1607:                                 ; preds = %vector.body1602
  %cmp.n1608 = icmp eq i64 %i.ahp, %n.vec1601
  br i1 %cmp.n1608, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i472.preheader1964

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i472.preheader1964: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i472.preheader, %middle.block1607
  %.017.us.i473.ph = phi i64 [ %.sroa.0788.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i472.preheader ], [ %i.ahq, %middle.block1607 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i472

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i472: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i472.preheader1964, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i472
  %.017.us.i473 = phi i64 [ %i.aia, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i472 ], [ %.017.us.i473.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i472.preheader1964 ] ; 2 uses
  %i.ahx = getelementptr inbounds nuw [8 x i8], ptr %i.aha, i64 %.017.us.i473 ; 2 uses
  %i.ahy = load i64, ptr %i.ahx, align 8, !tbaa !14
  %i.ahz = add i64 %i.ahy, 9
  store i64 %i.ahz, ptr %i.ahx, align 8, !tbaa !14
  %i.aia = add nuw i64 %.017.us.i473, 1           ; 2 uses
  %exitcond43.not.i474 = icmp eq i64 %i.aia, %.sroa.2789.0.copyload
  br i1 %exitcond43.not.i474, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i472, !llvm.loop !653

.lr.ph.split.i443:                                ; preds = %.lr.ph.i438
  br i1 %.not.i.i439, label %.lr.ph.split.split.us.i457, label %.lr.ph.split.split.i444

.lr.ph.split.split.us.i457:                       ; preds = %.lr.ph.split.i443
  br i1 %i.agy, label %.lr.ph.split.split.us.split.us.i463, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i458

.lr.ph.split.split.us.split.us.i463:              ; preds = %.lr.ph.split.split.us.i457
  %i.aib = getelementptr inbounds nuw [8 x i8], ptr %i.aha, i64 %.sroa.3790.0.copyload ; 3 uses
  %.promoted26.i464 = load i64, ptr %i.aib, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i465

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i465: ; preds = %bb.ba, %.lr.ph.split.split.us.split.us.i463
  %i.aic = phi i64 [ %.promoted26.i464, %.lr.ph.split.split.us.split.us.i463 ], [ %i.ail, %bb.ba ] ; 2 uses
  %.017.us18.us.i466 = phi i64 [ %.sroa.0788.0.copyload, %.lr.ph.split.split.us.split.us.i463 ], [ %i.aim, %bb.ba ] ; 3 uses
  %i.aid = add i64 %i.aic, 1                      ; 2 uses
  store i64 %i.aid, ptr %i.aib, align 8, !tbaa !14
  %i.aie = lshr i64 %.017.us18.us.i466, 6
  %i.aif = and i64 %.017.us18.us.i466, 63
  %i.aig = getelementptr inbounds nuw [8 x i8], ptr %i.ahc, i64 %i.aie
  %i.aih = load i64, ptr %i.aig, align 8, !tbaa !14
  %i.aii = shl nuw i64 1, %i.aif
  %i.aij = and i64 %i.aih, %i.aii
  %.not.us.us.i467 = icmp eq i64 %i.aij, 0
  br i1 %.not.us.us.i467, label %bb.ba, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i468

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i468: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i465
  %i.aik = add i64 %i.aic, 9                      ; 2 uses
  store i64 %i.aik, ptr %i.aib, align 8, !tbaa !14
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i468, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i465
  %i.ail = phi i64 [ %i.aid, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i465 ], [ %i.aik, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i468 ]
  %i.aim = add nuw i64 %.017.us18.us.i466, 1      ; 2 uses
  %exitcond42.not.i469 = icmp eq i64 %i.aim, %.sroa.2789.0.copyload
  br i1 %exitcond42.not.i469, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i465, !llvm.loop !654

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i458: ; preds = %.lr.ph.split.split.us.i457, %bb.bb
  %.017.us18.i459 = phi i64 [ %i.aix, %bb.bb ], [ %.sroa.0788.0.copyload, %.lr.ph.split.split.us.i457 ] ; 4 uses
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %i.aha, i64 %.017.us18.i459 ; 3 uses
  %i.aio = load i64, ptr %i.ain, align 8, !tbaa !14 ; 2 uses
  %i.aip = add i64 %i.aio, 1
  store i64 %i.aip, ptr %i.ain, align 8, !tbaa !14
  %i.aiq = lshr i64 %.017.us18.i459, 6
  %i.air = and i64 %.017.us18.i459, 63
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %i.ahc, i64 %i.aiq
  %i.ait = load i64, ptr %i.ais, align 8, !tbaa !14
  %i.aiu = shl nuw i64 1, %i.air
  %i.aiv = and i64 %i.ait, %i.aiu
  %.not.us.i460 = icmp eq i64 %i.aiv, 0
  br i1 %.not.us.i460, label %bb.bb, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i461

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i461: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i458
  %i.aiw = add i64 %i.aio, 9
  store i64 %i.aiw, ptr %i.ain, align 8, !tbaa !14
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i461, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i458
  %i.aix = add nuw i64 %.017.us18.i459, 1         ; 2 uses
  %exitcond41.not.i462 = icmp eq i64 %i.aix, %.sroa.2789.0.copyload
  br i1 %exitcond41.not.i462, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i458, !llvm.loop !654

.lr.ph.split.split.i444:                          ; preds = %.lr.ph.split.i443
  br i1 %i.agy, label %.lr.ph.split.split.split.us.i450, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i445

.lr.ph.split.split.split.us.i450:                 ; preds = %.lr.ph.split.split.i444
  %i.aiy = getelementptr inbounds nuw [8 x i8], ptr %i.aha, i64 %.sroa.3790.0.copyload ; 3 uses
  %.promoted.i451 = load i64, ptr %i.aiy, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i452

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i452: ; preds = %bb.bc, %.lr.ph.split.split.split.us.i450
  %i.aiz = phi i64 [ %.promoted.i451, %.lr.ph.split.split.split.us.i450 ], [ %i.ajl, %bb.bc ] ; 2 uses
  %.017.us22.i453 = phi i64 [ %.sroa.0788.0.copyload, %.lr.ph.split.split.split.us.i450 ], [ %i.ajm, %bb.bc ] ; 2 uses
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %.017.us22.i453
  %i.ajb = load i32, ptr %i.aja, align 4, !tbaa !3
  %i.ajc = zext i32 %i.ajb to i64                 ; 2 uses
  %i.ajd = add i64 %i.aiz, 1                      ; 2 uses
  store i64 %i.ajd, ptr %i.aiy, align 8, !tbaa !14
  %i.aje = lshr i64 %i.ajc, 6
  %i.ajf = and i64 %i.ajc, 63
  %i.ajg = getelementptr inbounds nuw [8 x i8], ptr %i.ahc, i64 %i.aje
  %i.ajh = load i64, ptr %i.ajg, align 8, !tbaa !14
  %i.aji = shl nuw i64 1, %i.ajf
  %i.ajj = and i64 %i.aji, %i.ajh
  %.not.us24.i454 = icmp eq i64 %i.ajj, 0
  br i1 %.not.us24.i454, label %bb.bc, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i455

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i455: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i452
  %i.ajk = add i64 %i.aiz, 9                      ; 2 uses
  store i64 %i.ajk, ptr %i.aiy, align 8, !tbaa !14
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i455, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i452
  %i.ajl = phi i64 [ %i.ajd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i452 ], [ %i.ajk, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i455 ]
  %i.ajm = add nuw i64 %.017.us22.i453, 1         ; 2 uses
  %exitcond40.not.i456 = icmp eq i64 %i.ajm, %.sroa.2789.0.copyload
  br i1 %exitcond40.not.i456, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i452, !llvm.loop !654

._crit_edge.sink.split.i475:                      ; preds = %.lr.ph.split.us.split.i471, %.lr.ph.split.us.split.us.i478
  %i.ajn = getelementptr inbounds nuw [8 x i8], ptr %i.aha, i64 %.sroa.3790.0.copyload ; 2 uses
  %.promoted30.i476 = load i64, ptr %i.ajn, align 8, !tbaa !14
  %reass.add906 = sub i64 %.sroa.2789.0.copyload, %.sroa.0788.0.copyload
  %reass.mul907 = mul i64 %reass.add906, 9
  %i.ajo = add i64 %.promoted30.i476, %reass.mul907
  store i64 %i.ajo, ptr %i.ajn, align 8, !tbaa !14
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i445: ; preds = %.lr.ph.split.split.i444, %bb.bd
  %.017.i446 = phi i64 [ %i.akc, %bb.bd ], [ %.sroa.0788.0.copyload, %.lr.ph.split.split.i444 ] ; 3 uses
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %.017.i446
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !3
  %i.ajr = zext i32 %i.ajq to i64                 ; 2 uses
  %i.ajs = getelementptr inbounds nuw [8 x i8], ptr %i.aha, i64 %.017.i446 ; 3 uses
  %i.ajt = load i64, ptr %i.ajs, align 8, !tbaa !14 ; 2 uses
  %i.aju = add i64 %i.ajt, 1
  store i64 %i.aju, ptr %i.ajs, align 8, !tbaa !14
  %i.ajv = lshr i64 %i.ajr, 6
  %i.ajw = and i64 %i.ajr, 63
  %i.ajx = getelementptr inbounds nuw [8 x i8], ptr %i.ahc, i64 %i.ajv
  %i.ajy = load i64, ptr %i.ajx, align 8, !tbaa !14
  %i.ajz = shl nuw i64 1, %i.ajw
  %i.aka = and i64 %i.ajy, %i.ajz
  %.not.i447 = icmp eq i64 %i.aka, 0
  br i1 %.not.i447, label %bb.bd, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i448

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i448: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i445
  %i.akb = add i64 %i.ajt, 9
  store i64 %i.akb, ptr %i.ajs, align 8, !tbaa !14
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i448, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i445
  %i.akc = add nuw i64 %.017.i446, 1              ; 2 uses
  %exitcond.not.i449 = icmp eq i64 %i.akc, %.sroa.2789.0.copyload
  br i1 %exitcond.not.i449, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i445, !llvm.loop !654

bb.be:                                            ; preds = %bb.a
  %.sroa.0798.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 14 uses
  %.sroa.2799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2799.0.copyload = load i64, ptr %.sroa.2799.0..sroa_idx, align 8, !tbaa !14 ; 10 uses
  %.sroa.3800.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3800.0.copyload = load i64, ptr %.sroa.3800.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %.sroa.4801.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4801.0.copyload = load i8, ptr %.sroa.4801.0..sroa_idx, align 8, !tbaa !189
  %i.akd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10interval_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.akd)
  %i.ake = icmp ult i64 %.sroa.0798.0.copyload, %.sroa.2799.0.copyload
  br i1 %i.ake, label %.lr.ph.i482, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

.lr.ph.i482:                                      ; preds = %bb.be
  %i.akf = load ptr, ptr %i.akd, align 8, !tbaa !157
  %i.akg = load ptr, ptr %i.akf, align 8, !tbaa !158 ; 3 uses
  %.not.i.i483 = icmp eq ptr %i.akg, null         ; 2 uses
  %i.akh = trunc nuw i8 %.sroa.4801.0.copyload to i1 ; 4 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !39 ; 9 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !159 ; 5 uses
  %.not.i15.i486 = icmp eq ptr %i.akl, null
  br i1 %.not.i15.i486, label %.lr.ph.split.us.i514, label %.lr.ph.split.i487

.lr.ph.split.us.i514:                             ; preds = %.lr.ph.i482
  br i1 %.not.i.i483, label %.lr.ph.split.us.split.us.i522, label %.lr.ph.split.us.split.i515

.lr.ph.split.us.split.us.i522:                    ; preds = %.lr.ph.split.us.i514
  br i1 %i.akh, label %._crit_edge.sink.split.i519, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i523.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i523.preheader: ; preds = %.lr.ph.split.us.split.us.i522
  %i.akm = sub i64 %.sroa.2799.0.copyload, %.sroa.0798.0.copyload ; 3 uses
  %min.iters.check1585 = icmp ult i64 %i.akm, 4
  br i1 %min.iters.check1585, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i523.preheader1970, label %vector.ph1586

vector.ph1586:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i523.preheader
  %n.vec1588 = and i64 %i.akm, -4                 ; 3 uses
  %i.akn = add i64 %.sroa.0798.0.copyload, %n.vec1588
  %i.ako = getelementptr inbounds nuw [8 x i8], ptr %i.akj, i64 %.sroa.0798.0.copyload
  br label %vector.body1589

vector.body1589:                                  ; preds = %vector.body1589, %vector.ph1586
  %index1590 = phi i64 [ 0, %vector.ph1586 ], [ %index.next1593, %vector.body1589 ] ; 2 uses
  %i.akp = getelementptr inbounds nuw [8 x i8], ptr %i.ako, i64 %index1590 ; 3 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 16 ; 2 uses
  %wide.load1591 = load <2 x i64>, ptr %i.akp, align 8, !tbaa !14
  %wide.load1592 = load <2 x i64>, ptr %i.akq, align 8, !tbaa !14
  %i.akr = add <2 x i64> %wide.load1591, splat (i64 17)
  %i.aks = add <2 x i64> %wide.load1592, splat (i64 17)
  store <2 x i64> %i.akr, ptr %i.akp, align 8, !tbaa !14
  store <2 x i64> %i.aks, ptr %i.akq, align 8, !tbaa !14
  %index.next1593 = add nuw i64 %index1590, 4     ; 2 uses
  %i.akt = icmp eq i64 %index.next1593, %n.vec1588
  br i1 %i.akt, label %middle.block1594, label %vector.body1589, !llvm.loop !655

middle.block1594:                                 ; preds = %vector.body1589
  %cmp.n1595 = icmp eq i64 %i.akm, %n.vec1588
  br i1 %cmp.n1595, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i523.preheader1970

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i523.preheader1970: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i523.preheader, %middle.block1594
  %.017.us.us.i524.ph = phi i64 [ %.sroa.0798.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i523.preheader ], [ %i.akn, %middle.block1594 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i523

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i523: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i523.preheader1970, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i523
  %.017.us.us.i524 = phi i64 [ %i.akx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i523 ], [ %.017.us.us.i524.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i523.preheader1970 ] ; 2 uses
  %i.aku = getelementptr inbounds nuw [8 x i8], ptr %i.akj, i64 %.017.us.us.i524 ; 2 uses
  %i.akv = load i64, ptr %i.aku, align 8, !tbaa !14
  %i.akw = add i64 %i.akv, 17
  store i64 %i.akw, ptr %i.aku, align 8, !tbaa !14
  %i.akx = add nuw i64 %.017.us.us.i524, 1        ; 2 uses
  %exitcond44.not.i525 = icmp eq i64 %i.akx, %.sroa.2799.0.copyload
  br i1 %exitcond44.not.i525, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i523, !llvm.loop !656

.lr.ph.split.us.split.i515:                       ; preds = %.lr.ph.split.us.i514
  br i1 %i.akh, label %._crit_edge.sink.split.i519, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i516.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i516.preheader: ; preds = %.lr.ph.split.us.split.i515
  %i.aky = sub i64 %.sroa.2799.0.copyload, %.sroa.0798.0.copyload ; 3 uses
  %min.iters.check1572 = icmp ult i64 %i.aky, 4
  br i1 %min.iters.check1572, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i516.preheader1972, label %vector.ph1573

vector.ph1573:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i516.preheader
  %n.vec1575 = and i64 %i.aky, -4                 ; 3 uses
  %i.akz = add i64 %.sroa.0798.0.copyload, %n.vec1575
  %i.ala = getelementptr inbounds nuw [8 x i8], ptr %i.akj, i64 %.sroa.0798.0.copyload
  br label %vector.body1576

vector.body1576:                                  ; preds = %vector.body1576, %vector.ph1573
  %index1577 = phi i64 [ 0, %vector.ph1573 ], [ %index.next1580, %vector.body1576 ] ; 2 uses
  %i.alb = getelementptr inbounds nuw [8 x i8], ptr %i.ala, i64 %index1577 ; 3 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 16 ; 2 uses
  %wide.load1578 = load <2 x i64>, ptr %i.alb, align 8, !tbaa !14
  %wide.load1579 = load <2 x i64>, ptr %i.alc, align 8, !tbaa !14
  %i.ald = add <2 x i64> %wide.load1578, splat (i64 17)
  %i.ale = add <2 x i64> %wide.load1579, splat (i64 17)
  store <2 x i64> %i.ald, ptr %i.alb, align 8, !tbaa !14
  store <2 x i64> %i.ale, ptr %i.alc, align 8, !tbaa !14
  %index.next1580 = add nuw i64 %index1577, 4     ; 2 uses
  %i.alf = icmp eq i64 %index.next1580, %n.vec1575
  br i1 %i.alf, label %middle.block1581, label %vector.body1576, !llvm.loop !657

middle.block1581:                                 ; preds = %vector.body1576
  %cmp.n1582 = icmp eq i64 %i.aky, %n.vec1575
  br i1 %cmp.n1582, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i516.preheader1972

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i516.preheader1972: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i516.preheader, %middle.block1581
  %.017.us.i517.ph = phi i64 [ %.sroa.0798.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i516.preheader ], [ %i.akz, %middle.block1581 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i516

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i516: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i516.preheader1972, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i516
  %.017.us.i517 = phi i64 [ %i.alj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i516 ], [ %.017.us.i517.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i516.preheader1972 ] ; 2 uses
  %i.alg = getelementptr inbounds nuw [8 x i8], ptr %i.akj, i64 %.017.us.i517 ; 2 uses
  %i.alh = load i64, ptr %i.alg, align 8, !tbaa !14
  %i.ali = add i64 %i.alh, 17
  store i64 %i.ali, ptr %i.alg, align 8, !tbaa !14
  %i.alj = add nuw i64 %.017.us.i517, 1           ; 2 uses
  %exitcond43.not.i518 = icmp eq i64 %i.alj, %.sroa.2799.0.copyload
  br i1 %exitcond43.not.i518, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i516, !llvm.loop !658

.lr.ph.split.i487:                                ; preds = %.lr.ph.i482
  br i1 %.not.i.i483, label %.lr.ph.split.split.us.i501, label %.lr.ph.split.split.i488

.lr.ph.split.split.us.i501:                       ; preds = %.lr.ph.split.i487
  br i1 %i.akh, label %.lr.ph.split.split.us.split.us.i507, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i502

.lr.ph.split.split.us.split.us.i507:              ; preds = %.lr.ph.split.split.us.i501
  %i.alk = getelementptr inbounds nuw [8 x i8], ptr %i.akj, i64 %.sroa.3800.0.copyload ; 3 uses
  %.promoted26.i508 = load i64, ptr %i.alk, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i509

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i509: ; preds = %bb.bf, %.lr.ph.split.split.us.split.us.i507
  %i.all = phi i64 [ %.promoted26.i508, %.lr.ph.split.split.us.split.us.i507 ], [ %i.alu, %bb.bf ] ; 2 uses
  %.017.us18.us.i510 = phi i64 [ %.sroa.0798.0.copyload, %.lr.ph.split.split.us.split.us.i507 ], [ %i.alv, %bb.bf ] ; 3 uses
  %i.alm = add i64 %i.all, 1                      ; 2 uses
  store i64 %i.alm, ptr %i.alk, align 8, !tbaa !14
  %i.aln = lshr i64 %.017.us18.us.i510, 6
  %i.alo = and i64 %.017.us18.us.i510, 63
  %i.alp = getelementptr inbounds nuw [8 x i8], ptr %i.akl, i64 %i.aln
  %i.alq = load i64, ptr %i.alp, align 8, !tbaa !14
  %i.alr = shl nuw i64 1, %i.alo
  %i.als = and i64 %i.alq, %i.alr
  %.not.us.us.i511 = icmp eq i64 %i.als, 0
  br i1 %.not.us.us.i511, label %bb.bf, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i512

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i512: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i509
  %i.alt = add i64 %i.all, 17                     ; 2 uses
  store i64 %i.alt, ptr %i.alk, align 8, !tbaa !14
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i512, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i509
  %i.alu = phi i64 [ %i.alm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i509 ], [ %i.alt, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i512 ]
  %i.alv = add nuw i64 %.017.us18.us.i510, 1      ; 2 uses
  %exitcond42.not.i513 = icmp eq i64 %i.alv, %.sroa.2799.0.copyload
  br i1 %exitcond42.not.i513, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i509, !llvm.loop !659

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i502: ; preds = %.lr.ph.split.split.us.i501, %bb.bg
  %.017.us18.i503 = phi i64 [ %i.amg, %bb.bg ], [ %.sroa.0798.0.copyload, %.lr.ph.split.split.us.i501 ] ; 4 uses
  %i.alw = getelementptr inbounds nuw [8 x i8], ptr %i.akj, i64 %.017.us18.i503 ; 3 uses
  %i.alx = load i64, ptr %i.alw, align 8, !tbaa !14 ; 2 uses
  %i.aly = add i64 %i.alx, 1
  store i64 %i.aly, ptr %i.alw, align 8, !tbaa !14
  %i.alz = lshr i64 %.017.us18.i503, 6
  %i.ama = and i64 %.017.us18.i503, 63
  %i.amb = getelementptr inbounds nuw [8 x i8], ptr %i.akl, i64 %i.alz
  %i.amc = load i64, ptr %i.amb, align 8, !tbaa !14
  %i.amd = shl nuw i64 1, %i.ama
  %i.ame = and i64 %i.amc, %i.amd
  %.not.us.i504 = icmp eq i64 %i.ame, 0
  br i1 %.not.us.i504, label %bb.bg, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i505

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i505: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i502
  %i.amf = add i64 %i.alx, 17
  store i64 %i.amf, ptr %i.alw, align 8, !tbaa !14
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i505, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i502
  %i.amg = add nuw i64 %.017.us18.i503, 1         ; 2 uses
  %exitcond41.not.i506 = icmp eq i64 %i.amg, %.sroa.2799.0.copyload
  br i1 %exitcond41.not.i506, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i502, !llvm.loop !659

.lr.ph.split.split.i488:                          ; preds = %.lr.ph.split.i487
  br i1 %i.akh, label %.lr.ph.split.split.split.us.i494, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i489

.lr.ph.split.split.split.us.i494:                 ; preds = %.lr.ph.split.split.i488
  %i.amh = getelementptr inbounds nuw [8 x i8], ptr %i.akj, i64 %.sroa.3800.0.copyload ; 3 uses
  %.promoted.i495 = load i64, ptr %i.amh, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i496

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i496: ; preds = %bb.bh, %.lr.ph.split.split.split.us.i494
  %i.ami = phi i64 [ %.promoted.i495, %.lr.ph.split.split.split.us.i494 ], [ %i.amu, %bb.bh ] ; 2 uses
  %.017.us22.i497 = phi i64 [ %.sroa.0798.0.copyload, %.lr.ph.split.split.split.us.i494 ], [ %i.amv, %bb.bh ] ; 2 uses
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %i.akg, i64 %.017.us22.i497
  %i.amk = load i32, ptr %i.amj, align 4, !tbaa !3
  %i.aml = zext i32 %i.amk to i64                 ; 2 uses
  %i.amm = add i64 %i.ami, 1                      ; 2 uses
  store i64 %i.amm, ptr %i.amh, align 8, !tbaa !14
  %i.amn = lshr i64 %i.aml, 6
  %i.amo = and i64 %i.aml, 63
  %i.amp = getelementptr inbounds nuw [8 x i8], ptr %i.akl, i64 %i.amn
  %i.amq = load i64, ptr %i.amp, align 8, !tbaa !14
  %i.amr = shl nuw i64 1, %i.amo
  %i.ams = and i64 %i.amr, %i.amq
  %.not.us24.i498 = icmp eq i64 %i.ams, 0
  br i1 %.not.us24.i498, label %bb.bh, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i499

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i499: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i496
  %i.amt = add i64 %i.ami, 17                     ; 2 uses
  store i64 %i.amt, ptr %i.amh, align 8, !tbaa !14
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i499, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i496
  %i.amu = phi i64 [ %i.amm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i496 ], [ %i.amt, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i499 ]
  %i.amv = add nuw i64 %.017.us22.i497, 1         ; 2 uses
  %exitcond40.not.i500 = icmp eq i64 %i.amv, %.sroa.2799.0.copyload
  br i1 %exitcond40.not.i500, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i496, !llvm.loop !659

._crit_edge.sink.split.i519:                      ; preds = %.lr.ph.split.us.split.i515, %.lr.ph.split.us.split.us.i522
  %i.amw = getelementptr inbounds nuw [8 x i8], ptr %i.akj, i64 %.sroa.3800.0.copyload ; 2 uses
  %.promoted30.i520 = load i64, ptr %i.amw, align 8, !tbaa !14
  %reass.add903 = sub i64 %.sroa.2799.0.copyload, %.sroa.0798.0.copyload
  %reass.mul904 = mul i64 %reass.add903, 17
  %i.amx = add i64 %.promoted30.i520, %reass.mul904
  store i64 %i.amx, ptr %i.amw, align 8, !tbaa !14
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i489: ; preds = %.lr.ph.split.split.i488, %bb.bi
  %.017.i490 = phi i64 [ %i.anl, %bb.bi ], [ %.sroa.0798.0.copyload, %.lr.ph.split.split.i488 ] ; 3 uses
  %i.amy = getelementptr inbounds nuw [4 x i8], ptr %i.akg, i64 %.017.i490
  %i.amz = load i32, ptr %i.amy, align 4, !tbaa !3
  %i.ana = zext i32 %i.amz to i64                 ; 2 uses
  %i.anb = getelementptr inbounds nuw [8 x i8], ptr %i.akj, i64 %.017.i490 ; 3 uses
  %i.anc = load i64, ptr %i.anb, align 8, !tbaa !14 ; 2 uses
  %i.and = add i64 %i.anc, 1
  store i64 %i.and, ptr %i.anb, align 8, !tbaa !14
  %i.ane = lshr i64 %i.ana, 6
  %i.anf = and i64 %i.ana, 63
  %i.ang = getelementptr inbounds nuw [8 x i8], ptr %i.akl, i64 %i.ane
  %i.anh = load i64, ptr %i.ang, align 8, !tbaa !14
  %i.ani = shl nuw i64 1, %i.anf
  %i.anj = and i64 %i.anh, %i.ani
  %.not.i491 = icmp eq i64 %i.anj, 0
  br i1 %.not.i491, label %bb.bi, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i492

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i492: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i489
  %i.ank = add i64 %i.anc, 17
  store i64 %i.ank, ptr %i.anb, align 8, !tbaa !14
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i492, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i489
  %i.anl = add nuw i64 %.017.i490, 1              ; 2 uses
  %exitcond.not.i493 = icmp eq i64 %i.anl, %.sroa.2799.0.copyload
  br i1 %exitcond.not.i493, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i489, !llvm.loop !659

bb.bj:                                            ; preds = %bb.a
  %.sroa.0808.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 14 uses
  %.sroa.2809.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2809.0.copyload = load i64, ptr %.sroa.2809.0..sroa_idx, align 8, !tbaa !14 ; 10 uses
  %.sroa.3810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3810.0.copyload = load i64, ptr %.sroa.3810.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %.sroa.4811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4811.0.copyload = load i8, ptr %.sroa.4811.0..sroa_idx, align 8, !tbaa !189
  %i.anm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10uhugeint_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.anm)
  %i.ann = icmp ult i64 %.sroa.0808.0.copyload, %.sroa.2809.0.copyload
  br i1 %i.ann, label %.lr.ph.i526, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

.lr.ph.i526:                                      ; preds = %bb.bj
  %i.ano = load ptr, ptr %i.anm, align 8, !tbaa !157
  %i.anp = load ptr, ptr %i.ano, align 8, !tbaa !158 ; 3 uses
  %.not.i.i527 = icmp eq ptr %i.anp, null         ; 2 uses
  %i.anq = trunc nuw i8 %.sroa.4811.0.copyload to i1 ; 4 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ans = load ptr, ptr %i.anr, align 8, !tbaa !39 ; 9 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.anu = load ptr, ptr %i.ant, align 8, !tbaa !159 ; 5 uses
  %.not.i15.i530 = icmp eq ptr %i.anu, null
  br i1 %.not.i15.i530, label %.lr.ph.split.us.i558, label %.lr.ph.split.i531

.lr.ph.split.us.i558:                             ; preds = %.lr.ph.i526
  br i1 %.not.i.i527, label %.lr.ph.split.us.split.us.i566, label %.lr.ph.split.us.split.i559

.lr.ph.split.us.split.us.i566:                    ; preds = %.lr.ph.split.us.i558
  br i1 %i.anq, label %._crit_edge.sink.split.i563, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i567.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i567.preheader: ; preds = %.lr.ph.split.us.split.us.i566
  %i.anv = sub i64 %.sroa.2809.0.copyload, %.sroa.0808.0.copyload ; 3 uses
  %min.iters.check1559 = icmp ult i64 %i.anv, 4
  br i1 %min.iters.check1559, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i567.preheader1978, label %vector.ph1560

vector.ph1560:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i567.preheader
  %n.vec1562 = and i64 %i.anv, -4                 ; 3 uses
  %i.anw = add i64 %.sroa.0808.0.copyload, %n.vec1562
  %i.anx = getelementptr inbounds nuw [8 x i8], ptr %i.ans, i64 %.sroa.0808.0.copyload
  br label %vector.body1563

vector.body1563:                                  ; preds = %vector.body1563, %vector.ph1560
  %index1564 = phi i64 [ 0, %vector.ph1560 ], [ %index.next1567, %vector.body1563 ] ; 2 uses
  %i.any = getelementptr inbounds nuw [8 x i8], ptr %i.anx, i64 %index1564 ; 3 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 16 ; 2 uses
  %wide.load1565 = load <2 x i64>, ptr %i.any, align 8, !tbaa !14
  %wide.load1566 = load <2 x i64>, ptr %i.anz, align 8, !tbaa !14
  %i.aoa = add <2 x i64> %wide.load1565, splat (i64 17)
  %i.aob = add <2 x i64> %wide.load1566, splat (i64 17)
  store <2 x i64> %i.aoa, ptr %i.any, align 8, !tbaa !14
  store <2 x i64> %i.aob, ptr %i.anz, align 8, !tbaa !14
  %index.next1567 = add nuw i64 %index1564, 4     ; 2 uses
  %i.aoc = icmp eq i64 %index.next1567, %n.vec1562
  br i1 %i.aoc, label %middle.block1568, label %vector.body1563, !llvm.loop !660

middle.block1568:                                 ; preds = %vector.body1563
  %cmp.n1569 = icmp eq i64 %i.anv, %n.vec1562
  br i1 %cmp.n1569, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i567.preheader1978

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i567.preheader1978: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i567.preheader, %middle.block1568
  %.017.us.us.i568.ph = phi i64 [ %.sroa.0808.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i567.preheader ], [ %i.anw, %middle.block1568 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i567

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i567: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i567.preheader1978, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i567
  %.017.us.us.i568 = phi i64 [ %i.aog, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i567 ], [ %.017.us.us.i568.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i567.preheader1978 ] ; 2 uses
  %i.aod = getelementptr inbounds nuw [8 x i8], ptr %i.ans, i64 %.017.us.us.i568 ; 2 uses
  %i.aoe = load i64, ptr %i.aod, align 8, !tbaa !14
  %i.aof = add i64 %i.aoe, 17
  store i64 %i.aof, ptr %i.aod, align 8, !tbaa !14
  %i.aog = add nuw i64 %.017.us.us.i568, 1        ; 2 uses
  %exitcond44.not.i569 = icmp eq i64 %i.aog, %.sroa.2809.0.copyload
  br i1 %exitcond44.not.i569, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i567, !llvm.loop !661

.lr.ph.split.us.split.i559:                       ; preds = %.lr.ph.split.us.i558
  br i1 %i.anq, label %._crit_edge.sink.split.i563, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i560.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i560.preheader: ; preds = %.lr.ph.split.us.split.i559
  %i.aoh = sub i64 %.sroa.2809.0.copyload, %.sroa.0808.0.copyload ; 3 uses
  %min.iters.check1546 = icmp ult i64 %i.aoh, 4
  br i1 %min.iters.check1546, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i560.preheader1980, label %vector.ph1547

vector.ph1547:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i560.preheader
  %n.vec1549 = and i64 %i.aoh, -4                 ; 3 uses
  %i.aoi = add i64 %.sroa.0808.0.copyload, %n.vec1549
  %i.aoj = getelementptr inbounds nuw [8 x i8], ptr %i.ans, i64 %.sroa.0808.0.copyload
  br label %vector.body1550

vector.body1550:                                  ; preds = %vector.body1550, %vector.ph1547
  %index1551 = phi i64 [ 0, %vector.ph1547 ], [ %index.next1554, %vector.body1550 ] ; 2 uses
  %i.aok = getelementptr inbounds nuw [8 x i8], ptr %i.aoj, i64 %index1551 ; 3 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 16 ; 2 uses
  %wide.load1552 = load <2 x i64>, ptr %i.aok, align 8, !tbaa !14
  %wide.load1553 = load <2 x i64>, ptr %i.aol, align 8, !tbaa !14
  %i.aom = add <2 x i64> %wide.load1552, splat (i64 17)
  %i.aon = add <2 x i64> %wide.load1553, splat (i64 17)
  store <2 x i64> %i.aom, ptr %i.aok, align 8, !tbaa !14
  store <2 x i64> %i.aon, ptr %i.aol, align 8, !tbaa !14
  %index.next1554 = add nuw i64 %index1551, 4     ; 2 uses
  %i.aoo = icmp eq i64 %index.next1554, %n.vec1549
  br i1 %i.aoo, label %middle.block1555, label %vector.body1550, !llvm.loop !662

middle.block1555:                                 ; preds = %vector.body1550
  %cmp.n1556 = icmp eq i64 %i.aoh, %n.vec1549
  br i1 %cmp.n1556, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i560.preheader1980

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i560.preheader1980: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i560.preheader, %middle.block1555
  %.017.us.i561.ph = phi i64 [ %.sroa.0808.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i560.preheader ], [ %i.aoi, %middle.block1555 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i560

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i560: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i560.preheader1980, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i560
  %.017.us.i561 = phi i64 [ %i.aos, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i560 ], [ %.017.us.i561.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i560.preheader1980 ] ; 2 uses
  %i.aop = getelementptr inbounds nuw [8 x i8], ptr %i.ans, i64 %.017.us.i561 ; 2 uses
  %i.aoq = load i64, ptr %i.aop, align 8, !tbaa !14
  %i.aor = add i64 %i.aoq, 17
  store i64 %i.aor, ptr %i.aop, align 8, !tbaa !14
  %i.aos = add nuw i64 %.017.us.i561, 1           ; 2 uses
  %exitcond43.not.i562 = icmp eq i64 %i.aos, %.sroa.2809.0.copyload
  br i1 %exitcond43.not.i562, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i560, !llvm.loop !663

.lr.ph.split.i531:                                ; preds = %.lr.ph.i526
  br i1 %.not.i.i527, label %.lr.ph.split.split.us.i545, label %.lr.ph.split.split.i532

.lr.ph.split.split.us.i545:                       ; preds = %.lr.ph.split.i531
  br i1 %i.anq, label %.lr.ph.split.split.us.split.us.i551, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i546

.lr.ph.split.split.us.split.us.i551:              ; preds = %.lr.ph.split.split.us.i545
  %i.aot = getelementptr inbounds nuw [8 x i8], ptr %i.ans, i64 %.sroa.3810.0.copyload ; 3 uses
  %.promoted26.i552 = load i64, ptr %i.aot, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i553

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i553: ; preds = %bb.bk, %.lr.ph.split.split.us.split.us.i551
  %i.aou = phi i64 [ %.promoted26.i552, %.lr.ph.split.split.us.split.us.i551 ], [ %i.apd, %bb.bk ] ; 2 uses
  %.017.us18.us.i554 = phi i64 [ %.sroa.0808.0.copyload, %.lr.ph.split.split.us.split.us.i551 ], [ %i.ape, %bb.bk ] ; 3 uses
  %i.aov = add i64 %i.aou, 1                      ; 2 uses
  store i64 %i.aov, ptr %i.aot, align 8, !tbaa !14
  %i.aow = lshr i64 %.017.us18.us.i554, 6
  %i.aox = and i64 %.017.us18.us.i554, 63
  %i.aoy = getelementptr inbounds nuw [8 x i8], ptr %i.anu, i64 %i.aow
  %i.aoz = load i64, ptr %i.aoy, align 8, !tbaa !14
  %i.apa = shl nuw i64 1, %i.aox
  %i.apb = and i64 %i.aoz, %i.apa
  %.not.us.us.i555 = icmp eq i64 %i.apb, 0
  br i1 %.not.us.us.i555, label %bb.bk, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i556

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i556: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i553
  %i.apc = add i64 %i.aou, 17                     ; 2 uses
  store i64 %i.apc, ptr %i.aot, align 8, !tbaa !14
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i556, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i553
  %i.apd = phi i64 [ %i.aov, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i553 ], [ %i.apc, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i556 ]
  %i.ape = add nuw i64 %.017.us18.us.i554, 1      ; 2 uses
  %exitcond42.not.i557 = icmp eq i64 %i.ape, %.sroa.2809.0.copyload
  br i1 %exitcond42.not.i557, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i553, !llvm.loop !664

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i546: ; preds = %.lr.ph.split.split.us.i545, %bb.bl
  %.017.us18.i547 = phi i64 [ %i.app, %bb.bl ], [ %.sroa.0808.0.copyload, %.lr.ph.split.split.us.i545 ] ; 4 uses
  %i.apf = getelementptr inbounds nuw [8 x i8], ptr %i.ans, i64 %.017.us18.i547 ; 3 uses
  %i.apg = load i64, ptr %i.apf, align 8, !tbaa !14 ; 2 uses
  %i.aph = add i64 %i.apg, 1
  store i64 %i.aph, ptr %i.apf, align 8, !tbaa !14
  %i.api = lshr i64 %.017.us18.i547, 6
  %i.apj = and i64 %.017.us18.i547, 63
  %i.apk = getelementptr inbounds nuw [8 x i8], ptr %i.anu, i64 %i.api
  %i.apl = load i64, ptr %i.apk, align 8, !tbaa !14
  %i.apm = shl nuw i64 1, %i.apj
  %i.apn = and i64 %i.apl, %i.apm
  %.not.us.i548 = icmp eq i64 %i.apn, 0
  br i1 %.not.us.i548, label %bb.bl, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i549

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i549: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i546
  %i.apo = add i64 %i.apg, 17
  store i64 %i.apo, ptr %i.apf, align 8, !tbaa !14
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i549, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i546
  %i.app = add nuw i64 %.017.us18.i547, 1         ; 2 uses
  %exitcond41.not.i550 = icmp eq i64 %i.app, %.sroa.2809.0.copyload
  br i1 %exitcond41.not.i550, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i546, !llvm.loop !664

.lr.ph.split.split.i532:                          ; preds = %.lr.ph.split.i531
  br i1 %i.anq, label %.lr.ph.split.split.split.us.i538, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i533

.lr.ph.split.split.split.us.i538:                 ; preds = %.lr.ph.split.split.i532
  %i.apq = getelementptr inbounds nuw [8 x i8], ptr %i.ans, i64 %.sroa.3810.0.copyload ; 3 uses
  %.promoted.i539 = load i64, ptr %i.apq, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i540

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i540: ; preds = %bb.bm, %.lr.ph.split.split.split.us.i538
  %i.apr = phi i64 [ %.promoted.i539, %.lr.ph.split.split.split.us.i538 ], [ %i.aqd, %bb.bm ] ; 2 uses
  %.017.us22.i541 = phi i64 [ %.sroa.0808.0.copyload, %.lr.ph.split.split.split.us.i538 ], [ %i.aqe, %bb.bm ] ; 2 uses
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %i.anp, i64 %.017.us22.i541
  %i.apt = load i32, ptr %i.aps, align 4, !tbaa !3
  %i.apu = zext i32 %i.apt to i64                 ; 2 uses
  %i.apv = add i64 %i.apr, 1                      ; 2 uses
  store i64 %i.apv, ptr %i.apq, align 8, !tbaa !14
  %i.apw = lshr i64 %i.apu, 6
  %i.apx = and i64 %i.apu, 63
  %i.apy = getelementptr inbounds nuw [8 x i8], ptr %i.anu, i64 %i.apw
  %i.apz = load i64, ptr %i.apy, align 8, !tbaa !14
  %i.aqa = shl nuw i64 1, %i.apx
  %i.aqb = and i64 %i.aqa, %i.apz
  %.not.us24.i542 = icmp eq i64 %i.aqb, 0
  br i1 %.not.us24.i542, label %bb.bm, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i543

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i543: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i540
  %i.aqc = add i64 %i.apr, 17                     ; 2 uses
  store i64 %i.aqc, ptr %i.apq, align 8, !tbaa !14
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i543, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i540
  %i.aqd = phi i64 [ %i.apv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i540 ], [ %i.aqc, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i543 ]
  %i.aqe = add nuw i64 %.017.us22.i541, 1         ; 2 uses
  %exitcond40.not.i544 = icmp eq i64 %i.aqe, %.sroa.2809.0.copyload
  br i1 %exitcond40.not.i544, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i540, !llvm.loop !664

._crit_edge.sink.split.i563:                      ; preds = %.lr.ph.split.us.split.i559, %.lr.ph.split.us.split.us.i566
  %i.aqf = getelementptr inbounds nuw [8 x i8], ptr %i.ans, i64 %.sroa.3810.0.copyload ; 2 uses
  %.promoted30.i564 = load i64, ptr %i.aqf, align 8, !tbaa !14
  %reass.add900 = sub i64 %.sroa.2809.0.copyload, %.sroa.0808.0.copyload
  %reass.mul901 = mul i64 %reass.add900, 17
  %i.aqg = add i64 %.promoted30.i564, %reass.mul901
  store i64 %i.aqg, ptr %i.aqf, align 8, !tbaa !14
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i533: ; preds = %.lr.ph.split.split.i532, %bb.bn
  %.017.i534 = phi i64 [ %i.aqu, %bb.bn ], [ %.sroa.0808.0.copyload, %.lr.ph.split.split.i532 ] ; 3 uses
  %i.aqh = getelementptr inbounds nuw [4 x i8], ptr %i.anp, i64 %.017.i534
  %i.aqi = load i32, ptr %i.aqh, align 4, !tbaa !3
  %i.aqj = zext i32 %i.aqi to i64                 ; 2 uses
  %i.aqk = getelementptr inbounds nuw [8 x i8], ptr %i.ans, i64 %.017.i534 ; 3 uses
  %i.aql = load i64, ptr %i.aqk, align 8, !tbaa !14 ; 2 uses
  %i.aqm = add i64 %i.aql, 1
  store i64 %i.aqm, ptr %i.aqk, align 8, !tbaa !14
  %i.aqn = lshr i64 %i.aqj, 6
  %i.aqo = and i64 %i.aqj, 63
  %i.aqp = getelementptr inbounds nuw [8 x i8], ptr %i.anu, i64 %i.aqn
  %i.aqq = load i64, ptr %i.aqp, align 8, !tbaa !14
  %i.aqr = shl nuw i64 1, %i.aqo
  %i.aqs = and i64 %i.aqq, %i.aqr
  %.not.i535 = icmp eq i64 %i.aqs, 0
  br i1 %.not.i535, label %bb.bn, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i536

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i536: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i533
  %i.aqt = add i64 %i.aql, 17
  store i64 %i.aqt, ptr %i.aqk, align 8, !tbaa !14
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i536, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i533
  %i.aqu = add nuw i64 %.017.i534, 1              ; 2 uses
  %exitcond.not.i537 = icmp eq i64 %i.aqu, %.sroa.2809.0.copyload
  br i1 %exitcond.not.i537, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i533, !llvm.loop !664

bb.bo:                                            ; preds = %bb.a
  %.sroa.0818.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 14 uses
  %.sroa.2819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2819.0.copyload = load i64, ptr %.sroa.2819.0..sroa_idx, align 8, !tbaa !14 ; 10 uses
  %.sroa.3820.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3820.0.copyload = load i64, ptr %.sroa.3820.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %.sroa.4821.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4821.0.copyload = load i8, ptr %.sroa.4821.0..sroa_idx, align 8, !tbaa !189
  %i.aqv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_9hugeint_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.aqv)
  %i.aqw = icmp ult i64 %.sroa.0818.0.copyload, %.sroa.2819.0.copyload
  br i1 %i.aqw, label %.lr.ph.i570, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

.lr.ph.i570:                                      ; preds = %bb.bo
  %i.aqx = load ptr, ptr %i.aqv, align 8, !tbaa !157
  %i.aqy = load ptr, ptr %i.aqx, align 8, !tbaa !158 ; 3 uses
  %.not.i.i571 = icmp eq ptr %i.aqy, null         ; 2 uses
  %i.aqz = trunc nuw i8 %.sroa.4821.0.copyload to i1 ; 4 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !39 ; 9 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ard = load ptr, ptr %i.arc, align 8, !tbaa !159 ; 5 uses
  %.not.i15.i574 = icmp eq ptr %i.ard, null
  br i1 %.not.i15.i574, label %.lr.ph.split.us.i602, label %.lr.ph.split.i575

.lr.ph.split.us.i602:                             ; preds = %.lr.ph.i570
  br i1 %.not.i.i571, label %.lr.ph.split.us.split.us.i610, label %.lr.ph.split.us.split.i603

.lr.ph.split.us.split.us.i610:                    ; preds = %.lr.ph.split.us.i602
  br i1 %i.aqz, label %._crit_edge.sink.split.i607, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611.preheader: ; preds = %.lr.ph.split.us.split.us.i610
  %i.are = sub i64 %.sroa.2819.0.copyload, %.sroa.0818.0.copyload ; 3 uses
  %min.iters.check1533 = icmp ult i64 %i.are, 4
  br i1 %min.iters.check1533, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611.preheader1986, label %vector.ph1534

vector.ph1534:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611.preheader
  %n.vec1536 = and i64 %i.are, -4                 ; 3 uses
  %i.arf = add i64 %.sroa.0818.0.copyload, %n.vec1536
  %i.arg = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %.sroa.0818.0.copyload
  br label %vector.body1537

vector.body1537:                                  ; preds = %vector.body1537, %vector.ph1534
  %index1538 = phi i64 [ 0, %vector.ph1534 ], [ %index.next1541, %vector.body1537 ] ; 2 uses
  %i.arh = getelementptr inbounds nuw [8 x i8], ptr %i.arg, i64 %index1538 ; 3 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 16 ; 2 uses
  %wide.load1539 = load <2 x i64>, ptr %i.arh, align 8, !tbaa !14
  %wide.load1540 = load <2 x i64>, ptr %i.ari, align 8, !tbaa !14
  %i.arj = add <2 x i64> %wide.load1539, splat (i64 17)
  %i.ark = add <2 x i64> %wide.load1540, splat (i64 17)
  store <2 x i64> %i.arj, ptr %i.arh, align 8, !tbaa !14
  store <2 x i64> %i.ark, ptr %i.ari, align 8, !tbaa !14
  %index.next1541 = add nuw i64 %index1538, 4     ; 2 uses
  %i.arl = icmp eq i64 %index.next1541, %n.vec1536
  br i1 %i.arl, label %middle.block1542, label %vector.body1537, !llvm.loop !665

middle.block1542:                                 ; preds = %vector.body1537
  %cmp.n1543 = icmp eq i64 %i.are, %n.vec1536
  br i1 %cmp.n1543, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611.preheader1986

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611.preheader1986: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611.preheader, %middle.block1542
  %.017.us.us.i612.ph = phi i64 [ %.sroa.0818.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611.preheader ], [ %i.arf, %middle.block1542 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611.preheader1986, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611
  %.017.us.us.i612 = phi i64 [ %i.arp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611 ], [ %.017.us.us.i612.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611.preheader1986 ] ; 2 uses
  %i.arm = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %.017.us.us.i612 ; 2 uses
  %i.arn = load i64, ptr %i.arm, align 8, !tbaa !14
  %i.aro = add i64 %i.arn, 17
  store i64 %i.aro, ptr %i.arm, align 8, !tbaa !14
  %i.arp = add nuw i64 %.017.us.us.i612, 1        ; 2 uses
  %exitcond44.not.i613 = icmp eq i64 %i.arp, %.sroa.2819.0.copyload
  br i1 %exitcond44.not.i613, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i611, !llvm.loop !666

.lr.ph.split.us.split.i603:                       ; preds = %.lr.ph.split.us.i602
  br i1 %i.aqz, label %._crit_edge.sink.split.i607, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604.preheader: ; preds = %.lr.ph.split.us.split.i603
  %i.arq = sub i64 %.sroa.2819.0.copyload, %.sroa.0818.0.copyload ; 3 uses
  %min.iters.check1520 = icmp ult i64 %i.arq, 4
  br i1 %min.iters.check1520, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604.preheader1988, label %vector.ph1521

vector.ph1521:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604.preheader
  %n.vec1523 = and i64 %i.arq, -4                 ; 3 uses
  %i.arr = add i64 %.sroa.0818.0.copyload, %n.vec1523
  %i.ars = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %.sroa.0818.0.copyload
  br label %vector.body1524

vector.body1524:                                  ; preds = %vector.body1524, %vector.ph1521
  %index1525 = phi i64 [ 0, %vector.ph1521 ], [ %index.next1528, %vector.body1524 ] ; 2 uses
  %i.art = getelementptr inbounds nuw [8 x i8], ptr %i.ars, i64 %index1525 ; 3 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 16 ; 2 uses
  %wide.load1526 = load <2 x i64>, ptr %i.art, align 8, !tbaa !14
  %wide.load1527 = load <2 x i64>, ptr %i.aru, align 8, !tbaa !14
  %i.arv = add <2 x i64> %wide.load1526, splat (i64 17)
  %i.arw = add <2 x i64> %wide.load1527, splat (i64 17)
  store <2 x i64> %i.arv, ptr %i.art, align 8, !tbaa !14
  store <2 x i64> %i.arw, ptr %i.aru, align 8, !tbaa !14
  %index.next1528 = add nuw i64 %index1525, 4     ; 2 uses
  %i.arx = icmp eq i64 %index.next1528, %n.vec1523
  br i1 %i.arx, label %middle.block1529, label %vector.body1524, !llvm.loop !667

middle.block1529:                                 ; preds = %vector.body1524
  %cmp.n1530 = icmp eq i64 %i.arq, %n.vec1523
  br i1 %cmp.n1530, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604.preheader1988

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604.preheader1988: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604.preheader, %middle.block1529
  %.017.us.i605.ph = phi i64 [ %.sroa.0818.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604.preheader ], [ %i.arr, %middle.block1529 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604.preheader1988, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604
  %.017.us.i605 = phi i64 [ %i.asb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604 ], [ %.017.us.i605.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604.preheader1988 ] ; 2 uses
  %i.ary = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %.017.us.i605 ; 2 uses
  %i.arz = load i64, ptr %i.ary, align 8, !tbaa !14
  %i.asa = add i64 %i.arz, 17
  store i64 %i.asa, ptr %i.ary, align 8, !tbaa !14
  %i.asb = add nuw i64 %.017.us.i605, 1           ; 2 uses
  %exitcond43.not.i606 = icmp eq i64 %i.asb, %.sroa.2819.0.copyload
  br i1 %exitcond43.not.i606, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i604, !llvm.loop !668

.lr.ph.split.i575:                                ; preds = %.lr.ph.i570
  br i1 %.not.i.i571, label %.lr.ph.split.split.us.i589, label %.lr.ph.split.split.i576

.lr.ph.split.split.us.i589:                       ; preds = %.lr.ph.split.i575
  br i1 %i.aqz, label %.lr.ph.split.split.us.split.us.i595, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i590

.lr.ph.split.split.us.split.us.i595:              ; preds = %.lr.ph.split.split.us.i589
  %i.asc = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %.sroa.3820.0.copyload ; 3 uses
  %.promoted26.i596 = load i64, ptr %i.asc, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i597

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i597: ; preds = %bb.bp, %.lr.ph.split.split.us.split.us.i595
  %i.asd = phi i64 [ %.promoted26.i596, %.lr.ph.split.split.us.split.us.i595 ], [ %i.asm, %bb.bp ] ; 2 uses
  %.017.us18.us.i598 = phi i64 [ %.sroa.0818.0.copyload, %.lr.ph.split.split.us.split.us.i595 ], [ %i.asn, %bb.bp ] ; 3 uses
  %i.ase = add i64 %i.asd, 1                      ; 2 uses
  store i64 %i.ase, ptr %i.asc, align 8, !tbaa !14
  %i.asf = lshr i64 %.017.us18.us.i598, 6
  %i.asg = and i64 %.017.us18.us.i598, 63
  %i.ash = getelementptr inbounds nuw [8 x i8], ptr %i.ard, i64 %i.asf
  %i.asi = load i64, ptr %i.ash, align 8, !tbaa !14
  %i.asj = shl nuw i64 1, %i.asg
  %i.ask = and i64 %i.asi, %i.asj
  %.not.us.us.i599 = icmp eq i64 %i.ask, 0
  br i1 %.not.us.us.i599, label %bb.bp, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i600

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i600: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i597
  %i.asl = add i64 %i.asd, 17                     ; 2 uses
  store i64 %i.asl, ptr %i.asc, align 8, !tbaa !14
  br label %bb.bp

bb.bp:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i600, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i597
  %i.asm = phi i64 [ %i.ase, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i597 ], [ %i.asl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.us.i600 ]
  %i.asn = add nuw i64 %.017.us18.us.i598, 1      ; 2 uses
  %exitcond42.not.i601 = icmp eq i64 %i.asn, %.sroa.2819.0.copyload
  br i1 %exitcond42.not.i601, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.us.i597, !llvm.loop !669

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i590: ; preds = %.lr.ph.split.split.us.i589, %bb.bq
  %.017.us18.i591 = phi i64 [ %i.asy, %bb.bq ], [ %.sroa.0818.0.copyload, %.lr.ph.split.split.us.i589 ] ; 4 uses
  %i.aso = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %.017.us18.i591 ; 3 uses
  %i.asp = load i64, ptr %i.aso, align 8, !tbaa !14 ; 2 uses
  %i.asq = add i64 %i.asp, 1
  store i64 %i.asq, ptr %i.aso, align 8, !tbaa !14
  %i.asr = lshr i64 %.017.us18.i591, 6
  %i.ass = and i64 %.017.us18.i591, 63
  %i.ast = getelementptr inbounds nuw [8 x i8], ptr %i.ard, i64 %i.asr
  %i.asu = load i64, ptr %i.ast, align 8, !tbaa !14
  %i.asv = shl nuw i64 1, %i.ass
  %i.asw = and i64 %i.asu, %i.asv
  %.not.us.i592 = icmp eq i64 %i.asw, 0
  br i1 %.not.us.i592, label %bb.bq, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i593

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i593: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i590
  %i.asx = add i64 %i.asp, 17
  store i64 %i.asx, ptr %i.aso, align 8, !tbaa !14
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us20.i593, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i590
  %i.asy = add nuw i64 %.017.us18.i591, 1         ; 2 uses
  %exitcond41.not.i594 = icmp eq i64 %i.asy, %.sroa.2819.0.copyload
  br i1 %exitcond41.not.i594, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us19.i590, !llvm.loop !669

.lr.ph.split.split.i576:                          ; preds = %.lr.ph.split.i575
  br i1 %i.aqz, label %.lr.ph.split.split.split.us.i582, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i577

.lr.ph.split.split.split.us.i582:                 ; preds = %.lr.ph.split.split.i576
  %i.asz = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %.sroa.3820.0.copyload ; 3 uses
  %.promoted.i583 = load i64, ptr %i.asz, align 8, !tbaa !14
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i584

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i584: ; preds = %bb.br, %.lr.ph.split.split.split.us.i582
  %i.ata = phi i64 [ %.promoted.i583, %.lr.ph.split.split.split.us.i582 ], [ %i.atm, %bb.br ] ; 2 uses
  %.017.us22.i585 = phi i64 [ %.sroa.0818.0.copyload, %.lr.ph.split.split.split.us.i582 ], [ %i.atn, %bb.br ] ; 2 uses
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %i.aqy, i64 %.017.us22.i585
  %i.atc = load i32, ptr %i.atb, align 4, !tbaa !3
  %i.atd = zext i32 %i.atc to i64                 ; 2 uses
  %i.ate = add i64 %i.ata, 1                      ; 2 uses
  store i64 %i.ate, ptr %i.asz, align 8, !tbaa !14
  %i.atf = lshr i64 %i.atd, 6
  %i.atg = and i64 %i.atd, 63
  %i.ath = getelementptr inbounds nuw [8 x i8], ptr %i.ard, i64 %i.atf
  %i.ati = load i64, ptr %i.ath, align 8, !tbaa !14
  %i.atj = shl nuw i64 1, %i.atg
  %i.atk = and i64 %i.atj, %i.ati
  %.not.us24.i586 = icmp eq i64 %i.atk, 0
  br i1 %.not.us24.i586, label %bb.br, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i587

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i587: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i584
  %i.atl = add i64 %i.ata, 17                     ; 2 uses
  store i64 %i.atl, ptr %i.asz, align 8, !tbaa !14
  br label %bb.br

bb.br:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i587, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i584
  %i.atm = phi i64 [ %i.ate, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i584 ], [ %i.atl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us23.i587 ]
  %i.atn = add nuw i64 %.017.us22.i585, 1         ; 2 uses
  %exitcond40.not.i588 = icmp eq i64 %i.atn, %.sroa.2819.0.copyload
  br i1 %exitcond40.not.i588, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i584, !llvm.loop !669

._crit_edge.sink.split.i607:                      ; preds = %.lr.ph.split.us.split.i603, %.lr.ph.split.us.split.us.i610
  %i.ato = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %.sroa.3820.0.copyload ; 2 uses
  %.promoted30.i608 = load i64, ptr %i.ato, align 8, !tbaa !14
  %reass.add = sub i64 %.sroa.2819.0.copyload, %.sroa.0818.0.copyload
  %reass.mul = mul i64 %reass.add, 17
  %i.atp = add i64 %.promoted30.i608, %reass.mul
  store i64 %i.atp, ptr %i.ato, align 8, !tbaa !14
  br label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i577: ; preds = %.lr.ph.split.split.i576, %bb.bs
  %.017.i578 = phi i64 [ %i.aud, %bb.bs ], [ %.sroa.0818.0.copyload, %.lr.ph.split.split.i576 ] ; 3 uses
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %i.aqy, i64 %.017.i578
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !3
  %i.ats = zext i32 %i.atr to i64                 ; 2 uses
  %i.att = getelementptr inbounds nuw [8 x i8], ptr %i.arb, i64 %.017.i578 ; 3 uses
  %i.atu = load i64, ptr %i.att, align 8, !tbaa !14 ; 2 uses
  %i.atv = add i64 %i.atu, 1
  store i64 %i.atv, ptr %i.att, align 8, !tbaa !14
  %i.atw = lshr i64 %i.ats, 6
  %i.atx = and i64 %i.ats, 63
  %i.aty = getelementptr inbounds nuw [8 x i8], ptr %i.ard, i64 %i.atw
  %i.atz = load i64, ptr %i.aty, align 8, !tbaa !14
  %i.aua = shl nuw i64 1, %i.atx
  %i.aub = and i64 %i.atz, %i.aua
  %.not.i579 = icmp eq i64 %i.aub, 0
  br i1 %.not.i579, label %bb.bs, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i580

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i580: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i577
  %i.auc = add i64 %i.atu, 17
  store i64 %i.auc, ptr %i.att, align 8, !tbaa !14
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i580, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i577
  %i.aud = add nuw i64 %.017.i578, 1              ; 2 uses
  %exitcond.not.i581 = icmp eq i64 %i.aud, %.sroa.2819.0.copyload
  br i1 %exitcond.not.i581, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i577, !llvm.loop !669

bb.bt:                                            ; preds = %bb.a
  %i.aue = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.auf = load i8, ptr %i.aue, align 8, !tbaa !80
  %i.aug = icmp eq i8 %i.auf, 25
  %.sroa.0828.0.copyload = load i64, ptr %1, align 8, !tbaa !14 ; 32 uses
  %.sroa.2829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2829.0.copyload = load i64, ptr %.sroa.2829.0..sroa_idx, align 8, !tbaa !14 ; 27 uses
  %.sroa.3830.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3830.0.copyload = load i64, ptr %.sroa.3830.0..sroa_idx, align 8, !tbaa !14 ; 8 uses
  %.sroa.4831.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4831.0.copyload = load i8, ptr %.sroa.4831.0..sroa_idx, align 8, !tbaa !189 ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.auh)
  %i.aui = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.auj = load ptr, ptr %i.aui, align 8, !tbaa !333 ; 27 uses
  %i.auk = icmp ult i64 %.sroa.0828.0.copyload, %.sroa.2829.0.copyload ; 2 uses
  br i1 %i.aug, label %bb.bu, label %bb.bz

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.auk, label %.lr.ph.i614, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit

.lr.ph.i614:                                      ; preds = %bb.bu
  %i.aul = load ptr, ptr %i.auh, align 8, !tbaa !157
  %i.aum = load ptr, ptr %i.aul, align 8, !tbaa !158 ; 9 uses
  %.not.i.i615 = icmp eq ptr %i.aum, null         ; 2 uses
  %i.aun = trunc nuw i8 %.sroa.4831.0.copyload to i1 ; 4 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aup = load ptr, ptr %i.auo, align 8, !tbaa !39 ; 16 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aur = load ptr, ptr %i.auq, align 8, !tbaa !159 ; 5 uses
  %.not.i15.i618 = icmp eq ptr %i.aur, null
  br i1 %.not.i15.i618, label %.lr.ph.split.us.i640, label %.lr.ph.split.i619

.lr.ph.split.us.i640:                             ; preds = %.lr.ph.i614
  br i1 %.not.i.i615, label %.lr.ph.split.us.split.us.i644, label %.lr.ph.split.us.split.i641

.lr.ph.split.us.split.us.i644:                    ; preds = %.lr.ph.split.us.i640
  br i1 %i.aun, label %.lr.ph.split.us.split.us.split.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader: ; preds = %.lr.ph.split.us.split.us.i644
  %i.aus = sub i64 %.sroa.2829.0.copyload, %.sroa.0828.0.copyload ; 3 uses
  %min.iters.check1484 = icmp ult i64 %i.aus, 9
  br i1 %min.iters.check1484, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader1996, label %vector.memcheck

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader1996: ; preds = %vector.body1488, %vector.memcheck, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader
  %.017.us.us.i646.ph = phi i64 [ %.sroa.0828.0.copyload, %vector.memcheck ], [ %.sroa.0828.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader ], [ %i.avi, %vector.body1488 ] ; 6 uses
  %i.aut = sub i64 %.sroa.2829.0.copyload, %.017.us.us.i646.ph
  %.neg2035 = add i64 %.017.us.us.i646.ph, 1
  %xtraiter2026 = and i64 %i.aut, 1
  %lcmp.mod2027.not = icmp eq i64 %xtraiter2026, 0
  br i1 %lcmp.mod2027.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader1996
  %i.auu = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %.017.us.us.i646.ph ; 3 uses
  %i.auv = load i64, ptr %i.auu, align 8, !tbaa !14 ; 2 uses
  %i.auw = add i64 %i.auv, 1
  store i64 %i.auw, ptr %i.auu, align 8, !tbaa !14
  %i.aux = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %.017.us.us.i646.ph
  %.sroa.0.0.copyload.us.us.i.prol = load i64, ptr %i.aux, align 8
  %i.auy = and i64 %.sroa.0.0.copyload.us.us.i.prol, 4294967295
  %i.auz = add i64 %i.auv, 2
  %i.ava = add i64 %i.auz, %i.auy
  store i64 %i.ava, ptr %i.auu, align 8, !tbaa !14
  %i.avb = add nuw i64 %.017.us.us.i646.ph, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader1996
  %.017.us.us.i646.unr = phi i64 [ %.017.us.us.i646.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader1996 ], [ %i.avb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol ]
  %i.avc = icmp eq i64 %.sroa.2829.0.copyload, %.neg2035
  br i1 %i.avc, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645

vector.memcheck:                                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader
  %i.avd = shl i64 %.sroa.0828.0.copyload, 3
  %scevgep = getelementptr i8, ptr %i.aup, i64 %i.avd
  %i.ave = shl i64 %.sroa.2829.0.copyload, 3
  %scevgep1480 = getelementptr i8, ptr %i.aup, i64 %i.ave
  %i.avf = shl i64 %.sroa.0828.0.copyload, 4
  %scevgep1481 = getelementptr i8, ptr %i.auj, i64 %i.avf
  %i.avg = shl i64 %.sroa.2829.0.copyload, 4
  %i.avh = getelementptr i8, ptr %i.auj, i64 %i.avg
  %scevgep1482 = getelementptr i8, ptr %i.avh, i64 -8
  %bound0 = icmp ult ptr %scevgep, %scevgep1482
  %bound1 = icmp ult ptr %scevgep1481, %scevgep1480
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader1996, label %vector.ph1485

vector.ph1485:                                    ; preds = %vector.memcheck
  %.neg = or i64 %i.aus, -2                       ; 2 uses
  %n.vec1487 = add i64 %.neg, %i.aus
  %i.avi = add i64 %.neg, %.sroa.2829.0.copyload
  br label %vector.body1488

vector.body1488:                                  ; preds = %vector.body1488, %vector.ph1485
  %index1489 = phi i64 [ 0, %vector.ph1485 ], [ %index.next1491, %vector.body1488 ] ; 2 uses
  %i.avj = add nuw i64 %.sroa.0828.0.copyload, %index1489 ; 2 uses
  %i.avk = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %i.avj ; 3 uses
  %wide.load1490 = load <2 x i64>, ptr %i.avk, align 8, !tbaa !14, !alias.scope !670, !noalias !673 ; 2 uses
  %i.avl = add <2 x i64> %wide.load1490, splat (i64 1)
  store <2 x i64> %i.avl, ptr %i.avk, align 8, !tbaa !14, !alias.scope !670, !noalias !673
  %i.avm = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %i.avj
  %i.avn = load <3 x i64>, ptr %i.avm, align 8, !alias.scope !673
  %strided.vec = shufflevector <3 x i64> %i.avn, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.avo = and <2 x i64> %strided.vec, splat (i64 4294967295)
  %i.avp = add <2 x i64> %wide.load1490, splat (i64 2)
  %i.avq = add <2 x i64> %i.avp, %i.avo
  store <2 x i64> %i.avq, ptr %i.avk, align 8, !tbaa !14, !alias.scope !670, !noalias !673
  %index.next1491 = add nuw i64 %index1489, 2     ; 2 uses
  %i.avr = icmp eq i64 %index.next1491, %n.vec1487
  br i1 %i.avr, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.preheader1996, label %vector.body1488, !llvm.loop !675

.lr.ph.split.us.split.us.split.us.i:              ; preds = %.lr.ph.split.us.split.us.i644
  %i.avs = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %.sroa.3830.0.copyload ; 8 uses
  %.promoted35.i = load i64, ptr %i.avs, align 8, !tbaa !14 ; 3 uses
  %i.avt = sub i64 %.sroa.2829.0.copyload, %.sroa.0828.0.copyload ; 3 uses
  %min.iters.check1502 = icmp ult i64 %i.avt, 11
  br i1 %min.iters.check1502, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader, label %vector.memcheck1494

vector.memcheck1494:                              ; preds = %.lr.ph.split.us.split.us.split.us.i
  %i.avu = shl i64 %.sroa.3830.0.copyload, 3
  %i.avv = getelementptr i8, ptr %i.aup, i64 %i.avu
  %scevgep1495 = getelementptr i8, ptr %i.avv, i64 8
  %i.avw = shl i64 %.sroa.0828.0.copyload, 4
  %scevgep1496 = getelementptr i8, ptr %i.auj, i64 %i.avw
  %i.avx = shl i64 %.sroa.2829.0.copyload, 4
  %i.avy = getelementptr i8, ptr %i.auj, i64 %i.avx
  %scevgep1497 = getelementptr i8, ptr %i.avy, i64 -8
  %bound01498 = icmp ult ptr %i.avs, %scevgep1497
  %bound11499 = icmp ult ptr %scevgep1496, %scevgep1495
  %found.conflict1500 = and i1 %bound01498, %bound11499
  br i1 %found.conflict1500, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader, label %vector.ph1503

vector.ph1503:                                    ; preds = %vector.memcheck1494
  %n.mod.vf1504 = and i64 %i.avt, 3               ; 2 uses
  %i.avz = icmp eq i64 %n.mod.vf1504, 0
  %i.awa = select i1 %i.avz, i64 4, i64 %n.mod.vf1504
  %n.vec1505 = sub i64 %i.avt, %i.awa             ; 2 uses
  %i.awb = add i64 %.sroa.0828.0.copyload, %n.vec1505
  %i.awc = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted35.i, i64 0
  br label %vector.body1506

vector.body1506:                                  ; preds = %vector.body1506, %vector.ph1503
  %index1507 = phi i64 [ 0, %vector.ph1503 ], [ %index.next1514, %vector.body1506 ] ; 2 uses
  %vec.phi1508 = phi <2 x i64> [ %i.awc, %vector.ph1503 ], [ %i.awn, %vector.body1506 ]
  %vec.phi1509 = phi <2 x i64> [ zeroinitializer, %vector.ph1503 ], [ %i.awo, %vector.body1506 ]
  %i.awd = add nuw i64 %.sroa.0828.0.copyload, %index1507 ; 2 uses
  %i.awe = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %i.awd
  %i.awf = getelementptr [16 x i8], ptr %i.auj, i64 %i.awd
  %i.awg = getelementptr i8, ptr %i.awf, i64 32
  %i.awh = load <3 x i64>, ptr %i.awe, align 8, !alias.scope !676
  %strided.vec1511 = shufflevector <3 x i64> %i.awh, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.awi = load <3 x i64>, ptr %i.awg, align 8, !alias.scope !676
  %strided.vec1513 = shufflevector <3 x i64> %i.awi, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.awj = and <2 x i64> %strided.vec1511, splat (i64 4294967295)
  %i.awk = and <2 x i64> %strided.vec1513, splat (i64 4294967295)
  %i.awl = add <2 x i64> %vec.phi1508, splat (i64 2)
  %i.awm = add <2 x i64> %vec.phi1509, splat (i64 2)
  %i.awn = add <2 x i64> %i.awl, %i.awj           ; 2 uses
  %i.awo = add <2 x i64> %i.awm, %i.awk           ; 2 uses
  %index.next1514 = add nuw i64 %index1507, 4     ; 2 uses
  %i.awp = icmp eq i64 %index.next1514, %n.vec1505
  br i1 %i.awp, label %middle.block1515, label %vector.body1506, !llvm.loop !679

middle.block1515:                                 ; preds = %vector.body1506
  %bin.rdx1516 = add <2 x i64> %i.awo, %i.awn
  %i.awq = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1516) ; 2 uses
  store i64 %i.awq, ptr %i.avs, align 8, !tbaa !14, !alias.scope !680, !noalias !676
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader: ; preds = %vector.memcheck1494, %.lr.ph.split.us.split.us.split.us.i, %middle.block1515
  %.ph = phi i64 [ %.promoted35.i, %vector.memcheck1494 ], [ %.promoted35.i, %.lr.ph.split.us.split.us.split.us.i ], [ %i.awq, %middle.block1515 ] ; 3 uses
  %.017.us.us.us.i.ph = phi i64 [ %.sroa.0828.0.copyload, %vector.memcheck1494 ], [ %.sroa.0828.0.copyload, %.lr.ph.split.us.split.us.split.us.i ], [ %i.awb, %middle.block1515 ] ; 5 uses
  %i.awr = sub i64 %.sroa.2829.0.copyload, %.017.us.us.us.i.ph
  %.neg2036 = add i64 %.017.us.us.us.i.ph, 1
  %xtraiter2029 = and i64 %i.awr, 1
  %lcmp.mod2030.not = icmp eq i64 %xtraiter2029, 0
  br i1 %lcmp.mod2030.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader
  %i.aws = add i64 %.ph, 1
  store i64 %i.aws, ptr %i.avs, align 8, !tbaa !14
  %i.awt = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %.017.us.us.us.i.ph
  %.sroa.0.0.copyload.us.us.us.i.prol = load i64, ptr %i.awt, align 8
  %i.awu = and i64 %.sroa.0.0.copyload.us.us.us.i.prol, 4294967295
  %i.awv = add i64 %.ph, 2
  %i.aww = add i64 %i.awv, %i.awu                 ; 2 uses
  store i64 %i.aww, ptr %i.avs, align 8, !tbaa !14
  %i.awx = add nuw i64 %.017.us.us.us.i.ph, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader
  %.unr2032 = phi i64 [ %.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader ], [ %i.aww, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol ]
  %.017.us.us.us.i.unr = phi i64 [ %.017.us.us.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader ], [ %i.awx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol ]
  %i.awy = icmp eq i64 %.sroa.2829.0.copyload, %.neg2036
  br i1 %i.awy, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i
  %i.awz = phi i64 [ %i.axk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i ], [ %.unr2032, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol.loopexit ] ; 2 uses
  %.017.us.us.us.i = phi i64 [ %i.axl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i ], [ %.017.us.us.us.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.prol.loopexit ] ; 3 uses
  %i.axa = add i64 %i.awz, 1
  store i64 %i.axa, ptr %i.avs, align 8, !tbaa !14
  %i.axb = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %.017.us.us.us.i
  %.sroa.0.0.copyload.us.us.us.i = load i64, ptr %i.axb, align 8
  %i.axc = and i64 %.sroa.0.0.copyload.us.us.us.i, 4294967295
  %i.axd = add i64 %i.awz, 2
  %i.axe = add i64 %i.axd, %i.axc                 ; 2 uses
  %i.axf = add i64 %i.axe, 1
  store i64 %i.axf, ptr %i.avs, align 8, !tbaa !14
  %i.axg = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %.017.us.us.us.i
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axg, i64 16
  %.sroa.0.0.copyload.us.us.us.i.1 = load i64, ptr %i.axh, align 8
  %i.axi = and i64 %.sroa.0.0.copyload.us.us.us.i.1, 4294967295
  %i.axj = add i64 %i.axe, 2
  %i.axk = add i64 %i.axj, %i.axi                 ; 2 uses
  store i64 %i.axk, ptr %i.avs, align 8, !tbaa !14
  %i.axl = add nuw i64 %.017.us.us.us.i, 2        ; 2 uses
  %exitcond49.not.i.1 = icmp eq i64 %i.axl, %.sroa.2829.0.copyload
  br i1 %exitcond49.not.i.1, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i, !llvm.loop !682

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645
  %.017.us.us.i646 = phi i64 [ %i.ayb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645 ], [ %.017.us.us.i646.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645.prol.loopexit ] ; 4 uses
  %i.axm = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %.017.us.us.i646 ; 3 uses
  %i.axn = load i64, ptr %i.axm, align 8, !tbaa !14 ; 2 uses
  %i.axo = add i64 %i.axn, 1
  store i64 %i.axo, ptr %i.axm, align 8, !tbaa !14
  %i.axp = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %.017.us.us.i646
  %.sroa.0.0.copyload.us.us.i = load i64, ptr %i.axp, align 8
  %i.axq = and i64 %.sroa.0.0.copyload.us.us.i, 4294967295
  %i.axr = add i64 %i.axn, 2
  %i.axs = add i64 %i.axr, %i.axq
  store i64 %i.axs, ptr %i.axm, align 8, !tbaa !14
  %i.axt = add nuw i64 %.017.us.us.i646, 1        ; 2 uses
  %i.axu = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %i.axt ; 3 uses
  %i.axv = load i64, ptr %i.axu, align 8, !tbaa !14 ; 2 uses
  %i.axw = add i64 %i.axv, 1
  store i64 %i.axw, ptr %i.axu, align 8, !tbaa !14
  %i.axx = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %i.axt
  %.sroa.0.0.copyload.us.us.i.1 = load i64, ptr %i.axx, align 8
  %i.axy = and i64 %.sroa.0.0.copyload.us.us.i.1, 4294967295
  %i.axz = add i64 %i.axv, 2
  %i.aya = add i64 %i.axz, %i.axy
  store i64 %i.aya, ptr %i.axu, align 8, !tbaa !14
  %i.ayb = add nuw i64 %.017.us.us.i646, 2        ; 2 uses
  %exitcond48.not.i.1 = icmp eq i64 %i.ayb, %.sroa.2829.0.copyload
  br i1 %exitcond48.not.i.1, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i645, !llvm.loop !683

.lr.ph.split.us.split.i641:                       ; preds = %.lr.ph.split.us.i640
  br i1 %i.aun, label %.lr.ph.split.us.split.split.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.preheader: ; preds = %.lr.ph.split.us.split.i641
  %i.ayc = sub i64 %.sroa.2829.0.copyload, %.sroa.0828.0.copyload
  %.neg2033 = add i64 %.sroa.0828.0.copyload, 1
  %xtraiter2020 = and i64 %i.ayc, 1
  %lcmp.mod2021.not = icmp eq i64 %xtraiter2020, 0
  br i1 %lcmp.mod2021.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.preheader
  %i.ayd = getelementptr inbounds nuw [4 x i8], ptr %i.aum, i64 %.sroa.0828.0.copyload
  %i.aye = load i32, ptr %i.ayd, align 4, !tbaa !3
  %i.ayf = zext i32 %i.aye to i64
  %i.ayg = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %.sroa.0828.0.copyload ; 3 uses
  %i.ayh = load i64, ptr %i.ayg, align 8, !tbaa !14 ; 2 uses
  %i.ayi = add i64 %i.ayh, 1
  store i64 %i.ayi, ptr %i.ayg, align 8, !tbaa !14
  %i.ayj = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %i.ayf
  %.sroa.0.0.copyload.us.i.prol = load i64, ptr %i.ayj, align 8
  %i.ayk = and i64 %.sroa.0.0.copyload.us.i.prol, 4294967295
  %i.ayl = add i64 %i.ayh, 2
  %i.aym = add i64 %i.ayl, %i.ayk
  store i64 %i.aym, ptr %i.ayg, align 8, !tbaa !14
  %i.ayn = add nuw i64 %.sroa.0828.0.copyload, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.preheader
  %.017.us.i643.unr = phi i64 [ %.sroa.0828.0.copyload, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.preheader ], [ %i.ayn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol ]
  %i.ayo = icmp eq i64 %.sroa.2829.0.copyload, %.neg2033
  br i1 %i.ayo, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642

.lr.ph.split.us.split.split.us.i:                 ; preds = %.lr.ph.split.us.split.i641
  %i.ayp = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %.sroa.3830.0.copyload ; 7 uses
  %.promoted33.i = load i64, ptr %i.ayp, align 8, !tbaa !14 ; 3 uses
  %i.ayq = sub i64 %.sroa.2829.0.copyload, %.sroa.0828.0.copyload
  %.neg2034 = add i64 %.sroa.0828.0.copyload, 1
  %xtraiter2023 = and i64 %i.ayq, 1
  %lcmp.mod2024.not = icmp eq i64 %xtraiter2023, 0
  br i1 %lcmp.mod2024.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol: ; preds = %.lr.ph.split.us.split.split.us.i
  %i.ayr = getelementptr inbounds nuw [4 x i8], ptr %i.aum, i64 %.sroa.0828.0.copyload
  %i.ays = load i32, ptr %i.ayr, align 4, !tbaa !3
  %i.ayt = zext i32 %i.ays to i64
  %i.ayu = add i64 %.promoted33.i, 1
  store i64 %i.ayu, ptr %i.ayp, align 8, !tbaa !14
  %i.ayv = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %i.ayt
  %.sroa.0.0.copyload.us.us31.i.prol = load i64, ptr %i.ayv, align 8
  %i.ayw = and i64 %.sroa.0.0.copyload.us.us31.i.prol, 4294967295
  %i.ayx = add i64 %.promoted33.i, 2
  %i.ayy = add i64 %i.ayx, %i.ayw                 ; 2 uses
  store i64 %i.ayy, ptr %i.ayp, align 8, !tbaa !14
  %i.ayz = add nuw i64 %.sroa.0828.0.copyload, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol, %.lr.ph.split.us.split.split.us.i
  %.unr = phi i64 [ %.promoted33.i, %.lr.ph.split.us.split.split.us.i ], [ %i.ayy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol ]
  %.017.us.us30.i.unr = phi i64 [ %.sroa.0828.0.copyload, %.lr.ph.split.us.split.split.us.i ], [ %i.ayz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol ]
  %i.aza = icmp eq i64 %.sroa.2829.0.copyload, %.neg2034
  br i1 %i.aza, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i
  %i.azb = phi i64 [ %i.azs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i ], [ %.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol.loopexit ] ; 2 uses
  %.017.us.us30.i = phi i64 [ %i.azt, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i ], [ %.017.us.us30.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i.prol.loopexit ] ; 3 uses
  %i.azc = getelementptr inbounds nuw [4 x i8], ptr %i.aum, i64 %.017.us.us30.i
  %i.azd = load i32, ptr %i.azc, align 4, !tbaa !3
  %i.aze = zext i32 %i.azd to i64
  %i.azf = add i64 %i.azb, 1
  store i64 %i.azf, ptr %i.ayp, align 8, !tbaa !14
  %i.azg = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %i.aze
  %.sroa.0.0.copyload.us.us31.i = load i64, ptr %i.azg, align 8
  %i.azh = and i64 %.sroa.0.0.copyload.us.us31.i, 4294967295
  %i.azi = add i64 %i.azb, 2
  %i.azj = add i64 %i.azi, %i.azh                 ; 3 uses
  store i64 %i.azj, ptr %i.ayp, align 8, !tbaa !14
  %i.azk = getelementptr inbounds nuw [4 x i8], ptr %i.aum, i64 %.017.us.us30.i
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 4
  %i.azm = load i32, ptr %i.azl, align 4, !tbaa !3
  %i.azn = zext i32 %i.azm to i64
  %i.azo = add i64 %i.azj, 1
  store i64 %i.azo, ptr %i.ayp, align 8, !tbaa !14
  %i.azp = getelementptr inbounds nuw [16 x i8], ptr %i.auj, i64 %i.azn
  %.sroa.0.0.copyload.us.us31.i.1 = load i64, ptr %i.azp, align 8
  %i.azq = and i64 %.sroa.0.0.copyload.us.us31.i.1, 4294967295
  %i.azr = add i64 %i.azj, 2
  %i.azs = add i64 %i.azr, %i.azq                 ; 2 uses
  store i64 %i.azs, ptr %i.ayp, align 8, !tbaa !14
  %i.azt = add nuw i64 %.017.us.us30.i, 2         ; 2 uses
  %exitcond47.not.i.1 = icmp eq i64 %i.azt, %.sroa.2829.0.copyload
  br i1 %exitcond47.not.i.1, label %_ZN6duckdb12_GLOBAL__N_125TemplatedGetSortKeyLengthINS0_23SortKeyConstantOperatorIbEEEEvRNS0_17SortKeyVectorDataENS0_12SortKeyChunkERNS0_17SortKeyLengthInfoE.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us29.i, !llvm.loop !684

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642
  %.017.us.i643 = phi i64 [ %i.bap, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642 ], [ %.017.us.i643.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i642.prol.loopexit ] ; 4 uses
  %i.azu = getelementptr inbounds nuw [4 x i8], ptr %i.aum, i64 %.017.us.i643
  %i.azv = load i32, ptr %i.azu, align 4, !tbaa !3
  %i.azw = zext i32 %i.azv to i64
  %i.azx = getelementptr inbounds nuw [8 x i8], ptr %i.aup, i64 %.017.us.i643 ; 3 uses
  %i.azy = load i64, ptr %i.azx, align 8, !tbaa !14 ; 2 uses
  %i.azz = add i64 %i.azy, 1
end_hunk_0
