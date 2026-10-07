Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/gsubgpos-context?download=true
inline.NumInlined: 448
inline.NumDeleted: 318
begin_hunk_0_@_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE5allocEj:bb.a
bb.h:                                             ; preds = %_ZL9hb_memsetPvij.exit
  %i.aa = zext nneg i32 %narrow.i to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN12hb_hashmap_tIjPN5graph6LookupELb0EE9prime_forEj.prime_mod, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !35
  br label %_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE9prime_forEj.exit

_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE9prime_forEj.exit: ; preds = %_ZL9hb_memsetPvij.exit, %bb.h
  %.0.i = phi i32 [ %i.ac, %bb.h ], [ 2147483647, %_ZL9hb_memsetPvij.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.i, ptr %i.ad, align 8, !tbaa !86
  %.tr = trunc nuw nsw i32 %narrow.i to i16
  %i.ae = shl nuw nsw i16 %.tr, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !91
  store ptr %i.p, ptr %i.v, align 8, !tbaa !28
  %.not43 = icmp eq i32 %spec.select.i, 0
  br i1 %.not43, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE9prime_forEj.exit
  %wide.trip.count = zext i32 %spec.select.i to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.j, %_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE9prime_forEj.exit
  tail call void @hb_free(ptr noundef %i.w) #9
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.ak = lshr i32 %i.ai, 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE13set_with_hashIjS2_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ag, i32 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.al, i1 noundef zeroext true) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !128

bb.k:                                             ; preds = %bb.e, %.preheader, %bb.c, %bb.a
  %.1 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ true, %.preheader ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE13set_with_hashIjS2_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !27, !range !77, !noundef !62
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !85   ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !82
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !39

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !86
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28   ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !35
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03045, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03045, i32 %.02946 ; 2 uses
  %i.ac = add i32 %.048, 1                        ; 3 uses
  %i.ad = add i32 %i.ac, %.02946
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !82
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !129

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03043 = phi i32 [ %.03045, %bb.e ], [ %spec.select, %bb.f ]
  %.02941 = phi i32 [ %.02946, %bb.e ], [ %i.af, %bb.f ]
  %.02839 = phi i32 [ %.048, %bb.e ], [ %i.ac, %bb.f ]
  %.03043.fr = freeze i32 %.03043                 ; 2 uses
  %i.al = icmp eq i32 %.03043.fr, -1
  %spec.select67 = select i1 %i.al, i32 %.02941, i32 %.03043.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0283961 = phi i32 [ %.02839, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !85
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !85
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !87
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !87
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !35
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !89
  %i.ba = load ptr, ptr %3, align 8, !tbaa !84
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !90
  %i.bc = shl nuw i32 %i.k, 2
  %i.bd = or disjoint i32 %i.bc, 3
  store i32 %i.bd, ptr %i.ap, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !tbaa !35
  %i.bg = add <2 x i32> %i.bf, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bg, ptr %i.be, align 4, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !91
  %i.bj = zext i16 %i.bi to i32
  %i.bk = icmp ugt i32 %.0283961, %i.bj
  br i1 %i.bk, label %bb.i, label %bb.k, !prof !34

bb.i:                                             ; preds = %bb.h
  %i.bl = extractelement <2 x i32> %i.bg, i64 1
  %i.bm = shl i32 %i.bl, 3
  %i.bn = load i32, ptr %i.h, align 4, !tbaa !82  ; 2 uses
  %i.bo = icmp ugt i32 %i.bm, %i.bn
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = add i32 %i.bn, -8
  %i.bq = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bp) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

declare ptr @hb_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIPcLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !75     ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.m, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.m

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.m, !prof !34

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !130

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 536870911
  br i1 %i.j, label %.critedge, label %bb.e, !prof !34

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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76
  tail call void @hb_free(ptr noundef %i.m) #9
  br label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76   ; 2 uses
  br i1 %.not49, label %3, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit

3:                                                ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit, label %bb.i

bb.i:                                             ; preds = %3
  %4 = shl nuw i32 %.138, 3
  %5 = zext i32 %4 to i64
  %i.p = tail call ptr @hb_malloc(i64 noundef %5) #9 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.p, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %bb.j, !prof !34

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !74   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !76
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr readonly align 1 %i.u, i64 range(i64 0, 34359738361) %i.t, i1 false), !alias.scope !134
  br label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %3
  %6 = phi ptr [ null, %3 ], [ %i.o, %bb.h ]
  %7 = shl nuw i32 %.138, 3
  %8 = zext i32 %7 to i64
  %i.v = tail call ptr @hb_realloc(ptr noundef %6, i64 noundef %8) #9 ; 2 uses
  %.not22 = icmp eq ptr %i.v, null
  br i1 %.not22, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, !prof !92

_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.i, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %i.w = load i32, ptr %0, align 8, !tbaa !75     ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.w
  br i1 %.not23, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53
  %i.x = xor i32 %i.w, -1
  br label %.sink.split

_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.k, %bb.j, %bb.g, %bb.f, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.v, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.p, %bb.j ], [ %i.p, %bb.k ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.y, align 8, !tbaa !76
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, %bb.l
  %.sink = phi i32 [ %i.x, %bb.l ], [ %.138, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.l ], [ true, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !75
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

declare ptr @hb_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !81     ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17, label %bb.c, !prof !34

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !35
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.e) ; 3 uses
  %.not19.i = icmp ugt i32 %.sroa.speculated.i, %i.b
  %i.f = lshr i32 %i.b, 2
  %.not20.i = icmp ult i32 %.sroa.speculated.i, %i.f
  %or.cond.i = or i1 %.not19.i, %.not20.i
  br i1 %or.cond.i, label %.thread.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp samesign ugt i32 %1, %i.b
  br i1 %.not.i, label %.preheader.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread, !prof !34

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.039.i = phi i32 [ %i.i, %.preheader.i ], [ %i.b, %bb.e ] ; 2 uses
  %i.g = lshr i32 %.039.i, 1
  %i.h = add nuw i32 %.039.i, 8
  %i.i = add nuw i32 %i.h, %i.g                   ; 3 uses
  %i.j = icmp ugt i32 %1, %i.i
  br i1 %i.j, label %.preheader.i, label %.thread.i, !llvm.loop !135

.thread.i:                                        ; preds = %.preheader.i, %bb.d
  %.138.i = phi i32 [ %.sroa.speculated.i, %bb.d ], [ %i.i, %.preheader.i ] ; 5 uses
  %i.k = icmp ugt i32 %.138.i, 19884107
  br i1 %i.k, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, label %bb.f, !prof !34

bb.f:                                             ; preds = %.thread.i
  %i.l = tail call noundef ptr @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.138.i) ; 2 uses
  %.not21.i = icmp ne i32 %.138.i, 0
  %.not22.i = icmp eq ptr %i.l, null
  %spec.select.i = and i1 %.not21.i, %.not22.i
  br i1 %spec.select.i, label %bb.g, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit, !prof !34

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %0, align 8, !tbaa !81     ; 2 uses
  %.not23.i = icmp ugt i32 %.138.i, %i.m
  br i1 %.not23.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20: ; preds = %bb.g, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.b, %.thread.i ], [ %i.m, %bb.g ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %0, align 8, !tbaa !81
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !78
  store i32 %.138.i, ptr %0, align 8, !tbaa !81
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread: ; preds = %bb.g, %bb.e, %bb.d, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !38   ; 3 uses
  %i.q = icmp ugt i32 %1, %i.p
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread
  br i1 %2, label %.lr.ph.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %i.s = phi i32 [ %i.p, %.lr.ph.i ], [ %i.al, %bb.i ]
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !78
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [216 x i8], ptr %i.t, i64 %i.u ; 15 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.v, i8 0, i64 216, i1 false)
  store i32 -1, ptr %i.w, align 4, !tbaa !93
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 100
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  store atomic i32 1, ptr %i.x monotonic, align 8
  store atomic i8 1, ptr %i.y monotonic, align 4
  store atomic ptr null, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store i8 1, ptr %i.aa, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 114
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  store ptr null, ptr %i.ac, align 8, !tbaa !30
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
  store i8 1, ptr %i.ag, align 8, !tbaa !94
  store i32 0, ptr %i.ah, align 4, !tbaa !95
  store atomic i32 0, ptr %i.ai monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.aj, i8 0, i64 33, i1 false)
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !38
  %i.al = add i32 %i.ak, 1                        ; 3 uses
  store i32 %i.al, ptr %i.o, align 4, !tbaa !38
  %i.am = icmp ult i32 %i.al, %1
  br i1 %i.am, label %bb.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, !llvm.loop !136

bb.j:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread
  %i.an = icmp ult i32 %1, %i.p
  %or.cond = and i1 %2, %i.an
  br i1 %or.cond, label %bb.k, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE13shrink_vectorEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.h
  store i32 %1, ptr %i.o, align 4, !tbaa !38
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17: ; preds = %bb.b, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20 ], [ true, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE13shrink_vectorEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38   ; 2 uses
  %i.c = sub i32 %i.b, %1                         ; 2 uses
  %.not5 = icmp eq i32 %i.c, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78
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
end_hunk_0
begin_hunk_1_@"_ZNK4$_11clI12hb_bit_set_tEEvRT_S3_":bb.a
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.k, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.m, align 8, !tbaa !35
  %i.p = load i32, ptr %i.n, align 8, !tbaa !35
  store i32 %i.p, ptr %i.m, align 8, !tbaa !35
  store i32 %i.o, ptr %i.n, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !35
  %i.t = load i32, ptr %i.r, align 4, !tbaa !35
  store i32 %i.t, ptr %i.q, align 4, !tbaa !35
  store i32 %i.s, ptr %i.r, align 4, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !143
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !143
  store ptr %i.x, ptr %i.u, align 8, !tbaa !143
  store ptr %i.w, ptr %i.v, align 8, !tbaa !143
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !35
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !35
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !35
  store i32 %i.aa, ptr %i.z, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !35
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !35
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !35
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !144
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !144
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !144
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !144
  br label %_Z4swapR12hb_bit_set_tS0_.exit

_Z4swapR12hb_bit_set_tS0_.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store atomic i32 -57005, ptr %0 monotonic, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.d = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #9 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.b) #9
  store atomic ptr null, ptr %i.a monotonic, align 8
  br label %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i

_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !145
  %i.g = add i32 %i.f, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.g, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.c, label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i

bb.c:                                             ; preds = %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.h, align 4, !tbaa !146
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !147
  tail call void @hb_free(ptr noundef %i.j) #9
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i

_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i: ; preds = %bb.c, %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !148
  %i.m = add i32 %i.l, -1
  %spec.select.i.i1.i.i.i = icmp ult i32 %i.m, -2
  br i1 %spec.select.i.i1.i.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit, label %_ZN23hb_bit_set_invertible_tD2Ev.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit: ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.n, align 4, !tbaa !149
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !150
  tail call void @hb_free(ptr noundef %i.p) #9
  %.pre = load i32, ptr %i.e, align 8, !tbaa !145
  %i.q = add i32 %.pre, -1
  %i.r = icmp ult i32 %i.q, -2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %_ZN23hb_bit_set_invertible_tD2Ev.exit

bb.d:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.s, align 4, !tbaa !146
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !147
  tail call void @hb_free(ptr noundef %i.u) #9
  br label %_ZN23hb_bit_set_invertible_tD2Ev.exit

_ZN23hb_bit_set_invertible_tD2Ev.exit:            ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !158
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !159
  %i.d = add i32 %i.c, -1
  %spec.select.i.i = icmp ult i32 %i.d, -2
  br i1 %spec.select.i.i, label %bb.c, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !160
  tail call void @hb_free(ptr noundef %i.f) #9
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit: ; preds = %bb.b, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #9 ; 0 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !158  ; 2 uses
  %.not59 = icmp eq i32 %i.h, 0
  br i1 %.not59, label %._crit_edge, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit: ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph, %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit
  %i.j = phi i32 [ %i.h, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph ], [ %i.q, %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit ]
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !160
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %.sroa.3.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..0.i.i.sroa_idx, align 8, !tbaa !99
  %.sroa.4.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..0.i.i.sroa_idx, align 8, !tbaa !99 ; 2 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !161, !noalias !162
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #9 ; 0 uses
  %.not.i6 = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i6, label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit
  tail call void %.sroa.4.0.copyload(ptr noundef %.sroa.3.0.copyload) #9, !inline_history !153
  br label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit

_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit: ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit, %bb.e
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #9 ; 0 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !158  ; 2 uses
  %.not5 = icmp eq i32 %i.q, 0
  br i1 %.not5, label %._crit_edge, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit, !llvm.loop !154

._crit_edge:                                      ; preds = %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, %bb.d
  %i.r = load i32, ptr %0, align 8, !tbaa !159
  %i.s = add i32 %i.r, -1
  %spec.select.i.i7 = icmp ult i32 %i.s, -2
  br i1 %spec.select.i.i7, label %bb.f, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8

bb.f:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.a, align 4, !tbaa !161
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !160
  tail call void @hb_free(ptr noundef %i.u) #9
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8: ; preds = %._crit_edge, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.v = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #9 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !79     ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.m, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.m

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.m, !prof !34

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !163

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 1073741823
  br i1 %i.j, label %.critedge, label %bb.e, !prof !34

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !80
  tail call void @hb_free(ptr noundef %i.m) #9
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !80   ; 2 uses
  br i1 %.not49, label %3, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit

3:                                                ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit, label %bb.i

bb.i:                                             ; preds = %3
  %4 = shl nuw i32 %.138, 2
  %5 = zext i32 %4 to i64
  %i.p = tail call ptr @hb_malloc(i64 noundef %5) #9 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.p, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, label %bb.j, !prof !34

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !33   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, label %bb.k, !prof !34

bb.k:                                             ; preds = %bb.j
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr readonly align 1 %i.u, i64 range(i64 0, 34359738361) %i.t, i1 false), !alias.scope !167
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit: ; preds = %bb.h, %3
  %6 = phi ptr [ null, %3 ], [ %i.o, %bb.h ]
  %7 = shl nuw i32 %.138, 2
  %8 = zext i32 %7 to i64
  %i.v = tail call ptr @hb_realloc(ptr noundef %6, i64 noundef %8) #9 ; 2 uses
  %.not22 = icmp eq ptr %i.v, null
  br i1 %.not22, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, !prof !92

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53: ; preds = %bb.i, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %i.w = load i32, ptr %0, align 8, !tbaa !79     ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.w
  br i1 %.not23, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53
  %i.x = xor i32 %i.w, -1
  br label %.sink.split

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread: ; preds = %bb.k, %bb.j, %bb.g, %bb.f, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.v, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.p, %bb.j ], [ %i.p, %bb.k ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.y, align 8, !tbaa !80
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, %bb.l
  %.sink = phi i32 [ %i.x, %bb.l ], [ %.138, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.l ], [ true, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !79
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !67}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTSN5graph7graph_tE", !9, i64 0}
!11 = !{!"_ZTS11hb_atomic_tIiE", !6, i64 0}
!12 = !{!"_ZTS20hb_reference_count_t", !11, i64 0}
!13 = !{!"bool", !5, i64 0}
!14 = !{!"_ZTS11hb_atomic_tIbE", !13, i64 0}
!15 = !{!"p1 _ZTS20hb_user_data_array_t", !9, i64 0}
!16 = !{!"_ZTS11hb_atomic_tIP20hb_user_data_array_tE", !15, i64 0}
!17 = !{!"_ZTS18hb_object_header_t", !12, i64 0, !14, i64 4, !16, i64 8}
!18 = !{!"short", !5, i64 0}
!19 = !{!"p1 _ZTSN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tE", !9, i64 0}
!20 = !{!"_ZTS12hb_hashmap_tIjPN5graph6LookupELb0EE", !17, i64 0, !13, i64 16, !18, i64 18, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !19, i64 40}
!21 = !{!"p1 _ZTSN12hb_hashmap_tIjjLb0EE6item_tE", !9, i64 0}
!22 = !{!"_ZTS12hb_hashmap_tIjjLb0EE", !17, i64 0, !13, i64 16, !18, i64 18, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !21, i64 40}
!23 = !{!"p1 _ZTSN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE6item_tE", !9, i64 0}
!24 = !{!"_ZTS12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE", !17, i64 0, !13, i64 16, !18, i64 18, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !23, i64 40}
!25 = !{!"_ZTSN5graph24gsubgpos_graph_context_tE", !6, i64 0, !10, i64 8, !6, i64 16, !20, i64 24, !22, i64 72, !24, i64 120}
!26 = !{!25, !6, i64 0}
!27 = !{!20, !13, i64 16}
!28 = !{!20, !19, i64 40}
!29 = !{!22, !13, i64 16}
!30 = !{!22, !21, i64 40}
!31 = !{!"p1 int", !9, i64 0}
!32 = !{!"_ZTS11hb_vector_tIjLb0EE", !6, i64 0, !6, i64 4, !31, i64 8}
!33 = !{!32, !6, i64 4}
!34 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!35 = !{!6, !6, i64 0}
!36 = !{!"p1 _ZTSN5graph7graph_t8vertex_tE", !9, i64 0}
!37 = !{!"_ZTS11hb_vector_tIN5graph7graph_t8vertex_tELb0EE", !6, i64 0, !6, i64 4, !36, i64 8}
!38 = !{!37, !6, i64 4}
!39 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!40 = !{!"p1 omnipotent char", !9, i64 0}
!41 = !{!"p1 _ZTSN22hb_serialize_context_t8object_t6link_tE", !9, i64 0}
!42 = !{!"_ZTS11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE", !6, i64 0, !6, i64 4, !41, i64 8}
!43 = !{!"p1 _ZTSN22hb_serialize_context_t8object_tE", !9, i64 0}
!44 = !{!"_ZTSN22hb_serialize_context_t8object_tE", !40, i64 0, !40, i64 8, !42, i64 16, !42, i64 32, !43, i64 48}
!45 = !{!"long", !5, i64 0}
!46 = !{!"_ZTS11hb_atomic_tIjE", !6, i64 0}
!47 = !{!"p1 _ZTSN12hb_bit_set_t10page_map_tE", !9, i64 0}
!48 = !{!"_ZTS11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE", !6, i64 0, !6, i64 4, !47, i64 8}
!49 = !{!"p1 _ZTS13hb_bit_page_t", !9, i64 0}
!50 = !{!"_ZTS11hb_vector_tI13hb_bit_page_tLb0EE", !6, i64 0, !6, i64 4, !49, i64 8}
!51 = !{!"_ZTS12hb_bit_set_t", !13, i64 0, !6, i64 4, !46, i64 8, !48, i64 16, !50, i64 32}
!52 = !{!"_ZTS23hb_bit_set_invertible_t", !51, i64 0, !13, i64 48}
!53 = !{!"_ZTS14hb_sparseset_tI23hb_bit_set_invertible_tE", !17, i64 0, !52, i64 16}
!54 = !{!"_ZTS8hb_set_t", !53, i64 0}
!55 = !{!"_ZTSN5graph7graph_t8vertex_tE", !44, i64 0, !45, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !13, i64 88, !22, i64 96, !54, i64 144}
!56 = !{!55, !40, i64 0}
!57 = !{!55, !40, i64 8}
!58 = !{i64 4062605}
!59 = !{!"_ZTS11hb_packed_tItE", !18, i64 0}
!60 = !{!59, !18, i64 0}
!61 = !{!25, !10, i64 8}
!62 = !{}
!63 = !{i64 8}
!64 = !{!44, !40, i64 0}
!65 = !{!44, !6, i64 20}
!66 = !{!44, !41, i64 24}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"_ZTSN22hb_serialize_context_t8object_t6link_tE", !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 4, !6, i64 8}
!69 = !{!68, !6, i64 4}
!70 = !{!68, !6, i64 8}
!71 = !{!"any p2 pointer", !9, i64 0}
!72 = !{!"p2 omnipotent char", !71, i64 0}
!73 = !{!"_ZTS11hb_vector_tIPcLb0EE", !6, i64 0, !6, i64 4, !72, i64 8}
!74 = !{!73, !6, i64 4}
!75 = !{!73, !6, i64 0}
!76 = !{!73, !72, i64 8}
!77 = !{i8 0, i8 2}
!78 = !{!37, !36, i64 8}
!79 = !{!32, !6, i64 0}
!80 = !{!32, !31, i64 8}
!81 = !{!37, !6, i64 0}
!82 = !{!20, !6, i64 28}
!83 = !{!"p1 _ZTSN5graph6LookupE", !9, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!20, !6, i64 24}
!86 = !{!20, !6, i64 32}
!87 = !{!20, !6, i64 20}
!88 = !{!"_ZTSN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tE", !6, i64 0, !6, i64 4, !6, i64 4, !6, i64 4, !83, i64 8}
!89 = !{!88, !6, i64 0}
!90 = !{!88, !83, i64 8}
!91 = !{!20, !18, i64 18}
!92 = !{!"branch_weights", !"expected", i32 1914245, i32 2145569403}
!93 = !{!55, !6, i64 84}
!94 = !{!51, !13, i64 0}
!95 = !{!51, !6, i64 4}
!96 = !{!42, !6, i64 0}
!97 = !{!42, !6, i64 4}
!98 = !{!42, !41, i64 8}
!99 = !{!9, !9, i64 0}
!100 = !{!10, !10, i64 0}
!101 = !{!25, !6, i64 16}
!102 = !{!24, !13, i64 16}
!103 = !{!24, !23, i64 40}
!104 = !{!40, !40, i64 0}
!105 = !{!"_ZTSN5graph7graph_tE", !37, i64 0, !32, i64 16, !32, i64 32, !13, i64 48, !13, i64 49, !13, i64 50, !13, i64 51, !32, i64 56, !73, i64 72}
!106 = !{!105, !6, i64 4}
!107 = !{!105, !13, i64 51}
!108 = !{!105, !13, i64 50}
!109 = !{!105, !13, i64 49}
!110 = !{!55, !45, i64 56}
!111 = !{!55, !6, i64 64}
!112 = distinct !{!112, i1 false, !"_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE6valuesEv"}
!113 = distinct !{!113, !112, !"_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE6valuesEv: argument 0"}
!114 = distinct !{!114, i1 false, !"_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE10values_refEv"}
!115 = distinct !{!115, !114, !"_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE10values_refEv: argument 0"}
!116 = distinct !{!116, i1 false, !"_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE10iter_itemsEv"}
!117 = distinct !{!117, !116, !"_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE10iter_itemsEv: argument 0"}
!118 = distinct !{!118, i1 false, !"_ZorI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEE24hb_filter_iter_factory_tIMS6_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSG_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISG_Efp_EEEOSG_OSM_"}
!119 = distinct !{!119, !118, !"_ZorI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEE24hb_filter_iter_factory_tIMS6_KFbvERK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSG_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISG_Efp_EEEOSG_OSM_: argument 0"}
!120 = distinct !{!120, i1 false, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS5_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSG_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISG_S7_SA_LDnEESG_"}
!121 = distinct !{!121, !120, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERK3$_8EclI10hb_array_tIS5_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSG_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISG_S7_SA_LDnEESG_: argument 0"}
!122 = distinct !{!122, !67}
!123 = distinct !{!123, !67}
!124 = !{!121, !119, !117, !115, !113}
!125 = !{!"branch_weights", i32 1, i32 127}
!126 = distinct !{!126, !67}
!127 = distinct !{!127, !67}
!128 = distinct !{!128, !67}
!129 = distinct !{!129, !67}
!130 = distinct !{!130, !67}
!131 = distinct !{!131, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!132 = distinct !{!132, !131, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!133 = distinct !{!133, !131, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!134 = !{!133, !132}
!135 = distinct !{!135, !67}
!136 = distinct !{!136, !67}
!137 = distinct !{!137, !67}
!138 = distinct !{!138, !67}
!139 = !{!41, !41, i64 0}
!140 = !{!18, !18, i64 0}
!141 = !{!21, !21, i64 0}
!142 = !{!13, !13, i64 0}
!143 = !{!47, !47, i64 0}
!144 = !{!49, !49, i64 0}
!145 = !{!48, !6, i64 0}
!146 = !{!48, !6, i64 4}
!147 = !{!48, !47, i64 8}
!148 = !{!50, !6, i64 0}
!149 = !{!50, !6, i64 4}
!150 = !{!50, !49, i64 8}
!151 = distinct !{!151, i1 false, !"_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv"}
!152 = distinct !{!152, !151, !"_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv: argument 0"}
!153 = distinct !{null}
!154 = distinct !{!154, !67}
!155 = !{!"p1 _ZTSN20hb_user_data_array_t19hb_user_data_item_tE", !9, i64 0}
!156 = !{!"_ZTS11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE", !6, i64 0, !6, i64 4, !155, i64 8}
!157 = !{!"_ZTS17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE", !156, i64 0}
!158 = !{!157, !6, i64 4}
!159 = !{!156, !6, i64 0}
!160 = !{!156, !155, i64 8}
!161 = !{!156, !6, i64 4}
!162 = !{!152}
!163 = distinct !{!163, !67}
!164 = distinct !{!164, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!165 = distinct !{!165, !164, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!166 = distinct !{!166, !164, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!167 = !{!166, !165}
end_hunk_1
