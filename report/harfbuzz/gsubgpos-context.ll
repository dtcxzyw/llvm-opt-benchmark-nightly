Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/gsubgpos-context?download=true
inline.NumInlined: 448
inline.NumDeleted: 318
begin_hunk_0_@_ZN11hb_vector_tIPcLb0EE5allocEjb:bb.a

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !37

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !122

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 536870911
  br i1 %i.j, label %.critedge, label %bb.e, !prof !37

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !80
  tail call void @hb_free(ptr noundef %i.m) #9
  br label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !80   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 3
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #9 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !37

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !75   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !37

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 34359738361) %i.v, i1 false), !alias.scope !123
  br label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 3
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #9 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, !prof !127

_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !79    ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !80
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !79
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

declare ptr @hb_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17, label %bb.b, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !91     ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17, label %bb.c, !prof !37

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !38
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.e) ; 3 uses
  %.not19.i = icmp ugt i32 %.sroa.speculated.i, %i.b
  %i.f = lshr i32 %i.b, 2
  %.not20.i = icmp ult i32 %.sroa.speculated.i, %i.f
  %or.cond.i = or i1 %.not19.i, %.not20.i
  br i1 %or.cond.i, label %.thread.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp samesign ugt i32 %1, %i.b
  br i1 %.not.i, label %.preheader.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread, !prof !37

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.039.i = phi i32 [ %i.i, %.preheader.i ], [ %i.b, %bb.e ] ; 2 uses
  %i.g = lshr i32 %.039.i, 1
  %i.h = add nuw i32 %.039.i, 8
  %i.i = add nuw i32 %i.h, %i.g                   ; 3 uses
  %i.j = icmp ugt i32 %1, %i.i
  br i1 %i.j, label %.preheader.i, label %.thread.i, !llvm.loop !128

.thread.i:                                        ; preds = %.preheader.i, %bb.d
  %.138.i = phi i32 [ %.sroa.speculated.i, %bb.d ], [ %i.i, %.preheader.i ] ; 5 uses
  %i.k = icmp ugt i32 %.138.i, 19884107
  br i1 %i.k, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, label %bb.f, !prof !37

bb.f:                                             ; preds = %.thread.i
  %i.l = tail call noundef ptr @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.138.i) ; 2 uses
  %.not21.i = icmp ne i32 %.138.i, 0
  %.not22.i = icmp eq ptr %i.l, null
  %spec.select.i = and i1 %.not21.i, %.not22.i
  br i1 %spec.select.i, label %bb.g, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit, !prof !37

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %0, align 8, !tbaa !91     ; 2 uses
  %.not23.i = icmp ugt i32 %.138.i, %i.m
  br i1 %.not23.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20: ; preds = %bb.g, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.b, %.thread.i ], [ %i.m, %bb.g ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %0, align 8, !tbaa !91
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !88
  store i32 %.138.i, ptr %0, align 8, !tbaa !91
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread: ; preds = %bb.g, %bb.e, %bb.d, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !39   ; 3 uses
  %i.q = icmp ugt i32 %1, %i.p
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread
  br i1 %2, label %.lr.ph.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %i.s = phi i32 [ %i.p, %.lr.ph.i ], [ %i.al, %bb.i ]
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !88
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [216 x i8], ptr %i.t, i64 %i.u ; 15 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.v, i8 0, i64 216, i1 false)
  store i32 -1, ptr %i.w, align 4, !tbaa !129
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 100
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  store atomic i32 1, ptr %i.x monotonic, align 4
  store atomic i8 1, ptr %i.y monotonic, align 4
  store atomic ptr null, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store i8 1, ptr %i.aa, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 114
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  store ptr null, ptr %i.ac, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ab, i8 0, i64 18, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 148
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 164
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 176
  store atomic i32 1, ptr %i.ad monotonic, align 8
  store atomic i8 1, ptr %i.ae monotonic, align 4
  store atomic ptr null, ptr %i.af monotonic, align 8
  store i8 1, ptr %i.ag, align 8, !tbaa !130
  store i32 0, ptr %i.ah, align 4, !tbaa !131
  store atomic i32 0, ptr %i.ai monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.aj, i8 0, i64 33, i1 false)
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !39
  %i.al = add i32 %i.ak, 1                        ; 3 uses
  store i32 %i.al, ptr %i.o, align 4, !tbaa !39
  %i.am = icmp ult i32 %i.al, %1
  br i1 %i.am, label %bb.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, !llvm.loop !132

bb.j:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread
  %i.an = icmp ult i32 %1, %i.p
  %or.cond = and i1 %2, %i.an
  br i1 %or.cond, label %bb.k, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE13shrink_vectorEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.h
  store i32 %1, ptr %i.o, align 4, !tbaa !39
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17: ; preds = %bb.b, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20 ], [ true, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE13shrink_vectorEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39   ; 2 uses
  %i.c = sub i32 %i.b, %1                         ; 2 uses
  %.not5 = icmp eq i32 %i.c, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88
  %i.f = zext i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [216 x i8], ptr %i.e, i64 %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5graph7graph_t8vertex_tD2Ev.exit
  %.07 = phi ptr [ %i.i, %_ZN5graph7graph_t8vertex_tD2Ev.exit ], [ %i.g, %.lr.ph.preheader ] ; 11 uses
  %.046 = phi i32 [ %i.h, %_ZN5graph7graph_t8vertex_tD2Ev.exit ], [ %i.c, %.lr.ph.preheader ]
  %i.h = add i32 %.046, -1                        ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.07, i64 -216
  %i.j = getelementptr inbounds i8, ptr %.07, i64 -72
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.j) #9
  %i.k = getelementptr inbounds i8, ptr %.07, i64 -120
  store atomic i32 -57005, ptr %i.k monotonic, align 4
  %i.l = getelementptr inbounds i8, ptr %.07, i64 -112 ; 2 uses
  %i.m = load atomic ptr, ptr %i.l acquire, align 8 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.m)
  %i.o = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.m) #9 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.m) #9
  store atomic ptr null, ptr %i.l monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph
  %i.p = getelementptr inbounds i8, ptr %.07, i64 -80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i, label %bb.c, !prof !37

bb.c:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  tail call void @hb_free(ptr noundef nonnull %i.q) #9
  br label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i

_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i:             ; preds = %bb.c, %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  %i.r = getelementptr inbounds i8, ptr %.07, i64 -184
  %i.s = load i32, ptr %i.r, align 8, !tbaa !133
  %i.t = add i32 %i.s, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.t, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

bb.d:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.u = getelementptr inbounds i8, ptr %.07, i64 -180
  store i32 0, ptr %i.u, align 4, !tbaa !134
  %i.v = getelementptr inbounds i8, ptr %.07, i64 -176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135
  tail call void @hb_free(ptr noundef %i.w) #9
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i: ; preds = %bb.d, %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.x = getelementptr inbounds i8, ptr %.07, i64 -200
  %i.y = load i32, ptr %i.x, align 8, !tbaa !133
  %i.z = add i32 %i.y, -1
  %spec.select.i.i.i1.i.i = icmp ult i32 %i.z, -2
  br i1 %spec.select.i.i.i1.i.i, label %bb.e, label %_ZN5graph7graph_t8vertex_tD2Ev.exit

bb.e:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i
  %i.aa = getelementptr inbounds i8, ptr %.07, i64 -196
  store i32 0, ptr %i.aa, align 4, !tbaa !134
  %i.ab = getelementptr inbounds i8, ptr %.07, i64 -192
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !135
  tail call void @hb_free(ptr noundef %i.ac) #9
  br label %_ZN5graph7graph_t8vertex_tD2Ev.exit

_ZN5graph7graph_t8vertex_tD2Ev.exit:              ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i, %bb.e
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !136

._crit_edge:                                      ; preds = %_ZN5graph7graph_t8vertex_tD2Ev.exit, %bb.a
  store i32 %1, ptr %i.a, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !91
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = mul nuw nsw i64 %i.c, 216
  %i.e = tail call ptr @hb_malloc(i64 noundef %i.d) #9 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.k, label %.preheader, !prof !37

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !39
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5graph7graph_t8vertex_tD2Ev.exit, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !91
  %i.j = add i32 %i.i, -1
  %spec.select.i17 = icmp ult i32 %i.j, -2
  br i1 %spec.select.i17, label %.sink.split, label %bb.k

bb.d:                                             ; preds = %.lr.ph, %_ZN5graph7graph_t8vertex_tD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5graph7graph_t8vertex_tD2Ev.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %i.e, i64 %indvars.iv ; 28 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.k, i8 0, i64 216, i1 false)
  store i32 -1, ptr %i.n, align 4, !tbaa !129
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 100
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store atomic i32 1, ptr %i.o monotonic, align 4
  store atomic i8 1, ptr %i.p monotonic, align 4
  store atomic ptr null, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  store i8 1, ptr %i.r, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 114 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 136 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.s, i8 0, i64 18, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 148
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 160 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 164
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  store atomic i32 1, ptr %i.u monotonic, align 8
  store atomic i8 1, ptr %i.v monotonic, align 4
  store atomic ptr null, ptr %i.w monotonic, align 8
  store i8 1, ptr %i.x, align 8, !tbaa !130
  store i32 0, ptr %i.y, align 4, !tbaa !131
  store atomic i32 0, ptr %i.z monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.aa, i8 0, i64 33, i1 false)
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.ac = getelementptr inbounds nuw [216 x i8], ptr %i.ab, i64 %indvars.iv ; 17 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.k, ptr noundef nonnull align 8 dereferenceable(216) %i.ac, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !38
  store i32 %i.ae, ptr %i.l, align 8, !tbaa !38
  store i32 0, ptr %i.ad, align 4, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 20 ; 2 uses
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !38
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !38
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !38
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !137
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !137
  store ptr null, ptr %i.ak, align 8, !tbaa !137
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.ao = load i32, ptr %i.am, align 8, !tbaa !38
  %i.ap = load i32, ptr %i.an, align 8, !tbaa !38
  store i32 %i.ap, ptr %i.am, align 8, !tbaa !38
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 36 ; 2 uses
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !38
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !38
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !38
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !137
  %i.ax = load <2 x ptr>, ptr %i.av, align 8, !tbaa !138
  store <2 x ptr> %i.ax, ptr %i.au, align 8, !tbaa !138
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !137
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.m, ptr noundef nonnull align 8 dereferenceable(33) %i.ay, i64 33, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.ba = load i8, ptr %i.az, align 8, !range !85
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.e, label %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 114 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !139
  store i16 %i.bd, ptr %i.s, align 2, !tbaa !139
  store i16 0, ptr %i.bc, align 2, !tbaa !139
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 116 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 116 ; 2 uses
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !38
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !38
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !38
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !38
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 120 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 8, !tbaa !38
  %i.bl = load i32, ptr %i.bj, align 8, !tbaa !38
  store i32 %i.bl, ptr %i.bi, align 8, !tbaa !38
  store i32 %i.bk, ptr %i.bj, align 8, !tbaa !38
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 124 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, i64 124 ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !38
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !38
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !38
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !38
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ac, i64 128 ; 2 uses
  %i.bs = load i32, ptr %i.bq, align 8, !tbaa !38
  %i.bt = load i32, ptr %i.br, align 8, !tbaa !38
  store i32 %i.bt, ptr %i.bq, align 8, !tbaa !38
  store i32 %i.bs, ptr %i.br, align 8, !tbaa !38
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ac, i64 136 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !140
  store ptr %i.bv, ptr %i.t, align 8, !tbaa !140
  store ptr null, ptr %i.bu, align 8, !tbaa !140
  br label %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i

_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i:          ; preds = %bb.e, %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ac, i64 160 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !range !85
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.f, label %_ZN5graph7graph_t8vertex_taSEOS1_.exit, !prof !37

bb.f:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 208 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !141, !range !85, !noundef !65
  store i8 %i.cb, ptr %i.bz, align 8, !tbaa !141
  store i8 0, ptr %i.ca, align 8, !tbaa !141
  tail call fastcc void @"_ZNK4$_11clI12hb_bit_set_tEEvRT_S3_"(ptr noundef nonnull align 8 dereferenceable(49) %i.x, ptr noundef nonnull align 8 dereferenceable(49) %i.bw)
  br label %_ZN5graph7graph_t8vertex_taSEOS1_.exit

_ZN5graph7graph_t8vertex_taSEOS1_.exit:           ; preds = %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i, %bb.f
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.cd = getelementptr inbounds nuw [216 x i8], ptr %i.cc, i64 %indvars.iv ; 10 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 144
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.ce) #9
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 96
  store atomic i32 -57005, ptr %i.cf monotonic, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 104 ; 2 uses
  %i.ch = load atomic ptr, ptr %i.cg acquire, align 8 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN5graph7graph_t8vertex_taSEOS1_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(56) %i.ch)
  %i.cj = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.ch) #9 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.ch) #9
  store atomic ptr null, ptr %i.cg monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN5graph7graph_t8vertex_taSEOS1_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 136
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i, label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i, label %bb.h, !prof !37

bb.h:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  tail call void @hb_free(ptr noundef nonnull %i.cl) #9
  br label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i

_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i:             ; preds = %bb.h, %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !133
  %i.co = add i32 %i.cn, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.co, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

bb.i:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 36
  store i32 0, ptr %i.cp, align 4, !tbaa !134
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !135
  tail call void @hb_free(ptr noundef %i.cr) #9
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i: ; preds = %bb.i, %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !133
  %i.cu = add i32 %i.ct, -1
  %spec.select.i.i.i1.i.i = icmp ult i32 %i.cu, -2
  br i1 %spec.select.i.i.i1.i.i, label %bb.j, label %_ZN5graph7graph_t8vertex_tD2Ev.exit

bb.j:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  store i32 0, ptr %i.cv, align 4, !tbaa !134
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !135
  tail call void @hb_free(ptr noundef %i.cx) #9
  br label %_ZN5graph7graph_t8vertex_tD2Ev.exit

_ZN5graph7graph_t8vertex_tD2Ev.exit:              ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = load i32, ptr %i.f, align 4, !tbaa !39
  %i.cz = zext i32 %i.cy to i64
  %i.da = icmp samesign ult i64 %indvars.iv.next, %i.cz
  br i1 %i.da, label %bb.d, label %._crit_edge, !llvm.loop !142

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !88
  tail call void @hb_free(ptr noundef %i.dc) #9
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZNK4$_11clI12hb_bit_set_tEEvRT_S3_"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !130, !range !85, !noundef !65
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr %1, align 8, !range !85
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 %i.d, i1 false
  br i1 %i.e, label %bb.b, label %_Z4swapR12hb_bit_set_tS0_.exit, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.f, align 4, !tbaa !38
  %i.i = load i32, ptr %i.g, align 4, !tbaa !38
  store i32 %i.i, ptr %i.f, align 4, !tbaa !38
  store i32 %i.h, ptr %i.g, align 4, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.j, align 8, !tbaa !38
  %i.l = load i32, ptr %i.k, align 8, !tbaa !38
  store i32 %i.l, ptr %i.j, align 8, !tbaa !38
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.k, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.m, align 8, !tbaa !38
  %i.p = load i32, ptr %i.n, align 8, !tbaa !38
  store i32 %i.p, ptr %i.m, align 8, !tbaa !38
  store i32 %i.o, ptr %i.n, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !38
  %i.t = load i32, ptr %i.r, align 4, !tbaa !38
  store i32 %i.t, ptr %i.q, align 4, !tbaa !38
  store i32 %i.s, ptr %i.r, align 4, !tbaa !38
end_hunk_0
