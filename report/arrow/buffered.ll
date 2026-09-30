Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/buffered?download=true
inline.NumInlined: 896
inline.NumDeleted: 375
begin_hunk_0_@_ZN5arrow2io19BufferedInputStream7DoAbortEv:bb.a
bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !224
  br label %_ZN5arrow2io19BufferedInputStream4Impl5AbortEv.exit

_ZN5arrow2io19BufferedInputStream4Impl5AbortEv.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5arrow2io19BufferedInputStream6closedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #27 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZNK5arrow2io12BufferedBase6closedEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #30
  unreachable

_ZNK5arrow2io12BufferedBase6closedEv.exit:        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !33, !range !68, !noundef !69
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #27 ; 0 uses
  ret i1 %i.h
}

; Function Attrs: uwtable
define noundef zeroext i1 @_ZTv0_n64_NK5arrow2io19BufferedInputStream6closedEv(ptr nofree noundef readonly captures(none) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -64
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !98   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.h = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #27 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNK5arrow2io19BufferedInputStream6closedEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.h) #30
  unreachable

_ZNK5arrow2io19BufferedInputStream6closedEv.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !33, !range !68, !noundef !69
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = xor i1 %i.k, true
  %i.m = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #27 ; 0 uses
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @_ZN5arrow2io19BufferedInputStream6DetachEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.21") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 0, ptr %i.c, align 8, !tbaa !33, !noalias !227
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !19, !noalias !227
  store ptr null, ptr %i.e, align 8, !tbaa !36, !noalias !227
  store <2 x ptr> %i.f, ptr %0, align 8, !tbaa !19, !alias.scope !227
  store ptr null, ptr %i.d, align 8, !tbaa !100, !noalias !227
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define void @_ZNK5arrow2io19BufferedInputStream3rawEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.21") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36, !noalias !230 ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !19, !noalias !230
  store <2 x ptr> %i.f, ptr %0, align 8, !tbaa !19, !alias.scope !230
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNK5arrow2io19BufferedInputStream4Impl3rawEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !230
  %.not.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !12, !noalias !230
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !12, !noalias !230
  br label %_ZNK5arrow2io19BufferedInputStream4Impl3rawEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4, !noalias !230 ; 0 uses
  br label %_ZNK5arrow2io19BufferedInputStream4Impl3rawEv.exit

_ZNK5arrow2io19BufferedInputStream4Impl3rawEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow2io19BufferedInputStream6DoTellEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.14") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Result.14", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !34, !noalias !234 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !234
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100, !noalias !234 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14, !noalias !234
  %i.i = getelementptr i8, ptr %i.h, i64 -56
  %i.j = load i64, ptr %i.i, align 8, !noalias !234
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14, !noalias !234
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !noalias !234
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.14") align 8 %2, ptr noundef nonnull align 8 dereferenceable(28) %i.k), !noalias !234, !inline_history !233
  %i.o = load ptr, ptr %2, align 8, !tbaa !58, !noalias !234
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN5arrow6ResultIlED2Ev.exit7._crit_edge.i, label %bb.c, !prof !59

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #27
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !58, !noalias !234 ; 2 uses
  %.not.i.i6.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i6.i, label %_ZN5arrow6ResultIlED2Ev.exit7.thread.i, label %bb.d, !prof !75

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !67, !range !68, !noundef !69
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN5arrow6ResultIlED2Ev.exit7.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #27
  br label %_ZN5arrow6ResultIlED2Ev.exit7.thread.i

_ZN5arrow6ResultIlED2Ev.exit7.thread.i:           ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !234
  br label %_ZNK5arrow2io19BufferedInputStream4Impl4TellEv.exit

_ZN5arrow6ResultIlED2Ev.exit7._crit_edge.i:       ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !76, !noalias !234 ; 2 uses
  store i64 %i.u, ptr %i.c, align 8, !tbaa !34, !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !234
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6ResultIlED2Ev.exit7._crit_edge.i, %bb.a
  %i.v = phi i64 [ %i.u, %_ZN5arrow6ResultIlED2Ev.exit7._crit_edge.i ], [ %i.d, %bb.a ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.x = load i64, ptr %i.w, align 8, !tbaa !97, !noalias !234
  %i.y = sub nsw i64 %i.v, %i.x
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !234
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !76, !alias.scope !234
  br label %_ZNK5arrow2io19BufferedInputStream4Impl4TellEv.exit

_ZNK5arrow2io19BufferedInputStream4Impl4TellEv.exit: ; preds = %_ZN5arrow6ResultIlED2Ev.exit7.thread.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io19BufferedInputStream6DoPeekEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.42") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98
  tail call void @_ZN5arrow2io19BufferedInputStream4Impl4PeekEl(ptr dead_on_unwind writable sret(%"class.arrow::Result.42") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io19BufferedInputStream4Impl4PeekEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.42") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Result.14", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.e = load i64, ptr %i.d, align 8, !tbaa !97   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.g = load i64, ptr %i.f, align 8, !tbaa !95
  %i.h = add i64 %i.e, %i.b
  %i.i = sub i64 %i.h, %i.g
  %.sroa.speculated30 = tail call i64 @llvm.smin.i64(i64 %i.i, i64 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.041 = phi i64 [ %.sroa.speculated30, %bb.b ], [ %2, %bb.a ] ; 6 uses
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %9 = icmp eq i64 %i.e, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp slt i64 %.041, %i.k
  %or.cond = select i1 %9, i1 %i.l, i1 false
  br i1 %or.cond, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @_ZN5arrow2io19BufferedInputStream4Impl8DoBufferEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.m = load ptr, ptr %4, align 8, !tbaa !58     ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit16, label %bb.d, !prof !59

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt17basic_string_viewIcSt11char_traitsIcEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %.pr = load ptr, ptr %3, align 8, !tbaa !58     ; 2 uses
  %.not.i15 = icmp eq ptr %.pr, null
  br i1 %.not.i15, label %_ZN5arrow6StatusD2Ev.exit16.thread, label %bb.e, !prof !75

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.pr, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !67, !range !68, !noundef !69
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN5arrow6StatusD2Ev.exit16.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  br label %_ZN5arrow6StatusD2Ev.exit16.thread

_ZN5arrow6StatusD2Ev.exit16.thread:               ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.s

_ZN5arrow6StatusD2Ev.exit16:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.g

bb.g:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit16, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !104
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !87
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !72   ; 2 uses
  %i.x = sub nsw i64 %i.u, %i.w
  %i.y = icmp sgt i64 %.041, %i.x
  br i1 %i.y, label %_ZN5arrow6StatusD2Ev.exit18, label %bb.k

_ZN5arrow6StatusD2Ev.exit18:                      ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.z = add nsw i64 %i.w, %.041
  call void @_ZN5arrow2io19BufferedInputStream4Impl13SetBufferSizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %i.z)
  %i.aa = load ptr, ptr %6, align 8, !tbaa !58    ; 2 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN5arrow6StatusD2Ev.exit22, label %bb.h, !prof !59

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit18
  call void @_ZN5arrow6ResultISt17basic_string_viewIcSt11char_traitsIcEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  %.pr47 = load ptr, ptr %5, align 8, !tbaa !58   ; 2 uses
  %.not.i21 = icmp eq ptr %.pr47, null
  br i1 %.not.i21, label %_ZN5arrow6StatusD2Ev.exit22.thread, label %bb.i, !prof !75

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.pr47, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !67, !range !68, !noundef !69
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZN5arrow6StatusD2Ev.exit22.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  br label %_ZN5arrow6StatusD2Ev.exit22.thread

_ZN5arrow6StatusD2Ev.exit22.thread:               ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.s

_ZN5arrow6StatusD2Ev.exit22:                      ; preds = %_ZN5arrow6StatusD2Ev.exit18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.k

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit22, %bb.g
  %i.af = load i64, ptr %8, align 8, !tbaa !97    ; 3 uses
  %i.ag = icmp sgt i64 %.041, %i.af
  br i1 %i.ag, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ah = sub nsw i64 %.041, %i.af                ; 2 uses
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !96  ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !95
  %i.am = sub nsw i64 %i.ai, %i.al
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.am, i64 %i.ah)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.044 = phi i64 [ %.sroa.speculated, %bb.m ], [ %i.ah, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !100 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !14
  %i.aq = getelementptr i8, ptr %i.ap, i64 -64
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 %i.ar ; 2 uses
  %i.at = load ptr, ptr %i.r, align 8, !tbaa !104 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 9
  %i.av = load i8, ptr %i.au, align 1, !tbaa !86, !range !68, !noundef !69
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ay = load i8, ptr %i.ax, align 8, !range !68
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = select i1 %i.aw, i1 %i.az, i1 false, !prof !59
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = select i1 %i.ba, ptr %i.bc, ptr null, !prof !59
  %i.be = load i64, ptr %i.v, align 8, !tbaa !72
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %i.af
  %i.bh = load ptr, ptr %i.as, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.14") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.as, i64 noundef %.044, ptr noundef %i.bg)
  %i.bk = load ptr, ptr %7, align 8, !tbaa !58
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZN5arrow6ResultIlED2Ev.exit, label %bb.o, !prof !59

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6ResultISt17basic_string_viewIcSt11char_traitsIcEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #27
  %.pre51 = load ptr, ptr %7, align 8, !tbaa !58  ; 2 uses
  %.not.i.i = icmp eq ptr %.pre51, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultIlED2Ev.exit.thread, label %bb.p, !prof !75

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre51, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !67, !range !68, !noundef !69
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZN5arrow6ResultIlED2Ev.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #27
  br label %_ZN5arrow6ResultIlED2Ev.exit.thread

_ZN5arrow6ResultIlED2Ev.exit.thread:              ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.s

_ZN5arrow6ResultIlED2Ev.exit:                     ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !76 ; 2 uses
  %i.br = load i64, ptr %8, align 8, !tbaa !97
  %i.bs = add nsw i64 %i.br, %i.bq                ; 2 uses
  store i64 %i.bs, ptr %8, align 8, !tbaa !97
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !95
  %i.bv = add nsw i64 %i.bu, %i.bq
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6ResultIlED2Ev.exit, %bb.k
  %.243 = phi i64 [ %i.bs, %_ZN5arrow6ResultIlED2Ev.exit ], [ %.041, %bb.k ]
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !73
  %i.by = load i64, ptr %i.v, align 8, !tbaa !72
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 %i.by
  store ptr null, ptr %0, align 8, !tbaa !58
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.243, ptr %i.ca, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bz, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !235
  br label %bb.s

bb.s:                                             ; preds = %_ZN5arrow6ResultIlED2Ev.exit.thread, %_ZN5arrow6StatusD2Ev.exit22.thread, %_ZN5arrow6StatusD2Ev.exit16.thread, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io19BufferedInputStream4Impl13SetBufferSizeEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !76
  %i.b = icmp slt i64 %2, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA31_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(31) @.str)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !72
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !97   ; 2 uses
  %i.g = add nsw i64 %i.f, %i.d                   ; 2 uses
  %.not = icmp slt i64 %i.g, %2
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !242
  call void @_ZN5arrow8internal12JoinToStringIJRA70_KcRlRA15_S2_S5_RA19_S2_S5_RA16_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(70) @.str.9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(15) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(19) @.str.11, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(16) @.str.12, ptr noundef nonnull align 8 dereferenceable(8) %i.h), !noalias !242
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %3, align 8, !tbaa !70, !noalias !242 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN5arrow6Status7InvalidIJRA70_KcRlRA15_S2_S5_RA19_S2_S5_RA16_S2_S5_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.l = load i64, ptr %i.j, align 8, !tbaa !40, !noalias !242
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #28
  br label %_ZN5arrow6Status7InvalidIJRA70_KcRlRA15_S2_S5_RA19_S2_S5_RA16_S2_S5_EEES0_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %3, align 8, !tbaa !70, !noalias !242 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i: ; preds = %bb.f
  %i.r = load i64, ptr %i.p, align 8, !tbaa !40, !noalias !242
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !242
  resume { ptr, i32 } %i.n

_ZN5arrow6Status7InvalidIJRA70_KcRlRA15_S2_S5_RA19_S2_S5_RA16_S2_S5_EEES0_DpOT_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !242
  br label %bb.m

bb.g:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.u = load i64, ptr %i.t, align 8, !tbaa !96   ; 3 uses
  %i.v = icmp sgt i64 %i.u, -1
  br i1 %i.v, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.w = icmp eq i64 %i.f, 0
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.y = load i64, ptr %i.x, align 8, !tbaa !95   ; 2 uses
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = sub nsw i64 %i.u, %i.y
  %.sroa.speculated7 = tail call i64 @llvm.smin.i64(i64 %i.z, i64 %2)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aa = add i64 %i.u, %i.g
  %i.ab = sub i64 %i.aa, %i.y
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.ab, i64 %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %i.ac = phi i64 [ %.sroa.speculated7, %bb.i ], [ %.sroa.speculated, %bb.j ], [ %2, %bb.g ]
  %.0 = phi i1 [ true, %bb.i ], [ false, %bb.j ], [ false, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !74, !noalias !243
  tail call void @_ZN5arrow2io12BufferedBase11ResetBufferEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.ae = load ptr, ptr %0, align 8, !tbaa !58
  %i.af = icmp eq ptr %i.ae, null
  %or.cond = and i1 %.0, %i.af
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %i.c, align 8, !tbaa !72
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %_ZN5arrow6Status7InvalidIJRA70_KcRlRA15_S2_S5_RA19_S2_S5_RA16_S2_S5_EEES0_DpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK5arrow2io19BufferedInputStream14bytes_bufferedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !97
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK5arrow2io19BufferedInputStream11buffer_sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !74
  ret i64 %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io19BufferedInputStream6DoReadElPv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.14") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98
  tail call void @_ZN5arrow2io19BufferedInputStream4Impl4ReadElPv(ptr dead_on_unwind writable sret(%"class.arrow::Result.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io19BufferedInputStream4Impl4ReadElPv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %5 = alloca %"class.arrow::Result.14", align 8  ; 8 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !76
  %i.b = icmp slt i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !41

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @_ZN5arrow6Status7InvalidIJRA42_KcRlEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 1 dereferenceable(42) @.str.13, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #27
  %i.c = load ptr, ptr %4, align 8, !tbaa !58     ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !59

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !67, !range !68, !noundef !69
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 7 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !76
  %i.i = tail call i64 @llvm.smin.i64(i64 %i.h, i64 %2) ; 10 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !72
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %i.o, i64 %i.i, i1 false)
  %i.p = load i64, ptr %i.m, align 8, !tbaa !72
  %i.q = add nsw i64 %i.p, %i.i
  store i64 %i.q, ptr %i.m, align 8, !tbaa !72
  %i.r = load i64, ptr %i.g, align 8, !tbaa !97
  %i.s = sub nsw i64 %i.r, %i.i
  store i64 %i.s, ptr %i.g, align 8, !tbaa !97
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %8 = sub nsw i64 %2, %i.i                       ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %10 = load i64, ptr %9, align 8, !tbaa !96      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = sub nsw i64 %10, %i.u
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.v, i64 %8)
  %11 = icmp slt i64 %10, 0
  %.0 = select i1 %11, i64 %8, i64 %.sroa.speculated ; 4 uses
  %12 = icmp eq i64 %.0, 0
  br i1 %12, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %0, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.w, align 8, !tbaa !76
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !74
  %.not = icmp slt i64 %.0, %i.y
  br i1 %.not, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !100 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ac = getelementptr i8, ptr %i.ab, i64 -64
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.i
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.14") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i64 noundef %.0, ptr noundef %i.af)
  %i.aj = load ptr, ptr %5, align 8, !tbaa !58
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.thread, label %bb.k, !prof !59

.thread:                                          ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !76 ; 2 uses
  %i.an = load i64, ptr %i.t, align 8, !tbaa !95
  %i.ao = add nsw i64 %i.an, %i.am
  store i64 %i.ao, ptr %i.t, align 8, !tbaa !95
  store i64 0, ptr %i.g, align 8, !tbaa !97
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.ap, align 8, !tbaa !72
  %i.aq = add nsw i64 %i.am, %i.i
  store ptr null, ptr %0, align 8, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !76
  br label %_ZN5arrow6ResultIlED2Ev.exit21

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  %.pre = load ptr, ptr %5, align 8, !tbaa !58    ; 2 uses
  %.not.i.i20 = icmp eq ptr %.pre, null
  br i1 %.not.i.i20, label %_ZN5arrow6ResultIlED2Ev.exit21, label %bb.l, !prof !75

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !67, !range !68, !noundef !69
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN5arrow6ResultIlED2Ev.exit21, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #27
  br label %_ZN5arrow6ResultIlED2Ev.exit21

_ZN5arrow6ResultIlED2Ev.exit21:                   ; preds = %.thread, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.q

_ZN5arrow6StatusD2Ev.exit23:                      ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN5arrow2io19BufferedInputStream4Impl8DoBufferEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.av = load ptr, ptr %7, align 8, !tbaa !58    ; 2 uses
  store ptr %i.av, ptr %6, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN5arrow6StatusD2Ev.exit29, label %bb.n, !prof !59

bb.n:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit23
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  %i.ax = load ptr, ptr %6, align 8, !tbaa !58    ; 2 uses
  %.not.i24 = icmp eq ptr %i.ax, null
  br i1 %.not.i24, label %_ZN5arrow6StatusD2Ev.exit25, label %bb.o, !prof !59

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !67, !range !68, !noundef !69
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %_ZN5arrow6StatusD2Ev.exit25, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  br label %_ZN5arrow6StatusD2Ev.exit25

_ZN5arrow6StatusD2Ev.exit25:                      ; preds = %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.q

_ZN5arrow6StatusD2Ev.exit29:                      ; preds = %_ZN5arrow6StatusD2Ev.exit23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bb = load i64, ptr %i.g, align 8, !tbaa !76
  %.sroa.speculated38 = call i64 @llvm.smin.i64(i64 %.0, i64 %i.bb) ; 4 uses
  %i.bc = getelementptr inbounds i8, ptr %3, i64 %i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !73
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !72
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.bh, i64 %.sroa.speculated38, i1 false)
  %i.bi = load i64, ptr %i.bf, align 8, !tbaa !72
  %i.bj = add nsw i64 %i.bi, %.sroa.speculated38
  store i64 %i.bj, ptr %i.bf, align 8, !tbaa !72
  %i.bk = load i64, ptr %i.g, align 8, !tbaa !97
  %i.bl = sub nsw i64 %i.bk, %.sroa.speculated38
  store i64 %i.bl, ptr %i.g, align 8, !tbaa !97
  %i.bm = add nsw i64 %.sroa.speculated38, %i.i
  store ptr null, ptr %0, align 8, !tbaa !58
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !76
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %_ZN5arrow6ResultIlED2Ev.exit21, %_ZN5arrow6StatusD2Ev.exit29, %_ZN5arrow6StatusD2Ev.exit25, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io19BufferedInputStream6DoReadEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.46") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98
  tail call void @_ZN5arrow2io19BufferedInputStream4Impl4ReadEl(ptr dead_on_unwind writable sret(%"class.arrow::Result.46") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io19BufferedInputStream4Impl4ReadEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.46") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.72", align 8  ; 12 uses
  %4 = alloca %"class.std::unique_ptr.76", align 8 ; 7 uses
  %5 = alloca %"class.arrow::Result.14", align 8  ; 11 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.std::shared_ptr.18", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  call void @_ZN5arrow23AllocateResizableBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.72") align 8 %3, i64 noundef %2, ptr noundef %i.a)
  %i.b = load ptr, ptr %3, align 8, !tbaa !58
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b, !prof !59

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !105, !noalias !250 ; 2 uses
  store i64 %i.e, ptr %4, align 8, !tbaa !105, !alias.scope !250
  store ptr null, ptr %i.d, align 8, !tbaa !105, !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %.cast = inttoptr i64 %i.e to ptr               ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.cast, i64 9 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !86, !range !68, !noundef !69
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %.cast, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !68
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = select i1 %i.h, i1 %i.k, i1 false, !prof !59
  %i.m = getelementptr inbounds nuw i8, ptr %.cast, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !59
  invoke void @_ZN5arrow2io19BufferedInputStream4Impl4ReadElPv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.14") align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2, ptr noundef %i.o)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %5, align 8, !tbaa !58
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.e, !prof !59

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  br label %bb.q

.thread:                                          ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i37

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !76   ; 2 uses
  %i.u = icmp slt i64 %i.t, %2
  br i1 %i.u, label %bb.g, label %_ZN5arrow6Buffer11ZeroPaddingEv.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.v = load ptr, ptr %.cast, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %.cast, i64 noundef %i.t, i1 noundef zeroext false)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.k

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.g
  %i.y = load ptr, ptr %7, align 8, !tbaa !58     ; 2 uses
  store ptr %i.y, ptr %6, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN5arrow6StatusD2Ev.exit30, label %bb.h, !prof !59

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  %i.aa = load ptr, ptr %6, align 8, !tbaa !58    ; 2 uses
  %.not.i25 = icmp eq ptr %i.aa, null
  br i1 %.not.i25, label %_ZN5arrow6StatusD2Ev.exit26, label %bb.i, !prof !59

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !67, !range !68, !noundef !69
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN5arrow6StatusD2Ev.exit26, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  br label %_ZN5arrow6StatusD2Ev.exit26

_ZN5arrow6StatusD2Ev.exit26:                      ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.q

bb.k:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.n
end_hunk_0
