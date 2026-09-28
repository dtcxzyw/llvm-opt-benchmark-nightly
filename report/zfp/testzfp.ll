Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/testzfp?download=true
inline.NumInlined: 3089
inline.NumDeleted: 961
loop-unroll.NumCompletelyUnrolled: 105
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZNSt9bad_allocD1Ev
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

declare void @zfp_stream_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare i32 @zfp_stream_set_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN3zfp9exceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPv(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp5codec8zfp_baseILj1EfED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !116
  %i.b = tail call ptr @zfp_stream_bit_stream(ptr noundef %i.a)
  tail call void @stream_close(ptr noundef %i.b)
  %i.c = load ptr, ptr %0, align 8, !tbaa !116
  tail call void @zfp_stream_set_bit_stream(ptr noundef %i.c, ptr noundef null)
  %i.d = load ptr, ptr %0, align 8, !tbaa !116
  tail call void @zfp_stream_close(ptr noundef %i.d)
  ret void
}

declare ptr @zfp_field_1d(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

declare i32 @zfp_stream_compression_mode(ptr noundef) local_unnamed_addr #8

declare i64 @zfp_field_blocks(ptr noundef) local_unnamed_addr #8

declare i64 @stream_alignment() local_unnamed_addr #8

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZN3zfp8internal11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE5linesEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %.not = icmp ult i64 %1, 2147483648
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3zfp9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !14
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN3zfp9exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.f, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn17 = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #24
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %.not9 = icmp eq i64 %0, 0
  br i1 %.not9, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = add i64 %0, 15
  %i.h = lshr i64 %i.g, 4
  br label %_ZN3zfp8internal11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE5linesEm.exit

.preheader:                                       ; preds = %bb.g, %.preheader
  %.0.i = phi i64 [ %i.k, %.preheader ], [ 1, %bb.g ] ; 4 uses
  %i.i = mul i64 %.0.i, %.0.i
  %i.j = icmp ult i64 %i.i, %1
  %i.k = shl i64 %.0.i, 1
  br i1 %i.j, label %.preheader, label %_ZN3zfp8internal11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE5linesEm.exit

_ZN3zfp8internal11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE5linesEm.exit: ; preds = %.preheader, %bb.h
  %.in = phi i64 [ %i.h, %bb.h ], [ %.0.i, %.preheader ]
  %i.l = trunc i64 %.in to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.l, i32 1)
  ret i32 %.sroa.speculated

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn16 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn17, %bb.f ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn16

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE6resizeEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = add i32 %1, -1
  %i.b = select i1 %.not, i32 1, i32 %i.a
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %storemerge = phi i32 [ %i.b, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.c = add i32 %storemerge, 1                   ; 3 uses
  %i.d = and i32 %i.c, %storemerge
  %.not2 = icmp eq i32 %i.d, 0
  %i.e = or i32 %i.c, %storemerge
  br i1 %.not2, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  store i32 %storemerge, ptr %0, align 8, !tbaa !124
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = zext i32 %i.c to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !448  ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i8.i.i, label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.i) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i: ; preds = %bb.d, %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.h) #29 ; 2 uses
  %.not.i.i10.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i10.i.i, label %bb.e, label %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit

bb.e:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i
  store ptr %i.j, ptr %i.f, align 8, !tbaa !448
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !124
  %i.n = add i32 %i.m, 1
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 4
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !449  ; 2 uses
  %.not.i8.i.i3 = icmp eq ptr %i.q, null
  br i1 %.not.i8.i.i3, label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4, label %bb.f

bb.f:                                             ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit
  tail call void @free(ptr noundef nonnull %i.q) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4: ; preds = %bb.f, %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #29 ; 2 uses
  %.not.i.i10.i.i5 = icmp eq ptr %i.r, null
  br i1 %.not.i.i10.i.i5, label %bb.g, label %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit

bb.g:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4
  store ptr %i.r, ptr %i.l, align 8, !tbaa !449
  %i.t = load i32, ptr %0, align 8, !tbaa !124    ; 3 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %2 = add i32 %i.t, 1                            ; 2 uses
  %.off = add i32 %i.t, -7
  %switch = icmp ult i32 %.off, -8
  br i1 %switch, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit
  %n.vec = and i32 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = zext i32 %index to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> zeroinitializer, ptr %i.w, align 4, !tbaa !190
  store <4 x i32> zeroinitializer, ptr %i.x, align 4, !tbaa !190
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.y = icmp eq i32 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !446

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %2, %n.vec
  br i1 %cmp.n, label %_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %middle.block, %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit
  %.03.i.ph = phi i32 [ 0, %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03.i = phi i32 [ %i.ab, %scalar.ph ], [ %.03.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.z = zext i32 %.03.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  store i32 0, ptr %i.aa, align 4, !tbaa !190
  %i.ab = add i32 %.03.i, 1                       ; 2 uses
  %.not.i = icmp ugt i32 %i.ab, %i.t
  br i1 %.not.i, label %_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit, label %scalar.ph, !llvm.loop !447

_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit: ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp8internal11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9put_blockEmPKfl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = add i32 %i.a, 1                          ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !124
  %i.d = and i32 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !190  ; 2 uses
  %i.j = lshr i32 %i.i, 1
  %i.k = icmp eq i32 %i.j, %i.b
  br i1 %i.k, label %_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit, label %_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread

_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit: ; preds = %bb.a
  %i.l = or i32 %i.i, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !190
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55   ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.g ; 7 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !194, !nonnull !141, !align !142
  %i.r = shl i64 %1, 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.t = load i64, ptr %i.s, align 8, !tbaa !121  ; 2 uses
  %i.u = xor i64 %i.t, %i.r
  %i.v = add i64 %i.u, -4
  %i.w = lshr i64 %i.v, 62
  %i.x = sub i64 0, %i.t
  %i.y = and i64 %i.w, %i.x                       ; 3 uses
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = load float, ptr %2, align 4, !tbaa !99
  store float %i.z, ptr %i.o, align 4, !tbaa !99
  %i.aa = getelementptr inbounds [4 x i8], ptr %2, i64 %3 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ac = load float, ptr %i.aa, align 4, !tbaa !99
  store float %i.ac, ptr %i.ab, align 4, !tbaa !99
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %3 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.af = load float, ptr %i.ad, align 4, !tbaa !99
  store float %i.af, ptr %i.ae, align 4, !tbaa !99
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.ai = load float, ptr %i.ag, align 4, !tbaa !99
  store float %i.ai, ptr %i.ah, align 4, !tbaa !99
  br label %_ZN3zfp8internal11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLine3putEPKflj.exit

bb.d:                                             ; preds = %bb.b
  %i.aj = load float, ptr %2, align 4, !tbaa !99
  store float %i.aj, ptr %i.o, align 4, !tbaa !99
  %exitcond.not.i = icmp eq i64 %i.y, 3
  br i1 %exitcond.not.i, label %_ZN3zfp8internal11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLine3putEPKflj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.al = getelementptr inbounds [4 x i8], ptr %2, i64 %3 ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !99
  store float %i.am, ptr %i.ak, align 4, !tbaa !99
  %exitcond.not.i.1 = icmp eq i64 %i.y, 2
  br i1 %exitcond.not.i.1, label %_ZN3zfp8internal11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLine3putEPKflj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.al, i64 %3
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !99
  store float %i.ap, ptr %i.an, align 4, !tbaa !99
  br label %_ZN3zfp8internal11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLine3putEPKflj.exit

_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread: ; preds = %bb.a, %_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !194, !nonnull !141, !align !142 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.au = load i64, ptr %i.at, align 8, !tbaa !178
  %i.av = mul i64 %i.au, %1
  %i.aw = shl i64 %1, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !121 ; 2 uses
  %i.az = xor i64 %i.ay, %i.aw
  %i.ba = add i64 %i.az, -4
  %i.bb = lshr i64 %i.ba, 62
  %i.bc = sub i64 0, %i.ay
  %i.bd = and i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = load ptr, ptr %i.as, align 8, !tbaa !116 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !195
  tail call void @stream_wseek(ptr noundef %i.bg, i64 noundef %i.av)
  %.not.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread
  %i.bh = sub nuw nsw i64 4, %i.bd
  %i.bi = tail call noundef i64 @zfp_encode_partial_block_strided_float_1(ptr noundef nonnull %i.be, ptr noundef %2, i64 noundef %i.bh, i64 noundef %3) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEE6encodeEmPKfl.exit

bb.h:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread
  %i.bj = tail call noundef i64 @zfp_encode_block_strided_float_1(ptr noundef nonnull %i.be, ptr noundef %2, i64 noundef %3) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEE6encodeEmPKfl.exit

_ZN3zfp8internal11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEE6encodeEmPKfl.exit: ; preds = %bb.g, %bb.h
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !195
  %i.bl = tail call i64 @stream_flush(ptr noundef %i.bk) ; 0 uses
  br label %_ZN3zfp8internal11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLine3putEPKflj.exit

_ZN3zfp8internal11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLine3putEPKflj.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.c, %_ZN3zfp8internal11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEE6encodeEmPKfl.exit
  ret void
}

declare void @stream_wseek(ptr noundef, i64 noundef) local_unnamed_addr #8

declare i64 @stream_flush(ptr noundef) local_unnamed_addr #8

declare i64 @zfp_encode_partial_block_strided_float_1(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

declare i64 @zfp_encode_block_strided_float_1(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare double @zfp_stream_rate(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK3zfp8internal11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE5flushEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55, !noalias !454 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53, !noalias !454 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.d, align 4, !tbaa !39, !noalias !454 ; 2 uses
  %i.e = icmp ne i32 %.sroa.0.0.copyload.i.i, 0
  %.not.i.i.i = icmp eq ptr %i.b, null
  %or.cond.i.i = select i1 %i.e, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE5firstEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !124, !noalias !454
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.in.i.i.i = phi i32 [ 0, %bb.b ], [ %.0.i.i.i, %bb.d ]
  %.0.i.i.i = add i32 %.0.in.i.i.i, 1             ; 3 uses
  %.not7.i.i.i = icmp ugt i32 %.0.i.i.i, %i.f
  br i1 %.not7.i.i.i, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = zext i32 %.0.i.i.i to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !190, !noalias !454 ; 2 uses
  %.not10.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not10.i.i.i, label %bb.c, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.d
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.g
  br label %_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE5firstEv.exit

_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE5firstEv.exit: ; preds = %.critedge.i.i.i, %bb.a
  %.sroa.7.0 = phi i32 [ %.sroa.0.0.copyload.i.i, %bb.a ], [ %i.i, %.critedge.i.i.i ]
  %.sroa.3.0 = phi ptr [ %i.b, %bb.a ], [ %i.j, %.critedge.i.i.i ] ; 2 uses
  %.not.i6 = icmp eq ptr %.sroa.3.0, null
  br i1 %.not.i6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE5firstEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.e

._crit_edge:                                      ; preds = %bb.c, %_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE14const_iteratorppEi.exit, %bb.i, %_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE5firstEv.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE14const_iteratorppEi.exit
  %i.l = phi ptr [ %i.d, %.lr.ph ], [ %i.ao, %_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE14const_iteratorppEi.exit ]
  %i.m = phi ptr [ %i.b, %.lr.ph ], [ %i.ap, %_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE14const_iteratorppEi.exit ]
  %i.n = phi i32 [ %.sroa.7.0, %.lr.ph ], [ %i.ba, %_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE14const_iteratorppEi.exit ] ; 2 uses
  %i.o = phi ptr [ %.sroa.3.0, %.lr.ph ], [ %i.bb, %_ZN3zfp8internal5CacheINS0_11BlockCache1IfNS0_11BlockStore1IfNS_5codec4zfp1IfEENS_5index8implicitEEEE9CacheLineEE14const_iteratorppEi.exit ] ; 3 uses
  %i.p = trunc i32 %i.n to i1
  br i1 %i.p, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = lshr i32 %i.n, 1
end_hunk_0
begin_hunk_1_@_ZN3zfp8internal10BlockStoreINS_5codec4zfp2IfEENS_5index8implicitEE5allocEb:bb.a

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i:  ; preds = %bb.b, %_ZN3zfp8internal10BlockStoreINS_5codec4zfp2IfEENS_5index8implicitEE4freeEv.exit
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.j) #29 ; 4 uses
  %.not.i.i10.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i10.i, label %bb.c, label %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit

bb.c:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i
  store ptr %i.m, ptr %i.a, align 8, !tbaa !110
  %.pre = load i64, ptr %i.k, align 8, !tbaa !197 ; 3 uses
  %.not.i.i.i = icmp samesign ne i64 %.pre, 0
  %or.cond.not = select i1 %1, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %bb.d, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.d:                                             ; preds = %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %.pre, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %bb.d, %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !128
  %i.q = tail call ptr @stream_open(ptr noundef nonnull %i.m, i64 noundef %.pre)
  tail call void @zfp_stream_set_bit_stream(ptr noundef %i.p, ptr noundef %i.q)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp5codec8zfp_baseILj2EfED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !128
  %i.b = tail call ptr @zfp_stream_bit_stream(ptr noundef %i.a)
  tail call void @stream_close(ptr noundef %i.b)
  %i.c = load ptr, ptr %0, align 8, !tbaa !128
  tail call void @zfp_stream_set_bit_stream(ptr noundef %i.c, ptr noundef null)
  %i.d = load ptr, ptr %0, align 8, !tbaa !128
  tail call void @zfp_stream_close(ptr noundef %i.d)
  ret void
}

declare ptr @zfp_field_2d(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZN3zfp8internal11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE5linesEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %.not = icmp ult i64 %1, 2147483648
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3zfp9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !14
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN3zfp9exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.f, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn17 = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #24
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %.not9 = icmp eq i64 %0, 0
  br i1 %.not9, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = add i64 %0, 63
  %i.h = lshr i64 %i.g, 6
  br label %_ZN3zfp8internal11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE5linesEm.exit

.preheader:                                       ; preds = %bb.g, %.preheader
  %.0.i = phi i64 [ %i.k, %.preheader ], [ 1, %bb.g ] ; 4 uses
  %i.i = mul i64 %.0.i, %.0.i
  %i.j = icmp ult i64 %i.i, %1
  %i.k = shl i64 %.0.i, 1
  br i1 %i.j, label %.preheader, label %_ZN3zfp8internal11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE5linesEm.exit

_ZN3zfp8internal11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE5linesEm.exit: ; preds = %.preheader, %bb.h
  %.in = phi i64 [ %i.h, %bb.h ], [ %.0.i, %.preheader ]
  %i.l = trunc i64 %.in to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.l, i32 1)
  ret i32 %.sroa.speculated

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn16 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn17, %bb.f ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn16

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6resizeEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = add i32 %1, -1
  %i.b = select i1 %.not, i32 1, i32 %i.a
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %storemerge = phi i32 [ %i.b, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.c = add i32 %storemerge, 1                   ; 3 uses
  %i.d = and i32 %i.c, %storemerge
  %.not2 = icmp eq i32 %i.d, 0
  %i.e = or i32 %i.c, %storemerge
  br i1 %.not2, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  store i32 %storemerge, ptr %0, align 8, !tbaa !136
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = zext i32 %i.c to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !470  ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i8.i.i, label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.i) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i: ; preds = %bb.d, %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.h) #29 ; 2 uses
  %.not.i.i10.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i10.i.i, label %bb.e, label %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit

bb.e:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i
  store ptr %i.j, ptr %i.f, align 8, !tbaa !470
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !136
  %i.n = add i32 %i.m, 1
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 6
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !471  ; 2 uses
  %.not.i8.i.i3 = icmp eq ptr %i.q, null
  br i1 %.not.i8.i.i3, label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4, label %bb.f

bb.f:                                             ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit
  tail call void @free(ptr noundef nonnull %i.q) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4: ; preds = %bb.f, %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #29 ; 2 uses
  %.not.i.i10.i.i5 = icmp eq ptr %i.r, null
  br i1 %.not.i.i10.i.i5, label %bb.g, label %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit

bb.g:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4
  store ptr %i.r, ptr %i.l, align 8, !tbaa !471
  %i.t = load i32, ptr %0, align 8, !tbaa !136    ; 3 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !59   ; 2 uses
  %2 = add i32 %i.t, 1                            ; 2 uses
  %.off = add i32 %i.t, -7
  %switch = icmp ult i32 %.off, -8
  br i1 %switch, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit
  %n.vec = and i32 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = zext i32 %index to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> zeroinitializer, ptr %i.w, align 4, !tbaa !144
  store <4 x i32> zeroinitializer, ptr %i.x, align 4, !tbaa !144
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.y = icmp eq i32 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !468

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %2, %n.vec
  br i1 %cmp.n, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %middle.block, %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit
  %.03.i.ph = phi i32 [ 0, %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03.i = phi i32 [ %i.ab, %scalar.ph ], [ %.03.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.z = zext i32 %.03.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  store i32 0, ptr %i.aa, align 4, !tbaa !144
  %i.ab = add i32 %.03.i, 1                       ; 2 uses
  %.not.i = icmp ugt i32 %i.ab, %i.t
  br i1 %.not.i, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit, label %scalar.ph, !llvm.loop !469

_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit: ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp8internal11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9put_blockEmPKfll(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = add i32 %i.a, 1                          ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !136
  %i.d = and i32 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !144  ; 2 uses
  %i.j = lshr i32 %i.i, 1
  %i.k = icmp eq i32 %i.j, %i.b
  br i1 %i.k, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread

_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit: ; preds = %bb.a
  %i.l = or i32 %i.i, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !144
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61   ; 2 uses
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %i.g ; 21 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !140, !nonnull !141, !align !142 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !135  ; 2 uses
  %i.t = urem i64 %1, %i.s
  %i.u = shl i64 %i.t, 2
  %i.v = udiv i64 %1, %i.s
  %i.w = shl i64 %i.v, 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.y = load i64, ptr %i.x, align 8, !tbaa !133  ; 2 uses
  %i.z = xor i64 %i.y, %i.u
  %i.aa = add i64 %i.z, -4
  %i.ab = lshr i64 %i.aa, 62
  %i.ac = sub i64 0, %i.y
  %i.ad = and i64 %i.ab, %i.ac                    ; 17 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !132 ; 2 uses
  %i.ag = xor i64 %i.af, %i.w
  %i.ah = add i64 %i.ag, -4
  %i.ai = lshr i64 %i.ah, 62
  %i.aj = sub i64 0, %i.af
  %i.ak = and i64 %i.ai, %i.aj                    ; 4 uses
  %i.al = or i64 %i.ak, %i.ad
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.c, label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.an = shl nsw i64 %3, 2
  %i.ao = sub nsw i64 %4, %i.an                   ; 3 uses
  %i.ap = load float, ptr %2, align 4, !tbaa !99
  store float %i.ap, ptr %i.o, align 4, !tbaa !99
  %i.aq = getelementptr inbounds [4 x i8], ptr %2, i64 %3 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.as = load float, ptr %i.aq, align 4, !tbaa !99
  store float %i.as, ptr %i.ar, align 4, !tbaa !99
  %i.at = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %3 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.av = load float, ptr %i.at, align 4, !tbaa !99
  store float %i.av, ptr %i.au, align 4, !tbaa !99
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.at, i64 %3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.ay = load float, ptr %i.aw, align 4, !tbaa !99
  store float %i.ay, ptr %i.ax, align 4, !tbaa !99
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ao ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !99
  store float %i.bc, ptr %i.ba, align 4, !tbaa !99
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %3 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.bf = load float, ptr %i.bd, align 4, !tbaa !99
  store float %i.bf, ptr %i.be, align 4, !tbaa !99
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %3 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.bi = load float, ptr %i.bg, align 4, !tbaa !99
  store float %i.bi, ptr %i.bh, align 4, !tbaa !99
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %3 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.bl = load float, ptr %i.bj, align 4, !tbaa !99
  store float %i.bl, ptr %i.bk, align 4, !tbaa !99
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.ao ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !99
  store float %i.bp, ptr %i.bn, align 4, !tbaa !99
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %3 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.bs = load float, ptr %i.bq, align 4, !tbaa !99
  store float %i.bs, ptr %i.br, align 4, !tbaa !99
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %3 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.bv = load float, ptr %i.bt, align 4, !tbaa !99
  store float %i.bv, ptr %i.bu, align 4, !tbaa !99
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %3 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.by = load float, ptr %i.bw, align 4, !tbaa !99
  store float %i.by, ptr %i.bx, align 4, !tbaa !99
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.ao ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !99
  store float %i.cc, ptr %i.ca, align 4, !tbaa !99
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %3 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.cf = load float, ptr %i.cd, align 4, !tbaa !99
  store float %i.cf, ptr %i.ce, align 4, !tbaa !99
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %3 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ci = load float, ptr %i.cg, align 4, !tbaa !99
  store float %i.ci, ptr %i.ch, align 4, !tbaa !99
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  %i.cl = load float, ptr %i.cj, align 4, !tbaa !99
  store float %i.cl, ptr %i.ck, align 4, !tbaa !99
  br label %_ZN3zfp8internal11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLine3putEPKfllj.exit

.preheader.i:                                     ; preds = %bb.b
  %i.cm = sub nuw nsw i64 4, %i.ad
  %i.cn = mul nsw i64 %3, %i.cm
  %i.co = sub nsw i64 %4, %i.cn                   ; 3 uses
  %i.cp = load float, ptr %2, align 4, !tbaa !99
  store float %i.cp, ptr %i.o, align 4, !tbaa !99
  %i.cq = getelementptr inbounds [4 x i8], ptr %2, i64 %3 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, 3
  br i1 %exitcond.not.i, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.r, %bb.q, %bb.p, %.preheader.i
  %.lcssa17 = phi ptr [ %i.cq, %.preheader.i ], [ %i.eh, %bb.p ], [ %i.ek, %bb.q ], [ %i.en, %bb.r ]
  %.lcssa = phi ptr [ %i.cr, %.preheader.i ], [ %i.ei, %bb.p ], [ %i.el, %bb.q ], [ %i.eo, %bb.r ]
  %i.cs = getelementptr inbounds [4 x i8], ptr %.lcssa17, i64 %i.co ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.ad ; 5 uses
  %exitcond38.not.i = icmp eq i64 %i.ak, 3
  br i1 %exitcond38.not.i, label %_ZN3zfp8internal11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLine3putEPKfllj.exit, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.d
  %i.cu = load float, ptr %i.cs, align 4, !tbaa !99
  store float %i.cu, ptr %i.ct, align 4, !tbaa !99
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %3 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  %exitcond.not.i.118 = icmp eq i64 %i.ad, 3
  br i1 %exitcond.not.i.118, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.preheader.i.1
  %i.cx = load float, ptr %i.cv, align 4, !tbaa !99
  store float %i.cx, ptr %i.cw, align 4, !tbaa !99
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %3 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %exitcond.not.i.1.1 = icmp eq i64 %i.ad, 2
  br i1 %exitcond.not.i.1.1, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.da = load float, ptr %i.cy, align 4, !tbaa !99
  store float %i.da, ptr %i.cz, align 4, !tbaa !99
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %3 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 12 ; 2 uses
  %exitcond.not.i.2.1 = icmp eq i64 %i.ad, 1
  br i1 %exitcond.not.i.2.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dd = load float, ptr %i.db, align 4, !tbaa !99
  store float %i.dd, ptr %i.dc, align 4, !tbaa !99
  %i.de = getelementptr inbounds [4 x i8], ptr %i.db, i64 %3
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %.preheader.i.1
  %.lcssa17.1 = phi ptr [ %i.cv, %.preheader.i.1 ], [ %i.cy, %bb.e ], [ %i.db, %bb.f ], [ %i.de, %bb.g ]
  %.lcssa.1 = phi ptr [ %i.cw, %.preheader.i.1 ], [ %i.cz, %bb.e ], [ %i.dc, %bb.f ], [ %i.df, %bb.g ]
  %i.dg = getelementptr inbounds [4 x i8], ptr %.lcssa17.1, i64 %i.co ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.lcssa.1, i64 %i.ad ; 5 uses
  %exitcond38.not.i.1 = icmp eq i64 %i.ak, 2
  br i1 %exitcond38.not.i.1, label %_ZN3zfp8internal11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLine3putEPKfllj.exit, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %bb.h
  %i.di = load float, ptr %i.dg, align 4, !tbaa !99
  store float %i.di, ptr %i.dh, align 4, !tbaa !99
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %3 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN3zfp8internal10BlockStoreINS_5codec4zfp3IfEENS_5index8implicitEE5allocEb:bb.a

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i:  ; preds = %bb.b, %_ZN3zfp8internal10BlockStoreINS_5codec4zfp3IfEENS_5index8implicitEE4freeEv.exit
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.j) #29 ; 4 uses
  %.not.i.i10.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i10.i, label %bb.c, label %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit

bb.c:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i
  store ptr %i.m, ptr %i.a, align 8, !tbaa !110
  %.pre = load i64, ptr %i.k, align 8, !tbaa !200 ; 3 uses
  %.not.i.i.i = icmp samesign ne i64 %.pre, 0
  %or.cond.not = select i1 %1, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %bb.d, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.d:                                             ; preds = %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %.pre, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %bb.d, %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !146
  %i.q = tail call ptr @stream_open(ptr noundef nonnull %i.m, i64 noundef %.pre)
  tail call void @zfp_stream_set_bit_stream(ptr noundef %i.p, ptr noundef %i.q)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp5codec8zfp_baseILj3EfED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !146
  %i.b = tail call ptr @zfp_stream_bit_stream(ptr noundef %i.a)
  tail call void @stream_close(ptr noundef %i.b)
  %i.c = load ptr, ptr %0, align 8, !tbaa !146
  tail call void @zfp_stream_set_bit_stream(ptr noundef %i.c, ptr noundef null)
  %i.d = load ptr, ptr %0, align 8, !tbaa !146
  tail call void @zfp_stream_close(ptr noundef %i.d)
  ret void
}

declare ptr @zfp_field_3d(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZN3zfp8internal11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE5linesEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %.not = icmp ult i64 %1, 2147483648
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3zfp9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !14
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN3zfp9exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.f, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn17 = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #24
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %.not9 = icmp eq i64 %0, 0
  br i1 %.not9, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = add i64 %0, 255
  %i.h = lshr i64 %i.g, 8
  br label %_ZN3zfp8internal11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE5linesEm.exit

.preheader:                                       ; preds = %bb.g, %.preheader
  %.0.i = phi i64 [ %i.k, %.preheader ], [ 1, %bb.g ] ; 4 uses
  %i.i = mul i64 %.0.i, %.0.i
  %i.j = icmp ult i64 %i.i, %1
  %i.k = shl i64 %.0.i, 1
  br i1 %i.j, label %.preheader, label %_ZN3zfp8internal11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE5linesEm.exit

_ZN3zfp8internal11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE5linesEm.exit: ; preds = %.preheader, %bb.h
  %.in = phi i64 [ %i.h, %bb.h ], [ %.0.i, %.preheader ]
  %i.l = trunc i64 %.in to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.l, i32 1)
  ret i32 %.sroa.speculated

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn16 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn17, %bb.f ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn16

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6resizeEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = add i32 %1, -1
  %i.b = select i1 %.not, i32 1, i32 %i.a
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %storemerge = phi i32 [ %i.b, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.c = add i32 %storemerge, 1                   ; 3 uses
  %i.d = and i32 %i.c, %storemerge
  %.not2 = icmp eq i32 %i.d, 0
  %i.e = or i32 %i.c, %storemerge
  br i1 %.not2, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  store i32 %storemerge, ptr %0, align 8, !tbaa !156
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = zext i32 %i.c to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !490  ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i8.i.i, label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.i) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i: ; preds = %bb.d, %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.h) #29 ; 2 uses
  %.not.i.i10.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i10.i.i, label %bb.e, label %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit

bb.e:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i
  store ptr %i.j, ptr %i.f, align 8, !tbaa !490
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !156
  %i.n = add i32 %i.m, 1
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 8
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !491  ; 2 uses
  %.not.i8.i.i3 = icmp eq ptr %i.q, null
  br i1 %.not.i8.i.i3, label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4, label %bb.f

bb.f:                                             ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit
  tail call void @free(ptr noundef nonnull %i.q) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4: ; preds = %bb.f, %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #29 ; 2 uses
  %.not.i.i10.i.i5 = icmp eq ptr %i.r, null
  br i1 %.not.i.i10.i.i5, label %bb.g, label %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit

bb.g:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4
  store ptr %i.r, ptr %i.l, align 8, !tbaa !491
  %i.t = load i32, ptr %0, align 8, !tbaa !156    ; 3 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !65   ; 2 uses
  %2 = add i32 %i.t, 1                            ; 2 uses
  %.off = add i32 %i.t, -7
  %switch = icmp ult i32 %.off, -8
  br i1 %switch, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit
  %n.vec = and i32 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = zext i32 %index to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> zeroinitializer, ptr %i.w, align 4, !tbaa !162
  store <4 x i32> zeroinitializer, ptr %i.x, align 4, !tbaa !162
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.y = icmp eq i32 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !488

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %2, %n.vec
  br i1 %cmp.n, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %middle.block, %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit
  %.03.i.ph = phi i32 [ 0, %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03.i = phi i32 [ %i.ab, %scalar.ph ], [ %.03.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.z = zext i32 %.03.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  store i32 0, ptr %i.aa, align 4, !tbaa !162
  %i.ab = add i32 %.03.i, 1                       ; 2 uses
  %.not.i = icmp ugt i32 %i.ab, %i.t
  br i1 %.not.i, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit, label %scalar.ph, !llvm.loop !489

_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit: ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK3zfp8internal11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9put_blockEmPKflll(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = add i32 %i.a, 1                          ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !156
  %i.d = and i32 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !162  ; 2 uses
  %i.j = lshr i32 %i.i, 1
  %i.k = icmp eq i32 %i.j, %i.b
  br i1 %i.k, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread

_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit: ; preds = %bb.a
  %i.l = or i32 %i.i, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !162
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67   ; 2 uses
  %i.o = getelementptr inbounds nuw [256 x i8], ptr %i.n, i64 %i.g ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !160, !nonnull !141, !align !142 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load i64, ptr %i.r, align 8, !tbaa !155  ; 2 uses
  %i.t = urem i64 %1, %i.s
  %i.u = shl i64 %i.t, 2
  %i.v = udiv i64 %1, %i.s                        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.x = load i64, ptr %i.w, align 8, !tbaa !154  ; 2 uses
  %i.y = urem i64 %i.v, %i.x
  %i.z = shl i64 %i.y, 2
  %i.aa = udiv i64 %i.v, %i.x
  %i.ab = shl i64 %i.aa, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !152 ; 2 uses
  %i.ae = xor i64 %i.ad, %i.u
  %i.af = add i64 %i.ae, -4
  %i.ag = lshr i64 %i.af, 62
  %i.ah = sub i64 0, %i.ad
  %i.ai = and i64 %i.ag, %i.ah                    ; 18 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !151 ; 2 uses
  %i.al = xor i64 %i.ak, %i.z
  %i.am = add i64 %i.al, -4
  %i.an = lshr i64 %i.am, 62
  %i.ao = sub i64 0, %i.ak
  %i.ap = and i64 %i.an, %i.ao                    ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !150 ; 2 uses
  %i.as = xor i64 %i.ar, %i.ab
  %i.at = add i64 %i.as, -4
  %i.au = lshr i64 %i.at, 62
  %i.av = sub i64 0, %i.ar
  %i.aw = and i64 %i.au, %i.av                    ; 2 uses
  %i.ax = or i64 %i.ap, %i.ai
  %i.ay = or i64 %i.ax, %i.aw
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3zfp8internal11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLine3putEPKflll(ptr noundef nonnull align 4 dereferenceable(256) %i.o, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5)
  br label %_ZN3zfp8internal11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLine3putEPKflllj.exit

bb.d:                                             ; preds = %bb.b
  %i.ba = trunc nuw nsw i64 %i.aw to i32
  %i.bb = trunc nuw nsw i64 %i.ap to i32
  %i.bc = sub nuw nsw i64 4, %i.ai
  %i.bd = sub nuw nsw i32 4, %i.bb                ; 2 uses
  %i.be = sub nuw nsw i32 4, %i.ba
  %i.bf = mul nsw i64 %3, %i.bc
  %i.bg = sub nsw i64 %4, %i.bf                   ; 4 uses
  %i.bh = zext nneg i32 %i.bd to i64
  %i.bi = mul nsw i64 %4, %i.bh
  %i.bj = sub nsw i64 %5, %i.bi
  %i.bk = shl nuw nsw i32 %i.bd, 2
  %i.bl = sub nuw nsw i32 16, %i.bk
  %i.bm = zext nneg i32 %i.bl to i64
  %exitcond.not.i = icmp eq i64 %i.ai, 3
  %exitcond.not.i.1 = icmp eq i64 %i.ai, 2
  %exitcond.not.i.2 = icmp eq i64 %i.ai, 1
  %exitcond59.not.i = icmp eq i64 %i.ap, 3
  %exitcond.not.i.131 = icmp eq i64 %i.ai, 3
  %exitcond.not.i.1.1 = icmp eq i64 %i.ai, 2
  %exitcond.not.i.2.1 = icmp eq i64 %i.ai, 1
  %exitcond59.not.i.1 = icmp eq i64 %i.ap, 2
  %exitcond.not.i.232 = icmp eq i64 %i.ai, 3
  %exitcond.not.i.1.2 = icmp eq i64 %i.ai, 2
  %exitcond.not.i.2.2 = icmp eq i64 %i.ai, 1
  %exitcond59.not.i.2 = icmp eq i64 %i.ap, 1
  %exitcond.not.i.3 = icmp eq i64 %i.ai, 3
  %exitcond.not.i.1.3 = icmp eq i64 %i.ai, 2
  %exitcond.not.i.2.3 = icmp eq i64 %i.ai, 1
  br label %.preheader46.i

.preheader46.i:                                   ; preds = %bb.e, %bb.d
  %.03855.i = phi i32 [ 0, %bb.d ], [ %i.bq, %bb.e ]
  %.03954.i = phi ptr [ %i.o, %bb.d ], [ %i.bs, %bb.e ] ; 5 uses
  %.04053.i = phi ptr [ %2, %bb.d ], [ %i.br, %bb.e ] ; 2 uses
  %i.bn = load float, ptr %.04053.i, align 4, !tbaa !99
  store float %i.bn, ptr %.03954.i, align 4, !tbaa !99
  %i.bo = getelementptr inbounds [4 x i8], ptr %.04053.i, i64 %3 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.03954.i, i64 4 ; 2 uses
  br i1 %exitcond.not.i, label %bb.f, label %bb.s

bb.e:                                             ; preds = %bb.r, %bb.n, %bb.j, %bb.f
  %.lcssa30 = phi ptr [ %i.bt, %bb.f ], [ %i.ch, %bb.j ], [ %i.cv, %bb.n ], [ %i.dj, %bb.r ]
  %.lcssa29 = phi ptr [ %i.bu, %bb.f ], [ %i.ci, %bb.j ], [ %i.cw, %bb.n ], [ %i.dk, %bb.r ]
  %i.bq = add nuw nsw i32 %.03855.i, 1            ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %.lcssa30, i64 %i.bj
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.lcssa29, i64 %i.bm
  %exitcond60.not.i = icmp eq i32 %i.bq, %i.be
  br i1 %exitcond60.not.i, label %_ZN3zfp8internal11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLine3putEPKflllj.exit, label %.preheader46.i

bb.f:                                             ; preds = %bb.u, %bb.t, %bb.s, %.preheader46.i
  %.lcssa28 = phi ptr [ %i.bo, %.preheader46.i ], [ %i.dm, %bb.s ], [ %i.dp, %bb.t ], [ %i.ds, %bb.u ]
  %.lcssa = phi ptr [ %i.bp, %.preheader46.i ], [ %i.dn, %bb.s ], [ %i.dq, %bb.t ], [ %i.dt, %bb.u ]
  %i.bt = getelementptr inbounds [4 x i8], ptr %.lcssa28, i64 %i.bg ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.ai ; 6 uses
  br i1 %exitcond59.not.i, label %bb.e, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.f
  %i.bv = load float, ptr %i.bt, align 4, !tbaa !99
  store float %i.bv, ptr %i.bu, align 4, !tbaa !99
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %3 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  br i1 %exitcond.not.i.131, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.preheader.i.1
  %i.by = load float, ptr %i.bw, align 4, !tbaa !99
  store float %i.by, ptr %i.bx, align 4, !tbaa !99
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %3 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  br i1 %exitcond.not.i.1.1, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cb = load float, ptr %i.bz, align 4, !tbaa !99
  store float %i.cb, ptr %i.ca, align 4, !tbaa !99
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %3 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 12 ; 2 uses
  br i1 %exitcond.not.i.2.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = load float, ptr %i.cc, align 4, !tbaa !99
  store float %i.ce, ptr %i.cd, align 4, !tbaa !99
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %.preheader.i.1
  %.lcssa28.1 = phi ptr [ %i.bw, %.preheader.i.1 ], [ %i.bz, %bb.g ], [ %i.cc, %bb.h ], [ %i.cf, %bb.i ]
  %.lcssa.1 = phi ptr [ %i.bx, %.preheader.i.1 ], [ %i.ca, %bb.g ], [ %i.cd, %bb.h ], [ %i.cg, %bb.i ]
  %i.ch = getelementptr inbounds [4 x i8], ptr %.lcssa28.1, i64 %i.bg ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.lcssa.1, i64 %i.ai ; 6 uses
  br i1 %exitcond59.not.i.1, label %bb.e, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %bb.j
  %i.cj = load float, ptr %i.ch, align 4, !tbaa !99
  store float %i.cj, ptr %i.ci, align 4, !tbaa !99
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %3 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  br i1 %exitcond.not.i.232, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.preheader.i.2
  %i.cm = load float, ptr %i.ck, align 4, !tbaa !99
  store float %i.cm, ptr %i.cl, align 4, !tbaa !99
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %3 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  br i1 %exitcond.not.i.1.2, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cp = load float, ptr %i.cn, align 4, !tbaa !99
  store float %i.cp, ptr %i.co, align 4, !tbaa !99
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %3 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 12 ; 2 uses
  br i1 %exitcond.not.i.2.2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = load float, ptr %i.cq, align 4, !tbaa !99
end_hunk_2
begin_hunk_3_@_ZN3zfp8internal10BlockStoreINS_5codec4zfp4IfEENS_5index8implicitEE5allocEb:bb.a

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i:  ; preds = %bb.b, %_ZN3zfp8internal10BlockStoreINS_5codec4zfp4IfEENS_5index8implicitEE4freeEv.exit
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.j) #29 ; 4 uses
  %.not.i.i10.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i10.i, label %bb.c, label %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit

bb.c:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i
  store ptr %i.m, ptr %i.a, align 8, !tbaa !110
  %.pre = load i64, ptr %i.k, align 8, !tbaa !225 ; 3 uses
  %.not.i.i.i = icmp samesign ne i64 %.pre, 0
  %or.cond.not = select i1 %1, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %bb.d, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.d:                                             ; preds = %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %.pre, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %bb.d, %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !208
  %i.q = tail call ptr @stream_open(ptr noundef nonnull %i.m, i64 noundef %.pre)
  tail call void @zfp_stream_set_bit_stream(ptr noundef %i.p, ptr noundef %i.q)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp5codec8zfp_baseILj4EfED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !208
  %i.b = tail call ptr @zfp_stream_bit_stream(ptr noundef %i.a)
  tail call void @stream_close(ptr noundef %i.b)
  %i.c = load ptr, ptr %0, align 8, !tbaa !208
  tail call void @zfp_stream_set_bit_stream(ptr noundef %i.c, ptr noundef null)
  %i.d = load ptr, ptr %0, align 8, !tbaa !208
  tail call void @zfp_stream_close(ptr noundef %i.d)
  ret void
}

declare ptr @zfp_field_4d(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZN3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE5linesEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %.not = icmp ult i64 %1, 2147483648
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3zfp9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !14
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN3zfp9exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.f, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn17 = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #24
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %.not9 = icmp eq i64 %0, 0
  br i1 %.not9, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = add i64 %0, 1023
  %i.h = lshr i64 %i.g, 10
  br label %_ZN3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE5linesEm.exit

.preheader:                                       ; preds = %bb.g, %.preheader
  %.0.i = phi i64 [ %i.k, %.preheader ], [ 1, %bb.g ] ; 4 uses
  %i.i = mul i64 %.0.i, %.0.i
  %i.j = icmp ult i64 %i.i, %1
  %i.k = shl i64 %.0.i, 1
  br i1 %i.j, label %.preheader, label %_ZN3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE5linesEm.exit

_ZN3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE5linesEm.exit: ; preds = %.preheader, %bb.h
  %.in = phi i64 [ %i.h, %bb.h ], [ %.0.i, %.preheader ]
  %i.l = trunc i64 %.in to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.l, i32 1)
  ret i32 %.sroa.speculated

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn16 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn17, %bb.f ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn16

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6resizeEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = add i32 %1, -1
  %i.b = select i1 %.not, i32 1, i32 %i.a
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %storemerge = phi i32 [ %i.b, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.c = add i32 %storemerge, 1                   ; 3 uses
  %i.d = and i32 %i.c, %storemerge
  %.not2 = icmp eq i32 %i.d, 0
  %i.e = or i32 %i.c, %storemerge
  br i1 %.not2, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  store i32 %storemerge, ptr %0, align 8, !tbaa !163
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = zext i32 %i.c to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !522  ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i8.i.i, label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.i) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i: ; preds = %bb.d, %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.h) #29 ; 2 uses
  %.not.i.i10.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i10.i.i, label %bb.e, label %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit

bb.e:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i
  store ptr %i.j, ptr %i.f, align 8, !tbaa !522
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !163
  %i.n = add i32 %i.m, 1
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 10
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !523  ; 2 uses
  %.not.i8.i.i3 = icmp eq ptr %i.q, null
  br i1 %.not.i8.i.i3, label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4, label %bb.f

bb.f:                                             ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit
  tail call void @free(ptr noundef nonnull %i.q) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4: ; preds = %bb.f, %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #29 ; 2 uses
  %.not.i.i10.i.i5 = icmp eq ptr %i.r, null
  br i1 %.not.i.i10.i.i5, label %bb.g, label %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit

bb.g:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4
  store ptr %i.r, ptr %i.l, align 8, !tbaa !523
  %i.t = load i32, ptr %0, align 8, !tbaa !163    ; 3 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !71   ; 2 uses
  %2 = add i32 %i.t, 1                            ; 2 uses
  %.off = add i32 %i.t, -7
  %switch = icmp ult i32 %.off, -8
  br i1 %switch, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit
  %n.vec = and i32 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = zext i32 %index to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> zeroinitializer, ptr %i.w, align 4, !tbaa !221
  store <4 x i32> zeroinitializer, ptr %i.x, align 4, !tbaa !221
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.y = icmp eq i32 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !520

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %2, %n.vec
  br i1 %cmp.n, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %middle.block, %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit
  %.03.i.ph = phi i32 [ 0, %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03.i = phi i32 [ %i.ab, %scalar.ph ], [ %.03.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.z = zext i32 %.03.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  store i32 0, ptr %i.aa, align 4, !tbaa !221
  %i.ab = add i32 %.03.i, 1                       ; 2 uses
  %.not.i = icmp ugt i32 %i.ab, %i.t
  br i1 %.not.i, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit, label %scalar.ph, !llvm.loop !521

_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit: ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9put_blockEmPKfllll(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = add i32 %i.a, 1                          ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !163
  %i.d = and i32 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !221  ; 2 uses
  %i.j = lshr i32 %i.i, 1
  %i.k = icmp eq i32 %i.j, %i.b
  br i1 %i.k, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread

_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit: ; preds = %bb.a
  %i.l = or i32 %i.i, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !221
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73   ; 2 uses
  %i.o = getelementptr inbounds nuw [1024 x i8], ptr %i.n, i64 %i.g ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !223, !nonnull !141, !align !142 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load i64, ptr %i.r, align 8, !tbaa !219  ; 2 uses
  %i.t = urem i64 %1, %i.s
  %i.u = shl i64 %i.t, 2
  %i.v = udiv i64 %1, %i.s                        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.x = load i64, ptr %i.w, align 8, !tbaa !218  ; 2 uses
  %i.y = urem i64 %i.v, %i.x
  %i.z = shl i64 %i.y, 2
  %i.aa = udiv i64 %i.v, %i.x                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !217 ; 2 uses
  %i.ad = urem i64 %i.aa, %i.ac
  %i.ae = shl i64 %i.ad, 2
  %i.af = udiv i64 %i.aa, %i.ac
  %i.ag = shl i64 %i.af, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !215 ; 2 uses
  %i.aj = xor i64 %i.ai, %i.u
  %i.ak = add i64 %i.aj, -4
  %i.al = lshr i64 %i.ak, 62
  %i.am = sub i64 0, %i.ai
  %i.an = and i64 %i.al, %i.am                    ; 18 uses
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !214 ; 2 uses
  %i.ar = xor i64 %i.aq, %i.z
  %i.as = add i64 %i.ar, -4
  %i.at = lshr i64 %i.as, 62
  %i.au = sub i64 0, %i.aq
  %i.av = and i64 %i.at, %i.au                    ; 4 uses
  %i.aw = trunc nuw nsw i64 %i.av to i32          ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !213 ; 2 uses
  %i.az = xor i64 %i.ay, %i.ae
  %i.ba = add i64 %i.az, -4
  %i.bb = lshr i64 %i.ba, 62
  %i.bc = sub i64 0, %i.ay
  %i.bd = and i64 %i.bb, %i.bc
  %i.be = trunc nuw nsw i64 %i.bd to i32          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !212 ; 2 uses
  %i.bh = xor i64 %i.bg, %i.ag
  %i.bi = add i64 %i.bh, -4
  %i.bj = lshr i64 %i.bi, 62
  %i.bk = sub i64 0, %i.bg
  %i.bl = and i64 %i.bj, %i.bk
  %i.bm = trunc nuw nsw i64 %i.bl to i32          ; 2 uses
  %i.bn = shl nuw nsw i32 %i.bm, 4
  %i.bo = shl nuw nsw i32 %i.be, 2
  %i.bp = or disjoint i32 %i.bn, %i.bo
  %i.bq = or disjoint i32 %i.bp, %i.ao
  %i.br = or i32 %i.bq, %i.aw
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLine3putEPKfllll(ptr noundef nonnull align 4 dereferenceable(1024) %i.o, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6)
  br label %_ZN3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLine3putEPKfllllj.exit

bb.d:                                             ; preds = %bb.b
  %i.bt = sub nuw nsw i64 4, %i.an
  %i.bu = sub nuw nsw i32 4, %i.aw                ; 2 uses
  %i.bv = sub nuw nsw i32 4, %i.be                ; 3 uses
  %i.bw = sub nuw nsw i32 4, %i.bm
  %i.bx = mul nsw i64 %3, %i.bt
  %i.by = sub nsw i64 %4, %i.bx                   ; 4 uses
  %i.bz = zext nneg i32 %i.bu to i64
  %i.ca = mul nsw i64 %4, %i.bz
  %i.cb = sub nsw i64 %5, %i.ca
  %i.cc = shl nuw nsw i32 %i.bu, 2
  %i.cd = sub nuw nsw i32 16, %i.cc
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = zext nneg i32 %i.bv to i64
  %i.cg = mul nsw i64 %5, %i.cf
  %i.ch = sub nsw i64 %6, %i.cg
  %i.ci = shl nuw nsw i32 %i.bv, 4
  %i.cj = sub nuw nsw i32 64, %i.ci
  %i.ck = zext nneg i32 %i.cj to i64
  %exitcond.not.i = icmp eq i64 %i.an, 3
  %exitcond.not.i.1 = icmp eq i64 %i.an, 2
  %exitcond.not.i.2 = icmp eq i64 %i.an, 1
  %exitcond80.not.i = icmp eq i64 %i.av, 3
  %exitcond.not.i.144 = icmp eq i64 %i.an, 3
  %exitcond.not.i.1.1 = icmp eq i64 %i.an, 2
  %exitcond.not.i.2.1 = icmp eq i64 %i.an, 1
  %exitcond80.not.i.1 = icmp eq i64 %i.av, 2
  %exitcond.not.i.245 = icmp eq i64 %i.an, 3
  %exitcond.not.i.1.2 = icmp eq i64 %i.an, 2
  %exitcond.not.i.2.2 = icmp eq i64 %i.an, 1
  %exitcond80.not.i.2 = icmp eq i64 %i.av, 1
  %exitcond.not.i.3 = icmp eq i64 %i.an, 3
  %exitcond.not.i.1.3 = icmp eq i64 %i.an, 2
  %exitcond.not.i.2.3 = icmp eq i64 %i.an, 1
  br label %.preheader62.i

.preheader62.i:                                   ; preds = %bb.e, %bb.d
  %.05174.i = phi i32 [ 0, %bb.d ], [ %i.co, %bb.e ]
  %.05273.i = phi ptr [ %i.o, %bb.d ], [ %i.cq, %bb.e ]
  %.05372.i = phi ptr [ %2, %bb.d ], [ %i.cp, %bb.e ]
  br label %.preheader61.i

.preheader61.i:                                   ; preds = %bb.f, %.preheader62.i
  %.05071.i = phi i32 [ 0, %.preheader62.i ], [ %i.cr, %bb.f ]
  %.170.i = phi ptr [ %.05273.i, %.preheader62.i ], [ %i.ct, %bb.f ] ; 5 uses
  %.15469.i = phi ptr [ %.05372.i, %.preheader62.i ], [ %i.cs, %bb.f ] ; 2 uses
  %i.cl = load float, ptr %.15469.i, align 4, !tbaa !99
  store float %i.cl, ptr %.170.i, align 4, !tbaa !99
  %i.cm = getelementptr inbounds [4 x i8], ptr %.15469.i, i64 %3 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.170.i, i64 4 ; 2 uses
  br i1 %exitcond.not.i, label %bb.g, label %bb.t

bb.e:                                             ; preds = %bb.f
  %i.co = add nuw nsw i32 %.05174.i, 1            ; 2 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.ch
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ck
  %exitcond82.not.i = icmp eq i32 %i.co, %i.bw
  br i1 %exitcond82.not.i, label %_ZN3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLine3putEPKfllllj.exit, label %.preheader62.i

bb.f:                                             ; preds = %bb.s, %bb.o, %bb.k, %bb.g
  %.lcssa41 = phi ptr [ %i.cu, %bb.g ], [ %i.di, %bb.k ], [ %i.dw, %bb.o ], [ %i.ek, %bb.s ]
  %.lcssa40 = phi ptr [ %i.cv, %bb.g ], [ %i.dj, %bb.k ], [ %i.dx, %bb.o ], [ %i.el, %bb.s ]
  %i.cr = add nuw nsw i32 %.05071.i, 1            ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %.lcssa41, i64 %i.cb ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.lcssa40, i64 %i.ce ; 2 uses
  %exitcond81.not.i = icmp eq i32 %i.cr, %i.bv
  br i1 %exitcond81.not.i, label %bb.e, label %.preheader61.i

bb.g:                                             ; preds = %bb.v, %bb.u, %bb.t, %.preheader61.i
  %.lcssa39 = phi ptr [ %i.cm, %.preheader61.i ], [ %i.en, %bb.t ], [ %i.eq, %bb.u ], [ %i.et, %bb.v ]
  %.lcssa = phi ptr [ %i.cn, %.preheader61.i ], [ %i.eo, %bb.t ], [ %i.er, %bb.u ], [ %i.eu, %bb.v ]
  %i.cu = getelementptr inbounds [4 x i8], ptr %.lcssa39, i64 %i.by ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.an ; 6 uses
  br i1 %exitcond80.not.i, label %bb.f, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.g
  %i.cw = load float, ptr %i.cu, align 4, !tbaa !99
  store float %i.cw, ptr %i.cv, align 4, !tbaa !99
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %3 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 2 uses
  br i1 %exitcond.not.i.144, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.preheader.i.1
  %i.cz = load float, ptr %i.cx, align 4, !tbaa !99
  store float %i.cz, ptr %i.cy, align 4, !tbaa !99
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %3 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  br i1 %exitcond.not.i.1.1, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dc = load float, ptr %i.da, align 4, !tbaa !99
  store float %i.dc, ptr %i.db, align 4, !tbaa !99
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.da, i64 %3 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 12 ; 2 uses
  br i1 %exitcond.not.i.2.1, label %bb.k, label %bb.j

end_hunk_3
begin_hunk_4_@_ZN3zfp8internal10BlockStoreINS_5codec4zfp1IdEENS_5index8implicitEE5allocEb:bb.a
  tail call void @free(ptr noundef nonnull %i.l) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i:  ; preds = %bb.b, %_ZN3zfp8internal10BlockStoreINS_5codec4zfp1IdEENS_5index8implicitEE4freeEv.exit
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.j) #29 ; 4 uses
  %.not.i.i10.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i10.i, label %bb.c, label %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit

bb.c:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i
  store ptr %i.m, ptr %i.a, align 8, !tbaa !110
  %.pre = load i64, ptr %i.k, align 8, !tbaa !277 ; 3 uses
  %.not.i.i.i = icmp samesign ne i64 %.pre, 0
  %or.cond.not = select i1 %1, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %bb.d, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.d:                                             ; preds = %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %.pre, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %bb.d, %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !227
  %i.q = tail call ptr @stream_open(ptr noundef nonnull %i.m, i64 noundef %.pre)
  tail call void @zfp_stream_set_bit_stream(ptr noundef %i.p, ptr noundef %i.q)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp5codec8zfp_baseILj1EdED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !227
  %i.b = tail call ptr @zfp_stream_bit_stream(ptr noundef %i.a)
  tail call void @stream_close(ptr noundef %i.b)
  %i.c = load ptr, ptr %0, align 8, !tbaa !227
  tail call void @zfp_stream_set_bit_stream(ptr noundef %i.c, ptr noundef null)
  %i.d = load ptr, ptr %0, align 8, !tbaa !227
  tail call void @zfp_stream_close(ptr noundef %i.d)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZN3zfp8internal11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE5linesEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %.not = icmp ult i64 %1, 2147483648
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3zfp9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !14
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN3zfp9exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.f, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn17 = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #24
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %.not9 = icmp eq i64 %0, 0
  br i1 %.not9, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = add i64 %0, 31
  %i.h = lshr i64 %i.g, 5
  br label %_ZN3zfp8internal11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE5linesEm.exit

.preheader:                                       ; preds = %bb.g, %.preheader
  %.0.i = phi i64 [ %i.k, %.preheader ], [ 1, %bb.g ] ; 4 uses
  %i.i = mul i64 %.0.i, %.0.i
  %i.j = icmp ult i64 %i.i, %1
  %i.k = shl i64 %.0.i, 1
  br i1 %i.j, label %.preheader, label %_ZN3zfp8internal11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE5linesEm.exit

_ZN3zfp8internal11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE5linesEm.exit: ; preds = %.preheader, %bb.h
  %.in = phi i64 [ %i.h, %bb.h ], [ %.0.i, %.preheader ]
  %i.l = trunc i64 %.in to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.l, i32 1)
  ret i32 %.sroa.speculated

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn16 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn17, %bb.f ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn16

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE6resizeEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = add i32 %1, -1
  %i.b = select i1 %.not, i32 1, i32 %i.a
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %storemerge = phi i32 [ %i.b, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.c = add i32 %storemerge, 1                   ; 3 uses
  %i.d = and i32 %i.c, %storemerge
  %.not2 = icmp eq i32 %i.d, 0
  %i.e = or i32 %i.c, %storemerge
  br i1 %.not2, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  store i32 %storemerge, ptr %0, align 8, !tbaa !233
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = zext i32 %i.c to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !682  ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i8.i.i, label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.i) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i: ; preds = %bb.d, %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.h) #29 ; 2 uses
  %.not.i.i10.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i10.i.i, label %bb.e, label %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit

bb.e:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i
  store ptr %i.j, ptr %i.f, align 8, !tbaa !682
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !233
  %i.n = add i32 %i.m, 1
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 5
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !683  ; 2 uses
  %.not.i8.i.i3 = icmp eq ptr %i.q, null
  br i1 %.not.i8.i.i3, label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4, label %bb.f

bb.f:                                             ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit
  tail call void @free(ptr noundef nonnull %i.q) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4: ; preds = %bb.f, %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #29 ; 2 uses
  %.not.i.i10.i.i5 = icmp eq ptr %i.r, null
  br i1 %.not.i.i10.i.i5, label %bb.g, label %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit

bb.g:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4
  store ptr %i.r, ptr %i.l, align 8, !tbaa !683
  %i.t = load i32, ptr %0, align 8, !tbaa !233    ; 3 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !77   ; 2 uses
  %2 = add i32 %i.t, 1                            ; 2 uses
  %.off = add i32 %i.t, -7
  %switch = icmp ult i32 %.off, -8
  br i1 %switch, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit
  %n.vec = and i32 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = zext i32 %index to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> zeroinitializer, ptr %i.w, align 4, !tbaa !279
  store <4 x i32> zeroinitializer, ptr %i.x, align 4, !tbaa !279
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.y = icmp eq i32 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !680

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %2, %n.vec
  br i1 %cmp.n, label %_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %middle.block, %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit
  %.03.i.ph = phi i32 [ 0, %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03.i = phi i32 [ %i.ab, %scalar.ph ], [ %.03.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.z = zext i32 %.03.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  store i32 0, ptr %i.aa, align 4, !tbaa !279
  %i.ab = add i32 %.03.i, 1                       ; 2 uses
  %.not.i = icmp ugt i32 %i.ab, %i.t
  br i1 %.not.i, label %_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit, label %scalar.ph, !llvm.loop !681

_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit: ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp8internal11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9put_blockEmPKdl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = add i32 %i.a, 1                          ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !233
  %i.d = and i32 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !279  ; 2 uses
  %i.j = lshr i32 %i.i, 1
  %i.k = icmp eq i32 %i.j, %i.b
  br i1 %i.k, label %_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit, label %_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread

_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit: ; preds = %bb.a
  %i.l = or i32 %i.i, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !279
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !79   ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.g ; 7 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !281, !nonnull !141, !align !142
  %i.r = shl i64 %1, 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.t = load i64, ptr %i.s, align 8, !tbaa !231  ; 2 uses
  %i.u = xor i64 %i.t, %i.r
  %i.v = add i64 %i.u, -4
  %i.w = lshr i64 %i.v, 62
  %i.x = sub i64 0, %i.t
  %i.y = and i64 %i.w, %i.x                       ; 3 uses
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = load double, ptr %2, align 8, !tbaa !49
  store double %i.z, ptr %i.o, align 8, !tbaa !49
  %i.aa = getelementptr inbounds [8 x i8], ptr %2, i64 %3 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ac = load double, ptr %i.aa, align 8, !tbaa !49
  store double %i.ac, ptr %i.ab, align 8, !tbaa !49
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %3 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.af = load double, ptr %i.ad, align 8, !tbaa !49
  store double %i.af, ptr %i.ae, align 8, !tbaa !49
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ai = load double, ptr %i.ag, align 8, !tbaa !49
  store double %i.ai, ptr %i.ah, align 8, !tbaa !49
  br label %_ZN3zfp8internal11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLine3putEPKdlj.exit

bb.d:                                             ; preds = %bb.b
  %i.aj = load double, ptr %2, align 8, !tbaa !49
  store double %i.aj, ptr %i.o, align 8, !tbaa !49
  %exitcond.not.i = icmp eq i64 %i.y, 3
  br i1 %exitcond.not.i, label %_ZN3zfp8internal11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLine3putEPKdlj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.al = getelementptr inbounds [8 x i8], ptr %2, i64 %3 ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !49
  store double %i.am, ptr %i.ak, align 8, !tbaa !49
  %exitcond.not.i.1 = icmp eq i64 %i.y, 2
  br i1 %exitcond.not.i.1, label %_ZN3zfp8internal11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLine3putEPKdlj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.al, i64 %3
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !49
  store double %i.ap, ptr %i.an, align 8, !tbaa !49
  br label %_ZN3zfp8internal11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLine3putEPKdlj.exit

_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread: ; preds = %bb.a, %_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !281, !nonnull !141, !align !142 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.au = load i64, ptr %i.at, align 8, !tbaa !178
  %i.av = mul i64 %i.au, %1
  %i.aw = shl i64 %1, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !231 ; 2 uses
  %i.az = xor i64 %i.ay, %i.aw
  %i.ba = add i64 %i.az, -4
  %i.bb = lshr i64 %i.ba, 62
  %i.bc = sub i64 0, %i.ay
  %i.bd = and i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = load ptr, ptr %i.as, align 8, !tbaa !227 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !195
  tail call void @stream_wseek(ptr noundef %i.bg, i64 noundef %i.av)
  %.not.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread
  %i.bh = sub nuw nsw i64 4, %i.bd
  %i.bi = tail call noundef i64 @zfp_encode_partial_block_strided_double_1(ptr noundef nonnull %i.be, ptr noundef %2, i64 noundef %i.bh, i64 noundef %3) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEE6encodeEmPKdl.exit

bb.h:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread
  %i.bj = tail call noundef i64 @zfp_encode_block_strided_double_1(ptr noundef nonnull %i.be, ptr noundef %2, i64 noundef %3) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEE6encodeEmPKdl.exit

_ZN3zfp8internal11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEE6encodeEmPKdl.exit: ; preds = %bb.g, %bb.h
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !195
  %i.bl = tail call i64 @stream_flush(ptr noundef %i.bk) ; 0 uses
  br label %_ZN3zfp8internal11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLine3putEPKdlj.exit

_ZN3zfp8internal11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLine3putEPKdlj.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.c, %_ZN3zfp8internal11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEE6encodeEmPKdl.exit
  ret void
}

declare i64 @zfp_encode_partial_block_strided_double_1(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

declare i64 @zfp_encode_block_strided_double_1(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK3zfp8internal11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE5flushEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79, !noalias !688 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77, !noalias !688 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.d, align 4, !tbaa !39, !noalias !688 ; 2 uses
  %i.e = icmp ne i32 %.sroa.0.0.copyload.i.i, 0
  %.not.i.i.i = icmp eq ptr %i.b, null
  %or.cond.i.i = select i1 %i.e, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE5firstEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !233, !noalias !688
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.in.i.i.i = phi i32 [ 0, %bb.b ], [ %.0.i.i.i, %bb.d ]
  %.0.i.i.i = add i32 %.0.in.i.i.i, 1             ; 3 uses
  %.not7.i.i.i = icmp ugt i32 %.0.i.i.i, %i.f
  br i1 %.not7.i.i.i, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = zext i32 %.0.i.i.i to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !279, !noalias !688 ; 2 uses
  %.not10.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not10.i.i.i, label %bb.c, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.d
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.g
  br label %_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE5firstEv.exit

_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE5firstEv.exit: ; preds = %.critedge.i.i.i, %bb.a
  %.sroa.7.0 = phi i32 [ %.sroa.0.0.copyload.i.i, %bb.a ], [ %i.i, %.critedge.i.i.i ]
  %.sroa.3.0 = phi ptr [ %i.b, %bb.a ], [ %i.j, %.critedge.i.i.i ] ; 2 uses
  %.not.i6 = icmp eq ptr %.sroa.3.0, null
  br i1 %.not.i6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE5firstEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.e

._crit_edge:                                      ; preds = %bb.c, %_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE14const_iteratorppEi.exit, %bb.i, %_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE5firstEv.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE14const_iteratorppEi.exit
  %i.l = phi ptr [ %i.d, %.lr.ph ], [ %i.ao, %_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE14const_iteratorppEi.exit ]
  %i.m = phi ptr [ %i.b, %.lr.ph ], [ %i.ap, %_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE14const_iteratorppEi.exit ]
  %i.n = phi i32 [ %.sroa.7.0, %.lr.ph ], [ %i.ba, %_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE14const_iteratorppEi.exit ] ; 2 uses
  %i.o = phi ptr [ %.sroa.3.0, %.lr.ph ], [ %i.bb, %_ZN3zfp8internal5CacheINS0_11BlockCache1IdNS0_11BlockStore1IdNS_5codec4zfp1IdEENS_5index8implicitEEEE9CacheLineEE14const_iteratorppEi.exit ] ; 3 uses
  %i.p = trunc i32 %i.n to i1
  br i1 %i.p, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = lshr i32 %i.n, 1
  %i.r = add nsw i32 %i.q, -1
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !281, !nonnull !141, !align !142 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !178
end_hunk_4
begin_hunk_5_@_ZN3zfp8internal10BlockStoreINS_5codec4zfp2IdEENS_5index8implicitEE5allocEb:bb.a
  tail call void @free(ptr noundef nonnull %i.l) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i:  ; preds = %bb.b, %_ZN3zfp8internal10BlockStoreINS_5codec4zfp2IdEENS_5index8implicitEE4freeEv.exit
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.j) #29 ; 4 uses
  %.not.i.i10.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i10.i, label %bb.c, label %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit

bb.c:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i
  store ptr %i.m, ptr %i.a, align 8, !tbaa !110
  %.pre = load i64, ptr %i.k, align 8, !tbaa !283 ; 3 uses
  %.not.i.i.i = icmp samesign ne i64 %.pre, 0
  %or.cond.not = select i1 %1, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %bb.d, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.d:                                             ; preds = %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %.pre, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %bb.d, %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !236
  %i.q = tail call ptr @stream_open(ptr noundef nonnull %i.m, i64 noundef %.pre)
  tail call void @zfp_stream_set_bit_stream(ptr noundef %i.p, ptr noundef %i.q)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp5codec8zfp_baseILj2EdED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !236
  %i.b = tail call ptr @zfp_stream_bit_stream(ptr noundef %i.a)
  tail call void @stream_close(ptr noundef %i.b)
  %i.c = load ptr, ptr %0, align 8, !tbaa !236
  tail call void @zfp_stream_set_bit_stream(ptr noundef %i.c, ptr noundef null)
  %i.d = load ptr, ptr %0, align 8, !tbaa !236
  tail call void @zfp_stream_close(ptr noundef %i.d)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZN3zfp8internal11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE5linesEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %.not = icmp ult i64 %1, 2147483648
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3zfp9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !14
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN3zfp9exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.f, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn17 = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #24
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %.not9 = icmp eq i64 %0, 0
  br i1 %.not9, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = add i64 %0, 127
  %i.h = lshr i64 %i.g, 7
  br label %_ZN3zfp8internal11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE5linesEm.exit

.preheader:                                       ; preds = %bb.g, %.preheader
  %.0.i = phi i64 [ %i.k, %.preheader ], [ 1, %bb.g ] ; 4 uses
  %i.i = mul i64 %.0.i, %.0.i
  %i.j = icmp ult i64 %i.i, %1
  %i.k = shl i64 %.0.i, 1
  br i1 %i.j, label %.preheader, label %_ZN3zfp8internal11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE5linesEm.exit

_ZN3zfp8internal11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE5linesEm.exit: ; preds = %.preheader, %bb.h
  %.in = phi i64 [ %i.h, %bb.h ], [ %.0.i, %.preheader ]
  %i.l = trunc i64 %.in to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.l, i32 1)
  ret i32 %.sroa.speculated

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn16 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn17, %bb.f ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn16

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6resizeEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = add i32 %1, -1
  %i.b = select i1 %.not, i32 1, i32 %i.a
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %storemerge = phi i32 [ %i.b, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.c = add i32 %storemerge, 1                   ; 3 uses
  %i.d = and i32 %i.c, %storemerge
  %.not2 = icmp eq i32 %i.d, 0
  %i.e = or i32 %i.c, %storemerge
  br i1 %.not2, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  store i32 %storemerge, ptr %0, align 8, !tbaa !244
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = zext i32 %i.c to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !704  ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i8.i.i, label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.i) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i: ; preds = %bb.d, %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.h) #29 ; 2 uses
  %.not.i.i10.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i10.i.i, label %bb.e, label %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit

bb.e:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i
  store ptr %i.j, ptr %i.f, align 8, !tbaa !704
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !244
  %i.n = add i32 %i.m, 1
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 7
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !705  ; 2 uses
  %.not.i8.i.i3 = icmp eq ptr %i.q, null
  br i1 %.not.i8.i.i3, label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4, label %bb.f

bb.f:                                             ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit
  tail call void @free(ptr noundef nonnull %i.q) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4: ; preds = %bb.f, %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #29 ; 2 uses
  %.not.i.i10.i.i5 = icmp eq ptr %i.r, null
  br i1 %.not.i.i10.i.i5, label %bb.g, label %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit

bb.g:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4
  store ptr %i.r, ptr %i.l, align 8, !tbaa !705
  %i.t = load i32, ptr %0, align 8, !tbaa !244    ; 3 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !83   ; 2 uses
  %2 = add i32 %i.t, 1                            ; 2 uses
  %.off = add i32 %i.t, -7
  %switch = icmp ult i32 %.off, -8
  br i1 %switch, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit
  %n.vec = and i32 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = zext i32 %index to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> zeroinitializer, ptr %i.w, align 4, !tbaa !249
  store <4 x i32> zeroinitializer, ptr %i.x, align 4, !tbaa !249
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.y = icmp eq i32 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !702

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %2, %n.vec
  br i1 %cmp.n, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %middle.block, %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit
  %.03.i.ph = phi i32 [ 0, %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03.i = phi i32 [ %i.ab, %scalar.ph ], [ %.03.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.z = zext i32 %.03.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  store i32 0, ptr %i.aa, align 4, !tbaa !249
  %i.ab = add i32 %.03.i, 1                       ; 2 uses
  %.not.i = icmp ugt i32 %i.ab, %i.t
  br i1 %.not.i, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit, label %scalar.ph, !llvm.loop !703

_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit: ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp8internal11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9put_blockEmPKdll(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = add i32 %i.a, 1                          ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !244
  %i.d = and i32 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !249  ; 2 uses
  %i.j = lshr i32 %i.i, 1
  %i.k = icmp eq i32 %i.j, %i.b
  br i1 %i.k, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread

_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit: ; preds = %bb.a
  %i.l = or i32 %i.i, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !249
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !85   ; 2 uses
  %i.o = getelementptr inbounds nuw [128 x i8], ptr %i.n, i64 %i.g ; 21 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !247, !nonnull !141, !align !142 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !243  ; 2 uses
  %i.t = urem i64 %1, %i.s
  %i.u = shl i64 %i.t, 2
  %i.v = udiv i64 %1, %i.s
  %i.w = shl i64 %i.v, 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.y = load i64, ptr %i.x, align 8, !tbaa !241  ; 2 uses
  %i.z = xor i64 %i.y, %i.u
  %i.aa = add i64 %i.z, -4
  %i.ab = lshr i64 %i.aa, 62
  %i.ac = sub i64 0, %i.y
  %i.ad = and i64 %i.ab, %i.ac                    ; 17 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !240 ; 2 uses
  %i.ag = xor i64 %i.af, %i.w
  %i.ah = add i64 %i.ag, -4
  %i.ai = lshr i64 %i.ah, 62
  %i.aj = sub i64 0, %i.af
  %i.ak = and i64 %i.ai, %i.aj                    ; 4 uses
  %i.al = or i64 %i.ak, %i.ad
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.c, label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.an = shl nsw i64 %3, 2
  %i.ao = sub nsw i64 %4, %i.an                   ; 3 uses
  %i.ap = load double, ptr %2, align 8, !tbaa !49
  store double %i.ap, ptr %i.o, align 8, !tbaa !49
  %i.aq = getelementptr inbounds [8 x i8], ptr %2, i64 %3 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.as = load double, ptr %i.aq, align 8, !tbaa !49
  store double %i.as, ptr %i.ar, align 8, !tbaa !49
  %i.at = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %3 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.av = load double, ptr %i.at, align 8, !tbaa !49
  store double %i.av, ptr %i.au, align 8, !tbaa !49
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.at, i64 %3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ay = load double, ptr %i.aw, align 8, !tbaa !49
  store double %i.ay, ptr %i.ax, align 8, !tbaa !49
  %i.az = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ao ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !49
  store double %i.bc, ptr %i.ba, align 8, !tbaa !49
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %3 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !49
  store double %i.bf, ptr %i.be, align 8, !tbaa !49
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %3 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.bi = load double, ptr %i.bg, align 8, !tbaa !49
  store double %i.bi, ptr %i.bh, align 8, !tbaa !49
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %3 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !49
  store double %i.bl, ptr %i.bk, align 8, !tbaa !49
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.ao ; 2 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !49
  store double %i.bp, ptr %i.bn, align 8, !tbaa !49
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %3 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.bs = load double, ptr %i.bq, align 8, !tbaa !49
  store double %i.bs, ptr %i.br, align 8, !tbaa !49
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %3 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !49
  store double %i.bv, ptr %i.bu, align 8, !tbaa !49
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %3 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.by = load double, ptr %i.bw, align 8, !tbaa !49
  store double %i.by, ptr %i.bx, align 8, !tbaa !49
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ao ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !49
  store double %i.cc, ptr %i.ca, align 8, !tbaa !49
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %3 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.cf = load double, ptr %i.cd, align 8, !tbaa !49
  store double %i.cf, ptr %i.ce, align 8, !tbaa !49
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %3 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !49
  store double %i.ci, ptr %i.ch, align 8, !tbaa !49
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.cl = load double, ptr %i.cj, align 8, !tbaa !49
  store double %i.cl, ptr %i.ck, align 8, !tbaa !49
  br label %_ZN3zfp8internal11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLine3putEPKdllj.exit

.preheader.i:                                     ; preds = %bb.b
  %i.cm = sub nuw nsw i64 4, %i.ad
  %i.cn = mul nsw i64 %3, %i.cm
  %i.co = sub nsw i64 %4, %i.cn                   ; 3 uses
  %i.cp = load double, ptr %2, align 8, !tbaa !49
  store double %i.cp, ptr %i.o, align 8, !tbaa !49
  %i.cq = getelementptr inbounds [8 x i8], ptr %2, i64 %3 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, 3
  br i1 %exitcond.not.i, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.r, %bb.q, %bb.p, %.preheader.i
  %.lcssa17 = phi ptr [ %i.cq, %.preheader.i ], [ %i.eh, %bb.p ], [ %i.ek, %bb.q ], [ %i.en, %bb.r ]
  %.lcssa = phi ptr [ %i.cr, %.preheader.i ], [ %i.ei, %bb.p ], [ %i.el, %bb.q ], [ %i.eo, %bb.r ]
  %i.cs = getelementptr inbounds [8 x i8], ptr %.lcssa17, i64 %i.co ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %i.ad ; 5 uses
  %exitcond38.not.i = icmp eq i64 %i.ak, 3
  br i1 %exitcond38.not.i, label %_ZN3zfp8internal11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLine3putEPKdllj.exit, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.d
  %i.cu = load double, ptr %i.cs, align 8, !tbaa !49
  store double %i.cu, ptr %i.ct, align 8, !tbaa !49
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %3 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %exitcond.not.i.118 = icmp eq i64 %i.ad, 3
  br i1 %exitcond.not.i.118, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.preheader.i.1
  %i.cx = load double, ptr %i.cv, align 8, !tbaa !49
  store double %i.cx, ptr %i.cw, align 8, !tbaa !49
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %3 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %exitcond.not.i.1.1 = icmp eq i64 %i.ad, 2
  br i1 %exitcond.not.i.1.1, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.da = load double, ptr %i.cy, align 8, !tbaa !49
  store double %i.da, ptr %i.cz, align 8, !tbaa !49
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %3 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 24 ; 2 uses
  %exitcond.not.i.2.1 = icmp eq i64 %i.ad, 1
  br i1 %exitcond.not.i.2.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dd = load double, ptr %i.db, align 8, !tbaa !49
  store double %i.dd, ptr %i.dc, align 8, !tbaa !49
  %i.de = getelementptr inbounds [8 x i8], ptr %i.db, i64 %3
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %.preheader.i.1
  %.lcssa17.1 = phi ptr [ %i.cv, %.preheader.i.1 ], [ %i.cy, %bb.e ], [ %i.db, %bb.f ], [ %i.de, %bb.g ]
  %.lcssa.1 = phi ptr [ %i.cw, %.preheader.i.1 ], [ %i.cz, %bb.e ], [ %i.dc, %bb.f ], [ %i.df, %bb.g ]
  %i.dg = getelementptr inbounds [8 x i8], ptr %.lcssa17.1, i64 %i.co ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.lcssa.1, i64 %i.ad ; 5 uses
  %exitcond38.not.i.1 = icmp eq i64 %i.ak, 2
  br i1 %exitcond38.not.i.1, label %_ZN3zfp8internal11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLine3putEPKdllj.exit, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %bb.h
  %i.di = load double, ptr %i.dg, align 8, !tbaa !49
  store double %i.di, ptr %i.dh, align 8, !tbaa !49
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %3 ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN3zfp8internal10BlockStoreINS_5codec4zfp3IdEENS_5index8implicitEE5allocEb:bb.a
  tail call void @free(ptr noundef nonnull %i.l) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i:  ; preds = %bb.b, %_ZN3zfp8internal10BlockStoreINS_5codec4zfp3IdEENS_5index8implicitEE4freeEv.exit
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.j) #29 ; 4 uses
  %.not.i.i10.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i10.i, label %bb.c, label %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit

bb.c:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i
  store ptr %i.m, ptr %i.a, align 8, !tbaa !110
  %.pre = load i64, ptr %i.k, align 8, !tbaa !285 ; 3 uses
  %.not.i.i.i = icmp samesign ne i64 %.pre, 0
  %or.cond.not = select i1 %1, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %bb.d, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.d:                                             ; preds = %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %.pre, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %bb.d, %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !251
  %i.q = tail call ptr @stream_open(ptr noundef nonnull %i.m, i64 noundef %.pre)
  tail call void @zfp_stream_set_bit_stream(ptr noundef %i.p, ptr noundef %i.q)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp5codec8zfp_baseILj3EdED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !251
  %i.b = tail call ptr @zfp_stream_bit_stream(ptr noundef %i.a)
  tail call void @stream_close(ptr noundef %i.b)
  %i.c = load ptr, ptr %0, align 8, !tbaa !251
  tail call void @zfp_stream_set_bit_stream(ptr noundef %i.c, ptr noundef null)
  %i.d = load ptr, ptr %0, align 8, !tbaa !251
  tail call void @zfp_stream_close(ptr noundef %i.d)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZN3zfp8internal11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE5linesEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %.not = icmp ult i64 %1, 2147483648
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3zfp9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !14
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN3zfp9exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.f, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn17 = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #24
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %.not9 = icmp eq i64 %0, 0
  br i1 %.not9, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = add i64 %0, 511
  %i.h = lshr i64 %i.g, 9
  br label %_ZN3zfp8internal11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE5linesEm.exit

.preheader:                                       ; preds = %bb.g, %.preheader
  %.0.i = phi i64 [ %i.k, %.preheader ], [ 1, %bb.g ] ; 4 uses
  %i.i = mul i64 %.0.i, %.0.i
  %i.j = icmp ult i64 %i.i, %1
  %i.k = shl i64 %.0.i, 1
  br i1 %i.j, label %.preheader, label %_ZN3zfp8internal11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE5linesEm.exit

_ZN3zfp8internal11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE5linesEm.exit: ; preds = %.preheader, %bb.h
  %.in = phi i64 [ %i.h, %bb.h ], [ %.0.i, %.preheader ]
  %i.l = trunc i64 %.in to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.l, i32 1)
  ret i32 %.sroa.speculated

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn16 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn17, %bb.f ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn16

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6resizeEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = add i32 %1, -1
  %i.b = select i1 %.not, i32 1, i32 %i.a
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %storemerge = phi i32 [ %i.b, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.c = add i32 %storemerge, 1                   ; 3 uses
  %i.d = and i32 %i.c, %storemerge
  %.not2 = icmp eq i32 %i.d, 0
  %i.e = or i32 %i.c, %storemerge
  br i1 %.not2, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  store i32 %storemerge, ptr %0, align 8, !tbaa !261
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = zext i32 %i.c to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !724  ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i8.i.i, label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.i) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i: ; preds = %bb.d, %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.h) #29 ; 2 uses
  %.not.i.i10.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i10.i.i, label %bb.e, label %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit

bb.e:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i
  store ptr %i.j, ptr %i.f, align 8, !tbaa !724
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !261
  %i.n = add i32 %i.m, 1
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 9
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !725  ; 2 uses
  %.not.i8.i.i3 = icmp eq ptr %i.q, null
  br i1 %.not.i8.i.i3, label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4, label %bb.f

bb.f:                                             ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit
  tail call void @free(ptr noundef nonnull %i.q) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4: ; preds = %bb.f, %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #29 ; 2 uses
  %.not.i.i10.i.i5 = icmp eq ptr %i.r, null
  br i1 %.not.i.i10.i.i5, label %bb.g, label %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit

bb.g:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4
  store ptr %i.r, ptr %i.l, align 8, !tbaa !725
  %i.t = load i32, ptr %0, align 8, !tbaa !261    ; 3 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !89   ; 2 uses
  %2 = add i32 %i.t, 1                            ; 2 uses
  %.off = add i32 %i.t, -7
  %switch = icmp ult i32 %.off, -8
  br i1 %switch, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit
  %n.vec = and i32 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = zext i32 %index to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> zeroinitializer, ptr %i.w, align 4, !tbaa !266
  store <4 x i32> zeroinitializer, ptr %i.x, align 4, !tbaa !266
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.y = icmp eq i32 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !722

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %2, %n.vec
  br i1 %cmp.n, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %middle.block, %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit
  %.03.i.ph = phi i32 [ 0, %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03.i = phi i32 [ %i.ab, %scalar.ph ], [ %.03.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.z = zext i32 %.03.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  store i32 0, ptr %i.aa, align 4, !tbaa !266
  %i.ab = add i32 %.03.i, 1                       ; 2 uses
  %.not.i = icmp ugt i32 %i.ab, %i.t
  br i1 %.not.i, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit, label %scalar.ph, !llvm.loop !723

_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit: ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK3zfp8internal11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9put_blockEmPKdlll(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = add i32 %i.a, 1                          ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !261
  %i.d = and i32 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !266  ; 2 uses
  %i.j = lshr i32 %i.i, 1
  %i.k = icmp eq i32 %i.j, %i.b
  br i1 %i.k, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread

_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit: ; preds = %bb.a
  %i.l = or i32 %i.i, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !266
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !91   ; 2 uses
  %i.o = getelementptr inbounds nuw [512 x i8], ptr %i.n, i64 %i.g ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !264, !nonnull !141, !align !142 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load i64, ptr %i.r, align 8, !tbaa !260  ; 2 uses
  %i.t = urem i64 %1, %i.s
  %i.u = shl i64 %i.t, 2
  %i.v = udiv i64 %1, %i.s                        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.x = load i64, ptr %i.w, align 8, !tbaa !259  ; 2 uses
  %i.y = urem i64 %i.v, %i.x
  %i.z = shl i64 %i.y, 2
  %i.aa = udiv i64 %i.v, %i.x
  %i.ab = shl i64 %i.aa, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !257 ; 2 uses
  %i.ae = xor i64 %i.ad, %i.u
  %i.af = add i64 %i.ae, -4
  %i.ag = lshr i64 %i.af, 62
  %i.ah = sub i64 0, %i.ad
  %i.ai = and i64 %i.ag, %i.ah                    ; 18 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !256 ; 2 uses
  %i.al = xor i64 %i.ak, %i.z
  %i.am = add i64 %i.al, -4
  %i.an = lshr i64 %i.am, 62
  %i.ao = sub i64 0, %i.ak
  %i.ap = and i64 %i.an, %i.ao                    ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !255 ; 2 uses
  %i.as = xor i64 %i.ar, %i.ab
  %i.at = add i64 %i.as, -4
  %i.au = lshr i64 %i.at, 62
  %i.av = sub i64 0, %i.ar
  %i.aw = and i64 %i.au, %i.av                    ; 2 uses
  %i.ax = or i64 %i.ap, %i.ai
  %i.ay = or i64 %i.ax, %i.aw
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3zfp8internal11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLine3putEPKdlll(ptr noundef nonnull align 8 dereferenceable(512) %i.o, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5)
  br label %_ZN3zfp8internal11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLine3putEPKdlllj.exit

bb.d:                                             ; preds = %bb.b
  %i.ba = trunc nuw nsw i64 %i.aw to i32
  %i.bb = trunc nuw nsw i64 %i.ap to i32
  %i.bc = sub nuw nsw i64 4, %i.ai
  %i.bd = sub nuw nsw i32 4, %i.bb                ; 2 uses
  %i.be = sub nuw nsw i32 4, %i.ba
  %i.bf = mul nsw i64 %3, %i.bc
  %i.bg = sub nsw i64 %4, %i.bf                   ; 4 uses
  %i.bh = zext nneg i32 %i.bd to i64
  %i.bi = mul nsw i64 %4, %i.bh
  %i.bj = sub nsw i64 %5, %i.bi
  %i.bk = shl nuw nsw i32 %i.bd, 2
  %i.bl = sub nuw nsw i32 16, %i.bk
  %i.bm = zext nneg i32 %i.bl to i64
  %exitcond.not.i = icmp eq i64 %i.ai, 3
  %exitcond.not.i.1 = icmp eq i64 %i.ai, 2
  %exitcond.not.i.2 = icmp eq i64 %i.ai, 1
  %exitcond59.not.i = icmp eq i64 %i.ap, 3
  %exitcond.not.i.131 = icmp eq i64 %i.ai, 3
  %exitcond.not.i.1.1 = icmp eq i64 %i.ai, 2
  %exitcond.not.i.2.1 = icmp eq i64 %i.ai, 1
  %exitcond59.not.i.1 = icmp eq i64 %i.ap, 2
  %exitcond.not.i.232 = icmp eq i64 %i.ai, 3
  %exitcond.not.i.1.2 = icmp eq i64 %i.ai, 2
  %exitcond.not.i.2.2 = icmp eq i64 %i.ai, 1
  %exitcond59.not.i.2 = icmp eq i64 %i.ap, 1
  %exitcond.not.i.3 = icmp eq i64 %i.ai, 3
  %exitcond.not.i.1.3 = icmp eq i64 %i.ai, 2
  %exitcond.not.i.2.3 = icmp eq i64 %i.ai, 1
  br label %.preheader46.i

.preheader46.i:                                   ; preds = %bb.e, %bb.d
  %.03855.i = phi i32 [ 0, %bb.d ], [ %i.bq, %bb.e ]
  %.03954.i = phi ptr [ %i.o, %bb.d ], [ %i.bs, %bb.e ] ; 5 uses
  %.04053.i = phi ptr [ %2, %bb.d ], [ %i.br, %bb.e ] ; 2 uses
  %i.bn = load double, ptr %.04053.i, align 8, !tbaa !49
  store double %i.bn, ptr %.03954.i, align 8, !tbaa !49
  %i.bo = getelementptr inbounds [8 x i8], ptr %.04053.i, i64 %3 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.03954.i, i64 8 ; 2 uses
  br i1 %exitcond.not.i, label %bb.f, label %bb.s

bb.e:                                             ; preds = %bb.r, %bb.n, %bb.j, %bb.f
  %.lcssa30 = phi ptr [ %i.bt, %bb.f ], [ %i.ch, %bb.j ], [ %i.cv, %bb.n ], [ %i.dj, %bb.r ]
  %.lcssa29 = phi ptr [ %i.bu, %bb.f ], [ %i.ci, %bb.j ], [ %i.cw, %bb.n ], [ %i.dk, %bb.r ]
  %i.bq = add nuw nsw i32 %.03855.i, 1            ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %.lcssa30, i64 %i.bj
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.lcssa29, i64 %i.bm
  %exitcond60.not.i = icmp eq i32 %i.bq, %i.be
  br i1 %exitcond60.not.i, label %_ZN3zfp8internal11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLine3putEPKdlllj.exit, label %.preheader46.i

bb.f:                                             ; preds = %bb.u, %bb.t, %bb.s, %.preheader46.i
  %.lcssa28 = phi ptr [ %i.bo, %.preheader46.i ], [ %i.dm, %bb.s ], [ %i.dp, %bb.t ], [ %i.ds, %bb.u ]
  %.lcssa = phi ptr [ %i.bp, %.preheader46.i ], [ %i.dn, %bb.s ], [ %i.dq, %bb.t ], [ %i.dt, %bb.u ]
  %i.bt = getelementptr inbounds [8 x i8], ptr %.lcssa28, i64 %i.bg ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %i.ai ; 6 uses
  br i1 %exitcond59.not.i, label %bb.e, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.f
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !49
  store double %i.bv, ptr %i.bu, align 8, !tbaa !49
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %3 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  br i1 %exitcond.not.i.131, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.preheader.i.1
  %i.by = load double, ptr %i.bw, align 8, !tbaa !49
  store double %i.by, ptr %i.bx, align 8, !tbaa !49
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %3 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  br i1 %exitcond.not.i.1.1, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cb = load double, ptr %i.bz, align 8, !tbaa !49
  store double %i.cb, ptr %i.ca, align 8, !tbaa !49
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %3 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 2 uses
  br i1 %exitcond.not.i.2.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = load double, ptr %i.cc, align 8, !tbaa !49
  store double %i.ce, ptr %i.cd, align 8, !tbaa !49
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %.preheader.i.1
  %.lcssa28.1 = phi ptr [ %i.bw, %.preheader.i.1 ], [ %i.bz, %bb.g ], [ %i.cc, %bb.h ], [ %i.cf, %bb.i ]
  %.lcssa.1 = phi ptr [ %i.bx, %.preheader.i.1 ], [ %i.ca, %bb.g ], [ %i.cd, %bb.h ], [ %i.cg, %bb.i ]
  %i.ch = getelementptr inbounds [8 x i8], ptr %.lcssa28.1, i64 %i.bg ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.lcssa.1, i64 %i.ai ; 6 uses
  br i1 %exitcond59.not.i.1, label %bb.e, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %bb.j
  %i.cj = load double, ptr %i.ch, align 8, !tbaa !49
  store double %i.cj, ptr %i.ci, align 8, !tbaa !49
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %3 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  br i1 %exitcond.not.i.232, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.preheader.i.2
  %i.cm = load double, ptr %i.ck, align 8, !tbaa !49
  store double %i.cm, ptr %i.cl, align 8, !tbaa !49
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %3 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  br i1 %exitcond.not.i.1.2, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cp = load double, ptr %i.cn, align 8, !tbaa !49
  store double %i.cp, ptr %i.co, align 8, !tbaa !49
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %3 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 2 uses
  br i1 %exitcond.not.i.2.2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = load double, ptr %i.cq, align 8, !tbaa !49
end_hunk_6
begin_hunk_7_@_ZN3zfp8internal10BlockStoreINS_5codec4zfp4IdEENS_5index8implicitEE5allocEb:bb.a
  tail call void @free(ptr noundef nonnull %i.l) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i:  ; preds = %bb.b, %_ZN3zfp8internal10BlockStoreINS_5codec4zfp4IdEENS_5index8implicitEE4freeEv.exit
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.j) #29 ; 4 uses
  %.not.i.i10.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i10.i, label %bb.c, label %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit

bb.c:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i
  store ptr %i.m, ptr %i.a, align 8, !tbaa !110
  %.pre = load i64, ptr %i.k, align 8, !tbaa !310 ; 3 uses
  %.not.i.i.i = icmp samesign ne i64 %.pre, 0
  %or.cond.not = select i1 %1, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %bb.d, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.d:                                             ; preds = %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %.pre, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %bb.d, %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !293
  %i.q = tail call ptr @stream_open(ptr noundef nonnull %i.m, i64 noundef %.pre)
  tail call void @zfp_stream_set_bit_stream(ptr noundef %i.p, ptr noundef %i.q)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp5codec8zfp_baseILj4EdED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !293
  %i.b = tail call ptr @zfp_stream_bit_stream(ptr noundef %i.a)
  tail call void @stream_close(ptr noundef %i.b)
  %i.c = load ptr, ptr %0, align 8, !tbaa !293
  tail call void @zfp_stream_set_bit_stream(ptr noundef %i.c, ptr noundef null)
  %i.d = load ptr, ptr %0, align 8, !tbaa !293
  tail call void @zfp_stream_close(ptr noundef %i.d)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZN3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE5linesEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %.not = icmp ult i64 %1, 2147483648
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3zfp9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !14
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN3zfp9exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.f, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn17 = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #24
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %.not9 = icmp eq i64 %0, 0
  br i1 %.not9, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = add i64 %0, 2047
  %i.h = lshr i64 %i.g, 11
  br label %_ZN3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE5linesEm.exit

.preheader:                                       ; preds = %bb.g, %.preheader
  %.0.i = phi i64 [ %i.k, %.preheader ], [ 1, %bb.g ] ; 4 uses
  %i.i = mul i64 %.0.i, %.0.i
  %i.j = icmp ult i64 %i.i, %1
  %i.k = shl i64 %.0.i, 1
  br i1 %i.j, label %.preheader, label %_ZN3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE5linesEm.exit

_ZN3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE5linesEm.exit: ; preds = %.preheader, %bb.h
  %.in = phi i64 [ %i.h, %bb.h ], [ %.0.i, %.preheader ]
  %i.l = trunc i64 %.in to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.l, i32 1)
  ret i32 %.sroa.speculated

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn16 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn17, %bb.f ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn16

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6resizeEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = add i32 %1, -1
  %i.b = select i1 %.not, i32 1, i32 %i.a
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %storemerge = phi i32 [ %i.b, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.c = add i32 %storemerge, 1                   ; 3 uses
  %i.d = and i32 %i.c, %storemerge
  %.not2 = icmp eq i32 %i.d, 0
  %i.e = or i32 %i.c, %storemerge
  br i1 %.not2, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  store i32 %storemerge, ptr %0, align 8, !tbaa !267
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = zext i32 %i.c to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !756  ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i8.i.i, label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.i) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i: ; preds = %bb.d, %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.h) #29 ; 2 uses
  %.not.i.i10.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i10.i.i, label %bb.e, label %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit

bb.e:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i
  store ptr %i.j, ptr %i.f, align 8, !tbaa !756
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !267
  %i.n = add i32 %i.m, 1
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 11
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !757  ; 2 uses
  %.not.i8.i.i3 = icmp eq ptr %i.q, null
  br i1 %.not.i8.i.i3, label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4, label %bb.f

bb.f:                                             ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit
  tail call void @free(ptr noundef nonnull %i.q) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4: ; preds = %bb.f, %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #29 ; 2 uses
  %.not.i.i10.i.i5 = icmp eq ptr %i.r, null
  br i1 %.not.i.i10.i.i5, label %bb.g, label %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit

bb.g:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4
  store ptr %i.r, ptr %i.l, align 8, !tbaa !757
  %i.t = load i32, ptr %0, align 8, !tbaa !267    ; 3 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !95   ; 2 uses
  %2 = add i32 %i.t, 1                            ; 2 uses
  %.off = add i32 %i.t, -7
  %switch = icmp ult i32 %.off, -8
  br i1 %switch, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit
  %n.vec = and i32 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = zext i32 %index to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> zeroinitializer, ptr %i.w, align 4, !tbaa !306
  store <4 x i32> zeroinitializer, ptr %i.x, align 4, !tbaa !306
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.y = icmp eq i32 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !754

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %2, %n.vec
  br i1 %cmp.n, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %middle.block, %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit
  %.03.i.ph = phi i32 [ 0, %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03.i = phi i32 [ %i.ab, %scalar.ph ], [ %.03.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.z = zext i32 %.03.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  store i32 0, ptr %i.aa, align 4, !tbaa !306
  %i.ab = add i32 %.03.i, 1                       ; 2 uses
  %.not.i = icmp ugt i32 %i.ab, %i.t
  br i1 %.not.i, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit, label %scalar.ph, !llvm.loop !755

_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit: ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9put_blockEmPKdllll(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = add i32 %i.a, 1                          ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !267
  %i.d = and i32 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !306  ; 2 uses
  %i.j = lshr i32 %i.i, 1
  %i.k = icmp eq i32 %i.j, %i.b
  br i1 %i.k, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread

_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit: ; preds = %bb.a
  %i.l = or i32 %i.i, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !306
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !97   ; 2 uses
  %i.o = getelementptr inbounds nuw [2048 x i8], ptr %i.n, i64 %i.g ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !308, !nonnull !141, !align !142 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load i64, ptr %i.r, align 8, !tbaa !304  ; 2 uses
  %i.t = urem i64 %1, %i.s
  %i.u = shl i64 %i.t, 2
  %i.v = udiv i64 %1, %i.s                        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.x = load i64, ptr %i.w, align 8, !tbaa !303  ; 2 uses
  %i.y = urem i64 %i.v, %i.x
  %i.z = shl i64 %i.y, 2
  %i.aa = udiv i64 %i.v, %i.x                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !302 ; 2 uses
  %i.ad = urem i64 %i.aa, %i.ac
  %i.ae = shl i64 %i.ad, 2
  %i.af = udiv i64 %i.aa, %i.ac
  %i.ag = shl i64 %i.af, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !300 ; 2 uses
  %i.aj = xor i64 %i.ai, %i.u
  %i.ak = add i64 %i.aj, -4
  %i.al = lshr i64 %i.ak, 62
  %i.am = sub i64 0, %i.ai
  %i.an = and i64 %i.al, %i.am                    ; 18 uses
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !299 ; 2 uses
  %i.ar = xor i64 %i.aq, %i.z
  %i.as = add i64 %i.ar, -4
  %i.at = lshr i64 %i.as, 62
  %i.au = sub i64 0, %i.aq
  %i.av = and i64 %i.at, %i.au                    ; 4 uses
  %i.aw = trunc nuw nsw i64 %i.av to i32          ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !298 ; 2 uses
  %i.az = xor i64 %i.ay, %i.ae
  %i.ba = add i64 %i.az, -4
  %i.bb = lshr i64 %i.ba, 62
  %i.bc = sub i64 0, %i.ay
  %i.bd = and i64 %i.bb, %i.bc
  %i.be = trunc nuw nsw i64 %i.bd to i32          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !297 ; 2 uses
  %i.bh = xor i64 %i.bg, %i.ag
  %i.bi = add i64 %i.bh, -4
  %i.bj = lshr i64 %i.bi, 62
  %i.bk = sub i64 0, %i.bg
  %i.bl = and i64 %i.bj, %i.bk
  %i.bm = trunc nuw nsw i64 %i.bl to i32          ; 2 uses
  %i.bn = shl nuw nsw i32 %i.bm, 4
  %i.bo = shl nuw nsw i32 %i.be, 2
  %i.bp = or disjoint i32 %i.bn, %i.bo
  %i.bq = or disjoint i32 %i.bp, %i.ao
  %i.br = or i32 %i.bq, %i.aw
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLine3putEPKdllll(ptr noundef nonnull align 8 dereferenceable(2048) %i.o, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6)
  br label %_ZN3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLine3putEPKdllllj.exit

bb.d:                                             ; preds = %bb.b
  %i.bt = sub nuw nsw i64 4, %i.an
  %i.bu = sub nuw nsw i32 4, %i.aw                ; 2 uses
  %i.bv = sub nuw nsw i32 4, %i.be                ; 3 uses
  %i.bw = sub nuw nsw i32 4, %i.bm
  %i.bx = mul nsw i64 %3, %i.bt
  %i.by = sub nsw i64 %4, %i.bx                   ; 4 uses
  %i.bz = zext nneg i32 %i.bu to i64
  %i.ca = mul nsw i64 %4, %i.bz
  %i.cb = sub nsw i64 %5, %i.ca
  %i.cc = shl nuw nsw i32 %i.bu, 2
  %i.cd = sub nuw nsw i32 16, %i.cc
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = zext nneg i32 %i.bv to i64
  %i.cg = mul nsw i64 %5, %i.cf
  %i.ch = sub nsw i64 %6, %i.cg
  %i.ci = shl nuw nsw i32 %i.bv, 4
  %i.cj = sub nuw nsw i32 64, %i.ci
  %i.ck = zext nneg i32 %i.cj to i64
  %exitcond.not.i = icmp eq i64 %i.an, 3
  %exitcond.not.i.1 = icmp eq i64 %i.an, 2
  %exitcond.not.i.2 = icmp eq i64 %i.an, 1
  %exitcond80.not.i = icmp eq i64 %i.av, 3
  %exitcond.not.i.144 = icmp eq i64 %i.an, 3
  %exitcond.not.i.1.1 = icmp eq i64 %i.an, 2
  %exitcond.not.i.2.1 = icmp eq i64 %i.an, 1
  %exitcond80.not.i.1 = icmp eq i64 %i.av, 2
  %exitcond.not.i.245 = icmp eq i64 %i.an, 3
  %exitcond.not.i.1.2 = icmp eq i64 %i.an, 2
  %exitcond.not.i.2.2 = icmp eq i64 %i.an, 1
  %exitcond80.not.i.2 = icmp eq i64 %i.av, 1
  %exitcond.not.i.3 = icmp eq i64 %i.an, 3
  %exitcond.not.i.1.3 = icmp eq i64 %i.an, 2
  %exitcond.not.i.2.3 = icmp eq i64 %i.an, 1
  br label %.preheader62.i

.preheader62.i:                                   ; preds = %bb.e, %bb.d
  %.05174.i = phi i32 [ 0, %bb.d ], [ %i.co, %bb.e ]
  %.05273.i = phi ptr [ %i.o, %bb.d ], [ %i.cq, %bb.e ]
  %.05372.i = phi ptr [ %2, %bb.d ], [ %i.cp, %bb.e ]
  br label %.preheader61.i

.preheader61.i:                                   ; preds = %bb.f, %.preheader62.i
  %.05071.i = phi i32 [ 0, %.preheader62.i ], [ %i.cr, %bb.f ]
  %.170.i = phi ptr [ %.05273.i, %.preheader62.i ], [ %i.ct, %bb.f ] ; 5 uses
  %.15469.i = phi ptr [ %.05372.i, %.preheader62.i ], [ %i.cs, %bb.f ] ; 2 uses
  %i.cl = load double, ptr %.15469.i, align 8, !tbaa !49
  store double %i.cl, ptr %.170.i, align 8, !tbaa !49
  %i.cm = getelementptr inbounds [8 x i8], ptr %.15469.i, i64 %3 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.170.i, i64 8 ; 2 uses
  br i1 %exitcond.not.i, label %bb.g, label %bb.t

bb.e:                                             ; preds = %bb.f
  %i.co = add nuw nsw i32 %.05174.i, 1            ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.ch
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.ck
  %exitcond82.not.i = icmp eq i32 %i.co, %i.bw
  br i1 %exitcond82.not.i, label %_ZN3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLine3putEPKdllllj.exit, label %.preheader62.i

bb.f:                                             ; preds = %bb.s, %bb.o, %bb.k, %bb.g
  %.lcssa41 = phi ptr [ %i.cu, %bb.g ], [ %i.di, %bb.k ], [ %i.dw, %bb.o ], [ %i.ek, %bb.s ]
  %.lcssa40 = phi ptr [ %i.cv, %bb.g ], [ %i.dj, %bb.k ], [ %i.dx, %bb.o ], [ %i.el, %bb.s ]
  %i.cr = add nuw nsw i32 %.05071.i, 1            ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %.lcssa41, i64 %i.cb ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.lcssa40, i64 %i.ce ; 2 uses
  %exitcond81.not.i = icmp eq i32 %i.cr, %i.bv
  br i1 %exitcond81.not.i, label %bb.e, label %.preheader61.i

bb.g:                                             ; preds = %bb.v, %bb.u, %bb.t, %.preheader61.i
  %.lcssa39 = phi ptr [ %i.cm, %.preheader61.i ], [ %i.en, %bb.t ], [ %i.eq, %bb.u ], [ %i.et, %bb.v ]
  %.lcssa = phi ptr [ %i.cn, %.preheader61.i ], [ %i.eo, %bb.t ], [ %i.er, %bb.u ], [ %i.eu, %bb.v ]
  %i.cu = getelementptr inbounds [8 x i8], ptr %.lcssa39, i64 %i.by ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %i.an ; 6 uses
  br i1 %exitcond80.not.i, label %bb.f, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.g
  %i.cw = load double, ptr %i.cu, align 8, !tbaa !49
  store double %i.cw, ptr %i.cv, align 8, !tbaa !49
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %3 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  br i1 %exitcond.not.i.144, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.preheader.i.1
  %i.cz = load double, ptr %i.cx, align 8, !tbaa !49
  store double %i.cz, ptr %i.cy, align 8, !tbaa !49
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %3 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  br i1 %exitcond.not.i.1.1, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dc = load double, ptr %i.da, align 8, !tbaa !49
  store double %i.dc, ptr %i.db, align 8, !tbaa !49
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.da, i64 %3 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 2 uses
  br i1 %exitcond.not.i.2.1, label %bb.k, label %bb.j

end_hunk_7
