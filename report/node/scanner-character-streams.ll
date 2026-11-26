Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/scanner-character-streams?download=true
inline.NumInlined: 1075
inline.NumDeleted: 584
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK2v88internal25UnbufferedCharacterStreamINS0_20ExternalStringStreamEE5CloneEv
define linkonce_odr hidden void @_ZNK2v88internal25UnbufferedCharacterStreamINS0_20ExternalStringStreamEE5CloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #1 comdat align 2 !guid !205 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #18 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.b, i8 0, i64 41, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2v88internal25UnbufferedCharacterStreamINS0_20ExternalStringStreamEEE, i64 16), ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  store ptr %i.e, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #16, !inline_history !204
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  store ptr %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load i64, ptr %i.m, align 8
  store i64 %i.n, ptr %i.l, align 8
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal25UnbufferedCharacterStreamINS0_20ExternalStringStreamEE15can_access_heapEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 !guid !206 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal25UnbufferedCharacterStreamINS0_20ExternalStringStreamEE9ReadBlockEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 !guid !207 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.c)
  %.idx6 = shl nuw nsw i64 %.sroa.speculated.i, 1 ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 1                 ; 2 uses
  %i.d = icmp ne i64 %.idx, %.idx6                ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx6
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %_ZZN2v88internal25UnbufferedCharacterStreamINS0_20ExternalStringStreamEE9ReadBlockEmE12empty_buffer.sink8 = select i1 %i.d, ptr %i.g, ptr @_ZZN2v88internal25UnbufferedCharacterStreamINS0_20ExternalStringStreamEE9ReadBlockEmE12empty_buffer ; 2 uses
  %_ZZN2v88internal25UnbufferedCharacterStreamINS0_20ExternalStringStreamEE9ReadBlockEmE12empty_buffer.sink7 = select i1 %i.d, ptr %i.h, ptr @_ZZN2v88internal25UnbufferedCharacterStreamINS0_20ExternalStringStreamEE9ReadBlockEmE12empty_buffer
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %_ZZN2v88internal25UnbufferedCharacterStreamINS0_20ExternalStringStreamEE9ReadBlockEmE12empty_buffer.sink8, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %_ZZN2v88internal25UnbufferedCharacterStreamINS0_20ExternalStringStreamEE9ReadBlockEmE12empty_buffer.sink7, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %_ZZN2v88internal25UnbufferedCharacterStreamINS0_20ExternalStringStreamEE9ReadBlockEmE12empty_buffer.sink8, ptr %i.k, align 8
  ret i1 %i.d
}

declare void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal23BufferedCharacterStreamINS0_12OnHeapStreamEED0Ev(ptr noundef nonnull align 8 dereferenceable(1104) %0) unnamed_addr #3 comdat align 2 !guid !208 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1104) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal23BufferedCharacterStreamINS0_12OnHeapStreamEE13can_be_clonedEv(ptr noundef nonnull align 8 dereferenceable(1104) %0) unnamed_addr #1 comdat align 2 !guid !209 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2v88internal23BufferedCharacterStreamINS0_12OnHeapStreamEE5CloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1104) %1) unnamed_addr #1 comdat align 2 !guid !210 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #17
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal23BufferedCharacterStreamINS0_12OnHeapStreamEE15can_access_heapEv(ptr noundef nonnull align 8 dereferenceable(1104) %0) unnamed_addr #1 comdat align 2 !guid !211 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal23BufferedCharacterStreamINS0_12OnHeapStreamEE9ReadBlockEm(ptr noundef nonnull align 8 dereferenceable(1104) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 !guid !212 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 50 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ugt i64 %i.f, %1                    ; 2 uses
  br i1 %i.g, label %.lr.ph.i.i, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 %1
  %gepdiff = sub nuw i64 %i.f, %1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %gepdiff, i64 512) ; 2 uses
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.b, ptr noundef %i.q, i64 noundef %.sroa.speculated)
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %.sroa.speculated
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.lr.ph.i.i
  %.sink = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.b, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink, ptr %i.s, align 8
  ret i1 %i.g
}

declare noundef ptr @_ZN2v88internal7Isolate22main_thread_local_heapEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #4

declare void @_ZN2v88internal9LocalHeap21AddGCEpilogueCallbackEPFvPvES2_NS0_22GCCallbacksInSafepoint6GCTypeE(ptr noundef nonnull align 8 dereferenceable(1944), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal25RelocatingCharacterStream28UpdateBufferPointersCallbackEPv(ptr noundef %0) #1 comdat align 2 !guid !213 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.l)
  %i.m = getelementptr [2 x i8], ptr %i.h, i64 %i.j ; 2 uses
  %i.n = getelementptr [2 x i8], ptr %i.m, i64 %.sroa.speculated.i.i ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i, label %_ZN2v88internal25RelocatingCharacterStream20UpdateBufferPointersEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr [2 x i8], ptr %i.m, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = getelementptr inbounds i8, ptr %i.n, i64 %i.v
  store ptr %i.w, ptr %i.r, align 8
  store ptr %i.n, ptr %i.o, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.q, ptr %i.x, align 8
  br label %_ZN2v88internal25RelocatingCharacterStream20UpdateBufferPointersEv.exit

_ZN2v88internal25RelocatingCharacterStream20UpdateBufferPointersEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal25RelocatingCharacterStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 comdat align 2 !guid !214 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr @_ZN2v88internal7Isolate22main_thread_local_heapEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.b) #16
  tail call void @_ZN2v88internal9LocalHeap24RemoveGCEpilogueCallbackEPFvPvES2_(ptr noundef nonnull align 8 dereferenceable(1944) %i.c, ptr noundef nonnull @_ZN2v88internal25RelocatingCharacterStream28UpdateBufferPointersCallbackEPv, ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal25RelocatingCharacterStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 comdat align 2 !guid !215 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr @_ZN2v88internal7Isolate22main_thread_local_heapEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.b) #16
  tail call void @_ZN2v88internal9LocalHeap24RemoveGCEpilogueCallbackEPFvPvES2_(ptr noundef nonnull align 8 dereferenceable(1944) %i.c, ptr noundef nonnull @_ZN2v88internal25RelocatingCharacterStream28UpdateBufferPointersCallbackEPv, ptr noundef nonnull align 8 dereferenceable(88) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal25UnbufferedCharacterStreamINS0_12OnHeapStreamEE13can_be_clonedEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 !guid !216 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2v88internal25UnbufferedCharacterStreamINS0_12OnHeapStreamEE5CloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #1 comdat align 2 !guid !218 {
bb.a:
  %2 = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #18 ; 0 uses
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #17, !inline_history !217
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal25UnbufferedCharacterStreamINS0_12OnHeapStreamEE15can_access_heapEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 !guid !219 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal25UnbufferedCharacterStreamINS0_12OnHeapStreamEE9ReadBlockEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 !guid !220 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.c)
  %.idx6 = shl i64 %.sroa.speculated.i, 1         ; 2 uses
  %.idx = shl i64 %i.c, 1                         ; 2 uses
  %i.d = icmp ne i64 %.idx, %.idx6                ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr [2 x i8], ptr %i.j, i64 %i.l ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 %.idx6
  %i.o = getelementptr i8, ptr %i.m, i64 %.idx
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %_ZZN2v88internal25UnbufferedCharacterStreamINS0_12OnHeapStreamEE9ReadBlockEmE12empty_buffer.sink8 = phi ptr [ %i.n, %bb.b ], [ @_ZZN2v88internal25UnbufferedCharacterStreamINS0_12OnHeapStreamEE9ReadBlockEmE12empty_buffer, %bb.a ] ; 2 uses
  %_ZZN2v88internal25UnbufferedCharacterStreamINS0_12OnHeapStreamEE9ReadBlockEmE12empty_buffer.sink7 = phi ptr [ %i.o, %bb.b ], [ @_ZZN2v88internal25UnbufferedCharacterStreamINS0_12OnHeapStreamEE9ReadBlockEmE12empty_buffer, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %_ZZN2v88internal25UnbufferedCharacterStreamINS0_12OnHeapStreamEE9ReadBlockEmE12empty_buffer.sink8, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %_ZZN2v88internal25UnbufferedCharacterStreamINS0_12OnHeapStreamEE9ReadBlockEmE12empty_buffer.sink7, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %_ZZN2v88internal25UnbufferedCharacterStreamINS0_12OnHeapStreamEE9ReadBlockEmE12empty_buffer.sink8, ptr %i.r, align 8
  ret i1 %i.d
}

declare void @_ZN2v88internal9LocalHeap24RemoveGCEpilogueCallbackEPFvPvES2_(ptr noundef nonnull align 8 dereferenceable(1944), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal23BufferedCharacterStreamINS0_13TestingStreamEED0Ev(ptr noundef nonnull align 8 dereferenceable(1096) %0) unnamed_addr #3 comdat align 2 !guid !221 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1096) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal23BufferedCharacterStreamINS0_13TestingStreamEE13can_be_clonedEv(ptr noundef nonnull align 8 dereferenceable(1096) %0) unnamed_addr #1 comdat align 2 !guid !222 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2v88internal23BufferedCharacterStreamINS0_13TestingStreamEE5CloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1096) %1) unnamed_addr #1 comdat align 2 !guid !223 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(1096) ptr @_Znwm(i64 noundef 1096) #18 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.b, i8 0, i64 41, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2v88internal23BufferedCharacterStreamINS0_13TestingStreamEEE, i64 16), ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1080
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1080
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal23BufferedCharacterStreamINS0_13TestingStreamEE15can_access_heapEv(ptr noundef nonnull align 8 dereferenceable(1096) %0) unnamed_addr #1 comdat align 2 !guid !224 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal23BufferedCharacterStreamINS0_13TestingStreamEE9ReadBlockEm(ptr noundef nonnull align 8 dereferenceable(1096) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 !guid !225 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 50 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ugt i64 %i.f, %1                    ; 2 uses
  br i1 %i.g, label %.lr.ph.i.i, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %1
  %gepdiff = sub nuw nsw i64 %i.f, %1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %gepdiff, i64 512) ; 2 uses
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.b, ptr noundef %i.j, i64 noundef %.sroa.speculated)
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %.sroa.speculated
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.lr.ph.i.i
  %.sink = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.b, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink, ptr %i.l, align 8
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal20Utf16CharacterStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %0) unnamed_addr #1 comdat align 2 !guid !226 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal25UnbufferedCharacterStreamINS0_13TestingStreamEED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 !guid !227 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal25UnbufferedCharacterStreamINS0_13TestingStreamEE13can_be_clonedEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 comdat align 2 !guid !228 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2v88internal25UnbufferedCharacterStreamINS0_13TestingStreamEE5CloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 comdat align 2 !guid !229 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #18 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.b, i8 0, i64 41, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2v88internal25UnbufferedCharacterStreamINS0_13TestingStreamEEE, i64 16), ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal25UnbufferedCharacterStreamINS0_13TestingStreamEE15can_access_heapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 comdat align 2 !guid !230 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal25UnbufferedCharacterStreamINS0_13TestingStreamEE9ReadBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 !guid !231 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.c)
  %.idx6 = shl nuw nsw i64 %.sroa.speculated.i, 1 ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 1                 ; 2 uses
  %i.d = icmp ne i64 %.idx, %.idx6                ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx6
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %_ZZN2v88internal25UnbufferedCharacterStreamINS0_13TestingStreamEE9ReadBlockEmE12empty_buffer.sink8 = select i1 %i.d, ptr %i.g, ptr @_ZZN2v88internal25UnbufferedCharacterStreamINS0_13TestingStreamEE9ReadBlockEmE12empty_buffer ; 2 uses
  %_ZZN2v88internal25UnbufferedCharacterStreamINS0_13TestingStreamEE9ReadBlockEmE12empty_buffer.sink7 = select i1 %i.d, ptr %i.h, ptr @_ZZN2v88internal25UnbufferedCharacterStreamINS0_13TestingStreamEE9ReadBlockEmE12empty_buffer
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %_ZZN2v88internal25UnbufferedCharacterStreamINS0_13TestingStreamEE9ReadBlockEmE12empty_buffer.sink8, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %_ZZN2v88internal25UnbufferedCharacterStreamINS0_13TestingStreamEE9ReadBlockEmE12empty_buffer.sink7, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %_ZZN2v88internal25UnbufferedCharacterStreamINS0_13TestingStreamEE9ReadBlockEmE12empty_buffer.sink8, ptr %i.k, align 8
  ret i1 %i.d
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal25UnbufferedCharacterStreamINS0_13ChunkedStreamEED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 !guid !233 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2v88internal25UnbufferedCharacterStreamINS0_13ChunkedStreamEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN2v88internal13ChunkedStreamItEE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN2v88internal13ChunkedStreamItED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_0
