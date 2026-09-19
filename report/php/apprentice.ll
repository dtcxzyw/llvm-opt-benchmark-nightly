Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/apprentice?download=true
inline.NumInlined: 57
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 18
begin_hunk_0_@get_standard_integer_type:bb.a
  br i1 %i.m, label %switch.hole_check, label %bb.l

switch.hole_check:                                ; preds = %bb.d
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 82497, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.l

switch.lookup:                                    ; preds = %switch.hole_check
  %i.n = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.get_standard_integer_type, i64 %i.n
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.p = and i32 %i.k, 2048
  %.not18 = icmp eq i32 %i.p, 0
  br i1 %.not18, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 5 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !43
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !36
  %i.v = and i16 %i.u, 2048
  %.not19 = icmp eq i16 %i.v, 0
  br i1 %.not19, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  switch i8 %i.d, label %bb.l [
    i8 49, label %bb.k
    i8 50, label %bb.h
    i8 52, label %bb.i
    i8 56, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  br label %bb.k

bb.k:                                             ; preds = %switch.lookup, %bb.g, %bb.j, %bb.i, %bb.h, %bb.e
  %.015 = phi ptr [ %i.o, %switch.lookup ], [ %i.q, %bb.h ], [ %i.q, %bb.g ], [ %i.q, %bb.j ], [ %i.q, %bb.i ], [ %i.c, %bb.e ]
  %.2 = phi i32 [ %switch.ext, %switch.lookup ], [ 2, %bb.h ], [ 1, %bb.g ], [ 24, %bb.j ], [ 4, %bb.i ], [ 4, %bb.e ]
  store ptr %.015, ptr %1, align 8, !tbaa !40
  br label %bb.l

bb.l:                                             ; preds = %switch.hole_check, %bb.d, %bb.g, %bb.f, %bb.b, %bb.a, %bb.k
  %.014 = phi i32 [ 0, %bb.f ], [ 0, %bb.a ], [ 0, %bb.b ], [ %.2, %bb.k ], [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %switch.hole_check ]
  ret i32 %.014
}

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare hidden void @file_mdump(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @eatsize(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #18 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.b = tail call ptr @__ctype_b_loc() #30
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71   ; 2 uses
  %i.d = load i8, ptr %i.a, align 1, !tbaa !43    ; 2 uses
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !36
  %i.h = and i16 %i.g, 256
  %.not = icmp eq i16 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__ctype_tolower_loc() #30
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.e
  %i.l = load i32, ptr %i.k, align 4, !tbaa !32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = sext i8 %i.d to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %i.l, %bb.b ], [ %i.m, %bb.c ]
  %i.o = icmp eq i32 %i.n, 117
  %spec.select.idx = zext i1 %i.o to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.idx ; 3 uses
  %i.p = load i8, ptr %spec.select, align 1, !tbaa !43 ; 2 uses
  %i.q = zext i8 %i.p to i64                      ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !36
  %i.t = and i16 %i.s, 256
  %.not14 = icmp eq i16 %i.t, 0
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call ptr @__ctype_tolower_loc() #30
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !74
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.q
  %i.x = load i32, ptr %i.w, align 4, !tbaa !32
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.y = sext i8 %i.p to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = phi i32 [ %i.x, %bb.e ], [ %i.y, %bb.f ]
  switch i32 %i.z, label %bb.i [
    i32 108, label %bb.h
    i32 115, label %bb.h
    i32 104, label %bb.h
    i32 98, label %bb.h
    i32 99, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1 = phi ptr [ %spec.select, %bb.g ], [ %i.aa, %bb.h ]
  store ptr %.1, ptr %0, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #4

declare ptr @convert_libmagic_pattern(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @pcre_get_compiled_regex_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #19

declare hidden i32 @file_parse_guid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i64 -1, 17) i64 @typesize(i32 noundef range(i32 0, 256) %0) unnamed_addr #20 {
bb.a:
  %trunc = trunc nuw i32 %0 to i8
  %switch.tableidx = add i8 %trunc, -1            ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 58
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.typesize, i64 %i.b
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i64 [ %switch.load, %switch.lookup ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

declare hidden i32 @file_looks_utf8(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mkdbname(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.preheader39, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 47) #31 ; 2 uses
  %.not32 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %spec.select = select i1 %.not32, ptr %1, ptr %i.c
  br label %.preheader39

.preheader39:                                     ; preds = %bb.b, %bb.a
  %.030 = phi ptr [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 13 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.030)
  %scevgep = getelementptr i8, ptr %.030, i64 %strlen ; 7 uses
  %.not46 = icmp ult ptr %scevgep, %.030
  br i1 %.not46, label %.preheader.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader39
  %3 = load i8, ptr %scevgep, align 1, !tbaa !43
  %.not34 = icmp eq i8 %3, 0
  br i1 %.not34, label %4, label %.preheader.preheader

4:                                                ; preds = %.lr.ph
  %5 = getelementptr inbounds i8, ptr %scevgep, i64 -1 ; 3 uses
  %.not62 = icmp ult ptr %5, %.030
  br i1 %.not62, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %4
  %6 = load i8, ptr %5, align 1, !tbaa !43
  %.not34.1 = icmp eq i8 %6, 99
  br i1 %.not34.1, label %7, label %.preheader.preheader

7:                                                ; preds = %.lr.ph.1
  %8 = getelementptr inbounds i8, ptr %scevgep, i64 -2 ; 3 uses
  %.not63 = icmp ult ptr %8, %.030
  br i1 %.not63, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %7
  %9 = load i8, ptr %8, align 1, !tbaa !43
  %.not34.2 = icmp eq i8 %9, 103
  br i1 %.not34.2, label %10, label %.preheader.preheader

10:                                               ; preds = %.lr.ph.2
  %11 = getelementptr inbounds i8, ptr %scevgep, i64 -3 ; 3 uses
  %.not64 = icmp ult ptr %11, %.030
  br i1 %.not64, label %._crit_edge, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %10
  %i.d = load i8, ptr %11, align 1, !tbaa !43
  %.not34.a = icmp eq i8 %i.d, 109
  br i1 %.not34.a, label %bb.c, label %.preheader.preheader

bb.c:                                             ; preds = %.lr.ph.a
  %i.e = getelementptr inbounds i8, ptr %scevgep, i64 -4 ; 3 uses
  %.not65 = icmp ult ptr %i.e, %.030
  br i1 %.not65, label %._crit_edge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.c
  %12 = load i8, ptr %i.e, align 1, !tbaa !43
  %.not34.4 = icmp eq i8 %12, 46
  br i1 %.not34.4, label %13, label %.preheader.preheader

13:                                               ; preds = %.lr.ph.4
  %14 = getelementptr inbounds i8, ptr %scevgep, i64 -5
  br label %._crit_edge

._crit_edge:                                      ; preds = %13, %bb.c, %10, %7, %4
  %.lcssa61 = phi ptr [ %5, %4 ], [ %8, %7 ], [ %11, %10 ], [ %i.e, %bb.c ], [ %14, %13 ]
  %.lcssa = phi i1 [ true, %4 ], [ true, %7 ], [ true, %10 ], [ true, %bb.c ], [ false, %13 ]
  br i1 %.lcssa, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.a, %.lr.ph.4, %.preheader39, %._crit_edge
  %strlen47 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.030)
  %scevgep48 = getelementptr i8, ptr %.030, i64 %strlen47
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %._crit_edge
  %.3 = phi ptr [ %.lcssa61, %._crit_edge ], [ %scevgep48, %.preheader.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !53
  %i.i = and i32 %i.h, 1040
  %.not36 = icmp eq i32 %i.i, 0
  %.pre = ptrtoint ptr %i.f to i64
  %.pre49 = ptrtoint ptr %.030 to i64
  %.pre51 = sub i64 %.pre, %.pre49
  %.pre53 = trunc i64 %.pre51 to i32              ; 2 uses
  br i1 %.not36, label %.loopexit._crit_edge, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.j = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.a, i64 noundef 4096, ptr noundef nonnull @.str.99, i32 noundef %.pre53, ptr noundef nonnull %.030, ptr noundef nonnull @ext) #28 ; 0 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.l = call i32 @access(ptr noundef %i.k, i32 noundef 4) #28
  %.not37 = icmp eq i32 %i.l, -1
  br i1 %.not37, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !40
  call void @_efree(ptr noundef %i.m) #28
  br label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit, %bb.e
  %i.n = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.a, i64 noundef 4096, ptr noundef nonnull @.str.100, i32 noundef %.pre53, ptr noundef nonnull %.030, ptr noundef nonnull @ext) #28 ; 0 uses
  %i.o = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.030, ptr noundef nonnull dereferenceable(1) @.str.101) #31
  %.not38 = icmp eq ptr %i.o, null
  br i1 %.not38, label %bb.f, label %.sink.split

.sink.split:                                      ; preds = %.loopexit._crit_edge, %bb.d
  %i.p = load i32, ptr %i.g, align 4, !tbaa !53
  %i.q = and i32 %i.p, 16
  store i32 %i.q, ptr %i.g, align 4, !tbaa !53
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %.loopexit._crit_edge
  %.029 = load ptr, ptr %i.a, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret ptr %.029
}

declare i64 @_php_stream_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i64 @zend_spprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #8

declare i32 @_php_stream_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @_php_stream_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @file_badread(ptr noundef) local_unnamed_addr #2

declare hidden void @file_magwarn1(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i64 1, 0) i64 @nonmagic(ptr nofree noundef readonly captures(none) %0) unnamed_addr #23 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.020 = phi ptr [ %0, %bb.a ], [ %i.k, %bb.g ]  ; 12 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %.1, %bb.g ]      ; 11 uses
  %i.a = load i8, ptr %.020, align 1, !tbaa !43   ; 3 uses
  switch i8 %i.a, label %bb.f [
    i8 0, label %bb.h
    i8 92, label %bb.c
    i8 63, label %bb.g
    i8 42, label %bb.g
    i8 46, label %bb.g
    i8 43, label %bb.g
    i8 94, label %bb.g
    i8 36, label %bb.g
    i8 91, label %.preheader
    i8 123, label %.preheader33
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.020, i64 1 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !43
  %.not30 = icmp eq i8 %i.c, 0
  %spec.select = select i1 %.not30, ptr %.020, ptr %i.b
  %i.d = add i64 %.0, 1
  br label %bb.g

.preheader:                                       ; preds = %bb.b, %bb.d
  %i.e = phi i8 [ %.pr, %bb.d ], [ %i.a, %bb.b ]
  %.2 = phi ptr [ %i.f, %bb.d ], [ %.020, %bb.b ] ; 2 uses
  switch i8 %i.e, label %bb.d [
    i8 0, label %.critedge
    i8 93, label %.critedge
  ]

bb.d:                                             ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.f, align 1, !tbaa !43
  br label %.preheader, !llvm.loop !159

.critedge:                                        ; preds = %.preheader, %.preheader
  %i.g = getelementptr inbounds i8, ptr %.2, i64 -1
  br label %bb.g

.preheader33:                                     ; preds = %bb.b, %bb.e
  %i.h = phi i8 [ %.pr32, %bb.e ], [ %i.a, %bb.b ] ; 2 uses
  %.3 = phi ptr [ %i.i, %bb.e ], [ %.020, %bb.b ] ; 2 uses
  switch i8 %i.h, label %bb.e [
    i8 0, label %.critedge2
    i8 125, label %.critedge2
  ]

bb.e:                                             ; preds = %.preheader33
  %i.i = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %.pr32 = load i8, ptr %i.i, align 1, !tbaa !43
  br label %.preheader33, !llvm.loop !160

.critedge2:                                       ; preds = %.preheader33, %.preheader33
  %.not27 = icmp eq i8 %i.h, 0
  %spec.select31.idx = sext i1 %.not27 to i64
  %spec.select31 = getelementptr inbounds i8, ptr %.3, i64 %spec.select31.idx
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.j = add i64 %.0, 1
  br label %bb.g

bb.g:                                             ; preds = %.critedge2, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.f, %.critedge, %bb.c
  %.4 = phi ptr [ %.020, %bb.f ], [ %spec.select, %bb.c ], [ %.020, %bb.b ], [ %.020, %bb.b ], [ %.020, %bb.b ], [ %.020, %bb.b ], [ %.020, %bb.b ], [ %.020, %bb.b ], [ %i.g, %.critedge ], [ %spec.select31, %.critedge2 ]
  %.1 = phi i64 [ %i.j, %bb.f ], [ %i.d, %bb.c ], [ %.0, %bb.b ], [ %.0, %bb.b ], [ %.0, %bb.b ], [ %.0, %bb.b ], [ %.0, %bb.b ], [ %.0, %bb.b ], [ %.0, %.critedge ], [ %.0, %.critedge2 ]
  %i.k = getelementptr inbounds nuw i8, ptr %.4, i64 1
  br label %bb.b, !llvm.loop !161

bb.h:                                             ; preds = %bb.b
  %i.l = tail call i64 @llvm.umax.i64(i64 %.0, i64 1)
  ret i64 %i.l
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #24

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nofree nounwind }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { nounwind allocsize(0,1) }
attributes #30 = { nounwind willreturn memory(none) }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { nounwind allocsize(0) }
attributes #33 = { cold nounwind }
attributes #34 = { noreturn nounwind }
attributes #35 = { nounwind allocsize(1) }
attributes #36 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS5mlist", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!"p1 _ZTS10level_info", !12, i64 0}
!17 = !{!"cont", !15, i64 0, !16, i64 8}
!18 = !{!"p1 omnipotent char", !12, i64 0}
!19 = !{!"out", !18, i64 0, !15, i64 8, !18, i64 16}
!20 = !{!"short", !8, i64 0}
!21 = !{!"", !18, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!22 = !{!"magic_set", !8, i64 0, !17, i64 16, !19, i64 32, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !18, i64 80, !15, i64 88, !9, i64 96, !20, i64 100, !21, i64 104, !8, i64 136, !20, i64 264, !20, i64 266, !20, i64 268, !20, i64 270, !20, i64 272, !20, i64 274, !20, i64 276, !15, i64 280, !15, i64 288, !15, i64 296}
!23 = !{!22, !16, i64 24}
!24 = !{!"p1 _ZTS5magic", !12, i64 0}
!25 = !{!"mlist", !24, i64 0, !15, i64 8, !12, i64 16, !13, i64 24, !13, i64 32}
!26 = !{!25, !13, i64 24}
!27 = !{!25, !12, i64 16}
!28 = !{!"magic_map", !12, i64 0, !15, i64 8, !9, i64 16, !8, i64 24, !8, i64 40}
!29 = !{!28, !12, i64 0}
!30 = !{!24, !24, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!9, !9, i64 0}
!33 = !{!22, !18, i64 80}
!34 = !{!22, !15, i64 88}
!35 = !{!22, !20, i64 100}
!36 = !{!20, !20, i64 0}
!37 = !{!22, !20, i64 276}
!38 = !{!"type_tbl_s", !8, i64 0, !15, i64 16, !9, i64 24, !9, i64 28}
!39 = !{!38, !9, i64 24}
!40 = !{!18, !18, i64 0}
!41 = !{!38, !15, i64 16}
!42 = !{!25, !13, i64 32}
!43 = !{!8, !8, i64 0}
!44 = !{!"timespec", !15, i64 0, !15, i64 8}
!45 = !{!"stat", !15, i64 0, !15, i64 8, !15, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !44, i64 72, !44, i64 88, !44, i64 104, !8, i64 120}
!46 = !{!28, !9, i64 16}
!47 = !{!"magic", !20, i64 0, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !9, i64 12, !9, i64 16, !9, i64 20, !8, i64 24, !8, i64 32, !8, i64 160, !8, i64 224, !8, i64 304, !8, i64 312}
!48 = !{!47, !20, i64 0}
!49 = !{!47, !9, i64 12}
!50 = !{!47, !9, i64 16}
!51 = !{!47, !9, i64 20}
!52 = !{!47, !8, i64 6}
!53 = !{!22, !9, i64 68}
!54 = !{!25, !24, i64 0}
!55 = !{!25, !15, i64 8}
!56 = !{!47, !8, i64 11}
!57 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!47, !8, i64 5}
!60 = !{!47, !8, i64 4}
!61 = !{!47, !8, i64 3}
!62 = !{!47, !8, i64 2}
!63 = !{!15, !15, i64 0}
!64 = !{!"p1 _ZTS11magic_entry", !12, i64 0}
!65 = !{!"magic_entry_set", !64, i64 0, !9, i64 8, !9, i64 12}
!66 = !{!65, !9, i64 8}
!67 = !{!65, !64, i64 0}
!68 = !{!"magic_entry", !24, i64 0, !9, i64 8, !9, i64 12}
!69 = !{!68, !24, i64 0}
!70 = !{!"p1 short", !12, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!68, !9, i64 8}
!73 = !{!"p1 int", !12, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!22, !18, i64 48}
!76 = !{!22, !18, i64 32}
!77 = distinct !{!77, !31}
!78 = !{!22, !15, i64 16}
!79 = !{!22, !9, i64 72}
!80 = !{!22, !9, i64 64}
!81 = !{!22, !15, i64 296}
!82 = !{!22, !20, i64 272}
!83 = !{!22, !20, i64 274}
!84 = !{!22, !15, i64 280}
!85 = !{!22, !15, i64 288}
!86 = distinct !{!86, !31}
!87 = distinct !{!87, !31}
!88 = !{!38, !9, i64 28}
!89 = distinct !{!89, !31}
!90 = !{!"_php_stream_statbuf", !45, i64 0}
!91 = !{!90, !15, i64 48}
!92 = !{!28, !15, i64 8}
!93 = distinct !{!93, !31}
!94 = distinct !{!94, !31}
!95 = distinct !{!95, !31}
!96 = distinct !{!96, !31}
!97 = distinct !{!97, !31}
!98 = distinct !{!98, !31}
!99 = distinct !{!99, !31}
!100 = distinct !{!100, !31}
!101 = distinct !{!101, !31}
!102 = distinct !{!102, !31}
!103 = distinct !{!103, !31}
!104 = distinct !{!104, !31}
!105 = distinct !{!105, !31, !111, !112}
!106 = distinct !{!106, !31, !112, !111}
!107 = distinct !{!107, !31}
!108 = distinct !{!108, !31}
!109 = distinct !{!109, !31}
!110 = !{!45, !9, i64 24}
!111 = !{!"llvm.loop.isvectorized", i32 1}
!112 = !{!"llvm.loop.unroll.runtime.disable"}
!113 = distinct !{!113, !31}
!114 = distinct !{!114, !31}
!115 = distinct !{!115, !31}
!116 = distinct !{!116, !31}
!117 = distinct !{!117, !31}
!118 = distinct !{!118, !31}
!119 = distinct !{!119, !31}
!120 = distinct !{!120, !31}
!121 = distinct !{!121, !31}
!122 = distinct !{!122, !31}
!123 = distinct !{!123, !31}
!124 = distinct !{!124, !31}
!125 = distinct !{!125, !31}
!126 = distinct !{!126, !31}
!127 = distinct !{!127, !31}
!128 = distinct !{!128, !31}
!129 = distinct !{!129, !31}
!130 = distinct !{!130, !31}
!131 = distinct !{!131, !31}
!132 = distinct !{!132, !31}
!133 = distinct !{!133, !31}
!134 = distinct !{!134, !31}
!135 = distinct !{!135, !31}
!136 = distinct !{!136, !31}
!137 = distinct !{!137, !31}
!138 = !{!"", !18, i64 0, !15, i64 8, !12, i64 16}
!139 = !{!138, !12, i64 16}
!140 = !{!138, !15, i64 8}
!141 = !{!68, !9, i64 12}
!142 = !{!47, !8, i64 7}
!143 = !{!47, !8, i64 8}
!144 = !{!"cond_tbl_s", !8, i64 0, !15, i64 8, !9, i64 16}
!145 = !{!144, !9, i64 16}
!146 = !{!47, !8, i64 10}
!147 = !{!"level_info", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!148 = !{!147, !9, i64 12}
!149 = !{!47, !8, i64 9}
!150 = !{!"_zend_refcounted_h", !9, i64 0, !8, i64 4}
!151 = !{!150, !9, i64 0}
!152 = !{!65, !9, i64 12}
!153 = !{i64 0, i64 8, !30, i64 8, i64 4, !32, i64 12, i64 4, !32}
!154 = !{i64 0, i64 2, !36, i64 2, i64 1, !43, i64 3, i64 1, !43, i64 4, i64 1, !43, i64 5, i64 1, !43, i64 6, i64 1, !43, i64 7, i64 1, !43, i64 8, i64 1, !43, i64 9, i64 1, !43, i64 10, i64 1, !43, i64 11, i64 1, !43, i64 12, i64 4, !32, i64 16, i64 4, !32, i64 20, i64 4, !32, i64 24, i64 8, !43, i64 32, i64 128, !43, i64 160, i64 64, !43, i64 224, i64 80, !43, i64 304, i64 8, !43, i64 312, i64 120, !43}
!155 = distinct !{!155, !31}
!156 = distinct !{!156, !31}
!157 = distinct !{!157, !31}
!158 = distinct !{!158, !31}
!159 = distinct !{!159, !31}
!160 = distinct !{!160, !31}
!161 = distinct !{!161, !31}
end_hunk_0
