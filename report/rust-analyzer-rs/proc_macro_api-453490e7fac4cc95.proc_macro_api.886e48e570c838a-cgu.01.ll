Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/proc_macro_api-453490e7fac4cc95.proc_macro_api.886e48e570c838a-cgu.01?download=true
inline.NumInlined: 567
inline.NumDeleted: 304
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsJo5RpJFzwk_14proc_macro_api15legacy_protocol3msg4flat8FlatTreeEBJ_:bb.a
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsJo5RpJFzwk_14proc_macro_api.exit15 unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

.body13:                                          ; preds = %bb.m, %bb.j, %.body9
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body9 ], [ %i.n, %bb.m ], [ %i.k, %bb.j ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #15
          to label %.body17 unwind label %bb.x

bb.m:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body13

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsJo5RpJFzwk_14proc_macro_api.exit15: ; preds = %bb.k
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsJo5RpJFzwk_14proc_macro_api.exit15
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body17 unwind label %bb.p

bb.o:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsJo5RpJFzwk_14proc_macro_api.exit15
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsJo5RpJFzwk_14proc_macro_api.exit19 unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

.body17:                                          ; preds = %bb.q, %bb.n, %.body13
  %.pn4 = phi { ptr, i32 } [ %.pn2, %.body13 ], [ %i.s, %bb.q ], [ %i.p, %bb.n ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #15
          to label %.body21 unwind label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsJo5RpJFzwk_14proc_macro_api.exit19: ; preds = %bb.o
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsJo5RpJFzwk_14proc_macro_api.exit19
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body21 unwind label %bb.t

bb.s:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsJo5RpJFzwk_14proc_macro_api.exit19
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecmENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsJo5RpJFzwk_14proc_macro_api.exit23 unwind label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

.body21:                                          ; preds = %bb.u, %bb.r, %.body17
  %.pn6 = phi { ptr, i32 } [ %.pn4, %.body17 ], [ %i.x, %bb.u ], [ %i.u, %bb.r ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #15
          to label %common.resume unwind label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body21

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsJo5RpJFzwk_14proc_macro_api.exit23: ; preds = %bb.s
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsJo5RpJFzwk_14proc_macro_api.exit unwind label %bb.v

bb.v:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsJo5RpJFzwk_14proc_macro_api.exit23
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %.body21, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.v ], [ %.pn6, %.body21 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsJo5RpJFzwk_14proc_macro_api.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECsJo5RpJFzwk_14proc_macro_api.exit23
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
  ret void

bb.x:                                             ; preds = %.body21, %.body17, %.body13, %.body9, %.body
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs3_1__NtB5_10ParentSpanNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB2u_7flavors5SliceEEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 4 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !175 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %.promoted.i.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !184, !noalias !185 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !184, !noalias !185 ; 25 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.c = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i, %i.b
  br i1 %i.c, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %.promoted.i.i.i.i.i.i.i.i, align 1, !noalias !187, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.e, ptr %1, align 8, !alias.scope !188, !noalias !185
  %i.f = and i8 %i.d, 127
  %i.g = zext nneg i8 %i.f to i32                 ; 2 uses
  %i.h = icmp sgt i8 %i.d, -1
  br i1 %i.h, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.i = icmp eq ptr %i.e, %i.b
  br i1 %i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.e, align 1, !noalias !190, !noundef !6 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.k, ptr %1, align 8, !alias.scope !191, !noalias !185
  %i.l = and i8 %i.j, 127
  %i.m = zext nneg i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 7
  %i.o = or disjoint i32 %i.n, %i.g               ; 2 uses
  %i.p = icmp sgt i8 %i.j, -1
  br i1 %i.p, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.q = icmp eq ptr %i.k, %i.b
  br i1 %i.q, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i8, ptr %i.k, align 1, !noalias !193, !noundef !6 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.s, ptr %1, align 8, !alias.scope !194, !noalias !185
  %i.t = and i8 %i.r, 127
  %i.u = zext nneg i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 14
  %i.w = or disjoint i32 %i.v, %i.o               ; 2 uses
  %i.x = icmp sgt i8 %i.r, -1
  br i1 %i.x, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.y = icmp eq ptr %i.s, %i.b
  br i1 %i.y, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i8, ptr %i.s, align 1, !noalias !196, !noundef !6 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.aa, ptr %1, align 8, !alias.scope !197, !noalias !185
  %i.ab = and i8 %i.z, 127
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 21
  %i.ae = or disjoint i32 %i.ad, %i.w             ; 2 uses
  %i.af = icmp sgt i8 %i.z, -1
  br i1 %i.af, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.ag = icmp eq ptr %i.aa, %i.b
  br i1 %i.ag, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load i8, ptr %i.aa, align 1, !noalias !199, !noundef !6 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.ai, ptr %1, align 8, !alias.scope !200, !noalias !185
  %i.aj = zext i8 %i.ah to i32
  %i.ak = shl nuw i32 %i.aj, 28
  %i.al = or disjoint i32 %i.ak, %i.ae
  %or.cond35.not.i.i.i.i.i.i.i.i = icmp ult i8 %i.ah, 16
  br i1 %or.cond35.not.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.thread.i.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.e, %bb.c, %bb.a
  %.sroa.4.sroa.0.0.i.i.ph.i.i = phi i8 [ 5, %bb.j ], [ 4, %bb.g ], [ 4, %bb.a ], [ 4, %bb.e ], [ 4, %bb.c ], [ 4, %bb.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.sroa.0.0.i.i.ph.i.i, ptr %i.am, align 1, !alias.scope !201
  br label %_RINvXs3_NtNtCslX2I8TqP5TK_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs3_1__NtB2H_10ParentSpanNtB1x_11Deserialize11deserialize9___VisitorEB2L_.exit

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i: ; preds = %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.promoted.i.i.i.i.i.i61.i.i = phi ptr [ %i.ai, %bb.j ], [ %i.aa, %bb.h ], [ %i.s, %bb.f ], [ %i.k, %bb.d ], [ %i.e, %bb.b ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i.i.i = phi i32 [ %i.al, %bb.j ], [ %i.ae, %bb.h ], [ %i.w, %bb.f ], [ %i.o, %bb.d ], [ %i.g, %bb.b ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.an = icmp eq ptr %.promoted.i.i.i.i.i.i61.i.i, %i.b
  br i1 %i.an, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.thread.i.i, label %bb.k

bb.k:                                             ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i
  %i.ao = load i8, ptr %.promoted.i.i.i.i.i.i61.i.i, align 1, !noalias !207, !noundef !6 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i61.i.i, i64 1 ; 4 uses
  store ptr %i.ap, ptr %1, align 8, !alias.scope !208, !noalias !209
  %i.aq = and i8 %i.ao, 127
  %i.ar = zext nneg i8 %i.aq to i32               ; 2 uses
  %i.as = icmp sgt i8 %i.ao, -1
  br i1 %i.as, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.at = icmp eq ptr %i.ap, %i.b
  br i1 %i.at, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.thread.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load i8, ptr %i.ap, align 1, !noalias !211, !noundef !6 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i61.i.i, i64 2 ; 4 uses
  store ptr %i.av, ptr %1, align 8, !alias.scope !212, !noalias !209
  %i.aw = and i8 %i.au, 127
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 7
  %i.az = or disjoint i32 %i.ay, %i.ar            ; 2 uses
  %i.ba = icmp sgt i8 %i.au, -1
  br i1 %i.ba, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.bb = icmp eq ptr %i.av, %i.b
  br i1 %i.bb, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.thread.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = load i8, ptr %i.av, align 1, !noalias !214, !noundef !6 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i61.i.i, i64 3 ; 4 uses
  store ptr %i.bd, ptr %1, align 8, !alias.scope !215, !noalias !209
  %i.be = and i8 %i.bc, 127
  %i.bf = zext nneg i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 14
  %i.bh = or disjoint i32 %i.bg, %i.az            ; 2 uses
  %i.bi = icmp sgt i8 %i.bc, -1
  br i1 %i.bi, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.bj = icmp eq ptr %i.bd, %i.b
  br i1 %i.bj, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.thread.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = load i8, ptr %i.bd, align 1, !noalias !217, !noundef !6 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i61.i.i, i64 4 ; 4 uses
  store ptr %i.bl, ptr %1, align 8, !alias.scope !218, !noalias !209
  %i.bm = and i8 %i.bk, 127
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 21
  %i.bp = or disjoint i32 %i.bo, %i.bh            ; 2 uses
  %i.bq = icmp sgt i8 %i.bk, -1
  br i1 %i.bq, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.br = icmp eq ptr %i.bl, %i.b
  br i1 %i.br, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.thread.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = load i8, ptr %i.bl, align 1, !noalias !220, !noundef !6 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i61.i.i, i64 5 ; 2 uses
  store ptr %i.bt, ptr %1, align 8, !alias.scope !221, !noalias !209
  %i.bu = zext i8 %i.bs to i32
  %i.bv = shl nuw i32 %i.bu, 28
  %i.bw = or disjoint i32 %i.bv, %i.bp
  %or.cond35.not.i.i.i.i.i.i62.i.i = icmp ult i8 %i.bs, 16
  br i1 %or.cond35.not.i.i.i.i.i.i62.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.thread.i.i: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.l, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i
  %.sroa.4.sroa.0.0.i.i63.ph.i.i = phi i8 [ 5, %bb.s ], [ 4, %bb.p ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i ], [ 4, %bb.n ], [ 4, %bb.l ], [ 4, %bb.r ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.sroa.0.0.i.i63.ph.i.i, ptr %i.bx, align 1, !alias.scope !201
  br label %_RINvXs3_NtNtCslX2I8TqP5TK_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs3_1__NtB2H_10ParentSpanNtB1x_11Deserialize11deserialize9___VisitorEB2L_.exit

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i: ; preds = %bb.s, %bb.q, %bb.o, %bb.m, %bb.k
  %.promoted.i.i.i.i.i.i68.i.i = phi ptr [ %i.bt, %bb.s ], [ %i.bl, %bb.q ], [ %i.bd, %bb.o ], [ %i.av, %bb.m ], [ %i.ap, %bb.k ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i65.i.i = phi i32 [ %i.bw, %bb.s ], [ %i.bp, %bb.q ], [ %i.bh, %bb.o ], [ %i.az, %bb.m ], [ %i.ar, %bb.k ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.by = icmp eq ptr %.promoted.i.i.i.i.i.i68.i.i, %i.b
  br i1 %i.by, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.thread.i.i, label %bb.t

bb.t:                                             ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i
  %i.bz = load i8, ptr %.promoted.i.i.i.i.i.i68.i.i, align 1, !noalias !227, !noundef !6 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i68.i.i, i64 1 ; 4 uses
  store ptr %i.ca, ptr %1, align 8, !alias.scope !228, !noalias !229
  %i.cb = and i8 %i.bz, 127
  %i.cc = zext nneg i8 %i.cb to i32               ; 2 uses
  %i.cd = icmp sgt i8 %i.bz, -1
  br i1 %i.cd, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.ce = icmp eq ptr %i.ca, %i.b
  br i1 %i.ce, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.thread.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = load i8, ptr %i.ca, align 1, !noalias !231, !noundef !6 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i68.i.i, i64 2 ; 4 uses
  store ptr %i.cg, ptr %1, align 8, !alias.scope !232, !noalias !229
  %i.ch = and i8 %i.cf, 127
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 7
  %i.ck = or disjoint i32 %i.cj, %i.cc            ; 2 uses
  %i.cl = icmp sgt i8 %i.cf, -1
  br i1 %i.cl, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.cm = icmp eq ptr %i.cg, %i.b
  br i1 %i.cm, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.thread.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = load i8, ptr %i.cg, align 1, !noalias !234, !noundef !6 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i68.i.i, i64 3 ; 4 uses
  store ptr %i.co, ptr %1, align 8, !alias.scope !235, !noalias !229
  %i.cp = and i8 %i.cn, 127
  %i.cq = zext nneg i8 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 14
  %i.cs = or disjoint i32 %i.cr, %i.ck            ; 2 uses
  %i.ct = icmp sgt i8 %i.cn, -1
  br i1 %i.ct, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.cu = icmp eq ptr %i.co, %i.b
  br i1 %i.cu, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.thread.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cv = load i8, ptr %i.co, align 1, !noalias !237, !noundef !6 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i68.i.i, i64 4 ; 4 uses
  store ptr %i.cw, ptr %1, align 8, !alias.scope !238, !noalias !229
  %i.cx = and i8 %i.cv, 127
  %i.cy = zext nneg i8 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 21
  %i.da = or disjoint i32 %i.cz, %i.cs            ; 2 uses
  %i.db = icmp sgt i8 %i.cv, -1
  br i1 %i.db, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.dc = icmp eq ptr %i.cw, %i.b
  br i1 %i.dc, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.thread.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dd = load i8, ptr %i.cw, align 1, !noalias !240, !noundef !6 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i68.i.i, i64 5 ; 2 uses
  store ptr %i.de, ptr %1, align 8, !alias.scope !241, !noalias !229
  %i.df = zext i8 %i.dd to i32
  %i.dg = shl nuw i32 %i.df, 28
  %i.dh = or disjoint i32 %i.dg, %i.da
  %or.cond35.not.i.i.i.i.i.i69.i.i = icmp ult i8 %i.dd, 16
  br i1 %or.cond35.not.i.i.i.i.i.i69.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.thread.i.i: ; preds = %bb.ab, %bb.aa, %bb.y, %bb.w, %bb.u, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i
  %.sroa.4.sroa.0.0.i.i70.ph.i.i = phi i8 [ 5, %bb.ab ], [ 4, %bb.y ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i ], [ 4, %bb.w ], [ 4, %bb.u ], [ 4, %bb.aa ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.sroa.0.0.i.i70.ph.i.i, ptr %i.di, align 1, !alias.scope !201
  br label %_RINvXs3_NtNtCslX2I8TqP5TK_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs3_1__NtB2H_10ParentSpanNtB1x_11Deserialize11deserialize9___VisitorEB2L_.exit

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i: ; preds = %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t
  %.promoted.i.i.i.i.i.i75.i.i = phi ptr [ %i.de, %bb.ab ], [ %i.cw, %bb.z ], [ %i.co, %bb.x ], [ %i.cg, %bb.v ], [ %i.ca, %bb.t ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i72.i.i = phi i32 [ %i.dh, %bb.ab ], [ %i.da, %bb.z ], [ %i.cs, %bb.x ], [ %i.ck, %bb.v ], [ %i.cc, %bb.t ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.dj = icmp eq ptr %.promoted.i.i.i.i.i.i75.i.i, %i.b
  br i1 %i.dj, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i
  %i.dk = load i8, ptr %.promoted.i.i.i.i.i.i75.i.i, align 1, !noalias !247, !noundef !6 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i75.i.i, i64 1 ; 4 uses
  store ptr %i.dl, ptr %1, align 8, !alias.scope !248, !noalias !249
  %i.dm = and i8 %i.dk, 127
  %i.dn = zext nneg i8 %i.dm to i32               ; 2 uses
  %i.do = icmp sgt i8 %i.dk, -1
  br i1 %i.do, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.dp = icmp eq ptr %i.dl, %i.b
  br i1 %i.dp, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.thread.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dq = load i8, ptr %i.dl, align 1, !noalias !251, !noundef !6 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i75.i.i, i64 2 ; 4 uses
  store ptr %i.dr, ptr %1, align 8, !alias.scope !252, !noalias !249
  %i.ds = and i8 %i.dq, 127
  %i.dt = zext nneg i8 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 7
  %i.dv = or disjoint i32 %i.du, %i.dn            ; 2 uses
  %i.dw = icmp sgt i8 %i.dq, -1
  br i1 %i.dw, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.dx = icmp eq ptr %i.dr, %i.b
  br i1 %i.dx, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.thread.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dy = load i8, ptr %i.dr, align 1, !noalias !254, !noundef !6 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i75.i.i, i64 3 ; 4 uses
  store ptr %i.dz, ptr %1, align 8, !alias.scope !255, !noalias !249
  %i.ea = and i8 %i.dy, 127
  %i.eb = zext nneg i8 %i.ea to i32
  %i.ec = shl nuw nsw i32 %i.eb, 14
  %i.ed = or disjoint i32 %i.ec, %i.dv            ; 2 uses
  %i.ee = icmp sgt i8 %i.dy, -1
  br i1 %i.ee, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.ef = icmp eq ptr %i.dz, %i.b
  br i1 %i.ef, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.thread.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eg = load i8, ptr %i.dz, align 1, !noalias !257, !noundef !6 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i75.i.i, i64 4 ; 4 uses
  store ptr %i.eh, ptr %1, align 8, !alias.scope !258, !noalias !249
  %i.ei = and i8 %i.eg, 127
  %i.ej = zext nneg i8 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 21
  %i.el = or disjoint i32 %i.ek, %i.ed            ; 2 uses
  %i.em = icmp sgt i8 %i.eg, -1
  br i1 %i.em, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.en = icmp eq ptr %i.eh, %i.b
  br i1 %i.en, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eo = load i8, ptr %i.eh, align 1, !noalias !260, !noundef !6 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i75.i.i, i64 5 ; 2 uses
  store ptr %i.ep, ptr %1, align 8, !alias.scope !261, !noalias !249
  %i.eq = zext i8 %i.eo to i32
  %i.er = shl nuw i32 %i.eq, 28
  %i.es = or disjoint i32 %i.er, %i.el
  %or.cond35.not.i.i.i.i.i.i76.i.i = icmp ult i8 %i.eo, 16
  br i1 %or.cond35.not.i.i.i.i.i.i76.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.thread.i.i: ; preds = %bb.ak, %bb.aj, %bb.ah, %bb.af, %bb.ad, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i
  %.sroa.4.sroa.0.0.i.i77.ph.i.i = phi i8 [ 5, %bb.ak ], [ 4, %bb.ah ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i ], [ 4, %bb.af ], [ 4, %bb.ad ], [ 4, %bb.aj ]
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.sroa.0.0.i.i77.ph.i.i, ptr %i.et, align 1, !alias.scope !201
  br label %_RINvXs3_NtNtCslX2I8TqP5TK_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs3_1__NtB2H_10ParentSpanNtB1x_11Deserialize11deserialize9___VisitorEB2L_.exit

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i: ; preds = %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac
  %.promoted.i.i.i.i.i.i82.i.i = phi ptr [ %i.ep, %bb.ak ], [ %i.eh, %bb.ai ], [ %i.dz, %bb.ag ], [ %i.dr, %bb.ae ], [ %i.dl, %bb.ac ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i79.i.i = phi i32 [ %i.es, %bb.ak ], [ %i.el, %bb.ai ], [ %i.ed, %bb.ag ], [ %i.dv, %bb.ae ], [ %i.dn, %bb.ac ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.eu = icmp eq ptr %.promoted.i.i.i.i.i.i82.i.i, %i.b
  br i1 %i.eu, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.thread.i.i, label %bb.al

bb.al:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i
  %i.ev = load i8, ptr %.promoted.i.i.i.i.i.i82.i.i, align 1, !noalias !267, !noundef !6 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i82.i.i, i64 1 ; 3 uses
  store ptr %i.ew, ptr %1, align 8, !alias.scope !268, !noalias !269
  %i.ex = and i8 %i.ev, 127
  %i.ey = zext nneg i8 %i.ex to i32               ; 2 uses
  %i.ez = icmp sgt i8 %i.ev, -1
  br i1 %i.ez, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.fa = icmp eq ptr %i.ew, %i.b
  br i1 %i.fa, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.thread.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fb = load i8, ptr %i.ew, align 1, !noalias !271, !noundef !6 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i82.i.i, i64 2 ; 3 uses
  store ptr %i.fc, ptr %1, align 8, !alias.scope !272, !noalias !269
  %i.fd = and i8 %i.fb, 127
  %i.fe = zext nneg i8 %i.fd to i32
  %i.ff = shl nuw nsw i32 %i.fe, 7
  %i.fg = or disjoint i32 %i.ff, %i.ey            ; 2 uses
  %i.fh = icmp sgt i8 %i.fb, -1
  br i1 %i.fh, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.fi = icmp eq ptr %i.fc, %i.b
  br i1 %i.fi, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.thread.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fj = load i8, ptr %i.fc, align 1, !noalias !274, !noundef !6 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i82.i.i, i64 3 ; 3 uses
  store ptr %i.fk, ptr %1, align 8, !alias.scope !275, !noalias !269
  %i.fl = and i8 %i.fj, 127
  %i.fm = zext nneg i8 %i.fl to i32
  %i.fn = shl nuw nsw i32 %i.fm, 14
  %i.fo = or disjoint i32 %i.fn, %i.fg            ; 2 uses
  %i.fp = icmp sgt i8 %i.fj, -1
  br i1 %i.fp, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.fq = icmp eq ptr %i.fk, %i.b
  br i1 %i.fq, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.thread.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fr = load i8, ptr %i.fk, align 1, !noalias !277, !noundef !6 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i82.i.i, i64 4 ; 3 uses
  store ptr %i.fs, ptr %1, align 8, !alias.scope !278, !noalias !269
  %i.ft = and i8 %i.fr, 127
  %i.fu = zext nneg i8 %i.ft to i32
  %i.fv = shl nuw nsw i32 %i.fu, 21
  %i.fw = or disjoint i32 %i.fv, %i.fo            ; 2 uses
  %i.fx = icmp sgt i8 %i.fr, -1
  br i1 %i.fx, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.fy = icmp eq ptr %i.fs, %i.b
  br i1 %i.fy, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.thread.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fz = load i8, ptr %i.fs, align 1, !noalias !280, !noundef !6 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i82.i.i, i64 5
  store ptr %i.ga, ptr %1, align 8, !alias.scope !281, !noalias !269
  %i.gb = zext i8 %i.fz to i32
  %i.gc = shl nuw i32 %i.gb, 28
  %i.gd = or disjoint i32 %i.gc, %i.fw
  %or.cond35.not.i.i.i.i.i.i83.i.i = icmp ult i8 %i.fz, 16
  br i1 %or.cond35.not.i.i.i.i.i.i83.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.thread.i.i: ; preds = %bb.at, %bb.as, %bb.aq, %bb.ao, %bb.am, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i
  %.sroa.4.sroa.0.0.i.i84.ph.i.i = phi i8 [ 5, %bb.at ], [ 4, %bb.aq ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i ], [ 4, %bb.ao ], [ 4, %bb.am ], [ 4, %bb.as ]
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.sroa.0.0.i.i84.ph.i.i, ptr %i.ge, align 1, !alias.scope !201
  br label %_RINvXs3_NtNtCslX2I8TqP5TK_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs3_1__NtB2H_10ParentSpanNtB1x_11Deserialize11deserialize9___VisitorEB2L_.exit

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.i.i: ; preds = %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.al
  %.lcssa34.i.i.i.i.i.i86.i.i = phi i32 [ %i.gd, %bb.at ], [ %i.fw, %bb.ar ], [ %i.fo, %bb.ap ], [ %i.fg, %bb.an ], [ %i.ey, %bb.al ]
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.lcssa34.i.i.i.i.i.i.i.i, ptr %i.gf, align 4, !alias.scope !201
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.lcssa34.i.i.i.i.i.i65.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !201
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.lcssa34.i.i.i.i.i.i72.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !alias.scope !201
  %.sroa.649.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.lcssa34.i.i.i.i.i.i79.i.i, ptr %.sroa.649.0..sroa_idx.i.i, align 4, !alias.scope !201
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.lcssa34.i.i.i.i.i.i86.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !alias.scope !201
  br label %_RINvXs3_NtNtCslX2I8TqP5TK_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs3_1__NtB2H_10ParentSpanNtB1x_11Deserialize11deserialize9___VisitorEB2L_.exit

_RINvXs3_NtNtCslX2I8TqP5TK_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs3_1__NtB2H_10ParentSpanNtB1x_11Deserialize11deserialize9___VisitorEB2L_.exit: ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.thread.i.i, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.thread.i.i, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.thread.i.i, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.thread.i.i, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.thread.i.i, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.i.i
  %.sink.i.i = phi i8 [ 1, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.thread.i.i ], [ 1, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.thread.i.i ], [ 1, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.thread.i.i ], [ 1, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.thread.i.i ], [ 1, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.thread.i.i ], [ 0, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.i.i ]
  store i8 %.sink.i.i, ptr %0, align 4, !alias.scope !201
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs5_1__NtB5_8SpanJoinNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB2r_7flavors5SliceEEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([20 x i8]) align 4 captures(none) dereferenceable(20) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !376 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %.promoted.i.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !385, !noalias !386 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !385, !noalias !386 ; 20 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.c = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i, %i.b
  br i1 %i.c, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %.promoted.i.i.i.i.i.i.i.i, align 1, !noalias !388, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.e, ptr %1, align 8, !alias.scope !389, !noalias !386
  %i.f = and i8 %i.d, 127
  %i.g = zext nneg i8 %i.f to i32                 ; 2 uses
  %i.h = icmp sgt i8 %i.d, -1
  br i1 %i.h, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.i = icmp eq ptr %i.e, %i.b
  br i1 %i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.e, align 1, !noalias !391, !noundef !6 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.k, ptr %1, align 8, !alias.scope !392, !noalias !386
  %i.l = and i8 %i.j, 127
  %i.m = zext nneg i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 7
  %i.o = or disjoint i32 %i.n, %i.g               ; 2 uses
  %i.p = icmp sgt i8 %i.j, -1
  br i1 %i.p, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.q = icmp eq ptr %i.k, %i.b
  br i1 %i.q, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i8, ptr %i.k, align 1, !noalias !394, !noundef !6 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.s, ptr %1, align 8, !alias.scope !395, !noalias !386
  %i.t = and i8 %i.r, 127
  %i.u = zext nneg i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 14
  %i.w = or disjoint i32 %i.v, %i.o               ; 2 uses
  %i.x = icmp sgt i8 %i.r, -1
  br i1 %i.x, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.y = icmp eq ptr %i.s, %i.b
  br i1 %i.y, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i8, ptr %i.s, align 1, !noalias !397, !noundef !6 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.aa, ptr %1, align 8, !alias.scope !398, !noalias !386
  %i.ab = and i8 %i.z, 127
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 21
  %i.ae = or disjoint i32 %i.ad, %i.w             ; 2 uses
  %i.af = icmp sgt i8 %i.z, -1
  br i1 %i.af, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.ag = icmp eq ptr %i.aa, %i.b
  br i1 %i.ag, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load i8, ptr %i.aa, align 1, !noalias !400, !noundef !6 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.ai, ptr %1, align 8, !alias.scope !401, !noalias !386
  %i.aj = zext i8 %i.ah to i32
  %i.ak = shl nuw i32 %i.aj, 28
  %i.al = or disjoint i32 %i.ak, %i.ae
  %or.cond35.not.i.i.i.i.i.i.i.i = icmp ult i8 %i.ah, 16
  br i1 %or.cond35.not.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.thread.i.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.e, %bb.c, %bb.a
  %.sroa.4.sroa.0.0.i.i.ph.i.i = phi i8 [ 5, %bb.j ], [ 4, %bb.g ], [ 4, %bb.a ], [ 4, %bb.e ], [ 4, %bb.c ], [ 4, %bb.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.sroa.0.0.i.i.ph.i.i, ptr %i.am, align 1, !alias.scope !402
  br label %_RINvXs3_NtNtCslX2I8TqP5TK_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs5_1__NtB2H_8SpanJoinNtB1x_11Deserialize11deserialize9___VisitorEB2L_.exit

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i: ; preds = %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.promoted.i.i.i.i.i.i49.i.i = phi ptr [ %i.ai, %bb.j ], [ %i.aa, %bb.h ], [ %i.s, %bb.f ], [ %i.k, %bb.d ], [ %i.e, %bb.b ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i.i.i = phi i32 [ %i.al, %bb.j ], [ %i.ae, %bb.h ], [ %i.w, %bb.f ], [ %i.o, %bb.d ], [ %i.g, %bb.b ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.an = icmp eq ptr %.promoted.i.i.i.i.i.i49.i.i, %i.b
  br i1 %i.an, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.thread.i.i, label %bb.k

bb.k:                                             ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i
  %i.ao = load i8, ptr %.promoted.i.i.i.i.i.i49.i.i, align 1, !noalias !408, !noundef !6 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i49.i.i, i64 1 ; 4 uses
  store ptr %i.ap, ptr %1, align 8, !alias.scope !409, !noalias !410
  %i.aq = and i8 %i.ao, 127
  %i.ar = zext nneg i8 %i.aq to i32               ; 2 uses
  %i.as = icmp sgt i8 %i.ao, -1
  br i1 %i.as, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.at = icmp eq ptr %i.ap, %i.b
  br i1 %i.at, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.thread.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load i8, ptr %i.ap, align 1, !noalias !412, !noundef !6 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i49.i.i, i64 2 ; 4 uses
  store ptr %i.av, ptr %1, align 8, !alias.scope !413, !noalias !410
  %i.aw = and i8 %i.au, 127
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 7
  %i.az = or disjoint i32 %i.ay, %i.ar            ; 2 uses
  %i.ba = icmp sgt i8 %i.au, -1
  br i1 %i.ba, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.bb = icmp eq ptr %i.av, %i.b
  br i1 %i.bb, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.thread.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = load i8, ptr %i.av, align 1, !noalias !415, !noundef !6 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i49.i.i, i64 3 ; 4 uses
  store ptr %i.bd, ptr %1, align 8, !alias.scope !416, !noalias !410
  %i.be = and i8 %i.bc, 127
  %i.bf = zext nneg i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 14
  %i.bh = or disjoint i32 %i.bg, %i.az            ; 2 uses
  %i.bi = icmp sgt i8 %i.bc, -1
  br i1 %i.bi, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.bj = icmp eq ptr %i.bd, %i.b
  br i1 %i.bj, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.thread.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = load i8, ptr %i.bd, align 1, !noalias !418, !noundef !6 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i49.i.i, i64 4 ; 4 uses
  store ptr %i.bl, ptr %1, align 8, !alias.scope !419, !noalias !410
  %i.bm = and i8 %i.bk, 127
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 21
  %i.bp = or disjoint i32 %i.bo, %i.bh            ; 2 uses
  %i.bq = icmp sgt i8 %i.bk, -1
  br i1 %i.bq, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.br = icmp eq ptr %i.bl, %i.b
  br i1 %i.br, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.thread.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = load i8, ptr %i.bl, align 1, !noalias !421, !noundef !6 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i49.i.i, i64 5 ; 2 uses
  store ptr %i.bt, ptr %1, align 8, !alias.scope !422, !noalias !410
  %i.bu = zext i8 %i.bs to i32
  %i.bv = shl nuw i32 %i.bu, 28
  %i.bw = or disjoint i32 %i.bv, %i.bp
  %or.cond35.not.i.i.i.i.i.i50.i.i = icmp ult i8 %i.bs, 16
  br i1 %or.cond35.not.i.i.i.i.i.i50.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.thread.i.i: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.l, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i
  %.sroa.4.sroa.0.0.i.i51.ph.i.i = phi i8 [ 5, %bb.s ], [ 4, %bb.p ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i ], [ 4, %bb.n ], [ 4, %bb.l ], [ 4, %bb.r ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.sroa.0.0.i.i51.ph.i.i, ptr %i.bx, align 1, !alias.scope !402
  br label %_RINvXs3_NtNtCslX2I8TqP5TK_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs5_1__NtB2H_8SpanJoinNtB1x_11Deserialize11deserialize9___VisitorEB2L_.exit

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i: ; preds = %bb.s, %bb.q, %bb.o, %bb.m, %bb.k
  %.promoted.i.i.i.i.i.i56.i.i = phi ptr [ %i.bt, %bb.s ], [ %i.bl, %bb.q ], [ %i.bd, %bb.o ], [ %i.av, %bb.m ], [ %i.ap, %bb.k ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i53.i.i = phi i32 [ %i.bw, %bb.s ], [ %i.bp, %bb.q ], [ %i.bh, %bb.o ], [ %i.az, %bb.m ], [ %i.ar, %bb.k ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.by = icmp eq ptr %.promoted.i.i.i.i.i.i56.i.i, %i.b
  br i1 %i.by, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.thread.i.i, label %bb.t

bb.t:                                             ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i
  %i.bz = load i8, ptr %.promoted.i.i.i.i.i.i56.i.i, align 1, !noalias !428, !noundef !6 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i56.i.i, i64 1 ; 4 uses
  store ptr %i.ca, ptr %1, align 8, !alias.scope !429, !noalias !430
  %i.cb = and i8 %i.bz, 127
  %i.cc = zext nneg i8 %i.cb to i32               ; 2 uses
  %i.cd = icmp sgt i8 %i.bz, -1
  br i1 %i.cd, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %i.ce = icmp eq ptr %i.ca, %i.b
  br i1 %i.ce, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.thread.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = load i8, ptr %i.ca, align 1, !noalias !432, !noundef !6 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i56.i.i, i64 2 ; 4 uses
  store ptr %i.cg, ptr %1, align 8, !alias.scope !433, !noalias !430
  %i.ch = and i8 %i.cf, 127
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 7
  %i.ck = or disjoint i32 %i.cj, %i.cc            ; 2 uses
  %i.cl = icmp sgt i8 %i.cf, -1
  br i1 %i.cl, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.cm = icmp eq ptr %i.cg, %i.b
  br i1 %i.cm, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.thread.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = load i8, ptr %i.cg, align 1, !noalias !435, !noundef !6 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i56.i.i, i64 3 ; 4 uses
  store ptr %i.co, ptr %1, align 8, !alias.scope !436, !noalias !430
  %i.cp = and i8 %i.cn, 127
  %i.cq = zext nneg i8 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 14
  %i.cs = or disjoint i32 %i.cr, %i.ck            ; 2 uses
  %i.ct = icmp sgt i8 %i.cn, -1
  br i1 %i.ct, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.cu = icmp eq ptr %i.co, %i.b
  br i1 %i.cu, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.thread.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cv = load i8, ptr %i.co, align 1, !noalias !438, !noundef !6 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i56.i.i, i64 4 ; 4 uses
  store ptr %i.cw, ptr %1, align 8, !alias.scope !439, !noalias !430
  %i.cx = and i8 %i.cv, 127
  %i.cy = zext nneg i8 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 21
  %i.da = or disjoint i32 %i.cz, %i.cs            ; 2 uses
  %i.db = icmp sgt i8 %i.cv, -1
  br i1 %i.db, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.dc = icmp eq ptr %i.cw, %i.b
  br i1 %i.dc, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.thread.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dd = load i8, ptr %i.cw, align 1, !noalias !441, !noundef !6 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i56.i.i, i64 5 ; 2 uses
  store ptr %i.de, ptr %1, align 8, !alias.scope !442, !noalias !430
  %i.df = zext i8 %i.dd to i32
  %i.dg = shl nuw i32 %i.df, 28
  %i.dh = or disjoint i32 %i.dg, %i.da
  %or.cond35.not.i.i.i.i.i.i57.i.i = icmp ult i8 %i.dd, 16
  br i1 %or.cond35.not.i.i.i.i.i.i57.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.thread.i.i: ; preds = %bb.ab, %bb.aa, %bb.y, %bb.w, %bb.u, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i
  %.sroa.4.sroa.0.0.i.i58.ph.i.i = phi i8 [ 5, %bb.ab ], [ 4, %bb.y ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i ], [ 4, %bb.w ], [ 4, %bb.u ], [ 4, %bb.aa ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.sroa.0.0.i.i58.ph.i.i, ptr %i.di, align 1, !alias.scope !402
  br label %_RINvXs3_NtNtCslX2I8TqP5TK_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs5_1__NtB2H_8SpanJoinNtB1x_11Deserialize11deserialize9___VisitorEB2L_.exit

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i: ; preds = %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t
  %.promoted.i.i.i.i.i.i63.i.i = phi ptr [ %i.de, %bb.ab ], [ %i.cw, %bb.z ], [ %i.co, %bb.x ], [ %i.cg, %bb.v ], [ %i.ca, %bb.t ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i60.i.i = phi i32 [ %i.dh, %bb.ab ], [ %i.da, %bb.z ], [ %i.cs, %bb.x ], [ %i.ck, %bb.v ], [ %i.cc, %bb.t ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %i.dj = icmp eq ptr %.promoted.i.i.i.i.i.i63.i.i, %i.b
  br i1 %i.dj, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit68.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i
  %i.dk = load i8, ptr %.promoted.i.i.i.i.i.i63.i.i, align 1, !noalias !448, !noundef !6 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i63.i.i, i64 1 ; 3 uses
  store ptr %i.dl, ptr %1, align 8, !alias.scope !449, !noalias !450
  %i.dm = and i8 %i.dk, 127
  %i.dn = zext nneg i8 %i.dm to i32               ; 2 uses
  %i.do = icmp sgt i8 %i.dk, -1
  br i1 %i.do, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit68.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.dp = icmp eq ptr %i.dl, %i.b
  br i1 %i.dp, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit68.thread.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dq = load i8, ptr %i.dl, align 1, !noalias !452, !noundef !6 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i63.i.i, i64 2 ; 3 uses
  store ptr %i.dr, ptr %1, align 8, !alias.scope !453, !noalias !450
  %i.ds = and i8 %i.dq, 127
  %i.dt = zext nneg i8 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 7
  %i.dv = or disjoint i32 %i.du, %i.dn            ; 2 uses
  %i.dw = icmp sgt i8 %i.dq, -1
  br i1 %i.dw, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit68.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.dx = icmp eq ptr %i.dr, %i.b
  br i1 %i.dx, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit68.thread.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dy = load i8, ptr %i.dr, align 1, !noalias !455, !noundef !6 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i63.i.i, i64 3 ; 3 uses
  store ptr %i.dz, ptr %1, align 8, !alias.scope !456, !noalias !450
  %i.ea = and i8 %i.dy, 127
  %i.eb = zext nneg i8 %i.ea to i32
  %i.ec = shl nuw nsw i32 %i.eb, 14
  %i.ed = or disjoint i32 %i.ec, %i.dv            ; 2 uses
  %i.ee = icmp sgt i8 %i.dy, -1
  br i1 %i.ee, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit68.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.ef = icmp eq ptr %i.dz, %i.b
  br i1 %i.ef, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit68.thread.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eg = load i8, ptr %i.dz, align 1, !noalias !458, !noundef !6 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i63.i.i, i64 4 ; 3 uses
  store ptr %i.eh, ptr %1, align 8, !alias.scope !459, !noalias !450
  %i.ei = and i8 %i.eg, 127
  %i.ej = zext nneg i8 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 21
  %i.el = or disjoint i32 %i.ek, %i.ed            ; 2 uses
  %i.em = icmp sgt i8 %i.eg, -1
  br i1 %i.em, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit68.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %i.en = icmp eq ptr %i.eh, %i.b
  br i1 %i.en, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit68.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eo = load i8, ptr %i.eh, align 1, !noalias !461, !noundef !6 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i63.i.i, i64 5
  store ptr %i.ep, ptr %1, align 8, !alias.scope !462, !noalias !450
  %i.eq = zext i8 %i.eo to i32
  %i.er = shl nuw i32 %i.eq, 28
  %i.es = or disjoint i32 %i.er, %i.el
  %or.cond35.not.i.i.i.i.i.i64.i.i = icmp ult i8 %i.eo, 16
  br i1 %or.cond35.not.i.i.i.i.i.i64.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit68.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit68.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit68.thread.i.i: ; preds = %bb.ak, %bb.aj, %bb.ah, %bb.af, %bb.ad, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i
  %.sroa.4.sroa.0.0.i.i65.ph.i.i = phi i8 [ 5, %bb.ak ], [ 4, %bb.ah ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i ], [ 4, %bb.af ], [ 4, %bb.ad ], [ 4, %bb.aj ]
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.sroa.0.0.i.i65.ph.i.i, ptr %i.et, align 1, !alias.scope !402
  br label %_RINvXs3_NtNtCslX2I8TqP5TK_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs5_1__NtB2H_8SpanJoinNtB1x_11Deserialize11deserialize9___VisitorEB2L_.exit

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit68.i.i: ; preds = %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac
  %.lcssa34.i.i.i.i.i.i67.i.i = phi i32 [ %i.es, %bb.ak ], [ %i.el, %bb.ai ], [ %i.ed, %bb.ag ], [ %i.dv, %bb.ae ], [ %i.dn, %bb.ac ]
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.lcssa34.i.i.i.i.i.i.i.i, ptr %i.eu, align 4, !alias.scope !402
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.lcssa34.i.i.i.i.i.i53.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !402
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.lcssa34.i.i.i.i.i.i60.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !alias.scope !402
  %.sroa.639.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.lcssa34.i.i.i.i.i.i67.i.i, ptr %.sroa.639.0..sroa_idx.i.i, align 4, !alias.scope !402
  br label %_RINvXs3_NtNtCslX2I8TqP5TK_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs5_1__NtB2H_8SpanJoinNtB1x_11Deserialize11deserialize9___VisitorEB2L_.exit

_RINvXs3_NtNtCslX2I8TqP5TK_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs5_1__NtB2H_8SpanJoinNtB1x_11Deserialize11deserialize9___VisitorEB2L_.exit: ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.thread.i.i, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.thread.i.i, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.thread.i.i, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit68.thread.i.i, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit68.i.i
  %.sink.i.i = phi i8 [ 1, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.thread.i.i ], [ 1, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.thread.i.i ], [ 1, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit68.thread.i.i ], [ 1, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.thread.i.i ], [ 0, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit68.i.i ]
  store i8 %.sink.i.i, ptr %0, align 4, !alias.scope !402
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 16) i8 @_RINvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs6_1__NtB5_20BidirectionalMessageNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeQINtNtNtCslX2I8TqP5TK_8postcard3ser10serializer10SerializerINtNtB2z_7flavors4CobsNtNtB3t_9alloc_vec8AllocVecEEEB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1031 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 14 uses
  %i.b = alloca [5 x i8], align 1                 ; 9 uses
  %i.c = alloca [5 x i8], align 1                 ; 9 uses
  %i.d = alloca [5 x i8], align 1                 ; 9 uses
  %i.e = alloca [5 x i8], align 1                 ; 9 uses
  %i.f = alloca [5 x i8], align 1                 ; 9 uses
  %i.g = alloca [5 x i8], align 1                 ; 9 uses
  %i.h = alloca [5 x i8], align 1                 ; 9 uses
  %i.i = alloca [5 x i8], align 1                 ; 9 uses
  %i.j = alloca [5 x i8], align 1                 ; 9 uses
  %i.k = alloca [5 x i8], align 1                 ; 9 uses
  %i.l = alloca [5 x i8], align 1                 ; 9 uses
  %i.m = alloca [5 x i8], align 1                 ; 9 uses
  %i.n = alloca [5 x i8], align 1                 ; 9 uses
  %i.o = alloca [5 x i8], align 1                 ; 9 uses
  %i.p = alloca [5 x i8], align 1                 ; 9 uses
  %i.q = alloca [5 x i8], align 1                 ; 9 uses
  %i.r = alloca [10 x i8], align 1                ; 14 uses
  %i.s = alloca [5 x i8], align 1                 ; 5 uses
  %i.t = alloca [5 x i8], align 1                 ; 5 uses
  %i.u = alloca [5 x i8], align 1                 ; 5 uses
  %i.v = alloca [5 x i8], align 1                 ; 5 uses
  %i.w = alloca [5 x i8], align 1                 ; 5 uses
  %i.x = alloca [5 x i8], align 1                 ; 5 uses
  %i.y = alloca [5 x i8], align 1                 ; 5 uses
  %i.z = alloca [5 x i8], align 1                 ; 5 uses
  %i.aa = alloca [5 x i8], align 1                ; 5 uses
  %i.ab = alloca [5 x i8], align 1                ; 5 uses
  %i.ac = alloca [5 x i8], align 1                ; 9 uses
  %i.ad = alloca [5 x i8], align 1                ; 9 uses
  %i.ae = alloca [5 x i8], align 1                ; 9 uses
  %i.af = alloca [5 x i8], align 1                ; 9 uses
  %i.ag = alloca [5 x i8], align 1                ; 9 uses
  %i.ah = alloca [5 x i8], align 1                ; 9 uses
  %i.ai = alloca [5 x i8], align 1                ; 9 uses
  %i.aj = alloca [5 x i8], align 1                ; 9 uses
  %i.ak = alloca [5 x i8], align 1                ; 9 uses
  %i.al = alloca [5 x i8], align 1                ; 9 uses
  %i.am = alloca [5 x i8], align 1                ; 9 uses
  %i.an = alloca [5 x i8], align 1                ; 9 uses
  %i.ao = alloca [5 x i8], align 1                ; 9 uses
  %i.ap = alloca [5 x i8], align 1                ; 9 uses
  %i.aq = alloca [5 x i8], align 1                ; 9 uses
  %i.ar = alloca [5 x i8], align 1                ; 9 uses
  %i.as = alloca [5 x i8], align 1                ; 9 uses
  %i.at = alloca [5 x i8], align 1                ; 9 uses
  %i.au = alloca [5 x i8], align 1                ; 9 uses
  %i.av = alloca [5 x i8], align 1                ; 9 uses
  %i.aw = alloca [5 x i8], align 1                ; 9 uses
  %i.ax = alloca [5 x i8], align 1                ; 9 uses
  %i.ay = alloca [5 x i8], align 1                ; 9 uses
  %i.az = alloca [5 x i8], align 1                ; 9 uses
  %i.ba = alloca [5 x i8], align 1                ; 9 uses
  %i.bb = alloca [5 x i8], align 1                ; 9 uses
  %i.bc = alloca [5 x i8], align 1                ; 9 uses
  %i.bd = alloca [5 x i8], align 1                ; 9 uses
  %i.be = alloca [5 x i8], align 1                ; 9 uses
  %i.bf = alloca [5 x i8], align 1                ; 9 uses
  %i.bg = alloca [5 x i8], align 1                ; 9 uses
  %i.bh = alloca [5 x i8], align 1                ; 9 uses
  %i.bi = alloca [5 x i8], align 1                ; 5 uses
  %i.bj = alloca [5 x i8], align 1                ; 5 uses
  %i.bk = alloca [5 x i8], align 1                ; 5 uses
  %i.bl = alloca [5 x i8], align 1                ; 5 uses
  %i.bm = alloca [5 x i8], align 1                ; 5 uses
  %i.bn = alloca [5 x i8], align 1                ; 5 uses
  %i.bo = alloca [5 x i8], align 1                ; 5 uses
  %i.bp = alloca [5 x i8], align 1                ; 5 uses
  %i.bq = alloca [5 x i8], align 1                ; 5 uses
  %i.br = alloca [5 x i8], align 1                ; 5 uses
  %i.bs = alloca [5 x i8], align 1                ; 5 uses
  %i.bt = alloca [5 x i8], align 1                ; 9 uses
  %i.bu = alloca [5 x i8], align 1                ; 5 uses
  %i.bv = alloca [5 x i8], align 1                ; 4 uses
  %i.bw = alloca [5 x i8], align 1                ; 5 uses
  %i.bx = alloca [5 x i8], align 1                ; 5 uses
  %i.by = alloca [5 x i8], align 1                ; 5 uses
  %i.bz = alloca [10 x i8], align 1               ; 14 uses
  %i.ca = alloca [10 x i8], align 1               ; 14 uses
  %i.cb = alloca [10 x i8], align 1               ; 14 uses
  %i.cc = alloca [10 x i8], align 1               ; 14 uses
  %i.cd = alloca [5 x i8], align 1                ; 5 uses
  %i.ce = alloca [5 x i8], align 1                ; 4 uses
  %i.cf = alloca [5 x i8], align 1                ; 4 uses
  %i.cg = load i64, ptr %0, align 8, !range !7, !noundef !6 ; 3 uses
  %i.ch = icmp ne i64 %i.cg, -9223372036854775804
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = add i64 %i.cg, 9223372036854775805      ; 2 uses
  %i.cj = icmp ult i64 %i.ci, 4
  %i.ck = select i1 %i.cj, i64 %i.ci, i64 1
  switch i64 %i.ck, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.bg
    i64 2, label %bb.bp
    i64 3, label %bb.gw
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !1034
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.cf, i8 0, i64 5, i1 false), !noalias !1034
  call fastcc void @_RNvYINtNtNtCslX2I8TqP5TK_8postcard3ser7flavors4CobsNtNtB5_9alloc_vec8AllocVecENtB5_6Flavor10try_extendCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef 1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !1034
  call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  %i.cm = load i64, ptr %i.cl, align 8, !range !9, !alias.scope !1037, !noundef !6 ; 2 uses
  %i.cn = icmp slt i64 %i.cm, 0
  %i.co = add i64 %i.cm, -9223372036854775807
  %i.cp = select i1 %i.cn, i64 %i.co, i64 0
  switch i64 %i.cp, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.be
    i64 3, label %bb.bf
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !1038
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ce, i8 0, i64 5, i1 false), !noalias !1038
  call fastcc void @_RNvYINtNtNtCslX2I8TqP5TK_8postcard3ser7flavors4CobsNtNtB5_9alloc_vec8AllocVecENtB5_6Flavor10try_extendCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef 1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !1038
  %i.cq = call noundef range(i8 -1, 16) i8 @_RINvXs0_NtCs9p4rgIae0RV_6camino11serde_implsNtB8_11Utf8PathBufNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeQINtNtNtCslX2I8TqP5TK_8postcard3ser10serializer10SerializerINtNtB1W_7flavors4CobsNtNtB2Q_9alloc_vec8AllocVecEEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cl, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  br label %_RINvXs_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB5_10SerializerINtNtB7_7flavors4CobsNtNtB18_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer25serialize_newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB3a_.exit

bb.f:                                             ; preds = %bb.c
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.cr, align 8, !alias.scope !1037 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !1040
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store i32 0, ptr %i.cs, align 1, !noalias !1040
  store i8 1, ptr %i.cd, align 1, !alias.scope !1041, !noalias !1040
  call fastcc void @_RNvYINtNtNtCslX2I8TqP5TK_8postcard3ser7flavors4CobsNtNtB5_9alloc_vec8AllocVecENtB5_6Flavor10try_extendCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cd, i64 noundef 1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !1040
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  %i.ct = call noundef range(i8 -1, 16) i8 @_RINvXs0_NtCs9p4rgIae0RV_6camino11serde_implsNtB8_11Utf8PathBufNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeQINtNtNtCslX2I8TqP5TK_8postcard3ser10serializer10SerializerINtNtB1W_7flavors4CobsNtNtB2Q_9alloc_vec8AllocVecEEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(432) %.val.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !noalias !1037 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.ct, -1
  br i1 %.not.i.i.i.i.i, label %bb.g, label %_RINvXs_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB5_10SerializerINtNtB7_7flavors4CobsNtNtB18_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer25serialize_newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB3a_.exit

bb.g:                                             ; preds = %bb.f
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.cv = call noundef range(i8 -1, 16) i8 @_RINvYQINtNtNtCslX2I8TqP5TK_8postcard3ser10serializer10SerializerINtNtB9_7flavors4CobsNtNtB13_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer11collect_seqRINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtB2R_6string6StringB3k_EEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu), !noalias !1037 ; 2 uses
  %.not16.i.i.i.i.i = icmp eq i8 %i.cv, -1
  br i1 %.not16.i.i.i.i.i, label %bb.h, label %_RINvXs_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB5_10SerializerINtNtB7_7flavors4CobsNtNtB18_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer25serialize_newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB3a_.exit

bb.h:                                             ; preds = %bb.g
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 408
  call fastcc void @_RINvXs3_NtNtCsjQbM3MYDIrM_10serde_core3ser5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringENtB8_9Serialize9serializeQINtNtNtCslX2I8TqP5TK_8postcard3ser10serializer10SerializerINtNtB2u_7flavors4CobsNtNtB3o_9alloc_vec8AllocVecEEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cw, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1) #17
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  %i.cy = call noundef range(i8 -1, 16) i8 @_RINvXNvNtNtNtCsJo5RpJFzwk_14proc_macro_api15legacy_protocol3msg4flat1__NtB5_8FlatTreeNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeQINtNtNtCslX2I8TqP5TK_8postcard3ser10serializer10SerializerINtNtB2j_7flavors4CobsNtNtB3d_9alloc_vec8AllocVecEEEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %i.cx, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !noalias !1037 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cy, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %_RINvXs_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB5_10SerializerINtNtB7_7flavors4CobsNtNtB18_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer25serialize_newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB3a_.exit

bb.i:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@_RINvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs6_1__NtB5_20BidirectionalMessageNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeQINtNtNtCslX2I8TqP5TK_8postcard3ser10serializer10SerializerINtNtB2z_7flavors4CobsNtNtB3t_9alloc_vec8AllocVecEEEB9_:bb.a
  %i.axp = icmp ult i64 %.val103.i.i, 128
  br i1 %i.axp, label %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECsJo5RpJFzwk_14proc_macro_api.exit189.i.i, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.axq = or i8 %.sroa.05.0.extract.trunc.i.i.i.i179.i.i, -128
  store i8 %i.axq, ptr %i.a, align 1, !alias.scope !1284, !noalias !1283
  %i.axr = lshr i64 %.val103.i.i, 7
  %.sroa.05.0.extract.trunc.1.i.i.i.i180.i.i = trunc i64 %i.axr to i8 ; 2 uses
  store i8 %.sroa.05.0.extract.trunc.1.i.i.i.i180.i.i, ptr %i.axo, align 1, !alias.scope !1284, !noalias !1283
  %i.axs = icmp ult i64 %.val103.i.i, 16384
  br i1 %i.axs, label %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECsJo5RpJFzwk_14proc_macro_api.exit189.i.i, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.axt = or i8 %.sroa.05.0.extract.trunc.1.i.i.i.i180.i.i, -128
  store i8 %i.axt, ptr %i.axo, align 1, !alias.scope !1284, !noalias !1283
  %i.axu = lshr i64 %.val103.i.i, 14
  %.sroa.05.0.extract.trunc.2.i.i.i.i181.i.i = trunc i64 %i.axu to i8 ; 2 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %.sroa.05.0.extract.trunc.2.i.i.i.i181.i.i, ptr %i.axv, align 1, !alias.scope !1284, !noalias !1283
  %i.axw = icmp ult i64 %.val103.i.i, 2097152
  br i1 %i.axw, label %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECsJo5RpJFzwk_14proc_macro_api.exit189.i.i, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.axx = or i8 %.sroa.05.0.extract.trunc.2.i.i.i.i181.i.i, -128
  store i8 %i.axx, ptr %i.axv, align 1, !alias.scope !1284, !noalias !1283
  %i.axy = lshr i64 %.val103.i.i, 21
  %.sroa.05.0.extract.trunc.3.i.i.i.i182.i.i = trunc i64 %i.axy to i8 ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store i8 %.sroa.05.0.extract.trunc.3.i.i.i.i182.i.i, ptr %i.axz, align 1, !alias.scope !1284, !noalias !1283
  %i.aya = icmp ult i64 %.val103.i.i, 268435456
  br i1 %i.aya, label %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECsJo5RpJFzwk_14proc_macro_api.exit189.i.i, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.ayb = or i8 %.sroa.05.0.extract.trunc.3.i.i.i.i182.i.i, -128
  store i8 %i.ayb, ptr %i.axz, align 1, !alias.scope !1284, !noalias !1283
  %i.ayc = lshr i64 %.val103.i.i, 28
  %.sroa.05.0.extract.trunc.4.i.i.i.i183.i.i = trunc i64 %i.ayc to i8 ; 2 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i8 %.sroa.05.0.extract.trunc.4.i.i.i.i183.i.i, ptr %i.ayd, align 1, !alias.scope !1284, !noalias !1283
  %i.aye = icmp ult i64 %.val103.i.i, 34359738368
  br i1 %i.aye, label %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECsJo5RpJFzwk_14proc_macro_api.exit189.i.i, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.ayf = or i8 %.sroa.05.0.extract.trunc.4.i.i.i.i183.i.i, -128
  store i8 %i.ayf, ptr %i.ayd, align 1, !alias.scope !1284, !noalias !1283
  %i.ayg = lshr i64 %.val103.i.i, 35
  %.sroa.05.0.extract.trunc.5.i.i.i.i184.i.i = trunc i64 %i.ayg to i8 ; 2 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  store i8 %.sroa.05.0.extract.trunc.5.i.i.i.i184.i.i, ptr %i.ayh, align 1, !alias.scope !1284, !noalias !1283
  %i.ayi = icmp ult i64 %.val103.i.i, 4398046511104
  br i1 %i.ayi, label %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECsJo5RpJFzwk_14proc_macro_api.exit189.i.i, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.ayj = or i8 %.sroa.05.0.extract.trunc.5.i.i.i.i184.i.i, -128
  store i8 %i.ayj, ptr %i.ayh, align 1, !alias.scope !1284, !noalias !1283
  %i.ayk = lshr i64 %.val103.i.i, 42
  %.sroa.05.0.extract.trunc.6.i.i.i.i185.i.i = trunc i64 %i.ayk to i8 ; 2 uses
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  store i8 %.sroa.05.0.extract.trunc.6.i.i.i.i185.i.i, ptr %i.ayl, align 1, !alias.scope !1284, !noalias !1283
  %i.aym = icmp ult i64 %.val103.i.i, 562949953421312
  br i1 %i.aym, label %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECsJo5RpJFzwk_14proc_macro_api.exit189.i.i, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.ayn = or i8 %.sroa.05.0.extract.trunc.6.i.i.i.i185.i.i, -128
  store i8 %i.ayn, ptr %i.ayl, align 1, !alias.scope !1284, !noalias !1283
  %i.ayo = lshr i64 %.val103.i.i, 49
  %.sroa.05.0.extract.trunc.7.i.i.i.i186.i.i = trunc i64 %i.ayo to i8 ; 2 uses
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 2 uses
  store i8 %.sroa.05.0.extract.trunc.7.i.i.i.i186.i.i, ptr %i.ayp, align 1, !alias.scope !1284, !noalias !1283
  %i.ayq = icmp ult i64 %.val103.i.i, 72057594037927936
  br i1 %i.ayq, label %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECsJo5RpJFzwk_14proc_macro_api.exit189.i.i, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.ayr = or i8 %.sroa.05.0.extract.trunc.7.i.i.i.i186.i.i, -128
  store i8 %i.ayr, ptr %i.ayp, align 1, !alias.scope !1284, !noalias !1283
  %i.ays = lshr i64 %.val103.i.i, 56
  %.sroa.05.0.extract.trunc.8.i.i.i.i187.i.i = trunc nuw i64 %i.ays to i8
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.05.0.extract.trunc.8.i.i.i.i187.i.i, ptr %i.ayt, align 1, !alias.scope !1284, !noalias !1283
  %i.ayu = icmp sgt i64 %.val103.i.i, -1
  br i1 %i.ayu, label %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECsJo5RpJFzwk_14proc_macro_api.exit189.i.i, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 1, ptr %i.ayv, align 1, !alias.scope !1284, !noalias !1283
  br label %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECsJo5RpJFzwk_14proc_macro_api.exit189.i.i

_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECsJo5RpJFzwk_14proc_macro_api.exit189.i.i: ; preds = %bb.ld, %bb.lc, %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.kx, %bb.kw, %bb.kv, %bb.ku
  %.pn8.i.i.i.i188.i.i = phi i64 [ 6, %bb.kz ], [ 1, %bb.ku ], [ 2, %bb.kv ], [ 10, %bb.ld ], [ 3, %bb.kw ], [ 8, %bb.lb ], [ 4, %bb.kx ], [ 9, %bb.lc ], [ 5, %bb.ky ], [ 7, %bb.la ]
  call fastcc void @_RNvYINtNtNtCslX2I8TqP5TK_8postcard3ser7flavors4CobsNtNtB5_9alloc_vec8AllocVecENtB5_6Flavor10try_extendCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.pn8.i.i.i.i188.i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1283
  call fastcc void @_RNvYINtNtNtCslX2I8TqP5TK_8postcard3ser7flavors4CobsNtNtB5_9alloc_vec8AllocVecENtB5_6Flavor10try_extendCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val102.i.i, i64 noundef %.val103.i.i) #17
  br label %_RINvXs_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB5_10SerializerINtNtB7_7flavors4CobsNtNtB18_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer25serialize_newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB3a_.exit

_RINvXs_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB5_10SerializerINtNtB7_7flavors4CobsNtNtB18_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer25serialize_newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB3a_.exit: ; preds = %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECsJo5RpJFzwk_14proc_macro_api.exit189.i.i, %_RNvXs_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB4_10SerializerINtNtB6_7flavors4CobsNtNtB17_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer14serialize_noneCsJo5RpJFzwk_14proc_macro_api.exit.i.i163.i.i, %_RINvXs_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB5_10SerializerINtNtB7_7flavors4CobsNtNtB18_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer14serialize_someNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8SpanJoinEB2Z_.exit.i.i.i.i, %_RNvXs_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB4_10SerializerINtNtB6_7flavors4CobsNtNtB17_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer14serialize_noneCsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i, %_RINvXs_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB5_10SerializerINtNtB7_7flavors4CobsNtNtB18_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer14serialize_someNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10ParentSpanEB2Z_.exit.i.i.i.i, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldmECsJo5RpJFzwk_14proc_macro_api.exit159.i.i, %bb.hs, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldmECsJo5RpJFzwk_14proc_macro_api.exit124.i.i, %bb.hi, %bb.hh, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECsJo5RpJFzwk_14proc_macro_api.exit.i.i, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldmECsJo5RpJFzwk_14proc_macro_api.exit414.i.i, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldmECsJo5RpJFzwk_14proc_macro_api.exit351.i.i, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldmECsJo5RpJFzwk_14proc_macro_api.exit316.i.i, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldmECsJo5RpJFzwk_14proc_macro_api.exit281.i.i, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldmECsJo5RpJFzwk_14proc_macro_api.exit253.i.i, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldmECsJo5RpJFzwk_14proc_macro_api.exit232.i.i, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldmECsJo5RpJFzwk_14proc_macro_api.exit225.i.i, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldmECsJo5RpJFzwk_14proc_macro_api.exit.i.i, %bb.bo, %bb.bn, %_RINvXs_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB5_10SerializerINtNtB7_7flavors4CobsNtNtB18_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer25serialize_newtype_variantmECsJo5RpJFzwk_14proc_macro_api.exit.i.i, %bb.bh, %bb.bf, %bb.be, %_RINvXs5_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg15ExpandMacroDataEB36_.exit.i.i.i.i.i, %_RINvXs5_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtNtCsJo5RpJFzwk_14proc_macro_api15legacy_protocol3msg4flat8FlatTreeEEB3K_.exit.i.i.i.i.i.i.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.0.0 = phi i8 [ -1, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldmECsJo5RpJFzwk_14proc_macro_api.exit414.i.i ], [ %i.cy, %bb.h ], [ %i.lq, %bb.bo ], [ %i.cq, %bb.e ], [ %i.kp, %bb.bf ], [ -1, %bb.be ], [ %i.kl, %_RINvXs5_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg15ExpandMacroDataEB36_.exit.i.i.i.i.i ], [ %i.cv, %bb.g ], [ %i.ct, %bb.f ], [ %i.gi, %_RINvXs5_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtNtCsJo5RpJFzwk_14proc_macro_api15legacy_protocol3msg4flat8FlatTreeEEB3K_.exit.i.i.i.i.i.i.i ], [ %i.kt, %bb.bh ], [ -1, %_RINvXs_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB5_10SerializerINtNtB7_7flavors4CobsNtNtB18_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer25serialize_newtype_variantmECsJo5RpJFzwk_14proc_macro_api.exit.i.i ], [ %i.lo, %bb.bn ], [ -1, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldmECsJo5RpJFzwk_14proc_macro_api.exit.i.i ], [ -1, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldmECsJo5RpJFzwk_14proc_macro_api.exit225.i.i ], [ -1, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldmECsJo5RpJFzwk_14proc_macro_api.exit232.i.i ], [ -1, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldmECsJo5RpJFzwk_14proc_macro_api.exit253.i.i ], [ -1, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldmECsJo5RpJFzwk_14proc_macro_api.exit281.i.i ], [ -1, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldmECsJo5RpJFzwk_14proc_macro_api.exit316.i.i ], [ -1, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldmECsJo5RpJFzwk_14proc_macro_api.exit351.i.i ], [ -1, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECsJo5RpJFzwk_14proc_macro_api.exit189.i.i ], [ -1, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldNtNtCsbSS6DM8SDEO_5alloc6string6StringECsJo5RpJFzwk_14proc_macro_api.exit.i.i ], [ -1, %_RNvXs_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB4_10SerializerINtNtB6_7flavors4CobsNtNtB17_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer14serialize_noneCsJo5RpJFzwk_14proc_macro_api.exit.i.i163.i.i ], [ -1, %bb.hh ], [ -1, %_RNvXs_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB4_10SerializerINtNtB6_7flavors4CobsNtNtB17_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer14serialize_noneCsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i ], [ -1, %bb.hi ], [ -1, %_RINvXs_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB5_10SerializerINtNtB7_7flavors4CobsNtNtB18_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer14serialize_someNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8SpanJoinEB2Z_.exit.i.i.i.i ], [ -1, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldmECsJo5RpJFzwk_14proc_macro_api.exit124.i.i ], [ -1, %_RINvXs6_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB6_10SerializerINtNtB8_7flavors4CobsNtNtB19_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser22SerializeStructVariant15serialize_fieldmECsJo5RpJFzwk_14proc_macro_api.exit159.i.i ], [ -1, %_RINvXs_NtNtCslX2I8TqP5TK_8postcard3ser10serializerQINtB5_10SerializerINtNtB7_7flavors4CobsNtNtB18_9alloc_vec8AllocVecEENtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer14serialize_someNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10ParentSpanEB2Z_.exit.i.i.i.i ], [ %i.akd, %bb.hs ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB5_20BidirectionalMessageNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB2E_7flavors5SliceEEB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2435 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [20 x i8], align 4                ; 9 uses
  %i.c = alloca [24 x i8], align 4                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [264 x i8], align 8               ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.21.i.i = alloca [252 x i8], align 4      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2442)
  %.promoted.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !2443 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !2443 ; 210 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2444)
  %i.t = icmp eq ptr %.promoted.i.i.i.i.i, %i.s
  br i1 %i.t, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2n_20BidirectionalMessageNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = load i8, ptr %.promoted.i.i.i.i.i, align 1, !noalias !2445, !noundef !6 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.v, ptr %1, align 8, !alias.scope !2446
  %i.w = and i8 %i.u, 127
  %i.x = zext nneg i8 %i.w to i32                 ; 2 uses
  %i.y = icmp sgt i8 %i.u, -1
  br i1 %i.y, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2447)
  %i.z = icmp eq ptr %i.v, %i.s
  br i1 %i.z, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2n_20BidirectionalMessageNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load i8, ptr %i.v, align 1, !noalias !2448, !noundef !6 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.ab, ptr %1, align 8, !alias.scope !2449
  %i.ac = and i8 %i.aa, 127
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 7
  %i.af = or disjoint i32 %i.ae, %i.x             ; 2 uses
  %i.ag = icmp sgt i8 %i.aa, -1
  br i1 %i.ag, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2450)
  %i.ah = icmp eq ptr %i.ab, %i.s
  br i1 %i.ah, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2n_20BidirectionalMessageNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load i8, ptr %i.ab, align 1, !noalias !2451, !noundef !6 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.aj, ptr %1, align 8, !alias.scope !2452
  %i.ak = and i8 %i.ai, 127
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 14
  %i.an = or disjoint i32 %i.am, %i.af            ; 2 uses
  %i.ao = icmp sgt i8 %i.ai, -1
  br i1 %i.ao, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2453)
  %i.ap = icmp eq ptr %i.aj, %i.s
  br i1 %i.ap, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2n_20BidirectionalMessageNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load i8, ptr %i.aj, align 1, !noalias !2454, !noundef !6 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.ar, ptr %1, align 8, !alias.scope !2455
  %i.as = and i8 %i.aq, 127
  %i.at = zext nneg i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 21
  %i.av = or disjoint i32 %i.au, %i.an            ; 2 uses
  %i.aw = icmp sgt i8 %i.aq, -1
  br i1 %i.aw, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2456)
  %i.ax = icmp eq ptr %i.ar, %i.s
  br i1 %i.ax, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2n_20BidirectionalMessageNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = load i8, ptr %i.ar, align 1, !noalias !2457, !noundef !6 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.az, ptr %1, align 8, !alias.scope !2458
  %i.ba = zext i8 %i.ay to i32
  %i.bb = shl nuw i32 %i.ba, 28
  %i.bc = or disjoint i32 %i.bb, %i.av
  %or.cond35.not.i.i.i.i.i = icmp ult i8 %i.ay, 16
  br i1 %or.cond35.not.i.i.i.i.i, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2n_20BidirectionalMessageNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.thread.i.i

_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i: ; preds = %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.promoted.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.az, %bb.j ], [ %i.ar, %bb.h ], [ %i.aj, %bb.f ], [ %i.ab, %bb.d ], [ %i.v, %bb.b ] ; 28 uses
  %.lcssa34.i.i.i.i.i = phi i32 [ %i.bc, %bb.j ], [ %i.av, %bb.h ], [ %i.an, %bb.f ], [ %i.af, %bb.d ], [ %i.x, %bb.b ] ; 3 uses
  %i.bd = icmp ugt i32 %.lcssa34.i.i.i.i.i, 3
  br i1 %i.bd, label %bb.k, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2n_20BidirectionalMessageNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i, !prof !2459

bb.k:                                             ; preds = %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i
  %i.be = zext i32 %.lcssa34.i.i.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2460
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !noalias !2460
  store i8 1, ptr %i.q, align 8, !noalias !2460
  %i.bg = call noundef i8 @_RNvYNtNtCslX2I8TqP5TK_8postcard5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error13invalid_valueCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull @63, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61), !noalias !2461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2460
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2n_20BidirectionalMessageNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.thread.i.i

_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2n_20BidirectionalMessageNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i: ; preds = %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i
  %switch.idx.cast.i.i.i.i.i.i.i.i.i = trunc nuw nsw i32 %.lcssa34.i.i.i.i.i to i8
  switch i8 %switch.idx.cast.i.i.i.i.i.i.i.i.i, label %default.unreachable [
    i8 0, label %bb.l
    i8 1, label %bb.y
    i8 2, label %bb.bc
    i8 3, label %bb.mm
  ]

_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2n_20BidirectionalMessageNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.thread.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.e, %bb.c, %bb.a
  %.sroa.7.0213.i.i = phi i8 [ %i.bg, %bb.k ], [ 4, %bb.g ], [ 4, %bb.a ], [ 4, %bb.e ], [ 4, %bb.c ], [ 4, %bb.i ], [ 5, %bb.j ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.7.0213.i.i, ptr %i.bh, align 8, !alias.scope !2462
  store i64 -2, ptr %0, align 8, !alias.scope !2462
  br label %_RINvXs3_NtNtCslX2I8TqP5TK_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2F_20BidirectionalMessageNtB1x_11Deserialize11deserialize9___VisitorEB2J_.exit

default.unreachable:                              ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs1_1__NtB2n_11SubResponseNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs_1__NtB2n_10SubRequestNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgsb_1__NtB2n_8ResponseNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs9_1__NtB2n_7RequestNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2n_20BidirectionalMessageNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i
  unreachable

bb.l:                                             ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2n_20BidirectionalMessageNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2472)
  %i.bi = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.bi, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.thread.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = load i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2473, !noundef !6 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 3 uses
  store ptr %i.bk, ptr %1, align 8, !alias.scope !2474
  %i.bl = and i8 %i.bj, 127
  %i.bm = zext nneg i8 %i.bl to i32               ; 2 uses
  %i.bn = icmp sgt i8 %i.bj, -1
  br i1 %i.bn, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2475)
  %i.bo = icmp eq ptr %i.bk, %i.s
  br i1 %i.bo, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.thread.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = load i8, ptr %i.bk, align 1, !noalias !2476, !noundef !6 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 3 uses
  store ptr %i.bq, ptr %1, align 8, !alias.scope !2477
  %i.br = and i8 %i.bp, 127
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 7
  %i.bu = or disjoint i32 %i.bt, %i.bm            ; 2 uses
  %i.bv = icmp sgt i8 %i.bp, -1
  br i1 %i.bv, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2478)
  %i.bw = icmp eq ptr %i.bq, %i.s
  br i1 %i.bw, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.thread.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = load i8, ptr %i.bq, align 1, !noalias !2479, !noundef !6 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, i64 3 ; 3 uses
  store ptr %i.by, ptr %1, align 8, !alias.scope !2480
  %i.bz = and i8 %i.bx, 127
  %i.ca = zext nneg i8 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 14
  %i.cc = or disjoint i32 %i.cb, %i.bu            ; 2 uses
  %i.cd = icmp sgt i8 %i.bx, -1
  br i1 %i.cd, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2481)
  %i.ce = icmp eq ptr %i.by, %i.s
  br i1 %i.ce, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.thread.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = load i8, ptr %i.by, align 1, !noalias !2482, !noundef !6 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 3 uses
  store ptr %i.cg, ptr %1, align 8, !alias.scope !2483
  %i.ch = and i8 %i.cf, 127
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 21
  %i.ck = or disjoint i32 %i.cj, %i.cc            ; 2 uses
  %i.cl = icmp sgt i8 %i.cf, -1
  br i1 %i.cl, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2484)
  %i.cm = icmp eq ptr %i.cg, %i.s
  br i1 %i.cm, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.thread.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = load i8, ptr %i.cg, align 1, !noalias !2485, !noundef !6 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, i64 5
  store ptr %i.co, ptr %1, align 8, !alias.scope !2486
  %i.cp = zext i8 %i.cn to i32
  %i.cq = shl nuw i32 %i.cp, 28
  %i.cr = or disjoint i32 %i.cq, %i.ck
  %or.cond35.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.cn, 16
  br i1 %or.cond35.not.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.thread.i.i

_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.s, %bb.q, %bb.o, %bb.m
  %.lcssa34.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cr, %bb.u ], [ %i.ck, %bb.s ], [ %i.cc, %bb.q ], [ %i.bu, %bb.o ], [ %i.bm, %bb.m ] ; 3 uses
  %i.cs = icmp ugt i32 %.lcssa34.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.cs, label %bb.v, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs9_1__NtB2n_7RequestNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i, !prof !2459

bb.v:                                             ; preds = %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i.i.i
  %i.ct = zext i32 %.lcssa34.i.i.i.i.i.i.i.i.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2487
  %i.cu = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.ct, ptr %i.cu, align 8, !noalias !2487
  store i8 1, ptr %i.o, align 8, !noalias !2487
  %i.cv = call noundef i8 @_RNvYNtNtCslX2I8TqP5TK_8postcard5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error13invalid_valueCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull @63, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61), !noalias !2488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2487
  %i.cw = zext nneg i8 %i.cv to i64
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.thread.i.i

_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs9_1__NtB2n_7RequestNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i.i.i
  %switch.idx.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i32 %.lcssa34.i.i.i.i.i.i.i.i.i.i.i to i8
  switch i8 %switch.idx.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %default.unreachable [
    i8 0, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.i.i
    i8 1, label %bb.w
    i8 2, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.thread220.i.i
    i8 3, label %bb.x
  ]

bb.w:                                             ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs9_1__NtB2n_7RequestNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2489
  call void @_RINvXs3l_NtNtCsjQbM3MYDIrM_10serde_core2de5implsINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg11ExpandMacroENtB9_11Deserialize11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB39_7flavors5SliceEEB1p_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !2490
  %i.cx = load i8, ptr %i.p, align 8, !range !2491, !noalias !2489, !noundef !6
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !range !12, !noalias !2492
  %.sroa.1067.0.insert.ext77.i.i = zext nneg i8 %i.da to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !2492, !nonnull !6, !align !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2489
  br i1 %i.cy, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.thread.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.thread220.i.i

bb.x:                                             ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs9_1__NtB2n_7RequestNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  %i.dd = tail call { i1, i8 } @_RINvXNvNtNtCsJo5RpJFzwk_14proc_macro_api15legacy_protocol3msgs5_1__NtB5_12ServerConfigNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB2p_7flavors5SliceEEB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !2490 ; 2 uses
  %i.de = extractvalue { i1, i8 } %i.dd, 0
  %i.df = extractvalue { i1, i8 } %i.dd, 1
  %.sroa.1067.0.insert.ext73.i.i = zext i8 %i.df to i64 ; 2 uses
  %i.dg = inttoptr i64 %.sroa.1067.0.insert.ext73.i.i to ptr
  br i1 %i.de, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.thread.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.thread220.i.i

_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.i.i: ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs9_1__NtB2n_7RequestNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2493
  call void @_RINvXs_NtCs9p4rgIae0RV_6camino11serde_implsNtB7_11Utf8PathBufNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB20_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !2494
  %i.dh = load i64, ptr %i.n, align 8, !range !5, !noalias !2493, !noundef !6 ; 2 uses
  %i.di = icmp eq i64 %i.dh, -1                   ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.dk = load i8, ptr %i.dj, align 8, !noalias !2493
  %.sroa.511.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %.sroa.1067.1.copyload.i.i = load i56, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2492
  %.sroa.1067.1.insert.ext.i.i = zext i56 %.sroa.1067.1.copyload.i.i to i64
  %.sroa.1067.1.insert.shift.i.i = shl nuw i64 %.sroa.1067.1.insert.ext.i.i, 8
  %.sroa.18.9..sroa.511.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.18.9.copyload.i.i = load i64, ptr %.sroa.18.9..sroa.511.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa_idx.i.i, align 8, !noalias !2492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2493
  %.sroa.1067.0.insert.ext81.i.i = zext i8 %i.dk to i64
  %.sroa.1067.0.insert.mask82.i.i = select i1 %i.di, i64 0, i64 %.sroa.1067.1.insert.shift.i.i
  %.sroa.1067.0.insert.insert83.i.i = or disjoint i64 %.sroa.1067.0.insert.mask82.i.i, %.sroa.1067.0.insert.ext81.i.i ; 2 uses
  %i.dl = inttoptr i64 %.sroa.1067.0.insert.insert83.i.i to ptr
  br i1 %i.di, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.thread.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.thread220.i.i

bb.y:                                             ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2n_20BidirectionalMessageNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2504)
  %i.dm = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.dm, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dn = load i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2505, !noundef !6 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.do, ptr %1, align 8, !alias.scope !2506
  %i.dp = and i8 %i.dn, 127
  %i.dq = zext nneg i8 %i.dp to i32               ; 2 uses
  %i.dr = icmp sgt i8 %i.dn, -1
  br i1 %i.dr, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i12.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2507)
  %i.ds = icmp eq ptr %i.do, %i.s
  br i1 %i.ds, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dt = load i8, ptr %i.do, align 1, !noalias !2508, !noundef !6 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.du, ptr %1, align 8, !alias.scope !2509
  %i.dv = and i8 %i.dt, 127
  %i.dw = zext nneg i8 %i.dv to i32
  %i.dx = shl nuw nsw i32 %i.dw, 7
  %i.dy = or disjoint i32 %i.dx, %i.dq            ; 2 uses
  %i.dz = icmp sgt i8 %i.dt, -1
  br i1 %i.dz, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i12.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2510)
  %i.ea = icmp eq ptr %i.du, %i.s
  br i1 %i.ea, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eb = load i8, ptr %i.du, align 1, !noalias !2511, !noundef !6 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.ec, ptr %1, align 8, !alias.scope !2512
  %i.ed = and i8 %i.eb, 127
  %i.ee = zext nneg i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 14
  %i.eg = or disjoint i32 %i.ef, %i.dy            ; 2 uses
  %i.eh = icmp sgt i8 %i.eb, -1
  br i1 %i.eh, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i12.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2513)
  %i.ei = icmp eq ptr %i.ec, %i.s
  br i1 %i.ei, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ej = load i8, ptr %i.ec, align 1, !noalias !2514, !noundef !6 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.ek, ptr %1, align 8, !alias.scope !2515
  %i.el = and i8 %i.ej, 127
  %i.em = zext nneg i8 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 21
  %i.eo = or disjoint i32 %i.en, %i.eg            ; 2 uses
  %i.ep = icmp sgt i8 %i.ej, -1
  br i1 %i.ep, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i12.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2516)
  %i.eq = icmp eq ptr %i.ek, %i.s
  br i1 %i.eq, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.er = load i8, ptr %i.ek, align 1, !noalias !2517, !noundef !6 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.es, ptr %1, align 8, !alias.scope !2518
  %i.et = zext i8 %i.er to i32
  %i.eu = shl nuw i32 %i.et, 28
  %i.ev = or disjoint i32 %i.eu, %i.eo
  %or.cond35.not.i.i.i.i.i.i.i.i.i10.i.i = icmp ult i8 %i.er, 16
  br i1 %or.cond35.not.i.i.i.i.i.i.i.i.i10.i.i, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i12.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread.i.i

_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i12.i.i: ; preds = %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.es, %bb.ah ], [ %i.ek, %bb.af ], [ %i.ec, %bb.ad ], [ %i.du, %bb.ab ], [ %i.do, %bb.z ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i.i.i.i13.i.i = phi i32 [ %i.ev, %bb.ah ], [ %i.eo, %bb.af ], [ %i.eg, %bb.ad ], [ %i.dy, %bb.ab ], [ %i.dq, %bb.z ] ; 3 uses
  %i.ew = icmp ugt i32 %.lcssa34.i.i.i.i.i.i.i.i.i13.i.i, 3
  br i1 %i.ew, label %bb.ai, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgsb_1__NtB2n_8ResponseNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i, !prof !2459

bb.ai:                                            ; preds = %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i12.i.i
  %i.ex = zext i32 %.lcssa34.i.i.i.i.i.i.i.i.i13.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2519
  %i.ey = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.ex, ptr %i.ey, align 8, !noalias !2519
  store i8 1, ptr %i.k, align 8, !noalias !2519
  %i.ez = call noundef i8 @_RNvYNtNtCslX2I8TqP5TK_8postcard5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error13invalid_valueCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull @63, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61), !noalias !2520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2519
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread.i.i

_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgsb_1__NtB2n_8ResponseNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i12.i.i
  %switch.idx.cast.i.i.i.i.i.i.i.i.i.i.i.i.i14.i.i = trunc nuw nsw i32 %.lcssa34.i.i.i.i.i.i.i.i.i13.i.i to i8
  switch i8 %switch.idx.cast.i.i.i.i.i.i.i.i.i.i.i.i.i14.i.i, label %default.unreachable [
    i8 0, label %bb.aj
    i8 1, label %bb.ak
    i8 2, label %bb.au
    i8 3, label %bb.av
  ]

bb.aj:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgsb_1__NtB2n_8ResponseNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2521
  call void @_RINvXsD_NtNtCsjQbM3MYDIrM_10serde_core2de5implsINtNtCshzWfHUSfYae_4core6result6ResultINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtB1q_6string6StringNtCsJo5RpJFzwk_14proc_macro_api13ProcMacroKindEEB1T_ENtB8_11Deserialize11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB3H_7flavors5SliceEEB2h_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !2522
  %i.fa = load i64, ptr %i.m, align 8, !range !14, !noalias !2521, !noundef !6 ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 2
  br i1 %i.fb, label %bb.aw, label %bb.ax

bb.ak:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgsb_1__NtB2n_8ResponseNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2529)
  %i.fc = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.fc, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fd = load i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2530, !noundef !6 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 3 uses
  store ptr %i.fe, ptr %1, align 8, !alias.scope !2531
  %i.ff = and i8 %i.fd, 127
  %i.fg = zext nneg i8 %i.ff to i32               ; 2 uses
  %i.fh = icmp sgt i8 %i.fd, -1
  br i1 %i.fh, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantmECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2532)
  %i.fi = icmp eq ptr %i.fe, %i.s
  br i1 %i.fi, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fj = load i8, ptr %i.fe, align 1, !noalias !2533, !noundef !6 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 3 uses
  store ptr %i.fk, ptr %1, align 8, !alias.scope !2534
  %i.fl = and i8 %i.fj, 127
  %i.fm = zext nneg i8 %i.fl to i32
  %i.fn = shl nuw nsw i32 %i.fm, 7
  %i.fo = or disjoint i32 %i.fn, %i.fg            ; 2 uses
  %i.fp = icmp sgt i8 %i.fj, -1
  br i1 %i.fp, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantmECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2535)
  %i.fq = icmp eq ptr %i.fk, %i.s
  br i1 %i.fq, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fr = load i8, ptr %i.fk, align 1, !noalias !2536, !noundef !6 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3 ; 3 uses
  store ptr %i.fs, ptr %1, align 8, !alias.scope !2537
  %i.ft = and i8 %i.fr, 127
  %i.fu = zext nneg i8 %i.ft to i32
  %i.fv = shl nuw nsw i32 %i.fu, 14
  %i.fw = or disjoint i32 %i.fv, %i.fo            ; 2 uses
  %i.fx = icmp sgt i8 %i.fr, -1
  br i1 %i.fx, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantmECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2538)
  %i.fy = icmp eq ptr %i.fs, %i.s
  br i1 %i.fy, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fz = load i8, ptr %i.fs, align 1, !noalias !2539, !noundef !6 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 3 uses
  store ptr %i.ga, ptr %1, align 8, !alias.scope !2540
  %i.gb = and i8 %i.fz, 127
  %i.gc = zext nneg i8 %i.gb to i32
  %i.gd = shl nuw nsw i32 %i.gc, 21
  %i.ge = or disjoint i32 %i.gd, %i.fw            ; 2 uses
  %i.gf = icmp sgt i8 %i.fz, -1
  br i1 %i.gf, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantmECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2541)
  %i.gg = icmp eq ptr %i.ga, %i.s
  br i1 %i.gg, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gh = load i8, ptr %i.ga, align 1, !noalias !2542, !noundef !6 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 5
  store ptr %i.gi, ptr %1, align 8, !alias.scope !2543
  %i.gj = zext i8 %i.gh to i32
  %i.gk = shl nuw i32 %i.gj, 28
  %i.gl = or disjoint i32 %i.gk, %i.ge
  %or.cond35.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.gh, 16
  br i1 %or.cond35.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantmECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread.i.i

bb.au:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgsb_1__NtB2n_8ResponseNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  %i.gm = tail call { i1, i8 } @_RINvXNvNtNtCsJo5RpJFzwk_14proc_macro_api15legacy_protocol3msgs5_1__NtB5_12ServerConfigNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB2p_7flavors5SliceEEB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !2522 ; 2 uses
  %i.gn = extractvalue { i1, i8 } %i.gm, 0
  %i.go = extractvalue { i1, i8 } %i.gm, 1        ; 2 uses
  br i1 %i.gn, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread233.i.i

bb.av:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgsb_1__NtB2n_8ResponseNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2521
  call void @_RINvXsD_NtNtCsjQbM3MYDIrM_10serde_core2de5implsINtNtCshzWfHUSfYae_4core6result6ResultNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg19ExpandMacroResponseNtNtNtB1r_15legacy_protocol3msg12PanicMessageENtB8_11Deserialize11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB42_7flavors5SliceEEB1r_(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !2522
  %i.gp = load i64, ptr %i.l, align 8, !range !15, !noalias !2521, !noundef !6 ; 2 uses
  %i.gq = icmp eq i64 %i.gp, -2
  %i.gr = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %i.gq, label %bb.az, label %bb.ba

bb.aw:                                            ; preds = %bb.aj
  %i.gs = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.gt = load i8, ptr %i.gs, align 8, !range !12, !noalias !2521, !noundef !6
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aj
  %.sroa.12.sroa.0.0.extract.trunc90.i.i = trunc nuw nsw i64 %i.fa to i8
  %.sroa.21.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.21.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.21.8..sroa_idx.i.i, i64 28, i1 false), !noalias !2544
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.sroa.12.sroa.0.1.i.i = phi i8 [ %i.gt, %bb.aw ], [ %.sroa.12.sroa.0.0.extract.trunc90.i.i, %bb.ax ]
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ -2, %bb.aw ], [ -9223372036854775808, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2521
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.i.i

_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantmECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i: ; preds = %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.al
  %.lcssa34.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gl, %bb.at ], [ %i.ge, %bb.ar ], [ %i.fw, %bb.ap ], [ %i.fo, %bb.an ], [ %i.fg, %bb.al ] ; 2 uses
  %.sroa.12.sroa.0.0.extract.trunc89.i.i = trunc i32 %.lcssa34.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i8
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread233.i.i

bb.az:                                            ; preds = %bb.av
  %i.gu = load i8, ptr %i.gr, align 8, !range !12, !noalias !2521, !noundef !6
  br label %bb.bb

bb.ba:                                            ; preds = %bb.av
  %.sroa.12.0.copyload87.i.i = load i32, ptr %i.gr, align 8, !noalias !2544 ; 2 uses
  %.sroa.12.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.12.0.copyload87.i.i to i8
  %.sroa.21.0..sroa_idx88.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(252) %.sroa.21.i.i, ptr noundef nonnull align 4 dereferenceable(252) %.sroa.21.0..sroa_idx88.i.i, i64 252, i1 false), !noalias !2544
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.12.sroa.13.sroa.0.0.i.i = phi i32 [ 0, %bb.az ], [ %.sroa.12.0.copyload87.i.i, %bb.ba ]
  %.sroa.12.sroa.0.0.i.i = phi i8 [ %i.gu, %bb.az ], [ %.sroa.12.sroa.0.0.extract.trunc.i.i, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2521
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.i.i

_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.i.i: ; preds = %bb.bb, %bb.ay
  %.sroa.12.sroa.13.sroa.0.2.i.i = phi i32 [ %.sroa.12.sroa.13.sroa.0.0.i.i, %bb.bb ], [ 0, %bb.ay ]
  %.sroa.12.sroa.0.2.i.i = phi i8 [ %.sroa.12.sroa.0.0.i.i, %bb.bb ], [ %.sroa.12.sroa.0.1.i.i, %bb.ay ] ; 2 uses
  %.sroa.084.1.i.i = phi i64 [ %i.gp, %bb.bb ], [ %.sink.i.i.i.i.i.i.i.i, %bb.ay ] ; 2 uses
  %i.gv = icmp eq i64 %.sroa.084.1.i.i, -2
  br i1 %i.gv, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread233.i.i

bb.bc:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2n_20BidirectionalMessageNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2554)
  %i.gw = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.gw, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gx = load i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2555, !noundef !6 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.gy, ptr %1, align 8, !alias.scope !2556
  %i.gz = and i8 %i.gx, 127
  %i.ha = zext nneg i8 %i.gz to i32               ; 2 uses
  %i.hb = icmp sgt i8 %i.gx, -1
  br i1 %i.hb, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i19.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2557)
  %i.hc = icmp eq ptr %i.gy, %i.s
  br i1 %i.hc, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hd = load i8, ptr %i.gy, align 1, !noalias !2558, !noundef !6 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.he, ptr %1, align 8, !alias.scope !2559
  %i.hf = and i8 %i.hd, 127
  %i.hg = zext nneg i8 %i.hf to i32
  %i.hh = shl nuw nsw i32 %i.hg, 7
  %i.hi = or disjoint i32 %i.hh, %i.ha            ; 2 uses
  %i.hj = icmp sgt i8 %i.hd, -1
  br i1 %i.hj, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i19.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2560)
  %i.hk = icmp eq ptr %i.he, %i.s
  br i1 %i.hk, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hl = load i8, ptr %i.he, align 1, !noalias !2561, !noundef !6 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.hm, ptr %1, align 8, !alias.scope !2562
  %i.hn = and i8 %i.hl, 127
  %i.ho = zext nneg i8 %i.hn to i32
  %i.hp = shl nuw nsw i32 %i.ho, 14
  %i.hq = or disjoint i32 %i.hp, %i.hi            ; 2 uses
  %i.hr = icmp sgt i8 %i.hl, -1
  br i1 %i.hr, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i19.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2563)
  %i.hs = icmp eq ptr %i.hm, %i.s
  br i1 %i.hs, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ht = load i8, ptr %i.hm, align 1, !noalias !2564, !noundef !6 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.hu, ptr %1, align 8, !alias.scope !2565
  %i.hv = and i8 %i.ht, 127
  %i.hw = zext nneg i8 %i.hv to i32
  %i.hx = shl nuw nsw i32 %i.hw, 21
  %i.hy = or disjoint i32 %i.hx, %i.hq            ; 2 uses
  %i.hz = icmp sgt i8 %i.ht, -1
  br i1 %i.hz, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i19.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2566)
  %i.ia = icmp eq ptr %i.hu, %i.s
  br i1 %i.ia, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ib = load i8, ptr %i.hu, align 1, !noalias !2567, !noundef !6 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.ic, ptr %1, align 8, !alias.scope !2568
  %i.id = zext i8 %i.ib to i32
  %i.ie = shl nuw i32 %i.id, 28
  %i.if = or disjoint i32 %i.ie, %i.hy
  %or.cond35.not.i.i.i.i.i.i.i.i.i18.i.i = icmp ult i8 %i.ib, 16
  br i1 %or.cond35.not.i.i.i.i.i.i.i.i.i18.i.i, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i19.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i19.i.i: ; preds = %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ic, %bb.bl ], [ %i.hu, %bb.bj ], [ %i.hm, %bb.bh ], [ %i.he, %bb.bf ], [ %i.gy, %bb.bd ] ; 56 uses
  %.lcssa34.i.i.i.i.i.i.i.i.i20.i.i = phi i32 [ %i.if, %bb.bl ], [ %i.hy, %bb.bj ], [ %i.hq, %bb.bh ], [ %i.hi, %bb.bf ], [ %i.ha, %bb.bd ] ; 3 uses
  %i.ig = icmp ugt i32 %.lcssa34.i.i.i.i.i.i.i.i.i20.i.i, 7
  br i1 %i.ig, label %bb.bm, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs_1__NtB2n_10SubRequestNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i, !prof !2569

bb.bm:                                            ; preds = %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i19.i.i
  %i.ih = zext i32 %.lcssa34.i.i.i.i.i.i.i.i.i20.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2570
  %i.ii = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.ih, ptr %i.ii, align 8, !noalias !2570
  store i8 1, ptr %i.j, align 8, !noalias !2570
  %i.ij = call noundef i8 @_RNvYNtNtCslX2I8TqP5TK_8postcard5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error13invalid_valueCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull @65, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61), !noalias !2571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2570
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs_1__NtB2n_10SubRequestNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i19.i.i
  %switch.idx.cast.i.i.i.i.i.i.i.i.i.i.i.i.i21.i.i = trunc nuw nsw i32 %.lcssa34.i.i.i.i.i.i.i.i.i20.i.i to i8
  switch i8 %switch.idx.cast.i.i.i.i.i.i.i.i.i.i.i.i.i21.i.i, label %default.unreachable [
    i8 0, label %bb.bn
    i8 1, label %bb.bx
    i8 2, label %bb.di
    i8 3, label %bb.ds
    i8 4, label %bb.eu
    i8 5, label %bb.gf
    i8 6, label %bb.hz
    i8 7, label %bb.jt
  ]

bb.bn:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs_1__NtB2n_10SubRequestNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2578)
  %i.ik = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.ik, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.il = load i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2579, !noundef !6 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 3 uses
  store ptr %i.im, ptr %1, align 8, !alias.scope !2580, !noalias !2581
  %i.in = and i8 %i.il, 127
  %i.io = zext nneg i8 %i.in to i32               ; 2 uses
  %i.ip = icmp sgt i8 %i.il, -1
  br i1 %i.ip, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2582)
  %i.iq = icmp eq ptr %i.im, %i.s
  br i1 %i.iq, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ir = load i8, ptr %i.im, align 1, !noalias !2583, !noundef !6 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 3 uses
  store ptr %i.is, ptr %1, align 8, !alias.scope !2584, !noalias !2581
  %i.it = and i8 %i.ir, 127
  %i.iu = zext nneg i8 %i.it to i32
  %i.iv = shl nuw nsw i32 %i.iu, 7
  %i.iw = or disjoint i32 %i.iv, %i.io            ; 2 uses
  %i.ix = icmp sgt i8 %i.ir, -1
  br i1 %i.ix, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2585)
  %i.iy = icmp eq ptr %i.is, %i.s
  br i1 %i.iy, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.iz = load i8, ptr %i.is, align 1, !noalias !2586, !noundef !6 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3 ; 3 uses
  store ptr %i.ja, ptr %1, align 8, !alias.scope !2587, !noalias !2581
  %i.jb = and i8 %i.iz, 127
  %i.jc = zext nneg i8 %i.jb to i32
  %i.jd = shl nuw nsw i32 %i.jc, 14
  %i.je = or disjoint i32 %i.jd, %i.iw            ; 2 uses
  %i.jf = icmp sgt i8 %i.iz, -1
  br i1 %i.jf, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2588)
  %i.jg = icmp eq ptr %i.ja, %i.s
  br i1 %i.jg, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jh = load i8, ptr %i.ja, align 1, !noalias !2589, !noundef !6 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 3 uses
  store ptr %i.ji, ptr %1, align 8, !alias.scope !2590, !noalias !2581
  %i.jj = and i8 %i.jh, 127
  %i.jk = zext nneg i8 %i.jj to i32
  %i.jl = shl nuw nsw i32 %i.jk, 21
  %i.jm = or disjoint i32 %i.jl, %i.je            ; 2 uses
  %i.jn = icmp sgt i8 %i.jh, -1
  br i1 %i.jn, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2591)
  %i.jo = icmp eq ptr %i.ji, %i.s
  br i1 %i.jo, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jp = load i8, ptr %i.ji, align 1, !noalias !2592, !noundef !6 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 5
  store ptr %i.jq, ptr %1, align 8, !alias.scope !2593, !noalias !2581
  %i.jr = zext i8 %i.jp to i32
  %i.js = shl nuw i32 %i.jr, 28
  %i.jt = or disjoint i32 %i.js, %i.jm
  %or.cond35.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.jp, 16
  br i1 %or.cond35.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

bb.bx:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs_1__NtB2n_10SubRequestNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2600)
  %i.ju = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.ju, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jv = load i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2601, !noundef !6 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.jw, ptr %1, align 8, !alias.scope !2602, !noalias !2603
  %i.jx = and i8 %i.jv, 127
  %i.jy = zext nneg i8 %i.jx to i32               ; 2 uses
  %i.jz = icmp sgt i8 %i.jv, -1
  br i1 %i.jz, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i6.i.i.i.i.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2604)
  %i.ka = icmp eq ptr %i.jw, %i.s
  br i1 %i.ka, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kb = load i8, ptr %i.jw, align 1, !noalias !2605, !noundef !6 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.kc, ptr %1, align 8, !alias.scope !2606, !noalias !2603
  %i.kd = and i8 %i.kb, 127
  %i.ke = zext nneg i8 %i.kd to i32
  %i.kf = shl nuw nsw i32 %i.ke, 7
  %i.kg = or disjoint i32 %i.kf, %i.jy            ; 2 uses
  %i.kh = icmp sgt i8 %i.kb, -1
  br i1 %i.kh, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i6.i.i.i.i.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2607)
  %i.ki = icmp eq ptr %i.kc, %i.s
  br i1 %i.ki, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kj = load i8, ptr %i.kc, align 1, !noalias !2608, !noundef !6 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.kk, ptr %1, align 8, !alias.scope !2609, !noalias !2603
  %i.kl = and i8 %i.kj, 127
  %i.km = zext nneg i8 %i.kl to i32
  %i.kn = shl nuw nsw i32 %i.km, 14
  %i.ko = or disjoint i32 %i.kn, %i.kg            ; 2 uses
  %i.kp = icmp sgt i8 %i.kj, -1
  br i1 %i.kp, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i6.i.i.i.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2610)
  %i.kq = icmp eq ptr %i.kk, %i.s
  br i1 %i.kq, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kr = load i8, ptr %i.kk, align 1, !noalias !2611, !noundef !6 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.ks, ptr %1, align 8, !alias.scope !2612, !noalias !2603
  %i.kt = and i8 %i.kr, 127
  %i.ku = zext nneg i8 %i.kt to i32
  %i.kv = shl nuw nsw i32 %i.ku, 21
  %i.kw = or disjoint i32 %i.kv, %i.ko            ; 2 uses
  %i.kx = icmp sgt i8 %i.kr, -1
  br i1 %i.kx, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i6.i.i.i.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2613)
  %i.ky = icmp eq ptr %i.ks, %i.s
  br i1 %i.ky, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kz = load i8, ptr %i.ks, align 1, !noalias !2614, !noundef !6 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.la, ptr %1, align 8, !alias.scope !2615, !noalias !2603
  %i.lb = zext i8 %i.kz to i32
  %i.lc = shl nuw i32 %i.lb, 28
  %i.ld = or disjoint i32 %i.lc, %i.kw
  %or.cond35.not.i.i.i.i.i.i.i.i3.i.i.i.i.i.i.i.i = icmp ult i8 %i.kz, 16
  br i1 %or.cond35.not.i.i.i.i.i.i.i.i3.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i6.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i6.i.i.i.i.i.i.i.i: ; preds = %bb.cg, %bb.ce, %bb.cc, %bb.ca, %bb.by
  %.promoted.i.i.i.i.i.i49.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.la, %bb.cg ], [ %i.ks, %bb.ce ], [ %i.kk, %bb.cc ], [ %i.kc, %bb.ca ], [ %i.jw, %bb.by ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i = phi i32 [ %i.ld, %bb.cg ], [ %i.kw, %bb.ce ], [ %i.ko, %bb.cc ], [ %i.kg, %bb.ca ], [ %i.jy, %bb.by ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2620)
  %i.le = icmp eq ptr %.promoted.i.i.i.i.i.i49.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.le, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ch

bb.ch:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i6.i.i.i.i.i.i.i.i
  %i.lf = load i8, ptr %.promoted.i.i.i.i.i.i49.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2621, !noundef !6 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i49.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.lg, ptr %1, align 8, !alias.scope !2622, !noalias !2623
  %i.lh = and i8 %i.lf, 127
  %i.li = zext nneg i8 %i.lh to i32               ; 2 uses
  %i.lj = icmp sgt i8 %i.lf, -1
  br i1 %i.lj, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i.i.i.i.i.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2624)
  %i.lk = icmp eq ptr %i.lg, %i.s
  br i1 %i.lk, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ll = load i8, ptr %i.lg, align 1, !noalias !2625, !noundef !6 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i49.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.lm, ptr %1, align 8, !alias.scope !2626, !noalias !2623
  %i.ln = and i8 %i.ll, 127
  %i.lo = zext nneg i8 %i.ln to i32
  %i.lp = shl nuw nsw i32 %i.lo, 7
  %i.lq = or disjoint i32 %i.lp, %i.li            ; 2 uses
  %i.lr = icmp sgt i8 %i.ll, -1
  br i1 %i.lr, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i.i.i.i.i.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2627)
  %i.ls = icmp eq ptr %i.lm, %i.s
  br i1 %i.ls, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lt = load i8, ptr %i.lm, align 1, !noalias !2628, !noundef !6 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i49.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.lu, ptr %1, align 8, !alias.scope !2629, !noalias !2623
  %i.lv = and i8 %i.lt, 127
  %i.lw = zext nneg i8 %i.lv to i32
  %i.lx = shl nuw nsw i32 %i.lw, 14
  %i.ly = or disjoint i32 %i.lx, %i.lq            ; 2 uses
  %i.lz = icmp sgt i8 %i.lt, -1
  br i1 %i.lz, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i.i.i.i.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2630)
  %i.ma = icmp eq ptr %i.lu, %i.s
  br i1 %i.ma, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mb = load i8, ptr %i.lu, align 1, !noalias !2631, !noundef !6 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i49.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.mc, ptr %1, align 8, !alias.scope !2632, !noalias !2623
  %i.md = and i8 %i.mb, 127
  %i.me = zext nneg i8 %i.md to i32
  %i.mf = shl nuw nsw i32 %i.me, 21
  %i.mg = or disjoint i32 %i.mf, %i.ly            ; 2 uses
  %i.mh = icmp sgt i8 %i.mb, -1
  br i1 %i.mh, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i.i.i.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2633)
  %i.mi = icmp eq ptr %i.mc, %i.s
  br i1 %i.mi, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.mj = load i8, ptr %i.mc, align 1, !noalias !2634, !noundef !6 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i49.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.mk, ptr %1, align 8, !alias.scope !2635, !noalias !2623
  %i.ml = zext i8 %i.mj to i32
  %i.mm = shl nuw i32 %i.ml, 28
  %i.mn = or disjoint i32 %i.mm, %i.mg
  %or.cond35.not.i.i.i.i.i.i50.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.mj, 16
  br i1 %or.cond35.not.i.i.i.i.i.i50.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cp, %bb.cn, %bb.cl, %bb.cj, %bb.ch
  %.promoted.i.i.i.i.i.i56.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mk, %bb.cp ], [ %i.mc, %bb.cn ], [ %i.lu, %bb.cl ], [ %i.lm, %bb.cj ], [ %i.lg, %bb.ch ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i53.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.mn, %bb.cp ], [ %i.mg, %bb.cn ], [ %i.ly, %bb.cl ], [ %i.lq, %bb.cj ], [ %i.li, %bb.ch ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2640)
  %i.mo = icmp eq ptr %.promoted.i.i.i.i.i.i56.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.mo, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.cq

bb.cq:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i.i.i.i.i.i.i.i.i
  %i.mp = load i8, ptr %.promoted.i.i.i.i.i.i56.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2641, !noundef !6 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i56.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.mq, ptr %1, align 8, !alias.scope !2642, !noalias !2643
  %i.mr = and i8 %i.mp, 127
  %i.ms = zext nneg i8 %i.mr to i32               ; 2 uses
  %i.mt = icmp sgt i8 %i.mp, -1
  br i1 %i.mt, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i.i.i.i.i.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2644)
  %i.mu = icmp eq ptr %i.mq, %i.s
  br i1 %i.mu, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.mv = load i8, ptr %i.mq, align 1, !noalias !2645, !noundef !6 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i56.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.mw, ptr %1, align 8, !alias.scope !2646, !noalias !2643
  %i.mx = and i8 %i.mv, 127
  %i.my = zext nneg i8 %i.mx to i32
  %i.mz = shl nuw nsw i32 %i.my, 7
  %i.na = or disjoint i32 %i.mz, %i.ms            ; 2 uses
  %i.nb = icmp sgt i8 %i.mv, -1
  br i1 %i.nb, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i.i.i.i.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2647)
  %i.nc = icmp eq ptr %i.mw, %i.s
  br i1 %i.nc, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.nd = load i8, ptr %i.mw, align 1, !noalias !2648, !noundef !6 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i56.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.ne, ptr %1, align 8, !alias.scope !2649, !noalias !2643
  %i.nf = and i8 %i.nd, 127
  %i.ng = zext nneg i8 %i.nf to i32
  %i.nh = shl nuw nsw i32 %i.ng, 14
  %i.ni = or disjoint i32 %i.nh, %i.na            ; 2 uses
  %i.nj = icmp sgt i8 %i.nd, -1
  br i1 %i.nj, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i.i.i.i.i.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2650)
  %i.nk = icmp eq ptr %i.ne, %i.s
  br i1 %i.nk, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.nl = load i8, ptr %i.ne, align 1, !noalias !2651, !noundef !6 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i56.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.nm, ptr %1, align 8, !alias.scope !2652, !noalias !2643
  %i.nn = and i8 %i.nl, 127
  %i.no = zext nneg i8 %i.nn to i32
  %i.np = shl nuw nsw i32 %i.no, 21
  %i.nq = or disjoint i32 %i.np, %i.ni            ; 2 uses
  %i.nr = icmp sgt i8 %i.nl, -1
  br i1 %i.nr, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i.i.i.i.i.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2653)
  %i.ns = icmp eq ptr %i.nm, %i.s
  br i1 %i.ns, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.nt = load i8, ptr %i.nm, align 1, !noalias !2654, !noundef !6 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i56.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.nu, ptr %1, align 8, !alias.scope !2655, !noalias !2643
  %i.nv = zext i8 %i.nt to i32
  %i.nw = shl nuw i32 %i.nv, 28
  %i.nx = or disjoint i32 %i.nw, %i.nq
  %or.cond35.not.i.i.i.i.i.i57.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.nt, 16
  br i1 %or.cond35.not.i.i.i.i.i.i57.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cy, %bb.cw, %bb.cu, %bb.cs, %bb.cq
  %.promoted.i.i.i.i.i.i63.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nu, %bb.cy ], [ %i.nm, %bb.cw ], [ %i.ne, %bb.cu ], [ %i.mw, %bb.cs ], [ %i.mq, %bb.cq ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i60.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.nx, %bb.cy ], [ %i.nq, %bb.cw ], [ %i.ni, %bb.cu ], [ %i.na, %bb.cs ], [ %i.ms, %bb.cq ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  %i.ny = icmp eq ptr %.promoted.i.i.i.i.i.i63.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.ny, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.cz

bb.cz:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i.i.i.i.i.i.i.i.i
  %i.nz = load i8, ptr %.promoted.i.i.i.i.i.i63.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2661, !noundef !6 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i63.i.i.i.i.i.i.i.i.i.i, i64 1 ; 3 uses
  store ptr %i.oa, ptr %1, align 8, !alias.scope !2662, !noalias !2663
  %i.ob = and i8 %i.nz, 127
  %i.oc = zext nneg i8 %i.ob to i32               ; 2 uses
  %i.od = icmp sgt i8 %i.nz, -1
  br i1 %i.od, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2664)
  %i.oe = icmp eq ptr %i.oa, %i.s
  br i1 %i.oe, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.of = load i8, ptr %i.oa, align 1, !noalias !2665, !noundef !6 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i63.i.i.i.i.i.i.i.i.i.i, i64 2 ; 3 uses
  store ptr %i.og, ptr %1, align 8, !alias.scope !2666, !noalias !2663
  %i.oh = and i8 %i.of, 127
  %i.oi = zext nneg i8 %i.oh to i32
  %i.oj = shl nuw nsw i32 %i.oi, 7
  %i.ok = or disjoint i32 %i.oj, %i.oc            ; 2 uses
  %i.ol = icmp sgt i8 %i.of, -1
  br i1 %i.ol, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2667)
  %i.om = icmp eq ptr %i.og, %i.s
  br i1 %i.om, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.on = load i8, ptr %i.og, align 1, !noalias !2668, !noundef !6 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i63.i.i.i.i.i.i.i.i.i.i, i64 3 ; 3 uses
  store ptr %i.oo, ptr %1, align 8, !alias.scope !2669, !noalias !2663
  %i.op = and i8 %i.on, 127
  %i.oq = zext nneg i8 %i.op to i32
  %i.or = shl nuw nsw i32 %i.oq, 14
  %i.os = or disjoint i32 %i.or, %i.ok            ; 2 uses
  %i.ot = icmp sgt i8 %i.on, -1
  br i1 %i.ot, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2670)
  %i.ou = icmp eq ptr %i.oo, %i.s
  br i1 %i.ou, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ov = load i8, ptr %i.oo, align 1, !noalias !2671, !noundef !6 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i63.i.i.i.i.i.i.i.i.i.i, i64 4 ; 3 uses
  store ptr %i.ow, ptr %1, align 8, !alias.scope !2672, !noalias !2663
  %i.ox = and i8 %i.ov, 127
  %i.oy = zext nneg i8 %i.ox to i32
  %i.oz = shl nuw nsw i32 %i.oy, 21
  %i.pa = or disjoint i32 %i.oz, %i.os            ; 2 uses
  %i.pb = icmp sgt i8 %i.ov, -1
  br i1 %i.pb, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2673)
  %i.pc = icmp eq ptr %i.ow, %i.s
  br i1 %i.pc, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.pd = load i8, ptr %i.ow, align 1, !noalias !2674, !noundef !6 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i63.i.i.i.i.i.i.i.i.i.i, i64 5
  store ptr %i.pe, ptr %1, align 8, !alias.scope !2675, !noalias !2663
  %i.pf = zext i8 %i.pd to i32
  %i.pg = shl nuw i32 %i.pf, 28
  %i.ph = or disjoint i32 %i.pg, %i.pa
  %or.cond35.not.i.i.i.i.i.i64.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.pd, 16
  br i1 %or.cond35.not.i.i.i.i.i.i64.i.i.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

bb.di:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs_1__NtB2n_10SubRequestNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2682)
  %i.pi = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.pi, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.pj = load i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2683, !noundef !6 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 3 uses
  store ptr %i.pk, ptr %1, align 8, !alias.scope !2684, !noalias !2685
  %i.pl = and i8 %i.pj, 127
  %i.pm = zext nneg i8 %i.pl to i32               ; 2 uses
  %i.pn = icmp sgt i8 %i.pj, -1
  br i1 %i.pn, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2686)
  %i.po = icmp eq ptr %i.pk, %i.s
  br i1 %i.po, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.pp = load i8, ptr %i.pk, align 1, !noalias !2687, !noundef !6 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 3 uses
  store ptr %i.pq, ptr %1, align 8, !alias.scope !2688, !noalias !2685
  %i.pr = and i8 %i.pp, 127
  %i.ps = zext nneg i8 %i.pr to i32
  %i.pt = shl nuw nsw i32 %i.ps, 7
  %i.pu = or disjoint i32 %i.pt, %i.pm            ; 2 uses
  %i.pv = icmp sgt i8 %i.pp, -1
  br i1 %i.pv, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2689)
  %i.pw = icmp eq ptr %i.pq, %i.s
  br i1 %i.pw, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.px = load i8, ptr %i.pq, align 1, !noalias !2690, !noundef !6 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3 ; 3 uses
  store ptr %i.py, ptr %1, align 8, !alias.scope !2691, !noalias !2685
  %i.pz = and i8 %i.px, 127
  %i.qa = zext nneg i8 %i.pz to i32
  %i.qb = shl nuw nsw i32 %i.qa, 14
  %i.qc = or disjoint i32 %i.qb, %i.pu            ; 2 uses
  %i.qd = icmp sgt i8 %i.px, -1
  br i1 %i.qd, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2692)
  %i.qe = icmp eq ptr %i.py, %i.s
  br i1 %i.qe, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.qf = load i8, ptr %i.py, align 1, !noalias !2693, !noundef !6 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 3 uses
  store ptr %i.qg, ptr %1, align 8, !alias.scope !2694, !noalias !2685
  %i.qh = and i8 %i.qf, 127
  %i.qi = zext nneg i8 %i.qh to i32
  %i.qj = shl nuw nsw i32 %i.qi, 21
  %i.qk = or disjoint i32 %i.qj, %i.qc            ; 2 uses
  %i.ql = icmp sgt i8 %i.qf, -1
  br i1 %i.ql, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2695)
  %i.qm = icmp eq ptr %i.qg, %i.s
  br i1 %i.qm, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.qn = load i8, ptr %i.qg, align 1, !noalias !2696, !noundef !6 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 5
  store ptr %i.qo, ptr %1, align 8, !alias.scope !2697, !noalias !2685
  %i.qp = zext i8 %i.qn to i32
  %i.qq = shl nuw i32 %i.qp, 28
  %i.qr = or disjoint i32 %i.qq, %i.qk
  %or.cond35.not.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i = icmp ult i8 %i.qn, 16
  br i1 %or.cond35.not.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

bb.ds:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs_1__NtB2n_10SubRequestNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2704)
  %i.qs = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.qs, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.qt = load i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2705, !noundef !6 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.qu, ptr %1, align 8, !alias.scope !2706, !noalias !2707
  %i.qv = and i8 %i.qt, 127
  %i.qw = zext nneg i8 %i.qv to i32               ; 2 uses
  %i.qx = icmp sgt i8 %i.qt, -1
  br i1 %i.qx, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i20.i.i.i.i.i.i.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2708)
  %i.qy = icmp eq ptr %i.qu, %i.s
  br i1 %i.qy, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.qz = load i8, ptr %i.qu, align 1, !noalias !2709, !noundef !6 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.ra, ptr %1, align 8, !alias.scope !2710, !noalias !2707
  %i.rb = and i8 %i.qz, 127
  %i.rc = zext nneg i8 %i.rb to i32
  %i.rd = shl nuw nsw i32 %i.rc, 7
  %i.re = or disjoint i32 %i.rd, %i.qw            ; 2 uses
  %i.rf = icmp sgt i8 %i.qz, -1
  br i1 %i.rf, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i20.i.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2711)
  %i.rg = icmp eq ptr %i.ra, %i.s
  br i1 %i.rg, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.rh = load i8, ptr %i.ra, align 1, !noalias !2712, !noundef !6 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.ri, ptr %1, align 8, !alias.scope !2713, !noalias !2707
  %i.rj = and i8 %i.rh, 127
  %i.rk = zext nneg i8 %i.rj to i32
  %i.rl = shl nuw nsw i32 %i.rk, 14
  %i.rm = or disjoint i32 %i.rl, %i.re            ; 2 uses
  %i.rn = icmp sgt i8 %i.rh, -1
  br i1 %i.rn, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i20.i.i.i.i.i.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2714)
  %i.ro = icmp eq ptr %i.ri, %i.s
  br i1 %i.ro, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.rp = load i8, ptr %i.ri, align 1, !noalias !2715, !noundef !6 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.rq, ptr %1, align 8, !alias.scope !2716, !noalias !2707
  %i.rr = and i8 %i.rp, 127
  %i.rs = zext nneg i8 %i.rr to i32
  %i.rt = shl nuw nsw i32 %i.rs, 21
  %i.ru = or disjoint i32 %i.rt, %i.rm            ; 2 uses
  %i.rv = icmp sgt i8 %i.rp, -1
  br i1 %i.rv, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i20.i.i.i.i.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2717)
  %i.rw = icmp eq ptr %i.rq, %i.s
  br i1 %i.rw, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.rx = load i8, ptr %i.rq, align 1, !noalias !2718, !noundef !6 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.ry, ptr %1, align 8, !alias.scope !2719, !noalias !2707
  %i.rz = zext i8 %i.rx to i32
  %i.sa = shl nuw i32 %i.rz, 28
  %i.sb = or disjoint i32 %i.sa, %i.ru
  %or.cond35.not.i.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i = icmp ult i8 %i.rx, 16
  br i1 %or.cond35.not.i.i.i.i.i.i.i.i17.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i20.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i20.i.i.i.i.i.i.i.i: ; preds = %bb.eb, %bb.dz, %bb.dx, %bb.dv, %bb.dt
  %.promoted.i.i.i.i.i.i37.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ry, %bb.eb ], [ %i.rq, %bb.dz ], [ %i.ri, %bb.dx ], [ %i.ra, %bb.dv ], [ %i.qu, %bb.dt ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i.i.i21.i.i.i.i.i.i.i.i = phi i32 [ %i.sb, %bb.eb ], [ %i.ru, %bb.dz ], [ %i.rm, %bb.dx ], [ %i.re, %bb.dv ], [ %i.qw, %bb.dt ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2724)
  %i.sc = icmp eq ptr %.promoted.i.i.i.i.i.i37.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.sc, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ec

bb.ec:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i20.i.i.i.i.i.i.i.i
  %i.sd = load i8, ptr %.promoted.i.i.i.i.i.i37.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2725, !noundef !6 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i37.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.se, ptr %1, align 8, !alias.scope !2726, !noalias !2727
  %i.sf = and i8 %i.sd, 127
  %i.sg = zext nneg i8 %i.sf to i32               ; 2 uses
  %i.sh = icmp sgt i8 %i.sd, -1
  br i1 %i.sh, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit42.i.i.i.i.i.i.i.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2728)
  %i.si = icmp eq ptr %i.se, %i.s
  br i1 %i.si, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.sj = load i8, ptr %i.se, align 1, !noalias !2729, !noundef !6 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i37.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.sk, ptr %1, align 8, !alias.scope !2730, !noalias !2727
  %i.sl = and i8 %i.sj, 127
  %i.sm = zext nneg i8 %i.sl to i32
  %i.sn = shl nuw nsw i32 %i.sm, 7
  %i.so = or disjoint i32 %i.sn, %i.sg            ; 2 uses
  %i.sp = icmp sgt i8 %i.sj, -1
  br i1 %i.sp, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit42.i.i.i.i.i.i.i.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2731)
  %i.sq = icmp eq ptr %i.sk, %i.s
  br i1 %i.sq, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.sr = load i8, ptr %i.sk, align 1, !noalias !2732, !noundef !6 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i37.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.ss, ptr %1, align 8, !alias.scope !2733, !noalias !2727
  %i.st = and i8 %i.sr, 127
  %i.su = zext nneg i8 %i.st to i32
  %i.sv = shl nuw nsw i32 %i.su, 14
  %i.sw = or disjoint i32 %i.sv, %i.so            ; 2 uses
  %i.sx = icmp sgt i8 %i.sr, -1
  br i1 %i.sx, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit42.i.i.i.i.i.i.i.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2734)
  %i.sy = icmp eq ptr %i.ss, %i.s
  br i1 %i.sy, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.sz = load i8, ptr %i.ss, align 1, !noalias !2735, !noundef !6 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i37.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.ta, ptr %1, align 8, !alias.scope !2736, !noalias !2727
  %i.tb = and i8 %i.sz, 127
  %i.tc = zext nneg i8 %i.tb to i32
  %i.td = shl nuw nsw i32 %i.tc, 21
  %i.te = or disjoint i32 %i.td, %i.sw            ; 2 uses
  %i.tf = icmp sgt i8 %i.sz, -1
  br i1 %i.tf, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit42.i.i.i.i.i.i.i.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2737)
  %i.tg = icmp eq ptr %i.ta, %i.s
  br i1 %i.tg, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.th = load i8, ptr %i.ta, align 1, !noalias !2738, !noundef !6 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i37.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.ti, ptr %1, align 8, !alias.scope !2739, !noalias !2727
  %i.tj = zext i8 %i.th to i32
  %i.tk = shl nuw i32 %i.tj, 28
  %i.tl = or disjoint i32 %i.tk, %i.te
  %or.cond35.not.i.i.i.i.i.i38.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.th, 16
  br i1 %or.cond35.not.i.i.i.i.i.i38.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit42.i.i.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit42.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ek, %bb.ei, %bb.eg, %bb.ee, %bb.ec
  %.promoted.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ti, %bb.ek ], [ %i.ta, %bb.ei ], [ %i.ss, %bb.eg ], [ %i.sk, %bb.ee ], [ %i.se, %bb.ec ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i41.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.tl, %bb.ek ], [ %i.te, %bb.ei ], [ %i.sw, %bb.eg ], [ %i.so, %bb.ee ], [ %i.sg, %bb.ec ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2744)
  %i.tm = icmp eq ptr %.promoted.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.tm, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.el

bb.el:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit42.i.i.i.i.i.i.i.i.i.i
  %i.tn = load i8, ptr %.promoted.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2745, !noundef !6 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.i.i, i64 1 ; 3 uses
  store ptr %i.to, ptr %1, align 8, !alias.scope !2746, !noalias !2747
  %i.tp = and i8 %i.tn, 127
  %i.tq = zext nneg i8 %i.tp to i32               ; 2 uses
  %i.tr = icmp sgt i8 %i.tn, -1
  br i1 %i.tr, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2748)
  %i.ts = icmp eq ptr %i.to, %i.s
  br i1 %i.ts, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.tt = load i8, ptr %i.to, align 1, !noalias !2749, !noundef !6 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.i.i, i64 2 ; 3 uses
  store ptr %i.tu, ptr %1, align 8, !alias.scope !2750, !noalias !2747
  %i.tv = and i8 %i.tt, 127
  %i.tw = zext nneg i8 %i.tv to i32
  %i.tx = shl nuw nsw i32 %i.tw, 7
  %i.ty = or disjoint i32 %i.tx, %i.tq            ; 2 uses
  %i.tz = icmp sgt i8 %i.tt, -1
  br i1 %i.tz, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2751)
  %i.ua = icmp eq ptr %i.tu, %i.s
  br i1 %i.ua, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ub = load i8, ptr %i.tu, align 1, !noalias !2752, !noundef !6 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.i.i, i64 3 ; 3 uses
  store ptr %i.uc, ptr %1, align 8, !alias.scope !2753, !noalias !2747
  %i.ud = and i8 %i.ub, 127
  %i.ue = zext nneg i8 %i.ud to i32
  %i.uf = shl nuw nsw i32 %i.ue, 14
  %i.ug = or disjoint i32 %i.uf, %i.ty            ; 2 uses
  %i.uh = icmp sgt i8 %i.ub, -1
  br i1 %i.uh, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2754)
  %i.ui = icmp eq ptr %i.uc, %i.s
  br i1 %i.ui, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.uj = load i8, ptr %i.uc, align 1, !noalias !2755, !noundef !6 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.i.i, i64 4 ; 3 uses
  store ptr %i.uk, ptr %1, align 8, !alias.scope !2756, !noalias !2747
  %i.ul = and i8 %i.uj, 127
  %i.um = zext nneg i8 %i.ul to i32
  %i.un = shl nuw nsw i32 %i.um, 21
  %i.uo = or disjoint i32 %i.un, %i.ug            ; 2 uses
  %i.up = icmp sgt i8 %i.uj, -1
  br i1 %i.up, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2757)
  %i.uq = icmp eq ptr %i.uk, %i.s
  br i1 %i.uq, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ur = load i8, ptr %i.uk, align 1, !noalias !2758, !noundef !6 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.i.i, i64 5
  store ptr %i.us, ptr %1, align 8, !alias.scope !2759, !noalias !2747
  %i.ut = zext i8 %i.ur to i32
  %i.uu = shl nuw i32 %i.ut, 28
  %i.uv = or disjoint i32 %i.uu, %i.uo
  %or.cond35.not.i.i.i.i.i.i45.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ur, 16
  br i1 %or.cond35.not.i.i.i.i.i.i45.i.i.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

bb.eu:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs_1__NtB2n_10SubRequestNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2766)
  %i.uw = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.uw, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ux = load i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2767, !noundef !6 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.uy, ptr %1, align 8, !alias.scope !2768, !noalias !2769
  %i.uz = and i8 %i.ux, 127
  %i.va = zext nneg i8 %i.uz to i32               ; 2 uses
  %i.vb = icmp sgt i8 %i.ux, -1
  br i1 %i.vb, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i28.i.i.i.i.i.i.i.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2770)
  %i.vc = icmp eq ptr %i.uy, %i.s
  br i1 %i.vc, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.vd = load i8, ptr %i.uy, align 1, !noalias !2771, !noundef !6 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.ve, ptr %1, align 8, !alias.scope !2772, !noalias !2769
  %i.vf = and i8 %i.vd, 127
  %i.vg = zext nneg i8 %i.vf to i32
  %i.vh = shl nuw nsw i32 %i.vg, 7
  %i.vi = or disjoint i32 %i.vh, %i.va            ; 2 uses
  %i.vj = icmp sgt i8 %i.vd, -1
  br i1 %i.vj, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i28.i.i.i.i.i.i.i.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2773)
  %i.vk = icmp eq ptr %i.ve, %i.s
  br i1 %i.vk, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.vl = load i8, ptr %i.ve, align 1, !noalias !2774, !noundef !6 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.vm, ptr %1, align 8, !alias.scope !2775, !noalias !2769
  %i.vn = and i8 %i.vl, 127
  %i.vo = zext nneg i8 %i.vn to i32
  %i.vp = shl nuw nsw i32 %i.vo, 14
  %i.vq = or disjoint i32 %i.vp, %i.vi            ; 2 uses
  %i.vr = icmp sgt i8 %i.vl, -1
  br i1 %i.vr, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i28.i.i.i.i.i.i.i.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2776)
  %i.vs = icmp eq ptr %i.vm, %i.s
  br i1 %i.vs, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.vt = load i8, ptr %i.vm, align 1, !noalias !2777, !noundef !6 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.vu, ptr %1, align 8, !alias.scope !2778, !noalias !2769
  %i.vv = and i8 %i.vt, 127
  %i.vw = zext nneg i8 %i.vv to i32
  %i.vx = shl nuw nsw i32 %i.vw, 21
  %i.vy = or disjoint i32 %i.vx, %i.vq            ; 2 uses
  %i.vz = icmp sgt i8 %i.vt, -1
  br i1 %i.vz, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i28.i.i.i.i.i.i.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2779)
  %i.wa = icmp eq ptr %i.vu, %i.s
  br i1 %i.wa, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.wb = load i8, ptr %i.vu, align 1, !noalias !2780, !noundef !6 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.wc, ptr %1, align 8, !alias.scope !2781, !noalias !2769
  %i.wd = zext i8 %i.wb to i32
  %i.we = shl nuw i32 %i.wd, 28
  %i.wf = or disjoint i32 %i.we, %i.vy
  %or.cond35.not.i.i.i.i.i.i.i.i25.i.i.i.i.i.i.i.i = icmp ult i8 %i.wb, 16
  br i1 %or.cond35.not.i.i.i.i.i.i.i.i25.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i28.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i28.i.i.i.i.i.i.i.i: ; preds = %bb.fd, %bb.fb, %bb.ez, %bb.ex, %bb.ev
  %.promoted.i.i.i.i.i.i49.i.i29.i.i.i.i.i.i.i.i = phi ptr [ %i.wc, %bb.fd ], [ %i.vu, %bb.fb ], [ %i.vm, %bb.ez ], [ %i.ve, %bb.ex ], [ %i.uy, %bb.ev ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i.i.i30.i.i.i.i.i.i.i.i = phi i32 [ %i.wf, %bb.fd ], [ %i.vy, %bb.fb ], [ %i.vq, %bb.ez ], [ %i.vi, %bb.ex ], [ %i.va, %bb.ev ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2786)
  %i.wg = icmp eq ptr %.promoted.i.i.i.i.i.i49.i.i29.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.wg, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.fe

bb.fe:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i28.i.i.i.i.i.i.i.i
  %i.wh = load i8, ptr %.promoted.i.i.i.i.i.i49.i.i29.i.i.i.i.i.i.i.i, align 1, !noalias !2787, !noundef !6 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i49.i.i29.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.wi, ptr %1, align 8, !alias.scope !2788, !noalias !2789
  %i.wj = and i8 %i.wh, 127
  %i.wk = zext nneg i8 %i.wj to i32               ; 2 uses
  %i.wl = icmp sgt i8 %i.wh, -1
  br i1 %i.wl, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i34.i.i.i.i.i.i.i.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2790)
  %i.wm = icmp eq ptr %i.wi, %i.s
  br i1 %i.wm, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.wn = load i8, ptr %i.wi, align 1, !noalias !2791, !noundef !6 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i49.i.i29.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.wo, ptr %1, align 8, !alias.scope !2792, !noalias !2789
  %i.wp = and i8 %i.wn, 127
  %i.wq = zext nneg i8 %i.wp to i32
  %i.wr = shl nuw nsw i32 %i.wq, 7
  %i.ws = or disjoint i32 %i.wr, %i.wk            ; 2 uses
  %i.wt = icmp sgt i8 %i.wn, -1
  br i1 %i.wt, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i34.i.i.i.i.i.i.i.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2793)
  %i.wu = icmp eq ptr %i.wo, %i.s
  br i1 %i.wu, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.wv = load i8, ptr %i.wo, align 1, !noalias !2794, !noundef !6 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i49.i.i29.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.ww, ptr %1, align 8, !alias.scope !2795, !noalias !2789
  %i.wx = and i8 %i.wv, 127
  %i.wy = zext nneg i8 %i.wx to i32
  %i.wz = shl nuw nsw i32 %i.wy, 14
  %i.xa = or disjoint i32 %i.wz, %i.ws            ; 2 uses
  %i.xb = icmp sgt i8 %i.wv, -1
  br i1 %i.xb, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i34.i.i.i.i.i.i.i.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2796)
  %i.xc = icmp eq ptr %i.ww, %i.s
  br i1 %i.xc, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.xd = load i8, ptr %i.ww, align 1, !noalias !2797, !noundef !6 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i49.i.i29.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.xe, ptr %1, align 8, !alias.scope !2798, !noalias !2789
  %i.xf = and i8 %i.xd, 127
  %i.xg = zext nneg i8 %i.xf to i32
  %i.xh = shl nuw nsw i32 %i.xg, 21
  %i.xi = or disjoint i32 %i.xh, %i.xa            ; 2 uses
  %i.xj = icmp sgt i8 %i.xd, -1
  br i1 %i.xj, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i34.i.i.i.i.i.i.i.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2799)
  %i.xk = icmp eq ptr %i.xe, %i.s
  br i1 %i.xk, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.xl = load i8, ptr %i.xe, align 1, !noalias !2800, !noundef !6 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i49.i.i29.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.xm, ptr %1, align 8, !alias.scope !2801, !noalias !2789
  %i.xn = zext i8 %i.xl to i32
  %i.xo = shl nuw i32 %i.xn, 28
  %i.xp = or disjoint i32 %i.xo, %i.xi
  %or.cond35.not.i.i.i.i.i.i50.i.i31.i.i.i.i.i.i.i.i = icmp ult i8 %i.xl, 16
  br i1 %or.cond35.not.i.i.i.i.i.i50.i.i31.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i34.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i34.i.i.i.i.i.i.i.i: ; preds = %bb.fm, %bb.fk, %bb.fi, %bb.fg, %bb.fe
  %.promoted.i.i.i.i.i.i56.i.i35.i.i.i.i.i.i.i.i = phi ptr [ %i.xm, %bb.fm ], [ %i.xe, %bb.fk ], [ %i.ww, %bb.fi ], [ %i.wo, %bb.fg ], [ %i.wi, %bb.fe ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i53.i.i36.i.i.i.i.i.i.i.i = phi i32 [ %i.xp, %bb.fm ], [ %i.xi, %bb.fk ], [ %i.xa, %bb.fi ], [ %i.ws, %bb.fg ], [ %i.wk, %bb.fe ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2806)
  %i.xq = icmp eq ptr %.promoted.i.i.i.i.i.i56.i.i35.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.xq, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.fn

bb.fn:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i34.i.i.i.i.i.i.i.i
  %i.xr = load i8, ptr %.promoted.i.i.i.i.i.i56.i.i35.i.i.i.i.i.i.i.i, align 1, !noalias !2807, !noundef !6 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i56.i.i35.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.xs, ptr %1, align 8, !alias.scope !2808, !noalias !2809
  %i.xt = and i8 %i.xr, 127
  %i.xu = zext nneg i8 %i.xt to i32               ; 2 uses
  %i.xv = icmp sgt i8 %i.xr, -1
  br i1 %i.xv, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i40.i.i.i.i.i.i.i.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2810)
  %i.xw = icmp eq ptr %i.xs, %i.s
  br i1 %i.xw, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.xx = load i8, ptr %i.xs, align 1, !noalias !2811, !noundef !6 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i56.i.i35.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.xy, ptr %1, align 8, !alias.scope !2812, !noalias !2809
  %i.xz = and i8 %i.xx, 127
  %i.ya = zext nneg i8 %i.xz to i32
  %i.yb = shl nuw nsw i32 %i.ya, 7
  %i.yc = or disjoint i32 %i.yb, %i.xu            ; 2 uses
  %i.yd = icmp sgt i8 %i.xx, -1
  br i1 %i.yd, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i40.i.i.i.i.i.i.i.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2813)
  %i.ye = icmp eq ptr %i.xy, %i.s
  br i1 %i.ye, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.yf = load i8, ptr %i.xy, align 1, !noalias !2814, !noundef !6 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i56.i.i35.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.yg, ptr %1, align 8, !alias.scope !2815, !noalias !2809
  %i.yh = and i8 %i.yf, 127
  %i.yi = zext nneg i8 %i.yh to i32
  %i.yj = shl nuw nsw i32 %i.yi, 14
  %i.yk = or disjoint i32 %i.yj, %i.yc            ; 2 uses
  %i.yl = icmp sgt i8 %i.yf, -1
  br i1 %i.yl, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i40.i.i.i.i.i.i.i.i, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2816)
  %i.ym = icmp eq ptr %i.yg, %i.s
  br i1 %i.ym, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.yn = load i8, ptr %i.yg, align 1, !noalias !2817, !noundef !6 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i56.i.i35.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.yo, ptr %1, align 8, !alias.scope !2818, !noalias !2809
  %i.yp = and i8 %i.yn, 127
  %i.yq = zext nneg i8 %i.yp to i32
  %i.yr = shl nuw nsw i32 %i.yq, 21
  %i.ys = or disjoint i32 %i.yr, %i.yk            ; 2 uses
  %i.yt = icmp sgt i8 %i.yn, -1
  br i1 %i.yt, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i40.i.i.i.i.i.i.i.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2819)
  %i.yu = icmp eq ptr %i.yo, %i.s
  br i1 %i.yu, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.yv = load i8, ptr %i.yo, align 1, !noalias !2820, !noundef !6 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i56.i.i35.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.yw, ptr %1, align 8, !alias.scope !2821, !noalias !2809
  %i.yx = zext i8 %i.yv to i32
  %i.yy = shl nuw i32 %i.yx, 28
  %i.yz = or disjoint i32 %i.yy, %i.ys
  %or.cond35.not.i.i.i.i.i.i57.i.i37.i.i.i.i.i.i.i.i = icmp ult i8 %i.yv, 16
  br i1 %or.cond35.not.i.i.i.i.i.i57.i.i37.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i40.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i40.i.i.i.i.i.i.i.i: ; preds = %bb.fv, %bb.ft, %bb.fr, %bb.fp, %bb.fn
  %.promoted.i.i.i.i.i.i63.i.i41.i.i.i.i.i.i.i.i = phi ptr [ %i.yw, %bb.fv ], [ %i.yo, %bb.ft ], [ %i.yg, %bb.fr ], [ %i.xy, %bb.fp ], [ %i.xs, %bb.fn ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i60.i.i42.i.i.i.i.i.i.i.i = phi i32 [ %i.yz, %bb.fv ], [ %i.ys, %bb.ft ], [ %i.yk, %bb.fr ], [ %i.yc, %bb.fp ], [ %i.xu, %bb.fn ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2826)
  %i.za = icmp eq ptr %.promoted.i.i.i.i.i.i63.i.i41.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.za, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.fw

bb.fw:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i40.i.i.i.i.i.i.i.i
  %i.zb = load i8, ptr %.promoted.i.i.i.i.i.i63.i.i41.i.i.i.i.i.i.i.i, align 1, !noalias !2827, !noundef !6 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i63.i.i41.i.i.i.i.i.i.i.i, i64 1 ; 3 uses
  store ptr %i.zc, ptr %1, align 8, !alias.scope !2828, !noalias !2829
  %i.zd = and i8 %i.zb, 127
  %i.ze = zext nneg i8 %i.zd to i32               ; 2 uses
  %i.zf = icmp sgt i8 %i.zb, -1
  br i1 %i.zf, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2830)
  %i.zg = icmp eq ptr %i.zc, %i.s
  br i1 %i.zg, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.zh = load i8, ptr %i.zc, align 1, !noalias !2831, !noundef !6 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i63.i.i41.i.i.i.i.i.i.i.i, i64 2 ; 3 uses
  store ptr %i.zi, ptr %1, align 8, !alias.scope !2832, !noalias !2829
  %i.zj = and i8 %i.zh, 127
  %i.zk = zext nneg i8 %i.zj to i32
  %i.zl = shl nuw nsw i32 %i.zk, 7
  %i.zm = or disjoint i32 %i.zl, %i.ze            ; 2 uses
  %i.zn = icmp sgt i8 %i.zh, -1
  br i1 %i.zn, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2833)
  %i.zo = icmp eq ptr %i.zi, %i.s
  br i1 %i.zo, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.zp = load i8, ptr %i.zi, align 1, !noalias !2834, !noundef !6 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i63.i.i41.i.i.i.i.i.i.i.i, i64 3 ; 3 uses
  store ptr %i.zq, ptr %1, align 8, !alias.scope !2835, !noalias !2829
  %i.zr = and i8 %i.zp, 127
  %i.zs = zext nneg i8 %i.zr to i32
  %i.zt = shl nuw nsw i32 %i.zs, 14
  %i.zu = or disjoint i32 %i.zt, %i.zm            ; 2 uses
  %i.zv = icmp sgt i8 %i.zp, -1
  br i1 %i.zv, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2836)
  %i.zw = icmp eq ptr %i.zq, %i.s
  br i1 %i.zw, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.zx = load i8, ptr %i.zq, align 1, !noalias !2837, !noundef !6 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i63.i.i41.i.i.i.i.i.i.i.i, i64 4 ; 3 uses
  store ptr %i.zy, ptr %1, align 8, !alias.scope !2838, !noalias !2829
  %i.zz = and i8 %i.zx, 127
  %i.aaa = zext nneg i8 %i.zz to i32
  %i.aab = shl nuw nsw i32 %i.aaa, 21
  %i.aac = or disjoint i32 %i.aab, %i.zu          ; 2 uses
  %i.aad = icmp sgt i8 %i.zx, -1
  br i1 %i.aad, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2839)
  %i.aae = icmp eq ptr %i.zy, %i.s
  br i1 %i.aae, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aaf = load i8, ptr %i.zy, align 1, !noalias !2840, !noundef !6 ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i63.i.i41.i.i.i.i.i.i.i.i, i64 5
  store ptr %i.aag, ptr %1, align 8, !alias.scope !2841, !noalias !2829
  %i.aah = zext i8 %i.aaf to i32
  %i.aai = shl nuw i32 %i.aah, 28
  %i.aaj = or disjoint i32 %i.aai, %i.aac
  %or.cond35.not.i.i.i.i.i.i64.i.i43.i.i.i.i.i.i.i.i = icmp ult i8 %i.aaf, 16
  br i1 %or.cond35.not.i.i.i.i.i.i64.i.i43.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

bb.gf:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs_1__NtB2n_10SubRequestNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2848)
  %i.aak = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.aak, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aal = load i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2849, !noundef !6 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.aam, ptr %1, align 8, !alias.scope !2850, !noalias !2851
  %i.aan = and i8 %i.aal, 127
  %i.aao = zext nneg i8 %i.aan to i32             ; 2 uses
  %i.aap = icmp sgt i8 %i.aal, -1
  br i1 %i.aap, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i56.i.i.i.i.i.i.i.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2852)
  %i.aaq = icmp eq ptr %i.aam, %i.s
  br i1 %i.aaq, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.aar = load i8, ptr %i.aam, align 1, !noalias !2853, !noundef !6 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.aas, ptr %1, align 8, !alias.scope !2854, !noalias !2851
  %i.aat = and i8 %i.aar, 127
  %i.aau = zext nneg i8 %i.aat to i32
  %i.aav = shl nuw nsw i32 %i.aau, 7
  %i.aaw = or disjoint i32 %i.aav, %i.aao         ; 2 uses
  %i.aax = icmp sgt i8 %i.aar, -1
  br i1 %i.aax, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i56.i.i.i.i.i.i.i.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2855)
  %i.aay = icmp eq ptr %i.aas, %i.s
  br i1 %i.aay, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.aaz = load i8, ptr %i.aas, align 1, !noalias !2856, !noundef !6 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.aba, ptr %1, align 8, !alias.scope !2857, !noalias !2851
  %i.abb = and i8 %i.aaz, 127
  %i.abc = zext nneg i8 %i.abb to i32
  %i.abd = shl nuw nsw i32 %i.abc, 14
  %i.abe = or disjoint i32 %i.abd, %i.aaw         ; 2 uses
  %i.abf = icmp sgt i8 %i.aaz, -1
  br i1 %i.abf, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i56.i.i.i.i.i.i.i.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2858)
  %i.abg = icmp eq ptr %i.aba, %i.s
  br i1 %i.abg, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.abh = load i8, ptr %i.aba, align 1, !noalias !2859, !noundef !6 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.abi, ptr %1, align 8, !alias.scope !2860, !noalias !2851
  %i.abj = and i8 %i.abh, 127
  %i.abk = zext nneg i8 %i.abj to i32
  %i.abl = shl nuw nsw i32 %i.abk, 21
  %i.abm = or disjoint i32 %i.abl, %i.abe         ; 2 uses
  %i.abn = icmp sgt i8 %i.abh, -1
  br i1 %i.abn, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i56.i.i.i.i.i.i.i.i, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2861)
  %i.abo = icmp eq ptr %i.abi, %i.s
  br i1 %i.abo, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.abp = load i8, ptr %i.abi, align 1, !noalias !2862, !noundef !6 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.abq, ptr %1, align 8, !alias.scope !2863, !noalias !2851
  %i.abr = zext i8 %i.abp to i32
  %i.abs = shl nuw i32 %i.abr, 28
  %i.abt = or disjoint i32 %i.abs, %i.abm
  %or.cond35.not.i.i.i.i.i.i.i.i53.i.i.i.i.i.i.i.i = icmp ult i8 %i.abp, 16
  br i1 %or.cond35.not.i.i.i.i.i.i.i.i53.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i56.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i56.i.i.i.i.i.i.i.i: ; preds = %bb.go, %bb.gm, %bb.gk, %bb.gi, %bb.gg
  %.promoted.i.i.i.i.i.i61.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.abq, %bb.go ], [ %i.abi, %bb.gm ], [ %i.aba, %bb.gk ], [ %i.aas, %bb.gi ], [ %i.aam, %bb.gg ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i.i.i57.i.i.i.i.i.i.i.i = phi i32 [ %i.abt, %bb.go ], [ %i.abm, %bb.gm ], [ %i.abe, %bb.gk ], [ %i.aaw, %bb.gi ], [ %i.aao, %bb.gg ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2868)
  %i.abu = icmp eq ptr %.promoted.i.i.i.i.i.i61.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.abu, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.gp

bb.gp:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i56.i.i.i.i.i.i.i.i
  %i.abv = load i8, ptr %.promoted.i.i.i.i.i.i61.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2869, !noundef !6 ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i61.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.abw, ptr %1, align 8, !alias.scope !2870, !noalias !2871
  %i.abx = and i8 %i.abv, 127
  %i.aby = zext nneg i8 %i.abx to i32             ; 2 uses
  %i.abz = icmp sgt i8 %i.abv, -1
  br i1 %i.abz, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i.i.i.i.i.i.i.i.i, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2872)
  %i.aca = icmp eq ptr %i.abw, %i.s
  br i1 %i.aca, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.acb = load i8, ptr %i.abw, align 1, !noalias !2873, !noundef !6 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i61.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.acc, ptr %1, align 8, !alias.scope !2874, !noalias !2871
  %i.acd = and i8 %i.acb, 127
  %i.ace = zext nneg i8 %i.acd to i32
  %i.acf = shl nuw nsw i32 %i.ace, 7
  %i.acg = or disjoint i32 %i.acf, %i.aby         ; 2 uses
  %i.ach = icmp sgt i8 %i.acb, -1
  br i1 %i.ach, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i.i.i.i.i.i.i.i.i, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2875)
  %i.aci = icmp eq ptr %i.acc, %i.s
  br i1 %i.aci, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.acj = load i8, ptr %i.acc, align 1, !noalias !2876, !noundef !6 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i61.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.ack, ptr %1, align 8, !alias.scope !2877, !noalias !2871
  %i.acl = and i8 %i.acj, 127
  %i.acm = zext nneg i8 %i.acl to i32
  %i.acn = shl nuw nsw i32 %i.acm, 14
  %i.aco = or disjoint i32 %i.acn, %i.acg         ; 2 uses
  %i.acp = icmp sgt i8 %i.acj, -1
  br i1 %i.acp, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i.i.i.i.i.i.i.i.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2878)
  %i.acq = icmp eq ptr %i.ack, %i.s
  br i1 %i.acq, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.acr = load i8, ptr %i.ack, align 1, !noalias !2879, !noundef !6 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i61.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.acs, ptr %1, align 8, !alias.scope !2880, !noalias !2871
  %i.act = and i8 %i.acr, 127
  %i.acu = zext nneg i8 %i.act to i32
  %i.acv = shl nuw nsw i32 %i.acu, 21
  %i.acw = or disjoint i32 %i.acv, %i.aco         ; 2 uses
  %i.acx = icmp sgt i8 %i.acr, -1
  br i1 %i.acx, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i.i.i.i.i.i.i.i.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2881)
  %i.acy = icmp eq ptr %i.acs, %i.s
  br i1 %i.acy, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.acz = load i8, ptr %i.acs, align 1, !noalias !2882, !noundef !6 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i61.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.ada, ptr %1, align 8, !alias.scope !2883, !noalias !2871
  %i.adb = zext i8 %i.acz to i32
  %i.adc = shl nuw i32 %i.adb, 28
  %i.add = or disjoint i32 %i.adc, %i.acw
  %or.cond35.not.i.i.i.i.i.i62.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.acz, 16
  br i1 %or.cond35.not.i.i.i.i.i.i62.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gx, %bb.gv, %bb.gt, %bb.gr, %bb.gp
  %.promoted.i.i.i.i.i.i68.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ada, %bb.gx ], [ %i.acs, %bb.gv ], [ %i.ack, %bb.gt ], [ %i.acc, %bb.gr ], [ %i.abw, %bb.gp ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i65.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.add, %bb.gx ], [ %i.acw, %bb.gv ], [ %i.aco, %bb.gt ], [ %i.acg, %bb.gr ], [ %i.aby, %bb.gp ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2888)
  %i.ade = icmp eq ptr %.promoted.i.i.i.i.i.i68.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.ade, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.gy

bb.gy:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i.i.i.i.i.i.i.i.i
  %i.adf = load i8, ptr %.promoted.i.i.i.i.i.i68.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2889, !noundef !6 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i68.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.adg, ptr %1, align 8, !alias.scope !2890, !noalias !2891
  %i.adh = and i8 %i.adf, 127
  %i.adi = zext nneg i8 %i.adh to i32             ; 2 uses
  %i.adj = icmp sgt i8 %i.adf, -1
  br i1 %i.adj, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i.i.i.i.i.i.i.i.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2892)
  %i.adk = icmp eq ptr %i.adg, %i.s
  br i1 %i.adk, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.adl = load i8, ptr %i.adg, align 1, !noalias !2893, !noundef !6 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i68.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.adm, ptr %1, align 8, !alias.scope !2894, !noalias !2891
  %i.adn = and i8 %i.adl, 127
  %i.ado = zext nneg i8 %i.adn to i32
  %i.adp = shl nuw nsw i32 %i.ado, 7
  %i.adq = or disjoint i32 %i.adp, %i.adi         ; 2 uses
  %i.adr = icmp sgt i8 %i.adl, -1
  br i1 %i.adr, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i.i.i.i.i.i.i.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2895)
  %i.ads = icmp eq ptr %i.adm, %i.s
  br i1 %i.ads, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.adt = load i8, ptr %i.adm, align 1, !noalias !2896, !noundef !6 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i68.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.adu, ptr %1, align 8, !alias.scope !2897, !noalias !2891
  %i.adv = and i8 %i.adt, 127
  %i.adw = zext nneg i8 %i.adv to i32
  %i.adx = shl nuw nsw i32 %i.adw, 14
  %i.ady = or disjoint i32 %i.adx, %i.adq         ; 2 uses
  %i.adz = icmp sgt i8 %i.adt, -1
  br i1 %i.adz, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i.i.i.i.i.i.i.i.i, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2898)
  %i.aea = icmp eq ptr %i.adu, %i.s
  br i1 %i.aea, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.aeb = load i8, ptr %i.adu, align 1, !noalias !2899, !noundef !6 ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i68.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.aec, ptr %1, align 8, !alias.scope !2900, !noalias !2891
  %i.aed = and i8 %i.aeb, 127
  %i.aee = zext nneg i8 %i.aed to i32
  %i.aef = shl nuw nsw i32 %i.aee, 21
  %i.aeg = or disjoint i32 %i.aef, %i.ady         ; 2 uses
  %i.aeh = icmp sgt i8 %i.aeb, -1
  br i1 %i.aeh, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i.i.i.i.i.i.i.i.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2901)
  %i.aei = icmp eq ptr %i.aec, %i.s
  br i1 %i.aei, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.aej = load i8, ptr %i.aec, align 1, !noalias !2902, !noundef !6 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i68.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.aek, ptr %1, align 8, !alias.scope !2903, !noalias !2891
  %i.ael = zext i8 %i.aej to i32
  %i.aem = shl nuw i32 %i.ael, 28
  %i.aen = or disjoint i32 %i.aem, %i.aeg
  %or.cond35.not.i.i.i.i.i.i69.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.aej, 16
  br i1 %or.cond35.not.i.i.i.i.i.i69.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hg, %bb.he, %bb.hc, %bb.ha, %bb.gy
  %.promoted.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aek, %bb.hg ], [ %i.aec, %bb.he ], [ %i.adu, %bb.hc ], [ %i.adm, %bb.ha ], [ %i.adg, %bb.gy ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i72.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aen, %bb.hg ], [ %i.aeg, %bb.he ], [ %i.ady, %bb.hc ], [ %i.adq, %bb.ha ], [ %i.adi, %bb.gy ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2908)
  %i.aeo = icmp eq ptr %.promoted.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.aeo, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.hh

bb.hh:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i.i.i.i.i.i.i.i.i
  %i.aep = load i8, ptr %.promoted.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2909, !noundef !6 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.aeq, ptr %1, align 8, !alias.scope !2910, !noalias !2911
  %i.aer = and i8 %i.aep, 127
  %i.aes = zext nneg i8 %i.aer to i32             ; 2 uses
  %i.aet = icmp sgt i8 %i.aep, -1
  br i1 %i.aet, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i.i.i.i.i.i.i.i.i, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2912)
  %i.aeu = icmp eq ptr %i.aeq, %i.s
  br i1 %i.aeu, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.aev = load i8, ptr %i.aeq, align 1, !noalias !2913, !noundef !6 ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.aew, ptr %1, align 8, !alias.scope !2914, !noalias !2911
  %i.aex = and i8 %i.aev, 127
  %i.aey = zext nneg i8 %i.aex to i32
  %i.aez = shl nuw nsw i32 %i.aey, 7
  %i.afa = or disjoint i32 %i.aez, %i.aes         ; 2 uses
  %i.afb = icmp sgt i8 %i.aev, -1
  br i1 %i.afb, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i.i.i.i.i.i.i.i.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2915)
  %i.afc = icmp eq ptr %i.aew, %i.s
  br i1 %i.afc, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.afd = load i8, ptr %i.aew, align 1, !noalias !2916, !noundef !6 ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.afe, ptr %1, align 8, !alias.scope !2917, !noalias !2911
  %i.aff = and i8 %i.afd, 127
  %i.afg = zext nneg i8 %i.aff to i32
  %i.afh = shl nuw nsw i32 %i.afg, 14
  %i.afi = or disjoint i32 %i.afh, %i.afa         ; 2 uses
  %i.afj = icmp sgt i8 %i.afd, -1
  br i1 %i.afj, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i.i.i.i.i.i.i.i.i, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2918)
  %i.afk = icmp eq ptr %i.afe, %i.s
  br i1 %i.afk, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.afl = load i8, ptr %i.afe, align 1, !noalias !2919, !noundef !6 ; 2 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.afm, ptr %1, align 8, !alias.scope !2920, !noalias !2911
  %i.afn = and i8 %i.afl, 127
  %i.afo = zext nneg i8 %i.afn to i32
  %i.afp = shl nuw nsw i32 %i.afo, 21
  %i.afq = or disjoint i32 %i.afp, %i.afi         ; 2 uses
  %i.afr = icmp sgt i8 %i.afl, -1
  br i1 %i.afr, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i.i.i.i.i.i.i.i.i, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2921)
  %i.afs = icmp eq ptr %i.afm, %i.s
  br i1 %i.afs, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.aft = load i8, ptr %i.afm, align 1, !noalias !2922, !noundef !6 ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.afu, ptr %1, align 8, !alias.scope !2923, !noalias !2911
  %i.afv = zext i8 %i.aft to i32
  %i.afw = shl nuw i32 %i.afv, 28
  %i.afx = or disjoint i32 %i.afw, %i.afq
  %or.cond35.not.i.i.i.i.i.i76.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.aft, 16
  br i1 %or.cond35.not.i.i.i.i.i.i76.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hp, %bb.hn, %bb.hl, %bb.hj, %bb.hh
  %.promoted.i.i.i.i.i.i82.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.afu, %bb.hp ], [ %i.afm, %bb.hn ], [ %i.afe, %bb.hl ], [ %i.aew, %bb.hj ], [ %i.aeq, %bb.hh ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i79.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.afx, %bb.hp ], [ %i.afq, %bb.hn ], [ %i.afi, %bb.hl ], [ %i.afa, %bb.hj ], [ %i.aes, %bb.hh ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  %i.afy = icmp eq ptr %.promoted.i.i.i.i.i.i82.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.afy, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.hq

bb.hq:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i.i.i.i.i.i.i.i.i
  %i.afz = load i8, ptr %.promoted.i.i.i.i.i.i82.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2929, !noundef !6 ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i82.i.i.i.i.i.i.i.i.i.i, i64 1 ; 3 uses
  store ptr %i.aga, ptr %1, align 8, !alias.scope !2930, !noalias !2931
  %i.agb = and i8 %i.afz, 127
  %i.agc = zext nneg i8 %i.agb to i32             ; 2 uses
  %i.agd = icmp sgt i8 %i.afz, -1
  br i1 %i.agd, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2932)
  %i.age = icmp eq ptr %i.aga, %i.s
  br i1 %i.age, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.agf = load i8, ptr %i.aga, align 1, !noalias !2933, !noundef !6 ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i82.i.i.i.i.i.i.i.i.i.i, i64 2 ; 3 uses
  store ptr %i.agg, ptr %1, align 8, !alias.scope !2934, !noalias !2931
  %i.agh = and i8 %i.agf, 127
  %i.agi = zext nneg i8 %i.agh to i32
  %i.agj = shl nuw nsw i32 %i.agi, 7
  %i.agk = or disjoint i32 %i.agj, %i.agc         ; 2 uses
  %i.agl = icmp sgt i8 %i.agf, -1
  br i1 %i.agl, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2935)
  %i.agm = icmp eq ptr %i.agg, %i.s
  br i1 %i.agm, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.agn = load i8, ptr %i.agg, align 1, !noalias !2936, !noundef !6 ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i82.i.i.i.i.i.i.i.i.i.i, i64 3 ; 3 uses
  store ptr %i.ago, ptr %1, align 8, !alias.scope !2937, !noalias !2931
  %i.agp = and i8 %i.agn, 127
  %i.agq = zext nneg i8 %i.agp to i32
  %i.agr = shl nuw nsw i32 %i.agq, 14
  %i.ags = or disjoint i32 %i.agr, %i.agk         ; 2 uses
  %i.agt = icmp sgt i8 %i.agn, -1
  br i1 %i.agt, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2938)
  %i.agu = icmp eq ptr %i.ago, %i.s
  br i1 %i.agu, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.agv = load i8, ptr %i.ago, align 1, !noalias !2939, !noundef !6 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i82.i.i.i.i.i.i.i.i.i.i, i64 4 ; 3 uses
  store ptr %i.agw, ptr %1, align 8, !alias.scope !2940, !noalias !2931
  %i.agx = and i8 %i.agv, 127
  %i.agy = zext nneg i8 %i.agx to i32
  %i.agz = shl nuw nsw i32 %i.agy, 21
  %i.aha = or disjoint i32 %i.agz, %i.ags         ; 2 uses
  %i.ahb = icmp sgt i8 %i.agv, -1
  br i1 %i.ahb, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2941)
  %i.ahc = icmp eq ptr %i.agw, %i.s
  br i1 %i.ahc, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.ahd = load i8, ptr %i.agw, align 1, !noalias !2942, !noundef !6 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i82.i.i.i.i.i.i.i.i.i.i, i64 5
  store ptr %i.ahe, ptr %1, align 8, !alias.scope !2943, !noalias !2931
  %i.ahf = zext i8 %i.ahd to i32
  %i.ahg = shl nuw i32 %i.ahf, 28
  %i.ahh = or disjoint i32 %i.ahg, %i.aha
  %or.cond35.not.i.i.i.i.i.i83.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ahd, 16
  br i1 %or.cond35.not.i.i.i.i.i.i83.i.i.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

bb.hz:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs_1__NtB2n_10SubRequestNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2950)
  %i.ahi = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.ahi, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.ahj = load i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !2951, !noundef !6 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.ahk, ptr %1, align 8, !alias.scope !2952, !noalias !2953
  %i.ahl = and i8 %i.ahj, 127
  %i.ahm = zext nneg i8 %i.ahl to i32             ; 2 uses
  %i.ahn = icmp sgt i8 %i.ahj, -1
  br i1 %i.ahn, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i65.i.i.i.i.i.i.i.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2954)
  %i.aho = icmp eq ptr %i.ahk, %i.s
  br i1 %i.aho, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.ahp = load i8, ptr %i.ahk, align 1, !noalias !2955, !noundef !6 ; 2 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.ahq, ptr %1, align 8, !alias.scope !2956, !noalias !2953
  %i.ahr = and i8 %i.ahp, 127
  %i.ahs = zext nneg i8 %i.ahr to i32
  %i.aht = shl nuw nsw i32 %i.ahs, 7
  %i.ahu = or disjoint i32 %i.aht, %i.ahm         ; 2 uses
  %i.ahv = icmp sgt i8 %i.ahp, -1
  br i1 %i.ahv, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i65.i.i.i.i.i.i.i.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2957)
  %i.ahw = icmp eq ptr %i.ahq, %i.s
  br i1 %i.ahw, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.ahx = load i8, ptr %i.ahq, align 1, !noalias !2958, !noundef !6 ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.ahy, ptr %1, align 8, !alias.scope !2959, !noalias !2953
  %i.ahz = and i8 %i.ahx, 127
  %i.aia = zext nneg i8 %i.ahz to i32
  %i.aib = shl nuw nsw i32 %i.aia, 14
  %i.aic = or disjoint i32 %i.aib, %i.ahu         ; 2 uses
  %i.aid = icmp sgt i8 %i.ahx, -1
  br i1 %i.aid, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i65.i.i.i.i.i.i.i.i, label %bb.if

bb.if:                                            ; preds = %bb.ie
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2960)
  %i.aie = icmp eq ptr %i.ahy, %i.s
  br i1 %i.aie, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.aif = load i8, ptr %i.ahy, align 1, !noalias !2961, !noundef !6 ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.aig, ptr %1, align 8, !alias.scope !2962, !noalias !2953
  %i.aih = and i8 %i.aif, 127
  %i.aii = zext nneg i8 %i.aih to i32
  %i.aij = shl nuw nsw i32 %i.aii, 21
  %i.aik = or disjoint i32 %i.aij, %i.aic         ; 2 uses
  %i.ail = icmp sgt i8 %i.aif, -1
  br i1 %i.ail, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i65.i.i.i.i.i.i.i.i, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2963)
  %i.aim = icmp eq ptr %i.aig, %i.s
  br i1 %i.aim, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.ain = load i8, ptr %i.aig, align 1, !noalias !2964, !noundef !6 ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.aio, ptr %1, align 8, !alias.scope !2965, !noalias !2953
  %i.aip = zext i8 %i.ain to i32
  %i.aiq = shl nuw i32 %i.aip, 28
  %i.air = or disjoint i32 %i.aiq, %i.aik
  %or.cond35.not.i.i.i.i.i.i.i.i62.i.i.i.i.i.i.i.i = icmp ult i8 %i.ain, 16
  br i1 %or.cond35.not.i.i.i.i.i.i.i.i62.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i65.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i65.i.i.i.i.i.i.i.i: ; preds = %bb.ii, %bb.ig, %bb.ie, %bb.ic, %bb.ia
  %.promoted.i.i.i.i.i.i61.i.i66.i.i.i.i.i.i.i.i = phi ptr [ %i.aio, %bb.ii ], [ %i.aig, %bb.ig ], [ %i.ahy, %bb.ie ], [ %i.ahq, %bb.ic ], [ %i.ahk, %bb.ia ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i.i.i67.i.i.i.i.i.i.i.i = phi i32 [ %i.air, %bb.ii ], [ %i.aik, %bb.ig ], [ %i.aic, %bb.ie ], [ %i.ahu, %bb.ic ], [ %i.ahm, %bb.ia ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2970)
  %i.ais = icmp eq ptr %.promoted.i.i.i.i.i.i61.i.i66.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.ais, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ij

bb.ij:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i65.i.i.i.i.i.i.i.i
  %i.ait = load i8, ptr %.promoted.i.i.i.i.i.i61.i.i66.i.i.i.i.i.i.i.i, align 1, !noalias !2971, !noundef !6 ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i61.i.i66.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.aiu, ptr %1, align 8, !alias.scope !2972, !noalias !2973
  %i.aiv = and i8 %i.ait, 127
  %i.aiw = zext nneg i8 %i.aiv to i32             ; 2 uses
  %i.aix = icmp sgt i8 %i.ait, -1
  br i1 %i.aix, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i71.i.i.i.i.i.i.i.i, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2974)
  %i.aiy = icmp eq ptr %i.aiu, %i.s
  br i1 %i.aiy, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.aiz = load i8, ptr %i.aiu, align 1, !noalias !2975, !noundef !6 ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i61.i.i66.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.aja, ptr %1, align 8, !alias.scope !2976, !noalias !2973
  %i.ajb = and i8 %i.aiz, 127
  %i.ajc = zext nneg i8 %i.ajb to i32
  %i.ajd = shl nuw nsw i32 %i.ajc, 7
  %i.aje = or disjoint i32 %i.ajd, %i.aiw         ; 2 uses
  %i.ajf = icmp sgt i8 %i.aiz, -1
  br i1 %i.ajf, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i71.i.i.i.i.i.i.i.i, label %bb.im

bb.im:                                            ; preds = %bb.il
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2977)
  %i.ajg = icmp eq ptr %i.aja, %i.s
  br i1 %i.ajg, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.ajh = load i8, ptr %i.aja, align 1, !noalias !2978, !noundef !6 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i61.i.i66.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.aji, ptr %1, align 8, !alias.scope !2979, !noalias !2973
  %i.ajj = and i8 %i.ajh, 127
  %i.ajk = zext nneg i8 %i.ajj to i32
  %i.ajl = shl nuw nsw i32 %i.ajk, 14
  %i.ajm = or disjoint i32 %i.ajl, %i.aje         ; 2 uses
  %i.ajn = icmp sgt i8 %i.ajh, -1
  br i1 %i.ajn, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i71.i.i.i.i.i.i.i.i, label %bb.io

bb.io:                                            ; preds = %bb.in
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2980)
  %i.ajo = icmp eq ptr %i.aji, %i.s
  br i1 %i.ajo, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.ajp = load i8, ptr %i.aji, align 1, !noalias !2981, !noundef !6 ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i61.i.i66.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.ajq, ptr %1, align 8, !alias.scope !2982, !noalias !2973
  %i.ajr = and i8 %i.ajp, 127
  %i.ajs = zext nneg i8 %i.ajr to i32
  %i.ajt = shl nuw nsw i32 %i.ajs, 21
  %i.aju = or disjoint i32 %i.ajt, %i.ajm         ; 2 uses
  %i.ajv = icmp sgt i8 %i.ajp, -1
  br i1 %i.ajv, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i71.i.i.i.i.i.i.i.i, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2983)
  %i.ajw = icmp eq ptr %i.ajq, %i.s
  br i1 %i.ajw, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.ajx = load i8, ptr %i.ajq, align 1, !noalias !2984, !noundef !6 ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i61.i.i66.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.ajy, ptr %1, align 8, !alias.scope !2985, !noalias !2973
  %i.ajz = zext i8 %i.ajx to i32
  %i.aka = shl nuw i32 %i.ajz, 28
  %i.akb = or disjoint i32 %i.aka, %i.aju
  %or.cond35.not.i.i.i.i.i.i62.i.i68.i.i.i.i.i.i.i.i = icmp ult i8 %i.ajx, 16
  br i1 %or.cond35.not.i.i.i.i.i.i62.i.i68.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i71.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i71.i.i.i.i.i.i.i.i: ; preds = %bb.ir, %bb.ip, %bb.in, %bb.il, %bb.ij
  %.promoted.i.i.i.i.i.i68.i.i72.i.i.i.i.i.i.i.i = phi ptr [ %i.ajy, %bb.ir ], [ %i.ajq, %bb.ip ], [ %i.aji, %bb.in ], [ %i.aja, %bb.il ], [ %i.aiu, %bb.ij ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i65.i.i73.i.i.i.i.i.i.i.i = phi i32 [ %i.akb, %bb.ir ], [ %i.aju, %bb.ip ], [ %i.ajm, %bb.in ], [ %i.aje, %bb.il ], [ %i.aiw, %bb.ij ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2990)
  %i.akc = icmp eq ptr %.promoted.i.i.i.i.i.i68.i.i72.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.akc, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.is

bb.is:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i71.i.i.i.i.i.i.i.i
  %i.akd = load i8, ptr %.promoted.i.i.i.i.i.i68.i.i72.i.i.i.i.i.i.i.i, align 1, !noalias !2991, !noundef !6 ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i68.i.i72.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.ake, ptr %1, align 8, !alias.scope !2992, !noalias !2993
  %i.akf = and i8 %i.akd, 127
  %i.akg = zext nneg i8 %i.akf to i32             ; 2 uses
  %i.akh = icmp sgt i8 %i.akd, -1
  br i1 %i.akh, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i77.i.i.i.i.i.i.i.i, label %bb.it

bb.it:                                            ; preds = %bb.is
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2994)
  %i.aki = icmp eq ptr %i.ake, %i.s
  br i1 %i.aki, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.akj = load i8, ptr %i.ake, align 1, !noalias !2995, !noundef !6 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i68.i.i72.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.akk, ptr %1, align 8, !alias.scope !2996, !noalias !2993
  %i.akl = and i8 %i.akj, 127
  %i.akm = zext nneg i8 %i.akl to i32
  %i.akn = shl nuw nsw i32 %i.akm, 7
  %i.ako = or disjoint i32 %i.akn, %i.akg         ; 2 uses
  %i.akp = icmp sgt i8 %i.akj, -1
  br i1 %i.akp, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i77.i.i.i.i.i.i.i.i, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2997)
  %i.akq = icmp eq ptr %i.akk, %i.s
  br i1 %i.akq, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.akr = load i8, ptr %i.akk, align 1, !noalias !2998, !noundef !6 ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i68.i.i72.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.aks, ptr %1, align 8, !alias.scope !2999, !noalias !2993
  %i.akt = and i8 %i.akr, 127
  %i.aku = zext nneg i8 %i.akt to i32
  %i.akv = shl nuw nsw i32 %i.aku, 14
  %i.akw = or disjoint i32 %i.akv, %i.ako         ; 2 uses
  %i.akx = icmp sgt i8 %i.akr, -1
  br i1 %i.akx, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i77.i.i.i.i.i.i.i.i, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3000)
  %i.aky = icmp eq ptr %i.aks, %i.s
  br i1 %i.aky, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.akz = load i8, ptr %i.aks, align 1, !noalias !3001, !noundef !6 ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i68.i.i72.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.ala, ptr %1, align 8, !alias.scope !3002, !noalias !2993
  %i.alb = and i8 %i.akz, 127
  %i.alc = zext nneg i8 %i.alb to i32
  %i.ald = shl nuw nsw i32 %i.alc, 21
  %i.ale = or disjoint i32 %i.ald, %i.akw         ; 2 uses
  %i.alf = icmp sgt i8 %i.akz, -1
  br i1 %i.alf, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i77.i.i.i.i.i.i.i.i, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3003)
  %i.alg = icmp eq ptr %i.ala, %i.s
  br i1 %i.alg, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.alh = load i8, ptr %i.ala, align 1, !noalias !3004, !noundef !6 ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i68.i.i72.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.ali, ptr %1, align 8, !alias.scope !3005, !noalias !2993
  %i.alj = zext i8 %i.alh to i32
  %i.alk = shl nuw i32 %i.alj, 28
  %i.all = or disjoint i32 %i.alk, %i.ale
  %or.cond35.not.i.i.i.i.i.i69.i.i74.i.i.i.i.i.i.i.i = icmp ult i8 %i.alh, 16
  br i1 %or.cond35.not.i.i.i.i.i.i69.i.i74.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i77.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i77.i.i.i.i.i.i.i.i: ; preds = %bb.ja, %bb.iy, %bb.iw, %bb.iu, %bb.is
  %.promoted.i.i.i.i.i.i75.i.i78.i.i.i.i.i.i.i.i = phi ptr [ %i.ali, %bb.ja ], [ %i.ala, %bb.iy ], [ %i.aks, %bb.iw ], [ %i.akk, %bb.iu ], [ %i.ake, %bb.is ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i72.i.i79.i.i.i.i.i.i.i.i = phi i32 [ %i.all, %bb.ja ], [ %i.ale, %bb.iy ], [ %i.akw, %bb.iw ], [ %i.ako, %bb.iu ], [ %i.akg, %bb.is ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3010)
  %i.alm = icmp eq ptr %.promoted.i.i.i.i.i.i75.i.i78.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.alm, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.jb

bb.jb:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i77.i.i.i.i.i.i.i.i
  %i.aln = load i8, ptr %.promoted.i.i.i.i.i.i75.i.i78.i.i.i.i.i.i.i.i, align 1, !noalias !3011, !noundef !6 ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i75.i.i78.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.alo, ptr %1, align 8, !alias.scope !3012, !noalias !3013
  %i.alp = and i8 %i.aln, 127
  %i.alq = zext nneg i8 %i.alp to i32             ; 2 uses
  %i.alr = icmp sgt i8 %i.aln, -1
  br i1 %i.alr, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i83.i.i.i.i.i.i.i.i, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3014)
  %i.als = icmp eq ptr %i.alo, %i.s
  br i1 %i.als, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.alt = load i8, ptr %i.alo, align 1, !noalias !3015, !noundef !6 ; 2 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i75.i.i78.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.alu, ptr %1, align 8, !alias.scope !3016, !noalias !3013
  %i.alv = and i8 %i.alt, 127
  %i.alw = zext nneg i8 %i.alv to i32
  %i.alx = shl nuw nsw i32 %i.alw, 7
  %i.aly = or disjoint i32 %i.alx, %i.alq         ; 2 uses
  %i.alz = icmp sgt i8 %i.alt, -1
  br i1 %i.alz, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i83.i.i.i.i.i.i.i.i, label %bb.je

bb.je:                                            ; preds = %bb.jd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3017)
  %i.ama = icmp eq ptr %i.alu, %i.s
  br i1 %i.ama, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.amb = load i8, ptr %i.alu, align 1, !noalias !3018, !noundef !6 ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i75.i.i78.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.amc, ptr %1, align 8, !alias.scope !3019, !noalias !3013
  %i.amd = and i8 %i.amb, 127
  %i.ame = zext nneg i8 %i.amd to i32
  %i.amf = shl nuw nsw i32 %i.ame, 14
  %i.amg = or disjoint i32 %i.amf, %i.aly         ; 2 uses
  %i.amh = icmp sgt i8 %i.amb, -1
  br i1 %i.amh, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i83.i.i.i.i.i.i.i.i, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3020)
  %i.ami = icmp eq ptr %i.amc, %i.s
  br i1 %i.ami, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.amj = load i8, ptr %i.amc, align 1, !noalias !3021, !noundef !6 ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i75.i.i78.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.amk, ptr %1, align 8, !alias.scope !3022, !noalias !3013
  %i.aml = and i8 %i.amj, 127
  %i.amm = zext nneg i8 %i.aml to i32
  %i.amn = shl nuw nsw i32 %i.amm, 21
  %i.amo = or disjoint i32 %i.amn, %i.amg         ; 2 uses
  %i.amp = icmp sgt i8 %i.amj, -1
  br i1 %i.amp, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i83.i.i.i.i.i.i.i.i, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3023)
  %i.amq = icmp eq ptr %i.amk, %i.s
  br i1 %i.amq, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.amr = load i8, ptr %i.amk, align 1, !noalias !3024, !noundef !6 ; 2 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i75.i.i78.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.ams, ptr %1, align 8, !alias.scope !3025, !noalias !3013
  %i.amt = zext i8 %i.amr to i32
  %i.amu = shl nuw i32 %i.amt, 28
  %i.amv = or disjoint i32 %i.amu, %i.amo
  %or.cond35.not.i.i.i.i.i.i76.i.i80.i.i.i.i.i.i.i.i = icmp ult i8 %i.amr, 16
  br i1 %or.cond35.not.i.i.i.i.i.i76.i.i80.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i83.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i83.i.i.i.i.i.i.i.i: ; preds = %bb.jj, %bb.jh, %bb.jf, %bb.jd, %bb.jb
  %.promoted.i.i.i.i.i.i82.i.i84.i.i.i.i.i.i.i.i = phi ptr [ %i.ams, %bb.jj ], [ %i.amk, %bb.jh ], [ %i.amc, %bb.jf ], [ %i.alu, %bb.jd ], [ %i.alo, %bb.jb ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i79.i.i85.i.i.i.i.i.i.i.i = phi i32 [ %i.amv, %bb.jj ], [ %i.amo, %bb.jh ], [ %i.amg, %bb.jf ], [ %i.aly, %bb.jd ], [ %i.alq, %bb.jb ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3030)
  %i.amw = icmp eq ptr %.promoted.i.i.i.i.i.i82.i.i84.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.amw, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.jk

bb.jk:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i83.i.i.i.i.i.i.i.i
  %i.amx = load i8, ptr %.promoted.i.i.i.i.i.i82.i.i84.i.i.i.i.i.i.i.i, align 1, !noalias !3031, !noundef !6 ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i82.i.i84.i.i.i.i.i.i.i.i, i64 1 ; 3 uses
  store ptr %i.amy, ptr %1, align 8, !alias.scope !3032, !noalias !3033
  %i.amz = and i8 %i.amx, 127
  %i.ana = zext nneg i8 %i.amz to i32             ; 2 uses
  %i.anb = icmp sgt i8 %i.amx, -1
  br i1 %i.anb, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3034)
  %i.anc = icmp eq ptr %i.amy, %i.s
  br i1 %i.anc, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.and = load i8, ptr %i.amy, align 1, !noalias !3035, !noundef !6 ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i82.i.i84.i.i.i.i.i.i.i.i, i64 2 ; 3 uses
  store ptr %i.ane, ptr %1, align 8, !alias.scope !3036, !noalias !3033
  %i.anf = and i8 %i.and, 127
  %i.ang = zext nneg i8 %i.anf to i32
  %i.anh = shl nuw nsw i32 %i.ang, 7
  %i.ani = or disjoint i32 %i.anh, %i.ana         ; 2 uses
  %i.anj = icmp sgt i8 %i.and, -1
  br i1 %i.anj, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3037)
  %i.ank = icmp eq ptr %i.ane, %i.s
  br i1 %i.ank, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.anl = load i8, ptr %i.ane, align 1, !noalias !3038, !noundef !6 ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i82.i.i84.i.i.i.i.i.i.i.i, i64 3 ; 3 uses
  store ptr %i.anm, ptr %1, align 8, !alias.scope !3039, !noalias !3033
  %i.ann = and i8 %i.anl, 127
  %i.ano = zext nneg i8 %i.ann to i32
  %i.anp = shl nuw nsw i32 %i.ano, 14
  %i.anq = or disjoint i32 %i.anp, %i.ani         ; 2 uses
  %i.anr = icmp sgt i8 %i.anl, -1
  br i1 %i.anr, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3040)
  %i.ans = icmp eq ptr %i.anm, %i.s
  br i1 %i.ans, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.ant = load i8, ptr %i.anm, align 1, !noalias !3041, !noundef !6 ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i82.i.i84.i.i.i.i.i.i.i.i, i64 4 ; 3 uses
  store ptr %i.anu, ptr %1, align 8, !alias.scope !3042, !noalias !3033
  %i.anv = and i8 %i.ant, 127
  %i.anw = zext nneg i8 %i.anv to i32
  %i.anx = shl nuw nsw i32 %i.anw, 21
  %i.any = or disjoint i32 %i.anx, %i.anq         ; 2 uses
  %i.anz = icmp sgt i8 %i.ant, -1
  br i1 %i.anz, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3043)
  %i.aoa = icmp eq ptr %i.anu, %i.s
  br i1 %i.aoa, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.aob = load i8, ptr %i.anu, align 1, !noalias !3044, !noundef !6 ; 2 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i82.i.i84.i.i.i.i.i.i.i.i, i64 5
  store ptr %i.aoc, ptr %1, align 8, !alias.scope !3045, !noalias !3033
  %i.aod = zext i8 %i.aob to i32
  %i.aoe = shl nuw i32 %i.aod, 28
  %i.aof = or disjoint i32 %i.aoe, %i.any
  %or.cond35.not.i.i.i.i.i.i83.i.i86.i.i.i.i.i.i.i.i = icmp ult i8 %i.aob, 16
  br i1 %or.cond35.not.i.i.i.i.i.i83.i.i86.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

bb.jt:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs_1__NtB2n_10SubRequestNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3047)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3048
  store ptr %1, ptr %i.i, align 8, !noalias !3049
  %i.aog = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3054)
  %i.aoh = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.aoh, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.aoi = load i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !3055, !noundef !6 ; 2 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.aoj, ptr %1, align 8, !alias.scope !3056, !noalias !3057
  %i.aok = and i8 %i.aoi, 127
  %i.aol = zext nneg i8 %i.aok to i32             ; 2 uses
  %i.aom = icmp sgt i8 %i.aoi, -1
  br i1 %i.aom, label %bb.kd, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3058)
  %i.aon = icmp eq ptr %i.aoj, %i.s
  br i1 %i.aon, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.aoo = load i8, ptr %i.aoj, align 1, !noalias !3059, !noundef !6 ; 2 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.aop, ptr %1, align 8, !alias.scope !3060, !noalias !3057
  %i.aoq = and i8 %i.aoo, 127
  %i.aor = zext nneg i8 %i.aoq to i32
  %i.aos = shl nuw nsw i32 %i.aor, 7
  %i.aot = or disjoint i32 %i.aos, %i.aol         ; 2 uses
  %i.aou = icmp sgt i8 %i.aoo, -1
  br i1 %i.aou, label %bb.kd, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3061)
  %i.aov = icmp eq ptr %i.aop, %i.s
  br i1 %i.aov, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.aow = load i8, ptr %i.aop, align 1, !noalias !3062, !noundef !6 ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.aox, ptr %1, align 8, !alias.scope !3063, !noalias !3057
  %i.aoy = and i8 %i.aow, 127
  %i.aoz = zext nneg i8 %i.aoy to i32
  %i.apa = shl nuw nsw i32 %i.aoz, 14
  %i.apb = or disjoint i32 %i.apa, %i.aot         ; 2 uses
  %i.apc = icmp sgt i8 %i.aow, -1
  br i1 %i.apc, label %bb.kd, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3064)
  %i.apd = icmp eq ptr %i.aox, %i.s
  br i1 %i.apd, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.ape = load i8, ptr %i.aox, align 1, !noalias !3065, !noundef !6 ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.apf, ptr %1, align 8, !alias.scope !3066, !noalias !3057
  %i.apg = and i8 %i.ape, 127
  %i.aph = zext nneg i8 %i.apg to i32
  %i.api = shl nuw nsw i32 %i.aph, 21
  %i.apj = or disjoint i32 %i.api, %i.apb         ; 2 uses
  %i.apk = icmp sgt i8 %i.ape, -1
  br i1 %i.apk, label %bb.kd, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3067)
  %i.apl = icmp eq ptr %i.apf, %i.s
  br i1 %i.apl, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.apm = load i8, ptr %i.apf, align 1, !noalias !3068, !noundef !6 ; 2 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.apn, ptr %1, align 8, !alias.scope !3069, !noalias !3057
  %i.apo = zext i8 %i.apm to i32
  %i.app = shl nuw i32 %i.apo, 28
  %i.apq = or disjoint i32 %i.app, %i.apj
  %or.cond35.not.i.i.i.i.i.i.i.i97.i.i.i.i.i.i.i.i = icmp ult i8 %i.apm, 16
  br i1 %or.cond35.not.i.i.i.i.i.i.i.i97.i.i.i.i.i.i.i.i, label %bb.kd, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i

bb.kd:                                            ; preds = %bb.kc, %bb.ka, %bb.jy, %bb.jw, %bb.ju
  %.promoted.i.i.i.i.i.i109.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.apn, %bb.kc ], [ %i.apf, %bb.ka ], [ %i.aox, %bb.jy ], [ %i.aop, %bb.jw ], [ %i.aoj, %bb.ju ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i.i.i100.i.i.i.i.i.i.i.i = phi i32 [ %i.apq, %bb.kc ], [ %i.apj, %bb.ka ], [ %i.apb, %bb.jy ], [ %i.aot, %bb.jw ], [ %i.aol, %bb.ju ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3074)
  %i.apr = icmp eq ptr %.promoted.i.i.i.i.i.i109.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.apr, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.aps = load i8, ptr %.promoted.i.i.i.i.i.i109.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !3075, !noundef !6 ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i109.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.apt, ptr %1, align 8, !alias.scope !3076, !noalias !3077
  %i.apu = and i8 %i.aps, 127
  %i.apv = zext nneg i8 %i.apu to i32             ; 2 uses
  %i.apw = icmp sgt i8 %i.aps, -1
  br i1 %i.apw, label %bb.kn, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3078)
  %i.apx = icmp eq ptr %i.apt, %i.s
  br i1 %i.apx, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.apy = load i8, ptr %i.apt, align 1, !noalias !3079, !noundef !6 ; 2 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i109.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.apz, ptr %1, align 8, !alias.scope !3080, !noalias !3077
  %i.aqa = and i8 %i.apy, 127
  %i.aqb = zext nneg i8 %i.aqa to i32
  %i.aqc = shl nuw nsw i32 %i.aqb, 7
  %i.aqd = or disjoint i32 %i.aqc, %i.apv         ; 2 uses
  %i.aqe = icmp sgt i8 %i.apy, -1
  br i1 %i.aqe, label %bb.kn, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3081)
  %i.aqf = icmp eq ptr %i.apz, %i.s
  br i1 %i.aqf, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.aqg = load i8, ptr %i.apz, align 1, !noalias !3082, !noundef !6 ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i109.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.aqh, ptr %1, align 8, !alias.scope !3083, !noalias !3077
  %i.aqi = and i8 %i.aqg, 127
  %i.aqj = zext nneg i8 %i.aqi to i32
  %i.aqk = shl nuw nsw i32 %i.aqj, 14
  %i.aql = or disjoint i32 %i.aqk, %i.aqd         ; 2 uses
  %i.aqm = icmp sgt i8 %i.aqg, -1
  br i1 %i.aqm, label %bb.kn, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3084)
  %i.aqn = icmp eq ptr %i.aqh, %i.s
  br i1 %i.aqn, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.aqo = load i8, ptr %i.aqh, align 1, !noalias !3085, !noundef !6 ; 2 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i109.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.aqp, ptr %1, align 8, !alias.scope !3086, !noalias !3077
  %i.aqq = and i8 %i.aqo, 127
  %i.aqr = zext nneg i8 %i.aqq to i32
  %i.aqs = shl nuw nsw i32 %i.aqr, 21
  %i.aqt = or disjoint i32 %i.aqs, %i.aql         ; 2 uses
  %i.aqu = icmp sgt i8 %i.aqo, -1
  br i1 %i.aqu, label %bb.kn, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3087)
  %i.aqv = icmp eq ptr %i.aqp, %i.s
  br i1 %i.aqv, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.aqw = load i8, ptr %i.aqp, align 1, !noalias !3088, !noundef !6 ; 2 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i109.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.aqx, ptr %1, align 8, !alias.scope !3089, !noalias !3077
  %i.aqy = zext i8 %i.aqw to i32
  %i.aqz = shl nuw i32 %i.aqy, 28
  %i.ara = or disjoint i32 %i.aqz, %i.aqt
  %or.cond35.not.i.i.i.i.i.i110.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.aqw, 16
  br i1 %or.cond35.not.i.i.i.i.i.i110.i.i.i.i.i.i.i.i.i.i, label %bb.kn, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i

bb.kn:                                            ; preds = %bb.km, %bb.kk, %bb.ki, %bb.kg, %bb.ke
  %.promoted.i.i.i.i.i.i116.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aqx, %bb.km ], [ %i.aqp, %bb.kk ], [ %i.aqh, %bb.ki ], [ %i.apz, %bb.kg ], [ %i.apt, %bb.ke ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i113.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ara, %bb.km ], [ %i.aqt, %bb.kk ], [ %i.aql, %bb.ki ], [ %i.aqd, %bb.kg ], [ %i.apv, %bb.ke ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3094)
  %i.arb = icmp eq ptr %.promoted.i.i.i.i.i.i116.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.arb, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.arc = load i8, ptr %.promoted.i.i.i.i.i.i116.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !3095, !noundef !6 ; 2 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i116.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.ard, ptr %1, align 8, !alias.scope !3096, !noalias !3097
  %i.are = and i8 %i.arc, 127
  %i.arf = zext nneg i8 %i.are to i32             ; 2 uses
  %i.arg = icmp sgt i8 %i.arc, -1
  br i1 %i.arg, label %bb.kx, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3098)
  %i.arh = icmp eq ptr %i.ard, %i.s
  br i1 %i.arh, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.ari = load i8, ptr %i.ard, align 1, !noalias !3099, !noundef !6 ; 2 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i116.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.arj, ptr %1, align 8, !alias.scope !3100, !noalias !3097
  %i.ark = and i8 %i.ari, 127
  %i.arl = zext nneg i8 %i.ark to i32
  %i.arm = shl nuw nsw i32 %i.arl, 7
  %i.arn = or disjoint i32 %i.arm, %i.arf         ; 2 uses
  %i.aro = icmp sgt i8 %i.ari, -1
  br i1 %i.aro, label %bb.kx, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3101)
  %i.arp = icmp eq ptr %i.arj, %i.s
  br i1 %i.arp, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.arq = load i8, ptr %i.arj, align 1, !noalias !3102, !noundef !6 ; 2 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i116.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.arr, ptr %1, align 8, !alias.scope !3103, !noalias !3097
  %i.ars = and i8 %i.arq, 127
  %i.art = zext nneg i8 %i.ars to i32
  %i.aru = shl nuw nsw i32 %i.art, 14
  %i.arv = or disjoint i32 %i.aru, %i.arn         ; 2 uses
  %i.arw = icmp sgt i8 %i.arq, -1
  br i1 %i.arw, label %bb.kx, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3104)
  %i.arx = icmp eq ptr %i.arr, %i.s
  br i1 %i.arx, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.ary = load i8, ptr %i.arr, align 1, !noalias !3105, !noundef !6 ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i116.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.arz, ptr %1, align 8, !alias.scope !3106, !noalias !3097
  %i.asa = and i8 %i.ary, 127
  %i.asb = zext nneg i8 %i.asa to i32
  %i.asc = shl nuw nsw i32 %i.asb, 21
  %i.asd = or disjoint i32 %i.asc, %i.arv         ; 2 uses
  %i.ase = icmp sgt i8 %i.ary, -1
  br i1 %i.ase, label %bb.kx, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3107)
  %i.asf = icmp eq ptr %i.arz, %i.s
  br i1 %i.asf, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.asg = load i8, ptr %i.arz, align 1, !noalias !3108, !noundef !6 ; 2 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i116.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.ash, ptr %1, align 8, !alias.scope !3109, !noalias !3097
  %i.asi = zext i8 %i.asg to i32
  %i.asj = shl nuw i32 %i.asi, 28
  %i.ask = or disjoint i32 %i.asj, %i.asd
  %or.cond35.not.i.i.i.i.i.i117.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.asg, 16
  br i1 %or.cond35.not.i.i.i.i.i.i117.i.i.i.i.i.i.i.i.i.i, label %bb.kx, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i

bb.kx:                                            ; preds = %bb.kw, %bb.ku, %bb.ks, %bb.kq, %bb.ko
  %.promoted.i.i.i.i.i.i123.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ash, %bb.kw ], [ %i.arz, %bb.ku ], [ %i.arr, %bb.ks ], [ %i.arj, %bb.kq ], [ %i.ard, %bb.ko ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i120.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ask, %bb.kw ], [ %i.asd, %bb.ku ], [ %i.arv, %bb.ks ], [ %i.arn, %bb.kq ], [ %i.arf, %bb.ko ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3114)
  %i.asl = icmp eq ptr %.promoted.i.i.i.i.i.i123.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.asl, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.asm = load i8, ptr %.promoted.i.i.i.i.i.i123.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !3115, !noundef !6 ; 2 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i123.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.asn, ptr %1, align 8, !alias.scope !3116, !noalias !3117
  %i.aso = and i8 %i.asm, 127
  %i.asp = zext nneg i8 %i.aso to i32             ; 2 uses
  %i.asq = icmp sgt i8 %i.asm, -1
  br i1 %i.asq, label %bb.lh, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3118)
  %i.asr = icmp eq ptr %i.asn, %i.s
  br i1 %i.asr, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.ass = load i8, ptr %i.asn, align 1, !noalias !3119, !noundef !6 ; 2 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i123.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.ast, ptr %1, align 8, !alias.scope !3120, !noalias !3117
  %i.asu = and i8 %i.ass, 127
  %i.asv = zext nneg i8 %i.asu to i32
  %i.asw = shl nuw nsw i32 %i.asv, 7
  %i.asx = or disjoint i32 %i.asw, %i.asp         ; 2 uses
  %i.asy = icmp sgt i8 %i.ass, -1
  br i1 %i.asy, label %bb.lh, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3121)
  %i.asz = icmp eq ptr %i.ast, %i.s
  br i1 %i.asz, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.ata = load i8, ptr %i.ast, align 1, !noalias !3122, !noundef !6 ; 2 uses
  %i.atb = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i123.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.atb, ptr %1, align 8, !alias.scope !3123, !noalias !3117
  %i.atc = and i8 %i.ata, 127
  %i.atd = zext nneg i8 %i.atc to i32
  %i.ate = shl nuw nsw i32 %i.atd, 14
  %i.atf = or disjoint i32 %i.ate, %i.asx         ; 2 uses
  %i.atg = icmp sgt i8 %i.ata, -1
  br i1 %i.atg, label %bb.lh, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3124)
  %i.ath = icmp eq ptr %i.atb, %i.s
  br i1 %i.ath, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.ati = load i8, ptr %i.atb, align 1, !noalias !3125, !noundef !6 ; 2 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i123.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.atj, ptr %1, align 8, !alias.scope !3126, !noalias !3117
  %i.atk = and i8 %i.ati, 127
  %i.atl = zext nneg i8 %i.atk to i32
  %i.atm = shl nuw nsw i32 %i.atl, 21
  %i.atn = or disjoint i32 %i.atm, %i.atf         ; 2 uses
  %i.ato = icmp sgt i8 %i.ati, -1
  br i1 %i.ato, label %bb.lh, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3127)
  %i.atp = icmp eq ptr %i.atj, %i.s
  br i1 %i.atp, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.atq = load i8, ptr %i.atj, align 1, !noalias !3128, !noundef !6 ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i123.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.atr, ptr %1, align 8, !alias.scope !3129, !noalias !3117
  %i.ats = zext i8 %i.atq to i32
  %i.att = shl nuw i32 %i.ats, 28
  %i.atu = or disjoint i32 %i.att, %i.atn
  %or.cond35.not.i.i.i.i.i.i124.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.atq, 16
  br i1 %or.cond35.not.i.i.i.i.i.i124.i.i.i.i.i.i.i.i.i.i, label %bb.lh, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i

bb.lh:                                            ; preds = %bb.lg, %bb.le, %bb.lc, %bb.la, %bb.ky
  %.promoted.i.i.i.i.i.i130.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.atr, %bb.lg ], [ %i.atj, %bb.le ], [ %i.atb, %bb.lc ], [ %i.ast, %bb.la ], [ %i.asn, %bb.ky ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i127.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.atu, %bb.lg ], [ %i.atn, %bb.le ], [ %i.atf, %bb.lc ], [ %i.asx, %bb.la ], [ %i.asp, %bb.ky ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3134)
  %i.atv = icmp eq ptr %.promoted.i.i.i.i.i.i130.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.atv, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.atw = load i8, ptr %.promoted.i.i.i.i.i.i130.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !3135, !noundef !6 ; 2 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i130.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.atx, ptr %1, align 8, !alias.scope !3136, !noalias !3137
  %i.aty = and i8 %i.atw, 127
  %i.atz = zext nneg i8 %i.aty to i32             ; 2 uses
  %i.aua = icmp sgt i8 %i.atw, -1
  br i1 %i.aua, label %bb.lr, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3138)
  %i.aub = icmp eq ptr %i.atx, %i.s
  br i1 %i.aub, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.auc = load i8, ptr %i.atx, align 1, !noalias !3139, !noundef !6 ; 2 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i130.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.aud, ptr %1, align 8, !alias.scope !3140, !noalias !3137
  %i.aue = and i8 %i.auc, 127
  %i.auf = zext nneg i8 %i.aue to i32
  %i.aug = shl nuw nsw i32 %i.auf, 7
  %i.auh = or disjoint i32 %i.aug, %i.atz         ; 2 uses
  %i.aui = icmp sgt i8 %i.auc, -1
  br i1 %i.aui, label %bb.lr, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3141)
  %i.auj = icmp eq ptr %i.aud, %i.s
  br i1 %i.auj, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.auk = load i8, ptr %i.aud, align 1, !noalias !3142, !noundef !6 ; 2 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i130.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.aul, ptr %1, align 8, !alias.scope !3143, !noalias !3137
  %i.aum = and i8 %i.auk, 127
  %i.aun = zext nneg i8 %i.aum to i32
  %i.auo = shl nuw nsw i32 %i.aun, 14
  %i.aup = or disjoint i32 %i.auo, %i.auh         ; 2 uses
  %i.auq = icmp sgt i8 %i.auk, -1
  br i1 %i.auq, label %bb.lr, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3144)
  %i.aur = icmp eq ptr %i.aul, %i.s
  br i1 %i.aur, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.aus = load i8, ptr %i.aul, align 1, !noalias !3145, !noundef !6 ; 2 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i130.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.aut, ptr %1, align 8, !alias.scope !3146, !noalias !3137
  %i.auu = and i8 %i.aus, 127
  %i.auv = zext nneg i8 %i.auu to i32
  %i.auw = shl nuw nsw i32 %i.auv, 21
  %i.aux = or disjoint i32 %i.auw, %i.aup         ; 2 uses
  %i.auy = icmp sgt i8 %i.aus, -1
  br i1 %i.auy, label %bb.lr, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3147)
  %i.auz = icmp eq ptr %i.aut, %i.s
  br i1 %i.auz, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.ava = load i8, ptr %i.aut, align 1, !noalias !3148, !noundef !6 ; 2 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i130.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.avb, ptr %1, align 8, !alias.scope !3149, !noalias !3137
  %i.avc = zext i8 %i.ava to i32
  %i.avd = shl nuw i32 %i.avc, 28
  %i.ave = or disjoint i32 %i.avd, %i.aux
  %or.cond35.not.i.i.i.i.i.i131.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ava, 16
  br i1 %or.cond35.not.i.i.i.i.i.i131.i.i.i.i.i.i.i.i.i.i, label %bb.lr, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i

bb.lr:                                            ; preds = %bb.lq, %bb.lo, %bb.lm, %bb.lk, %bb.li
  %.promoted.i.i.i.i.i.i137.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.avb, %bb.lq ], [ %i.aut, %bb.lo ], [ %i.aul, %bb.lm ], [ %i.aud, %bb.lk ], [ %i.atx, %bb.li ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i134.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ave, %bb.lq ], [ %i.aux, %bb.lo ], [ %i.aup, %bb.lm ], [ %i.auh, %bb.lk ], [ %i.atz, %bb.li ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3151)
  store i64 3, ptr %i.aog, align 8, !alias.scope !3152, !noalias !3049
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3157)
  %i.avf = icmp eq ptr %.promoted.i.i.i.i.i.i137.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.avf, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.avg = load i8, ptr %.promoted.i.i.i.i.i.i137.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !3158, !noundef !6 ; 2 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i137.i.i.i.i.i.i.i.i.i.i, i64 1 ; 3 uses
  store ptr %i.avh, ptr %1, align 8, !alias.scope !3159, !noalias !3152
  %i.avi = and i8 %i.avg, 127
  %i.avj = zext nneg i8 %i.avi to i32             ; 2 uses
  %i.avk = icmp sgt i8 %i.avg, -1
  br i1 %i.avk, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit142.i.i.i.i.i.i.i.i.i.i, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3160)
  %i.avl = icmp eq ptr %i.avh, %i.s
  br i1 %i.avl, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.avm = load i8, ptr %i.avh, align 1, !noalias !3161, !noundef !6 ; 2 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i137.i.i.i.i.i.i.i.i.i.i, i64 2 ; 3 uses
  store ptr %i.avn, ptr %1, align 8, !alias.scope !3162, !noalias !3152
  %i.avo = and i8 %i.avm, 127
  %i.avp = zext nneg i8 %i.avo to i32
  %i.avq = shl nuw nsw i32 %i.avp, 7
  %i.avr = or disjoint i32 %i.avq, %i.avj         ; 2 uses
  %i.avs = icmp sgt i8 %i.avm, -1
  br i1 %i.avs, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit142.i.i.i.i.i.i.i.i.i.i, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3163)
  %i.avt = icmp eq ptr %i.avn, %i.s
  br i1 %i.avt, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.avu = load i8, ptr %i.avn, align 1, !noalias !3164, !noundef !6 ; 2 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i137.i.i.i.i.i.i.i.i.i.i, i64 3 ; 3 uses
  store ptr %i.avv, ptr %1, align 8, !alias.scope !3165, !noalias !3152
  %i.avw = and i8 %i.avu, 127
  %i.avx = zext nneg i8 %i.avw to i32
  %i.avy = shl nuw nsw i32 %i.avx, 14
  %i.avz = or disjoint i32 %i.avy, %i.avr         ; 2 uses
  %i.awa = icmp sgt i8 %i.avu, -1
  br i1 %i.awa, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit142.i.i.i.i.i.i.i.i.i.i, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3166)
  %i.awb = icmp eq ptr %i.avv, %i.s
  br i1 %i.awb, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.awc = load i8, ptr %i.avv, align 1, !noalias !3167, !noundef !6 ; 2 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i137.i.i.i.i.i.i.i.i.i.i, i64 4 ; 3 uses
  store ptr %i.awd, ptr %1, align 8, !alias.scope !3168, !noalias !3152
  %i.awe = and i8 %i.awc, 127
  %i.awf = zext nneg i8 %i.awe to i32
  %i.awg = shl nuw nsw i32 %i.awf, 21
  %i.awh = or disjoint i32 %i.awg, %i.avz         ; 2 uses
  %i.awi = icmp sgt i8 %i.awc, -1
  br i1 %i.awi, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit142.i.i.i.i.i.i.i.i.i.i, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3169)
  %i.awj = icmp eq ptr %i.awd, %i.s
  br i1 %i.awj, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.awk = load i8, ptr %i.awd, align 1, !noalias !3170, !noundef !6 ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i137.i.i.i.i.i.i.i.i.i.i, i64 5
  store ptr %i.awl, ptr %1, align 8, !alias.scope !3171, !noalias !3152
  %i.awm = zext i8 %i.awk to i32
  %i.awn = shl nuw i32 %i.awm, 28
  %i.awo = or disjoint i32 %i.awn, %i.awh
  %or.cond35.not.i.i.i.i.i.i138.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.awk, 16
  br i1 %or.cond35.not.i.i.i.i.i.i138.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit142.i.i.i.i.i.i.i.i.i.i, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit142.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ma, %bb.ly, %bb.lw, %bb.lu, %bb.ls
  %.lcssa34.i.i.i.i.i.i141.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.awo, %bb.ma ], [ %i.awh, %bb.ly ], [ %i.avz, %bb.lw ], [ %i.avr, %bb.lu ], [ %i.avj, %bb.ls ]
  %i.awp = call fastcc i64 @_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef align 8 dereferenceable(16) %i.i) #17, !noalias !3172 ; 3 uses
  %.sroa.4103.0.extract.shift.i.i.i.i.i.i.i.i.i.i = lshr i64 %i.awp, 32 ; 2 uses
  %.sroa.4103.0.extract.trunc.i.i.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.4103.0.extract.shift.i.i.i.i.i.i.i.i.i.i to i32
  %i.awq = and i64 %i.awp, 4294967295
  %i.awr = icmp eq i64 %i.awq, 2
  br i1 %i.awr, label %bb.mb, label %bb.mc

bb.mb:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit142.i.i.i.i.i.i.i.i.i.i
  %.sroa.663.4.extract.trunc.i.i.i.i.i.i.i.i.i.i = trunc i64 %.sroa.4103.0.extract.shift.i.i.i.i.i.i.i.i.i.i to i8
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i

bb.mc:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit142.i.i.i.i.i.i.i.i.i.i
  %i.aws = trunc i64 %i.awp to i1
  br i1 %i.aws, label %bb.md, label %bb.me, !prof !16

bb.md:                                            ; preds = %bb.mc
  %i.awt = call fastcc i64 @_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef align 8 dereferenceable(16) %i.i) #17, !noalias !3172 ; 3 uses
  %.sroa.4105.0.extract.shift.i.i.i.i.i.i.i.i.i.i = lshr i64 %i.awt, 32 ; 2 uses
  %.sroa.4105.0.extract.trunc.i.i.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.4105.0.extract.shift.i.i.i.i.i.i.i.i.i.i to i32
  %i.awu = and i64 %i.awt, 4294967295
  %i.awv = icmp eq i64 %i.awu, 2
  br i1 %i.awv, label %bb.mf, label %bb.mg

bb.me:                                            ; preds = %bb.mc
  %i.aww = tail call noundef i8 @_RNvYNtNtCslX2I8TqP5TK_8postcard5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error14invalid_lengthCsJo5RpJFzwk_14proc_macro_api(i64 noundef 6, ptr noundef nonnull @70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61), !noalias !3172
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i

bb.mf:                                            ; preds = %bb.md
  %.sroa.673.4.extract.trunc.i.i.i.i.i.i.i.i.i.i = trunc i64 %.sroa.4105.0.extract.shift.i.i.i.i.i.i.i.i.i.i to i8
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i

bb.mg:                                            ; preds = %bb.md
  %i.awx = trunc i64 %i.awt to i1
  br i1 %i.awx, label %bb.mh, label %bb.mi, !prof !16

bb.mh:                                            ; preds = %bb.mg
  %i.awy = call fastcc i64 @_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef align 8 dereferenceable(16) %i.i) #17, !noalias !3172 ; 3 uses
  %.sroa.4107.0.extract.shift.i.i.i.i.i.i.i.i.i.i = lshr i64 %i.awy, 32 ; 2 uses
  %.sroa.4107.0.extract.trunc.i.i.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.4107.0.extract.shift.i.i.i.i.i.i.i.i.i.i to i32
  %i.awz = and i64 %i.awy, 4294967295
  %i.axa = icmp eq i64 %i.awz, 2
  br i1 %i.axa, label %bb.mj, label %bb.mk

bb.mi:                                            ; preds = %bb.mg
  %i.axb = tail call noundef i8 @_RNvYNtNtCslX2I8TqP5TK_8postcard5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error14invalid_lengthCsJo5RpJFzwk_14proc_macro_api(i64 noundef 7, ptr noundef nonnull @70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61), !noalias !3172
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i

bb.mj:                                            ; preds = %bb.mh
  %.sroa.683.4.extract.trunc.i.i.i.i.i.i.i.i.i.i = trunc i64 %.sroa.4107.0.extract.shift.i.i.i.i.i.i.i.i.i.i to i8
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i

bb.mk:                                            ; preds = %bb.mh
  %i.axc = trunc i64 %i.awy to i1
  br i1 %i.axc, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.i.i, label %bb.ml, !prof !16

bb.ml:                                            ; preds = %bb.mk
  %i.axd = tail call noundef i8 @_RNvYNtNtCslX2I8TqP5TK_8postcard5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error14invalid_lengthCsJo5RpJFzwk_14proc_macro_api(i64 noundef 8, ptr noundef nonnull @70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61), !noalias !3172
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i

_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i: ; preds = %bb.ml, %bb.mj, %bb.mi, %bb.mf, %bb.me, %bb.mb, %bb.ma, %bb.lz, %bb.lx, %bb.lv, %bb.lt, %bb.lr, %bb.lq, %bb.lp, %bb.ln, %bb.ll, %bb.lj, %bb.lh, %bb.lg, %bb.lf, %bb.ld, %bb.lb, %bb.kz, %bb.kx, %bb.kw, %bb.kv, %bb.kt, %bb.kr, %bb.kp, %bb.kn, %bb.km, %bb.kl, %bb.kj, %bb.kh, %bb.kf, %bb.kd, %bb.kc, %bb.kb, %bb.jz, %bb.jx, %bb.jv, %bb.jt
  %.sroa.45.sroa.0.0.ph.i.i = phi i8 [ %.sroa.683.4.extract.trunc.i.i.i.i.i.i.i.i.i.i, %bb.mj ], [ %i.axd, %bb.ml ], [ %i.axb, %bb.mi ], [ %i.aww, %bb.me ], [ 4, %bb.lv ], [ 4, %bb.lr ], [ 4, %bb.lx ], [ 5, %bb.ma ], [ 4, %bb.lz ], [ 4, %bb.ll ], [ 4, %bb.lh ], [ 4, %bb.ln ], [ 5, %bb.lq ], [ 4, %bb.lp ], [ 4, %bb.lb ], [ 4, %bb.kx ], [ 4, %bb.ld ], [ 5, %bb.lg ], [ 4, %bb.lf ], [ 4, %bb.kr ], [ 4, %bb.kn ], [ 4, %bb.kt ], [ 5, %bb.kw ], [ 4, %bb.kv ], [ 4, %bb.kh ], [ 4, %bb.kd ], [ 4, %bb.kj ], [ 5, %bb.km ], [ 4, %bb.kl ], [ 4, %bb.jv ], [ 4, %bb.jx ], [ 4, %bb.jt ], [ 4, %bb.jz ], [ 5, %bb.kc ], [ %.sroa.673.4.extract.trunc.i.i.i.i.i.i.i.i.i.i, %bb.mf ], [ %.sroa.663.4.extract.trunc.i.i.i.i.i.i.i.i.i.i, %bb.mb ], [ 4, %bb.lt ], [ 4, %bb.lj ], [ 4, %bb.kz ], [ 4, %bb.kp ], [ 4, %bb.kf ], [ 4, %bb.kb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3048
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i

_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.i.i: ; preds = %bb.mk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3048
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i

bb.mm:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2n_20BidirectionalMessageNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3182)
  %i.axe = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.axe, label %bb.qg, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.axf = load i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !3183, !noundef !6 ; 2 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, i64 1 ; 4 uses
  store ptr %i.axg, ptr %1, align 8, !alias.scope !3184
  %i.axh = and i8 %i.axf, 127
  %i.axi = zext nneg i8 %i.axh to i32             ; 2 uses
  %i.axj = icmp sgt i8 %i.axf, -1
  br i1 %i.axj, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i25.i.i, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3185)
  %i.axk = icmp eq ptr %i.axg, %i.s
  br i1 %i.axk, label %bb.qg, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.axl = load i8, ptr %i.axg, align 1, !noalias !3186, !noundef !6 ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, i64 2 ; 4 uses
  store ptr %i.axm, ptr %1, align 8, !alias.scope !3187
  %i.axn = and i8 %i.axl, 127
  %i.axo = zext nneg i8 %i.axn to i32
  %i.axp = shl nuw nsw i32 %i.axo, 7
  %i.axq = or disjoint i32 %i.axp, %i.axi         ; 2 uses
  %i.axr = icmp sgt i8 %i.axl, -1
  br i1 %i.axr, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i25.i.i, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3188)
  %i.axs = icmp eq ptr %i.axm, %i.s
  br i1 %i.axs, label %bb.qg, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.axt = load i8, ptr %i.axm, align 1, !noalias !3189, !noundef !6 ; 2 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, i64 3 ; 4 uses
  store ptr %i.axu, ptr %1, align 8, !alias.scope !3190
  %i.axv = and i8 %i.axt, 127
  %i.axw = zext nneg i8 %i.axv to i32
  %i.axx = shl nuw nsw i32 %i.axw, 14
  %i.axy = or disjoint i32 %i.axx, %i.axq         ; 2 uses
  %i.axz = icmp sgt i8 %i.axt, -1
  br i1 %i.axz, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i25.i.i, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3191)
  %i.aya = icmp eq ptr %i.axu, %i.s
  br i1 %i.aya, label %bb.qg, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %i.ayb = load i8, ptr %i.axu, align 1, !noalias !3192, !noundef !6 ; 2 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 4 uses
  store ptr %i.ayc, ptr %1, align 8, !alias.scope !3193
  %i.ayd = and i8 %i.ayb, 127
  %i.aye = zext nneg i8 %i.ayd to i32
  %i.ayf = shl nuw nsw i32 %i.aye, 21
  %i.ayg = or disjoint i32 %i.ayf, %i.axy         ; 2 uses
  %i.ayh = icmp sgt i8 %i.ayb, -1
  br i1 %i.ayh, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i25.i.i, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3194)
  %i.ayi = icmp eq ptr %i.ayc, %i.s
  br i1 %i.ayi, label %bb.qg, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.ayj = load i8, ptr %i.ayc, align 1, !noalias !3195, !noundef !6 ; 2 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i, i64 5 ; 2 uses
  store ptr %i.ayk, ptr %1, align 8, !alias.scope !3196
  %i.ayl = zext i8 %i.ayj to i32
  %i.aym = shl nuw i32 %i.ayl, 28
  %i.ayn = or disjoint i32 %i.aym, %i.ayg
  %or.cond35.not.i.i.i.i.i.i.i.i.i24.i.i = icmp ult i8 %i.ayj, 16
  br i1 %or.cond35.not.i.i.i.i.i.i.i.i.i24.i.i, label %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i25.i.i, label %bb.qg

_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i25.i.i: ; preds = %bb.mv, %bb.mt, %bb.mr, %bb.mp, %bb.mn
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i26.i.i = phi ptr [ %i.ayk, %bb.mv ], [ %i.ayc, %bb.mt ], [ %i.axu, %bb.mr ], [ %i.axm, %bb.mp ], [ %i.axg, %bb.mn ] ; 14 uses
  %.lcssa34.i.i.i.i.i.i.i.i.i27.i.i = phi i32 [ %i.ayn, %bb.mv ], [ %i.ayg, %bb.mt ], [ %i.axy, %bb.mr ], [ %i.axq, %bb.mp ], [ %i.axi, %bb.mn ] ; 3 uses
  %i.ayo = icmp ult i32 %.lcssa34.i.i.i.i.i.i.i.i.i27.i.i, 9
  br i1 %i.ayo, label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs1_1__NtB2n_11SubResponseNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i, label %bb.mw, !prof !3197

bb.mw:                                            ; preds = %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i25.i.i
  %i.ayp = zext i32 %.lcssa34.i.i.i.i.i.i.i.i.i27.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3198
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ayp, ptr %i.ayq, align 8, !noalias !3198
  store i8 1, ptr %i.h, align 8, !noalias !3198
  %i.ayr = call noundef i8 @_RNvYNtNtCslX2I8TqP5TK_8postcard5error5ErrorNtNtCsjQbM3MYDIrM_10serde_core2de5Error13invalid_valueCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull @60, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61), !noalias !3199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3198
  br label %bb.qg

_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs1_1__NtB2n_11SubResponseNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs0_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB5_12DeserializerNtNtB7_7flavors5SliceE19try_take_varint_u32CsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i25.i.i
  %switch.idx.cast.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i32 %.lcssa34.i.i.i.i.i.i.i.i.i27.i.i to i8
  switch i8 %switch.idx.cast.i.i.i.i.i.i.i.i.i.i, label %default.unreachable [
    i8 0, label %bb.mx
    i8 1, label %bb.na
    i8 2, label %bb.nd
    i8 3, label %bb.ng
    i8 4, label %bb.nz
    i8 5, label %bb.oc
    i8 6, label %bb.pw
    i8 7, label %bb.pz
    i8 8, label %bb.qc
  ]

bb.mx:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs1_1__NtB2n_11SubResponseNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3200
  call void @_RINvXs6_NtNtCsjQbM3MYDIrM_10serde_core2de5implsNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB1W_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !3201
  %i.ays = load i64, ptr %i.g, align 8, !range !5, !noalias !3200, !noundef !6 ; 4 uses
  %i.ayt = icmp eq i64 %i.ays, -1
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ayv = load i8, ptr %i.ayu, align 8, !noalias !3200 ; 2 uses
  br i1 %i.ayt, label %bb.mz, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %.sroa.511.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %.sroa.53.sroa.0.sroa.11.sroa.0.0.copyload150.i.i = load i24, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !3202
  %.sroa.53.sroa.15.1..sroa.511.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.53.sroa.15.1.copyload138.i.i = load i32, ptr %.sroa.53.sroa.15.1..sroa.511.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.sroa_idx.i.i, align 4, !noalias !3202
  %.sroa.64.17..sroa.511.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.64.17.copyload126.i.i = load i64, ptr %.sroa.64.17..sroa.511.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.sroa_idx.i.i, align 8, !noalias !3202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3200
  %.sroa.41.sroa.0.0.extract.trunc154.i.i = trunc i64 %i.ays to i32
  %.sroa.41.sroa.0.sroa.0.0.extract.trunc170.i.i = trunc i64 %i.ays to i8
  %.sroa.41.sroa.0.sroa.12.0.extract.shift181.i.i = lshr i32 %.sroa.41.sroa.0.0.extract.trunc154.i.i, 8
  %.sroa.41.sroa.0.sroa.12.0.extract.trunc182.i.i = trunc nuw i32 %.sroa.41.sroa.0.sroa.12.0.extract.shift181.i.i to i24
  %.sroa.41.sroa.14.0.extract.shift162.i.i = lshr i64 %i.ays, 32
  %.sroa.41.sroa.14.0.extract.trunc163.i.i = trunc nuw nsw i64 %.sroa.41.sroa.14.0.extract.shift162.i.i to i32
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg11SubResponseEB2y_.exit.i.i

bb.mz:                                            ; preds = %bb.mx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3200
  br label %bb.qg

bb.na:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs1_1__NtB2n_11SubResponseNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3203
  call void @_RINvXse_NtNtCsjQbM3MYDIrM_10serde_core2de5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB2z_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !3204
  %i.ayw = load i64, ptr %i.f, align 8, !range !15, !noalias !3203, !noundef !6 ; 4 uses
  %i.ayx = icmp eq i64 %i.ayw, -2
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ayz = load i8, ptr %i.ayy, align 8, !noalias !3203 ; 2 uses
  br i1 %i.ayx, label %bb.nc, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %.sroa.511.0..sroa_idx.i.i.i.i2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %.sroa.53.sroa.0.sroa.11.sroa.0.0.copyload149.i.i = load i24, ptr %.sroa.511.0..sroa_idx.i.i.i.i2.i.i.i.i.i.i.i.i, align 1, !noalias !3205
  %.sroa.53.sroa.15.1..sroa.511.0..sroa_idx.i.i.i.i2.i.i.i.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.53.sroa.15.1.copyload137.i.i = load i32, ptr %.sroa.53.sroa.15.1..sroa.511.0..sroa_idx.i.i.i.i2.i.i.i.i.i.i.sroa_idx.i.i, align 4, !noalias !3205
  %.sroa.64.17..sroa.511.0..sroa_idx.i.i.i.i2.i.i.i.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.64.17.copyload125.i.i = load i64, ptr %.sroa.64.17..sroa.511.0..sroa_idx.i.i.i.i2.i.i.i.i.i.i.sroa_idx.i.i, align 8, !noalias !3205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3203
  %.sroa.41.sroa.0.0.extract.trunc153.i.i = trunc i64 %i.ayw to i32
  %.sroa.41.sroa.0.sroa.0.0.extract.trunc169.i.i = trunc i64 %i.ayw to i8
  %.sroa.41.sroa.0.sroa.12.0.extract.shift179.i.i = lshr i32 %.sroa.41.sroa.0.0.extract.trunc153.i.i, 8
  %.sroa.41.sroa.0.sroa.12.0.extract.trunc180.i.i = trunc nuw i32 %.sroa.41.sroa.0.sroa.12.0.extract.shift179.i.i to i24
  %.sroa.41.sroa.14.0.extract.shift160.i.i = lshr i64 %i.ayw, 32
  %.sroa.41.sroa.14.0.extract.trunc161.i.i = trunc nuw i64 %.sroa.41.sroa.14.0.extract.shift160.i.i to i32
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg11SubResponseEB2y_.exit.i.i

bb.nc:                                            ; preds = %bb.na
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3203
  br label %bb.qg

bb.nd:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs1_1__NtB2n_11SubResponseNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3206
  call void @_RINvXse_NtNtCsjQbM3MYDIrM_10serde_core2de5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB2z_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !3207
  %i.aza = load i64, ptr %i.e, align 8, !range !15, !noalias !3206, !noundef !6 ; 4 uses
  %i.azb = icmp eq i64 %i.aza, -2
  %i.azc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.azd = load i8, ptr %i.azc, align 8, !noalias !3206 ; 2 uses
  br i1 %i.azb, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %.sroa.511.0..sroa_idx.i.i.i.i7.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %.sroa.53.sroa.0.sroa.11.sroa.0.0.copyload148.i.i = load i24, ptr %.sroa.511.0..sroa_idx.i.i.i.i7.i.i.i.i.i.i.i.i, align 1, !noalias !3208
  %.sroa.53.sroa.15.1..sroa.511.0..sroa_idx.i.i.i.i7.i.i.i.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.53.sroa.15.1.copyload136.i.i = load i32, ptr %.sroa.53.sroa.15.1..sroa.511.0..sroa_idx.i.i.i.i7.i.i.i.i.i.i.sroa_idx.i.i, align 4, !noalias !3208
  %.sroa.64.17..sroa.511.0..sroa_idx.i.i.i.i7.i.i.i.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.64.17.copyload124.i.i = load i64, ptr %.sroa.64.17..sroa.511.0..sroa_idx.i.i.i.i7.i.i.i.i.i.i.sroa_idx.i.i, align 8, !noalias !3208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3206
  %.sroa.41.sroa.0.0.extract.trunc152.i.i = trunc i64 %i.aza to i32
  %.sroa.41.sroa.0.sroa.0.0.extract.trunc168.i.i = trunc i64 %i.aza to i8
  %.sroa.41.sroa.0.sroa.12.0.extract.shift177.i.i = lshr i32 %.sroa.41.sroa.0.0.extract.trunc152.i.i, 8
  %.sroa.41.sroa.0.sroa.12.0.extract.trunc178.i.i = trunc nuw i32 %.sroa.41.sroa.0.sroa.12.0.extract.shift177.i.i to i24
  %.sroa.41.sroa.14.0.extract.shift158.i.i = lshr i64 %i.aza, 32
  %.sroa.41.sroa.14.0.extract.trunc159.i.i = trunc nuw i64 %.sroa.41.sroa.14.0.extract.shift158.i.i to i32
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg11SubResponseEB2y_.exit.i.i

bb.nf:                                            ; preds = %bb.nd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3206
  br label %bb.qg

bb.ng:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs1_1__NtB2n_11SubResponseNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3215)
  %i.aze = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i26.i.i, %i.s
  br i1 %i.aze, label %bb.qg, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.azf = load i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i26.i.i, align 1, !noalias !3216, !noundef !6 ; 2 uses
  %i.azg = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i26.i.i, i64 1 ; 4 uses
  store ptr %i.azg, ptr %1, align 8, !alias.scope !3217, !noalias !3218
  %i.azh = and i8 %i.azf, 127
  %i.azi = zext nneg i8 %i.azh to i32             ; 2 uses
  %i.azj = icmp sgt i8 %i.azf, -1
  br i1 %i.azj, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i59.i.i, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3219)
  %i.azk = icmp eq ptr %i.azg, %i.s
  br i1 %i.azk, label %bb.qg, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.azl = load i8, ptr %i.azg, align 1, !noalias !3220, !noundef !6 ; 2 uses
  %i.azm = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i26.i.i, i64 2 ; 4 uses
  store ptr %i.azm, ptr %1, align 8, !alias.scope !3221, !noalias !3218
  %i.azn = and i8 %i.azl, 127
  %i.azo = zext nneg i8 %i.azn to i32
  %i.azp = shl nuw nsw i32 %i.azo, 7
  %i.azq = or disjoint i32 %i.azp, %i.azi         ; 2 uses
  %i.azr = icmp sgt i8 %i.azl, -1
  br i1 %i.azr, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i59.i.i, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3222)
  %i.azs = icmp eq ptr %i.azm, %i.s
  br i1 %i.azs, label %bb.qg, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.azt = load i8, ptr %i.azm, align 1, !noalias !3223, !noundef !6 ; 2 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i26.i.i, i64 3 ; 4 uses
  store ptr %i.azu, ptr %1, align 8, !alias.scope !3224, !noalias !3218
  %i.azv = and i8 %i.azt, 127
  %i.azw = zext nneg i8 %i.azv to i32
  %i.azx = shl nuw nsw i32 %i.azw, 14
  %i.azy = or disjoint i32 %i.azx, %i.azq         ; 2 uses
  %i.azz = icmp sgt i8 %i.azt, -1
  br i1 %i.azz, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i59.i.i, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3225)
  %i.baa = icmp eq ptr %i.azu, %i.s
  br i1 %i.baa, label %bb.qg, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.bab = load i8, ptr %i.azu, align 1, !noalias !3226, !noundef !6 ; 2 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i26.i.i, i64 4 ; 4 uses
  store ptr %i.bac, ptr %1, align 8, !alias.scope !3227, !noalias !3218
  %i.bad = and i8 %i.bab, 127
  %i.bae = zext nneg i8 %i.bad to i32
  %i.baf = shl nuw nsw i32 %i.bae, 21
  %i.bag = or disjoint i32 %i.baf, %i.azy         ; 2 uses
  %i.bah = icmp sgt i8 %i.bab, -1
  br i1 %i.bah, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i59.i.i, label %bb.no

bb.no:                                            ; preds = %bb.nn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3228)
  %i.bai = icmp eq ptr %i.bac, %i.s
  br i1 %i.bai, label %bb.qg, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.baj = load i8, ptr %i.bac, align 1, !noalias !3229, !noundef !6 ; 2 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i26.i.i, i64 5 ; 2 uses
  store ptr %i.bak, ptr %1, align 8, !alias.scope !3230, !noalias !3218
  %i.bal = zext i8 %i.baj to i32
  %i.bam = shl nuw i32 %i.bal, 28
  %i.ban = or disjoint i32 %i.bam, %i.bag
  %or.cond35.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i56.i.i = icmp ult i8 %i.baj, 16
  br i1 %or.cond35.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i56.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i59.i.i, label %bb.qg

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i59.i.i: ; preds = %bb.np, %bb.nn, %bb.nl, %bb.nj, %bb.nh
  %.promoted.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bak, %bb.np ], [ %i.bac, %bb.nn ], [ %i.azu, %bb.nl ], [ %i.azm, %bb.nj ], [ %i.azg, %bb.nh ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i.i.i.i.i.i.i.i.i60.i.i = phi i32 [ %i.ban, %bb.np ], [ %i.bag, %bb.nn ], [ %i.azy, %bb.nl ], [ %i.azq, %bb.nj ], [ %i.azi, %bb.nh ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3235)
  %i.bao = icmp eq ptr %.promoted.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %i.bao, label %bb.qg, label %bb.nq

bb.nq:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i59.i.i
  %i.bap = load i8, ptr %.promoted.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !3236, !noundef !6 ; 2 uses
  %i.baq = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.i.i, i64 1 ; 3 uses
  store ptr %i.baq, ptr %1, align 8, !alias.scope !3237, !noalias !3238
  %i.bar = and i8 %i.bap, 127
  %i.bas = zext nneg i8 %i.bar to i32             ; 2 uses
  %i.bat = icmp sgt i8 %i.bap, -1
  br i1 %i.bat, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit30.i.i.i.i.i.i.i.i.i.i, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3239)
  %i.bau = icmp eq ptr %i.baq, %i.s
  br i1 %i.bau, label %bb.qg, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.bav = load i8, ptr %i.baq, align 1, !noalias !3240, !noundef !6 ; 2 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.i.i, i64 2 ; 3 uses
  store ptr %i.baw, ptr %1, align 8, !alias.scope !3241, !noalias !3238
  %i.bax = and i8 %i.bav, 127
  %i.bay = zext nneg i8 %i.bax to i32
  %i.baz = shl nuw nsw i32 %i.bay, 7
  %i.bba = or disjoint i32 %i.baz, %i.bas         ; 2 uses
  %i.bbb = icmp sgt i8 %i.bav, -1
  br i1 %i.bbb, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit30.i.i.i.i.i.i.i.i.i.i, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3242)
  %i.bbc = icmp eq ptr %i.baw, %i.s
  br i1 %i.bbc, label %bb.qg, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.bbd = load i8, ptr %i.baw, align 1, !noalias !3243, !noundef !6 ; 2 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.i.i, i64 3 ; 3 uses
  store ptr %i.bbe, ptr %1, align 8, !alias.scope !3244, !noalias !3238
  %i.bbf = and i8 %i.bbd, 127
  %i.bbg = zext nneg i8 %i.bbf to i32
  %i.bbh = shl nuw nsw i32 %i.bbg, 14
  %i.bbi = or disjoint i32 %i.bbh, %i.bba         ; 2 uses
  %i.bbj = icmp sgt i8 %i.bbd, -1
  br i1 %i.bbj, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit30.i.i.i.i.i.i.i.i.i.i, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3245)
  %i.bbk = icmp eq ptr %i.bbe, %i.s
  br i1 %i.bbk, label %bb.qg, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.bbl = load i8, ptr %i.bbe, align 1, !noalias !3246, !noundef !6 ; 2 uses
  %i.bbm = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.i.i, i64 4 ; 3 uses
  store ptr %i.bbm, ptr %1, align 8, !alias.scope !3247, !noalias !3238
  %i.bbn = and i8 %i.bbl, 127
  %i.bbo = zext nneg i8 %i.bbn to i32
  %i.bbp = shl nuw nsw i32 %i.bbo, 21
  %i.bbq = or disjoint i32 %i.bbp, %i.bbi         ; 2 uses
  %i.bbr = icmp sgt i8 %i.bbl, -1
  br i1 %i.bbr, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit30.i.i.i.i.i.i.i.i.i.i, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3248)
  %i.bbs = icmp eq ptr %i.bbm, %i.s
  br i1 %i.bbs, label %bb.qg, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.bbt = load i8, ptr %i.bbm, align 1, !noalias !3249, !noundef !6 ; 2 uses
  %i.bbu = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.i.i, i64 5
  store ptr %i.bbu, ptr %1, align 8, !alias.scope !3250, !noalias !3238
  %i.bbv = zext i8 %i.bbt to i32
  %i.bbw = shl nuw i32 %i.bbv, 28
  %i.bbx = or disjoint i32 %i.bbw, %i.bbq
  %or.cond35.not.i.i.i.i.i.i26.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bbt, 16
  br i1 %or.cond35.not.i.i.i.i.i.i26.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit30.i.i.i.i.i.i.i.i.i.i, label %bb.qg

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit30.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ny, %bb.nw, %bb.nu, %bb.ns, %bb.nq
  %.lcssa34.i.i.i.i.i.i29.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bbx, %bb.ny ], [ %i.bbq, %bb.nw ], [ %i.bbi, %bb.nu ], [ %i.bba, %bb.ns ], [ %i.bas, %bb.nq ] ; 2 uses
  %.sroa.21118.sroa.23.0.extract.shift191.i.i = and i32 %.lcssa34.i.i.i.i.i.i.i.i.i.i.i.i.i.i60.i.i, -256
  %.sroa.41.sroa.0.sroa.0.0.extract.trunc165.i.i = trunc i32 %.lcssa34.i.i.i.i.i.i29.i.i.i.i.i.i.i.i.i.i to i8
  %.sroa.41.sroa.0.sroa.12.0.extract.shift171.i.i = lshr i32 %.lcssa34.i.i.i.i.i.i29.i.i.i.i.i.i.i.i.i.i, 8
  %.sroa.41.sroa.0.sroa.12.0.extract.trunc172.i.i = trunc nuw i32 %.sroa.41.sroa.0.sroa.12.0.extract.shift171.i.i to i24
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg11SubResponseEB2y_.exit.i.i

bb.nz:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs1_1__NtB2n_11SubResponseNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3251
  call void @_RINvXsy_NtNtCsjQbM3MYDIrM_10serde_core2de5implsINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtB8_11Deserialize11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB22_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !3252
  %i.bby = load i8, ptr %i.d, align 8, !range !2491, !noalias !3251, !noundef !6
  %i.bbz = trunc nuw i8 %i.bby to i1
  br i1 %i.bbz, label %bb.ob, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.bca = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bcb = load i64, ptr %i.bca, align 8, !noalias !3251, !noundef !6 ; 3 uses
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bcd = load i64, ptr %i.bcc, align 8, !noalias !3251, !noundef !6 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3251
  %.sroa.41.sroa.0.0.extract.trunc151.i.i = trunc i64 %i.bcb to i32
  %.sroa.41.sroa.0.sroa.0.0.extract.trunc167.i.i = trunc i64 %i.bcb to i8
  %.sroa.41.sroa.0.sroa.12.0.extract.shift175.i.i = lshr i32 %.sroa.41.sroa.0.0.extract.trunc151.i.i, 8
  %.sroa.41.sroa.0.sroa.12.0.extract.trunc176.i.i = trunc nuw i32 %.sroa.41.sroa.0.sroa.12.0.extract.shift175.i.i to i24
  %.sroa.41.sroa.14.0.extract.shift156.i.i = lshr i64 %i.bcb, 32
  %.sroa.41.sroa.14.0.extract.trunc157.i.i = trunc nuw i64 %.sroa.41.sroa.14.0.extract.shift156.i.i to i32
  %.sroa.53.sroa.0.0.extract.trunc128.i.i = trunc i64 %i.bcd to i32
  %.sroa.53.sroa.0.sroa.0.0.extract.trunc141.i.i = trunc i64 %i.bcd to i8
  %.sroa.53.sroa.0.sroa.11.0.extract.shift146.i.i = lshr i32 %.sroa.53.sroa.0.0.extract.trunc128.i.i, 8
  %.sroa.53.sroa.0.sroa.11.0.extract.trunc147.i.i = trunc nuw i32 %.sroa.53.sroa.0.sroa.11.0.extract.shift146.i.i to i24
  %.sroa.53.sroa.15.0.extract.shift134.i.i = lshr i64 %i.bcd, 32
  %.sroa.53.sroa.15.0.extract.trunc135.i.i = trunc nuw i64 %.sroa.53.sroa.15.0.extract.shift134.i.i to i32
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg11SubResponseEB2y_.exit.i.i

bb.ob:                                            ; preds = %bb.nz
  %i.bce = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.bcf = load i8, ptr %i.bce, align 1, !range !12, !noalias !3251, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3251
  br label %bb.qg

bb.oc:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs1_1__NtB2n_11SubResponseNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3259)
  %i.bcg = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i26.i.i, %i.s
  br i1 %i.bcg, label %bb.qg, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.bch = load i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i26.i.i, align 1, !noalias !3260, !noundef !6 ; 2 uses
  %i.bci = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i26.i.i, i64 1 ; 4 uses
  store ptr %i.bci, ptr %1, align 8, !alias.scope !3261, !noalias !3262
  %i.bcj = and i8 %i.bch, 127
  %i.bck = zext nneg i8 %i.bcj to i32             ; 2 uses
  %i.bcl = icmp sgt i8 %i.bch, -1
  br i1 %i.bcl, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i18.i.i.i.i.i.i.i.i, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3263)
  %i.bcm = icmp eq ptr %i.bci, %i.s
  br i1 %i.bcm, label %bb.qg, label %bb.of

bb.of:                                            ; preds = %bb.oe
  %i.bcn = load i8, ptr %i.bci, align 1, !noalias !3264, !noundef !6 ; 2 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i26.i.i, i64 2 ; 4 uses
  store ptr %i.bco, ptr %1, align 8, !alias.scope !3265, !noalias !3262
  %i.bcp = and i8 %i.bcn, 127
  %i.bcq = zext nneg i8 %i.bcp to i32
  %i.bcr = shl nuw nsw i32 %i.bcq, 7
  %i.bcs = or disjoint i32 %i.bcr, %i.bck         ; 2 uses
  %i.bct = icmp sgt i8 %i.bcn, -1
  br i1 %i.bct, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i18.i.i.i.i.i.i.i.i, label %bb.og

bb.og:                                            ; preds = %bb.of
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3266)
  %i.bcu = icmp eq ptr %i.bco, %i.s
  br i1 %i.bcu, label %bb.qg, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.bcv = load i8, ptr %i.bco, align 1, !noalias !3267, !noundef !6 ; 2 uses
  %i.bcw = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i26.i.i, i64 3 ; 4 uses
  store ptr %i.bcw, ptr %1, align 8, !alias.scope !3268, !noalias !3262
  %i.bcx = and i8 %i.bcv, 127
  %i.bcy = zext nneg i8 %i.bcx to i32
  %i.bcz = shl nuw nsw i32 %i.bcy, 14
  %i.bda = or disjoint i32 %i.bcz, %i.bcs         ; 2 uses
  %i.bdb = icmp sgt i8 %i.bcv, -1
  br i1 %i.bdb, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i18.i.i.i.i.i.i.i.i, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3269)
  %i.bdc = icmp eq ptr %i.bcw, %i.s
  br i1 %i.bdc, label %bb.qg, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.bdd = load i8, ptr %i.bcw, align 1, !noalias !3270, !noundef !6 ; 2 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i26.i.i, i64 4 ; 4 uses
  store ptr %i.bde, ptr %1, align 8, !alias.scope !3271, !noalias !3262
  %i.bdf = and i8 %i.bdd, 127
  %i.bdg = zext nneg i8 %i.bdf to i32
  %i.bdh = shl nuw nsw i32 %i.bdg, 21
  %i.bdi = or disjoint i32 %i.bdh, %i.bda         ; 2 uses
  %i.bdj = icmp sgt i8 %i.bdd, -1
  br i1 %i.bdj, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i18.i.i.i.i.i.i.i.i, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3272)
  %i.bdk = icmp eq ptr %i.bde, %i.s
  br i1 %i.bdk, label %bb.qg, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.bdl = load i8, ptr %i.bde, align 1, !noalias !3273, !noundef !6 ; 2 uses
  %i.bdm = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i26.i.i, i64 5 ; 2 uses
  store ptr %i.bdm, ptr %1, align 8, !alias.scope !3274, !noalias !3262
  %i.bdn = zext i8 %i.bdl to i32
  %i.bdo = shl nuw i32 %i.bdn, 28
  %i.bdp = or disjoint i32 %i.bdo, %i.bdi
  %or.cond35.not.i.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i = icmp ult i8 %i.bdl, 16
  br i1 %or.cond35.not.i.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i18.i.i.i.i.i.i.i.i, label %bb.qg

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i18.i.i.i.i.i.i.i.i: ; preds = %bb.ol, %bb.oj, %bb.oh, %bb.of, %bb.od
  %.promoted.i.i.i.i.i.i61.i.i.i.i.i.i.i.i29.i.i = phi ptr [ %i.bdm, %bb.ol ], [ %i.bde, %bb.oj ], [ %i.bcw, %bb.oh ], [ %i.bco, %bb.of ], [ %i.bci, %bb.od ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i = phi i32 [ %i.bdp, %bb.ol ], [ %i.bdi, %bb.oj ], [ %i.bda, %bb.oh ], [ %i.bcs, %bb.of ], [ %i.bck, %bb.od ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3279)
  %i.bdq = icmp eq ptr %.promoted.i.i.i.i.i.i61.i.i.i.i.i.i.i.i29.i.i, %i.s
  br i1 %i.bdq, label %bb.qg, label %bb.om

bb.om:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i18.i.i.i.i.i.i.i.i
  %i.bdr = load i8, ptr %.promoted.i.i.i.i.i.i61.i.i.i.i.i.i.i.i29.i.i, align 1, !noalias !3280, !noundef !6 ; 2 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i61.i.i.i.i.i.i.i.i29.i.i, i64 1 ; 4 uses
  store ptr %i.bds, ptr %1, align 8, !alias.scope !3281, !noalias !3282
  %i.bdt = and i8 %i.bdr, 127
  %i.bdu = zext nneg i8 %i.bdt to i32             ; 2 uses
  %i.bdv = icmp sgt i8 %i.bdr, -1
  br i1 %i.bdv, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i.i.i.i.i.i.i33.i.i, label %bb.on

bb.on:                                            ; preds = %bb.om
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3283)
  %i.bdw = icmp eq ptr %i.bds, %i.s
  br i1 %i.bdw, label %bb.qg, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.bdx = load i8, ptr %i.bds, align 1, !noalias !3284, !noundef !6 ; 2 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i61.i.i.i.i.i.i.i.i29.i.i, i64 2 ; 4 uses
  store ptr %i.bdy, ptr %1, align 8, !alias.scope !3285, !noalias !3282
  %i.bdz = and i8 %i.bdx, 127
  %i.bea = zext nneg i8 %i.bdz to i32
  %i.beb = shl nuw nsw i32 %i.bea, 7
  %i.bec = or disjoint i32 %i.beb, %i.bdu         ; 2 uses
  %i.bed = icmp sgt i8 %i.bdx, -1
  br i1 %i.bed, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i.i.i.i.i.i.i33.i.i, label %bb.op

bb.op:                                            ; preds = %bb.oo
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3286)
  %i.bee = icmp eq ptr %i.bdy, %i.s
  br i1 %i.bee, label %bb.qg, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.bef = load i8, ptr %i.bdy, align 1, !noalias !3287, !noundef !6 ; 2 uses
  %i.beg = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i61.i.i.i.i.i.i.i.i29.i.i, i64 3 ; 4 uses
  store ptr %i.beg, ptr %1, align 8, !alias.scope !3288, !noalias !3282
  %i.beh = and i8 %i.bef, 127
  %i.bei = zext nneg i8 %i.beh to i32
  %i.bej = shl nuw nsw i32 %i.bei, 14
  %i.bek = or disjoint i32 %i.bej, %i.bec         ; 2 uses
  %i.bel = icmp sgt i8 %i.bef, -1
  br i1 %i.bel, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i.i.i.i.i.i.i33.i.i, label %bb.or

bb.or:                                            ; preds = %bb.oq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3289)
  %i.bem = icmp eq ptr %i.beg, %i.s
  br i1 %i.bem, label %bb.qg, label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.ben = load i8, ptr %i.beg, align 1, !noalias !3290, !noundef !6 ; 2 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i61.i.i.i.i.i.i.i.i29.i.i, i64 4 ; 4 uses
  store ptr %i.beo, ptr %1, align 8, !alias.scope !3291, !noalias !3282
  %i.bep = and i8 %i.ben, 127
  %i.beq = zext nneg i8 %i.bep to i32
  %i.ber = shl nuw nsw i32 %i.beq, 21
  %i.bes = or disjoint i32 %i.ber, %i.bek         ; 2 uses
  %i.bet = icmp sgt i8 %i.ben, -1
  br i1 %i.bet, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i.i.i.i.i.i.i33.i.i, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3292)
  %i.beu = icmp eq ptr %i.beo, %i.s
  br i1 %i.beu, label %bb.qg, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.bev = load i8, ptr %i.beo, align 1, !noalias !3293, !noundef !6 ; 2 uses
  %i.bew = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i61.i.i.i.i.i.i.i.i29.i.i, i64 5 ; 2 uses
  store ptr %i.bew, ptr %1, align 8, !alias.scope !3294, !noalias !3282
  %i.bex = zext i8 %i.bev to i32
  %i.bey = shl nuw i32 %i.bex, 28
  %i.bez = or disjoint i32 %i.bey, %i.bes
  %or.cond35.not.i.i.i.i.i.i62.i.i.i.i.i.i.i.i30.i.i = icmp ult i8 %i.bev, 16
  br i1 %or.cond35.not.i.i.i.i.i.i62.i.i.i.i.i.i.i.i30.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i.i.i.i.i.i.i33.i.i, label %bb.qg

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i.i.i.i.i.i.i33.i.i: ; preds = %bb.ou, %bb.os, %bb.oq, %bb.oo, %bb.om
  %.promoted.i.i.i.i.i.i68.i.i.i.i.i.i.i.i34.i.i = phi ptr [ %i.bew, %bb.ou ], [ %i.beo, %bb.os ], [ %i.beg, %bb.oq ], [ %i.bdy, %bb.oo ], [ %i.bds, %bb.om ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i65.i.i.i.i.i.i.i.i35.i.i = phi i32 [ %i.bez, %bb.ou ], [ %i.bes, %bb.os ], [ %i.bek, %bb.oq ], [ %i.bec, %bb.oo ], [ %i.bdu, %bb.om ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3299)
  %i.bfa = icmp eq ptr %.promoted.i.i.i.i.i.i68.i.i.i.i.i.i.i.i34.i.i, %i.s
  br i1 %i.bfa, label %bb.qg, label %bb.ov

bb.ov:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i.i.i.i.i.i.i33.i.i
  %i.bfb = load i8, ptr %.promoted.i.i.i.i.i.i68.i.i.i.i.i.i.i.i34.i.i, align 1, !noalias !3300, !noundef !6 ; 2 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i68.i.i.i.i.i.i.i.i34.i.i, i64 1 ; 4 uses
  store ptr %i.bfc, ptr %1, align 8, !alias.scope !3301, !noalias !3302
  %i.bfd = and i8 %i.bfb, 127
  %i.bfe = zext nneg i8 %i.bfd to i32             ; 2 uses
  %i.bff = icmp sgt i8 %i.bfb, -1
  br i1 %i.bff, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i.i.i.i.i.i.i39.i.i, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3303)
  %i.bfg = icmp eq ptr %i.bfc, %i.s
  br i1 %i.bfg, label %bb.qg, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.bfh = load i8, ptr %i.bfc, align 1, !noalias !3304, !noundef !6 ; 2 uses
  %i.bfi = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i68.i.i.i.i.i.i.i.i34.i.i, i64 2 ; 4 uses
  store ptr %i.bfi, ptr %1, align 8, !alias.scope !3305, !noalias !3302
  %i.bfj = and i8 %i.bfh, 127
  %i.bfk = zext nneg i8 %i.bfj to i32
  %i.bfl = shl nuw nsw i32 %i.bfk, 7
  %i.bfm = or disjoint i32 %i.bfl, %i.bfe         ; 2 uses
  %i.bfn = icmp sgt i8 %i.bfh, -1
  br i1 %i.bfn, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i.i.i.i.i.i.i39.i.i, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3306)
  %i.bfo = icmp eq ptr %i.bfi, %i.s
  br i1 %i.bfo, label %bb.qg, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.bfp = load i8, ptr %i.bfi, align 1, !noalias !3307, !noundef !6 ; 2 uses
  %i.bfq = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i68.i.i.i.i.i.i.i.i34.i.i, i64 3 ; 4 uses
  store ptr %i.bfq, ptr %1, align 8, !alias.scope !3308, !noalias !3302
  %i.bfr = and i8 %i.bfp, 127
  %i.bfs = zext nneg i8 %i.bfr to i32
  %i.bft = shl nuw nsw i32 %i.bfs, 14
  %i.bfu = or disjoint i32 %i.bft, %i.bfm         ; 2 uses
  %i.bfv = icmp sgt i8 %i.bfp, -1
  br i1 %i.bfv, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i.i.i.i.i.i.i39.i.i, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3309)
  %i.bfw = icmp eq ptr %i.bfq, %i.s
  br i1 %i.bfw, label %bb.qg, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.bfx = load i8, ptr %i.bfq, align 1, !noalias !3310, !noundef !6 ; 2 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i68.i.i.i.i.i.i.i.i34.i.i, i64 4 ; 4 uses
  store ptr %i.bfy, ptr %1, align 8, !alias.scope !3311, !noalias !3302
  %i.bfz = and i8 %i.bfx, 127
  %i.bga = zext nneg i8 %i.bfz to i32
  %i.bgb = shl nuw nsw i32 %i.bga, 21
  %i.bgc = or disjoint i32 %i.bgb, %i.bfu         ; 2 uses
  %i.bgd = icmp sgt i8 %i.bfx, -1
  br i1 %i.bgd, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i.i.i.i.i.i.i39.i.i, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3312)
  %i.bge = icmp eq ptr %i.bfy, %i.s
  br i1 %i.bge, label %bb.qg, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.bgf = load i8, ptr %i.bfy, align 1, !noalias !3313, !noundef !6 ; 2 uses
  %i.bgg = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i68.i.i.i.i.i.i.i.i34.i.i, i64 5 ; 2 uses
  store ptr %i.bgg, ptr %1, align 8, !alias.scope !3314, !noalias !3302
  %i.bgh = zext i8 %i.bgf to i32
  %i.bgi = shl nuw i32 %i.bgh, 28
  %i.bgj = or disjoint i32 %i.bgi, %i.bgc
  %or.cond35.not.i.i.i.i.i.i69.i.i.i.i.i.i.i.i36.i.i = icmp ult i8 %i.bgf, 16
  br i1 %or.cond35.not.i.i.i.i.i.i69.i.i.i.i.i.i.i.i36.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i.i.i.i.i.i.i39.i.i, label %bb.qg

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i.i.i.i.i.i.i39.i.i: ; preds = %bb.pd, %bb.pb, %bb.oz, %bb.ox, %bb.ov
  %.promoted.i.i.i.i.i.i75.i.i.i.i.i.i.i.i40.i.i = phi ptr [ %i.bgg, %bb.pd ], [ %i.bfy, %bb.pb ], [ %i.bfq, %bb.oz ], [ %i.bfi, %bb.ox ], [ %i.bfc, %bb.ov ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i72.i.i.i.i.i.i.i.i41.i.i = phi i32 [ %i.bgj, %bb.pd ], [ %i.bgc, %bb.pb ], [ %i.bfu, %bb.oz ], [ %i.bfm, %bb.ox ], [ %i.bfe, %bb.ov ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3319)
  %i.bgk = icmp eq ptr %.promoted.i.i.i.i.i.i75.i.i.i.i.i.i.i.i40.i.i, %i.s
  br i1 %i.bgk, label %bb.qg, label %bb.pe

bb.pe:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i.i.i.i.i.i.i39.i.i
  %i.bgl = load i8, ptr %.promoted.i.i.i.i.i.i75.i.i.i.i.i.i.i.i40.i.i, align 1, !noalias !3320, !noundef !6 ; 2 uses
  %i.bgm = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i75.i.i.i.i.i.i.i.i40.i.i, i64 1 ; 4 uses
  store ptr %i.bgm, ptr %1, align 8, !alias.scope !3321, !noalias !3322
  %i.bgn = and i8 %i.bgl, 127
  %i.bgo = zext nneg i8 %i.bgn to i32             ; 2 uses
  %i.bgp = icmp sgt i8 %i.bgl, -1
  br i1 %i.bgp, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i.i.i.i.i.i.i45.i.i, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3323)
  %i.bgq = icmp eq ptr %i.bgm, %i.s
  br i1 %i.bgq, label %bb.qg, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.bgr = load i8, ptr %i.bgm, align 1, !noalias !3324, !noundef !6 ; 2 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i75.i.i.i.i.i.i.i.i40.i.i, i64 2 ; 4 uses
  store ptr %i.bgs, ptr %1, align 8, !alias.scope !3325, !noalias !3322
  %i.bgt = and i8 %i.bgr, 127
  %i.bgu = zext nneg i8 %i.bgt to i32
  %i.bgv = shl nuw nsw i32 %i.bgu, 7
  %i.bgw = or disjoint i32 %i.bgv, %i.bgo         ; 2 uses
  %i.bgx = icmp sgt i8 %i.bgr, -1
  br i1 %i.bgx, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i.i.i.i.i.i.i45.i.i, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3326)
  %i.bgy = icmp eq ptr %i.bgs, %i.s
  br i1 %i.bgy, label %bb.qg, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.bgz = load i8, ptr %i.bgs, align 1, !noalias !3327, !noundef !6 ; 2 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i75.i.i.i.i.i.i.i.i40.i.i, i64 3 ; 4 uses
  store ptr %i.bha, ptr %1, align 8, !alias.scope !3328, !noalias !3322
  %i.bhb = and i8 %i.bgz, 127
  %i.bhc = zext nneg i8 %i.bhb to i32
  %i.bhd = shl nuw nsw i32 %i.bhc, 14
  %i.bhe = or disjoint i32 %i.bhd, %i.bgw         ; 2 uses
  %i.bhf = icmp sgt i8 %i.bgz, -1
  br i1 %i.bhf, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i.i.i.i.i.i.i45.i.i, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3329)
  %i.bhg = icmp eq ptr %i.bha, %i.s
  br i1 %i.bhg, label %bb.qg, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.bhh = load i8, ptr %i.bha, align 1, !noalias !3330, !noundef !6 ; 2 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i75.i.i.i.i.i.i.i.i40.i.i, i64 4 ; 4 uses
  store ptr %i.bhi, ptr %1, align 8, !alias.scope !3331, !noalias !3322
  %i.bhj = and i8 %i.bhh, 127
  %i.bhk = zext nneg i8 %i.bhj to i32
  %i.bhl = shl nuw nsw i32 %i.bhk, 21
  %i.bhm = or disjoint i32 %i.bhl, %i.bhe         ; 2 uses
  %i.bhn = icmp sgt i8 %i.bhh, -1
  br i1 %i.bhn, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i.i.i.i.i.i.i45.i.i, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3332)
  %i.bho = icmp eq ptr %i.bhi, %i.s
  br i1 %i.bho, label %bb.qg, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.bhp = load i8, ptr %i.bhi, align 1, !noalias !3333, !noundef !6 ; 2 uses
  %i.bhq = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i75.i.i.i.i.i.i.i.i40.i.i, i64 5 ; 2 uses
  store ptr %i.bhq, ptr %1, align 8, !alias.scope !3334, !noalias !3322
  %i.bhr = zext i8 %i.bhp to i32
  %i.bhs = shl nuw i32 %i.bhr, 28
  %i.bht = or disjoint i32 %i.bhs, %i.bhm
  %or.cond35.not.i.i.i.i.i.i76.i.i.i.i.i.i.i.i42.i.i = icmp ult i8 %i.bhp, 16
  br i1 %or.cond35.not.i.i.i.i.i.i76.i.i.i.i.i.i.i.i42.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i.i.i.i.i.i.i45.i.i, label %bb.qg

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i.i.i.i.i.i.i45.i.i: ; preds = %bb.pm, %bb.pk, %bb.pi, %bb.pg, %bb.pe
  %.promoted.i.i.i.i.i.i82.i.i.i.i.i.i.i.i46.i.i = phi ptr [ %i.bhq, %bb.pm ], [ %i.bhi, %bb.pk ], [ %i.bha, %bb.pi ], [ %i.bgs, %bb.pg ], [ %i.bgm, %bb.pe ] ; 7 uses
  %.lcssa34.i.i.i.i.i.i79.i.i.i.i.i.i.i.i47.i.i = phi i32 [ %i.bht, %bb.pm ], [ %i.bhm, %bb.pk ], [ %i.bhe, %bb.pi ], [ %i.bgw, %bb.pg ], [ %i.bgo, %bb.pe ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3339)
  %i.bhu = icmp eq ptr %.promoted.i.i.i.i.i.i82.i.i.i.i.i.i.i.i46.i.i, %i.s
  br i1 %i.bhu, label %bb.qg, label %bb.pn

bb.pn:                                            ; preds = %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i.i.i.i.i.i.i45.i.i
  %i.bhv = load i8, ptr %.promoted.i.i.i.i.i.i82.i.i.i.i.i.i.i.i46.i.i, align 1, !noalias !3340, !noundef !6 ; 2 uses
  %i.bhw = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i82.i.i.i.i.i.i.i.i46.i.i, i64 1 ; 3 uses
  store ptr %i.bhw, ptr %1, align 8, !alias.scope !3341, !noalias !3342
  %i.bhx = and i8 %i.bhv, 127
  %i.bhy = zext nneg i8 %i.bhx to i32             ; 2 uses
  %i.bhz = icmp sgt i8 %i.bhv, -1
  br i1 %i.bhz, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.i.i.i.i.i.i.i.i51.i.i, label %bb.po

bb.po:                                            ; preds = %bb.pn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3343)
  %i.bia = icmp eq ptr %i.bhw, %i.s
  br i1 %i.bia, label %bb.qg, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.bib = load i8, ptr %i.bhw, align 1, !noalias !3344, !noundef !6 ; 2 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i82.i.i.i.i.i.i.i.i46.i.i, i64 2 ; 3 uses
  store ptr %i.bic, ptr %1, align 8, !alias.scope !3345, !noalias !3342
  %i.bid = and i8 %i.bib, 127
  %i.bie = zext nneg i8 %i.bid to i32
  %i.bif = shl nuw nsw i32 %i.bie, 7
  %i.big = or disjoint i32 %i.bif, %i.bhy         ; 2 uses
  %i.bih = icmp sgt i8 %i.bib, -1
  br i1 %i.bih, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.i.i.i.i.i.i.i.i51.i.i, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3346)
  %i.bii = icmp eq ptr %i.bic, %i.s
  br i1 %i.bii, label %bb.qg, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.bij = load i8, ptr %i.bic, align 1, !noalias !3347, !noundef !6 ; 2 uses
  %i.bik = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i82.i.i.i.i.i.i.i.i46.i.i, i64 3 ; 3 uses
  store ptr %i.bik, ptr %1, align 8, !alias.scope !3348, !noalias !3342
  %i.bil = and i8 %i.bij, 127
  %i.bim = zext nneg i8 %i.bil to i32
  %i.bin = shl nuw nsw i32 %i.bim, 14
  %i.bio = or disjoint i32 %i.bin, %i.big         ; 2 uses
  %i.bip = icmp sgt i8 %i.bij, -1
  br i1 %i.bip, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.i.i.i.i.i.i.i.i51.i.i, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3349)
  %i.biq = icmp eq ptr %i.bik, %i.s
  br i1 %i.biq, label %bb.qg, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.bir = load i8, ptr %i.bik, align 1, !noalias !3350, !noundef !6 ; 2 uses
  %i.bis = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i82.i.i.i.i.i.i.i.i46.i.i, i64 4 ; 3 uses
  store ptr %i.bis, ptr %1, align 8, !alias.scope !3351, !noalias !3342
  %i.bit = and i8 %i.bir, 127
  %i.biu = zext nneg i8 %i.bit to i32
  %i.biv = shl nuw nsw i32 %i.biu, 21
  %i.biw = or disjoint i32 %i.biv, %i.bio         ; 2 uses
  %i.bix = icmp sgt i8 %i.bir, -1
  br i1 %i.bix, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.i.i.i.i.i.i.i.i51.i.i, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3352)
  %i.biy = icmp eq ptr %i.bis, %i.s
  br i1 %i.biy, label %bb.qg, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.biz = load i8, ptr %i.bis, align 1, !noalias !3353, !noundef !6 ; 2 uses
  %i.bja = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i.i82.i.i.i.i.i.i.i.i46.i.i, i64 5
  store ptr %i.bja, ptr %1, align 8, !alias.scope !3354, !noalias !3342
  %i.bjb = zext i8 %i.biz to i32
  %i.bjc = shl nuw i32 %i.bjb, 28
  %i.bjd = or disjoint i32 %i.bjc, %i.biw
  %or.cond35.not.i.i.i.i.i.i83.i.i.i.i.i.i.i.i48.i.i = icmp ult i8 %i.biz, 16
  br i1 %or.cond35.not.i.i.i.i.i.i83.i.i.i.i.i.i.i.i48.i.i, label %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.i.i.i.i.i.i.i.i51.i.i, label %bb.qg

_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit87.i.i.i.i.i.i.i.i51.i.i: ; preds = %bb.pv, %bb.pt, %bb.pr, %bb.pp, %bb.pn
  %.lcssa34.i.i.i.i.i.i86.i.i.i.i.i.i.i.i52.i.i = phi i32 [ %i.bjd, %bb.pv ], [ %i.biw, %bb.pt ], [ %i.bio, %bb.pr ], [ %i.big, %bb.pp ], [ %i.bhy, %bb.pn ]
  %.sroa.21118.sroa.23.0.extract.shift189.i.i = and i32 %.lcssa34.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i, -256
  %.sroa.41.sroa.0.sroa.0.0.extract.trunc.i.i = trunc i32 %.lcssa34.i.i.i.i.i.i65.i.i.i.i.i.i.i.i35.i.i to i8
  %.sroa.41.sroa.0.sroa.12.0.extract.shift.i.i = lshr i32 %.lcssa34.i.i.i.i.i.i65.i.i.i.i.i.i.i.i35.i.i, 8
  %.sroa.41.sroa.0.sroa.12.0.extract.trunc.i.i = trunc nuw i32 %.sroa.41.sroa.0.sroa.12.0.extract.shift.i.i to i24
  %.sroa.53.sroa.0.sroa.0.0.extract.trunc.i.i = trunc i32 %.lcssa34.i.i.i.i.i.i79.i.i.i.i.i.i.i.i47.i.i to i8
  %.sroa.53.sroa.0.sroa.11.0.extract.shift.i.i = lshr i32 %.lcssa34.i.i.i.i.i.i79.i.i.i.i.i.i.i.i47.i.i, 8
  %.sroa.53.sroa.0.sroa.11.0.extract.trunc.i.i = trunc nuw i32 %.sroa.53.sroa.0.sroa.11.0.extract.shift.i.i to i24
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg11SubResponseEB2y_.exit.i.i

bb.pw:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs1_1__NtB2n_11SubResponseNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3355
  call void @_RINvXse_NtNtCsjQbM3MYDIrM_10serde_core2de5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10ParentSpanENtB8_11Deserialize11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB3a_7flavors5SliceEEB1r_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !3356
  %i.bje = load i32, ptr %i.c, align 4, !range !3357, !noalias !3355, !noundef !6 ; 2 uses
  %i.bjf = icmp eq i32 %i.bje, 2
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bjh = load i8, ptr %i.bjg, align 4, !noalias !3355 ; 2 uses
  br i1 %i.bjf, label %bb.py, label %bb.px

bb.px:                                            ; preds = %bb.pw
  %.sroa.511.0..sroa_idx.i.i.i.i22.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %.sroa.41.sroa.0.sroa.12.sroa.0.0.copyload.i.i = load i24, ptr %.sroa.511.0..sroa_idx.i.i.i.i22.i.i.i.i.i.i.i.i, align 1, !noalias !3358
  %.sroa.41.sroa.14.1..sroa.511.0..sroa_idx.i.i.i.i22.i.i.i.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.41.sroa.14.1.copyload.i.i = load i32, ptr %.sroa.41.sroa.14.1..sroa.511.0..sroa_idx.i.i.i.i22.i.i.i.i.i.i.sroa_idx.i.i, align 4, !noalias !3358
  %.sroa.53.9..sroa.511.0..sroa_idx.i.i.i.i22.i.i.i.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.53.9.copyload.i.i = load i64, ptr %.sroa.53.9..sroa.511.0..sroa_idx.i.i.i.i22.i.i.i.i.i.i.sroa_idx.i.i, align 4, !noalias !3358 ; 3 uses
  %.sroa.53.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.53.9.copyload.i.i to i32
  %.sroa.53.sroa.0.sroa.0.0.extract.trunc139.i.i = trunc i64 %.sroa.53.9.copyload.i.i to i8
  %.sroa.53.sroa.0.sroa.11.0.extract.shift142.i.i = lshr i32 %.sroa.53.sroa.0.0.extract.trunc.i.i, 8
  %.sroa.53.sroa.0.sroa.11.0.extract.trunc143.i.i = trunc nuw i32 %.sroa.53.sroa.0.sroa.11.0.extract.shift142.i.i to i24
  %.sroa.53.sroa.15.0.extract.shift.i.i = lshr i64 %.sroa.53.9.copyload.i.i, 32
  %.sroa.53.sroa.15.0.extract.trunc.i.i = trunc nuw i64 %.sroa.53.sroa.15.0.extract.shift.i.i to i32
  %.sroa.64.9..sroa.511.0..sroa_idx.i.i.i.i22.i.i.i.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.sroa.64.9.copyload.i.i = load i32, ptr %.sroa.64.9..sroa.511.0..sroa_idx.i.i.i.i22.i.i.i.i.i.i.sroa_idx.i.i, align 4, !noalias !3358
  %.sroa.64.9.insert.ext.i.i = zext i32 %.sroa.64.9.copyload.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3355
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg11SubResponseEB2y_.exit.i.i

bb.py:                                            ; preds = %bb.pw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3355
  br label %bb.qg

bb.pz:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs1_1__NtB2n_11SubResponseNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3359
  call void @_RINvXse_NtNtCsjQbM3MYDIrM_10serde_core2de5implsINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8SpanJoinENtB8_11Deserialize11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB37_7flavors5SliceEEB1r_(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !3360
  %i.bji = load i32, ptr %i.b, align 4, !range !3357, !noalias !3359, !noundef !6 ; 2 uses
  %i.bjj = icmp eq i32 %i.bji, 2
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bjl = load i8, ptr %i.bjk, align 4, !noalias !3359 ; 2 uses
  br i1 %i.bjj, label %bb.qb, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %.sroa.511.0..sroa_idx.i.i.i.i25.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.sroa.41.sroa.0.sroa.12.sroa.0.0.copyload183.i.i = load i24, ptr %.sroa.511.0..sroa_idx.i.i.i.i25.i.i.i.i.i.i.i.i, align 1, !noalias !3361
  %.sroa.41.sroa.14.1..sroa.511.0..sroa_idx.i.i.i.i25.i.i.i.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.41.sroa.14.1.copyload164.i.i = load i32, ptr %.sroa.41.sroa.14.1..sroa.511.0..sroa_idx.i.i.i.i25.i.i.i.i.i.i.sroa_idx.i.i, align 4, !noalias !3361
  %.sroa.53.9..sroa.511.0..sroa_idx.i.i.i.i25.i.i.i.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.53.9.copyload120.i.i = load i64, ptr %.sroa.53.9..sroa.511.0..sroa_idx.i.i.i.i25.i.i.i.i.i.i.sroa_idx.i.i, align 4, !noalias !3361 ; 3 uses
  %.sroa.53.sroa.0.0.extract.trunc127.i.i = trunc i64 %.sroa.53.9.copyload120.i.i to i32
  %.sroa.53.sroa.0.sroa.0.0.extract.trunc140.i.i = trunc i64 %.sroa.53.9.copyload120.i.i to i8
  %.sroa.53.sroa.0.sroa.11.0.extract.shift144.i.i = lshr i32 %.sroa.53.sroa.0.0.extract.trunc127.i.i, 8
  %.sroa.53.sroa.0.sroa.11.0.extract.trunc145.i.i = trunc nuw i32 %.sroa.53.sroa.0.sroa.11.0.extract.shift144.i.i to i24
  %.sroa.53.sroa.15.0.extract.shift132.i.i = lshr i64 %.sroa.53.9.copyload120.i.i, 32
  %.sroa.53.sroa.15.0.extract.trunc133.i.i = trunc nuw i64 %.sroa.53.sroa.15.0.extract.shift132.i.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3359
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg11SubResponseEB2y_.exit.i.i

bb.qb:                                            ; preds = %bb.pz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3359
  br label %bb.qg

bb.qc:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs1_1__NtB2n_11SubResponseNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3362
  call void @_RINvXs6_NtNtCsjQbM3MYDIrM_10serde_core2de5implsNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB1W_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !3363
  %i.bjm = load i64, ptr %i.a, align 8, !range !5, !noalias !3362, !noundef !6 ; 4 uses
  %i.bjn = icmp eq i64 %i.bjm, -1
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bjp = load i8, ptr %i.bjo, align 8, !noalias !3362 ; 2 uses
  br i1 %i.bjn, label %bb.qe, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %.sroa.511.0..sroa_idx.i.i.i.i30.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.53.sroa.0.sroa.11.sroa.0.0.copyload.i.i = load i24, ptr %.sroa.511.0..sroa_idx.i.i.i.i30.i.i.i.i.i.i.i.i, align 1, !noalias !3364
  %.sroa.53.sroa.15.1..sroa.511.0..sroa_idx.i.i.i.i30.i.i.i.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.53.sroa.15.1.copyload.i.i = load i32, ptr %.sroa.53.sroa.15.1..sroa.511.0..sroa_idx.i.i.i.i30.i.i.i.i.i.i.sroa_idx.i.i, align 4, !noalias !3364
  %.sroa.64.17..sroa.511.0..sroa_idx.i.i.i.i30.i.i.i.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.64.17.copyload.i.i = load i64, ptr %.sroa.64.17..sroa.511.0..sroa_idx.i.i.i.i30.i.i.i.i.i.i.sroa_idx.i.i, align 8, !noalias !3364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3362
  %.sroa.41.sroa.0.0.extract.trunc.i.i = trunc i64 %i.bjm to i32
  %.sroa.41.sroa.0.sroa.0.0.extract.trunc166.i.i = trunc i64 %i.bjm to i8
  %.sroa.41.sroa.0.sroa.12.0.extract.shift173.i.i = lshr i32 %.sroa.41.sroa.0.0.extract.trunc.i.i, 8
  %.sroa.41.sroa.0.sroa.12.0.extract.trunc174.i.i = trunc nuw i32 %.sroa.41.sroa.0.sroa.12.0.extract.shift173.i.i to i24
  %.sroa.41.sroa.14.0.extract.shift.i.i = lshr i64 %i.bjm, 32
  %.sroa.41.sroa.14.0.extract.trunc.i.i = trunc nuw nsw i64 %.sroa.41.sroa.14.0.extract.shift.i.i to i32
  br label %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg11SubResponseEB2y_.exit.i.i

bb.qe:                                            ; preds = %bb.qc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3362
  br label %bb.qg

_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.thread.i.i: ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.i.i, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l
  %.sroa.1067.2217.i.i = phi i64 [ %.sroa.1067.0.insert.insert83.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.i.i ], [ %.sroa.1067.0.insert.ext77.i.i, %bb.w ], [ %.sroa.1067.0.insert.ext73.i.i, %bb.x ], [ %i.cw, %bb.v ], [ 4, %bb.r ], [ 4, %bb.l ], [ 4, %bb.p ], [ 4, %bb.n ], [ 4, %bb.t ], [ 5, %bb.u ]
  %.sroa.1067.0.extract.trunc.i.i = trunc i64 %.sroa.1067.2217.i.i to i8
  %i.bjq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.1067.0.extract.trunc.i.i, ptr %i.bjq, align 8, !alias.scope !2462
  store i64 -2, ptr %0, align 8, !alias.scope !2462
  br label %_RINvXs3_NtNtCslX2I8TqP5TK_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2F_20BidirectionalMessageNtB1x_11Deserialize11deserialize9___VisitorEB2J_.exit

_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.thread220.i.i: ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.i.i, %bb.x, %bb.w, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs9_1__NtB2n_7RequestNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i
  %.sroa.066.0226.i.i = phi i64 [ %i.dh, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.i.i ], [ -9223372036854775808, %bb.w ], [ -9223372036854775807, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs9_1__NtB2n_7RequestNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i ], [ -9223372036854775806, %bb.x ]
  %.sroa.18.1225.i.i = phi i64 [ %.sroa.18.9.copyload.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.i.i ], [ undef, %bb.w ], [ undef, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs9_1__NtB2n_7RequestNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i ], [ undef, %bb.x ]
  %.sroa.1067.2224.i.i = phi ptr [ %i.dl, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg7RequestEB2y_.exit.i.i ], [ %i.dc, %bb.w ], [ undef, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de10EnumAccess7variantNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs9_1__NtB2n_7RequestNtB1r_11Deserialize11deserialize7___FieldEB2r_.exit.i.i.i.i.i.i.i.i ], [ %i.dg, %bb.x ]
  store i64 -9223372036854775805, ptr %0, align 8, !alias.scope !2462
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.066.0226.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2462
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.1067.2224.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2462
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.18.1225.i.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2462
  br label %_RINvXs3_NtNtCslX2I8TqP5TK_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2F_20BidirectionalMessageNtB1x_11Deserialize11deserialize9___VisitorEB2J_.exit

_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread.i.i: ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.i.i, %bb.au, %bb.at, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ah, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y
  %.sroa.12.sroa.0.2230.i.i = phi i8 [ %.sroa.12.sroa.0.2.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.i.i ], [ %i.go, %bb.au ], [ 4, %bb.aq ], [ 4, %bb.ak ], [ 4, %bb.ao ], [ 4, %bb.am ], [ 4, %bb.as ], [ 4, %bb.ag ], [ 4, %bb.aa ], [ 4, %bb.ac ], [ 4, %bb.y ], [ 4, %bb.ae ], [ %i.ez, %bb.ai ], [ 5, %bb.at ], [ 5, %bb.ah ]
  %i.bjr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.12.sroa.0.2230.i.i, ptr %i.bjr, align 8, !alias.scope !2462
  store i64 -2, ptr %0, align 8, !alias.scope !2462
  br label %bb.qf

_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread233.i.i: ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantmECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i, %bb.au
  %.sroa.084.1239.i.i = phi i64 [ %.sroa.084.1.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.i.i ], [ -9223372036854775807, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantmECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i ], [ -9223372036854775806, %bb.au ]
  %.sroa.12.sroa.0.2238.i.i = phi i8 [ %.sroa.12.sroa.0.2.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.i.i ], [ %.sroa.12.sroa.0.0.extract.trunc89.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantmECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i ], [ %i.go, %bb.au ]
  %.sroa.12.sroa.13.sroa.0.2237.i.i = phi i32 [ %.sroa.12.sroa.13.sroa.0.2.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.i.i ], [ %.lcssa34.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantmECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.au ]
  %.sroa.12.sroa.13.0.insert.ext.i.i = and i32 %.sroa.12.sroa.13.sroa.0.2237.i.i, -256
  %.sroa.12.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.12.sroa.0.2238.i.i to i32
  %.sroa.12.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.12.sroa.13.0.insert.ext.i.i, %.sroa.12.sroa.0.0.insert.ext.i.i
  %.sroa.5200.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(252) %.sroa.5200.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(252) %.sroa.21.i.i, i64 252, i1 false), !noalias !3365
  store i64 %.sroa.084.1239.i.i, ptr %0, align 8, !alias.scope !2462
  %.sroa.4199.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.12.sroa.0.0.insert.insert.i.i, ptr %.sroa.4199.0..sroa_idx.i.i, align 8, !alias.scope !2462
  br label %bb.qf

bb.qf:                                            ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread233.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg8ResponseEB2y_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i.i)
  br label %_RINvXs3_NtNtCslX2I8TqP5TK_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2F_20BidirectionalMessageNtB1x_11Deserialize11deserialize9___VisitorEB2J_.exit

_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread.i.i: ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i, %bb.js, %bb.jr, %bb.jp, %bb.jn, %bb.jl, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i83.i.i.i.i.i.i.i.i, %bb.jj, %bb.ji, %bb.jg, %bb.je, %bb.jc, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i77.i.i.i.i.i.i.i.i, %bb.ja, %bb.iz, %bb.ix, %bb.iv, %bb.it, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i71.i.i.i.i.i.i.i.i, %bb.ir, %bb.iq, %bb.io, %bb.im, %bb.ik, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i65.i.i.i.i.i.i.i.i, %bb.ii, %bb.ih, %bb.if, %bb.id, %bb.ib, %bb.hz, %bb.hy, %bb.hx, %bb.hv, %bb.ht, %bb.hr, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i.i.i.i.i.i.i.i.i, %bb.hp, %bb.ho, %bb.hm, %bb.hk, %bb.hi, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i.i.i.i.i.i.i.i.i, %bb.hg, %bb.hf, %bb.hd, %bb.hb, %bb.gz, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i.i.i.i.i.i.i.i.i, %bb.gx, %bb.gw, %bb.gu, %bb.gs, %bb.gq, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i56.i.i.i.i.i.i.i.i, %bb.go, %bb.gn, %bb.gl, %bb.gj, %bb.gh, %bb.gf, %bb.ge, %bb.gd, %bb.gb, %bb.fz, %bb.fx, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i40.i.i.i.i.i.i.i.i, %bb.fv, %bb.fu, %bb.fs, %bb.fq, %bb.fo, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i34.i.i.i.i.i.i.i.i, %bb.fm, %bb.fl, %bb.fj, %bb.fh, %bb.ff, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i28.i.i.i.i.i.i.i.i, %bb.fd, %bb.fc, %bb.fa, %bb.ey, %bb.ew, %bb.eu, %bb.et, %bb.es, %bb.eq, %bb.eo, %bb.em, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit42.i.i.i.i.i.i.i.i.i.i, %bb.ek, %bb.ej, %bb.eh, %bb.ef, %bb.ed, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i20.i.i.i.i.i.i.i.i, %bb.eb, %bb.ea, %bb.dy, %bb.dw, %bb.du, %bb.ds, %bb.dr, %bb.dq, %bb.do, %bb.dm, %bb.dk, %bb.di, %bb.dh, %bb.dg, %bb.de, %bb.dc, %bb.da, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i.i.i.i.i.i.i.i.i, %bb.cy, %bb.cx, %bb.cv, %bb.ct, %bb.cr, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i.i.i.i.i.i.i.i.i, %bb.cp, %bb.co, %bb.cm, %bb.ck, %bb.ci, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i6.i.i.i.i.i.i.i.i, %bb.cg, %bb.cf, %bb.cd, %bb.cb, %bb.bz, %bb.bx, %bb.bw, %bb.bv, %bb.bt, %bb.br, %bb.bp, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc
  %.sroa.45.sroa.0.1251.i.i = phi i8 [ %.sroa.45.sroa.0.0.ph.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread278.i.i ], [ 4, %bb.jr ], [ 4, %bb.jl ], [ 4, %bb.jn ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i83.i.i.i.i.i.i.i.i ], [ 4, %bb.jp ], [ 5, %bb.js ], [ 4, %bb.jc ], [ 4, %bb.je ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i77.i.i.i.i.i.i.i.i ], [ 4, %bb.jg ], [ 5, %bb.jj ], [ 4, %bb.it ], [ 4, %bb.iv ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i71.i.i.i.i.i.i.i.i ], [ 4, %bb.ix ], [ 5, %bb.ja ], [ 4, %bb.ik ], [ 4, %bb.im ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i65.i.i.i.i.i.i.i.i ], [ 4, %bb.io ], [ 5, %bb.ir ], [ 4, %bb.ib ], [ 4, %bb.id ], [ 4, %bb.hz ], [ 4, %bb.if ], [ 5, %bb.ii ], [ 4, %bb.hr ], [ 4, %bb.ht ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i.i.i.i.i.i.i.i.i ], [ 4, %bb.hv ], [ 5, %bb.hy ], [ 4, %bb.hi ], [ 4, %bb.hk ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i.i.i.i.i.i.i.i.i ], [ 4, %bb.hm ], [ 5, %bb.hp ], [ 4, %bb.gz ], [ 4, %bb.hb ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i.i.i.i.i.i.i.i.i ], [ 4, %bb.hd ], [ 5, %bb.hg ], [ 4, %bb.gq ], [ 4, %bb.gs ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i56.i.i.i.i.i.i.i.i ], [ 4, %bb.gu ], [ 5, %bb.gx ], [ 4, %bb.gh ], [ 4, %bb.gj ], [ 4, %bb.gf ], [ 4, %bb.gl ], [ 5, %bb.go ], [ 4, %bb.fx ], [ 4, %bb.fz ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i40.i.i.i.i.i.i.i.i ], [ 4, %bb.gb ], [ 5, %bb.ge ], [ 4, %bb.fo ], [ 4, %bb.fq ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i34.i.i.i.i.i.i.i.i ], [ 4, %bb.fs ], [ 5, %bb.fv ], [ 4, %bb.ff ], [ 4, %bb.fh ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i28.i.i.i.i.i.i.i.i ], [ 4, %bb.fj ], [ 5, %bb.fm ], [ 4, %bb.ew ], [ 4, %bb.ey ], [ 4, %bb.eu ], [ 4, %bb.fa ], [ 5, %bb.fd ], [ 4, %bb.em ], [ 4, %bb.eo ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit42.i.i.i.i.i.i.i.i.i.i ], [ 4, %bb.eq ], [ 5, %bb.et ], [ 4, %bb.ed ], [ 4, %bb.ef ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i20.i.i.i.i.i.i.i.i ], [ 4, %bb.eh ], [ 5, %bb.ek ], [ 4, %bb.du ], [ 4, %bb.dw ], [ 4, %bb.ds ], [ 4, %bb.dy ], [ 5, %bb.eb ], [ 4, %bb.dk ], [ 4, %bb.dm ], [ 4, %bb.di ], [ 4, %bb.do ], [ 5, %bb.dr ], [ 4, %bb.da ], [ 4, %bb.dc ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit61.i.i.i.i.i.i.i.i.i.i ], [ 4, %bb.de ], [ 5, %bb.dh ], [ 4, %bb.cr ], [ 4, %bb.ct ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit54.i.i.i.i.i.i.i.i.i.i ], [ 4, %bb.cv ], [ 5, %bb.cy ], [ 4, %bb.ci ], [ 4, %bb.ck ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i6.i.i.i.i.i.i.i.i ], [ 4, %bb.cm ], [ 5, %bb.cp ], [ 4, %bb.bz ], [ 4, %bb.cb ], [ 4, %bb.bx ], [ 4, %bb.cd ], [ 5, %bb.cg ], [ 4, %bb.bp ], [ 4, %bb.br ], [ 4, %bb.bn ], [ 4, %bb.bt ], [ 5, %bb.bw ], [ 4, %bb.bk ], [ 4, %bb.be ], [ 4, %bb.bg ], [ 4, %bb.bc ], [ 4, %bb.bi ], [ %i.ij, %bb.bm ], [ 4, %bb.ji ], [ 4, %bb.iz ], [ 4, %bb.iq ], [ 4, %bb.ih ], [ 4, %bb.hx ], [ 4, %bb.ho ], [ 4, %bb.hf ], [ 4, %bb.gw ], [ 4, %bb.gn ], [ 4, %bb.gd ], [ 4, %bb.fu ], [ 4, %bb.fl ], [ 4, %bb.fc ], [ 4, %bb.es ], [ 4, %bb.ej ], [ 4, %bb.ea ], [ 4, %bb.dq ], [ 4, %bb.dg ], [ 4, %bb.cx ], [ 4, %bb.co ], [ 4, %bb.cf ], [ 4, %bb.bv ], [ 5, %bb.bl ]
  %i.bjs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.45.sroa.0.1251.i.i, ptr %i.bjs, align 8, !alias.scope !2462
  store i64 -2, ptr %0, align 8, !alias.scope !2462
  br label %_RINvXs3_NtNtCslX2I8TqP5TK_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2F_20BidirectionalMessageNtB1x_11Deserialize11deserialize9___VisitorEB2J_.exit

_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.thread254.i.i: ; preds = %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.i.i, %bb.js, %bb.jq, %bb.jo, %bb.jm, %bb.jk, %bb.hy, %bb.hw, %bb.hu, %bb.hs, %bb.hq, %bb.ge, %bb.gc, %bb.ga, %bb.fy, %bb.fw, %bb.et, %bb.er, %bb.ep, %bb.en, %bb.el, %bb.dr, %bb.dp, %bb.dn, %bb.dl, %bb.dj, %bb.dh, %bb.df, %bb.dd, %bb.db, %bb.cz, %bb.bw, %bb.bu, %bb.bs, %bb.bq, %bb.bo
  %.sroa.095.1276.i.i = phi i32 [ 7, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.i.i ], [ 0, %bb.bo ], [ 5, %bb.hq ], [ 3, %bb.el ], [ 4, %bb.fw ], [ 1, %bb.cz ], [ 2, %bb.dj ], [ 0, %bb.bw ], [ 0, %bb.bu ], [ 0, %bb.bs ], [ 0, %bb.bq ], [ 1, %bb.dh ], [ 1, %bb.df ], [ 1, %bb.dd ], [ 1, %bb.db ], [ 2, %bb.dr ], [ 2, %bb.dp ], [ 2, %bb.dn ], [ 2, %bb.dl ], [ 3, %bb.et ], [ 3, %bb.er ], [ 3, %bb.ep ], [ 3, %bb.en ], [ 4, %bb.ge ], [ 4, %bb.gc ], [ 4, %bb.ga ], [ 4, %bb.fy ], [ 5, %bb.hy ], [ 5, %bb.hw ], [ 5, %bb.hu ], [ 5, %bb.hs ], [ 6, %bb.js ], [ 6, %bb.jq ], [ 6, %bb.jo ], [ 6, %bb.jm ], [ 6, %bb.jk ]
  %.sroa.87.1275.i.i = phi i32 [ %.lcssa34.i.i.i.i.i.i113.i.i.i.i.i.i.i.i.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.i.i ], [ undef, %bb.bo ], [ %.lcssa34.i.i.i.i.i.i65.i.i.i.i.i.i.i.i.i.i, %bb.hq ], [ %.lcssa34.i.i.i.i.i.i41.i.i.i.i.i.i.i.i.i.i, %bb.el ], [ %.lcssa34.i.i.i.i.i.i53.i.i36.i.i.i.i.i.i.i.i, %bb.fw ], [ %.lcssa34.i.i.i.i.i.i53.i.i.i.i.i.i.i.i.i.i, %bb.cz ], [ undef, %bb.dj ], [ undef, %bb.bw ], [ undef, %bb.bu ], [ undef, %bb.bs ], [ undef, %bb.bq ], [ %.lcssa34.i.i.i.i.i.i53.i.i.i.i.i.i.i.i.i.i, %bb.dh ], [ %.lcssa34.i.i.i.i.i.i53.i.i.i.i.i.i.i.i.i.i, %bb.df ], [ %.lcssa34.i.i.i.i.i.i53.i.i.i.i.i.i.i.i.i.i, %bb.dd ], [ %.lcssa34.i.i.i.i.i.i53.i.i.i.i.i.i.i.i.i.i, %bb.db ], [ undef, %bb.dr ], [ undef, %bb.dp ], [ undef, %bb.dn ], [ undef, %bb.dl ], [ %.lcssa34.i.i.i.i.i.i41.i.i.i.i.i.i.i.i.i.i, %bb.et ], [ %.lcssa34.i.i.i.i.i.i41.i.i.i.i.i.i.i.i.i.i, %bb.er ], [ %.lcssa34.i.i.i.i.i.i41.i.i.i.i.i.i.i.i.i.i, %bb.ep ], [ %.lcssa34.i.i.i.i.i.i41.i.i.i.i.i.i.i.i.i.i, %bb.en ], [ %.lcssa34.i.i.i.i.i.i53.i.i36.i.i.i.i.i.i.i.i, %bb.ge ], [ %.lcssa34.i.i.i.i.i.i53.i.i36.i.i.i.i.i.i.i.i, %bb.gc ], [ %.lcssa34.i.i.i.i.i.i53.i.i36.i.i.i.i.i.i.i.i, %bb.ga ], [ %.lcssa34.i.i.i.i.i.i53.i.i36.i.i.i.i.i.i.i.i, %bb.fy ], [ %.lcssa34.i.i.i.i.i.i65.i.i.i.i.i.i.i.i.i.i, %bb.hy ], [ %.lcssa34.i.i.i.i.i.i65.i.i.i.i.i.i.i.i.i.i, %bb.hw ], [ %.lcssa34.i.i.i.i.i.i65.i.i.i.i.i.i.i.i.i.i, %bb.hu ], [ %.lcssa34.i.i.i.i.i.i65.i.i.i.i.i.i.i.i.i.i, %bb.hs ], [ %.lcssa34.i.i.i.i.i.i65.i.i73.i.i.i.i.i.i.i.i, %bb.js ], [ %.lcssa34.i.i.i.i.i.i65.i.i73.i.i.i.i.i.i.i.i, %bb.jq ], [ %.lcssa34.i.i.i.i.i.i65.i.i73.i.i.i.i.i.i.i.i, %bb.jo ], [ %.lcssa34.i.i.i.i.i.i65.i.i73.i.i.i.i.i.i.i.i, %bb.jm ], [ %.lcssa34.i.i.i.i.i.i65.i.i73.i.i.i.i.i.i.i.i, %bb.jk ]
  %.sroa.93.1274.i.i = phi i32 [ %.lcssa34.i.i.i.i.i.i120.i.i.i.i.i.i.i.i.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.i.i ], [ undef, %bb.bo ], [ %.lcssa34.i.i.i.i.i.i72.i.i.i.i.i.i.i.i.i.i, %bb.hq ], [ %i.tq, %bb.el ], [ %.lcssa34.i.i.i.i.i.i60.i.i42.i.i.i.i.i.i.i.i, %bb.fw ], [ %.lcssa34.i.i.i.i.i.i60.i.i.i.i.i.i.i.i.i.i, %bb.cz ], [ undef, %bb.dj ], [ undef, %bb.bw ], [ undef, %bb.bu ], [ undef, %bb.bs ], [ undef, %bb.bq ], [ %.lcssa34.i.i.i.i.i.i60.i.i.i.i.i.i.i.i.i.i, %bb.dh ], [ %.lcssa34.i.i.i.i.i.i60.i.i.i.i.i.i.i.i.i.i, %bb.df ], [ %.lcssa34.i.i.i.i.i.i60.i.i.i.i.i.i.i.i.i.i, %bb.dd ], [ %.lcssa34.i.i.i.i.i.i60.i.i.i.i.i.i.i.i.i.i, %bb.db ], [ undef, %bb.dr ], [ undef, %bb.dp ], [ undef, %bb.dn ], [ undef, %bb.dl ], [ %i.uv, %bb.et ], [ %i.uo, %bb.er ], [ %i.ug, %bb.ep ], [ %i.ty, %bb.en ], [ %.lcssa34.i.i.i.i.i.i60.i.i42.i.i.i.i.i.i.i.i, %bb.ge ], [ %.lcssa34.i.i.i.i.i.i60.i.i42.i.i.i.i.i.i.i.i, %bb.gc ], [ %.lcssa34.i.i.i.i.i.i60.i.i42.i.i.i.i.i.i.i.i, %bb.ga ], [ %.lcssa34.i.i.i.i.i.i60.i.i42.i.i.i.i.i.i.i.i, %bb.fy ], [ %.lcssa34.i.i.i.i.i.i72.i.i.i.i.i.i.i.i.i.i, %bb.hy ], [ %.lcssa34.i.i.i.i.i.i72.i.i.i.i.i.i.i.i.i.i, %bb.hw ], [ %.lcssa34.i.i.i.i.i.i72.i.i.i.i.i.i.i.i.i.i, %bb.hu ], [ %.lcssa34.i.i.i.i.i.i72.i.i.i.i.i.i.i.i.i.i, %bb.hs ], [ %.lcssa34.i.i.i.i.i.i72.i.i79.i.i.i.i.i.i.i.i, %bb.js ], [ %.lcssa34.i.i.i.i.i.i72.i.i79.i.i.i.i.i.i.i.i, %bb.jq ], [ %.lcssa34.i.i.i.i.i.i72.i.i79.i.i.i.i.i.i.i.i, %bb.jo ], [ %.lcssa34.i.i.i.i.i.i72.i.i79.i.i.i.i.i.i.i.i, %bb.jm ], [ %.lcssa34.i.i.i.i.i.i72.i.i79.i.i.i.i.i.i.i.i, %bb.jk ]
  %.sroa.99.1273.i.i = phi i32 [ %.lcssa34.i.i.i.i.i.i127.i.i.i.i.i.i.i.i.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.i.i ], [ undef, %bb.bo ], [ %.lcssa34.i.i.i.i.i.i79.i.i.i.i.i.i.i.i.i.i, %bb.hq ], [ undef, %bb.el ], [ %i.ze, %bb.fw ], [ %i.oc, %bb.cz ], [ undef, %bb.dj ], [ undef, %bb.bw ], [ undef, %bb.bu ], [ undef, %bb.bs ], [ undef, %bb.bq ], [ %i.ph, %bb.dh ], [ %i.pa, %bb.df ], [ %i.os, %bb.dd ], [ %i.ok, %bb.db ], [ undef, %bb.dr ], [ undef, %bb.dp ], [ undef, %bb.dn ], [ undef, %bb.dl ], [ undef, %bb.et ], [ undef, %bb.er ], [ undef, %bb.ep ], [ undef, %bb.en ], [ %i.aaj, %bb.ge ], [ %i.aac, %bb.gc ], [ %i.zu, %bb.ga ], [ %i.zm, %bb.fy ], [ %.lcssa34.i.i.i.i.i.i79.i.i.i.i.i.i.i.i.i.i, %bb.hy ], [ %.lcssa34.i.i.i.i.i.i79.i.i.i.i.i.i.i.i.i.i, %bb.hw ], [ %.lcssa34.i.i.i.i.i.i79.i.i.i.i.i.i.i.i.i.i, %bb.hu ], [ %.lcssa34.i.i.i.i.i.i79.i.i.i.i.i.i.i.i.i.i, %bb.hs ], [ %.lcssa34.i.i.i.i.i.i79.i.i85.i.i.i.i.i.i.i.i, %bb.js ], [ %.lcssa34.i.i.i.i.i.i79.i.i85.i.i.i.i.i.i.i.i, %bb.jq ], [ %.lcssa34.i.i.i.i.i.i79.i.i85.i.i.i.i.i.i.i.i, %bb.jo ], [ %.lcssa34.i.i.i.i.i.i79.i.i85.i.i.i.i.i.i.i.i, %bb.jm ], [ %.lcssa34.i.i.i.i.i.i79.i.i85.i.i.i.i.i.i.i.i, %bb.jk ]
  %.sroa.104.1272.i.i = phi i32 [ %.lcssa34.i.i.i.i.i.i134.i.i.i.i.i.i.i.i.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.i.i ], [ undef, %bb.bo ], [ %i.agc, %bb.hq ], [ undef, %bb.el ], [ undef, %bb.fw ], [ undef, %bb.cz ], [ undef, %bb.dj ], [ undef, %bb.bw ], [ undef, %bb.bu ], [ undef, %bb.bs ], [ undef, %bb.bq ], [ undef, %bb.dh ], [ undef, %bb.df ], [ undef, %bb.dd ], [ undef, %bb.db ], [ undef, %bb.dr ], [ undef, %bb.dp ], [ undef, %bb.dn ], [ undef, %bb.dl ], [ undef, %bb.et ], [ undef, %bb.er ], [ undef, %bb.ep ], [ undef, %bb.en ], [ undef, %bb.ge ], [ undef, %bb.gc ], [ undef, %bb.ga ], [ undef, %bb.fy ], [ %i.ahh, %bb.hy ], [ %i.aha, %bb.hw ], [ %i.ags, %bb.hu ], [ %i.agk, %bb.hs ], [ %i.aof, %bb.js ], [ %i.any, %bb.jq ], [ %i.anq, %bb.jo ], [ %i.ani, %bb.jm ], [ %i.ana, %bb.jk ]
  %.sroa.107.1271.i.i = phi i32 [ %.lcssa34.i.i.i.i.i.i141.i.i.i.i.i.i.i.i.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.i.i ], [ undef, %bb.bo ], [ undef, %bb.hq ], [ undef, %bb.el ], [ undef, %bb.fw ], [ undef, %bb.cz ], [ undef, %bb.dj ], [ undef, %bb.bw ], [ undef, %bb.bu ], [ undef, %bb.bs ], [ undef, %bb.bq ], [ undef, %bb.dh ], [ undef, %bb.df ], [ undef, %bb.dd ], [ undef, %bb.db ], [ undef, %bb.dr ], [ undef, %bb.dp ], [ undef, %bb.dn ], [ undef, %bb.dl ], [ undef, %bb.et ], [ undef, %bb.er ], [ undef, %bb.ep ], [ undef, %bb.en ], [ undef, %bb.ge ], [ undef, %bb.gc ], [ undef, %bb.ga ], [ undef, %bb.fy ], [ undef, %bb.hy ], [ undef, %bb.hw ], [ undef, %bb.hu ], [ undef, %bb.hs ], [ undef, %bb.js ], [ undef, %bb.jq ], [ undef, %bb.jo ], [ undef, %bb.jm ], [ undef, %bb.jk ]
  %.sroa.108.1270.i.i = phi i32 [ %.sroa.4103.0.extract.trunc.i.i.i.i.i.i.i.i.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.i.i ], [ undef, %bb.bo ], [ undef, %bb.hq ], [ undef, %bb.el ], [ undef, %bb.fw ], [ undef, %bb.cz ], [ undef, %bb.dj ], [ undef, %bb.bw ], [ undef, %bb.bu ], [ undef, %bb.bs ], [ undef, %bb.bq ], [ undef, %bb.dh ], [ undef, %bb.df ], [ undef, %bb.dd ], [ undef, %bb.db ], [ undef, %bb.dr ], [ undef, %bb.dp ], [ undef, %bb.dn ], [ undef, %bb.dl ], [ undef, %bb.et ], [ undef, %bb.er ], [ undef, %bb.ep ], [ undef, %bb.en ], [ undef, %bb.ge ], [ undef, %bb.gc ], [ undef, %bb.ga ], [ undef, %bb.fy ], [ undef, %bb.hy ], [ undef, %bb.hw ], [ undef, %bb.hu ], [ undef, %bb.hs ], [ undef, %bb.js ], [ undef, %bb.jq ], [ undef, %bb.jo ], [ undef, %bb.jm ], [ undef, %bb.jk ]
  %.sroa.109.1269.i.i = phi i32 [ %.sroa.4105.0.extract.trunc.i.i.i.i.i.i.i.i.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.i.i ], [ undef, %bb.bo ], [ undef, %bb.hq ], [ undef, %bb.el ], [ undef, %bb.fw ], [ undef, %bb.cz ], [ undef, %bb.dj ], [ undef, %bb.bw ], [ undef, %bb.bu ], [ undef, %bb.bs ], [ undef, %bb.bq ], [ undef, %bb.dh ], [ undef, %bb.df ], [ undef, %bb.dd ], [ undef, %bb.db ], [ undef, %bb.dr ], [ undef, %bb.dp ], [ undef, %bb.dn ], [ undef, %bb.dl ], [ undef, %bb.et ], [ undef, %bb.er ], [ undef, %bb.ep ], [ undef, %bb.en ], [ undef, %bb.ge ], [ undef, %bb.gc ], [ undef, %bb.ga ], [ undef, %bb.fy ], [ undef, %bb.hy ], [ undef, %bb.hw ], [ undef, %bb.hu ], [ undef, %bb.hs ], [ undef, %bb.js ], [ undef, %bb.jq ], [ undef, %bb.jo ], [ undef, %bb.jm ], [ undef, %bb.jk ]
  %.sroa.110.1268.i.i = phi i32 [ %.sroa.4107.0.extract.trunc.i.i.i.i.i.i.i.i.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.i.i ], [ undef, %bb.bo ], [ undef, %bb.hq ], [ undef, %bb.el ], [ undef, %bb.fw ], [ undef, %bb.cz ], [ undef, %bb.dj ], [ undef, %bb.bw ], [ undef, %bb.bu ], [ undef, %bb.bs ], [ undef, %bb.bq ], [ undef, %bb.dh ], [ undef, %bb.df ], [ undef, %bb.dd ], [ undef, %bb.db ], [ undef, %bb.dr ], [ undef, %bb.dp ], [ undef, %bb.dn ], [ undef, %bb.dl ], [ undef, %bb.et ], [ undef, %bb.er ], [ undef, %bb.ep ], [ undef, %bb.en ], [ undef, %bb.ge ], [ undef, %bb.gc ], [ undef, %bb.ga ], [ undef, %bb.fy ], [ undef, %bb.hy ], [ undef, %bb.hw ], [ undef, %bb.hu ], [ undef, %bb.hs ], [ undef, %bb.js ], [ undef, %bb.jq ], [ undef, %bb.jo ], [ undef, %bb.jm ], [ undef, %bb.jk ]
  %.sroa.45.sroa.0.1267.in.i.i = phi i32 [ %.lcssa34.i.i.i.i.i.i.i.i100.i.i.i.i.i.i.i.i, %_RINvYQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB9_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de13VariantAccess15newtype_variantNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg10SubRequestEB2y_.exit.i.i ], [ %i.io, %bb.bo ], [ %.lcssa34.i.i.i.i.i.i.i.i57.i.i.i.i.i.i.i.i, %bb.hq ], [ %.lcssa34.i.i.i.i.i.i.i.i21.i.i.i.i.i.i.i.i, %bb.el ], [ %.lcssa34.i.i.i.i.i.i.i.i30.i.i.i.i.i.i.i.i, %bb.fw ], [ %.lcssa34.i.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i, %bb.cz ], [ %i.pm, %bb.dj ], [ %i.jt, %bb.bw ], [ %i.jm, %bb.bu ], [ %i.je, %bb.bs ], [ %i.iw, %bb.bq ], [ %.lcssa34.i.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i, %bb.dh ], [ %.lcssa34.i.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i, %bb.df ], [ %.lcssa34.i.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i, %bb.dd ], [ %.lcssa34.i.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i, %bb.db ], [ %i.qr, %bb.dr ], [ %i.qk, %bb.dp ], [ %i.qc, %bb.dn ], [ %i.pu, %bb.dl ], [ %.lcssa34.i.i.i.i.i.i.i.i21.i.i.i.i.i.i.i.i, %bb.et ], [ %.lcssa34.i.i.i.i.i.i.i.i21.i.i.i.i.i.i.i.i, %bb.er ], [ %.lcssa34.i.i.i.i.i.i.i.i21.i.i.i.i.i.i.i.i, %bb.ep ], [ %.lcssa34.i.i.i.i.i.i.i.i21.i.i.i.i.i.i.i.i, %bb.en ], [ %.lcssa34.i.i.i.i.i.i.i.i30.i.i.i.i.i.i.i.i, %bb.ge ], [ %.lcssa34.i.i.i.i.i.i.i.i30.i.i.i.i.i.i.i.i, %bb.gc ], [ %.lcssa34.i.i.i.i.i.i.i.i30.i.i.i.i.i.i.i.i, %bb.ga ], [ %.lcssa34.i.i.i.i.i.i.i.i30.i.i.i.i.i.i.i.i, %bb.fy ], [ %.lcssa34.i.i.i.i.i.i.i.i57.i.i.i.i.i.i.i.i, %bb.hy ], [ %.lcssa34.i.i.i.i.i.i.i.i57.i.i.i.i.i.i.i.i, %bb.hw ], [ %.lcssa34.i.i.i.i.i.i.i.i57.i.i.i.i.i.i.i.i, %bb.hu ], [ %.lcssa34.i.i.i.i.i.i.i.i57.i.i.i.i.i.i.i.i, %bb.hs ], [ %.lcssa34.i.i.i.i.i.i.i.i67.i.i.i.i.i.i.i.i, %bb.js ], [ %.lcssa34.i.i.i.i.i.i.i.i67.i.i.i.i.i.i.i.i, %bb.jq ], [ %.lcssa34.i.i.i.i.i.i.i.i67.i.i.i.i.i.i.i.i, %bb.jo ], [ %.lcssa34.i.i.i.i.i.i.i.i67.i.i.i.i.i.i.i.i, %bb.jm ], [ %.lcssa34.i.i.i.i.i.i.i.i67.i.i.i.i.i.i.i.i, %bb.jk ]
  store i64 -9223372036854775803, ptr %0, align 8, !alias.scope !2462
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.095.1276.i.i, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !alias.scope !2462
  %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.45.sroa.0.1267.in.i.i, ptr %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx.i.i, align 4, !alias.scope !2462
  %.sroa.44.sroa.5.0..sroa.44.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.87.1275.i.i, ptr %.sroa.44.sroa.5.0..sroa.44.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2462
  %.sroa.44.sroa.6.0..sroa.44.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.93.1274.i.i, ptr %.sroa.44.sroa.6.0..sroa.44.0..sroa_idx.sroa_idx.i.i, align 4, !alias.scope !2462
  %.sroa.44.sroa.7.0..sroa.44.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.99.1273.i.i, ptr %.sroa.44.sroa.7.0..sroa.44.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2462
  %.sroa.44.sroa.8.0..sroa.44.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.104.1272.i.i, ptr %.sroa.44.sroa.8.0..sroa.44.0..sroa_idx.sroa_idx.i.i, align 4, !alias.scope !2462
  %.sroa.44.sroa.9.0..sroa.44.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.107.1271.i.i, ptr %.sroa.44.sroa.9.0..sroa.44.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2462
  %.sroa.44.sroa.10.0..sroa.44.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.108.1270.i.i, ptr %.sroa.44.sroa.10.0..sroa.44.0..sroa_idx.sroa_idx.i.i, align 4, !alias.scope !2462
  %.sroa.44.sroa.11.0..sroa.44.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.109.1269.i.i, ptr %.sroa.44.sroa.11.0..sroa.44.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2462
  %.sroa.44.sroa.12.0..sroa.44.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.110.1268.i.i, ptr %.sroa.44.sroa.12.0..sroa.44.0..sroa_idx.sroa_idx.i.i, align 4, !alias.scope !2462
  br label %_RINvXs3_NtNtCslX2I8TqP5TK_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2F_20BidirectionalMessageNtB1x_11Deserialize11deserialize9___VisitorEB2J_.exit

bb.qg:                                            ; preds = %bb.qe, %bb.qb, %bb.py, %bb.pv, %bb.pu, %bb.ps, %bb.pq, %bb.po, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i.i.i.i.i.i.i45.i.i, %bb.pm, %bb.pl, %bb.pj, %bb.ph, %bb.pf, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i.i.i.i.i.i.i39.i.i, %bb.pd, %bb.pc, %bb.pa, %bb.oy, %bb.ow, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i.i.i.i.i.i.i33.i.i, %bb.ou, %bb.ot, %bb.or, %bb.op, %bb.on, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i18.i.i.i.i.i.i.i.i, %bb.ol, %bb.ok, %bb.oi, %bb.og, %bb.oe, %bb.oc, %bb.ob, %bb.ny, %bb.nx, %bb.nv, %bb.nt, %bb.nr, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i59.i.i, %bb.np, %bb.no, %bb.nm, %bb.nk, %bb.ni, %bb.ng, %bb.nf, %bb.nc, %bb.mz, %bb.mw, %bb.mv, %bb.mu, %bb.ms, %bb.mq, %bb.mo, %bb.mm
  %.sroa.21118.sroa.0.7.ph.i.i = phi i8 [ %i.bjp, %bb.qe ], [ %i.bjl, %bb.qb ], [ %i.bjh, %bb.py ], [ 4, %bb.po ], [ 4, %bb.pq ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit80.i.i.i.i.i.i.i.i45.i.i ], [ 4, %bb.ps ], [ 5, %bb.pv ], [ 4, %bb.pf ], [ 4, %bb.ph ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit73.i.i.i.i.i.i.i.i39.i.i ], [ 4, %bb.pj ], [ 5, %bb.pm ], [ 4, %bb.ow ], [ 4, %bb.oy ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit66.i.i.i.i.i.i.i.i33.i.i ], [ 4, %bb.pa ], [ 5, %bb.pd ], [ 4, %bb.on ], [ 4, %bb.op ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i18.i.i.i.i.i.i.i.i ], [ 4, %bb.or ], [ 5, %bb.ou ], [ 4, %bb.oe ], [ 4, %bb.og ], [ 4, %bb.oc ], [ 4, %bb.oi ], [ 5, %bb.ol ], [ %i.bcf, %bb.ob ], [ 4, %bb.nr ], [ 4, %bb.nt ], [ 4, %_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api.exit.i.i.i.i.i.i.i.i59.i.i ], [ 4, %bb.nv ], [ 5, %bb.ny ], [ 4, %bb.ni ], [ 4, %bb.nk ], [ 4, %bb.ng ], [ 4, %bb.nm ], [ 5, %bb.np ], [ %i.azd, %bb.nf ], [ %i.ayz, %bb.nc ], [ %i.ayv, %bb.mz ], [ 4, %bb.mu ], [ 4, %bb.mo ], [ 4, %bb.mq ], [ 4, %bb.mm ], [ 4, %bb.ms ], [ %i.ayr, %bb.mw ], [ 4, %bb.pu ], [ 4, %bb.pl ], [ 4, %bb.pc ], [ 4, %bb.ot ], [ 4, %bb.ok ], [ 4, %bb.nx ], [ 4, %bb.no ], [ 5, %bb.mv ]
  %i.bjt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.21118.sroa.0.7.ph.i.i, ptr %i.bjt, align 8, !alias.scope !2462
  store i64 -2, ptr %0, align 8, !alias.scope !2462
  br label %_RINvXs3_NtNtCslX2I8TqP5TK_8postcard2de12deserializerQINtB6_12DeserializerNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB2F_20BidirectionalMessageNtB1x_11Deserialize11deserialize9___VisitorEB2J_.exit

end_hunk_1
begin_hunk_2_@_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementjECsJo5RpJFzwk_14proc_macro_api:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i, i64 5 ; 3 uses
  store ptr %i.am, ptr %i.d, align 8, !alias.scope !3615, !noalias !3601
  %i.an = and i8 %i.al, 127
  %i.ao = zext nneg i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 28
  %i.aq = or disjoint i64 %i.ap, %i.ai            ; 2 uses
  %i.ar = icmp sgt i8 %i.al, -1
  br i1 %i.ar, label %_RINvXs3_NtCsjQbM3MYDIrM_10serde_core2deINtNtCshzWfHUSfYae_4core6marker11PhantomDatajENtB6_15DeserializeSeed11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB20_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3616)
  %i.as = icmp eq ptr %i.am, %i.f
  br i1 %i.as, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = load i8, ptr %i.am, align 1, !noalias !3617, !noundef !6 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i, i64 6 ; 3 uses
  store ptr %i.au, ptr %i.d, align 8, !alias.scope !3618, !noalias !3601
  %i.av = and i8 %i.at, 127
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 35
  %i.ay = or disjoint i64 %i.ax, %i.aq            ; 2 uses
  %i.az = icmp sgt i8 %i.at, -1
  br i1 %i.az, label %_RINvXs3_NtCsjQbM3MYDIrM_10serde_core2deINtNtCshzWfHUSfYae_4core6marker11PhantomDatajENtB6_15DeserializeSeed11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB20_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3619)
  %i.ba = icmp eq ptr %i.au, %i.f
  br i1 %i.ba, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = load i8, ptr %i.au, align 1, !noalias !3620, !noundef !6 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i, i64 7 ; 3 uses
  store ptr %i.bc, ptr %i.d, align 8, !alias.scope !3621, !noalias !3601
  %i.bd = and i8 %i.bb, 127
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 42
  %i.bg = or i64 %i.bf, %i.ay                     ; 2 uses
  %i.bh = icmp sgt i8 %i.bb, -1
  br i1 %i.bh, label %_RINvXs3_NtCsjQbM3MYDIrM_10serde_core2deINtNtCshzWfHUSfYae_4core6marker11PhantomDatajENtB6_15DeserializeSeed11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB20_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3622)
  %i.bi = icmp eq ptr %i.bc, %i.f
  br i1 %i.bi, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load i8, ptr %i.bc, align 1, !noalias !3623, !noundef !6 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i, i64 8 ; 3 uses
  store ptr %i.bk, ptr %i.d, align 8, !alias.scope !3624, !noalias !3601
  %i.bl = and i8 %i.bj, 127
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 49
  %i.bo = or i64 %i.bn, %i.bg                     ; 2 uses
  %i.bp = icmp sgt i8 %i.bj, -1
  br i1 %i.bp, label %_RINvXs3_NtCsjQbM3MYDIrM_10serde_core2deINtNtCshzWfHUSfYae_4core6marker11PhantomDatajENtB6_15DeserializeSeed11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB20_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3625)
  %i.bq = icmp eq ptr %i.bk, %i.f
  br i1 %i.bq, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = load i8, ptr %i.bk, align 1, !noalias !3626, !noundef !6 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i, i64 9 ; 3 uses
  store ptr %i.bs, ptr %i.d, align 8, !alias.scope !3627, !noalias !3601
  %i.bt = and i8 %i.br, 127
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 56
  %i.bw = or i64 %i.bv, %i.bo                     ; 2 uses
  %i.bx = icmp sgt i8 %i.br, -1
  br i1 %i.bx, label %_RINvXs3_NtCsjQbM3MYDIrM_10serde_core2deINtNtCshzWfHUSfYae_4core6marker11PhantomDatajENtB6_15DeserializeSeed11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB20_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3628)
  %i.by = icmp eq ptr %i.bs, %i.f
  br i1 %i.by, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = load i8, ptr %i.bs, align 1, !noalias !3629, !noundef !6 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i, i64 10
  store ptr %i.ca, ptr %i.d, align 8, !alias.scope !3630, !noalias !3601
  %i.cb = icmp sgt i8 %i.bz, -1
  br i1 %i.cb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cc = zext nneg i8 %i.bz to i64
  %i.cd = shl nuw i64 %i.cc, 63
  %i.ce = or i64 %i.cd, %i.bw
  %i.cf = icmp samesign ugt i8 %i.bz, 1
  br i1 %i.cf, label %bb.x, label %_RINvXs3_NtCsjQbM3MYDIrM_10serde_core2deINtNtCshzWfHUSfYae_4core6marker11PhantomDatajENtB6_15DeserializeSeed11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB20_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api.exit.i

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.sroa.5.0.ph.i = phi i8 [ 4, %bb.c ], [ 5, %bb.v ], [ 4, %bb.u ], [ 4, %bb.s ], [ 4, %bb.q ], [ 4, %bb.o ], [ 4, %bb.m ], [ 4, %bb.k ], [ 4, %bb.i ], [ 4, %bb.g ], [ 4, %bb.e ], [ 5, %bb.w ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5.0.ph.i, ptr %i.cg, align 8, !alias.scope !3594
  store i64 2, ptr %0, align 8, !alias.scope !3594
  br label %_RINvXs1_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB6_9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess17next_element_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDatajEECsJo5RpJFzwk_14proc_macro_api.exit

_RINvXs3_NtCsjQbM3MYDIrM_10serde_core2deINtNtCshzWfHUSfYae_4core6marker11PhantomDatajENtB6_15DeserializeSeed11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB20_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api.exit.i: ; preds = %bb.w, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d
  %.sroa.72.0.i = phi i64 [ %i.aa, %bb.h ], [ %i.ai, %bb.j ], [ %i.s, %bb.f ], [ %i.k, %bb.d ], [ %i.bw, %bb.t ], [ %i.bo, %bb.r ], [ %i.bg, %bb.p ], [ %i.ay, %bb.n ], [ %i.aq, %bb.l ], [ %i.ce, %bb.w ]
  store i64 1, ptr %0, align 8, !alias.scope !3594
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.72.0.i, ptr %i.ch, align 8, !alias.scope !3594
  br label %_RINvXs1_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB6_9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess17next_element_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDatajEECsJo5RpJFzwk_14proc_macro_api.exit

_RINvXs1_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB6_9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess17next_element_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDatajEECsJo5RpJFzwk_14proc_macro_api.exit: ; preds = %bb.b, %bb.x, %_RINvXs3_NtCsjQbM3MYDIrM_10serde_core2deINtNtCshzWfHUSfYae_4core6marker11PhantomDatajENtB6_15DeserializeSeed11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB20_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i64 0, -4294967294) i64 @_RINvYINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess12next_elementmECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality !guid !3651 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3652)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3652, !noundef !6 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_RINvXs1_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB6_9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess17next_element_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDatamEECsJo5RpJFzwk_14proc_macro_api.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.b, -1
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !3652
  %i.d = load ptr, ptr %0, align 8, !alias.scope !3652, !nonnull !6, !align !13, !noundef !6 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3656)
  %.promoted.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !3657, !noalias !3652 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3657, !noalias !3652 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3658)
  %i.g = icmp eq ptr %.promoted.i.i.i.i.i, %i.f
  br i1 %i.g, label %_RINvXs1_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB6_9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess17next_element_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDatamEECsJo5RpJFzwk_14proc_macro_api.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %.promoted.i.i.i.i.i, align 1, !noalias !3659, !noundef !6 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i, i64 1 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8, !alias.scope !3660, !noalias !3652
  %i.j = and i8 %i.h, 127
  %i.k = zext nneg i8 %i.j to i32                 ; 2 uses
  %i.l = icmp sgt i8 %i.h, -1
  br i1 %i.l, label %_RINvXs3_NtCsjQbM3MYDIrM_10serde_core2deINtNtCshzWfHUSfYae_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB20_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3661)
  %i.m = icmp eq ptr %i.i, %i.f
  br i1 %i.m, label %_RINvXs1_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB6_9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess17next_element_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDatamEECsJo5RpJFzwk_14proc_macro_api.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.i, align 1, !noalias !3662, !noundef !6 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i, i64 2 ; 3 uses
  store ptr %i.o, ptr %i.d, align 8, !alias.scope !3663, !noalias !3652
  %i.p = and i8 %i.n, 127
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 7
  %i.s = or disjoint i32 %i.r, %i.k               ; 2 uses
  %i.t = icmp sgt i8 %i.n, -1
  br i1 %i.t, label %_RINvXs3_NtCsjQbM3MYDIrM_10serde_core2deINtNtCshzWfHUSfYae_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB20_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3664)
  %i.u = icmp eq ptr %i.o, %i.f
  br i1 %i.u, label %_RINvXs1_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB6_9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess17next_element_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDatamEECsJo5RpJFzwk_14proc_macro_api.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.o, align 1, !noalias !3665, !noundef !6 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i, i64 3 ; 3 uses
  store ptr %i.w, ptr %i.d, align 8, !alias.scope !3666, !noalias !3652
  %i.x = and i8 %i.v, 127
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 14
  %i.aa = or disjoint i32 %i.z, %i.s              ; 2 uses
  %i.ab = icmp sgt i8 %i.v, -1
  br i1 %i.ab, label %_RINvXs3_NtCsjQbM3MYDIrM_10serde_core2deINtNtCshzWfHUSfYae_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB20_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3667)
  %i.ac = icmp eq ptr %i.w, %i.f
  br i1 %i.ac, label %_RINvXs1_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB6_9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess17next_element_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDatamEECsJo5RpJFzwk_14proc_macro_api.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load i8, ptr %i.w, align 1, !noalias !3668, !noundef !6 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i, i64 4 ; 3 uses
  store ptr %i.ae, ptr %i.d, align 8, !alias.scope !3669, !noalias !3652
  %i.af = and i8 %i.ad, 127
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 21
  %i.ai = or disjoint i32 %i.ah, %i.aa            ; 2 uses
  %i.aj = icmp sgt i8 %i.ad, -1
  br i1 %i.aj, label %_RINvXs3_NtCsjQbM3MYDIrM_10serde_core2deINtNtCshzWfHUSfYae_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB20_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3670)
  %i.ak = icmp eq ptr %i.ae, %i.f
  br i1 %i.ak, label %_RINvXs1_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB6_9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess17next_element_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDatamEECsJo5RpJFzwk_14proc_macro_api.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = load i8, ptr %i.ae, align 1, !noalias !3671, !noundef !6 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i.i, i64 5
  store ptr %i.am, ptr %i.d, align 8, !alias.scope !3672, !noalias !3652
  %i.an = zext i8 %i.al to i32
  %i.ao = shl nuw i32 %i.an, 28
  %i.ap = or disjoint i32 %i.ao, %i.ai
  %or.cond35.not.i.i.i.i.i = icmp ult i8 %i.al, 16
  br i1 %or.cond35.not.i.i.i.i.i, label %_RINvXs3_NtCsjQbM3MYDIrM_10serde_core2deINtNtCshzWfHUSfYae_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB20_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api.exit.i, label %_RINvXs1_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB6_9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess17next_element_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDatamEECsJo5RpJFzwk_14proc_macro_api.exit

_RINvXs3_NtCsjQbM3MYDIrM_10serde_core2deINtNtCshzWfHUSfYae_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB20_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api.exit.i: ; preds = %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.lcssa34.i.i.i.i.i = phi i32 [ %i.ap, %bb.k ], [ %i.ai, %bb.i ], [ %i.aa, %bb.g ], [ %i.s, %bb.e ], [ %i.k, %bb.c ]
  %i.aq = zext i32 %.lcssa34.i.i.i.i.i to i64
  %i.ar = shl nuw i64 %i.aq, 32
  %i.as = or disjoint i64 %i.ar, 1
  br label %_RINvXs1_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB6_9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess17next_element_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDatamEECsJo5RpJFzwk_14proc_macro_api.exit

_RINvXs1_NtNtCslX2I8TqP5TK_8postcard2de12deserializerINtB6_9SeqAccessNtNtB8_7flavors5SliceENtNtCsjQbM3MYDIrM_10serde_core2de9SeqAccess17next_element_seedINtNtCshzWfHUSfYae_4core6marker11PhantomDatamEECsJo5RpJFzwk_14proc_macro_api.exit: ; preds = %bb.a, %bb.b, %bb.d, %bb.f, %bb.h, %bb.j, %bb.k, %_RINvXs3_NtCsjQbM3MYDIrM_10serde_core2deINtNtCshzWfHUSfYae_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB20_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api.exit.i
  %.sroa.4.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.as, %_RINvXs3_NtCsjQbM3MYDIrM_10serde_core2deINtNtCshzWfHUSfYae_4core6marker11PhantomDatamENtB6_15DeserializeSeed11deserializeQINtNtNtCslX2I8TqP5TK_8postcard2de12deserializer12DeserializerNtNtB20_7flavors5SliceEECsJo5RpJFzwk_14proc_macro_api.exit.i ], [ 17179869186, %bb.d ], [ 17179869186, %bb.f ], [ 17179869186, %bb.b ], [ 17179869186, %bb.h ], [ 21474836482, %bb.k ], [ 17179869186, %bb.j ]
  ret i64 %.sroa.4.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgNtB2_20BidirectionalMessageNtNtNtB6_15legacy_protocol3msg7Message4read(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) initializes((0, 16)) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #0 !guid !3673 {
bb.a:
  %i.a = alloca [264 x i8], align 8               ; 7 uses
  %.sroa.6.sroa.5 = alloca [248 x i8], align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.5)
  %i.b = tail call { i64, ptr } @_RINvNtNtCsJo5RpJFzwk_14proc_macro_api9transport8postcard4readDNtNtNtCsbSS6DM8SDEO_5alloc2io8buf_read7BufReadEL_EB6_(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1        ; 5 uses
  %i.e = trunc nuw i64 %i.c to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8
  store i64 -3, ptr %0, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !6
  call void @_RINvNtNtCsJo5RpJFzwk_14proc_macro_api9transport8postcard6decodeNtNtNtB6_22bidirectional_protocol3msg20BidirectionalMessageEB6_(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.a, ptr noalias nofree noundef nonnull %i.h, i64 noundef %i.j)
  %i.k = load i64, ptr %i.a, align 8, !range !3674, !noundef !6 ; 2 uses
  %i.l = icmp eq i64 %i.k, -2
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.g
  %.sroa.6.sroa.0.0 = phi ptr [ %i.n, %bb.g ], [ undef, %bb.c ]
  %.sroa.0.0 = phi i64 [ %i.k, %bb.g ], [ -2, %bb.c ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.sroa.0.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6.sroa.5, i64 248, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  store i64 -3, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6.sroa.5, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.520.0..sroa_idx, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.5)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvXNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgNtB2_20BidirectionalMessageNtNtNtB6_15legacy_protocol3msg7Message5write(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(264) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !3675 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvNtNtCsJo5RpJFzwk_14proc_macro_api9transport8postcard6encodeNtNtNtB6_22bidirectional_protocol3msg20BidirectionalMessageEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %0)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.h, %bb.b, %bb.f
  %.pn = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.c, %bb.b ], [ %i.j, %bb.h ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg20BidirectionalMessageEBH_(ptr noalias nofree noundef align 8 dereferenceable(264) %0) #15
          to label %bb.m unwind label %bb.l

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !range !5, !noundef !6 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg20BidirectionalMessageEBH_(ptr noalias nofree noundef align 8 dereferenceable(264) %0)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.510.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %i.h = invoke noundef ptr @_RINvNtNtCsJo5RpJFzwk_14proc_macro_api9transport8postcard5writeDNtNtNtCshzWfHUSfYae_4core2io5write5WriteEL_EB6_(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %.sroa.510.0.copyload)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #15
          to label %.body unwind label %bb.l

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsJo5RpJFzwk_14proc_macro_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsJo5RpJFzwk_14proc_macro_api.exit unwind label %bb.b

bb.j:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsJo5RpJFzwk_14proc_macro_api.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msg20BidirectionalMessageEBH_(ptr noalias nofree noundef align 8 dereferenceable(264) %0)
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsJo5RpJFzwk_14proc_macro_api.exit, %bb.d
  %.sroa.0.0 = phi ptr [ %i.g, %bb.d ], [ %i.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsJo5RpJFzwk_14proc_macro_api.exit ]
  ret ptr %.sroa.0.0

bb.l:                                             ; preds = %bb.f, %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.m:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs1_1__NtB7_11SubResponseNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1w_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !3676 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs3_1__NtB7_10ParentSpanNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1v_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !3677 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs5_1__NtB7_8SpanJoinNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1s_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !3678 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtNtCsJo5RpJFzwk_14proc_macro_api22bidirectional_protocol3msgs7_1__NtB7_20BidirectionalMessageNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1F_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !3679 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
end_hunk_2
