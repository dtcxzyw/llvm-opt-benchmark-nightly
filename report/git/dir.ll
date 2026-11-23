Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/dir?download=true
inline.NumInlined: 229
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@parse_path_pattern:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.03138 = phi i64 [ %i.q, %bb.f ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.032, i64 %.03138
  %i.o = load i8, ptr %i.n, align 1, !tbaa !20
  %i.p = icmp eq i8 %i.o, 47
  br i1 %i.p, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.q = add nuw i64 %.03138, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %.053
  br i1 %exitcond.not, label %._crit_edge.thread58, label %.lr.ph, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph
  %i.r = icmp eq i64 %.03138, %.053
  br i1 %i.r, label %._crit_edge.thread58, label %bb.g

._crit_edge.thread58:                             ; preds = %bb.f, %bb.c, %bb.e, %._crit_edge
  %i.s = phi i32 [ %i.e, %bb.c ], [ %i.m, %._crit_edge ], [ %i.l, %bb.e ], [ %i.m, %bb.f ]
  %.04957 = phi i64 [ 0, %bb.c ], [ %.053, %._crit_edge ], [ 0, %bb.e ], [ %.053, %bb.f ]
  %i.t = or i32 %i.s, 1
  store i32 %i.t, ptr %2, align 4, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread58, %._crit_edge
  %.04956 = phi i64 [ %.04957, %._crit_edge.thread58 ], [ %.053, %._crit_edge ] ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.07.i = phi ptr [ %.032, %bb.g ], [ %i.x, %bb.i ] ; 2 uses
  %.06.i = phi i32 [ -1, %bb.g ], [ %i.v, %bb.i ]
  %i.u = load i8, ptr %.07.i, align 1, !tbaa !20  ; 2 uses
  %i.v = add nsw i32 %.06.i, 1                    ; 2 uses
  %i.w = icmp eq i8 %i.u, 0
  br i1 %i.w, label %simple_length.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.07.i, i64 1
  %i.y = zext i8 %i.u to i64
  %i.z = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !20
  %i.ab = and i8 %i.aa, 8
  %.not.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i, label %bb.h, label %simple_length.exit

simple_length.exit:                               ; preds = %bb.h, %bb.i
  %i.ac = sext i32 %i.v to i64
  %spec.select35 = tail call i64 @llvm.umin.i64(i64 %.04956, i64 %i.ac)
  %spec.select = trunc i64 %spec.select35 to i32
  store i32 %spec.select, ptr %3, align 4, !tbaa !35
  %i.ad = load i8, ptr %.032, align 1, !tbaa !20
  %i.ae = icmp eq i8 %i.ad, 42
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %simple_length.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.032, i64 1 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.07.i.i = phi ptr [ %i.af, %bb.j ], [ %i.aj, %bb.l ] ; 2 uses
  %.06.i.i = phi i32 [ -1, %bb.j ], [ %i.ah, %bb.l ]
  %i.ag = load i8, ptr %.07.i.i, align 1, !tbaa !20 ; 2 uses
  %i.ah = add nsw i32 %.06.i.i, 1                 ; 2 uses
  %i.ai = icmp eq i8 %i.ag, 0
  br i1 %i.ai, label %no_wildcard.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 1
  %i.ak = zext i8 %i.ag to i64
  %i.al = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !20
  %i.an = and i8 %i.am, 8
  %.not.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i, label %bb.k, label %no_wildcard.exit

no_wildcard.exit:                                 ; preds = %bb.k, %bb.l
  %i.ao = sext i32 %i.ah to i64
  %i.ap = getelementptr inbounds i8, ptr %i.af, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !20
  %.not36 = icmp eq i8 %i.aq, 0
  br i1 %.not36, label %bb.m, label %bb.n

bb.m:                                             ; preds = %no_wildcard.exit
  %i.ar = load i32, ptr %2, align 4, !tbaa !35
  %i.as = or i32 %i.ar, 4
  store i32 %i.as, ptr %2, align 4, !tbaa !35
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %no_wildcard.exit, %simple_length.exit
  %i.at = trunc i64 %.04956 to i32
  store ptr %.032, ptr %0, align 8, !tbaa !117
  store i32 %i.at, ptr %1, align 4, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define dso_local i32 @pl_hashmap_cmp(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !121
  %. = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.d) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !122  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !122  ; 2 uses
  %i.i = load i32, ptr @ignore_case, align 4, !tbaa !35
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @strncasecmp(ptr noundef readonly %i.f, ptr noundef readonly %i.h, i64 noundef %.) #27
  br label %git_fspathncmp.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call i32 @strncmp(ptr noundef readonly %i.f, ptr noundef readonly %i.h, i64 noundef %.) #27
  br label %git_fspathncmp.exit

git_fspathncmp.exit:                              ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %i.j, %bb.b ], [ %i.k, %bb.c ]
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @hashmap_contains_parent(ptr noundef %0, ptr noundef %1, ptr noundef initializes((8, 16)) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.pattern_entry, align 8      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i64 0, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %.not9.i = icmp eq ptr %i.c, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.c, align 1, !tbaa !20
  br label %strbuf_setlen.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !20
  %.not10.i = icmp eq i8 %i.d, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #26
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.b, %bb.c
  %i.e = load i8, ptr %1, align 1, !tbaa !20
  %.not = icmp eq i8 %i.e, 47
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %strbuf_setlen.exit
  %i.f = load i64, ptr %2, align 8, !tbaa !27     ; 2 uses
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %strbuf_avail.exit.thread.i, label %strbuf_avail.exit.i

strbuf_avail.exit.i:                              ; preds = %bb.e
  %i.g = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.neg.i = add i64 %i.g, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.f, %.neg.i
  br i1 %.not.i, label %strbuf_avail.exit.thread.i, label %strbuf_addch.exit

strbuf_avail.exit.thread.i:                       ; preds = %strbuf_avail.exit.i, %bb.e
  tail call void @strbuf_grow(ptr noundef nonnull %2, i64 noundef 1) #25
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !25 ; 2 uses
  %.pre7.i = add i64 %.pre.i, 1
  br label %strbuf_addch.exit

strbuf_addch.exit:                                ; preds = %strbuf_avail.exit.i, %strbuf_avail.exit.thread.i
  %.pre-phi.i = phi i64 [ %.pre7.i, %strbuf_avail.exit.thread.i ], [ %.neg.i, %strbuf_avail.exit.i ]
  %i.h = phi i64 [ %.pre.i, %strbuf_avail.exit.thread.i ], [ %i.g, %strbuf_avail.exit.i ]
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !26
  store i64 %.pre-phi.i, ptr %i.a, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  store i8 47, ptr %i.j, align 1, !tbaa !20
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.l = load i64, ptr %i.a, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  store i8 0, ptr %i.m, align 1, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %strbuf_addch.exit, %strbuf_setlen.exit
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  tail call void @strbuf_add(ptr noundef nonnull %2, ptr noundef nonnull %1, i64 noundef %i.n) #25
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !26   ; 3 uses
  %i.p = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.o, i32 noundef 47) #27 ; 2 uses
  %i.q = icmp ugt ptr %i.p, %i.o
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.o
  %.024 = phi ptr [ %i.p, %.lr.ph ], [ %i.ai, %bb.o ]
  %i.u = phi ptr [ %i.o, %.lr.ph ], [ %i.ah, %bb.o ] ; 3 uses
  %i.v = ptrtoint ptr %.024 to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 4 uses
  %i.y = load i64, ptr %2, align 8, !tbaa !27
  %spec.select.i18 = call i64 @llvm.usub.sat.i64(i64 %i.y, i64 1)
  %i.z = icmp ugt i64 %i.x, %spec.select.i18
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.31, i32 noundef 167, ptr noundef nonnull @.str.32) #26
  unreachable

bb.i:                                             ; preds = %bb.g
  store i64 %i.x, ptr %i.a, align 8, !tbaa !25
  %.not9.i19 = icmp eq ptr %i.u, @strbuf_slopbuf
  br i1 %.not9.i19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !20
  %.val.pre = load i64, ptr %i.a, align 8, !tbaa !25
  %.val17.pre = load ptr, ptr %i.b, align 8, !tbaa !26
  br label %strbuf_setlen.exit21

bb.k:                                             ; preds = %bb.i
  %i.ab = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !20
  %.not10.i20 = icmp eq i8 %i.ab, 0
  br i1 %.not10.i20, label %strbuf_setlen.exit21, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @__assert_fail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #26
  unreachable

strbuf_setlen.exit21:                             ; preds = %bb.j, %bb.k
  %.val17 = phi ptr [ %.val17.pre, %bb.j ], [ @strbuf_slopbuf, %bb.k ] ; 3 uses
  %.val = phi i64 [ %.val.pre, %bb.j ], [ %i.x, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %.val17, ptr %i.r, align 8, !tbaa !122
  store i64 %.val, ptr %i.s, align 8, !tbaa !121
  %i.ac = load i32, ptr @ignore_case, align 4, !tbaa !35
  %.not.i.i22 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i22, label %bb.n, label %bb.m

bb.m:                                             ; preds = %strbuf_setlen.exit21
  %i.ad = call i32 @strihash(ptr noundef %.val17) #25
  br label %hashmap_contains_path.exit

bb.n:                                             ; preds = %strbuf_setlen.exit21
  %i.ae = call i32 @strhash(ptr noundef %.val17) #25
  br label %hashmap_contains_path.exit

hashmap_contains_path.exit:                       ; preds = %bb.m, %bb.n
  %i.af = phi i32 [ %i.ad, %bb.m ], [ %i.ae, %bb.n ]
  store i32 %i.af, ptr %i.t, align 8, !tbaa !123
  store ptr null, ptr %3, align 8, !tbaa !124
  %i.ag = call ptr @hashmap_get(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null) #25
  %.not23 = icmp eq ptr %i.ag, null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.not23, label %bb.o, label %._crit_edge

bb.o:                                             ; preds = %hashmap_contains_path.exit
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !26  ; 3 uses
  %i.ai = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.ah, i32 noundef 47) #27 ; 2 uses
  %i.aj = icmp ugt ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.g, label %._crit_edge, !llvm.loop !193

._crit_edge:                                      ; preds = %hashmap_contains_path.exit, %bb.o, %bb.f
  %.014 = phi i32 [ 0, %bb.f ], [ 0, %bb.o ], [ 1, %hashmap_contains_path.exit ]
  ret i32 %.014
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @add_pattern(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.hashmap_iter, align 8       ; 5 uses
  %6 = alloca %struct.hashmap_iter, align 8       ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !20
  %i.c = icmp eq i8 %i.b, 33                      ; 2 uses
  %.0 = select i1 %i.c, i32 16, i32 0             ; 3 uses
  %.032.i.idx = zext i1 %i.c to i64
  %.032.i = getelementptr inbounds nuw i8, ptr %0, i64 %.032.i.idx ; 7 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.032.i) #27 ; 4 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %._crit_edge.thread58.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.032.i, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !20
  %i.h = icmp eq i8 %i.g, 47
  br i1 %i.h, label %bb.c, label %.lr.ph.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %i.d, -1                         ; 2 uses
  %i.j = or disjoint i32 %.0, 8                   ; 2 uses
  %.not41.i = icmp eq i64 %i.i, 0
  br i1 %.not41.i, label %._crit_edge.thread58.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ %i.j, %bb.c ], [ %.0, %bb.b ]   ; 3 uses
  %.053.i = phi i64 [ %i.i, %bb.c ], [ %i.d, %bb.b ] ; 5 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.03138.i = phi i64 [ %i.n, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.032.i, i64 %.03138.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !20
  %i.m = icmp eq i8 %i.l, 47
  br i1 %i.m, label %._crit_edge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.n = add nuw i64 %.03138.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.n, %.053.i
  br i1 %exitcond.not.i, label %._crit_edge.thread58.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.o = icmp eq i64 %.03138.i, %.053.i
  br i1 %i.o, label %._crit_edge.thread58.i, label %bb.e

._crit_edge.thread58.i:                           ; preds = %bb.d, %._crit_edge.i, %bb.c, %bb.a
  %i.p = phi i32 [ %.0, %bb.a ], [ %.1, %._crit_edge.i ], [ %i.j, %bb.c ], [ %.1, %bb.d ]
  %.04957.i = phi i64 [ 0, %bb.a ], [ %.053.i, %._crit_edge.i ], [ 0, %bb.c ], [ %.053.i, %bb.d ]
  %i.q = or i32 %i.p, 1
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread58.i, %._crit_edge.i
  %.2 = phi i32 [ %i.q, %._crit_edge.thread58.i ], [ %.1, %._crit_edge.i ] ; 3 uses
  %.04956.i = phi i64 [ %.04957.i, %._crit_edge.thread58.i ], [ %.053.i, %._crit_edge.i ] ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.07.i.i = phi ptr [ %.032.i, %bb.e ], [ %i.u, %bb.g ] ; 2 uses
  %.06.i.i = phi i32 [ -1, %bb.e ], [ %i.s, %bb.g ]
  %i.r = load i8, ptr %.07.i.i, align 1, !tbaa !20 ; 2 uses
  %i.s = add nsw i32 %.06.i.i, 1                  ; 2 uses
  %i.t = icmp eq i8 %i.r, 0
  br i1 %i.t, label %simple_length.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 1
  %i.v = zext i8 %i.r to i64
  %i.w = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !20
  %i.y = and i8 %i.x, 8
  %.not.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i, label %bb.f, label %simple_length.exit.i

simple_length.exit.i:                             ; preds = %bb.g, %bb.f
  %i.z = sext i32 %i.s to i64
  %spec.select35.i = tail call i64 @llvm.umin.i64(i64 %.04956.i, i64 %i.z)
  %spec.select.i = trunc i64 %spec.select35.i to i32
  %i.aa = load i8, ptr %.032.i, align 1, !tbaa !20
  %i.ab = icmp eq i8 %i.aa, 42
  br i1 %i.ab, label %bb.h, label %parse_path_pattern.exit

bb.h:                                             ; preds = %simple_length.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.032.i, i64 1 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.07.i.i.i = phi ptr [ %i.ac, %bb.h ], [ %i.ag, %bb.j ] ; 2 uses
  %.06.i.i.i = phi i32 [ -1, %bb.h ], [ %i.ae, %bb.j ]
  %i.ad = load i8, ptr %.07.i.i.i, align 1, !tbaa !20 ; 2 uses
  %i.ae = add nsw i32 %.06.i.i.i, 1               ; 2 uses
  %i.af = icmp eq i8 %i.ad, 0
  br i1 %i.af, label %no_wildcard.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 1
  %i.ah = zext i8 %i.ad to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !20
  %i.ak = and i8 %i.aj, 8
  %.not.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i, label %bb.i, label %no_wildcard.exit.i

no_wildcard.exit.i:                               ; preds = %bb.j, %bb.i
  %i.al = sext i32 %i.ae to i64
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !20
  %.not36.i = icmp eq i8 %i.an, 0
  %i.ao = or i32 %.2, 4
  %spec.select = select i1 %.not36.i, i32 %i.ao, i32 %.2
  br label %parse_path_pattern.exit

parse_path_pattern.exit:                          ; preds = %no_wildcard.exit.i, %simple_length.exit.i
  %.3 = phi i32 [ %.2, %simple_length.exit.i ], [ %spec.select, %no_wildcard.exit.i ]
  %i.ap = trunc i64 %.04956.i to i32
  %sext = shl i64 %.04956.i, 32
  %i.aq = ashr exact i64 %sext, 32                ; 3 uses
  %i.ar = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.aq, i64 40) ; 2 uses
  %i.as = extractvalue { i64, i1 } %i.ar, 1
  br i1 %i.as, label %bb.k, label %st_add.exit

bb.k:                                             ; preds = %parse_path_pattern.exit
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.36, i64 noundef 40, i64 noundef %i.aq) #26
  unreachable

st_add.exit:                                      ; preds = %parse_path_pattern.exit
  %i.at = extractvalue { i64, i1 } %i.ar, 0       ; 2 uses
  %i.au = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.at, i64 1) ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 1
  br i1 %i.av, label %bb.l, label %st_add.exit32

bb.l:                                             ; preds = %st_add.exit
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.36, i64 noundef %i.at, i64 noundef 1) #26
  unreachable

st_add.exit32:                                    ; preds = %st_add.exit
  %i.aw = extractvalue { i64, i1 } %i.au, 0
  %i.ax = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %i.aw) #25 ; 17 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 36 ; 16 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr nonnull align 1 %.032.i, i64 %i.aq, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  store i32 %i.ap, ptr %i.az, align 8, !tbaa !35
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 %spec.select.i, ptr %i.ba, align 4, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %1, ptr %i.bb, align 8, !tbaa !117
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i32 %2, ptr %i.bc, align 8, !tbaa !35
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 28 ; 2 uses
  store i32 %.3, ptr %i.bd, align 4, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i32 %4, ptr %i.be, align 8, !tbaa !35
  %i.bf = load i32, ptr %3, align 8, !tbaa !127   ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !195 ; 2 uses
  %.not = icmp slt i32 %i.bf, %i.bh
  br i1 %.not, label %st_add.exit32._crit_edge, label %bb.m

end_hunk_0
begin_hunk_1_@match_pathname:bb.a
git_fspathncmp.exit58:                            ; preds = %bb.i, %bb.j
  %i.w = phi i32 [ %i.u, %bb.i ], [ %i.v, %bb.j ]
  %.not56 = icmp eq i32 %i.w, 0
  br i1 %.not56, label %bb.k, label %bb.q

bb.k:                                             ; preds = %git_fspathncmp.exit58
  %i.x = icmp eq i32 %6, %5
  %i.y = icmp eq i32 %i.m, %.044
  %or.cond = and i1 %i.x, %i.y
  br i1 %or.cond, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = add nsw i32 %.044, -1                    ; 3 uses
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.045, i64 %i.aa
  %i.ac = sub nsw i32 %.043, %i.z
  %i.ad = getelementptr inbounds i8, ptr %i.r, i64 %i.aa
  %i.ae = sub nsw i32 %i.m, %i.z
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %.146 = phi ptr [ %i.ab, %bb.l ], [ %.045, %bb.f ] ; 3 uses
  %.1 = phi i32 [ %i.ac, %bb.l ], [ %.043, %bb.f ]
  %.042 = phi ptr [ %i.ad, %bb.l ], [ %i.r, %bb.f ] ; 3 uses
  %.0 = phi i32 [ %i.ae, %bb.l ], [ %i.m, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) @__const.connect_wt_gitdir_in_nested.sub_gd, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) @__const.connect_wt_gitdir_in_nested.sub_gd, i64 24, i1 false)
  %i.af = sext i32 %.1 to i64                     ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.146, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !20
  %.not.i59 = icmp eq i8 %i.ah, 0
  br i1 %.not.i59, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @strbuf_add(ptr noundef nonnull %7, ptr noundef nonnull %.146, i64 noundef %i.af) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.014.i = phi ptr [ %i.aj, %bb.n ], [ %.146, %bb.m ]
  %i.ak = sext i32 %.0 to i64                     ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.042, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !20
  %.not16.i = icmp eq i8 %i.am, 0
  br i1 %.not16.i, label %fnmatch_icase_mem.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @strbuf_add(ptr noundef nonnull %8, ptr noundef nonnull %.042, i64 noundef %i.ak) #25
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !26
  br label %fnmatch_icase_mem.exit

fnmatch_icase_mem.exit:                           ; preds = %bb.o, %bb.p
  %.0.i = phi ptr [ %i.ao, %bb.p ], [ %.042, %bb.o ]
  %i.ap = load i32, ptr @ignore_case, align 4, !tbaa !35
  %.not17.i = icmp ne i32 %i.ap, 0
  %i.aq = zext i1 %.not17.i to i32
  %spec.select.i = or disjoint i32 %i.aq, 2
  %i.ar = call i32 @wildmatch(ptr noundef %.014.i, ptr noundef %.0.i, i32 noundef %spec.select.i) #25
  call void @strbuf_release(ptr noundef nonnull %7) #25
  call void @strbuf_release(ptr noundef nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.as = icmp eq i32 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %git_fspathncmp.exit58, %bb.g, %bb.a, %bb.c, %git_fspathncmp.exit, %fnmatch_icase_mem.exit
  %.047 = phi i32 [ %i.at, %fnmatch_icase_mem.exit ], [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %git_fspathncmp.exit58 ], [ 0, %git_fspathncmp.exit ], [ 0, %bb.c ], [ 1, %bb.k ]
  ret i32 %.047
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 3) i32 @path_matches_pattern_list(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.pattern_entry, align 8      ; 7 uses
  %7 = alloca %struct.pattern_entry, align 8      ; 7 uses
  %8 = alloca %struct.strbuf, align 8             ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) @__const.connect_wt_gitdir_in_nested.sub_gd, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !130
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @last_matching_pattern_from_list(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5) ; 2 uses
  %.not25 = icmp eq ptr %i.c, null
  br i1 %.not25, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !35
  %i.f = lshr i32 %i.e, 4
  %.lobit = and i32 %i.f, 1
  %. = xor i32 %.lobit, 1
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !131
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %strbuf_addch.exit, label %bb.v

strbuf_addch.exit:                                ; preds = %bb.d
  call void @strbuf_grow(ptr noundef nonnull %8, i64 noundef 1) #25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !26
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !25 ; 2 uses
  %.pre7.i = add i64 %.pre.i, 1
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i64 %.pre7.i, ptr %i.j, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 %.pre.i
  store i8 47, ptr %i.k, align 1, !tbaa !20
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.m = load i64, ptr %i.j, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  store i8 0, ptr %i.n, align 1, !tbaa !20
  %i.o = sext i32 %1 to i64
  call void @strbuf_add(ptr noundef nonnull %8, ptr noundef %0, i64 noundef %i.o) #25
  %i.p = load i64, ptr %i.j, align 8, !tbaa !25   ; 3 uses
  %.not28 = icmp eq i64 %i.p, 0
  %.pre42 = load ptr, ptr %i.i, align 8, !tbaa !26 ; 4 uses
  br i1 %.not28, label %bb.g, label %bb.e

bb.e:                                             ; preds = %strbuf_addch.exit
  %i.q = add i64 %i.p, -1                         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pre42, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !20
  %i.t = icmp eq i8 %i.s, 47
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @strbuf_add(ptr noundef nonnull %8, ptr noundef nonnull @.str.5, i64 noundef 1) #25
  %.val35.pre = load i64, ptr %i.j, align 8, !tbaa !25
  %.val36.pre = load ptr, ptr %i.i, align 8, !tbaa !26
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %strbuf_addch.exit
  %i.u = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %.pre42, i32 noundef 47) #27 ; 2 uses
  %.not29 = icmp eq ptr %i.u, null
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %.pre42 to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = select i1 %.not29, i64 0, i64 %i.x
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.val36 = phi ptr [ %.val36.pre, %bb.f ], [ %.pre42, %bb.g ] ; 3 uses
  %.val35 = phi i64 [ %.val35.pre, %bb.f ], [ %i.p, %bb.g ]
  %.021 = phi i64 [ %i.q, %bb.f ], [ %i.y, %bb.g ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.val36, ptr %i.aa, align 8, !tbaa !122
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.val35, ptr %i.ab, align 8, !tbaa !121
  %i.ac = load i32, ptr @ignore_case, align 4, !tbaa !35
  %.not.i.i37 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = call i32 @strihash(ptr noundef %.val36) #25
  br label %hashmap_contains_path.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = call i32 @strhash(ptr noundef %.val36) #25
  br label %hashmap_contains_path.exit

hashmap_contains_path.exit:                       ; preds = %bb.i, %bb.j
  %i.af = phi i32 [ %i.ad, %bb.i ], [ %i.ae, %bb.j ]
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !123
  store ptr null, ptr %7, align 8, !tbaa !124
  %i.ah = call ptr @hashmap_get(ptr noundef nonnull %i.z, ptr noundef nonnull %7, ptr noundef null) #25
  %.not40 = icmp eq ptr %i.ah, null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.not40, label %bb.k, label %bb.u

bb.k:                                             ; preds = %hashmap_contains_path.exit
  %.not31 = icmp eq i64 %.021, 0
  br i1 %.not31, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load i64, ptr %8, align 8, !tbaa !27
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %i.ai, i64 1)
  %i.aj = icmp ugt i64 %.021, %spec.select.i
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.31, i32 noundef 167, ptr noundef nonnull @.str.32) #26
  unreachable

bb.n:                                             ; preds = %bb.l
  store i64 %.021, ptr %i.j, align 8, !tbaa !25
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !26  ; 2 uses
  %.not9.i = icmp eq ptr %i.ak, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.021
  store i8 0, ptr %i.al, align 1, !tbaa !20
  %.val.pre = load i64, ptr %i.j, align 8, !tbaa !25
  %.val34.pre = load ptr, ptr %i.i, align 8, !tbaa !26
  br label %strbuf_setlen.exit

bb.p:                                             ; preds = %bb.n
  %i.am = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !20
  %.not10.i = icmp eq i8 %i.am, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @__assert_fail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #26
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.o, %bb.p
  %.val34 = phi ptr [ %.val34.pre, %bb.o ], [ @strbuf_slopbuf, %bb.p ] ; 3 uses
  %.val = phi i64 [ %.val.pre, %bb.o ], [ %.021, %bb.p ]
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.val34, ptr %i.ao, align 8, !tbaa !122
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %.val, ptr %i.ap, align 8, !tbaa !121
  %i.aq = load i32, ptr @ignore_case, align 4, !tbaa !35
  %.not.i.i38 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i38, label %bb.s, label %bb.r

bb.r:                                             ; preds = %strbuf_setlen.exit
  %i.ar = call i32 @strihash(ptr noundef %.val34) #25
  br label %hashmap_contains_path.exit39

bb.s:                                             ; preds = %strbuf_setlen.exit
  %i.as = call i32 @strhash(ptr noundef %.val34) #25
  br label %hashmap_contains_path.exit39

hashmap_contains_path.exit39:                     ; preds = %bb.r, %bb.s
  %i.at = phi i32 [ %i.ar, %bb.r ], [ %i.as, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.at, ptr %i.au, align 8, !tbaa !123
  store ptr null, ptr %6, align 8, !tbaa !124
  %i.av = call ptr @hashmap_get(ptr noundef nonnull %i.an, ptr noundef nonnull %6, ptr noundef null) #25
  %.not41 = icmp eq ptr %i.av, null
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %.not41, label %bb.t, label %bb.u

bb.t:                                             ; preds = %hashmap_contains_path.exit39
  %i.aw = call i32 @hashmap_contains_parent(ptr noundef nonnull %i.z, ptr noundef %0, ptr noundef nonnull %8)
  %.not33 = icmp eq i32 %i.aw, 0
  %spec.select = select i1 %.not33, i32 0, i32 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %hashmap_contains_path.exit39, %bb.k, %hashmap_contains_path.exit
  %.022 = phi i32 [ 2, %hashmap_contains_path.exit ], [ 1, %bb.k ], [ 1, %hashmap_contains_path.exit39 ], [ %spec.select, %bb.t ]
  call void @strbuf_release(ptr noundef nonnull %8) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.u
  %.0 = phi i32 [ -1, %bb.b ], [ %.022, %bb.u ], [ %., %bb.c ], [ 1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @last_matching_pattern_from_list(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %4, align 8, !tbaa !127    ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %0 to i64
  %.neg = sub i64 %i.e, %i.d
  %i.f = trunc i64 %.neg to i32
  %i.g = add i32 %1, %i.f
  %i.h = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %select.unfold
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %select.unfold ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !128
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !129  ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !35   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 28 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !35   ; 2 uses
  %i.q = and i32 %i.p, 8
  %.not45 = icmp eq i32 %i.q, 0
  br i1 %.not45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %3, align 4, !tbaa !35
  %i.s = tail call fastcc i32 @resolve_dtype(i32 noundef %i.r, ptr noundef %5, ptr noundef %0, i32 noundef %1) ; 2 uses
  store i32 %i.s, ptr %3, align 4, !tbaa !35
  %.not46 = icmp eq i32 %i.s, 4
  br i1 %.not46, label %._crit_edge, label %select.unfold

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i32, ptr %i.o, align 4, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.t = phi i32 [ %.pre, %._crit_edge ], [ %i.p, %bb.b ] ; 2 uses
  %i.u = and i32 %i.t, 1
  %.not47 = icmp eq i32 %i.u, 0
  br i1 %.not47, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !35
  %i.x = tail call i32 @match_basename(ptr noundef %2, i32 noundef %i.g, ptr noundef nonnull %i.l, i32 noundef %i.n, i32 noundef %i.w, i32 noundef %i.t)
  %.not50 = icmp eq i32 %i.x, 0
  br i1 %.not50, label %select.unfold, label %.thread

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !35   ; 3 uses
  %i.aa = icmp eq i32 %i.z, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.pre64 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !117 ; 2 uses
  br i1 %i.aa, label %._crit_edge63, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr i8, ptr %.pre64, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !20
  %i.af = icmp eq i8 %i.ae, 47
  br i1 %i.af, label %._crit_edge63, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str, i32 noundef 1459, ptr noundef nonnull @__PRETTY_FUNCTION__.last_matching_pattern_from_list) #26
  unreachable

._crit_edge63:                                    ; preds = %bb.f, %bb.g
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %i.z, i32 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !35
  %i.ai = tail call i32 @match_pathname(ptr noundef %0, i32 noundef %1, ptr noundef %.pre64, i32 noundef %spec.select, ptr noundef nonnull %i.l, i32 noundef %i.n, i32 noundef %i.ah)
  %.not49 = icmp eq i32 %i.ai, 0
  br i1 %.not49, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.e, %._crit_edge63, %bb.c
  %i.aj = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.aj, label %bb.b, label %.thread, !llvm.loop !4

.thread:                                          ; preds = %select.unfold, %._crit_edge63, %bb.e, %bb.a
  %.041 = phi ptr [ null, %bb.a ], [ null, %select.unfold ], [ %i.k, %._crit_edge63 ], [ %i.k, %bb.e ]
  ret ptr %.041
}

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @strbuf_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @init_sparse_checkout_patterns(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !136
  %i.b = tail call ptr @repo_config_values(ptr noundef %i.a) #25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !202
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !145
  %.not6 = icmp eq ptr %i.f, null
  br i1 %.not6, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 128) #25 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !145
  %i.h = load ptr, ptr @the_repository, align 8, !tbaa !136
  %i.i = tail call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.h, ptr noundef nonnull @.str.18) #25 ; 2 uses
  %i.j = load ptr, ptr @the_repository, align 8, !tbaa !136
  %i.k = tail call ptr @repo_config_values(ptr noundef %i.j) #25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !146
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 %i.m, ptr %i.n, align 8, !tbaa !130
  %i.o = tail call fastcc range(i32 -1, 1) i32 @add_patterns(ptr noundef %i.i, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %i.g, ptr noundef null, i32 noundef 0, ptr noundef null)
  tail call void @free(ptr noundef %i.i) #25
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !145
  tail call void @free(ptr noundef %i.q) #25
  store ptr null, ptr %i.e, align 8, !tbaa !145
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 1, %bb.a ], [ -1, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare ptr @repo_config_values(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @get_sparse_checkout_patterns(ptr noundef initializes((24, 28)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !136
  %i.b = tail call ptr (ptr, ptr, ...) @repo_git_path(ptr noundef %i.a, ptr noundef nonnull @.str.18) #25 ; 2 uses
  %i.c = load ptr, ptr @the_repository, align 8, !tbaa !136
  %i.d = tail call ptr @repo_config_values(ptr noundef %i.c) #25
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !146
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.f, ptr %i.g, align 8, !tbaa !130
  %i.h = tail call fastcc range(i32 -1, 1) i32 @add_patterns(ptr noundef %i.b, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef null)
end_hunk_1
