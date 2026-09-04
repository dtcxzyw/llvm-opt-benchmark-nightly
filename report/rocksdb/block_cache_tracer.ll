Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/block_cache_tracer?download=true
inline.NumInlined: 898
inline.NumDeleted: 340
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_:bb.a
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !23
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !16   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !24   ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.t, ptr %0, align 8, !tbaa !16
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !17
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !24
  store ptr %i.u, ptr %i.r, align 8, !tbaa !16
  store i64 0, ptr %i.ab, align 8, !tbaa !24
  store i8 0, ptr %i.u, align 8, !tbaa !17
  br label %bb.l

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.ae = sub i64 9223372036854775807, %i.b
  %i.af = icmp ult i64 %i.ae, %i.d
  br i1 %i.af, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #30
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ag = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ai = phi i64 [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.e, %i.ai
  br i1 %.not.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = load i8, ptr %.pre, align 1, !tbaa !17
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %.pre, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.b, i64 noundef 0, ptr noundef %.pre, i64 noundef %i.d)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.j
  store i64 %i.e, ptr %i.a, align 8, !tbaa !24
  %i.al = load ptr, ptr %1, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.e
  store i8 0, ptr %i.am, align 1, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !23
  %i.ao = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.g
  br i1 %i.ap, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !24  ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.as, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ao, ptr %0, align 8, !tbaa !16
  %i.at = load i64, ptr %i.g, align 8, !tbaa !17
  store i64 %i.at, ptr %i.an, align 8, !tbaa !17
  %.pre18 = load i64, ptr %i.a, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.au = phi i64 [ %i.aq, %bb.k ], [ %.pre18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16 ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !24
  store ptr %i.g, ptr %1, align 8, !tbaa !16
  store i64 0, ptr %i.a, align 8, !tbaa !24
  store i8 0, ptr %i.g, align 8, !tbaa !17
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
  ret void
}

declare void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 0, 4294967297) i64 @_ZN7rocksdb21BlockCacheTraceHelper10GetTableIdERKNS_21BlockCacheTraceRecordE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(185) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !tbaa !22
  %i.c = add i8 %i.b, -3
  %i.d = icmp ult i8 %i.c, -2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp ult i64 %i.f, 4
  %or.cond = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %.0.copyload.i = load i32, ptr %i.i, align 1
  %i.j = zext i32 %.0.copyload.i to i64
  %i.k = add nuw nsw i64 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 0, 72057594037927937) i64 @_ZN7rocksdb21BlockCacheTraceHelper17GetSequenceNumberERKNS_21BlockCacheTraceRecordE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(185) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !tbaa !22    ; 2 uses
  %i.c = add i8 %i.b, -1
  %i.d = icmp ult i8 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ne i8 %i.b, 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp ugt i64 %i.g, 3
  %or.cond.not12 = select i1 %i.e, i1 true, i1 %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = load i8, ptr %i.i, align 8, !range !27
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond10 = select i1 %or.cond.not12, i1 %i.k, i1 false
  br i1 %or.cond10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  %.0.copyload.i.i = load i64, ptr %i.o, align 1
  %i.p = lshr i64 %.0.copyload.i.i, 8
  %i.q = add nuw nsw i64 %i.p, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.q, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN7rocksdb21BlockCacheTraceHelper20GetBlockOffsetInFileERKNS_21BlockCacheTraceRecordE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(185) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 0, ptr %i.a, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 2 uses
  %i.g = call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef %i.c, ptr noundef %i.f, ptr noundef nonnull %i.a) ; 2 uses
  %.not7 = icmp eq ptr %i.g, null
  br i1 %.not7, label %._crit_edge, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit.preheader

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit.preheader: ; preds = %bb.a
  %1 = ptrtoint ptr %i.f to i64
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit:      ; preds = %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit.preheader, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit
  %i.h = phi ptr [ %i.m, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit ], [ %i.g, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit.preheader ] ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %1, %i.i
  %i.k = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 0, ptr %i.a, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.m = call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.h, ptr noundef nonnull %i.l, ptr noundef nonnull %i.a) ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %._crit_edge, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit

._crit_edge:                                      ; preds = %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit, %bb.a
  %.02.lcssa = phi i64 [ 0, %bb.a ], [ %i.k, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.02.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7rocksdb25BlockCacheTraceWriterImplC2EPNS_11SystemClockERKNS_28BlockCacheTraceWriterOptionsEOSt10unique_ptrINS_11TraceWriterESt14default_deleteIS7_EE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) unnamed_addr #9 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7rocksdb25BlockCacheTraceWriterImplE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %2, align 8, !tbaa !28
  store i64 %i.c, ptr %i.b, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %3, align 8, !tbaa !43
  store i64 %i.e, ptr %i.d, align 8, !tbaa !43
  store ptr null, ptr %3, align 8, !tbaa !43
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb25BlockCacheTraceWriterImpl16WriteBlockAccessERKNS_21BlockCacheTraceRecordERKNS_5SliceES6_S6_(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(185) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"struct.rocksdb::Trace", align 8   ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i64 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !114
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !45, !alias.scope !115
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !115
  br label %bb.bs

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.r, align 8, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 47 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 45 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 25 uses
  store i64 0, ptr %i.u, align 8, !tbaa !24
  store i8 0, ptr %i.t, align 8, !tbaa !17
  %i.v = load i64, ptr %2, align 8, !tbaa !48
  store i64 %i.v, ptr %6, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.x, ptr %i.y, align 8, !tbaa !51
  invoke void @_ZN7rocksdb22PutLengthPrefixedSliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceE(ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.d unwind label %bb.ax

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !52  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.aa, ptr %i.g, align 8, !tbaa !28
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !24  ; 5 uses
  %i.ac = and i64 %i.ab, -8
  %i.ad = icmp eq i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %.invoke244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d
  %i.ae = add nsw i64 %i.ab, 8                    ; 3 uses
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !16  ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.t
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ah = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ah)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ai = load i64, ptr %i.t, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.aj = phi i64 [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.ae, %i.aj
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ab
  store i64 %i.aa, ptr %i.ak, align 1
  br label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.ab, i64 noundef 0, ptr noundef nonnull %i.g, i64 noundef 8)
          to label %bb.g unwind label %bb.ax

bb.g:                                             ; preds = %bb.e, %bb.f
  store i64 %i.ae, ptr %i.u, align 8, !tbaa !24
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ae
  store i8 0, ptr %i.am, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !53 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.ao, ptr %i.f, align 8, !tbaa !28
  %i.ap = load i64, ptr %i.u, align 8, !tbaa !24  ; 5 uses
  %i.aq = and i64 %i.ap, -8
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %.invoke244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i28: ; preds = %bb.g
  %i.as = add nsw i64 %i.ap, 8                    ; 3 uses
  %i.at = load ptr, ptr %i.s, align 8, !tbaa !16  ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.t
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i28
  %i.av = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.av)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i28
  %i.aw = load i64, ptr %i.t, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i30: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i32
  %i.ax = phi i64 [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i32 ]
  %.not.i.i.i31 = icmp ugt i64 %i.as, %i.ax
  br i1 %.not.i.i.i31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i30
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ap
  store i64 %i.ao, ptr %i.ay, align 1
  br label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.ap, i64 noundef 0, ptr noundef nonnull %i.f, i64 noundef 8)
          to label %bb.j unwind label %bb.ax

bb.j:                                             ; preds = %bb.h, %bb.i
  store i64 %i.as, ptr %i.u, align 8, !tbaa !24
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.as
  store i8 0, ptr %i.ba, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_ZN7rocksdb22PutLengthPrefixedSliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceE(ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.k unwind label %bb.ax

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !54 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %i.bc, ptr %i.e, align 4, !tbaa !55
  %i.bd = load i64, ptr %i.u, align 8, !tbaa !24  ; 5 uses
  %i.be = and i64 %i.bd, -4
  %i.bf = icmp eq i64 %i.be, 9223372036854775804
  br i1 %i.bf, label %.invoke244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i36: ; preds = %bb.k
  %i.bg = add nsw i64 %i.bd, 4                    ; 3 uses
  %i.bh = load ptr, ptr %i.s, align 8, !tbaa !16  ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.t
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i36
  %i.bj = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i36
  %i.bk = load i64, ptr %i.t, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i40
  %i.bl = phi i64 [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i37 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i40 ]
  %.not.i.i.i39 = icmp ugt i64 %i.bg, %i.bl
  br i1 %.not.i.i.i39, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i38
end_hunk_0
begin_hunk_1_@_ZN7rocksdb34BlockCacheHumanReadableTraceWriterD2Ev:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(33) %i.h)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !82   ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %bb.e, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i2

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i2: ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.m) #27
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i2, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i: ; preds = %bb.e
  %i.n = load ptr, ptr %.pr, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(33) %.pr) #28, !inline_history !124
  br label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %bb.e, %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i
  ret void

bb.f:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %bb.b
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #31
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb34BlockCacheHumanReadableTraceWriter15NewWritableFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_3EnvE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1048584) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"struct.rocksdb::EnvOptions", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr @.str.62, ptr %4, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 52, ptr %i.d, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr @.str, ptr %5, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !67
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1048576
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN7rocksdb10EnvOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6)
  %i.g = load ptr, ptr %3, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZN7rocksdb10EnvOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb34BlockCacheHumanReadableTraceWriter29WriteHumanReadableTraceRecordERKNS_21BlockCacheTraceRecordEmm(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1048584) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(185) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1048576 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !45, !alias.scope !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !127
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %2, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = load i8, ptr %i.f, align 8, !tbaa !50
  %i.h = sext i8 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.p = load i32, ptr %i.o, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.r = load i64, ptr %i.q, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.t = load i8, ptr %i.s, align 8, !tbaa !22    ; 4 uses
  %i.u = sext i8 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 114
  %i.w = load i8, ptr %i.v, align 2, !tbaa !59, !range !27, !noundef !58
  %i.x = zext nneg i8 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.z = load i64, ptr %i.y, align 8, !tbaa !60
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 113
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !57, !range !27, !noundef !58
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !64, !range !27, !noundef !58
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !63
  %i.ak = add i8 %i.t, -3
  %i.al = icmp ult i8 %i.ak, -2
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.an = load i64, ptr %i.am, align 8            ; 4 uses
  %i.ao = icmp ult i64 %i.an, 4
  %or.cond.i = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond.i, label %_ZN7rocksdb21BlockCacheTraceHelper10GetTableIdERKNS_21BlockCacheTraceRecordE.exit, label %_ZN7rocksdb21BlockCacheTraceHelper10GetTableIdERKNS_21BlockCacheTraceRecordE.exit.thread

_ZN7rocksdb21BlockCacheTraceHelper10GetTableIdERKNS_21BlockCacheTraceRecordE.exit.thread: ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !16
  %.0.copyload.i.i = load i32, ptr %i.aq, align 1
  %i.ar = zext i32 %.0.copyload.i.i to i64
  %i.as = add nuw nsw i64 %i.ar, 1
  br label %bb.d

_ZN7rocksdb21BlockCacheTraceHelper10GetTableIdERKNS_21BlockCacheTraceRecordE.exit: ; preds = %bb.c
  %i.at = add i8 %i.t, -1
  %i.au = icmp ult i8 %i.at, 2
  br i1 %i.au, label %bb.d, label %_ZN7rocksdb21BlockCacheTraceHelper17GetSequenceNumberERKNS_21BlockCacheTraceRecordE.exit

bb.d:                                             ; preds = %_ZN7rocksdb21BlockCacheTraceHelper10GetTableIdERKNS_21BlockCacheTraceRecordE.exit.thread, %_ZN7rocksdb21BlockCacheTraceHelper10GetTableIdERKNS_21BlockCacheTraceRecordE.exit
  %.0.i34 = phi i64 [ %i.as, %_ZN7rocksdb21BlockCacheTraceHelper10GetTableIdERKNS_21BlockCacheTraceRecordE.exit.thread ], [ 0, %_ZN7rocksdb21BlockCacheTraceHelper10GetTableIdERKNS_21BlockCacheTraceRecordE.exit ] ; 2 uses
  %i.av = icmp ne i8 %i.t, 2
  %i.aw = icmp ugt i64 %i.an, 3
  %or.cond.not12.i = select i1 %i.av, i1 true, i1 %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ay = load i8, ptr %i.ax, align 8, !range !27
  %i.az = trunc nuw i8 %i.ay to i1
  %or.cond10.i = select i1 %or.cond.not12.i, i1 %i.az, i1 false
  br i1 %or.cond10.i, label %bb.e, label %_ZN7rocksdb21BlockCacheTraceHelper17GetSequenceNumberERKNS_21BlockCacheTraceRecordE.exit

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.an
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %.0.copyload.i.i.i = load i64, ptr %i.bd, align 1
  %i.be = lshr i64 %.0.copyload.i.i.i, 8
  %i.bf = add nuw nsw i64 %i.be, 1
  br label %_ZN7rocksdb21BlockCacheTraceHelper17GetSequenceNumberERKNS_21BlockCacheTraceRecordE.exit

_ZN7rocksdb21BlockCacheTraceHelper17GetSequenceNumberERKNS_21BlockCacheTraceRecordE.exit: ; preds = %_ZN7rocksdb21BlockCacheTraceHelper10GetTableIdERKNS_21BlockCacheTraceRecordE.exit, %bb.d, %bb.e
  %.0.i33 = phi i64 [ 0, %_ZN7rocksdb21BlockCacheTraceHelper10GetTableIdERKNS_21BlockCacheTraceRecordE.exit ], [ %.0.i34, %bb.d ], [ %.0.i34, %bb.e ]
  %.0.i26 = phi i64 [ 0, %_ZN7rocksdb21BlockCacheTraceHelper10GetTableIdERKNS_21BlockCacheTraceRecordE.exit ], [ 0, %bb.d ], [ %i.bf, %bb.e ]
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !24 ; 2 uses
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 0, ptr %i.a, align 8, !tbaa !28
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi ; 2 uses
  %i.bl = call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef %i.bj, ptr noundef %i.bk, ptr noundef nonnull %i.a) ; 2 uses
  %.not7.i = icmp eq ptr %i.bl, null
  br i1 %.not7.i, label %_ZN7rocksdb21BlockCacheTraceHelper20GetBlockOffsetInFileERKNS_21BlockCacheTraceRecordE.exit, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit.preheader.i

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit.preheader.i: ; preds = %_ZN7rocksdb21BlockCacheTraceHelper17GetSequenceNumberERKNS_21BlockCacheTraceRecordE.exit
  %9 = ptrtoint ptr %i.bk to i64
  br label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit.i

_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit.i:    ; preds = %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit.i, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit.preheader.i
  %i.bm = phi ptr [ %i.br, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit.i ], [ %i.bl, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit.preheader.i ] ; 3 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %9, %i.bn
  %i.bp = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 0, ptr %i.a, align 8, !tbaa !28
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bo
  %i.br = call noundef ptr @_ZN7rocksdb14GetVarint64PtrEPKcS1_Pm(ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %_ZN7rocksdb21BlockCacheTraceHelper20GetBlockOffsetInFileERKNS_21BlockCacheTraceRecordE.exit, label %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit.i

_ZN7rocksdb21BlockCacheTraceHelper20GetBlockOffsetInFileERKNS_21BlockCacheTraceRecordE.exit: ; preds = %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit.i, %_ZN7rocksdb21BlockCacheTraceHelper17GetSequenceNumberERKNS_21BlockCacheTraceRecordE.exit
  %.02.lcssa.i = phi i64 [ 0, %_ZN7rocksdb21BlockCacheTraceHelper17GetSequenceNumberERKNS_21BlockCacheTraceRecordE.exit ], [ %i.bp, %_ZN7rocksdb11GetVarint64EPNS_5SliceEPm.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bs = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 1048576, ptr noundef nonnull @.str.63, i64 noundef %i.e, i64 noundef %3, i32 noundef %i.h, i64 noundef %i.j, i64 noundef %i.l, ptr noundef %i.n, i32 noundef %i.p, i64 noundef %i.r, i32 noundef %i.u, i32 noundef %i.x, i64 noundef %i.z, i64 noundef %4, i64 noundef %i.ab, i32 noundef %i.ae, i32 noundef %i.ah, i64 noundef %i.aj, i64 noundef %.0.i33, i64 noundef %.0.i26, i64 noundef %i.bi, i64 noundef %i.an, i64 noundef %.02.lcssa.i) #28
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7rocksdb21BlockCacheTraceHelper20GetBlockOffsetInFileERKNS_21BlockCacheTraceRecordE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr @.str.64, ptr %5, align 8, !tbaa !66
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 27, ptr %i.bu, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr @.str, ptr %6, align 8, !tbaa !66
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.bv, align 8, !tbaa !67
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 5, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.o

bb.g:                                             ; preds = %_ZN7rocksdb21BlockCacheTraceHelper20GetBlockOffsetInFileERKNS_21BlockCacheTraceRecordE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.bw, ptr %7, align 8, !tbaa !23
  %i.bx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28 ; 8 uses
  %i.by = icmp ugt i64 %i.bx, 15
  br i1 %i.by, label %bb.h, label %._crit_edge.i.i

bb.h:                                             ; preds = %bb.g
  %i.bz = icmp slt i64 %i.bx, 0
  br i1 %i.bz, label %.noexc.i, label %bb.i

.noexc.i:                                         ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #30
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ca = add nuw i64 %i.bx, 1                    ; 2 uses
  %i.cb = icmp slt i64 %i.ca, 0
  br i1 %i.cb, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !56

.noexc11.i:                                       ; preds = %bb.i
  call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.i
  %i.cc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #29 ; 2 uses
  store ptr %i.cc, ptr %7, align 8, !tbaa !16
  store i64 %i.bx, ptr %i.bw, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.g
  %i.cd = phi ptr [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.bw, %bb.g ] ; 3 uses
  switch i64 %i.bx, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ce = load i8, ptr %1, align 8, !tbaa !17
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !17
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cd, ptr nonnull align 8 %1, i64 %i.bx, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.bx, ptr %i.cf, align 8, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bx
  store i8 0, ptr %i.cg, align 1, !tbaa !17
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !85  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ci = load ptr, ptr %7, align 8, !tbaa !16
  store ptr %i.ci, ptr %8, align 8, !tbaa !66
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ck = load i64, ptr %i.cf, align 8, !tbaa !24
  store i64 %i.ck, ptr %i.cj, align 8, !tbaa !67
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !30
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  invoke void %i.cn(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(33) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.co = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bw
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.cq = load i64, ptr %i.bw, align 8, !tbaa !17
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.ct = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bw
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.n
  %i.cv = load i64, ptr %i.bw, align 8, !tbaa !17
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %i.cs

bb.o:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb34BlockCacheHumanReadableTraceReaderC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(536) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN7rocksdb11TraceReaderESt14default_deleteIS1_EED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !69
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7rocksdb34BlockCacheHumanReadableTraceReaderE, i64 16), ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.b)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb11TraceReaderESt14default_deleteIS1_EED2Ev.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %1, align 8, !tbaa !16
  %i.e = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240) %i.c, ptr noundef %i.d, i32 noundef 8)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %.not.i5 = icmp eq ptr %i.e, null
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 %i.h ; 2 uses
  br i1 %.not.i5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !94
  %i.l = or i32 %i.k, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc
  %.sink.i = phi i32 [ %i.l, %bb.b ], [ 0, %.noexc ]
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.i, i32 noundef %.sink.i)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode.exit unwind label %bb.e

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode.exit: ; preds = %bb.c
  ret void

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb11TraceReaderESt14default_deleteIS1_EED2Ev.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.b) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.m, %bb.d ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7rocksdb21BlockCacheTraceReaderE, i64 16), ptr %0, align 8, !tbaa !30
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN7rocksdb21BlockCacheTraceReaderD2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb11TraceReaderEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb11TraceReaderEEclEPS1_.exit.i.i: ; preds = %bb.f
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #28, !inline_history !0
  br label %_ZN7rocksdb21BlockCacheTraceReaderD2Ev.exit

_ZN7rocksdb21BlockCacheTraceReaderD2Ev.exit:      ; preds = %bb.f, %_ZNKSt14default_deleteIN7rocksdb11TraceReaderEEclEPS1_.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #5 align 2

end_hunk_1
