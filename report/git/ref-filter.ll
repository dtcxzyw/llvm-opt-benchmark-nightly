Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/ref-filter?download=true
inline.NumInlined: 234
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 34
begin_hunk_0_@filter_and_format_one:bb.a
  call void @strbuf_release(ptr noundef nonnull %3) #24
  call fastcc void @free_array_item(ptr noundef nonnull %i.b)
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !107
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !112  ; 2 uses
  %.not15 = icmp eq i32 %i.u, 0
  br i1 %.not15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !206
  %i.x = add nsw i32 %i.w, 1                      ; 2 uses
  store i32 %i.x, ptr %i.v, align 8, !tbaa !206
  %.not16 = icmp slt i32 %i.x, %i.u
  br i1 %.not16, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.a, %bb.i
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.i ], [ 1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @ref_array_sort(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = load i32, ptr %1, align 8, !tbaa !54
  %i.d = sext i32 %i.c to i64
  %i.e = tail call i32 @git_qsort_s(ptr noundef %i.b, i64 noundef %i.d, i64 noundef 8, ptr noundef nonnull @compare_refs, ptr noundef nonnull %0) #24
  %.not4 = icmp eq i32 %i.e, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.20, i32 noundef 3559, ptr noundef nonnull @.str.21) #26
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @print_formatted_ref_array(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 7 uses
  %3 = alloca %struct.strbuf, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.parse_sorting_atom.err, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.parse_sorting_atom.err, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !112  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %.pre = load i32, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.c = tail call i32 @llvm.smin.i32(i32 %.pre, i32 %i.b)
  %.011 = select i1 %.not, i32 %.pre, i32 %i.c    ; 2 uses
  %i.d = icmp sgt i32 %.011, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %wide.trip.count = zext nneg i32 %.011 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.m, %bb.a
  call void @strbuf_release(ptr noundef nonnull %3) #24
  call void @strbuf_release(ptr noundef nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !108
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !30   ; 2 uses
  %.not9.i = icmp eq ptr %i.k, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.k, align 1, !tbaa !22
  br label %strbuf_setlen.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !22
  %.not10.i = icmp eq i8 %i.l, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @__assert_fail(ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.197, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #26
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.c, %bb.d
  store i64 0, ptr %i.g, align 8, !tbaa !108
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %.not9.i16 = icmp eq ptr %i.m, @strbuf_slopbuf
  br i1 %.not9.i16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %strbuf_setlen.exit
  store i8 0, ptr %i.m, align 1, !tbaa !22
  br label %strbuf_setlen.exit18

bb.g:                                             ; preds = %strbuf_setlen.exit
  %i.n = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !22
  %.not10.i17 = icmp eq i8 %i.n, 0
  br i1 %.not10.i17, label %strbuf_setlen.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @__assert_fail(ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.197, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #26
  unreachable

strbuf_setlen.exit18:                             ; preds = %bb.f, %bb.g
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !56
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.r = call i32 @format_ref_array_item(ptr noundef %i.q, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.not13 = icmp eq i32 %i.r, 0
  br i1 %.not13, label %bb.j, label %bb.i

bb.i:                                             ; preds = %strbuf_setlen.exit18
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !30
  call void (ptr, ...) @die(ptr noundef nonnull @.str.5, ptr noundef %i.s) #26
  unreachable

bb.j:                                             ; preds = %strbuf_setlen.exit18
  %i.t = load i64, ptr %i.g, align 8, !tbaa !108  ; 2 uses
  %.not14 = icmp eq i64 %i.t, 0
  br i1 %.not14, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = load i32, ptr %i.j, align 4, !tbaa !109
  %.not15 = icmp eq i32 %i.u, 0
  br i1 %.not15, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !111
  %i.x = call i64 @fwrite(ptr noundef %i.v, i64 noundef 1, i64 noundef %i.t, ptr noundef %i.w) ; 0 uses
  %i.y = load ptr, ptr @stdout, align 8, !tbaa !111
  %i.z = call i32 @putc(i32 noundef 10, ptr noundef %i.y), !inline_history !0 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !207
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ref_sorting_set_sort_flags_all(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %.not7 = icmp eq ptr %0, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not6 = icmp eq i32 %2, 0
  %i.a = xor i32 %1, -1
  br i1 %.not6, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.08.us = phi ptr [ %i.e, %.lr.ph.split.us ], [ %0, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.08.us, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !99
  %i.d = and i32 %i.c, %i.a
  store i32 %i.d, ptr %i.b, align 4, !tbaa !99
  %i.e = load ptr, ptr %.08.us, align 8, !tbaa !98 ; 2 uses
  %.not.us = icmp eq ptr %i.e, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !208

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.08 = phi ptr [ %i.i, %.lr.ph.split ], [ %0, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.08, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !99
  %i.h = or i32 %i.g, %1
  store i32 %i.h, ptr %i.f, align 4, !tbaa !99
  %i.i = load ptr, ptr %.08, align 8, !tbaa !98   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !208

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  ret void
}

declare i32 @git_qsort_s(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @compare_refs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.strbuf, align 8             ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !58     ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !58     ; 4 uses
  %cond = icmp eq ptr %2, null
  br i1 %cond, label %bb.aa, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %.01826 = phi ptr [ %2, %.lr.ph ], [ %i.bo, %bb.y ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.g = load ptr, ptr @used_atom, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %.01826, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !100  ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [112 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.parse_sorting_atom.err, i64 24, i1 false)
  %i.n = call fastcc i32 @get_ref_atom_value(ptr noundef %i.c, i32 noundef %i.i, ptr noundef %i.a, ptr noundef nonnull %3)
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30
  call void (ptr, ...) @die(ptr noundef nonnull @.str.5, ptr noundef %i.p) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.h, align 8, !tbaa !100
  %i.r = call fastcc i32 @get_ref_atom_value(ptr noundef %i.d, i32 noundef %i.q, ptr noundef %i.b, ptr noundef nonnull %3)
  %.not36.i = icmp eq i32 %i.r, 0
  br i1 %.not36.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !30
  call void (ptr, ...) @die(ptr noundef nonnull @.str.5, ptr noundef %i.t) #26
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @strbuf_release(ptr noundef nonnull %3) #24
  %i.u = getelementptr inbounds nuw i8, ptr %.01826, i64 12 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !99   ; 4 uses
  %i.w = and i32 %i.v, 8
  %.not37.i = icmp eq i32 %i.w, 0
  br i1 %.not37.i, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr %i.e, align 4, !tbaa !14   ; 3 uses
  %i.y = load i32, ptr %i.f, align 4, !tbaa !14   ; 3 uses
  %i.z = or i32 %i.y, %i.x
  %i.aa = and i32 %i.z, 32
  %.not38.i = icmp eq i32 %i.aa, 0
  br i1 %.not38.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i32 %i.x, %i.y
  br i1 %.not.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.20, i32 noundef 3450, ptr noundef nonnull @.str.154) #26
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ab = and i32 %i.x, 32
  %.not4.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not4.i.i, label %bb.k, label %cmp_ref_sorting.exit

bb.k:                                             ; preds = %bb.j
  %i.ac = and i32 %i.y, 32
  %.not5.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not5.i.i, label %bb.l, label %cmp_ref_sorting.exit

bb.l:                                             ; preds = %bb.k
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.20, i32 noundef 3455, ptr noundef nonnull @.str.155) #26
  unreachable

bb.m:                                             ; preds = %bb.g, %bb.f
  %i.ad = and i32 %i.v, 4
  %.not39.i = icmp eq i32 %i.ad, 0
  br i1 %.not39.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !70
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !70
  %i.ai = call i32 @versioncmp(ptr noundef %i.af, ptr noundef %i.ah) #24
  br label %cmp_ref_sorting.exit

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp eq i32 %i.m, 0
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !68  ; 5 uses
  br i1 %i.aj, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !114 ; 3 uses
  %i.an = icmp slt i64 %i.am, 0
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !68 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !114 ; 3 uses
  %i.aq = icmp slt i64 %i.ap, 0                   ; 2 uses
  br i1 %i.an, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  br i1 %i.aq, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.ar = and i32 %i.v, 2
  %.not42.i = icmp eq i32 %i.ar, 0
  %i.as = select i1 %.not42.i, ptr @strcmp, ptr @strcasecmp
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !70
  %i.au = load ptr, ptr %.pre.i, align 8, !tbaa !70
  %i.av = call i32 %i.as(ptr noundef %i.at, ptr noundef %i.au) #24, !callees !211, !inline_history !209
  br label %cmp_ref_sorting.exit

.thread.i:                                        ; preds = %bb.q
  %i.aw = load ptr, ptr %i.ak, align 8, !tbaa !70
  %i.ax = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #25
  %.pre4654.i = load ptr, ptr %.pre.i, align 8, !tbaa !70
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  %.pre46.i = load ptr, ptr %.pre.i, align 8, !tbaa !70 ; 3 uses
  br i1 %i.aq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ay = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.pre46.i) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.thread.i
  %.pre4655.i = phi ptr [ %.pre46.i, %bb.t ], [ %.pre46.i, %bb.s ], [ %.pre4654.i, %.thread.i ]
  %i.az = phi i64 [ %i.am, %bb.t ], [ %i.am, %bb.s ], [ %i.ax, %.thread.i ] ; 2 uses
  %i.ba = phi i64 [ %i.ay, %bb.t ], [ %i.ap, %bb.s ], [ %i.ap, %.thread.i ] ; 2 uses
  %i.bb = and i32 %i.v, 2
  %.not40.i = icmp eq i32 %i.bb, 0
  %i.bc = select i1 %.not40.i, ptr @memcmp, ptr @memcasecmp
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !70
  %i.be = call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.az)
  %i.bf = call i32 %i.bc(ptr noundef %i.bd, ptr noundef %.pre4655.i, i64 noundef %i.be) #24, !callees !212, !inline_history !209 ; 2 uses
  %.not41.i = icmp eq i32 %i.bf, 0
  br i1 %.not41.i, label %bb.v, label %cmp_ref_sorting.exit

bb.v:                                             ; preds = %bb.u
  %spec.select43.i = call i32 @llvm.ucmp.i32.i64(i64 %i.az, i64 %i.ba)
  br label %cmp_ref_sorting.exit

bb.w:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !115 ; 2 uses
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !115 ; 2 uses
  %i.bl = icmp ult i64 %i.bh, %i.bk
  br i1 %i.bl, label %cmp_ref_sorting.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = icmp ne i64 %i.bh, %i.bk
  %..i = zext i1 %i.bm to i32
  br label %cmp_ref_sorting.exit

cmp_ref_sorting.exit:                             ; preds = %bb.j, %bb.k, %bb.n, %bb.r, %bb.u, %bb.v, %bb.w, %bb.x
  %4 = phi i1 [ false, %bb.v ], [ false, %bb.n ], [ false, %bb.r ], [ false, %bb.w ], [ false, %bb.u ], [ false, %bb.x ], [ true, %bb.j ], [ true, %bb.k ]
  %.1.i = phi i32 [ %spec.select43.i, %bb.v ], [ %i.ai, %bb.n ], [ %i.av, %bb.r ], [ -1, %bb.w ], [ %i.bf, %bb.u ], [ %..i, %bb.x ], [ -1, %bb.j ], [ 1, %bb.k ] ; 2 uses
  %i.bn = load i32, ptr %i.u, align 4, !tbaa !99
  %5 = and i32 %i.bn, 1
  %6 = icmp eq i32 %5, 0
  %or.cond.i = or i1 %4, %6
  %7 = sub nsw i32 0, %.1.i
  %8 = select i1 %or.cond.i, i32 %.1.i, i32 %7    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not24 = icmp eq i32 %8, 0
  br i1 %.not24, label %bb.y, label %.loopexit.a

bb.y:                                             ; preds = %cmp_ref_sorting.exit
  %i.bo = load ptr, ptr %.01826, align 8, !tbaa !98 ; 2 uses
  %.not = icmp eq ptr %i.bo, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !210

._crit_edge:                                      ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !99
  %i.br = and i32 %i.bq, 2
  %.not23 = icmp eq i32 %i.br, 0
  br i1 %.not23, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.bu = call i32 @strcasecmp(ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bt) #25
  br label %.loopexit.a

bb.aa:                                            ; preds = %bb.a, %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.bx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bv, ptr noundef nonnull dereferenceable(1) %i.bw) #25
  br label %.loopexit.a

.loopexit.a:                                      ; preds = %cmp_ref_sorting.exit, %bb.z, %bb.aa
  %.2 = phi i32 [ %i.bx, %bb.aa ], [ %i.bu, %bb.z ], [ %8, %cmp_ref_sorting.exit ]
  ret i32 %.2
}

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @format_ref_array_item(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ref_formatting_state, align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i64 0, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !35
  store i32 %i.c, ptr %4, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.e = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 56) #24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @strbuf_init(ptr noundef nonnull %i.f, i64 noundef 0) #24
  store ptr null, ptr %i.e, align 8, !tbaa !120
  store ptr %i.e, ptr %i.d, align 8, !tbaa !121
  %i.g = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !22    ; 2 uses
  %.not61 = icmp eq i8 %i.h, 0
  br i1 %.not61, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.m
  %i.i = phi i8 [ %i.ah, %bb.m ], [ %i.h, %bb.a ]
  %.03162 = phi ptr [ %i.ag, %bb.m ], [ %i.g, %bb.a ] ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.e
  %i.j = phi i8 [ %.pr, %bb.e ], [ %i.i, %.preheader ]
  %.0.i = phi ptr [ %i.m, %bb.e ], [ %.03162, %.preheader ] ; 7 uses
  switch i8 %i.j, label %bb.e [
    i8 0, label %.critedge
    i8 37, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !22
  switch i8 %i.l, label %bb.e [
    i8 40, label %find_next.exit
    i8 37, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.1.i = phi ptr [ %i.k, %bb.d ], [ %.0.i, %bb.c ], [ %.0.i, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %.1.i, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.m, align 1, !tbaa !22
  br label %bb.b, !llvm.loop !213

find_next.exit:                                   ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.n = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0.i, i32 noundef 41) #25 ; 2 uses
  %i.o = icmp ult ptr %.03162, %.0.i
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %find_next.exit
  %.val44 = load ptr, ptr %i.d, align 8, !tbaa !122
  call fastcc void @append_literal(ptr noundef nonnull %.03162, ptr noundef nonnull %.0.i, ptr %.val44)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %find_next.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  %i.q = call fastcc i32 @parse_ref_filter_atom(ptr noundef nonnull %1, ptr noundef nonnull %i.p, ptr noundef %i.n, ptr noundef %3) ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.critedge43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call fastcc i32 @get_ref_atom_value(ptr noundef %0, i32 noundef %i.q, ptr noundef %i.a, ptr noundef %3)
  %.not40 = icmp eq i32 %i.s, 0
  br i1 %.not40, label %bb.i, label %.critedge43

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !123
  %i.w = call i32 %i.v(ptr noundef %i.t, ptr noundef nonnull %4, ptr noundef %3) #24
  %.not41 = icmp eq i32 %i.w, 0
  br i1 %.not41, label %bb.m, label %.critedge43

.critedge43:                                      ; preds = %bb.i, %bb.h, %bb.g
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !121  ; 6 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !120  ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge43
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @strbuf_addbuf(ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa) #24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge43
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @strbuf_release(ptr noundef nonnull %i.ab) #24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !124 ; 2 uses
  %.not13.i = icmp eq ptr %i.ad, null
  br i1 %.not13.i, label %pop_stack_element.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !125
  call void %i.ad(ptr noundef %i.af) #24, !inline_history !1
  br label %pop_stack_element.exit

pop_stack_element.exit:                           ; preds = %bb.k, %bb.l
  call void @free(ptr noundef nonnull %i.x) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.x

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !22  ; 2 uses
  %.not = icmp eq i8 %i.ah, 0
  br i1 %.not, label %.critedge.thread, label %.preheader, !llvm.loop !214

.critedge:                                        ; preds = %bb.b
  %i.ai = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.03162) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %.03162, i64 %i.ai
  %.val = load ptr, ptr %i.d, align 8, !tbaa !122
  call fastcc void @append_literal(ptr noundef nonnull %.03162, ptr noundef nonnull %i.aj, ptr %.val)
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.m, %bb.a, %.critedge
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !25
  %.not38 = icmp eq i32 %i.al, 0
  br i1 %.not38, label %append_atom.exit, label %bb.n

bb.n:                                             ; preds = %.critedge.thread
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !122 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !120
  %.not.i45 = icmp eq ptr %i.an, null
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  br i1 %.not.i45, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %4, align 8, !tbaa !118
  call fastcc void @quote_formatting(ptr noundef nonnull %i.ao, ptr noundef nonnull @.str.22, i64 noundef -1, i32 noundef %i.ap)
  br label %append_atom.exit

bb.p:                                             ; preds = %bb.n
  call void @strbuf_add(ptr noundef nonnull %i.ao, ptr noundef nonnull @.str.22, i64 noundef 3) #24
  br label %append_atom.exit

append_atom.exit:                                 ; preds = %bb.p, %bb.o, %.critedge.thread
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !122 ; 6 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !120 ; 3 uses
  %.not39 = icmp eq ptr %i.ar, null
  br i1 %.not39, label %bb.t, label %bb.q

bb.q:                                             ; preds = %append_atom.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  call void @strbuf_addbuf(ptr noundef nonnull %i.as, ptr noundef nonnull %i.at) #24
  call void @strbuf_release(ptr noundef nonnull %i.at) #24
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !124 ; 2 uses
  %.not13.i47 = icmp eq ptr %i.av, null
  br i1 %.not13.i47, label %pop_stack_element.exit48, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !125
  call void %i.av(ptr noundef %i.ax) #24, !inline_history !1
  br label %pop_stack_element.exit48

pop_stack_element.exit48:                         ; preds = %bb.q, %bb.r
  call void @free(ptr noundef nonnull %i.aq) #24
  store ptr %i.ar, ptr %i.d, align 8, !tbaa !121
  %i.ay = load i32, ptr @git_gettext_enabled, align 4, !tbaa !14
  %.not4.i = icmp eq i32 %i.ay, 0
  br i1 %.not4.i, label %_.exit, label %bb.s

bb.s:                                             ; preds = %pop_stack_element.exit48
  %i.az = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #24
  br label %_.exit

_.exit:                                           ; preds = %pop_stack_element.exit48, %bb.s
  %.0.i49 = phi ptr [ %i.az, %bb.s ], [ @.str.23, %pop_stack_element.exit48 ]
  call void (ptr, i32, ptr, ...) @strbuf_addf_ret(ptr noundef %3, i32 poison, ptr noundef %.0.i49)
  br label %bb.x

bb.t:                                             ; preds = %append_atom.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @strbuf_addbuf(ptr noundef %2, ptr noundef nonnull %i.ba) #24
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !121 ; 6 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !120 ; 2 uses
  %.not.i50 = icmp eq ptr %i.bc, null
  br i1 %.not.i50, label %bb.v, label %bb.u

end_hunk_0
