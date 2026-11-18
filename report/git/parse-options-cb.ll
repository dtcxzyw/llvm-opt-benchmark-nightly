Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/parse-options-cb?download=true
inline.NumInlined: 34
inline.NumDeleted: 10
begin_hunk_0_@parse_opt_commit:bb.a

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr @the_repository, align 8, !tbaa !23
  %i.d = call i32 @repo_get_oid(ptr noundef %i.c, ptr noundef nonnull %1, ptr noundef nonnull %3) #12
  %.not12 = icmp eq i32 %i.d, 0
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.7, ptr noundef nonnull %1) #12 ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.f = load ptr, ptr @the_repository, align 8, !tbaa !23
  %i.g = call ptr @lookup_commit_reference(ptr noundef %i.f, ptr noundef nonnull %3) #12 ; 2 uses
  %.not13 = icmp eq ptr %i.g, null
  br i1 %.not13, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.8, ptr noundef nonnull %1) #12 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store ptr %i.g, ptr %i.b, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.g, %bb.e
  %.0 = phi i32 [ -1, %bb.e ], [ 0, %bb.h ], [ -1, %bb.g ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @parse_opt_object_name(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.object_id, align 4          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @oid_array_clear(ptr noundef %i.b) #12
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.not7 = icmp eq ptr %1, null
  br i1 %.not7, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr @the_repository, align 8, !tbaa !23
  %i.d = call i32 @repo_get_oid(ptr noundef %i.c, ptr noundef nonnull %1, ptr noundef nonnull %3) #12
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load i32, ptr @git_gettext_enabled, align 4, !tbaa !16
  %.not4.i = icmp eq i32 %i.e, 0
  br i1 %.not4.i, label %_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #12
  br label %_.exit

_.exit:                                           ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.f, %bb.f ], [ @.str.9, %bb.e ]
  %i.g = call i32 (ptr, ...) @error(ptr noundef %.0.i, ptr noundef nonnull %1) #12 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  call void @oid_array_append(ptr noundef %i.i, ptr noundef nonnull %3) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %_.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %_.exit ], [ 0, %bb.g ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %.0
}

declare void @oid_array_clear(ptr noundef) local_unnamed_addr #2

declare void @oid_array_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @parse_opt_object_id(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.object_id, align 4          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @the_repository, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.f = tail call ptr @null_oid(ptr noundef %i.e) #12 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.h, ptr %i.i, align 4, !tbaa !54
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.not8 = icmp eq ptr %1, null
  br i1 %.not8, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @the_repository, align 8, !tbaa !23
  %i.k = call i32 @repo_get_oid(ptr noundef %i.j, ptr noundef nonnull %1, ptr noundef nonnull %3) #12
  %.not9 = icmp eq i32 %i.k, 0
  br i1 %.not9, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr @git_gettext_enabled, align 4, !tbaa !16
  %.not4.i = icmp eq i32 %i.l, 0
  br i1 %.not4.i, label %_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #12
  br label %_.exit

_.exit:                                           ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.m, %bb.f ], [ @.str.9, %bb.e ]
  %i.n = call i32 (ptr, ...) @error(ptr noundef %.0.i, ptr noundef nonnull %1) #12 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.b, ptr noundef nonnull align 4 dereferenceable(36) %3, i64 36, i1 false), !tbaa.struct !55
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %_.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %_.exit ], [ 0, %bb.g ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %.0
}

declare ptr @null_oid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @parse_opt_tertiary(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.4, i32 noundef 163, ptr noundef nonnull @.str.5) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %.not3 = icmp eq i32 %2, 0
  %i.c = select i1 %.not3, i32 1, i32 2
  store i32 %i.c, ptr %i.b, align 4, !tbaa !16
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @parse_options_dup(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.option], align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %1, i8 0, i64 96, i1 false)
  %i.a = call ptr @parse_options_concat(ptr noundef %0, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local ptr @parse_options_concat(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not6.i = icmp eq ptr %0, null
  br i1 %.not6.i, label %parse_options_count.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !56
  %.not5.i22 = icmp eq i32 %i.a, 0
  br i1 %.not5.i22, label %parse_options_count.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.047.i24 = phi ptr [ %i.c, %.lr.ph.i ], [ %0, %.lr.ph.i.preheader ]
  %.08.i23 = phi i64 [ %i.b, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.b = add i64 %.08.i23, 1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.047.i24, i64 96 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56
  %.not5.i = icmp eq i32 %i.d, 0
  br i1 %.not5.i, label %parse_options_count.exit, label %.lr.ph.i

parse_options_count.exit:                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ], [ %i.b, %.lr.ph.i ] ; 7 uses
  %.not6.i11 = icmp eq ptr %1, null
  br i1 %.not6.i11, label %parse_options_count.exit17, label %.lr.ph.i12.preheader

.lr.ph.i12.preheader:                             ; preds = %parse_options_count.exit
  %i.e = load i32, ptr %1, align 8, !tbaa !56
  %.not5.i1525 = icmp eq i32 %i.e, 0
  br i1 %.not5.i1525, label %parse_options_count.exit17, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %.lr.ph.i12.preheader, %.lr.ph.i12
  %.047.i1427 = phi ptr [ %i.g, %.lr.ph.i12 ], [ %1, %.lr.ph.i12.preheader ]
  %.08.i1326 = phi i64 [ %i.f, %.lr.ph.i12 ], [ 0, %.lr.ph.i12.preheader ]
  %i.f = add i64 %.08.i1326, 1                    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.047.i1427, i64 96 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !56
  %.not5.i15 = icmp eq i32 %i.h, 0
  br i1 %.not5.i15, label %parse_options_count.exit17, label %.lr.ph.i12

parse_options_count.exit17:                       ; preds = %.lr.ph.i12, %.lr.ph.i12.preheader, %parse_options_count.exit
  %.0.lcssa.i16 = phi i64 [ 0, %parse_options_count.exit ], [ 0, %.lr.ph.i12.preheader ], [ %i.f, %.lr.ph.i12 ] ; 3 uses
  %i.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0.lcssa.i, i64 %.0.lcssa.i16) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %bb.b, label %st_add.exit

bb.b:                                             ; preds = %parse_options_count.exit17
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.16, i64 noundef %.0.lcssa.i, i64 noundef %.0.lcssa.i16) #13
  unreachable

st_add.exit:                                      ; preds = %parse_options_count.exit17
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  %i.l = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.k, i64 1) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.c, label %st_add.exit18

bb.c:                                             ; preds = %st_add.exit
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.16, i64 noundef %i.k, i64 noundef 1) #13
  unreachable

st_add.exit18:                                    ; preds = %st_add.exit
  %i.n = extractvalue { i64, i1 } %i.l, 0         ; 3 uses
  %i.o = icmp ugt i64 %i.n, 192153584101141162
  br i1 %i.o, label %bb.d, label %st_mult.exit

bb.d:                                             ; preds = %st_add.exit18
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.15, i64 noundef 96, i64 noundef %i.n) #13
  unreachable

st_mult.exit:                                     ; preds = %st_add.exit18
  %i.p = mul nuw i64 %i.n, 96
  %i.q = tail call ptr @xmalloc(i64 noundef %i.p) #12 ; 3 uses
  %.not.i = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not.i, label %copy_array.exit, label %2

2:                                                ; preds = %st_mult.exit
  %3 = icmp ugt i64 %.0.lcssa.i, 192153584101141162
  br i1 %3, label %4, label %st_mult.exit.i

4:                                                ; preds = %2
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.15, i64 noundef 96, i64 noundef %.0.lcssa.i) #13
  unreachable

st_mult.exit.i:                                   ; preds = %2
  %i.r = mul nuw i64 %.0.lcssa.i, 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr readonly align 1 %0, i64 %i.r, i1 false)
  br label %copy_array.exit

copy_array.exit:                                  ; preds = %st_mult.exit, %st_mult.exit.i
  %i.s = getelementptr inbounds nuw [96 x i8], ptr %i.q, i64 %.0.lcssa.i
  %i.t = add i64 %.0.lcssa.i16, 1                 ; 4 uses
  %.not.i19 = icmp eq i64 %i.t, 0
  br i1 %.not.i19, label %copy_array.exit21, label %5

5:                                                ; preds = %copy_array.exit
  %6 = icmp ugt i64 %i.t, 192153584101141162
  br i1 %6, label %7, label %st_mult.exit.i20

7:                                                ; preds = %5
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.15, i64 noundef 96, i64 noundef %i.t) #13
  unreachable

st_mult.exit.i20:                                 ; preds = %5
  %8 = mul nuw i64 %i.t, 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr readonly align 1 %1, i64 %8, i1 false)
  br label %copy_array.exit21

copy_array.exit21:                                ; preds = %copy_array.exit, %st_mult.exit.i20
  ret ptr %i.q
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @parse_opt_string_list(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @string_list_clear(ptr noundef %i.b, i32 noundef 0) #12
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not7 = icmp eq ptr %1, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr @string_list_append(ptr noundef %i.b, ptr noundef nonnull %1) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ -1, %bb.c ]
  ret i32 %.0
}

declare void @string_list_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @string_list_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @parse_opt_strvec(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @strvec_clear(ptr noundef %i.b) #12
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not7 = icmp eq ptr %1, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr @strvec_push(ptr noundef %i.b, ptr noundef nonnull %1) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ -1, %bb.c ]
  ret i32 %.0
}

declare void @strvec_clear(ptr noundef) local_unnamed_addr #2

declare ptr @strvec_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @parse_opt_noop_cb(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @parse_opt_passthru(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = tail call fastcc i32 @recreate_opt(ptr noundef nonnull @parse_opt_passthru.sb, ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.e) #12
  %i.f = tail call ptr @strbuf_detach(ptr noundef nonnull @parse_opt_passthru.sb, ptr noundef null) #12
  store ptr %i.f, ptr %i.b, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @recreate_opt(ptr noundef initializes((8, 16)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  store i64 0, ptr %i.a, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %.not9.i = icmp eq ptr %i.c, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.c, align 1, !tbaa !15
  br label %strbuf_setlen.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !15
  %.not10.i = icmp eq i8 %i.d, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #13
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %strbuf_setlen.exit
  %.not21 = icmp eq i32 %3, 0                     ; 2 uses
  %i.g = select i1 %.not21, ptr @.str.18, ptr @.str.17
  %i.h = select i1 %.not21, i64 2, i64 5
  tail call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i64 noundef %i.h) #12
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #14
  tail call void @strbuf_add(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i64 noundef %i.j) #12
  %.not22 = icmp eq ptr %2, null
  br i1 %.not22, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load i64, ptr %0, align 8, !tbaa !58     ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %strbuf_avail.exit.thread.i, label %strbuf_avail.exit.i

strbuf_avail.exit.i:                              ; preds = %bb.f
  %i.l = load i64, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.neg.i = add i64 %i.l, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.k, %.neg.i
  br i1 %.not.i, label %strbuf_avail.exit.thread.i, label %strbuf_addch.exit

strbuf_avail.exit.thread.i:                       ; preds = %strbuf_avail.exit.i, %bb.f
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #12
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !57 ; 2 uses
  %.pre7.i = add i64 %.pre.i, 1
  br label %strbuf_addch.exit

strbuf_addch.exit:                                ; preds = %strbuf_avail.exit.i, %strbuf_avail.exit.thread.i
  %.pre-phi.i = phi i64 [ %.pre7.i, %strbuf_avail.exit.thread.i ], [ %.neg.i, %strbuf_avail.exit.i ]
  %i.m = phi i64 [ %.pre.i, %strbuf_avail.exit.thread.i ], [ %i.l, %strbuf_avail.exit.i ]
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !25
  store i64 %.pre-phi.i, ptr %i.a, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 61, ptr %i.o, align 1, !tbaa !15
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.q = load i64, ptr %i.a, align 8, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  store i8 0, ptr %i.r, align 1, !tbaa !15
  br label %.sink.split

bb.g:                                             ; preds = %strbuf_setlen.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !21
  %i.u = icmp eq i32 %i.t, 0
  %i.v = icmp ne i32 %3, 0
  %or.cond = or i1 %i.v, %i.u
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr %0, align 8, !tbaa !58     ; 2 uses
  %.not.i.i23 = icmp eq i64 %i.w, 0
  br i1 %.not.i.i23, label %strbuf_avail.exit.thread.i28, label %strbuf_avail.exit.i24

strbuf_avail.exit.i24:                            ; preds = %bb.h
  %i.x = load i64, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.neg.i25 = add i64 %i.x, 1                     ; 2 uses
  %.not.i26 = icmp eq i64 %i.w, %.neg.i25
  br i1 %.not.i26, label %strbuf_avail.exit.thread.i28, label %strbuf_addch.exit32

strbuf_avail.exit.thread.i28:                     ; preds = %strbuf_avail.exit.i24, %bb.h
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #12
  %.pre.i30 = load i64, ptr %i.a, align 8, !tbaa !57 ; 2 uses
  %.pre7.i31 = add i64 %.pre.i30, 1
  br label %strbuf_addch.exit32

strbuf_addch.exit32:                              ; preds = %strbuf_avail.exit.i24, %strbuf_avail.exit.thread.i28
  %.pre-phi.i27 = phi i64 [ %.pre7.i31, %strbuf_avail.exit.thread.i28 ], [ %.neg.i25, %strbuf_avail.exit.i24 ]
  %i.y = phi i64 [ %.pre.i30, %strbuf_avail.exit.thread.i28 ], [ %i.x, %strbuf_avail.exit.i24 ]
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !25
  store i64 %.pre-phi.i27, ptr %i.a, align 8, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 45, ptr %i.aa, align 1, !tbaa !15
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  store i8 0, ptr %i.ad, align 1, !tbaa !15
  %i.ae = load i32, ptr %i.s, align 4, !tbaa !21
  %i.af = load i64, ptr %0, align 8, !tbaa !58    ; 2 uses
  %.not.i.i33 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i33, label %strbuf_avail.exit.thread.i38, label %strbuf_avail.exit.i34
end_hunk_0
