Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Triple?download=true
inline.NumInlined: 1218
inline.NumDeleted: 184
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4llvh6Triple23getBigEndianArchVariantEv:bb.a
bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !177
  store i8 %i.j, ptr %i.i, align 1, !tbaa !177
  br label %_ZN4llvh6TripleC2ERKS0_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZN4llvh6TripleC2ERKS0_.exit

_ZN4llvh6TripleC2ERKS0_.exit:                     ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.k = load i64, ptr %i.a, align 8, !tbaa !160  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !157
  %i.m = load ptr, ptr %0, align 8, !tbaa !154
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.q = load i32, ptr %i.p, align 8, !tbaa !168  ; 2 uses
  switch i32 %i.q, label %_ZNK4llvh6Triple14isLittleEndianEv.exit [
    i32 3, label %bb.e
    i32 20, label %bb.e
    i32 39, label %bb.e
    i32 38, label %bb.e
    i32 1, label %bb.e
    i32 6, label %bb.e
    i32 7, label %bb.e
    i32 9, label %bb.e
    i32 41, label %bb.e
    i32 40, label %bb.e
    i32 44, label %bb.e
    i32 36, label %bb.e
    i32 37, label %bb.e
    i32 13, label %bb.e
    i32 11, label %bb.e
    i32 14, label %bb.e
    i32 15, label %bb.e
    i32 35, label %bb.e
    i32 34, label %bb.e
    i32 18, label %bb.e
    i32 19, label %bb.e
    i32 21, label %bb.e
    i32 22, label %bb.e
    i32 45, label %bb.e
    i32 25, label %bb.e
    i32 43, label %bb.e
    i32 42, label %bb.e
    i32 29, label %bb.e
    i32 47, label %bb.e
    i32 48, label %bb.e
    i32 31, label %bb.e
    i32 32, label %bb.e
    i32 33, label %bb.e
    i32 28, label %bb.e
    i32 49, label %bb.e
    i32 50, label %bb.e
  ]

bb.e:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit
  switch i32 %i.q, label %bb.n [
    i32 25, label %bb.m
    i32 20, label %bb.f
    i32 39, label %bb.f
    i32 38, label %bb.f
    i32 6, label %bb.f
    i32 9, label %bb.f
    i32 41, label %bb.f
    i32 40, label %bb.f
    i32 44, label %bb.f
    i32 36, label %bb.f
    i32 37, label %bb.f
    i32 14, label %bb.f
    i32 15, label %bb.f
    i32 35, label %bb.f
    i32 34, label %bb.f
    i32 19, label %bb.f
    i32 21, label %bb.f
    i32 22, label %bb.f
    i32 45, label %bb.f
    i32 43, label %bb.f
    i32 42, label %bb.f
    i32 47, label %bb.f
    i32 48, label %bb.f
    i32 31, label %bb.f
    i32 32, label %bb.f
    i32 33, label %bb.f
    i32 49, label %bb.f
    i32 50, label %bb.f
    i32 1, label %bb.f
    i32 29, label %bb.f
    i32 28, label %bb.g
    i32 3, label %bb.h
    i32 7, label %bb.i
    i32 13, label %bb.j
    i32 11, label %bb.k
    i32 18, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str, i64 7)
  br label %_ZNK4llvh6Triple14isLittleEndianEv.exit

bb.g:                                             ; preds = %bb.e
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.27, i64 3)
  br label %_ZNK4llvh6Triple14isLittleEndianEv.exit

bb.h:                                             ; preds = %bb.e
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.2, i64 10)
  br label %_ZNK4llvh6Triple14isLittleEndianEv.exit

bb.i:                                             ; preds = %bb.e
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.8, i64 5)
  br label %_ZNK4llvh6Triple14isLittleEndianEv.exit

bb.j:                                             ; preds = %bb.e
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.12, i64 6)
  br label %_ZNK4llvh6Triple14isLittleEndianEv.exit

bb.k:                                             ; preds = %bb.e
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.10, i64 4)
  br label %_ZNK4llvh6Triple14isLittleEndianEv.exit

bb.l:                                             ; preds = %bb.e
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.16, i64 9)
  br label %_ZNK4llvh6Triple14isLittleEndianEv.exit

bb.m:                                             ; preds = %bb.e
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.23, i64 5)
  br label %_ZNK4llvh6Triple14isLittleEndianEv.exit

bb.n:                                             ; preds = %bb.e
  unreachable

_ZNK4llvh6Triple14isLittleEndianEv.exit:          ; preds = %_ZN4llvh6TripleC2ERKS0_.exit, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK4llvh6Triple14isLittleEndianEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #2 align 2 !guid !623 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !168  ; 2 uses
  %i.c = icmp ult i32 %i.b, 51
  %switch.cast = zext nneg i32 %i.b to i51
  %switch.downshift = lshr i51 -70370044613942, %switch.cast
  %switch.masked = trunc i51 %switch.downshift to i1
  %.0 = select i1 %i.c, i1 %switch.masked, i1 false
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh6Triple26getLittleEndianArchVariantEv(ptr dead_on_unwind noalias writable sret(%"class.llvh::Triple") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #4 align 2 !guid !624 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !182
  %i.c = load ptr, ptr %1, align 8, !tbaa !154    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !157  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.e, ptr %i.a, align 8, !tbaa !160
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #13 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !154
  %i.h = load i64, ptr %i.a, align 8, !tbaa !160
  store i64 %i.h, ptr %i.b, align 8, !tbaa !177
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN4llvh6TripleC2ERKS0_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !177
  store i8 %i.j, ptr %i.i, align 1, !tbaa !177
  br label %_ZN4llvh6TripleC2ERKS0_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZN4llvh6TripleC2ERKS0_.exit

_ZN4llvh6TripleC2ERKS0_.exit:                     ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.k = load i64, ptr %i.a, align 8, !tbaa !160  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !157
  %i.m = load ptr, ptr %0, align 8, !tbaa !154
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.q = load i32, ptr %i.p, align 8, !tbaa !168
  switch i32 %i.q, label %bb.m [
    i32 3, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 20, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 39, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 38, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 1, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 6, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 7, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 9, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 41, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 40, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 44, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 36, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 37, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 13, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 11, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 14, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 15, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 35, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 34, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 18, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 19, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 21, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 22, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 45, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 25, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 43, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 42, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 29, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 47, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 48, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 31, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 32, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 33, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 28, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 49, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 50, label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread
    i32 0, label %bb.e
    i32 46, label %bb.e
    i32 16, label %bb.e
    i32 24, label %bb.e
    i32 26, label %bb.e
    i32 2, label %bb.e
    i32 30, label %bb.e
    i32 27, label %bb.f
    i32 4, label %bb.g
    i32 8, label %bb.h
    i32 12, label %bb.i
    i32 10, label %bb.j
    i32 17, label %bb.k
    i32 23, label %bb.l
  ]

bb.e:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str, i64 7)
  br label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread

bb.f:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.28, i64 5)
  br label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread

bb.g:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.1, i64 7)
  br label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread

bb.h:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.7, i64 5)
  br label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread

bb.i:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.13, i64 8)
  br label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread

bb.j:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.11, i64 6)
  br label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread

bb.k:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.17, i64 11)
  br label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread

bb.l:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  call void @_ZN4llvh6Triple11setArchNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nonnull @.str.25, i64 7)
  br label %_ZNK4llvh6Triple14isLittleEndianEv.exit.thread

bb.m:                                             ; preds = %_ZN4llvh6TripleC2ERKS0_.exit
  unreachable

_ZNK4llvh6Triple14isLittleEndianEv.exit.thread:   ; preds = %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %_ZN4llvh6TripleC2ERKS0_.exit, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK4llvh6Triple16isCompatibleWithERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #2 align 2 !guid !625 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !168  ; 2 uses
  switch i32 %i.b, label %.thread20 [
    i32 29, label %bb.b
    i32 1, label %bb.c
    i32 30, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !168
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.f, label %.thread20

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !168
  %i.h = icmp eq i32 %i.g, 29
  br i1 %i.h, label %bb.f, label %.thread20

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !168
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.f, label %.thread20

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !168
  %i.n = icmp eq i32 %i.m, 30
  br i1 %i.n, label %bb.f, label %.thread20

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !170  ; 2 uses
  %i.q = icmp eq i32 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !169
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !169
  %i.v = icmp eq i32 %i.s, %i.u                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i32, ptr %i.w, align 8              ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = icmp eq i32 %i.x, 1
  %or.cond = select i1 %i.v, i1 %i.y, i1 false
  br i1 %or.cond, label %_ZNK4llvh6TripleeqERKS0_.exit.sink.split, label %_ZNK4llvh6TripleeqERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.z = icmp eq i32 %i.p, %i.x
  %or.cond25 = select i1 %i.v, i1 %i.z, i1 false
  br i1 %or.cond25, label %bb.i, label %_ZNK4llvh6TripleeqERKS0_.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !171
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !171
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.j, label %_ZNK4llvh6TripleeqERKS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !172
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !172
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %_ZNK4llvh6TripleeqERKS0_.exit.sink.split, label %_ZNK4llvh6TripleeqERKS0_.exit

.thread20:                                        ; preds = %bb.a, %bb.c, %bb.b, %bb.d, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !170 ; 2 uses
  %i.am = icmp eq i32 %i.al, 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !168
  %i.ap = icmp eq i32 %i.b, %i.ao                 ; 2 uses
  br i1 %i.am, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.thread20
  br i1 %i.ap, label %bb.l, label %_ZNK4llvh6TripleeqERKS0_.exit

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !169
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !169
  %i.au = icmp eq i32 %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = icmp eq i32 %i.aw, 1
  %or.cond28 = select i1 %i.au, i1 %i.ax, i1 false
  br i1 %or.cond28, label %_ZNK4llvh6TripleeqERKS0_.exit.sink.split, label %_ZNK4llvh6TripleeqERKS0_.exit

bb.m:                                             ; preds = %.thread20
  br i1 %i.ap, label %bb.n, label %_ZNK4llvh6TripleeqERKS0_.exit

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !169
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !169
  %i.bc = icmp eq i32 %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = icmp eq i32 %i.al, %i.be
  %or.cond31 = select i1 %i.bc, i1 %i.bf, i1 false
  br i1 %or.cond31, label %bb.o, label %_ZNK4llvh6TripleeqERKS0_.exit

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !171
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !171
  %i.bk = icmp eq i32 %i.bh, %i.bj
  br i1 %i.bk, label %bb.p, label %_ZNK4llvh6TripleeqERKS0_.exit

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !172
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !172
  %i.bp = icmp eq i32 %i.bm, %i.bo
  br i1 %i.bp, label %_ZNK4llvh6TripleeqERKS0_.exit.sink.split, label %_ZNK4llvh6TripleeqERKS0_.exit

_ZNK4llvh6TripleeqERKS0_.exit.sink.split:         ; preds = %bb.p, %bb.l, %bb.j, %bb.g
  %.sink = phi i64 [ 44, %bb.l ], [ 52, %bb.j ], [ 44, %bb.g ], [ 52, %bb.p ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !177
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !177
  %i.bu = icmp eq i32 %i.br, %i.bt
  br label %_ZNK4llvh6TripleeqERKS0_.exit

_ZNK4llvh6TripleeqERKS0_.exit:                    ; preds = %_ZNK4llvh6TripleeqERKS0_.exit.sink.split, %bb.p, %bb.o, %bb.n, %bb.m, %bb.k, %bb.l, %bb.h, %bb.i, %bb.j, %bb.g
  %.0 = phi i1 [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.g ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.m ], [ false, %bb.h ], [ false, %bb.n ], [ %i.bu, %_ZNK4llvh6TripleeqERKS0_.exit.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh6Triple5mergeB5cxx11ERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2) local_unnamed_addr #4 align 2 !guid !626 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [3 x i32], align 4                ; 8 uses
  %i.d = alloca [3 x i32], align 4                ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !170
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @_ZNK4llvh6Triple12getOSVersionERjS1_S1_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.j = load i32, ptr %i.d, align 4, !tbaa !7    ; 2 uses
  %i.k = load i32, ptr %i.h, align 4, !tbaa !7    ; 3 uses
  %i.l = load i32, ptr %i.i, align 4, !tbaa !7    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @_ZNK4llvh6Triple12getOSVersionERjS1_S1_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  %i.o = load i32, ptr %i.c, align 4, !tbaa !7    ; 2 uses
  %.not.i.i = icmp eq i32 %i.o, %i.j
  br i1 %.not.i.i, label %bb.c, label %.split

.split:                                           ; preds = %bb.b
  %i.p = icmp ult i32 %i.o, %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br i1 %i.p, label %bb.d, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.m, align 4, !tbaa !7    ; 2 uses
  %.not12.i.i = icmp eq i32 %i.q, %i.k
  br i1 %.not12.i.i, label %.split5, label %_ZNK4llvh6Triple13isOSVersionLTERKS0_.exit

.split5:                                          ; preds = %bb.c
  %i.r = load i32, ptr %i.n, align 4, !tbaa !7
  %.not13.i.i = icmp ne i32 %i.r, %i.l
  %i.s = icmp ult i32 %i.k, %i.l
  %spec.select.i.i = and i1 %i.s, %.not13.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br i1 %spec.select.i.i, label %bb.d, label %bb.h

_ZNK4llvh6Triple13isOSVersionLTERKS0_.exit:       ; preds = %bb.c
  %i.t = icmp ult i32 %i.q, %i.k
end_hunk_0
