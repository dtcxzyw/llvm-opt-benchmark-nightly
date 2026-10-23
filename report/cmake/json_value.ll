Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/json_value?download=true
inline.NumInlined: 1485
inline.NumDeleted: 428
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK4Json5Value3endEv:bb.a
  %switch = icmp ne i16 %i.c, 6
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.not3 = select i1 %switch, i1 true, i1 %.not   ; 2 uses
  %.sroa.01.0 = select i1 %.not3, ptr null, ptr %i.e
  %.sroa.3.0 = zext i1 %.not3 to i8
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.01.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Json5Value5beginEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Json::ValueIterator") align 8 captures(none) initializes((0, 9)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 254
  %switch = icmp eq i16 %i.c, 6
  br i1 %switch, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = ptrtoint ptr %i.f to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %storemerge = phi i64 [ %i.g, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sink = phi i8 [ 0, %bb.c ], [ 1, %bb.a ], [ 1, %bb.b ]
  store i64 %storemerge, ptr %0, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.h, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4Json5Value3endEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Json::ValueIterator") align 8 captures(none) initializes((0, 9)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 254
  %switch = icmp eq i16 %i.c, 6
  br i1 %switch, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = ptrtoint ptr %i.e to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %storemerge = phi i64 [ %i.f, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sink = phi i8 [ 0, %bb.c ], [ 1, %bb.a ], [ 1, %bb.b ]
  store i64 %storemerge, ptr %0, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.g, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4Json12PathArgumentC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !38
  store i8 0, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.c, align 8, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.d, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4Json12PathArgumentC2Ej(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !38
  store i8 0, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %1, ptr %i.c, align 8, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.d, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json12PathArgumentC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !35
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.46) #38
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 %i.d, ptr %i.a, align 8, !tbaa !39
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !40
  %i.g = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.g, ptr %i.b, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !33
  store i8 %i.i, ptr %i.h, align 1, !tbaa !33
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !38
  %i.l = load ptr, ptr %0, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.n, align 8, !tbaa !87
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 2, ptr %i.o, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local void @_ZN4Json12PathArgumentC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef align 8 %1) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !35
  %i.b = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !40
  %i.i = load i64, ptr %i.c, align 8, !tbaa !33
  store i64 %i.i, ptr %i.a, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !38
  store ptr %i.c, ptr %1, align 8, !tbaa !40
  store i64 0, ptr %i.j, align 8, !tbaa !38
  store i8 0, ptr %i.c, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.m, align 8, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 2, ptr %i.n, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json4PathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_12PathArgumentESB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %6) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseIPKN4Json12PathArgumentESaIS3_EE11_M_allocateEm.exit.i:
  %7 = alloca %"class.std::vector.16", align 8    ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.a = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #42
          to label %_ZNSt6vectorIPKN4Json12PathArgumentESaIS3_EE9push_backEOS3_.exit31 unwind label %.thread69 ; 10 uses

.thread69:                                        ; preds = %_ZNSt12_Vector_baseIPKN4Json12PathArgumentESaIS3_EE11_M_allocateEm.exit.i
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN4Json12PathArgumentESaIS3_EED2Ev.exit53

_ZNSt6vectorIPKN4Json12PathArgumentESaIS3_EE9push_backEOS3_.exit31: ; preds = %_ZNSt12_Vector_baseIPKN4Json12PathArgumentESaIS3_EE11_M_allocateEm.exit.i
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %7, align 8, !tbaa !141
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.d, ptr %i.b, align 8, !tbaa !142
  store ptr %2, ptr %i.a, align 8, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.e, align 8, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %4, ptr %i.f, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %5, ptr %i.g, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %6, ptr %i.h, align 8, !tbaa !92
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.i, ptr %i.c, align 8, !tbaa !143
  invoke void @_ZN4Json4Path8makePathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPKNS_12PathArgumentESaISC_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZNSt6vectorIPKN4Json12PathArgumentESaIS3_EED2Ev.exit unwind label %bb.a

_ZNSt6vectorIPKN4Json12PathArgumentESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIPKN4Json12PathArgumentESaIS3_EE9push_backEOS3_.exit31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  ret void

bb.a:                                             ; preds = %_ZNSt6vectorIPKN4Json12PathArgumentESaIS3_EE9push_backEOS3_.exit31
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #39
  br label %_ZNSt6vectorIPKN4Json12PathArgumentESaIS3_EED2Ev.exit53

_ZNSt6vectorIPKN4Json12PathArgumentESaIS3_EED2Ev.exit53: ; preds = %.thread69, %bb.a
  %lpad.phi79 = phi { ptr, i32 } [ %8, %.thread69 ], [ %lpad.thr_comm, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  tail call void @_ZNSt6vectorIN4Json12PathArgumentESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #36
  resume { ptr, i32 } %lpad.phi79
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json4Path8makePathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPKNS_12PathArgumentESaISC_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.Json::PathArgument", align 8 ; 13 uses
  %4 = alloca %"class.Json::PathArgument", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !40     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 6 uses
  %.not111 = icmp samesign eq i64 %i.f, 0
  br i1 %.not111, label %._crit_edge, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.a
  %i.h = ptrtoaddr ptr %i.d to i64
  %i.i = load ptr, ptr %2, align 8, !tbaa !93
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.w = add i64 %i.f, %i.h                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph114, %bb.ah
  %.047113 = phi ptr [ %i.d, %.lr.ph114 ], [ %.5, %bb.ah ] ; 13 uses
  %.sroa.086.0112 = phi ptr [ %i.i, %.lr.ph114 ], [ %.sroa.086.2, %bb.ah ] ; 13 uses
  %.047113115 = ptrtoaddr ptr %.047113 to i64     ; 2 uses
  %i.x = load i8, ptr %.047113, align 1, !tbaa !33
  switch i8 %i.x, label %.preheader [
    i8 91, label %bb.c
    i8 37, label %bb.p
    i8 46, label %bb.w
    i8 93, label %bb.w
  ]

.preheader:                                       ; preds = %bb.b
  %.not53106 = icmp eq ptr %.047113, %i.g
  br i1 %.not53106, label %.critedge2, label %.lr.ph108.preheader

.lr.ph108.preheader:                              ; preds = %.preheader
  %scevgep117 = getelementptr i8, ptr %.047113, i64 %i.w
  %i.y = sub i64 0, %.047113115
  %scevgep118 = getelementptr i8, ptr %scevgep117, i64 %i.y
  br label %.lr.ph108

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %.047113, i64 1 ; 8 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !33
  %i.ab = icmp eq i8 %i.aa, 37
  br i1 %i.ab, label %bb.d, label %.preheader91

.preheader91:                                     ; preds = %bb.c
  %.not5699 = icmp eq ptr %i.z, %i.g
  br i1 %.not5699, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader91
  %scevgep = getelementptr i8, ptr %.047113, i64 %i.w
  %i.ac = sub i64 0, %.047113115
  %scevgep116 = getelementptr i8, ptr %scevgep, i64 %i.ac
  br label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.ae = icmp eq ptr %.sroa.086.0112, %i.ad
  br i1 %i.ae, label %_ZN4Json4Path12addPathInArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPKNS_12PathArgumentESaISC_EERN9__gnu_cxx17__normal_iteratorIPKSC_SE_EENSA_4KindE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %.sroa.086.0112, align 8, !tbaa !92 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !88
  %.not.i = icmp eq i32 %i.ah, 1
  br i1 %.not.i, label %bb.f, label %_ZN4Json4Path12addPathInArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPKNS_12PathArgumentESaISC_EERN9__gnu_cxx17__normal_iteratorIPKSC_SE_EENSA_4KindE.exit

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.086.0112, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !95  ; 9 uses
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !96
  %.not.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !35
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !38 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  store i64 %i.ao, ptr %i.c, align 8, !tbaa !39
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.g
  %i.aq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.aq, ptr %i.aj, align 8, !tbaa !40
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !39
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !33
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %bb.g
  %i.as = phi ptr [ %i.aq, %.noexc.i.i.i.i ], [ %i.al, %bb.g ] ; 2 uses
  switch i64 %i.ao, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN4Json12PathArgumentC2ERKS0_.exit.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.at = load i8, ptr %i.am, align 1, !tbaa !33
  store i8 %i.at, ptr %i.as, align 1, !tbaa !33
  br label %_ZN4Json12PathArgumentC2ERKS0_.exit.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.am, i64 %i.ao, i1 false)
  br label %_ZN4Json12PathArgumentC2ERKS0_.exit.i.i

_ZN4Json12PathArgumentC2ERKS0_.exit.i.i:          ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i
  %i.au = load i64, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !38
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ba = load i64, ptr %i.az, align 8
  store i64 %i.ba, ptr %i.ay, align 8
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !95
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store ptr %i.bc, ptr %i.k, align 8, !tbaa !95
  br label %_ZN4Json4Path12addPathInArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPKNS_12PathArgumentESaISC_EERN9__gnu_cxx17__normal_iteratorIPKSC_SE_EENSA_4KindE.exit

bb.j:                                             ; preds = %bb.f
  call void @_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %i.af)
  br label %_ZN4Json4Path12addPathInArgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIPKNS_12PathArgumentESaISC_EERN9__gnu_cxx17__normal_iteratorIPKSC_SE_EENSA_4KindE.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %.046101 = phi i32 [ %i.bh, %bb.k ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.148100 = phi ptr [ %i.bi, %bb.k ], [ %i.z, %.lr.ph.preheader ] ; 3 uses
  %i.bd = load i8, ptr %.148100, align 1, !tbaa !33
  %i.be = add i8 %i.bd, -48                       ; 2 uses
  %or.cond = icmp ult i8 %i.be, 10
  br i1 %or.cond, label %bb.k, label %.critedge

bb.k:                                             ; preds = %.lr.ph
  %i.bf = mul i32 %.046101, 10
  %i.bg = zext nneg i8 %i.be to i32
  %i.bh = add i32 %i.bf, %i.bg                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.148100, i64 1 ; 2 uses
  %.not56 = icmp eq ptr %i.bi, %i.g
  br i1 %.not56, label %.critedge, label %.lr.ph, !llvm.loop !144

.critedge:                                        ; preds = %bb.k, %.lr.ph, %.preheader91
  %.148.lcssa = phi ptr [ %i.z, %.preheader91 ], [ %.148100, %.lr.ph ], [ %scevgep116, %bb.k ]
  %.046.lcssa = phi i32 [ 0, %.preheader91 ], [ %.046101, %.lr.ph ], [ %i.bh, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %i.m, ptr %3, align 8, !tbaa !35
  store i64 0, ptr %i.n, align 8, !tbaa !38
  store i8 0, ptr %i.m, align 8, !tbaa !33
  store i32 %.046.lcssa, ptr %i.o, align 8, !tbaa !87
  store i32 1, ptr %i.p, align 4, !tbaa !88
  %i.bj = load ptr, ptr %i.k, align 8, !tbaa !95  ; 7 uses
  %i.bk = load ptr, ptr %i.l, align 8, !tbaa !96
  %.not.i.i60 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i60, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 3 uses
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !35
  %i.bm = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.m
  br i1 %i.bn, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bo = load i8, ptr %i.m, align 8
  store i8 %i.bo, ptr %i.bl, align 8
  br label %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !40
  %i.bp = load i64, ptr %i.m, align 8, !tbaa !33
  store i64 %i.bp, ptr %i.bl, align 8, !tbaa !33
  br label %_ZNSt6vectorIN4Json12PathArgumentESaIS1_EE9push_backEOS1_.exit.thread

end_hunk_0
