Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/format?download=true
inline.NumInlined: 849
inline.NumDeleted: 365
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
@.str.2 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra6ColumnESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra6ColumnESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra6ColumnESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra6ColumnESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra6ColumnESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra9TombstoneESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra9TombstoneESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra9TombstoneESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra9TombstoneESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra9TombstoneESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra14ExpiringColumnESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra14ExpiringColumnESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra14ExpiringColumnESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra14ExpiringColumnESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra14ExpiringColumnESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1

@_ZN7rocksdb9cassandra6ColumnC1EaaliPKc = unnamed_addr alias void (ptr, i8, i8, i64, i32, ptr), ptr @_ZN7rocksdb9cassandra6ColumnC2EaaliPKc
@_ZN7rocksdb9cassandra14ExpiringColumnC1EaaliPKci = unnamed_addr alias void (ptr, i8, i8, i64, i32, ptr, i32), ptr @_ZN7rocksdb9cassandra14ExpiringColumnC2EaaliPKci
@_ZN7rocksdb9cassandra9TombstoneC1Eaail = unnamed_addr alias void (ptr, i8, i8, i32, i64), ptr @_ZN7rocksdb9cassandra9TombstoneC2Eaail
@_ZN7rocksdb9cassandra8RowValueC1Eil = unnamed_addr alias void (ptr, i32, i64), ptr @_ZN7rocksdb9cassandra8RowValueC2Eil
@_ZN7rocksdb9cassandra8RowValueC1ESt6vectorISt10shared_ptrINS0_10ColumnBaseEESaIS5_EEl = unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN7rocksdb9cassandra8RowValueC2ESt6vectorISt10shared_ptrINS0_10ColumnBaseEESaIS5_EEl

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7rocksdb9cassandra10ColumnBaseC2Eaa(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(10) initializes((0, 10)) %0, i8 noundef signext %1, i8 noundef signext %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7rocksdb9cassandra10ColumnBaseE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %1, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %2, ptr %i.b, align 1, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZNK7rocksdb9cassandra10ColumnBase4SizeEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  ret i64 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext i8 @_ZNK7rocksdb9cassandra10ColumnBase4MaskEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !20
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext i8 @_ZNK7rocksdb9cassandra10ColumnBase5IndexEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb9cassandra10ColumnBase9SerializeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27   ; 5 uses
  %i.e = icmp eq i64 %i.d, 9223372036854775807
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.a
  %i.f = add nsw i64 %i.d, 1                      ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.j = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.h, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.f, %i.l
  br i1 %.not.i.i.i, label %bb.c, label %_ZN7rocksdb9cassandra9SerializeIaEEvT_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.d, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !28
  br label %_ZN7rocksdb9cassandra9SerializeIaEEvT_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN7rocksdb9cassandra9SerializeIaEEvT_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, %bb.c
  %i.m = phi ptr [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %.pre.i, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.d
  store i8 %i.b, ptr %i.n, align 1, !tbaa !29
  store i64 %i.f, ptr %i.c, align 8, !tbaa !27
  %i.o = load ptr, ptr %1, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store i8 0, ptr %i.p, align 1, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !21
  %i.s = load i64, ptr %i.c, align 8, !tbaa !27   ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775807
  br i1 %i.t, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3

bb.d:                                             ; preds = %_ZN7rocksdb9cassandra9SerializeIaEEvT_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3: ; preds = %_ZN7rocksdb9cassandra9SerializeIaEEvT_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.u = add nsw i64 %i.s, 1                      ; 3 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.h
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3
  %i.x = icmp ult i64 %i.s, 16
  tail call void @llvm.assume(i1 %i.x)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3
  %i.y = load i64, ptr %i.h, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i5: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8
  %i.z = phi i64 [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8 ]
  %.not.i.i.i6 = icmp ugt i64 %i.u, %i.z
  br i1 %.not.i.i.i6, label %bb.e, label %_ZN7rocksdb9cassandra9SerializeIaEEvT_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit9

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i5
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.s, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i7 = load ptr, ptr %1, align 8, !tbaa !28
  br label %_ZN7rocksdb9cassandra9SerializeIaEEvT_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit9

_ZN7rocksdb9cassandra9SerializeIaEEvT_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit9: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i5, %bb.e
  %i.aa = phi ptr [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i5 ], [ %.pre.i7, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  store i8 %i.r, ptr %i.ab, align 1, !tbaa !29
  store i64 %i.u, ptr %i.c, align 8, !tbaa !27
  %i.ac = load ptr, ptr %1, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  store i8 0, ptr %i.ad, align 1, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb9cassandra10ColumnBase11DeserializeEPKcm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 16)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.0", align 16 ; 4 uses
  %4 = alloca %"class.std::shared_ptr.3", align 16 ; 4 uses
  %5 = alloca %"class.std::shared_ptr.6", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.b = load i8, ptr %i.a, align 1, !tbaa !29    ; 2 uses
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZNSt12__shared_ptrIN7rocksdb9cassandra9TombstoneELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb9cassandra9TombstoneELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN7rocksdb9cassandra9Tombstone11DeserializeEPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.0") align 8 %3, ptr noundef nonnull %1, i64 noundef %2)
  %i.d = load <2 x ptr>, ptr %3, align 16, !tbaa !30
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i8 %i.b, 2
  %.not9 = icmp eq i8 %i.e, 0
  br i1 %.not9, label %_ZNSt12__shared_ptrIN7rocksdb9cassandra6ColumnELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt12__shared_ptrIN7rocksdb9cassandra14ExpiringColumnELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb9cassandra14ExpiringColumnELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN7rocksdb9cassandra14ExpiringColumn11DeserializeEPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.3") align 8 %4, ptr noundef nonnull %1, i64 noundef %2)
  %i.f = load <2 x ptr>, ptr %4, align 16, !tbaa !30
  store <2 x ptr> %i.f, ptr %0, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.c

_ZNSt12__shared_ptrIN7rocksdb9cassandra6ColumnELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN7rocksdb9cassandra6Column11DeserializeEPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.6") align 8 %5, ptr noundef nonnull %1, i64 noundef %2)
  %i.g = load <2 x ptr>, ptr %5, align 16, !tbaa !30
  store <2 x ptr> %i.g, ptr %0, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN7rocksdb9cassandra6ColumnELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN7rocksdb9cassandra14ExpiringColumnELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN7rocksdb9cassandra9TombstoneELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb9cassandra9Tombstone11DeserializeEPKcm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.0") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 %2         ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !29
  %i.c = getelementptr i8, ptr %i.a, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !29
  %i.e = getelementptr i8, ptr %i.a, i64 2
  %i.f = load i32, ptr %i.e, align 1
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.f)
  %i.h = getelementptr i8, ptr %i.a, i64 6
  %3 = load <8 x i8>, ptr %i.h, align 1, !tbaa !29
  %4 = zext <8 x i8> %3 to <8 x i64>
  %5 = shl nuw <8 x i64> %4, <i64 56, i64 48, i64 40, i64 32, i64 24, i64 16, i64 8, i64 0>
  %i.i = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  store ptr null, ptr %0, align 8, !tbaa !35, !alias.scope !99
  %i.j = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25, !noalias !100 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 1, ptr %i.k, align 8, !tbaa !37, !noalias !99
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 1, ptr %i.l, align 4, !tbaa !38, !noalias !99
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra9TombstoneESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.j, align 8, !tbaa !18, !noalias !99
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  invoke void @_ZN7rocksdb9cassandra9TombstoneC1Eaail(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 noundef signext %i.b, i8 noundef signext %i.d, i32 noundef %i.g, i64 noundef %i.i)
          to label %_ZSt11make_sharedIN7rocksdb9cassandra9TombstoneEJRaS3_RiRlEESt10shared_ptrIT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra9TombstoneESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i, !noalias !99

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra9TombstoneESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i: ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 40) #26, !noalias !99
  resume { ptr, i32 } %i.n

_ZSt11make_sharedIN7rocksdb9cassandra9TombstoneEJRaS3_RiRlEESt10shared_ptrIT_EDpOT0_.exit: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.o, align 8, !tbaa !39, !alias.scope !99
  store ptr %i.m, ptr %0, align 8, !tbaa !40, !alias.scope !99
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7rocksdb9cassandra9TombstoneELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !38
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !0
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !0
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !41
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !42

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb9cassandra14ExpiringColumn11DeserializeEPKcm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.3") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 %2         ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !29
  %i.c = getelementptr i8, ptr %i.a, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !29
  %i.e = getelementptr i8, ptr %i.a, i64 2
  %3 = load <8 x i8>, ptr %i.e, align 1, !tbaa !29
  %4 = zext <8 x i8> %3 to <8 x i64>
  %5 = shl nuw <8 x i64> %4, <i64 56, i64 48, i64 40, i64 32, i64 24, i64 16, i64 8, i64 0>
  %i.f = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %5)
  %i.g = getelementptr i8, ptr %i.a, i64 10
  %i.h = load i32, ptr %i.g, align 1
  %i.i = tail call i32 @llvm.bswap.i32(i32 %i.h)  ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 %2
  %i.k = getelementptr i8, ptr %i.j, i64 14       ; 2 uses
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 1
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !105
  %i.p = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25, !noalias !106 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 1, ptr %i.q, align 8, !tbaa !37, !noalias !105
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 1, ptr %i.r, align 4, !tbaa !38, !noalias !105
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra14ExpiringColumnESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.p, align 8, !tbaa !18, !noalias !105
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  invoke void @_ZN7rocksdb9cassandra14ExpiringColumnC1EaaliPKci(ptr noundef nonnull align 8 dereferenceable(44) %i.s, i8 noundef signext %i.b, i8 noundef signext %i.d, i64 noundef %i.f, i32 noundef %i.i, ptr noundef nonnull %i.k, i32 noundef %i.o)
          to label %_ZSt11make_sharedIN7rocksdb9cassandra14ExpiringColumnEJRaS3_RlRiRPKcS5_EESt10shared_ptrIT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra14ExpiringColumnESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i, !noalias !105

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra14ExpiringColumnESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i: ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 64) #26, !noalias !105
  resume { ptr, i32 } %i.t

_ZSt11make_sharedIN7rocksdb9cassandra14ExpiringColumnEJRaS3_RlRiRPKcS5_EESt10shared_ptrIT_EDpOT0_.exit: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.u, align 8, !tbaa !39, !alias.scope !105
  store ptr %i.s, ptr %0, align 8, !tbaa !107, !alias.scope !105
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7rocksdb9cassandra14ExpiringColumnELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !38
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !0
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !0
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !41
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !42

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb9cassandra6Column11DeserializeEPKcm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.6") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 %2         ; 5 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !29
  %i.c = getelementptr i8, ptr %i.a, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !29
  %i.e = getelementptr i8, ptr %i.a, i64 2
  %3 = load <8 x i8>, ptr %i.e, align 1, !tbaa !29
  %4 = zext <8 x i8> %3 to <8 x i64>
  %5 = shl nuw <8 x i64> %4, <i64 56, i64 48, i64 40, i64 32, i64 24, i64 16, i64 8, i64 0>
  %i.f = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %5)
  %i.g = getelementptr i8, ptr %i.a, i64 10
  %i.h = load i32, ptr %i.g, align 1
  %i.i = tail call i32 @llvm.bswap.i32(i32 %i.h)
  %i.j = getelementptr i8, ptr %i.a, i64 14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  store ptr null, ptr %0, align 8, !tbaa !48, !alias.scope !112
  %i.k = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #25, !noalias !113 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 1, ptr %i.l, align 8, !tbaa !37, !noalias !112
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 1, ptr %i.m, align 4, !tbaa !38, !noalias !112
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra6ColumnESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.k, align 8, !tbaa !18, !noalias !112
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  invoke void @_ZN7rocksdb9cassandra6ColumnC1EaaliPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.n, i8 noundef signext %i.b, i8 noundef signext %i.d, i64 noundef %i.f, i32 noundef %i.i, ptr noundef %i.j)
          to label %_ZSt11make_sharedIN7rocksdb9cassandra6ColumnEJRaS3_RlRiPKcEESt10shared_ptrIT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra6ColumnESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !112

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra6ColumnESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 56) #26, !noalias !112
  resume { ptr, i32 } %i.o

_ZSt11make_sharedIN7rocksdb9cassandra6ColumnEJRaS3_RlRiPKcEESt10shared_ptrIT_EDpOT0_.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.p, align 8, !tbaa !39, !alias.scope !112
  store ptr %i.n, ptr %0, align 8, !tbaa !114, !alias.scope !112
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7rocksdb9cassandra6ColumnC2EaaliPKc(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 10), (16, 28), (32, 40)) %0, i8 noundef signext %1, i8 noundef signext %2, i64 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %1, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %2, ptr %i.b, align 1, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7rocksdb9cassandra6ColumnE, i64 16), ptr %0, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.c, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %4, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.e, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK7rocksdb9cassandra6Column9TimestampEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 -2147483634, 2147483662) i64 @_ZNK7rocksdb9cassandra6Column4SizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51
  %i.c = sext i32 %i.b to i64
  %i.d = add nsw i64 %i.c, 14
  ret i64 %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb9cassandra6Column9SerializeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNK7rocksdb9cassandra10ColumnBase9SerializeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50
  tail call void @_ZN7rocksdb9cassandra9SerializeIlEEvT_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %i.b, ptr noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51
  tail call void @_ZN7rocksdb9cassandra9SerializeIiEEvT_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.d, ptr noundef %1)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 3 uses
  %i.g = load i32, ptr %i.c, align 8, !tbaa !51   ; 3 uses
  %i.h = sext i32 %i.g to i64                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27   ; 5 uses
  %i.k = sub i64 9223372036854775807, %i.j
  %i.l = icmp ult i64 %i.k, %i.h
  br i1 %i.l, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.m = add i64 %i.j, %i.h                       ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.q = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.r = load i64, ptr %i.o, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.m, %i.s
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i32 %i.g, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.j ; 2 uses
  %cond.i.i = icmp eq i32 %i.g, 1
  br i1 %cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load i8, ptr %i.f, align 1, !tbaa !29
  store i8 %i.u, ptr %i.t, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.j, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.h)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.m, ptr %i.i, align 8, !tbaa !27
  %i.v = load ptr, ptr %1, align 8, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.m
  store i8 0, ptr %i.w, align 1, !tbaa !29
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb9cassandra9SerializeIlEEvT_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i64 noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 16 uses
  %i.c = lshr i64 %0, 56
  %i.d = trunc nuw i64 %i.c to i8
  %i.e = load i64, ptr %i.a, align 8, !tbaa !27   ; 5 uses
  %i.f = icmp eq i64 %i.e, 9223372036854775807
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit, %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.g = add nsw i64 %i.e, 1                      ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.j = icmp ult i64 %i.e, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.k = load i64, ptr %i.b, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.g, %i.l
  br i1 %.not.i.i, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.e, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre = load ptr, ptr %1, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.c
  %i.m = phi ptr [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %.pre, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.e
  store i8 %i.d, ptr %i.n, align 1, !tbaa !29
  store i64 %i.g, ptr %i.a, align 8, !tbaa !27
  %i.o = load ptr, ptr %1, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !29
  %i.q = lshr i64 %0, 48
  %i.r = trunc i64 %i.q to i8
  %i.s = load i64, ptr %i.a, align 8, !tbaa !27   ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775807
  br i1 %i.t, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  %i.u = add nsw i64 %i.s, 1                      ; 3 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.b
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.1
end_hunk_0
begin_hunk_1_@_ZNK7rocksdb9cassandra8RowValue16RemoveTombstonesEi:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bq = load ptr, ptr %4, align 16, !tbaa !77   ; 3 uses
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !76 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bq, %i.br
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.v, %_ZSt8_DestroyISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cj, %_ZSt8_DestroyISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEEvPT_.exit.i.i.i ], [ %i.bq, %bb.v ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !39 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEEvPT_.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bu, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !38
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #24, !inline_history !2
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #24, !inline_history !2
  br label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEEvPT_.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = add nsw i32 %i.bx, -1
  store i32 %i.cg, ptr %i.bu, align 8, !tbaa !41
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ch = atomicrmw volatile add ptr %i.bu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bx, %bb.z ], [ %i.ch, %bb.aa ]
  %i.ci = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ci, label %bb.ab, label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEEvPT_.exit.i.i.i, !prof !42

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEEvPT_.exit.i.i.i: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.x, %.lr.ph.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.cj, %i.br
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 16, !tbaa !77
  br label %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.v
  %i.ck = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.bq, %bb.v ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_EvT_S6_RSaIT0_E.exit.i
  %i.cl = load ptr, ptr %i.m, align 16, !tbaa !68
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.co) #26
  br label %_ZNSt6vectorISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_EvT_S6_RSaIT0_E.exit.i, %bb.ac
  %i.cp = load ptr, ptr %3, align 16, !tbaa !77   ; 3 uses
  %i.cq = load ptr, ptr %i.l, align 8, !tbaa !76  ; 2 uses
  %.not4.i.i.i16 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not4.i.i.i16, label %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_EvT_S6_RSaIT0_E.exit.i27, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEEvPT_.exit.i.i.i23
  %.05.i.i.i18 = phi ptr [ %i.di, %_ZSt8_DestroyISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEEvPT_.exit.i.i.i23 ], [ %i.cp, %_ZNSt6vectorISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EED2Ev.exit ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i18, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !39 ; 8 uses
  %.not.i.i.i.i.i.i.i19 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i.i.i19, label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEEvPT_.exit.i.i.i23, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i17
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cu = load atomic i64, ptr %i.ct acquire, align 8 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 4294967297
  %i.cw = trunc i64 %i.cu to i32                  ; 2 uses
  br i1 %i.cv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.ct, align 8, !tbaa !37
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !38
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #24, !inline_history !2
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #24, !inline_history !2
  br label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEEvPT_.exit.i.i.i23

bb.af:                                            ; preds = %bb.ad
  %i.de = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i.i.i.i.i20 = icmp eq i8 %i.de, 0
  br i1 %.not.i.i.i.i.i.i.i.i20, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.df = add nsw i32 %i.cw, -1
  store i32 %i.df, ptr %i.ct, align 8, !tbaa !41
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i21

bb.ah:                                            ; preds = %bb.af
  %i.dg = atomicrmw volatile add ptr %i.ct, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i21

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i21: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i.i.i.i22 = phi i32 [ %i.cw, %bb.ag ], [ %i.dg, %bb.ah ]
  %i.dh = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i22, 1
  br i1 %i.dh, label %bb.ai, label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEEvPT_.exit.i.i.i23, !prof !42

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i21
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEEvPT_.exit.i.i.i23

_ZSt8_DestroyISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEEvPT_.exit.i.i.i23: ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i21, %bb.ae, %.lr.ph.i.i.i17
  %i.di = getelementptr inbounds nuw i8, ptr %.05.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.di, %i.cq
  br i1 %.not.i.i.i24, label %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i25, label %.lr.ph.i.i.i17, !llvm.loop !3

_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i25: ; preds = %_ZSt8_DestroyISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEEvPT_.exit.i.i.i23
  %.pr.i26 = load ptr, ptr %3, align 16, !tbaa !77
  br label %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_EvT_S6_RSaIT0_E.exit.i27

_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_EvT_S6_RSaIT0_E.exit.i27: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i25, %_ZNSt6vectorISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EED2Ev.exit
  %i.dj = phi ptr [ %.pr.i26, %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i25 ], [ %i.cp, %_ZNSt6vectorISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i28 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i1.i28, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EED2Ev.exit29, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_EvT_S6_RSaIT0_E.exit.i27
  %i.dk = load ptr, ptr %i.n, align 16, !tbaa !68
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.dj to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.dn) #26
  br label %_ZNSt6vectorISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EED2Ev.exit29

_ZNSt6vectorISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EED2Ev.exit29: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_EvT_S6_RSaIT0_E.exit.i27, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.ak:                                            ; preds = %._crit_edge
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #24
  br label %bb.al

bb.al:                                            ; preds = %bb.h, %bb.ak
  %.pn.pn = phi { ptr, i32 } [ %i.do, %bb.ak ], [ %i.ae, %bb.h ]
  call void @_ZNSt6vectorISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK7rocksdb9cassandra8RowValue5EmptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = icmp eq ptr %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb9cassandra8RowValue11DeserializeEPKcm(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::cassandra::RowValue") align 8 %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.0", align 16 ; 5 uses
  %4 = alloca %"class.std::shared_ptr.3", align 16 ; 5 uses
  %5 = alloca %"class.std::shared_ptr.6", align 16 ; 5 uses
  %6 = alloca %"class.std::vector", align 16      ; 14 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 12 uses
  %8 = alloca %"class.std::vector", align 16      ; 7 uses
  %i.a = icmp eq i64 %2, 12
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 4
  %9 = load <8 x i8>, ptr %i.b, align 1, !tbaa !29
  %10 = zext <8 x i8> %9 to <8 x i64>
  %11 = shl nuw <8 x i64> %10, <i64 56, i64 48, i64 40, i64 32, i64 24, i64 16, i64 8, i64 0>
  %i.c = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %11)
  %i.d = load i32, ptr %1, align 1
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)
  tail call void @_ZN7rocksdb9cassandra8RowValueC1Eil(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.e, i64 noundef %i.c)
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.f = icmp ugt i64 %2, 12
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN7rocksdb9cassandra10ColumnBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.01951 = phi i64 [ 12, %.lr.ph ], [ %i.y, %_ZNSt12__shared_ptrIN7rocksdb9cassandra10ColumnBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 5 uses
  %.050 = phi i64 [ 0, %.lr.ph ], [ %.sroa.speculated, %_ZNSt12__shared_ptrIN7rocksdb9cassandra10ColumnBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.01951
  %i.k = load i8, ptr %i.j, align 1, !tbaa !29, !noalias !142 ; 2 uses
  %i.l = and i8 %i.k, 1
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %bb.e, label %_ZNSt12__shared_ptrIN7rocksdb9cassandra9TombstoneELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN7rocksdb9cassandra9TombstoneELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !142
  invoke void @_ZN7rocksdb9cassandra9Tombstone11DeserializeEPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.0") align 8 %3, ptr noundef nonnull %1, i64 noundef %.01951)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %_ZNSt12__shared_ptrIN7rocksdb9cassandra9TombstoneELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.m = load <2 x ptr>, ptr %3, align 16, !tbaa !30, !noalias !142
  %i.n = load ptr, ptr %3, align 16, !tbaa !35, !noalias !142
  store <2 x ptr> %i.m, ptr %7, align 16, !tbaa !30, !alias.scope !142
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !142
  br label %_ZN7rocksdb9cassandra10ColumnBase11DeserializeEPKcm.exit

bb.e:                                             ; preds = %bb.d
  %i.o = and i8 %i.k, 2
  %.not9.i = icmp eq i8 %i.o, 0
  br i1 %.not9.i, label %_ZNSt12__shared_ptrIN7rocksdb9cassandra6ColumnELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %_ZNSt12__shared_ptrIN7rocksdb9cassandra14ExpiringColumnELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN7rocksdb9cassandra14ExpiringColumnELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !142
  invoke void @_ZN7rocksdb9cassandra14ExpiringColumn11DeserializeEPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.3") align 8 %4, ptr noundef nonnull %1, i64 noundef %.01951)
          to label %.noexc24 unwind label %bb.p

.noexc24:                                         ; preds = %_ZNSt12__shared_ptrIN7rocksdb9cassandra14ExpiringColumnELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.p = load <2 x ptr>, ptr %4, align 16, !tbaa !30, !noalias !142
  %i.q = load ptr, ptr %4, align 16, !tbaa !45, !noalias !142
  store <2 x ptr> %i.p, ptr %7, align 16, !tbaa !30, !alias.scope !142
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !142
  br label %_ZN7rocksdb9cassandra10ColumnBase11DeserializeEPKcm.exit

_ZNSt12__shared_ptrIN7rocksdb9cassandra6ColumnELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !142
  invoke void @_ZN7rocksdb9cassandra6Column11DeserializeEPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.6") align 8 %5, ptr noundef nonnull %1, i64 noundef %.01951)
          to label %.noexc25 unwind label %bb.p

.noexc25:                                         ; preds = %_ZNSt12__shared_ptrIN7rocksdb9cassandra6ColumnELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.r = load <2 x ptr>, ptr %5, align 16, !tbaa !30, !noalias !142
  %i.s = load ptr, ptr %5, align 16, !tbaa !48, !noalias !142
  store <2 x ptr> %i.r, ptr %7, align 16, !tbaa !30, !alias.scope !142
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !142
  br label %_ZN7rocksdb9cassandra10ColumnBase11DeserializeEPKcm.exit

_ZN7rocksdb9cassandra10ColumnBase11DeserializeEPKcm.exit: ; preds = %.noexc25, %.noexc24, %.noexc
  %i.t = phi ptr [ %i.s, %.noexc25 ], [ %i.q, %.noexc24 ], [ %i.n, %.noexc ] ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(10) %i.t)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %_ZN7rocksdb9cassandra10ColumnBase11DeserializeEPKcm.exit
  %i.y = add i64 %i.x, %.01951                    ; 2 uses
  %i.z = load ptr, ptr %7, align 16, !tbaa !72    ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(10) %i.z)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %.050, i64 %i.ad) ; 2 uses
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !76  ; 5 uses
  %i.af = load ptr, ptr %i.i, align 16, !tbaa !68
  %.not.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr null, ptr %i.ag, align 8, !tbaa !39
  %i.ah = load <2 x ptr>, ptr %7, align 16, !tbaa !30
  store ptr null, ptr %i.g, align 8, !tbaa !39
  store <2 x ptr> %i.ah, ptr %i.ae, align 8, !tbaa !30
  store ptr null, ptr %7, align 16, !tbaa !72
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ai, ptr %i.h, align 8, !tbaa !76
  br label %_ZNSt6vectorISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EE9push_backEOS4_.exit

bb.i:                                             ; preds = %bb.g
  invoke void @_ZNSt6vectorISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNSt6vectorISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EE9push_backEOS4_.exit unwind label %bb.q

_ZNSt6vectorISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.h, %bb.i
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !39  ; 8 uses
  %.not.i.i27 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i27, label %_ZNSt12__shared_ptrIN7rocksdb9cassandra10ColumnBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EE9push_backEOS4_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ak, align 8, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !38
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #24, !inline_history !4
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #24, !inline_history !4
  br label %_ZNSt12__shared_ptrIN7rocksdb9cassandra10ColumnBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !41
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.an, %bb.m ], [ %i.ax, %bb.n ]
  %i.ay = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ay, label %bb.o, label %_ZNSt12__shared_ptrIN7rocksdb9cassandra10ColumnBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !42

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #24
  br label %_ZNSt12__shared_ptrIN7rocksdb9cassandra10ColumnBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb9cassandra10ColumnBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EE9push_backEOS4_.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.az = icmp ult i64 %i.y, %2
  br i1 %i.az, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !141

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIN7rocksdb9cassandra6ColumnELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNSt12__shared_ptrIN7rocksdb9cassandra14ExpiringColumnELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNSt12__shared_ptrIN7rocksdb9cassandra9TombstoneELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.q:                                             ; preds = %bb.i, %_ZN7rocksdb9cassandra10ColumnBase11DeserializeEPKcm.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.q ], [ %i.bc, %bb.r ]
  call void @_ZNSt12__shared_ptrIN7rocksdb9cassandra10ColumnBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.s ], [ %i.ba, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.ak

._crit_edge.loopexit:                             ; preds = %_ZNSt12__shared_ptrIN7rocksdb9cassandra10ColumnBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = load <2 x ptr>, ptr %6, align 16, !tbaa !67
  %.pre54 = load ptr, ptr %i.i, align 16, !tbaa !68
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.be = phi ptr [ null, %bb.c ], [ %.pre54, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %.sroa.speculated, %._crit_edge.loopexit ]
  %i.bf = phi <2 x ptr> [ splat (ptr null), %bb.c ], [ %i.bd, %._crit_edge.loopexit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x ptr> %i.bf, ptr %8, align 16, !tbaa !67
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIaSt4pairIKaSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEESt10_Select1stIS7_ESt4lessIaESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_:bb.a
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29  ; 2 uses
  %i.an = icmp slt i8 %i.x, %i.am                 ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !86 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !207

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIaSt4pairIKaSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEESt10_Select1stIS7_ESt4lessIaESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #27 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i8, ptr %.phi.trans.insert78, align 1, !tbaa !29
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i8 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp slt i8 %i.aq, %i.x                 ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIaSt4pairIKaSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEESt10_Select1stIS7_ESt4lessIaESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp slt i8 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIaSt4pairIKaSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEESt10_Select1stIS7_ESt4lessIaESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !86 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIaSt4pairIKaSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEESt10_Select1stIS7_ESt4lessIaESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #27 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !29
  %i.az = icmp slt i8 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !90
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIaSt4pairIKaSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEESt10_Select1stIS7_ESt4lessIaESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !86 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !29  ; 2 uses
  %i.bg = icmp slt i8 %i.x, %i.bf                 ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !86 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !207

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !84
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIaSt4pairIKaSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEESt10_Select1stIS7_ESt4lessIaESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #27 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !29
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i8 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp slt i8 %i.bl, %i.x                 ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIaSt4pairIKaSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEESt10_Select1stIS7_ESt4lessIaESaIS7_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIaSt4pairIKaSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEESt10_Select1stIS7_ESt4lessIaESaIS7_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIaSt4pairIKaSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEESt10_Select1stIS7_ESt4lessIaESaIS7_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIaSt4pairIKaSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEESt10_Select1stIS7_ESt4lessIaESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !38
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !7
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !7
  br label %_ZNSt8_Rb_treeIaSt4pairIKaSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEESt10_Select1stIS7_ESt4lessIaESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !41
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt8_Rb_treeIaSt4pairIKaSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEESt10_Select1stIS7_ESt4lessIaESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, !prof !42

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24
  br label %_ZNSt8_Rb_treeIaSt4pairIKaSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEESt10_Select1stIS7_ESt4lessIaESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit

_ZNSt8_Rb_treeIaSt4pairIKaSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEESt10_Select1stIS7_ESt4lessIaESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt8_Rb_treeIaSt4pairIKaSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEESt10_Select1stIS7_ESt4lessIaESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v8i64(<8 x i64>) #21

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { inlinehint mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { noreturn "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { noinline noreturn nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nobuiltin nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress noinline nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { noreturn }
attributes #24 = { nounwind }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{null, null}
!1 = distinct !{ptr @_ZNSt12__shared_ptrIN7rocksdb9cassandra14ExpiringColumnELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN7rocksdb9cassandra10ColumnBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3 = distinct !{!3, !78}
!4 = distinct !{ptr @_ZNSt12__shared_ptrIN7rocksdb9cassandra10ColumnBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5 = distinct !{ptr @_ZNSt12__shared_ptrIN7rocksdb9cassandra9TombstoneELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!6 = distinct !{ptr @_ZN7rocksdb9cassandra8RowValueaSEOS1_, null, null, ptr @_ZNSt6vectorISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN7rocksdb9cassandra10ColumnBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN7rocksdb9cassandra10ColumnBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"frame-pointer", i32 4}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"vtable pointer", !12, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"_ZTSN7rocksdb9cassandra10ColumnBaseE", !13, i64 8, !13, i64 9}
!20 = !{!19, !13, i64 8}
!21 = !{!19, !13, i64 9}
!22 = !{!"any pointer", !13, i64 0}
!23 = !{!"p1 omnipotent char", !22, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!25 = !{!"long", !13, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !25, i64 8, !13, i64 16}
!27 = !{!26, !25, i64 8}
!28 = !{!26, !23, i64 0}
!29 = !{!13, !13, i64 0}
!30 = !{!22, !22, i64 0}
!31 = !{!"p1 _ZTSN7rocksdb9cassandra9TombstoneE", !22, i64 0}
!32 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0}
!33 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !32, i64 0}
!34 = !{!"_ZTSSt12__shared_ptrIN7rocksdb9cassandra9TombstoneELN9__gnu_cxx12_Lock_policyE2EE", !31, i64 0, !33, i64 8}
!35 = !{!34, !31, i64 0}
!36 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 8, !14, i64 12}
!37 = !{!36, !14, i64 8}
!38 = !{!36, !14, i64 12}
!39 = !{!33, !32, i64 0}
!40 = !{!31, !31, i64 0}
!41 = !{!14, !14, i64 0}
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = !{!"p1 _ZTSN7rocksdb9cassandra14ExpiringColumnE", !22, i64 0}
!44 = !{!"_ZTSSt12__shared_ptrIN7rocksdb9cassandra14ExpiringColumnELN9__gnu_cxx12_Lock_policyE2EE", !43, i64 0, !33, i64 8}
!45 = !{!44, !43, i64 0}
!46 = !{!"p1 _ZTSN7rocksdb9cassandra6ColumnE", !22, i64 0}
!47 = !{!"_ZTSSt12__shared_ptrIN7rocksdb9cassandra6ColumnELN9__gnu_cxx12_Lock_policyE2EE", !46, i64 0, !33, i64 8}
!48 = !{!47, !46, i64 0}
!49 = !{!"_ZTSN7rocksdb9cassandra6ColumnE", !19, i64 0, !25, i64 16, !14, i64 24, !23, i64 32}
!50 = !{!49, !25, i64 16}
!51 = !{!49, !14, i64 24}
!52 = !{!49, !23, i64 32}
!53 = !{!"_ZTSN7rocksdb9cassandra14ExpiringColumnE", !49, i64 0, !14, i64 40}
!54 = !{!53, !14, i64 40}
!55 = !{ptr @_ZNK7rocksdb9cassandra14ExpiringColumn9TimePointEv}
!56 = !{!"_ZTSN7rocksdb9cassandra9TombstoneE", !19, i64 0, !14, i64 12, !25, i64 16}
!57 = !{!56, !14, i64 12}
!58 = !{!56, !25, i64 16}
!59 = !{!"p1 _ZTSSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEE", !22, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EE12_Vector_implE", !60, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EE", !61, i64 0}
!63 = !{!"_ZTSSt6vectorISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEESaIS4_EE", !62, i64 0}
!64 = !{!"_ZTSN7rocksdb9cassandra8RowValueE", !14, i64 0, !25, i64 8, !63, i64 16, !25, i64 40}
!65 = !{!64, !14, i64 0}
!66 = !{!64, !25, i64 8}
!67 = !{!59, !59, i64 0}
!68 = !{!60, !59, i64 16}
!69 = !{!64, !25, i64 40}
!70 = !{!"p1 _ZTSN7rocksdb9cassandra10ColumnBaseE", !22, i64 0}
!71 = !{!"_ZTSSt12__shared_ptrIN7rocksdb9cassandra10ColumnBaseELN9__gnu_cxx12_Lock_policyE2EE", !70, i64 0, !33, i64 8}
!72 = !{!71, !70, i64 0}
!73 = !{!"bool", !13, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{ptr @_ZNK7rocksdb9cassandra14ExpiringColumn7ExpiredEv}
!76 = !{!60, !59, i64 8}
!77 = !{!60, !59, i64 0}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"_ZTSSt14_Rb_tree_color", !13, i64 0}
!80 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !22, i64 0}
!81 = !{!"_ZTSSt18_Rb_tree_node_base", !79, i64 0, !80, i64 8, !80, i64 16, !80, i64 24}
!82 = !{!"_ZTSSt15_Rb_tree_header", !81, i64 0, !25, i64 32}
!83 = !{!82, !80, i64 8}
!84 = !{!82, !80, i64 16}
!85 = !{!82, !25, i64 32}
!86 = !{!80, !80, i64 0}
!87 = !{!23, !23, i64 0}
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = !{!"llvm.loop.unroll.runtime.disable"}
!90 = !{!81, !80, i64 24}
!91 = !{!"p1 _ZTSSt8_Rb_treeIaSt4pairIKaSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEESt10_Select1stIS7_ESt4lessIaESaIS7_EE", !22, i64 0}
!92 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKaSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEEE", !22, i64 0}
!93 = !{!"_ZTSNSt8_Rb_treeIaSt4pairIKaSt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEEESt10_Select1stIS7_ESt4lessIaESaIS7_EE10_Auto_nodeE", !91, i64 0, !92, i64 8}
!94 = !{!93, !92, i64 8}
!95 = distinct !{!95, !"_ZSt11make_sharedIN7rocksdb9cassandra9TombstoneEJRaS3_RiRlEESt10shared_ptrIT_EDpOT0_"}
!96 = distinct !{!96, !95, !"_ZSt11make_sharedIN7rocksdb9cassandra9TombstoneEJRaS3_RiRlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!97 = distinct !{!97, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra9TombstoneESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_"}
!98 = distinct !{!98, !97, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra9TombstoneESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_: argument 0"}
!99 = !{!96}
!100 = !{!98, !96}
!101 = distinct !{!101, !"_ZSt11make_sharedIN7rocksdb9cassandra14ExpiringColumnEJRaS3_RlRiRPKcS5_EESt10shared_ptrIT_EDpOT0_"}
!102 = distinct !{!102, !101, !"_ZSt11make_sharedIN7rocksdb9cassandra14ExpiringColumnEJRaS3_RlRiRPKcS5_EESt10shared_ptrIT_EDpOT0_: argument 0"}
!103 = distinct !{!103, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra14ExpiringColumnESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_"}
!104 = distinct !{!104, !103, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra14ExpiringColumnESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_: argument 0"}
!105 = !{!102}
!106 = !{!104, !102}
!107 = !{!43, !43, i64 0}
!108 = distinct !{!108, !"_ZSt11make_sharedIN7rocksdb9cassandra6ColumnEJRaS3_RlRiPKcEESt10shared_ptrIT_EDpOT0_"}
!109 = distinct !{!109, !108, !"_ZSt11make_sharedIN7rocksdb9cassandra6ColumnEJRaS3_RlRiPKcEESt10shared_ptrIT_EDpOT0_: argument 0"}
!110 = distinct !{!110, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra6ColumnESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_"}
!111 = distinct !{!111, !110, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra6ColumnESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_: argument 0"}
!112 = !{!109}
!113 = !{!111, !109}
!114 = !{!46, !46, i64 0}
!115 = distinct !{!115, !"_ZSt11make_sharedIN7rocksdb9cassandra9TombstoneEJaaRiRlEESt10shared_ptrIT_EDpOT0_"}
!116 = distinct !{!116, !115, !"_ZSt11make_sharedIN7rocksdb9cassandra9TombstoneEJaaRiRlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!117 = distinct !{!117, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra9TombstoneESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_"}
!118 = distinct !{!118, !117, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN7rocksdb9cassandra9TombstoneESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_: argument 0"}
!119 = !{!116}
!120 = !{!118, !116}
!121 = distinct !{!121, !"_ZSt19static_pointer_castIN7rocksdb9cassandra14ExpiringColumnENS1_10ColumnBaseEESt10shared_ptrIT_ERKS4_IT0_E"}
!122 = distinct !{!122, !121, !"_ZSt19static_pointer_castIN7rocksdb9cassandra14ExpiringColumnENS1_10ColumnBaseEESt10shared_ptrIT_ERKS4_IT0_E: argument 0"}
!123 = !{!122}
!124 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN7rocksdb9cassandra10ColumnBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!125 = distinct !{!125, !"_ZSt19static_pointer_castIN7rocksdb9cassandra14ExpiringColumnENS1_10ColumnBaseEESt10shared_ptrIT_ERKS4_IT0_E"}
!126 = distinct !{!126, !125, !"_ZSt19static_pointer_castIN7rocksdb9cassandra14ExpiringColumnENS1_10ColumnBaseEESt10shared_ptrIT_ERKS4_IT0_E: argument 0"}
!127 = distinct !{!127, !"_ZNK7rocksdb9cassandra14ExpiringColumn11ToTombstoneEv"}
!128 = distinct !{!128, !127, !"_ZNK7rocksdb9cassandra14ExpiringColumn11ToTombstoneEv: argument 0"}
!129 = distinct !{!129, !"_ZSt11make_sharedIN7rocksdb9cassandra9TombstoneEJaaRiRlEESt10shared_ptrIT_EDpOT0_"}
!130 = distinct !{!130, !129, !"_ZSt11make_sharedIN7rocksdb9cassandra9TombstoneEJaaRiRlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!131 = !{!126}
!132 = !{!128}
!133 = !{ptr @_ZNK7rocksdb9cassandra14ExpiringColumn11ToTombstoneEv}
!134 = !{!130}
!135 = !{!130, !128}
!136 = distinct !{!136, !"_ZSt19static_pointer_castIN7rocksdb9cassandra9TombstoneENS1_10ColumnBaseEESt10shared_ptrIT_ERKS4_IT0_E"}
!137 = distinct !{!137, !136, !"_ZSt19static_pointer_castIN7rocksdb9cassandra9TombstoneENS1_10ColumnBaseEESt10shared_ptrIT_ERKS4_IT0_E: argument 0"}
!138 = !{!137}
!139 = distinct !{!139, !"_ZN7rocksdb9cassandra10ColumnBase11DeserializeEPKcm"}
!140 = distinct !{!140, !139, !"_ZN7rocksdb9cassandra10ColumnBase11DeserializeEPKcm: argument 0"}
!141 = distinct !{!141, !78}
!142 = !{!140}
!143 = distinct !{!143, !78}
!144 = distinct !{!144, !78}
!145 = distinct !{null, null, null, null}
!146 = !{!"p1 _ZTSN7rocksdb9cassandra8RowValueE", !22, i64 0}
!147 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb9cassandra8RowValueESaIS2_EE17_Vector_impl_dataE", !146, i64 0, !146, i64 8, !146, i64 16}
!148 = !{!147, !146, i64 8}
!149 = !{!147, !146, i64 0}
!150 = !{!82, !79, i64 0}
!151 = !{!82, !80, i64 24}
!152 = !{!146, !146, i64 0}
!153 = distinct !{null}
!154 = distinct !{!154, !"_ZSt19__relocate_object_aISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_SaIS4_EEvPT_PT0_RT1_"}
!155 = distinct !{!155, !154, !"_ZSt19__relocate_object_aISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!156 = distinct !{!156, !154, !"_ZSt19__relocate_object_aISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!157 = distinct !{!157, !78, !88, !89}
!158 = distinct !{!158, !78, !88}
!159 = distinct !{!159, !"_ZSt19__relocate_object_aISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_SaIS4_EEvPT_PT0_RT1_"}
!160 = distinct !{!160, !159, !"_ZSt19__relocate_object_aISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!161 = distinct !{!161, !159, !"_ZSt19__relocate_object_aISt10shared_ptrIN7rocksdb9cassandra10ColumnBaseEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!162 = distinct !{!162, !78, !88, !89}
!163 = distinct !{!163, !78, !88}
!164 = !{!155}
end_hunk_2
