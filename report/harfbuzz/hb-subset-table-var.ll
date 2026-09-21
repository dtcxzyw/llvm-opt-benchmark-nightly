Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-var?download=true
inline.NumInlined: 11366
inline.NumDeleted: 4744
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN12hb_bit_set_t9del_rangeEjj:bb.a
  %i.dh = lshr i32 %2, 6
  %i.di = and i32 %i.dh, 7                        ; 3 uses
  %i.dj = shl nuw nsw i32 %i.di, 3                ; 2 uses
  %.idx.i77 = zext nneg i32 %i.dj to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx.i77 ; 2 uses
  %i.dl = icmp eq i32 %i.di, 0
  br i1 %i.dl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dm = and i32 %2, 63
  %i.dn = zext nneg i32 %i.dm to i64
  %.neg = shl i64 -2, %i.dn
  %i.do = load i64, ptr %i.dg, align 8, !tbaa !257
  %i.dp = and i64 %i.do, %.neg
  store i64 %i.dp, ptr %i.dg, align 8, !tbaa !257
  br label %_ZN13hb_bit_page_t9del_rangeEjj.exit83

bb.y:                                             ; preds = %bb.w
  store i64 0, ptr %i.dg, align 8, !tbaa !257
  %.not.i.i79 = icmp eq i32 %i.di, 1
  br i1 %.not.i.i79, label %_ZL9hb_memsetPvij.exit.i81, label %bb.z, !prof !103

bb.z:                                             ; preds = %bb.y
  %gepdiff.i80 = add nsw i32 %i.dj, -8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dr = zext i32 %gepdiff.i80 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dq, i8 0, i64 %i.dr, i1 false)
  br label %_ZL9hb_memsetPvij.exit.i81

_ZL9hb_memsetPvij.exit.i81:                       ; preds = %bb.z, %bb.y
  %i.ds = and i32 %2, 63
  %i.dt = zext nneg i32 %i.ds to i64
  %.neg.i82 = shl i64 -2, %i.dt
  %i.du = load i64, ptr %i.dk, align 8, !tbaa !257
  %i.dv = and i64 %i.du, %.neg.i82
  store i64 %i.dv, ptr %i.dk, align 8, !tbaa !257
  br label %_ZN13hb_bit_page_t9del_rangeEjj.exit83

_ZN13hb_bit_page_t9del_rangeEjj.exit83:           ; preds = %bb.x, %_ZL9hb_memsetPvij.exit.i81
  store i32 -1, ptr %i.df, align 8, !tbaa !255
  br label %_ZN12hb_bit_set_t8page_forEjb.exit75.thread

_ZN12hb_bit_set_t8page_forEjb.exit75.thread:      ; preds = %bb.v, %._crit_edge.i55, %_ZN12hb_bit_set_t8page_forEjb.exit75, %_ZN13hb_bit_page_t9del_rangeEjj.exit83, %_ZN12hb_bit_set_t8page_forEjb.exit.thread
  tail call void @_ZN12hb_bit_set_t9del_pagesEii(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.l, i32 noundef %i.p)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.b, %bb.a, %_ZN12hb_bit_set_t8page_forEjb.exit75.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12hb_bit_set_t9del_pagesEii(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %struct.hb_vector_t.22, align 8     ; 11 uses
  %.not = icmp sgt i32 %1, %2
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !252  ; 7 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit.thread, label %bb.c, !prof !103

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.not19.i.not = icmp eq i32 %i.b, 0
  br i1 %.not19.i.not, label %_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.e = icmp samesign ugt i32 %i.b, 1073741823
  br i1 %i.e, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread19, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, !prof !103

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.f = shl nuw i32 %i.b, 2
  %i.g = zext i32 %i.f to i64
  %i.h = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.g) #18 ; 3 uses
  %.not22.i = icmp eq ptr %i.h, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread19, label %bb.d, !prof !190

_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread19:   ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %.thread.i
  store i32 -1, ptr %3, align 8, !tbaa !359
  br label %_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit.thread

bb.d:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !361
  store i32 %i.b, ptr %3, align 8, !tbaa !359
  %i.j = shl nuw i32 %i.b, 2
  %i.k = zext i32 %i.j to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 0, i64 %i.k, i1 false)
  br label %_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit

_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit.thread: ; preds = %bb.b, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread19
  %i.l = phi i32 [ 0, %bb.b ], [ -1, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread19 ]
  store i8 0, ptr %0, align 8, !tbaa !306
  br label %bb.h

_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit: ; preds = %bb.c, %bb.d
  store i32 %i.b, ptr %i.d, align 4, !tbaa !360
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !399  ; 2 uses
  %.not25 = icmp eq i32 %i.n, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.e

._crit_edge:                                      ; preds = %bb.g, %_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit
  %.013.lcssa = phi i32 [ 0, %_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit ], [ %.1, %bb.g ] ; 2 uses
  call void @_ZN12hb_bit_set_t7compactER11hb_vector_tIjLb0EEj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %.013.lcssa)
  %i.p = call noundef zeroext i1 @_ZN12hb_bit_set_t6resizeEjbb(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %.013.lcssa, i1 noundef zeroext true, i1 noundef zeroext false) ; 0 uses
  %.pre27 = load i32, ptr %3, align 8, !tbaa !359
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %i.q = phi i32 [ %i.n, %.lr.ph ], [ %i.aa, %bb.g ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.01323 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.g ] ; 3 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !398  ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !401  ; 2 uses
  %i.u = icmp slt i32 %i.t, %1
  %i.v = icmp slt i32 %2, %i.t
  %or.cond = or i1 %i.u, %i.v
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = add i32 %.01323, 1
  %i.x = zext i32 %.01323 to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.x
  %i.z = load i64, ptr %i.s, align 4
  store i64 %i.z, ptr %i.y, align 4
  %.pre = load i32, ptr %i.m, align 4, !tbaa !399
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aa = phi i32 [ %.pre, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %i.w, %bb.f ], [ %.01323, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = icmp samesign ult i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.e, label %._crit_edge, !llvm.loop !1599

bb.h:                                             ; preds = %_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit.thread, %._crit_edge
  %i.ad = phi i32 [ %i.l, %_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit.thread ], [ %.pre27, %._crit_edge ]
  %i.ae = add i32 %i.ad, -1
  %spec.select.i.i.i = icmp ult i32 %i.ae, -2
  br i1 %spec.select.i.i.i, label %bb.i, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.af, align 4, !tbaa !360
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !361
  call void @hb_free(ptr noundef %i.ah) #18
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.j

bb.j:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12hb_bit_set_t7compactER11hb_vector_tIjLb0EEj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !361  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !360  ; 2 uses
  %.not6.i = icmp eq i32 %i.d, 0
  br i1 %.not6.i, label %_Z7hb_fillI10hb_array_tIjEjTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEvOS3_RKT0_.exit, label %_ZN9hb_iter_tI10hb_array_tIjERjEppEi.exit.i.preheader

_ZN9hb_iter_tI10hb_array_tIjERjEppEi.exit.i.preheader: ; preds = %bb.a
  %.sroa.2.8.insert.ext.i.i.i = zext i32 %i.d to i64
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEppEi.exit.i

_ZN9hb_iter_tI10hb_array_tIjERjEppEi.exit.i:      ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEppEi.exit.i.preheader, %_ZN9hb_iter_tI10hb_array_tIjERjEppEi.exit.i
  %.sroa.0.08.i = phi ptr [ %i.f, %_ZN9hb_iter_tI10hb_array_tIjERjEppEi.exit.i ], [ %i.b, %_ZN9hb_iter_tI10hb_array_tIjERjEppEi.exit.i.preheader ] ; 2 uses
  %.sroa.6.07.i = phi i64 [ %.sroa.6.8.insert.ext.i, %_ZN9hb_iter_tI10hb_array_tIjERjEppEi.exit.i ], [ %.sroa.2.8.insert.ext.i.i.i, %_ZN9hb_iter_tI10hb_array_tIjERjEppEi.exit.i.preheader ]
  store i32 -1, ptr %.sroa.0.08.i, align 4, !tbaa !206
  %i.e = add nuw nsw i64 %.sroa.6.07.i, 4294967295
  %.sroa.6.8.insert.ext.i = and i64 %i.e, 4294967295 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4
  %.not.i = icmp eq i64 %.sroa.6.8.insert.ext.i, 0
  br i1 %.not.i, label %_Z7hb_fillI10hb_array_tIjEjTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEvOS3_RKT0_.exit, label %_ZN9hb_iter_tI10hb_array_tIjERjEppEi.exit.i, !llvm.loop !1600

_Z7hb_fillI10hb_array_tIjEjTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEvOS3_RKT0_.exit: ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEppEi.exit.i, %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_Z7hb_fillI10hb_array_tIjEjTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEvOS3_RKT0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i64, ptr @_hb_NullPool, align 16    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %3 = load ptr, ptr %i.i, align 8
  %i.j = trunc i64 %i.h to i32
  %wide.trip.count = zext i32 %2 to i64
  %i.k = lshr i64 %i.h, 32
  %i.l = trunc nuw i64 %i.k to i32
  br label %bb.m

._crit_edge:                                      ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit, %_Z7hb_fillI10hb_array_tIjEjTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEvOS3_RKT0_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !252  ; 2 uses
  %.not.i9 = icmp eq i32 %i.n, 0
  br i1 %.not.i9, label %_ZN12hb_bit_set_t13compact_pagesERK11hb_vector_tIjLb0EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i64, ptr @_hb_NullPool, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %.lr.ph.i
  %i.s = phi i32 [ %i.n, %.lr.ph.i ], [ %i.aq, %bb.l ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.l ] ; 8 uses
  %.01222.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.l ] ; 5 uses
  %i.t = load i32, ptr %i.c, align 4, !tbaa !360
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.not.i.i = icmp samesign ult i64 %indvars.iv.i, %i.u
  %i.v = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %.0.i.i = select i1 %.not.i.i, ptr %i.w, ptr @_hb_NullPool, !prof !207
  %i.x = load i32, ptr %.0.i.i, align 4, !tbaa !206
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = zext i32 %.01222.i to i64                ; 2 uses
  %i.aa = icmp samesign ugt i64 %indvars.iv.i, %i.z
  br i1 %i.aa, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.ab = zext i32 %i.s to i64
  %.not.i13.i = icmp samesign ult i64 %indvars.iv.i, %i.ab
  br i1 %.not.i13.i, label %bb.f, label %bb.e, !prof !207

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(72) @_hb_NullPool, i64 72, i1 false)
  %.pre.i10 = load i32, ptr %i.m, align 4, !tbaa !370
  br label %_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !371
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.ac, i64 %indvars.iv.i
  br label %_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit.i

_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit.i: ; preds = %bb.f, %bb.e
  %i.ae = phi i32 [ %.pre.i10, %bb.e ], [ %i.s, %bb.f ]
  %.0.i14.i = phi ptr [ @_hb_CrapPool, %bb.e ], [ %i.ad, %bb.f ]
  %.not.i15.i = icmp ult i32 %.01222.i, %i.ae
  br i1 %.not.i15.i, label %bb.h, label %bb.g, !prof !207

bb.g:                                             ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(72) @_hb_NullPool, i64 72, i1 false)
  br label %_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit17.i

bb.h:                                             ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit.i
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !371
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %i.af, i64 %i.z
  br label %_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit17.i

_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit17.i: ; preds = %bb.h, %bb.g
  %.0.i16.i = phi ptr [ @_hb_CrapPool, %bb.g ], [ %i.ag, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0.i16.i, ptr noundef nonnull align 8 dereferenceable(72) %.0.i14.i, i64 72, i1 false), !tbaa.struct !567
  %.pre26.i = load i32, ptr %i.c, align 4, !tbaa !360
  %.pre27.i = load ptr, ptr %i.a, align 8
  %.pre29.i = zext i32 %.pre26.i to i64
  br label %bb.i

bb.i:                                             ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit17.i, %bb.c
  %.pre-phi.i = phi i64 [ %.pre29.i, %_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit17.i ], [ %i.u, %bb.c ]
  %i.ah = phi ptr [ %.pre27.i, %_ZN11hb_vector_tI13hb_bit_page_tLb0EEixEi.exit17.i ], [ %i.v, %bb.c ]
  %.not.i18.i = icmp samesign ult i64 %indvars.iv.i, %.pre-phi.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i
  %.0.i19.i = select i1 %.not.i18.i, ptr %i.ai, ptr @_hb_NullPool, !prof !207
  %i.aj = load i32, ptr %.0.i19.i, align 4, !tbaa !206 ; 2 uses
  %i.ak = load i32, ptr %i.p, align 4, !tbaa !367
  %.not.i20.i = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i20.i, label %bb.k, label %bb.j, !prof !207

bb.j:                                             ; preds = %bb.i
  store i64 %i.q, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit.i

bb.k:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.r, align 8, !tbaa !368
  %i.am = zext i32 %i.aj to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit.i

_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit.i: ; preds = %bb.k, %bb.j
  %.0.i21.i = phi ptr [ @_hb_CrapPool, %bb.j ], [ %i.an, %bb.k ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i21.i, i64 4
  store i32 %.01222.i, ptr %i.ao, align 4, !tbaa !404
  %i.ap = add i32 %.01222.i, 1
  %.pre28.i = load i32, ptr %i.m, align 4, !tbaa !252
  br label %bb.l

bb.l:                                             ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit.i, %bb.b
  %i.aq = phi i32 [ %i.s, %bb.b ], [ %.pre28.i, %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit.i ] ; 2 uses
  %.1.i = phi i32 [ %.01222.i, %bb.b ], [ %i.ap, %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp samesign ult i64 %indvars.iv.next.i, %i.ar
  br i1 %i.as, label %bb.b, label %_ZN12hb_bit_set_t13compact_pagesERK11hb_vector_tIjLb0EE.exit, !llvm.loop !1601

_ZN12hb_bit_set_t13compact_pagesERK11hb_vector_tIjLb0EE.exit: ; preds = %bb.l, %._crit_edge
  ret void

bb.m:                                             ; preds = %.lr.ph, %_ZN11hb_vector_tIjLb0EEixEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN11hb_vector_tIjLb0EEixEi.exit ] ; 4 uses
  %i.at = load i32, ptr %i.g, align 4, !tbaa !367
  %i.au = zext i32 %i.at to i64
  %.not.i11 = icmp samesign ult i64 %indvars.iv, %i.au
  br i1 %.not.i11, label %bb.o, label %bb.n, !prof !207

bb.n:                                             ; preds = %bb.m
  store i64 %i.h, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit

bb.o:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !404
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit

_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit: ; preds = %bb.n, %bb.o
  %i.aw = phi i32 [ %i.l, %bb.n ], [ %.pre, %bb.o ] ; 2 uses
  %i.ax = load i32, ptr %i.c, align 4, !tbaa !360
  %.not.i12 = icmp ult i32 %i.aw, %i.ax
  br i1 %.not.i12, label %bb.q, label %bb.p, !prof !207

bb.p:                                             ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit
  store i32 %i.j, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

bb.q:                                             ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEixEi.exit
  %i.ay = zext i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ay
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %bb.p, %bb.q
  %.0.i13 = phi ptr [ @_hb_CrapPool, %bb.p ], [ %i.az, %bb.q ]
  %i.ba = trunc nuw i64 %indvars.iv to i32
  store i32 %i.ba, ptr %.0.i13, align 4, !tbaa !206
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !1602
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12hb_bit_set_t8process_EPF16hb_vector_size_tIyLj64EERKS1_S3_EbbRKS_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %struct.hb_vector_t.22, align 8     ; 11 uses
  %6 = alloca %struct.hb_vector_size_t, align 8   ; 4 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !306, !range !201, !noundef !210
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.af, !prof !207

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.c, align 4, !tbaa !251
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !252  ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !252  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br i1 %2, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp slt i32 %i.e, 0
  br i1 %i.h, label %_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit, label %bb.d, !prof !103

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %.not19.i.not = icmp eq i32 %i.e, 0
  br i1 %.not19.i.not, label %.thread.thread, label %.thread.i

.thread.thread:                                   ; preds = %bb.d
  store i32 %i.e, ptr %i.i, align 4, !tbaa !360
  %i.j = icmp ne i32 %i.g, 0
  br label %._crit_edge.thread

.thread.i:                                        ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %i.e, 1073741823
  br i1 %i.k, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread129, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, !prof !103

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.l = shl nuw i32 %i.e, 2
  %i.m = zext i32 %i.l to i64
  %i.n = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.m) #18 ; 3 uses
  %.not22.i = icmp eq ptr %i.n, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread129, label %.thread, !prof !190

_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread129:  ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %.thread.i
  store i32 -1, ptr %5, align 8, !tbaa !359
  br label %_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit

.thread:                                          ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !361
  store i32 %i.e, ptr %5, align 8, !tbaa !359
  %i.p = shl nuw i32 %i.e, 2
  %i.q = zext i32 %i.p to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.q, i1 false)
  store i32 %i.e, ptr %i.i, align 4, !tbaa !360
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph.thread

_ZN12hb_bit_set_t26allocate_compact_workspaceER11hb_vector_tIjLb0EE.exit: ; preds = %bb.c, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread129
  store i8 0, ptr %0, align 8, !tbaa !306
  br label %bb.ad

bb.e:                                             ; preds = %bb.b
  %i.r = icmp ne i32 %i.e, 0
  %i.s = icmp ne i32 %i.g, 0                      ; 3 uses
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %.lr.ph, label %._crit_edge

._crit_edge.thread:                               ; preds = %.thread.thread, %.thread
  %i.u = phi i1 [ %i.j, %.thread.thread ], [ false, %.thread ]
  %i.v = select i1 %3, i32 %i.g, i32 0
  br label %bb.s

.lr.ph.thread:                                    ; preds = %.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = zext i1 %3 to i32
  br label %.lr.ph.split

.lr.ph:                                           ; preds = %bb.e
  %i.z = zext i1 %3 to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !398
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !398
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %.lr.ph
  %.0104140.us = phi i32 [ 0, %.lr.ph ], [ %.1105.us, %bb.k ] ; 4 uses
  %.0107139.us = phi i32 [ 0, %.lr.ph ], [ %.1108.us, %bb.k ] ; 4 uses
  %.0112138.us = phi i32 [ 0, %.lr.ph ], [ %.3115.us, %bb.k ] ; 3 uses
  %i.ae = zext i32 %.0107139.us to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !401 ; 2 uses
  %i.ah = zext i32 %.0104140.us to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !401 ; 2 uses
  %i.ak = icmp eq i32 %i.ag, %i.aj
  br i1 %i.ak, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = icmp ult i32 %i.ag, %i.aj
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %spec.select126.us = add i32 %.0112138.us, %i.z
  %i.am = add nuw i32 %.0104140.us, 1
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %spec.select.us = add i32 %.0112138.us, 1
  %i.an = add nuw i32 %.0107139.us, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.ao = add i32 %.0112138.us, 1
  %i.ap = add nuw i32 %.0107139.us, 1
  %i.aq = add nuw i32 %.0104140.us, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.3115.us = phi i32 [ %i.ao, %bb.j ], [ %spec.select.us, %bb.i ], [ %spec.select126.us, %bb.h ] ; 2 uses
  %.1108.us = phi i32 [ %i.ap, %bb.j ], [ %i.an, %bb.i ], [ %.0107139.us, %bb.h ] ; 3 uses
  %.1105.us = phi i32 [ %i.aq, %bb.j ], [ %.0104140.us, %bb.i ], [ %i.am, %bb.h ] ; 3 uses
  %i.ar = icmp ult i32 %.1108.us, %i.e
  %i.as = icmp ult i32 %.1105.us, %i.g
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %i.at, label %bb.f, label %._crit_edge, !llvm.loop !1603

.lr.ph.split:                                     ; preds = %.lr.ph.thread, %bb.r
  %.0141 = phi i32 [ %.2, %bb.r ], [ 0, %.lr.ph.thread ] ; 5 uses
  %.0104140 = phi i32 [ %.1105, %bb.r ], [ 0, %.lr.ph.thread ] ; 4 uses
  %.0107139 = phi i32 [ %.1108, %bb.r ], [ 0, %.lr.ph.thread ] ; 5 uses
  %.0112138 = phi i32 [ %.3115, %bb.r ], [ 0, %.lr.ph.thread ] ; 3 uses
  %i.au = load ptr, ptr %i.w, align 8, !tbaa !398 ; 2 uses
  %i.av = zext i32 %.0107139 to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !401 ; 2 uses
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !398
  %i.az = zext i32 %.0104140 to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !401 ; 2 uses
  %i.bc = icmp eq i32 %i.ax, %i.bb
  br i1 %i.bc, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.lr.ph.split
  %i.bd = icmp ult i32 %.0141, %.0107139
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.be = zext i32 %.0141 to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.be
  %i.bg = load i64, ptr %i.aw, align 4
  store i64 %i.bg, ptr %i.bf, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bh = add i32 %.0141, 1
  %i.bi = add i32 %.0112138, 1
  %i.bj = add nuw i32 %.0107139, 1
  %i.bk = add nuw i32 %.0104140, 1
  br label %bb.r

bb.o:                                             ; preds = %.lr.ph.split
  %i.bl = icmp ult i32 %i.ax, %i.bb
  br i1 %i.bl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bm = add nuw i32 %.0107139, 1
end_hunk_0
begin_hunk_1_@_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t22compile_all_point_setsEv:bb.a
  %i.ft = icmp ult i32 %.val.val.i56, 4
  br i1 %i.ft, label %.lr.ph.i.i.i.i.i60.epil.preheader, label %.lr.ph.i.i.i.i.i60.preheader.new

.lr.ph.i.i.i.i.i60.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i60.preheader
  %unroll_iter197 = and i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i58, 4294967292
  br label %.lr.ph.i.i.i.i.i60

.lr.ph.i.i.i.i.i60:                               ; preds = %.lr.ph.i.i.i.i.i60, %.lr.ph.i.i.i.i.i60.preheader.new
  %.013.i.i.i.i.i61 = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i60.preheader.new ], [ %i.gm, %.lr.ph.i.i.i.i.i60 ]
  %.01012.i.i.i.i.i62 = phi ptr [ %.val.val4.i57, %.lr.ph.i.i.i.i.i60.preheader.new ], [ %i.gn, %.lr.ph.i.i.i.i.i60 ] ; 5 uses
  %niter198 = phi i64 [ 0, %.lr.ph.i.i.i.i.i60.preheader.new ], [ %niter198.next.3, %.lr.ph.i.i.i.i.i60 ]
  %.010.val.i.i.i.i.i63 = load i8, ptr %.01012.i.i.i.i.i62, align 1, !tbaa !212, !range !201, !noundef !210
  %i.fu = zext nneg i8 %.010.val.i.i.i.i.i63 to i32
  %i.fv = mul nuw nsw i32 %i.fu, -1640531535
  %i.fw = xor i32 %i.fv, %.013.i.i.i.i.i61
  %i.fx = mul i32 %i.fw, 16777619
  %i.fy = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i62, i64 1
  %.010.val.i.i.i.i.i63.1 = load i8, ptr %i.fy, align 1, !tbaa !212, !range !201, !noundef !210
  %i.fz = zext nneg i8 %.010.val.i.i.i.i.i63.1 to i32
  %i.ga = mul nuw nsw i32 %i.fz, -1640531535
  %i.gb = xor i32 %i.ga, %i.fx
  %i.gc = mul i32 %i.gb, 16777619
  %i.gd = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i62, i64 2
  %.010.val.i.i.i.i.i63.2 = load i8, ptr %i.gd, align 1, !tbaa !212, !range !201, !noundef !210
  %i.ge = zext nneg i8 %.010.val.i.i.i.i.i63.2 to i32
  %i.gf = mul nuw nsw i32 %i.ge, -1640531535
  %i.gg = xor i32 %i.gf, %i.gc
  %i.gh = mul i32 %i.gg, 16777619
  %i.gi = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i62, i64 3
  %.010.val.i.i.i.i.i63.3 = load i8, ptr %i.gi, align 1, !tbaa !212, !range !201, !noundef !210
  %i.gj = zext nneg i8 %.010.val.i.i.i.i.i63.3 to i32
  %i.gk = mul nuw nsw i32 %i.gj, -1640531535
  %i.gl = xor i32 %i.gk, %i.gh
  %i.gm = mul i32 %i.gl, 16777619                 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i62, i64 4 ; 2 uses
  %niter198.next.3 = add i64 %niter198, 4         ; 2 uses
  %niter198.ncmp.3 = icmp eq i64 %niter198.next.3, %unroll_iter197
  br i1 %niter198.ncmp.3, label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i60

_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i60
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod194.not, label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit, label %.lr.ph.i.i.i.i.i60.epil.preheader

.lr.ph.i.i.i.i.i60.epil.preheader:                ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i60.preheader
  %.013.i.i.i.i.i61.epil.init = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i60.preheader ], [ %i.gm, %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit.loopexit.unr-lcssa ]
  %.01012.i.i.i.i.i62.epil.init = phi ptr [ %.val.val4.i57, %.lr.ph.i.i.i.i.i60.preheader ], [ %i.gn, %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit.loopexit.unr-lcssa ]
  %lcmp.mod196 = icmp ne i64 %xtraiter192, 0
  call void @llvm.assume(i1 %lcmp.mod196)
  br label %.lr.ph.i.i.i.i.i60.epil

.lr.ph.i.i.i.i.i60.epil:                          ; preds = %.lr.ph.i.i.i.i.i60.epil, %.lr.ph.i.i.i.i.i60.epil.preheader
  %.013.i.i.i.i.i61.epil = phi i32 [ %i.gr, %.lr.ph.i.i.i.i.i60.epil ], [ %.013.i.i.i.i.i61.epil.init, %.lr.ph.i.i.i.i.i60.epil.preheader ]
  %.01012.i.i.i.i.i62.epil = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i60.epil ], [ %.01012.i.i.i.i.i62.epil.init, %.lr.ph.i.i.i.i.i60.epil.preheader ] ; 2 uses
  %epil.iter193 = phi i64 [ %epil.iter193.next, %.lr.ph.i.i.i.i.i60.epil ], [ 0, %.lr.ph.i.i.i.i.i60.epil.preheader ]
  %.010.val.i.i.i.i.i63.epil = load i8, ptr %.01012.i.i.i.i.i62.epil, align 1, !tbaa !212, !range !201, !noundef !210
  %i.go = zext nneg i8 %.010.val.i.i.i.i.i63.epil to i32
  %i.gp = mul nuw nsw i32 %i.go, -1640531535
  %i.gq = xor i32 %i.gp, %.013.i.i.i.i.i61.epil
  %i.gr = mul i32 %i.gq, 16777619                 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i62.epil, i64 1
  %epil.iter193.next = add i64 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i64 %epil.iter193.next, %xtraiter192
  br i1 %epil.iter193.cmp.not, label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit, label %.lr.ph.i.i.i.i.i60.epil, !llvm.loop !3239

_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit: ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i60.epil, %bb.m
  %.0.lcssa.i.i.i.i.i66 = phi i32 [ -2078137563, %bb.m ], [ %i.gm, %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit.loopexit.unr-lcssa ], [ %i.gr, %.lr.ph.i.i.i.i.i60.epil ]
  %i.gt = call noundef zeroext i1 @_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE13set_with_hashIRKS3_S4_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %.0.lcssa.i.i.i.i.i66, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  br i1 %i.gt, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit
  store i32 1, ptr %i.c, align 4, !tbaa !206
  %.val.i67 = load ptr, ptr %i.a, align 8, !tbaa !832 ; 2 uses
  %i.gu = getelementptr i8, ptr %.val.i67, i64 4
  %.val.val.i68 = load i32, ptr %i.gu, align 4, !tbaa !473 ; 3 uses
  %i.gv = getelementptr i8, ptr %.val.i67, i64 8
  %.val.val4.i69 = load ptr, ptr %i.gv, align 8, !tbaa !472 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i70 = zext i32 %.val.val.i68 to i64 ; 2 uses
  %.not11.i.i.i.i.i71 = icmp eq i32 %.val.val.i68, 0
  br i1 %.not11.i.i.i.i.i71, label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit, label %.lr.ph.i.i.i.i.i72.preheader

.lr.ph.i.i.i.i.i72.preheader:                     ; preds = %bb.n
  %xtraiter199 = and i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i70, 3 ; 3 uses
  %i.gw = icmp ult i32 %.val.val.i68, 4
  br i1 %i.gw, label %.lr.ph.i.i.i.i.i72.epil.preheader, label %.lr.ph.i.i.i.i.i72.preheader.new

.lr.ph.i.i.i.i.i72.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i72.preheader
  %unroll_iter204 = and i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i70, 4294967292
  br label %.lr.ph.i.i.i.i.i72

.lr.ph.i.i.i.i.i72:                               ; preds = %.lr.ph.i.i.i.i.i72, %.lr.ph.i.i.i.i.i72.preheader.new
  %.013.i.i.i.i.i73 = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i72.preheader.new ], [ %i.hp, %.lr.ph.i.i.i.i.i72 ]
  %.01012.i.i.i.i.i74 = phi ptr [ %.val.val4.i69, %.lr.ph.i.i.i.i.i72.preheader.new ], [ %i.hq, %.lr.ph.i.i.i.i.i72 ] ; 5 uses
  %niter205 = phi i64 [ 0, %.lr.ph.i.i.i.i.i72.preheader.new ], [ %niter205.next.3, %.lr.ph.i.i.i.i.i72 ]
  %.010.val.i.i.i.i.i75 = load i8, ptr %.01012.i.i.i.i.i74, align 1, !tbaa !212, !range !201, !noundef !210
  %i.gx = zext nneg i8 %.010.val.i.i.i.i.i75 to i32
  %i.gy = mul nuw nsw i32 %i.gx, -1640531535
  %i.gz = xor i32 %i.gy, %.013.i.i.i.i.i73
  %i.ha = mul i32 %i.gz, 16777619
  %i.hb = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i74, i64 1
  %.010.val.i.i.i.i.i75.1 = load i8, ptr %i.hb, align 1, !tbaa !212, !range !201, !noundef !210
  %i.hc = zext nneg i8 %.010.val.i.i.i.i.i75.1 to i32
  %i.hd = mul nuw nsw i32 %i.hc, -1640531535
  %i.he = xor i32 %i.hd, %i.ha
  %i.hf = mul i32 %i.he, 16777619
  %i.hg = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i74, i64 2
  %.010.val.i.i.i.i.i75.2 = load i8, ptr %i.hg, align 1, !tbaa !212, !range !201, !noundef !210
  %i.hh = zext nneg i8 %.010.val.i.i.i.i.i75.2 to i32
  %i.hi = mul nuw nsw i32 %i.hh, -1640531535
  %i.hj = xor i32 %i.hi, %i.hf
  %i.hk = mul i32 %i.hj, 16777619
  %i.hl = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i74, i64 3
  %.010.val.i.i.i.i.i75.3 = load i8, ptr %i.hl, align 1, !tbaa !212, !range !201, !noundef !210
  %i.hm = zext nneg i8 %.010.val.i.i.i.i.i75.3 to i32
  %i.hn = mul nuw nsw i32 %i.hm, -1640531535
  %i.ho = xor i32 %i.hn, %i.hk
  %i.hp = mul i32 %i.ho, 16777619                 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i74, i64 4 ; 2 uses
  %niter205.next.3 = add i64 %niter205, 4         ; 2 uses
  %niter205.ncmp.3 = icmp eq i64 %niter205.next.3, %unroll_iter204
  br i1 %niter205.ncmp.3, label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i72

_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i72
  %lcmp.mod201.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod201.not, label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit, label %.lr.ph.i.i.i.i.i72.epil.preheader

.lr.ph.i.i.i.i.i72.epil.preheader:                ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i72.preheader
  %.013.i.i.i.i.i73.epil.init = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i72.preheader ], [ %i.hp, %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit.loopexit.unr-lcssa ]
  %.01012.i.i.i.i.i74.epil.init = phi ptr [ %.val.val4.i69, %.lr.ph.i.i.i.i.i72.preheader ], [ %i.hq, %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit.loopexit.unr-lcssa ]
  %lcmp.mod203 = icmp ne i64 %xtraiter199, 0
  call void @llvm.assume(i1 %lcmp.mod203)
  br label %.lr.ph.i.i.i.i.i72.epil

.lr.ph.i.i.i.i.i72.epil:                          ; preds = %.lr.ph.i.i.i.i.i72.epil, %.lr.ph.i.i.i.i.i72.epil.preheader
  %.013.i.i.i.i.i73.epil = phi i32 [ %i.hu, %.lr.ph.i.i.i.i.i72.epil ], [ %.013.i.i.i.i.i73.epil.init, %.lr.ph.i.i.i.i.i72.epil.preheader ]
  %.01012.i.i.i.i.i74.epil = phi ptr [ %i.hv, %.lr.ph.i.i.i.i.i72.epil ], [ %.01012.i.i.i.i.i74.epil.init, %.lr.ph.i.i.i.i.i72.epil.preheader ] ; 2 uses
  %epil.iter200 = phi i64 [ %epil.iter200.next, %.lr.ph.i.i.i.i.i72.epil ], [ 0, %.lr.ph.i.i.i.i.i72.epil.preheader ]
  %.010.val.i.i.i.i.i75.epil = load i8, ptr %.01012.i.i.i.i.i74.epil, align 1, !tbaa !212, !range !201, !noundef !210
  %i.hr = zext nneg i8 %.010.val.i.i.i.i.i75.epil to i32
  %i.hs = mul nuw nsw i32 %i.hr, -1640531535
  %i.ht = xor i32 %i.hs, %.013.i.i.i.i.i73.epil
  %i.hu = mul i32 %i.ht, 16777619                 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i74.epil, i64 1
  %epil.iter200.next = add i64 %epil.iter200, 1   ; 2 uses
  %epil.iter200.cmp.not = icmp eq i64 %epil.iter200.next, %xtraiter199
  br i1 %epil.iter200.cmp.not, label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit, label %.lr.ph.i.i.i.i.i72.epil, !llvm.loop !3240

_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit: ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i72.epil, %bb.n
  %.0.lcssa.i.i.i.i.i78 = phi i32 [ -2078137563, %bb.n ], [ %i.hp, %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit.loopexit.unr-lcssa ], [ %i.hu, %.lr.ph.i.i.i.i.i72.epil ]
  %i.hw = call noundef zeroext i1 @_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE13set_with_hashIRKS3_iEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %.0.lcssa.i.i.i.i.i78, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true)
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit, %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit
  %.1.ph = phi i1 [ %i.hw, %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit ], [ false, %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit.thread
  %.1 = phi i1 [ false, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit.thread ], [ %.1.ph, %.sink.split ]
  %i.hx = load i32, ptr %1, align 8, !tbaa !347
  %i.hy = add i32 %i.hx, -1
  %spec.select.i.i.i = icmp ult i32 %i.hy, -2
  br i1 %spec.select.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.r, align 4, !tbaa !348
  %i.hz = load ptr, ptr %i.s, align 8, !tbaa !349
  call void @hb_free(ptr noundef %i.hz) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %.1, label %bb.r, label %.loopexit88

bb.r:                                             ; preds = %bb.q, %.thread84
  %i.ia = getelementptr inbounds nuw i8, ptr %.011108, i64 160 ; 2 uses
  %.not = icmp eq ptr %i.ia, %i.i
  br i1 %.not, label %.loopexit88, label %bb.b

.loopexit88:                                      ; preds = %bb.r, %bb.q, %bb.a, %.thread82
  %.not105 = phi i1 [ false, %.thread82 ], [ true, %bb.a ], [ true, %bb.r ], [ false, %bb.q ]
  ret i1 %.not105
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t18find_shared_pointsEv(ptr noundef nonnull align 8 dereferenceable(126) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.val = load i32, ptr %i.a, align 4, !tbaa !495
  %i.b = add i32 %.val, 1                         ; 2 uses
  %.not15.i.i.i.i.i = icmp ult i32 %i.b, 2
  br i1 %.not15.i.i.i.i.i, label %.loopexit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EdeEv.exit.i.us.i.i.i.i.preheader

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EdeEv.exit.i.us.i.i.i.i.preheader: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val21 = load ptr, ptr %i.c, align 8, !tbaa !412
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EdeEv.exit.i.us.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EdeEv.exit.i.us.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EdeEv.exit.i.us.i.i.i.i.preheader, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.us.i.i.i.i
  %.sroa.5.sroa.0.0.i = phi i32 [ %i.g, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.us.i.i.i.i ], [ %i.b, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EdeEv.exit.i.us.i.i.i.i.preheader ] ; 4 uses
  %.sroa.02.0.i = phi ptr [ %i.h, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.us.i.i.i.i ], [ %.val21, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EdeEv.exit.i.us.i.i.i.i.preheader ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8
  %i.e = load i32, ptr %i.d, align 8, !noalias !3252
  %i.f = trunc i32 %i.e to i1
  br i1 %i.f, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_E3endEv.exit", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.us.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.us.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EdeEv.exit.i.us.i.i.i.i
  %i.g = add i32 %.sroa.5.sroa.0.0.i, -1          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 32
  %i.i = icmp eq i32 %i.g, 0
  br i1 %i.i, label %.loopexit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EdeEv.exit.i.us.i.i.i.i, !llvm.loop !3249

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_E3endEv.exit": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EdeEv.exit.i.us.i.i.i.i
  %i.j = zext i32 %.sroa.5.sroa.0.0.i to i64
  %i.k = shl nuw nsw i64 %i.j, 5
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %1 = load ptr, ptr %i.m, align 8
  %.fr = freeze ptr %1                            ; 3 uses
  %.not.i = icmp eq ptr %.fr, null
  %2 = load i32, ptr %i.n, align 8
  %3 = load i32, ptr %i.o, align 4
  br i1 %.not.i, label %bb.b, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_E3endEv.exit.split", !prof !243

bb.b:                                             ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_E3endEv.exit", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit.us"
  %.sroa.031.062.a = phi ptr [ %.sroa.031.2.us, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit.us" ], [ %.sroa.02.0.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_E3endEv.exit" ] ; 4 uses
  %.sroa.732.061.a = phi i32 [ %.sroa.732.2.us, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit.us" ], [ %.sroa.5.sroa.0.0.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_E3endEv.exit" ] ; 5 uses
  %.not.i.i.i.i.i.i.a = icmp eq i32 %.sroa.732.061.a, 0
  br i1 %.not.i.i.i.i.i.i.a, label %bb.c, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EdeEv.exit.us", !prof !103

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(32) @_hb_NullPool, i64 32, i1 false)
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EdeEv.exit.us"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EdeEv.exit.us": ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i.i.us = phi ptr [ @_hb_CrapPool, %bb.c ], [ %.sroa.031.062.a, %bb.b ]
  %4 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.us, i64 20
  %5 = load i32, ptr %4, align 4, !tbaa !348
  %.not.us = icmp eq i32 %5, 0
  br i1 %.not.us, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EdeEv.exit.a", label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EdeEv.exit.a": ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EdeEv.exit.us"
  %6 = zext i32 %.sroa.732.061.a to i64
  %7 = shl nuw nsw i64 %6, 5
  %scevgep123 = getelementptr i8, ptr %.sroa.031.062.a, i64 %7
  %i.q = getelementptr i8, ptr %.sroa.031.062.a, i64 32
  %8 = add i32 %.sroa.732.061.a, -1
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 5
  %scevgep125 = getelementptr i8, ptr %i.q, i64 %10
  %.not.a = icmp eq i32 %.sroa.732.061.a, 0
  br i1 %.not.a, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit.us", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.i.i.i.us, !prof !500

11:                                               ; preds = %"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i.us"
  br label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.i.i.i.us, !llvm.loop !3250

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.i.i.i.us: ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EdeEv.exit.a", %11
  %.sroa.031.1.us168 = phi ptr [ %13, %11 ], [ %.sroa.031.062.a, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EdeEv.exit.a" ] ; 2 uses
  %.sroa.732.1.us167 = phi i32 [ %12, %11 ], [ %.sroa.732.061.a, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EdeEv.exit.a" ]
  %12 = add i32 %.sroa.732.1.us167, -1            ; 3 uses
  %.not.i.i.i.i.us = icmp eq i32 %12, 0
  br i1 %.not.i.i.i.i.us, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit.us", label %"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i.us"

"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i.us": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.i.i.i.us
  %13 = getelementptr inbounds nuw i8, ptr %.sroa.031.1.us168, i64 32 ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %.sroa.031.1.us168, i64 40
  %15 = load i32, ptr %14, align 8
  %16 = trunc i32 %15 to i1
  br i1 %16, label %"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i.us._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit.us_crit_edge", label %11, !llvm.loop !3250

"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i.us._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit.us_crit_edge": ; preds = %"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i.us"
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit.us", !llvm.loop !3250

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit.us": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.i.i.i.us, %"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i.us._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit.us_crit_edge", %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EdeEv.exit.a"
  %.sroa.732.2.us = phi i32 [ 0, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EdeEv.exit.a" ], [ %12, %"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i.us._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit.us_crit_edge" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.i.i.i.us ] ; 2 uses
  %.sroa.031.2.us = phi ptr [ %scevgep123, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EdeEv.exit.a" ], [ %13, %"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i.us._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit.us_crit_edge" ], [ %scevgep125, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.i.i.i.us ] ; 2 uses
  %.not.i.i.i.us = icmp ne ptr %.sroa.031.2.us, %i.l
  %17 = icmp ne i32 %.sroa.732.2.us, 0
  %18 = or i1 %17, %.not.i.i.i.us
  br i1 %18, label %bb.b, label %.loopexit

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_E3endEv.exit.split": ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_E3endEv.exit", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit"
  %.01563 = phi i32 [ %.3.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit" ], [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_E3endEv.exit" ] ; 3 uses
  %.sroa.031.062 = phi ptr [ %.sroa.031.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit" ], [ %.sroa.02.0.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_E3endEv.exit" ] ; 4 uses
  %.sroa.732.061 = phi i32 [ %.sroa.732.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit" ], [ %.sroa.5.sroa.0.0.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_E3endEv.exit" ] ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.732.061, 0
  br i1 %.not.i.i.i.i.i.i, label %19, label %bb.d, !prof !103

19:                                               ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_E3endEv.exit.split"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(32) @_hb_NullPool, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %19, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_E3endEv.exit.split"
  %.0.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %19 ], [ %.sroa.031.062, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_E3endEv.exit.split" ] ; 3 uses
  %20 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 20
  %22 = load i32, ptr %21, align 4, !tbaa !348    ; 2 uses
  %.not.i.a = icmp eq i32 %22, 0
  br i1 %.not.i.a, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %23 = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !832 ; 2 uses
  %i.r = getelementptr i8, ptr %23, i64 4
  %.val.val.i = load i32, ptr %i.r, align 4, !tbaa !473 ; 4 uses
  %i.s = getelementptr i8, ptr %23, i64 8
  %.val.val5.i = load ptr, ptr %i.s, align 8, !tbaa !472 ; 3 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %.val.val.i to i64 ; 3 uses
  %.not11.i.i.i.i.i = icmp eq i32 %.val.val.i, 0  ; 2 uses
  br i1 %.not11.i.i.i.i.i, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i", label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.e
  %xtraiter = and i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, 3 ; 3 uses
  %i.t = icmp ult i32 %.val.val.i, 4
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, 4294967292
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %.013.i.i.i.i.i = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %.01012.i.i.i.i.i = phi ptr [ %.val.val5.i, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.an, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i ]
  %.010.val.i.i.i.i.i = load i8, ptr %.01012.i.i.i.i.i, align 1, !tbaa !212, !range !201, !noundef !210
  %i.u = zext nneg i8 %.010.val.i.i.i.i.i to i32
  %i.v = mul nuw nsw i32 %i.u, -1640531535
  %i.w = xor i32 %i.v, %.013.i.i.i.i.i
  %i.x = mul i32 %i.w, 16777619
  %i.y = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 1
  %.010.val.i.i.i.i.i.1 = load i8, ptr %i.y, align 1, !tbaa !212, !range !201, !noundef !210
  %i.z = zext nneg i8 %.010.val.i.i.i.i.i.1 to i32
  %i.aa = mul nuw nsw i32 %i.z, -1640531535
  %i.ab = xor i32 %i.aa, %i.x
  %i.ac = mul i32 %i.ab, 16777619
  %i.ad = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 2
  %.010.val.i.i.i.i.i.2 = load i8, ptr %i.ad, align 1, !tbaa !212, !range !201, !noundef !210
  %i.ae = zext nneg i8 %.010.val.i.i.i.i.i.2 to i32
  %i.af = mul nuw nsw i32 %i.ae, -1640531535
  %i.ag = xor i32 %i.af, %i.ac
  %i.ah = mul i32 %i.ag, 16777619
  %i.ai = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 3
  %.010.val.i.i.i.i.i.3 = load i8, ptr %i.ai, align 1, !tbaa !212, !range !201, !noundef !210
  %i.aj = zext nneg i8 %.010.val.i.i.i.i.i.3 to i32
  %i.ak = mul nuw nsw i32 %i.aj, -1640531535
  %i.al = xor i32 %i.ak, %i.ah
  %i.am = mul i32 %i.al, 16777619                 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa", label %.lr.ph.i.i.i.i.i

"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa": ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i", label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa", %.lr.ph.i.i.i.i.i.preheader
  %.013.i.i.i.i.i.epil.init = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i.preheader ], [ %i.am, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa" ]
  %.01012.i.i.i.i.i.epil.init = phi ptr [ %.val.val5.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.an, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa" ]
  %lcmp.mod172 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod172)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %.013.i.i.i.i.i.epil = phi i32 [ %i.ar, %.lr.ph.i.i.i.i.i.epil ], [ %.013.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.01012.i.i.i.i.i.epil = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.epil ], [ %.01012.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.010.val.i.i.i.i.i.epil = load i8, ptr %.01012.i.i.i.i.i.epil, align 1, !tbaa !212, !range !201, !noundef !210
  %i.ao = zext nneg i8 %.010.val.i.i.i.i.i.epil to i32
  %i.ap = mul nuw nsw i32 %i.ao, -1640531535
  %i.aq = xor i32 %i.ap, %.013.i.i.i.i.i.epil
  %i.ar = mul i32 %i.aq, 16777619                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i", label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !3251

"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i": ; preds = %.lr.ph.i.i.i.i.i.epil, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa"
  %.lcssa = phi i32 [ %i.am, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa" ], [ %i.ar, %.lr.ph.i.i.i.i.i.epil ]
  %i.at = and i32 %.lcssa, 1073741823
  br label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i"

"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i": ; preds = %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i", %bb.e
  %.0.lcssa.i.i.i.i.i = phi i32 [ 69346085, %bb.e ], [ %i.at, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i" ] ; 2 uses
  %i.au = urem i32 %.0.lcssa.i.i.i.i.i, %2        ; 2 uses
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.fr, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 8            ; 2 uses
  %i.az = and i32 %i.ay, 2
  %.not22.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not22.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread, label %bb.f, !prof !243

bb.f:                                             ; preds = %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i", %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i
  %i.ba = phi i32 [ %i.bt, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i ], [ %i.ay, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i" ] ; 2 uses
  %i.bb = phi ptr [ %i.br, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i ], [ %i.aw, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i" ] ; 2 uses
  %.024.i.i.i = phi i32 [ %i.bn, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i ], [ 0, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i" ]
  %.01223.i.i.i = phi i32 [ %i.bp, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i ], [ %i.au, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i" ]
  %i.bc = lshr i32 %i.ba, 2
  %i.bd = icmp eq i32 %i.bc, %.0.lcssa.i.i.i.i.i
  br i1 %i.bd, label %bb.g, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !835 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !472
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !473
  %.not.i.i.i.i.i.i28 = icmp eq i32 %.val.val.i, %i.bi
  br i1 %.not.i.i.i.i.i.i28, label %.preheader.i.i.i.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.g
  br i1 %.not11.i.i.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i, label %.lr.ph.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %.sroa.2.8.insert.ext.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !76

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.h
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.h ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.i.i.i.i.i.i
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !212, !range !201, !noundef !210
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.val5.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !212, !range !201, !noundef !210
  %.not10.i.i.i.i.i.i = icmp eq i8 %i.bk, %i.bm
  br i1 %.not10.i.i.i.i.i.i, label %bb.h, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i

_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g, %bb.f
  %i.bn = add i32 %.024.i.i.i, 1                  ; 2 uses
  %i.bo = add i32 %i.bn, %.01223.i.i.i
  %i.bp = and i32 %i.bo, %3                       ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %.fr, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i32, ptr %i.bs, align 8            ; 2 uses
  %i.bu = and i32 %i.bt, 2
  %.not.i.i.i27 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i27, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread, label %bb.f, !prof !243, !llvm.loop !77

_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i: ; preds = %.preheader.i.i.i.i.i.i, %bb.h
  %i.bv = trunc i32 %i.ba to i1
  br i1 %i.bv, label %bb.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread

bb.i:                                             ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !206 ; 2 uses
  %i.by = icmp ult i32 %i.bx, 2
  br i1 %i.by, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread, label %bb.j, !prof !103

bb.j:                                             ; preds = %bb.i
  %i.bz = add i32 %i.bx, -1
  %i.ca = mul i32 %i.bz, %22                      ; 2 uses
  %i.cb = icmp ugt i32 %i.ca, %.01563
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %20, ptr %i.p, align 8, !tbaa !824
  br label %bb.l

_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread: ; preds = %bb.i, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i", %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EdeEv.exit.us"
  store ptr null, ptr %i.p, align 8, !tbaa !824
  br label %.loopexit

bb.l:                                             ; preds = %bb.d, %bb.k, %bb.j
  %.3.ph = phi i32 [ %.01563, %bb.j ], [ %i.ca, %bb.k ], [ %.01563, %bb.d ]
  %i.cc = zext i32 %.sroa.732.061 to i64
  %i.cd = shl nuw nsw i64 %i.cc, 5
  %scevgep = getelementptr i8, ptr %.sroa.031.062, i64 %i.cd
  %scevgep119 = getelementptr i8, ptr %.sroa.031.062, i64 32
  %i.ce = add i32 %.sroa.732.061, -1
  %i.cf = zext i32 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 5
  %scevgep120 = getelementptr i8, ptr %scevgep119, i64 %i.cg
  %.not.i.i.i.i.i.i29149 = icmp eq i32 %.sroa.732.061, 0
  br i1 %.not.i.i.i.i.i.i29149, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.i.i.i, !prof !500

bb.m:                                             ; preds = %"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i"
  br label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.i.i.i, !llvm.loop !3250

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.i.i.i: ; preds = %bb.l, %bb.m
  %.sroa.031.1151 = phi ptr [ %i.ci, %bb.m ], [ %.sroa.031.062, %bb.l ] ; 2 uses
  %.sroa.732.1150 = phi i32 [ %i.ch, %bb.m ], [ %.sroa.732.061, %bb.l ]
  %i.ch = add i32 %.sroa.732.1150, -1             ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i.i.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit", label %"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i"

"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.031.1151, i64 32 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.031.1151, i64 40
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = trunc i32 %i.ck to i1
  br i1 %i.cl, label %"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit_crit_edge", label %bb.m, !llvm.loop !3250

"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit_crit_edge": ; preds = %"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i"
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit", !llvm.loop !3250

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.i.i.i, %"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit_crit_edge", %bb.l
  %.sroa.732.2 = phi i32 [ 0, %bb.l ], [ %i.ch, %"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit_crit_edge" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.i.i.i ] ; 2 uses
  %.sroa.031.2 = phi ptr [ %scevgep, %bb.l ], [ %i.ci, %"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit_crit_edge" ], [ %scevgep120, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp ne ptr %.sroa.031.2, %i.l
  %i.cm = icmp ne i32 %.sroa.732.2, 0
  %i.cn = or i1 %i.cm, %.not.i.i.i
  br i1 %i.cn, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_E3endEv.exit.split", label %.loopexit

.loopexit:                                        ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.us.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit.us", %bb.a, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT13tuple_delta_t24compile_tuple_var_headerERK8hb_map_tjS3_PK12hb_hashmap_tIPK11hb_vector_tINS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EEP15hb_alloc_pool_t(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !348
  %.not50 = icmp eq i32 %i.d, 0
  br i1 %.not50, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !387
  %i.g = mul i32 %i.f, 6
  %i.h = add i32 %i.g, 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = tail call noundef zeroext i1 @_ZN11hb_vector_tIhLb0EE18allocate_from_poolI15hb_alloc_pool_tEEbPT_jj(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef %5, i32 noundef %i.h, i32 noundef 0)
  br i1 %i.j, label %bb.c, label %bb.m, !prof !207

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !349
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !348
  %i.p = zext i32 %i.o to i64
  %gepdiff = add nuw nsw i64 %i.p, 8589934588
  %i.q = lshr i64 %gepdiff, 1                     ; 2 uses
  %.sroa.6.8.insert.ext = and i64 %i.q, 4294967295 ; 2 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %.critedge, label %.critedge32

.critedge:                                        ; preds = %bb.c
  %i.r = tail call noundef zeroext i1 @_ZN2OT13tuple_delta_t14compile_coordsERK8hb_map_tS3_P15hb_alloc_pool_t(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  br label %bb.d

.critedge32:                                      ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.s, ptr %i.b, align 8, !tbaa !823
  %i.t = call noundef zeroext i1 @_ZNK12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE3hasIjEEbRKS8_PPT_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br i1 %i.t, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge, %.critedge32
  %.not.i.i.not.i = icmp eq i64 %.sroa.6.8.insert.ext, 0
  br i1 %.not.i.i.not.i, label %bb.e, label %_ZN9hb_iter_tI10hb_array_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEERS5_EixEj.exit.i, !prof !103

bb.e:                                             ; preds = %bb.d
  %i.u = load i16, ptr @_hb_NullPool, align 16
  store i16 %i.u, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEERS5_EixEj.exit.i

_ZN9hb_iter_tI10hb_array_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEERS5_EixEj.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.e ], [ %i.m, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3259 ; 2 uses
  %.not.i2.i = icmp eq i32 %i.w, 0
  br i1 %.not.i2.i, label %_ZN11hb_vector_tIhLb0EE19shrink_back_to_poolI15hb_alloc_pool_tEEvPT_i.exit, label %_ZNK2OT13tuple_delta_t18encode_peak_coordsE10hb_array_tINS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEERj.exit, !prof !103

_ZNK2OT13tuple_delta_t18encode_peak_coordsE10hb_array_tINS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEERj.exit: ; preds = %_ZN9hb_iter_tI10hb_array_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEERS5_EixEj.exit.i
  %i.x = zext i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load ptr, ptr %i.z, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i, ptr nonnull readonly align 1 %i.aa, i64 %i.y, i1 false), !alias.scope !3260
  %.pr = load i32, ptr %i.v, align 4, !tbaa !3259 ; 4 uses
  %.not29 = icmp eq i32 %.pr, 0
  br i1 %.not29, label %_ZN11hb_vector_tIhLb0EE19shrink_back_to_poolI15hb_alloc_pool_tEEvPT_i.exit, label %bb.g

bb.f:                                             ; preds = %.critedge32
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !392
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !206
  br label %_ZNK10hb_array_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEEE9sub_arrayEjPj.exit

bb.g:                                             ; preds = %_ZNK2OT13tuple_delta_t18encode_peak_coordsE10hb_array_tINS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEERj.exit
  %.sroa.6.8.extract.trunc = trunc i64 %i.q to i32
  %storemerge.i = call i32 @llvm.usub.sat.i32(i32 %.sroa.6.8.extract.trunc, i32 %.pr)
  %i.ad = zext i32 %.pr to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.ad
  %.sroa.3.8.insert.ext.i = zext i32 %storemerge.i to i64
  br label %_ZNK10hb_array_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEEE9sub_arrayEjPj.exit

_ZNK10hb_array_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEEE9sub_arrayEjPj.exit: ; preds = %bb.f, %bb.g
  %.02648 = phi i32 [ %.pr, %bb.g ], [ 0, %bb.f ]
  %.04146 = phi i32 [ 32768, %bb.g ], [ %i.ac, %bb.f ] ; 2 uses
  %.sroa.3.0.i = phi i64 [ %.sroa.3.8.insert.ext.i, %bb.g ], [ %.sroa.6.8.insert.ext, %bb.f ]
  %.sroa.0.0.i = phi ptr [ %i.ae, %bb.g ], [ %i.m, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !493 ; 2 uses
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %_ZNK2OT13tuple_delta_t20encode_interm_coordsE10hb_array_tINS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEERj.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK10hb_array_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEEE9sub_arrayEjPj.exit
  %.not.i.i.not.i33 = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %.not.i.i.not.i33, label %bb.i, label %_ZL9hb_memcpyPvPKvm.exit.i, !prof !103

bb.i:                                             ; preds = %bb.h
  %i.ah = load i16, ptr @_hb_NullPool, align 16
  store i16 %i.ah, ptr @_hb_CrapPool, align 16
  br label %_ZL9hb_memcpyPvPKvm.exit.i

_ZL9hb_memcpyPvPKvm.exit.i:                       ; preds = %bb.i, %bb.h
  %.0.i.i.i34 = phi ptr [ @_hb_CrapPool, %bb.i ], [ %.sroa.0.0.i, %bb.h ]
  %i.ai = zext i32 %i.ag to i64
  %i.aj = shl nuw nsw i64 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.al = load ptr, ptr %i.ak, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i34, ptr nonnull readonly align 1 %i.al, i64 %i.aj, i1 false), !alias.scope !3261
  %i.am = or i32 %.04146, 16384
  %.pre.i = load i32, ptr %i.af, align 4, !tbaa !3262
  br label %_ZNK2OT13tuple_delta_t20encode_interm_coordsE10hb_array_tINS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEERj.exit

_ZNK2OT13tuple_delta_t20encode_interm_coordsE10hb_array_tINS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEERj.exit: ; preds = %_ZNK10hb_array_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEEE9sub_arrayEjPj.exit, %_ZL9hb_memcpyPvPKvm.exit.i
  %.242 = phi i32 [ %.04146, %_ZNK10hb_array_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEEE9sub_arrayEjPj.exit ], [ %i.am, %_ZL9hb_memcpyPvPKvm.exit.i ] ; 2 uses
  %i.an = phi i32 [ 0, %_ZNK10hb_array_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEEE9sub_arrayEjPj.exit ], [ %.pre.i, %_ZL9hb_memcpyPvPKvm.exit.i ]
  %.not30 = icmp eq i32 %2, 0
  %i.ao = or i32 %.242, 8192
  %spec.select = select i1 %.not30, i32 %.242, i32 %i.ao
  %i.ap = load i32, ptr %i.c, align 4, !tbaa !830
  %i.aq = add i32 %i.ap, %2
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !349 ; 2 uses
  %i.as = trunc i32 %i.aq to i16
  %i.at = call i16 @llvm.bswap.i16(i16 %i.as)
  store i16 %i.at, ptr %i.ar, align 1, !tbaa !277
  %i.au = trunc i32 %spec.select to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.aw = call i16 @llvm.bswap.i16(i16 %i.au)
  store i16 %i.aw, ptr %i.av, align 1, !tbaa !277
  %i.ax = add i32 %i.an, %.02648
  %i.ay = shl i32 %i.ax, 1
  %i.az = add i32 %i.ay, 4
  %i.ba = load i32, ptr %i.n, align 4, !tbaa !348 ; 3 uses
  %i.bb = call i32 @llvm.smax.i32(i32 %i.az, i32 0) ; 3 uses
  %.not.i.i = icmp ult i32 %i.bb, %i.ba
  br i1 %.not.i.i, label %bb.j, label %_ZN11hb_vector_tIhLb0EE6shrinkEib.exit.i

bb.j:                                             ; preds = %_ZNK2OT13tuple_delta_t20encode_interm_coordsE10hb_array_tINS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEERj.exit
  store i32 %i.bb, ptr %i.n, align 4, !tbaa !348
  br label %_ZN11hb_vector_tIhLb0EE6shrinkEib.exit.i

_ZN11hb_vector_tIhLb0EE6shrinkEib.exit.i:         ; preds = %bb.j, %_ZNK2OT13tuple_delta_t20encode_interm_coordsE10hb_array_tINS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEERj.exit
  %i.bc = phi i32 [ %i.ba, %_ZNK2OT13tuple_delta_t20encode_interm_coordsE10hb_array_tINS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEERj.exit ], [ %i.bb, %bb.j ] ; 2 uses
  %.not.i35 = icmp eq ptr %5, null
  br i1 %.not.i35, label %_ZN11hb_vector_tIhLb0EE19shrink_back_to_poolI15hb_alloc_pool_tEEvPT_i.exit, label %bb.k

bb.k:                                             ; preds = %_ZN11hb_vector_tIhLb0EE6shrinkEib.exit.i
  %i.bd = load i32, ptr %i.i, align 8, !tbaa !347
  %i.be = add i32 %i.bd, -1
  %spec.select.i.i = icmp ult i32 %i.be, -2
  br i1 %spec.select.i.i, label %_ZN11hb_vector_tIhLb0EE19shrink_back_to_poolI15hb_alloc_pool_tEEvPT_i.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %i.k, align 8, !tbaa !349
  %i.bg = zext nneg i32 %i.bc to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bg
  %i.bi = sub i32 %i.ba, %i.bc                    ; 4 uses
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !523 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bj
  %i.bn = icmp ne ptr %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4            ; 2 uses
  %.not.i4.i = icmp ugt i32 %i.bi, %i.bp
  %or.cond.i.i = select i1 %i.bn, i1 true, i1 %.not.i4.i
  br i1 %or.cond.i.i, label %_ZN11hb_vector_tIhLb0EE19shrink_back_to_poolI15hb_alloc_pool_tEEvPT_i.exit, label %_ZNR9hb_iter_tI10hb_array_tIcERcEmIEj.exit.i.i

_ZNR9hb_iter_tI10hb_array_tIcERcEmIEj.exit.i.i:   ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !525
  %i.bs = add i32 %i.br, %i.bi
  store i32 %i.bs, ptr %i.bq, align 8, !tbaa !525
  %i.bt = sub nuw i32 %i.bp, %i.bi
  store i32 %i.bt, ptr %i.bo, align 4, !tbaa !524
  %i.bu = sub nsw i64 0, %i.bj
  %i.bv = getelementptr inbounds i8, ptr %i.bl, i64 %i.bu
  store ptr %i.bv, ptr %i.bk, align 8, !tbaa !526
  br label %_ZN11hb_vector_tIhLb0EE19shrink_back_to_poolI15hb_alloc_pool_tEEvPT_i.exit

_ZN11hb_vector_tIhLb0EE19shrink_back_to_poolI15hb_alloc_pool_tEEvPT_i.exit: ; preds = %_ZN9hb_iter_tI10hb_array_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEERS5_EixEj.exit.i, %_ZNR9hb_iter_tI10hb_array_tIcERcEmIEj.exit.i.i, %bb.l, %bb.k, %_ZN11hb_vector_tIhLb0EE6shrinkEib.exit.i, %_ZNK2OT13tuple_delta_t18encode_peak_coordsE10hb_array_tINS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEERj.exit
  %.0 = phi i1 [ true, %_ZNR9hb_iter_tI10hb_array_tIcERcEmIEj.exit.i.i ], [ false, %_ZNK2OT13tuple_delta_t18encode_peak_coordsE10hb_array_tINS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEERj.exit ], [ true, %_ZN11hb_vector_tIhLb0EE6shrinkEib.exit.i ], [ true, %bb.k ], [ true, %bb.l ], [ false, %_ZN9hb_iter_tI10hb_array_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEERS5_EixEj.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.m

bb.m:                                             ; preds = %_ZN11hb_vector_tIhLb0EE19shrink_back_to_poolI15hb_alloc_pool_tEEvPT_i.exit, %bb.b, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ %.0, %_ZN11hb_vector_tIhLb0EE19shrink_back_to_poolI15hb_alloc_pool_tEEvPT_i.exit ], [ false, %bb.b ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE13set_with_hashIRKS3_jEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !415, !range !201, !noundef !210
end_hunk_1
begin_hunk_2_@llvm.bswap.v2i32
!3050 = distinct !{!3050, !3048, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3051 = distinct !{!3051, !408}
!3052 = distinct !{!3052, !"_ZL9hb_memcpyPvPKvm"}
!3053 = distinct !{!3053, !3052, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3054 = distinct !{!3054, !3052, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3055 = distinct !{!3055, !"_ZL9hb_memcpyPvPKvm"}
!3056 = distinct !{!3056, !3055, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3057 = distinct !{!3057, !3055, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3058 = distinct !{!3058, !408}
!3059 = !{!3039}
!3060 = !{!3047, !3045, !3043, !3041, !3039}
!3061 = !{!3050, !3049}
!3062 = !{!3054, !3053}
!3063 = !{!3057, !3056}
!3064 = distinct !{!3064, !"_ZN22hb_serialize_context_t8object_t16all_links_writerEv"}
!3065 = distinct !{!3065, !3064, !"_ZN22hb_serialize_context_t8object_t16all_links_writerEv: argument 0"}
!3066 = !{!3065}
!3067 = distinct !{!3067, !162}
!3068 = distinct !{!3068, !162}
!3069 = distinct !{!3069, !162}
!3070 = !{!"_ZTSZN5graph7graph_t13find_subgraphEjR8hb_map_tEUljPKN22hb_serialize_context_t8object_t6link_tEjjE_", !104, i64 0}
!3071 = !{!3070, !104, i64 0}
!3072 = distinct !{!3072, !162}
!3073 = distinct !{!3073, !162}
!3074 = !{!784, !104, i64 0}
!3075 = distinct !{!3075, !"_ZN22hb_serialize_context_t8object_t16all_links_writerEv"}
!3076 = distinct !{!3076, !3075, !"_ZN22hb_serialize_context_t8object_t16all_links_writerEv: argument 0"}
!3077 = !{!3076}
!3078 = distinct !{!3078, !162}
!3079 = distinct !{!3079, !"_ZL9hb_memcpyPvPKvm"}
!3080 = distinct !{!3080, !3079, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3081 = distinct !{!3081, !3079, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3082 = distinct !{!3082, !"_ZL9hb_memcpyPvPKvm"}
!3083 = distinct !{!3083, !3082, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3084 = distinct !{!3084, !3082, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3085 = !{!3081, !3080}
!3086 = !{!3084, !3083}
!3087 = distinct !{!3087, !"_ZL9hb_memcpyPvPKvm"}
!3088 = distinct !{!3088, !3087, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3089 = distinct !{!3089, !3087, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3090 = distinct !{!3090, !162, !453, !454}
!3091 = distinct !{!3091, !162, !453, !454}
!3092 = distinct !{!3092, !162, !453, !454}
!3093 = distinct !{!3093, !162, !453, !454}
!3094 = distinct !{!3094, !162, !453, !454}
!3095 = distinct !{!3095, !162, !453, !454}
!3096 = distinct !{!3096, !162, !454, !453}
!3097 = distinct !{!3097, !162, !454, !453}
!3098 = distinct !{!3098, !"_ZL9hb_memcpyPvPKvm"}
!3099 = distinct !{!3099, !3098, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3100 = distinct !{!3100, !3098, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3101 = distinct !{!3101, !162, !454, !453}
!3102 = distinct !{!3102, !162, !454, !453}
!3103 = !{!"branch_weights", !"expected", i32 2145756228, i32 1727420}
!3104 = !{!3089, !3088}
!3105 = !{!"branch_weights", !"expected", i32 535, i32 2147483113}
!3106 = !{!3100, !3099}
!3107 = distinct !{!3107, !162}
!3108 = distinct !{!3108, !"_ZL9hb_memcpyPvPKvm"}
!3109 = distinct !{!3109, !3108, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3110 = distinct !{!3110, !3108, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3111 = distinct !{!3111, !162}
!3112 = distinct !{!3112, !"_ZL9hb_memcpyPvPKvm"}
!3113 = distinct !{!3113, !3112, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3114 = distinct !{!3114, !3112, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3115 = distinct !{!3115, !"_ZL9hb_memcpyPvPKvm"}
!3116 = distinct !{!3116, !3115, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3117 = distinct !{!3117, !3115, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3118 = distinct !{!3118, !"_ZL9hb_memcpyPvPKvm"}
!3119 = distinct !{!3119, !3118, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3120 = distinct !{!3120, !3118, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3121 = distinct !{!3121, !"_ZL9hb_memcpyPvPKvm"}
!3122 = distinct !{!3122, !3121, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3123 = distinct !{!3123, !3121, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3124 = !{!"branch_weights", i32 6003000, i32 -294967296}
!3125 = !{!3110, !3109}
!3126 = !{!3114, !3113}
!3127 = !{!"_ZTSZNK2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE21cull_tuple_variationsE10hb_array_tIKcEjS4_IKNS_7HBFixedINS1_ILb1EsLj2EEELj14EEEEPK8hb_map_tRK12hb_hashmap_tIj6TripleLb0EER11hb_vector_tIcLb0EEPbE12kept_tuple_t", !98, i64 0, !87, i64 8, !98, i64 16, !87, i64 24}
!3128 = !{!3127, !87, i64 8}
!3129 = !{!3127, !98, i64 0}
!3130 = !{!3117, !3116}
!3131 = !{!3120, !3119}
!3132 = !{!3127, !87, i64 24}
!3133 = !{!3127, !98, i64 16}
!3134 = !{!3123, !3122}
!3135 = distinct !{!3135, !162}
!3136 = distinct !{!3136, !408}
!3137 = distinct !{!3137, !"_ZL9hb_memcpyPvPKvm"}
!3138 = distinct !{!3138, !3137, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3139 = distinct !{!3139, !3137, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3140 = !{!3139, !3138}
!3141 = distinct !{!3141, !162}
!3142 = distinct !{!3142, !162}
!3143 = distinct !{!3143, !162}
!3144 = distinct !{!3144, !162}
!3145 = distinct !{!3145, !162}
!3146 = distinct !{!3146, !408}
!3147 = distinct !{!3147, !162}
!3148 = distinct !{!3148, !162}
!3149 = distinct !{!3149, !"_ZL9hb_memcpyPvPKvm"}
!3150 = distinct !{!3150, !3149, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3151 = distinct !{!3151, !3149, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3152 = distinct !{!3152, !162, !453, !454}
!3153 = distinct !{!3153, !162}
!3154 = distinct !{!3154, !162, !454, !453}
!3155 = distinct !{!3155, !162, !453}
!3156 = distinct !{!3156, !162, !453, !454}
!3157 = distinct !{!3157, !162}
!3158 = distinct !{!3158, !162, !454, !453}
!3159 = distinct !{!3159, !162}
!3160 = distinct !{!3160, !"_ZL9hb_memcpyPvPKvm"}
!3161 = distinct !{!3161, !3160, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3162 = distinct !{!3162, !3160, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3163 = distinct !{!3163, !162, !453, !454}
!3164 = distinct !{!3164, !162, !454, !453}
!3165 = distinct !{!3165, !162, !453}
!3166 = distinct !{!3166, !162, !453, !454}
!3167 = distinct !{!3167, !162, !454, !453}
!3168 = distinct !{!3168, !"_ZL9hb_memcpyPvPKvm"}
!3169 = distinct !{!3169, !3168, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3170 = distinct !{!3170, !3168, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3171 = distinct !{!3171, !"_ZL9hb_memcpyPvPKvm"}
!3172 = distinct !{!3172, !3171, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3173 = distinct !{!3173, !3171, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3174 = distinct !{!3174, !162}
!3175 = distinct !{!3175, !162}
!3176 = !{!"p1 _ZTSN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEEE", !94, i64 0}
!3177 = !{!"p1 _ZTSN2OT20TupleVariationHeaderE", !94, i64 0}
!3178 = !{!"_ZTSN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_tE", !87, i64 0, !3176, i64 8, !87, i64 16, !87, i64 20, !87, i64 24, !87, i64 28, !94, i64 32, !549, i64 40, !3177, i64 56}
!3179 = !{!3178, !87, i64 24}
!3180 = !{!3178, !3177, i64 56}
!3181 = !{!3178, !3176, i64 8}
!3182 = !{!"branch_weights", i32 -2146410, i32 2146410}
!3183 = !{!3178, !87, i64 16}
!3184 = !{!3151, !3150}
!3185 = !{!3162, !3161}
!3186 = !{!3170, !3169}
!3187 = !{!3173, !3172}
!3188 = !{!3178, !87, i64 28}
!3189 = !{!3178, !87, i64 0}
!3190 = !{!3178, !87, i64 20}
!3191 = distinct !{!3191, !162}
!3192 = distinct !{!3192, !162}
!3193 = distinct !{!3193, !"_ZNK4$_10clIR12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS3_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EEEEDTcldtclL_ZL8hb_derefEcl10hb_declvalIT_EEE4iterEEOSD_"}
!3194 = distinct !{!3194, !3193, !"_ZNK4$_10clIR12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS3_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EEEEDTcldtclL_ZL8hb_derefEcl10hb_declvalIT_EEE4iterEEOSD_: argument 0"}
!3195 = distinct !{!3195, !"_ZNK12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE4iterEv"}
!3196 = distinct !{!3196, !3195, !"_ZNK12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE4iterEv: argument 0"}
!3197 = distinct !{!3197, !"_ZNK12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE10iter_itemsEv"}
!3198 = distinct !{!3198, !3197, !"_ZNK12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE10iter_itemsEv: argument 0"}
!3199 = distinct !{!3199, !"_ZorI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS3_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_tEE24hb_filter_iter_factory_tIMSC_KFbvERK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_"}
!3200 = distinct !{!3200, !3199, !"_ZorI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS3_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_tEE24hb_filter_iter_factory_tIMSC_KFbvERK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_: argument 0"}
!3201 = distinct !{!3201, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS2_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_tEKFbvERK4$_19EclI10hb_array_tISB_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISM_SD_SG_LDnEESM_"}
!3202 = distinct !{!3202, !3201, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS2_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_tEKFbvERK4$_19EclI10hb_array_tISB_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISM_SD_SG_LDnEESM_: argument 0"}
!3203 = distinct !{!3203, !162}
!3204 = distinct !{!3204, !"_ZorI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS5_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_tEEMSE_KFbvERK4$_19LPv0EEMSE_KF9hb_pair_tISC_jEvEL24hb_function_sortedness_t0ELSL_0EE24hb_filter_iter_factory_tIZNS5_18glyph_variations_tINS7_ILb1EtLj2EEEE21compile_shared_tuplesERK8hb_map_tSZ_EUlRKSO_E_SK_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS15_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS15_Efp_EEEOS15_OS1A_"}
!3205 = distinct !{!3205, !3204, !"_ZorI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS5_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_tEEMSE_KFbvERK4$_19LPv0EEMSE_KF9hb_pair_tISC_jEvEL24hb_function_sortedness_t0ELSL_0EE24hb_filter_iter_factory_tIZNS5_18glyph_variations_tINS7_ILb1EtLj2EEEE21compile_shared_tuplesERK8hb_map_tSZ_EUlRKSO_E_SK_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS15_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS15_Efp_EEEOS15_OS1A_: argument 0"}
!3206 = distinct !{!3206, !"_ZN24hb_filter_iter_factory_tIZN2OT18glyph_variations_tINS0_7NumTypeILb1EtLj2EEEE21compile_shared_tuplesERK8hb_map_tS7_EUlRK9hb_pair_tIPK11hb_vector_tINS0_7HBFixedINS2_ILb1EsLj2EEELj14EEELb0EEjEE_RK4$_19EclI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tISF_jLb0EE6item_tEEMSU_KFbvESM_LPv0EEMSU_KFSG_vEL24hb_function_sortedness_t0ELSY_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS15_6item_tEEE5valueEvE4typeELSY_0EEESQ_IS15_SJ_SM_LDnEES15_"}
!3207 = distinct !{!3207, !3206, !"_ZN24hb_filter_iter_factory_tIZN2OT18glyph_variations_tINS0_7NumTypeILb1EtLj2EEEE21compile_shared_tuplesERK8hb_map_tS7_EUlRK9hb_pair_tIPK11hb_vector_tINS0_7HBFixedINS2_ILb1EsLj2EEELj14EEELb0EEjEE_RK4$_19EclI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tISF_jLb0EE6item_tEEMSU_KFbvESM_LPv0EEMSU_KFSG_vEL24hb_function_sortedness_t0ELSY_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS15_6item_tEEE5valueEvE4typeELSY_0EEESQ_IS15_SJ_SM_LDnEES15_: argument 0"}
!3208 = distinct !{!3208, !162}
!3209 = distinct !{!3209, !162}
!3210 = distinct !{!3210, !162}
!3211 = distinct !{!3211, !"_ZL9hb_memcpyPvPKvm"}
!3212 = distinct !{!3212, !3211, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3213 = distinct !{!3213, !3211, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3214 = distinct !{!3214, !"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_I10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS5_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_tEEMSE_KFbvERK4$_19LPv0EEMSE_KF9hb_pair_tISC_jEvEL24hb_function_sortedness_t0ELSL_0EEZNS5_18glyph_variations_tINS7_ILb1EtLj2EEEE21compile_shared_tuplesERK8hb_map_tSY_EUlRKSO_E_SK_LSL_0EESO_EppEi"}
!3215 = distinct !{!3215, !3214, !"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_I10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS5_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_tEEMSE_KFbvERK4$_19LPv0EEMSE_KF9hb_pair_tISC_jEvEL24hb_function_sortedness_t0ELSL_0EEZNS5_18glyph_variations_tINS7_ILb1EtLj2EEEE21compile_shared_tuplesERK8hb_map_tSY_EUlRKSO_E_SK_LSL_0EESO_EppEi: argument 0"}
!3216 = distinct !{!3216, !162}
!3217 = distinct !{!3217, !162}
!3218 = distinct !{!3218, !162}
!3219 = distinct !{!3219, !162}
!3220 = !{!3202, !3200, !3198, !3196, !3194}
!3221 = !{!3207, !3205}
!3222 = !{!3213, !3212}
!3223 = !{!3215}
!3224 = !{!"_ZTS9hb_pair_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjE", !815, i64 0, !87, i64 8}
!3225 = !{!3224, !815, i64 0}
!3226 = distinct !{!3226, !408}
!3227 = distinct !{!3227, !162}
!3228 = distinct !{!3228, !162, !507}
!3229 = !{!440, !438, i64 136}
!3230 = !{!"_ZTS9hb_pair_tIP11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjE", !815, i64 0, !87, i64 8}
!3231 = !{!3230, !87, i64 8}
!3232 = !{!3230, !815, i64 0}
!3233 = distinct !{!3233, !162}
!3234 = distinct !{!3234, !162}
!3235 = distinct !{!3235, !162}
!3236 = distinct !{!3236, !408}
!3237 = distinct !{!3237, !408}
!3238 = distinct !{!3238, !408}
!3239 = distinct !{!3239, !408}
!3240 = distinct !{!3240, !408}
!3241 = distinct !{!3241, !"_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE8iter_refEv"}
!3242 = distinct !{!3242, !3241, !"_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE8iter_refEv: argument 0"}
!3243 = distinct !{!3243, !"_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE10iter_itemsEv"}
!3244 = distinct !{!3244, !3243, !"_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE10iter_itemsEv: argument 0"}
!3245 = distinct !{!3245, !"_ZorI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEE24hb_filter_iter_factory_tIMS8_KFbvERK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISI_Efp_EEEOSI_OSO_"}
!3246 = distinct !{!3246, !3245, !"_ZorI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEE24hb_filter_iter_factory_tIMS8_KFbvERK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISI_Efp_EEEOSI_OSO_: argument 0"}
!3247 = distinct !{!3247, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES1_IhLb0EELb0EE6item_tEKFbvERK4$_19EclI10hb_array_tIS7_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISI_S9_SC_LDnEESI_"}
!3248 = distinct !{!3248, !3247, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES1_IhLb0EELb0EE6item_tEKFbvERK4$_19EclI10hb_array_tIS7_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISI_S9_SC_LDnEESI_: argument 0"}
!3249 = distinct !{!3249, !162}
!3250 = distinct !{!3250, !162}
!3251 = distinct !{!3251, !408}
!3252 = !{!3248, !3246, !3244, !3242}
!3253 = distinct !{!3253, !"_ZL9hb_memcpyPvPKvm"}
!3254 = distinct !{!3254, !3253, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3255 = distinct !{!3255, !3253, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3256 = distinct !{!3256, !"_ZL9hb_memcpyPvPKvm"}
!3257 = distinct !{!3257, !3256, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3258 = distinct !{!3258, !3256, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3259 = !{!440, !87, i64 132}
!3260 = !{!3255, !3254}
!3261 = !{!3258, !3257}
!3262 = !{!440, !87, i64 148}
!3263 = distinct !{!3263, !162}
!3264 = distinct !{!3264, !162}
!3265 = distinct !{!3265, !162}
!3266 = distinct !{!3266, !162}
!3267 = distinct !{!3267, !408}
!3268 = distinct !{!3268, !162}
!3269 = distinct !{!3269, !162}
!3270 = distinct !{!3270, !162}
!3271 = distinct !{!3271, !162}
!3272 = distinct !{!3272, !162, !454, !453}
!3273 = distinct !{!3273, !162, !453, !454}
!3274 = distinct !{!3274, !162, !453, !454}
!3275 = distinct !{!3275, !162, !453, !454}
!3276 = distinct !{!3276, !162, !454, !453}
!3277 = distinct !{!3277, !162, !453, !454}
!3278 = distinct !{!3278, !162, !453, !454}
!3279 = distinct !{!3279, !162, !453, !454}
!3280 = distinct !{!3280, !162, !454, !453}
!3281 = distinct !{!3281, !162, !454, !453}
!3282 = distinct !{!3282, !453, !454}
!3283 = distinct !{!3283, !454, !453}
!3284 = distinct !{!3284, !"_ZL9hb_memcpyPvPKvm"}
!3285 = distinct !{!3285, !3284, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3286 = distinct !{!3286, !3284, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3287 = distinct !{!3287, !843}
!3288 = !{!3286, !3285}
!3289 = distinct !{!3289, !"_ZL9hb_memcpyPvPKvm"}
!3290 = distinct !{!3290, !3289, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3291 = distinct !{!3291, !3289, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3292 = distinct !{!3292, !408}
!3293 = distinct !{!3293, !"_ZL9hb_memcpyPvPKvm"}
!3294 = distinct !{!3294, !3293, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3295 = distinct !{!3295, !3293, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3296 = distinct !{!3296, !"_ZL9hb_memcpyPvPKvm"}
!3297 = distinct !{!3297, !3296, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3298 = distinct !{!3298, !3296, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3299 = distinct !{!3299, !"_ZL9hb_memcpyPvPKvm"}
!3300 = distinct !{!3300, !3299, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3301 = distinct !{!3301, !3299, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3302 = !{!3291, !3290}
!3303 = !{!3295, !3294}
!3304 = !{!3298, !3297}
!3305 = !{!3301, !3300}
!3306 = distinct !{!3306, !"_ZL9hb_memcpyPvPKvm"}
!3307 = distinct !{!3307, !3306, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3308 = distinct !{!3308, !3306, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3309 = distinct !{!3309, !162, !507}
!3310 = distinct !{!3310, !"_ZN22hb_serialize_context_t8snapshotEv"}
!3311 = distinct !{!3311, !3310, !"_ZN22hb_serialize_context_t8snapshotEv: argument 0"}
!3312 = distinct !{!3312, !162}
!3313 = !{!3308, !3307}
!3314 = !{!3311}
!3315 = !{!265, !87, i64 36}
!3316 = distinct !{!3316, !"_ZL9hb_memcpyPvPKvm"}
!3317 = distinct !{!3317, !3316, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3318 = distinct !{!3318, !3316, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3319 = !{!3318, !3317}
!3320 = distinct !{!3320, !"_ZL9hb_memcpyPvPKvm"}
!3321 = distinct !{!3321, !3320, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3322 = distinct !{!3322, !3320, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3323 = distinct !{!3323, !"_ZL9hb_memcpyPvPKvm"}
!3324 = distinct !{!3324, !3323, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3325 = distinct !{!3325, !3323, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3326 = distinct !{!3326, !"_ZL9hb_memcpyPvPKvm"}
!3327 = distinct !{!3327, !3326, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3328 = distinct !{!3328, !3326, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3329 = distinct !{!3329, !162}
!3330 = distinct !{!3330, !"_ZL9hb_memcpyPvPKvm"}
!3331 = distinct !{!3331, !3330, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3332 = distinct !{!3332, !3330, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3333 = !{!3322, !3321}
!3334 = !{!3325, !3324}
!3335 = !{!3328, !3327}
!3336 = !{!3332, !3331}
!3337 = distinct !{!3337, !162}
!3338 = distinct !{!3338, !162}
!3339 = distinct !{!3339, !"_ZL9hb_memcpyPvPKvm"}
!3340 = distinct !{!3340, !3339, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3341 = distinct !{!3341, !3339, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3342 = distinct !{!3342, !"_ZL9hb_memcpyPvPKvm"}
!3343 = distinct !{!3343, !3342, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3344 = distinct !{!3344, !3342, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3345 = distinct !{!3345, !"_ZL9hb_memcpyPvPKvm"}
!3346 = distinct !{!3346, !3345, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3347 = distinct !{!3347, !3345, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3348 = distinct !{!3348, !162, !507}
!3349 = distinct !{!3349, !162}
!3350 = !{!845, !844, i64 8}
!3351 = !{!845, !87, i64 0}
!3352 = !{!3341, !3340}
!3353 = !{!3344, !3343}
!3354 = !{!3347, !3346}
!3355 = !{!848, !87, i64 0}
!3356 = distinct !{!3356, !"_ZL9hb_memcpyPvPKvm"}
!3357 = distinct !{!3357, !3356, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3358 = distinct !{!3358, !3356, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3359 = distinct !{!3359, !"_ZNK2OT11SegmentMaps16unmap_axis_rangeERK6Triple"}
!3360 = distinct !{!3360, !3359, !"_ZNK2OT11SegmentMaps16unmap_axis_rangeERK6Triple: argument 0"}
!3361 = distinct !{!3361, !162}
!3362 = distinct !{!3362, !"_ZL9hb_memcpyPvPKvm"}
!3363 = distinct !{!3363, !3362, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3364 = distinct !{!3364, !3362, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3365 = distinct !{!3365, !"_ZL9hb_memcpyPvPKvm"}
!3366 = distinct !{!3366, !3365, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3367 = distinct !{!3367, !3365, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3368 = distinct !{!3368, !"_ZL9hb_memcpyPvPKvm"}
!3369 = distinct !{!3369, !3368, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3370 = distinct !{!3370, !3368, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3371 = distinct !{!3371, !162}
!3372 = distinct !{!3372, !162}
!3373 = distinct !{!3373, !"_ZL9hb_memcpyPvPKvm"}
!3374 = distinct !{!3374, !3373, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3375 = distinct !{!3375, !3373, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3376 = distinct !{!3376, !"_ZL9hb_memcpyPvPKvm"}
!3377 = distinct !{!3377, !3376, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3378 = distinct !{!3378, !3376, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3379 = !{!3358, !3357}
!3380 = !{!3360}
!3381 = !{!"branch_weights", !"expected", i32 2361051, i32 2145122597}
!3382 = !{!3364, !3363}
!3383 = !{!3367, !3366}
!3384 = !{!3370, !3369}
!3385 = !{!3375, !3374}
!3386 = !{!3378, !3377}
!3387 = !{!847, !847, i64 0}
!3388 = distinct !{!3388, !162}
!3389 = distinct !{!3389, !"_ZL9hb_memcpyPvPKvm"}
!3390 = distinct !{!3390, !3389, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3391 = distinct !{!3391, !3389, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3392 = distinct !{!3392, !162}
!3393 = distinct !{!3393, !408}
!3394 = distinct !{!3394, !162}
!3395 = distinct !{!3395, !162}
!3396 = distinct !{!3396, !162}
!3397 = distinct !{!3397, !162}
!3398 = distinct !{!3398, !162}
!3399 = distinct !{!3399, !162}
!3400 = distinct !{!3400, !162}
!3401 = distinct !{!3401, !"_ZL9hb_memcpyPvPKvm"}
!3402 = distinct !{!3402, !3401, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3403 = distinct !{!3403, !3401, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3404 = distinct !{!3404, !162, !843}
!3405 = distinct !{!3405, !162}
!3406 = distinct !{!3406, !162}
!3407 = !{!"branch_weights", i32 1, i32 1999}
!3408 = !{!"branch_weights", i32 0, i32 1}
!3409 = !{!3391, !3390}
!3410 = !{!"p1 _ZTSN2OT11SegmentMapsE", !94, i64 0}
!3411 = !{!3410, !3410, i64 0}
!3412 = !{!3403, !3402}
!3413 = !{!854, !854, i64 0}
!3414 = distinct !{!3414, !162}
!3415 = distinct !{!3415, !162}
!3416 = distinct !{!3416, !162}
!3417 = distinct !{!3417, !162}
!3418 = distinct !{!3418, !162}
!3419 = distinct !{!3419, !162}
!3420 = distinct !{!3420, !162}
!3421 = distinct !{!3421, !162, !453, !454}
!3422 = distinct !{!3422, !162, !454, !453}
!3423 = distinct !{!3423, !"_ZL9hb_memcpyPvPKvm"}
!3424 = distinct !{!3424, !3423, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3425 = distinct !{!3425, !3423, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3426 = !{!3425, !3424}
!3427 = distinct !{!3427, !162}
!3428 = distinct !{!3428, !162}
!3429 = distinct !{!3429, !162, !507}
!3430 = !{!863, !87, i64 12}
!3431 = distinct !{!3431, !162}
!3432 = distinct !{!3432, !162}
!3433 = distinct !{!3433, !162}
!3434 = distinct !{!3434, !162}
!3435 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!3436 = distinct !{!3436, !"_ZL9hb_memcpyPvPKvm"}
!3437 = distinct !{!3437, !3436, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3438 = distinct !{!3438, !3436, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3439 = !{!3438, !3437}
!3440 = distinct !{!3440, !"_ZL9hb_memcpyPvPKvm"}
!3441 = distinct !{!3441, !3440, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3442 = distinct !{!3442, !3440, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3443 = !{!3442, !3441}
!3444 = distinct !{!3444, !408}
!3445 = distinct !{!3445, !162}
!3446 = distinct !{!3446, !162}
!3447 = distinct !{!3447, !408}
!3448 = distinct !{!3448, !162}
!3449 = distinct !{!3449, !162}
!3450 = distinct !{!3450, !"_ZL9hb_memcpyPvPKvm"}
!3451 = distinct !{!3451, !3450, !"_ZL9hb_memcpyPvPKvm: argument 1"}
end_hunk_2
