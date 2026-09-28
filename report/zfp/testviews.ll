Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/testviews?download=true
inline.NumInlined: 1066
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@zfp_stream_set_precision
declare i32 @zfp_stream_set_precision(ptr noundef, i32 noundef) local_unnamed_addr #11

declare double @zfp_stream_set_accuracy(ptr noundef, double noundef) local_unnamed_addr #11

declare i32 @zfp_stream_set_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #11

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN3zfp9exceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp5codec8zfp_baseILj3EdED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !68
  %i.b = tail call ptr @zfp_stream_bit_stream(ptr noundef %i.a)
  tail call void @stream_close(ptr noundef %i.b)
  %i.c = load ptr, ptr %0, align 8, !tbaa !68
  tail call void @zfp_stream_set_bit_stream(ptr noundef %i.c, ptr noundef null)
  %i.d = load ptr, ptr %0, align 8, !tbaa !68
  tail call void @zfp_stream_close(ptr noundef %i.d)
  ret void
}

declare void @zfp_stream_close(ptr noundef) local_unnamed_addr #11

declare ptr @zfp_field_3d(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

declare void @zfp_field_free(ptr noundef) local_unnamed_addr #11

declare i32 @zfp_stream_compression_mode(ptr noundef) local_unnamed_addr #11

declare i64 @zfp_stream_maximum_size(ptr noundef, ptr noundef) local_unnamed_addr #11

declare i64 @zfp_field_blocks(ptr noundef) local_unnamed_addr #11

declare i64 @stream_alignment() local_unnamed_addr #11

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZN3zfp8internal11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE5linesEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %.not = icmp ult i64 %1, 2147483648
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3zfp9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !20
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN3zfp9exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %.0, label %bb.f, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %.0, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn17 = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #19
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
define linkonce_odr dso_local void @_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6resizeEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
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
  store i32 %storemerge, ptr %0, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = zext i32 %i.c to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !201  ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i8.i.i, label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.i) #19
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i: ; preds = %bb.d, %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.h) #24 ; 2 uses
  %.not.i.i10.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i10.i.i, label %bb.e, label %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit

bb.e:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i
  store ptr %i.j, ptr %i.f, align 8, !tbaa !201
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !58
  %i.n = add i32 %i.m, 1
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 9
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !202  ; 2 uses
  %.not.i8.i.i3 = icmp eq ptr %i.q, null
  br i1 %.not.i8.i.i3, label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4, label %bb.f

bb.f:                                             ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit
  tail call void @free(ptr noundef nonnull %i.q) #19
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4: ; preds = %bb.f, %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #24 ; 2 uses
  %.not.i.i10.i.i5 = icmp eq ptr %i.r, null
  br i1 %.not.i.i10.i.i5, label %bb.g, label %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit

bb.g:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4
  store ptr %i.r, ptr %i.l, align 8, !tbaa !202
  %i.t = load i32, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !59   ; 2 uses
  %.off = add i32 %i.t, 1                         ; 3 uses
  %switch = icmp ult i32 %.off, 8
  br i1 %switch, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit
  %n.vec = and i32 %.off, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = zext i32 %index to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> zeroinitializer, ptr %i.w, align 4, !tbaa !61
  store <4 x i32> zeroinitializer, ptr %i.x, align 4, !tbaa !61
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.y = icmp eq i32 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %.off, %n.vec
  br i1 %cmp.n, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit, %middle.block
  %.03.i.ph = phi i32 [ 0, %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03.i = phi i32 [ %i.ab, %scalar.ph ], [ %.03.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.z = zext i32 %.03.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  store i32 0, ptr %i.aa, align 4, !tbaa !61
  %i.ab = add i32 %.03.i, 1                       ; 2 uses
  %.not.i = icmp ugt i32 %i.ab, %i.t
  br i1 %.not.i, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit, label %scalar.ph, !llvm.loop !200

_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit: ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK3zfp8internal11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9put_blockEmPKdlll(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = add i32 %i.a, 1                          ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !58
  %i.d = and i32 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !61   ; 2 uses
  %i.j = lshr i32 %i.i, 1
  %i.k = icmp eq i32 %i.j, %i.b
  br i1 %i.k, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread

_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit: ; preds = %bb.a
  %i.l = or i32 %i.i, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62   ; 2 uses
  %i.o = getelementptr inbounds nuw [512 x i8], ptr %i.n, i64 %i.g ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48, !nonnull !49, !align !50 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load i64, ptr %i.r, align 8, !tbaa !56   ; 2 uses
  %i.t = urem i64 %1, %i.s
  %i.u = shl i64 %i.t, 2
  %i.v = udiv i64 %1, %i.s                        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.x = load i64, ptr %i.w, align 8, !tbaa !57   ; 2 uses
  %i.y = urem i64 %i.v, %i.x
  %i.z = shl i64 %i.y, 2
  %i.aa = udiv i64 %i.v, %i.x
  %i.ab = shl i64 %i.aa, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !65 ; 2 uses
  %i.ae = xor i64 %i.ad, %i.u
  %i.af = add i64 %i.ae, -4
  %i.ag = lshr i64 %i.af, 62
  %i.ah = sub i64 0, %i.ad
  %i.ai = and i64 %i.ag, %i.ah                    ; 18 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !66 ; 2 uses
  %i.al = xor i64 %i.ak, %i.z
  %i.am = add i64 %i.al, -4
  %i.an = lshr i64 %i.am, 62
  %i.ao = sub i64 0, %i.ak
  %i.ap = and i64 %i.an, %i.ao                    ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !67 ; 2 uses
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
  %i.bn = load double, ptr %.04053.i, align 8, !tbaa !75
  store double %i.bn, ptr %.03954.i, align 8, !tbaa !75
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
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !75
  store double %i.bv, ptr %i.bu, align 8, !tbaa !75
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %3 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  br i1 %exitcond.not.i.131, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.preheader.i.1
  %i.by = load double, ptr %i.bw, align 8, !tbaa !75
  store double %i.by, ptr %i.bx, align 8, !tbaa !75
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %3 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  br i1 %exitcond.not.i.1.1, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cb = load double, ptr %i.bz, align 8, !tbaa !75
  store double %i.cb, ptr %i.ca, align 8, !tbaa !75
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %3 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 2 uses
  br i1 %exitcond.not.i.2.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = load double, ptr %i.cc, align 8, !tbaa !75
  store double %i.ce, ptr %i.cd, align 8, !tbaa !75
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
  %i.cj = load double, ptr %i.ch, align 8, !tbaa !75
  store double %i.cj, ptr %i.ci, align 8, !tbaa !75
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %3 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  br i1 %exitcond.not.i.232, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.preheader.i.2
  %i.cm = load double, ptr %i.ck, align 8, !tbaa !75
  store double %i.cm, ptr %i.cl, align 8, !tbaa !75
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %3 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  br i1 %exitcond.not.i.1.2, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cp = load double, ptr %i.cn, align 8, !tbaa !75
  store double %i.cp, ptr %i.co, align 8, !tbaa !75
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %3 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 2 uses
  br i1 %exitcond.not.i.2.2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = load double, ptr %i.cq, align 8, !tbaa !75
end_hunk_0
begin_hunk_1_@_ZN3zfp8internal10BlockStoreINS_5codec4zfp2IdEENS_5index8implicitEE5allocEb:bb.a

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i:  ; preds = %bb.b, %_ZN3zfp8internal10BlockStoreINS_5codec4zfp2IdEENS_5index8implicitEE4freeEv.exit
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.j) #24 ; 4 uses
  %.not.i.i10.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i10.i, label %bb.c, label %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit

bb.c:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i
  store ptr %i.m, ptr %i.a, align 8, !tbaa !128
  %.pre = load i64, ptr %i.k, align 8, !tbaa !132 ; 3 uses
  %.not.i.i.i = icmp samesign ne i64 %.pre, 0
  %or.cond.not = select i1 %1, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %bb.d, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.d:                                             ; preds = %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %.pre, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %bb.d, %_ZN3zfp8internal18reallocate_alignedIvEEvRPT_mmm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !112
  %i.q = tail call ptr @stream_open(ptr noundef nonnull %i.m, i64 noundef %.pre)
  tail call void @zfp_stream_set_bit_stream(ptr noundef %i.p, ptr noundef %i.q)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp5codec8zfp_baseILj2EdED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !112
  %i.b = tail call ptr @zfp_stream_bit_stream(ptr noundef %i.a)
  tail call void @stream_close(ptr noundef %i.b)
  %i.c = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @zfp_stream_set_bit_stream(ptr noundef %i.c, ptr noundef null)
  %i.d = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @zfp_stream_close(ptr noundef %i.d)
  ret void
}

declare ptr @zfp_field_2d(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZN3zfp8internal11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE5linesEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %.not = icmp ult i64 %1, 2147483648
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3zfp9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !20
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN3zfp9exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %.0, label %bb.f, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %.0, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn17 = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #19
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
define linkonce_odr dso_local void @_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6resizeEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
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
  store i32 %storemerge, ptr %0, align 8, !tbaa !100
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = zext i32 %i.c to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !212  ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i8.i.i, label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.i) #19
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i: ; preds = %bb.d, %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.h) #24 ; 2 uses
  %.not.i.i10.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i10.i.i, label %bb.e, label %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit

bb.e:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i
  store ptr %i.j, ptr %i.f, align 8, !tbaa !212
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !100
  %i.n = add i32 %i.m, 1
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 7
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !213  ; 2 uses
  %.not.i8.i.i3 = icmp eq ptr %i.q, null
  br i1 %.not.i8.i.i3, label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4, label %bb.f

bb.f:                                             ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit
  tail call void @free(ptr noundef nonnull %i.q) #19
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4

_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4: ; preds = %bb.f, %_ZN3zfp8internal18reallocate_alignedINS0_5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE3TagEEEvRPT_mmm.exit
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #24 ; 2 uses
  %.not.i.i10.i.i5 = icmp eq ptr %i.r, null
  br i1 %.not.i.i10.i.i5, label %bb.g, label %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit

bb.g:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit9.i.i4
  store ptr %i.r, ptr %i.l, align 8, !tbaa !213
  %i.t = load i32, ptr %0, align 8, !tbaa !100    ; 2 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !101  ; 2 uses
  %.off = add i32 %i.t, 1                         ; 3 uses
  %switch = icmp ult i32 %.off, 8
  br i1 %switch, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit
  %n.vec = and i32 %.off, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = zext i32 %index to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> zeroinitializer, ptr %i.w, align 4, !tbaa !103
  store <4 x i32> zeroinitializer, ptr %i.x, align 4, !tbaa !103
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.y = icmp eq i32 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !210

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %.off, %n.vec
  br i1 %cmp.n, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit, %middle.block
  %.03.i.ph = phi i32 [ 0, %_ZN3zfp8internal18reallocate_alignedINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEEEvRPT_mmm.exit ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03.i = phi i32 [ %i.ab, %scalar.ph ], [ %.03.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.z = zext i32 %.03.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  store i32 0, ptr %i.aa, align 4, !tbaa !103
  %i.ab = add i32 %.03.i, 1                       ; 2 uses
  %.not.i = icmp ugt i32 %i.ab, %i.t
  br i1 %.not.i, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit, label %scalar.ph, !llvm.loop !211

_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE5clearEv.exit: ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i64 @_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !64
  %i.d = mul i64 %i.c, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !99   ; 2 uses
  %i.g = urem i64 %1, %i.f
  %i.h = udiv i64 %1, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %i.k = insertelement <2 x i64> %i.j, i64 %i.h, i64 1
  %i.l = shl <2 x i64> %i.k, splat (i64 2)
  %i.m = load <2 x i64>, ptr %i.i, align 8, !tbaa !12 ; 2 uses
  %i.n = xor <2 x i64> %i.m, %i.l
  %i.o = add <2 x i64> %i.n, splat (i64 -4)
  %i.p = lshr <2 x i64> %i.o, splat (i64 62)
  %i.q = sub <2 x i64> zeroinitializer, %i.m
  %i.r = and <2 x i64> %i.p, %i.q                 ; 2 uses
  %i.s = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.r)
  %i.t = icmp eq i64 %i.s, 0
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !112  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  tail call void @stream_wseek(ptr noundef %i.w, i64 noundef %i.d)
  br i1 %i.t, label %bb.b, label %_ZNK3zfp5codec4zfp2IdE20encode_block_stridedEmjPKdll.exit.i

_ZNK3zfp5codec4zfp2IdE20encode_block_stridedEmjPKdll.exit.i: ; preds = %bb.a
  %i.x = sub nuw nsw <2 x i64> splat (i64 4), %i.r ; 2 uses
  %i.y = extractelement <2 x i64> %i.x, i64 0
  %i.z = extractelement <2 x i64> %i.x, i64 1
  %i.aa = tail call noundef i64 @zfp_encode_partial_block_strided_double_2(ptr noundef nonnull %i.u, ptr noundef %2, i64 noundef %i.y, i64 noundef %i.z, i64 noundef 1, i64 noundef 4)
  br label %_ZNK3zfp5codec4zfp2IdE12encode_blockEmjPKd.exit

bb.b:                                             ; preds = %bb.a
  %i.ab = tail call noundef i64 @zfp_encode_block_double_2(ptr noundef nonnull %i.u, ptr noundef %2)
  br label %_ZNK3zfp5codec4zfp2IdE12encode_blockEmjPKd.exit

_ZNK3zfp5codec4zfp2IdE12encode_blockEmjPKd.exit:  ; preds = %_ZNK3zfp5codec4zfp2IdE20encode_block_stridedEmjPKdll.exit.i, %bb.b
  %i.ac = phi i64 [ %i.aa, %_ZNK3zfp5codec4zfp2IdE20encode_block_stridedEmjPKdll.exit.i ], [ %i.ab, %bb.b ]
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.ae = tail call i64 @stream_flush(ptr noundef %i.ad) ; 0 uses
  ret i64 %i.ac
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i64 @_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !64
  %i.d = mul i64 %i.c, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !99   ; 2 uses
  %i.g = urem i64 %1, %i.f
  %i.h = udiv i64 %1, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %i.k = insertelement <2 x i64> %i.j, i64 %i.h, i64 1
  %i.l = shl <2 x i64> %i.k, splat (i64 2)
  %i.m = load <2 x i64>, ptr %i.i, align 8, !tbaa !12 ; 2 uses
  %i.n = xor <2 x i64> %i.m, %i.l
  %i.o = add <2 x i64> %i.n, splat (i64 -4)
  %i.p = lshr <2 x i64> %i.o, splat (i64 62)
  %i.q = sub <2 x i64> zeroinitializer, %i.m
  %i.r = and <2 x i64> %i.p, %i.q                 ; 2 uses
  %i.s = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.r)
  %i.t = icmp eq i64 %i.s, 0
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !112  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  tail call void @stream_rseek(ptr noundef %i.w, i64 noundef %i.d)
  br i1 %i.t, label %bb.b, label %_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i

_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i: ; preds = %bb.a
  %i.x = sub nuw nsw <2 x i64> splat (i64 4), %i.r ; 2 uses
  %i.y = extractelement <2 x i64> %i.x, i64 0
  %i.z = extractelement <2 x i64> %i.x, i64 1
  %i.aa = tail call noundef i64 @zfp_decode_partial_block_strided_double_2(ptr noundef nonnull %i.u, ptr noundef %2, i64 noundef %i.y, i64 noundef %i.z, i64 noundef 1, i64 noundef 4)
  br label %_ZNK3zfp5codec4zfp2IdE12decode_blockEmjPd.exit

bb.b:                                             ; preds = %bb.a
  %i.ab = tail call noundef i64 @zfp_decode_block_double_2(ptr noundef nonnull %i.u, ptr noundef %2)
  br label %_ZNK3zfp5codec4zfp2IdE12decode_blockEmjPd.exit

_ZNK3zfp5codec4zfp2IdE12decode_blockEmjPd.exit:   ; preds = %_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i, %bb.b
  %i.ac = phi i64 [ %i.aa, %_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i ], [ %i.ab, %bb.b ]
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.ae = tail call i64 @stream_align(ptr noundef %i.ad) ; 0 uses
  ret i64 %i.ac
}

declare i64 @zfp_encode_partial_block_strided_double_2(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

declare i64 @zfp_encode_block_double_2(ptr noundef, ptr noundef) local_unnamed_addr #11

declare i64 @zfp_decode_partial_block_strided_double_2(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

declare i64 @zfp_decode_block_double_2(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #7

attributes #0 = { norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin nounwind }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind allocsize(0) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !11, i64 8, !7, i64 16}
!17 = !{!16, !14, i64 0}
!18 = !{!7, !7, i64 0}
!19 = !{!"vtable pointer", !6, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!22 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!23 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !11, i64 8}
!25 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!26 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!27 = !{!"_ZTSSt6locale", !26, i64 0}
!28 = !{!"_ZTSSt8ios_base", !11, i64 8, !11, i64 16, !21, i64 24, !22, i64 28, !22, i64 32, !23, i64 40, !24, i64 48, !7, i64 64, !8, i64 192, !25, i64 200, !27, i64 208}
!29 = !{!"p1 _ZTSSo", !13, i64 0}
!30 = !{!"bool", !7, i64 0}
!31 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !13, i64 0}
!32 = !{!"p1 _ZTSSt5ctypeIcE", !13, i64 0}
!33 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!34 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!35 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !28, i64 0, !29, i64 216, !7, i64 224, !30, i64 225, !31, i64 232, !32, i64 240, !33, i64 248, !34, i64 256}
!36 = !{!35, !32, i64 240}
!37 = !{!"_ZTSNSt6locale5facetE", !8, i64 8}
!38 = !{!"p1 _ZTS15__locale_struct", !13, i64 0}
!39 = !{!"p1 int", !13, i64 0}
end_hunk_1
