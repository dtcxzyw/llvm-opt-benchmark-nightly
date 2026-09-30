Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pmix_mca_base_component_find?download=true
inline.NumInlined: 15
inline.NumDeleted: 10
begin_hunk_0_@pmix_mca_base_component_find:bb.a
  %.034 = phi i32 [ -1, %pmix_mca_base_component_parse_requested.exit ], [ %.280, %pmix_obj_new_tma.exit.thread77 ], [ %.2, %pmix_obj_new_tma.exit ], [ 0, %bb.aa ]
  ret i32 %.034
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @pmix_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @pmix_mca_base_component_parse_requested(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #0 {
bb.a:
  store ptr null, ptr %2, align 8, !tbaa !61
  store i8 1, ptr %1, align 1, !tbaa !42
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %char0 = load i8, ptr %0, align 1               ; 2 uses
  %i.b = icmp eq i8 %char0, 0
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr @negate, align 1, !tbaa !27
  %i.d = icmp ne i8 %char0, %i.c
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr %1, align 1, !tbaa !42
  %i.f = tail call i64 @strspn(ptr noundef nonnull %0, ptr noundef nonnull @negate) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @negate) #13
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef nonnull %0) #12 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = tail call ptr @PMIx_Argv_split(ptr noundef nonnull %i.g, i32 noundef 44) #12
  store ptr %i.j, ptr %2, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.e ], [ -1, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @PMIx_Argv_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @pmix_mca_base_component_find_finalize() local_unnamed_addr #3 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -46, 1) i32 @pmix_mca_base_components_filter(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.c = load i32, ptr %i.b, align 4, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %component_find_check.exit.thread64, label %bb.b

bb.b:                                             ; preds = %bb.a
  %char0.i = load i8, ptr %i.e, align 1           ; 2 uses
  %i.g = icmp eq i8 %char0.i, 0
  br i1 %i.g, label %component_find_check.exit.thread64, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @strspn(ptr noundef nonnull %i.e, ptr noundef nonnull @negate) #13
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h ; 2 uses
  %i.j = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) @negate) #13
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %pmix_mca_base_component_parse_requested.exit

pmix_mca_base_component_parse_requested.exit:     ; preds = %bb.c
  %i.k = tail call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef nonnull %i.e) #12 ; 0 uses
  br label %component_find_check.exit.thread64

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr @negate, align 1, !tbaa !27
  %.not = icmp eq i8 %char0.i, %i.l               ; 3 uses
  %i.m = tail call ptr @PMIx_Argv_split(ptr noundef nonnull %i.i, i32 noundef 44) #12 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66   ; 2 uses
  %.not3470 = icmp eq ptr %i.p, %i.n
  br i1 %.not3470, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.q = icmp eq ptr %i.m, null
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  br i1 %i.q, label %._crit_edge, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph, %use_component.exit.thread
  %.02971 = phi ptr [ %.02872, %use_component.exit.thread ], [ %i.p, %.lr.ph ] ; 12 uses
  %.02872.in = getelementptr inbounds nuw i8, ptr %.02971, i64 120
  %.02872 = load ptr, ptr %.02872.in, align 8, !tbaa !39 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.02971, i64 144
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 84
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !29   ; 2 uses
  %.not15.not.i = icmp eq ptr %i.v, null
  br i1 %.not15.not.i, label %use_component.exit.thr_comm, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.016.i, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29   ; 2 uses
  %.not.not.i = icmp eq ptr %i.x, null
  br i1 %.not.not.i, label %use_component.exit.thr_comm, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.e
  %i.y = phi ptr [ %i.x, %bb.e ], [ %i.v, %.preheader.i ]
  %.016.i = phi ptr [ %i.w, %bb.e ], [ %i.m, %.preheader.i ]
  %i.z = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(1) %i.y) #13
  %.not.i37 = icmp eq i32 %i.z, 0
  br i1 %.not.i37, label %use_component.exit, label %bb.e

use_component.exit.thr_comm:                      ; preds = %bb.e, %.preheader.i
  br i1 %.not, label %use_component.exit.thread, label %bb.f

use_component.exit:                               ; preds = %.lr.ph.i
  br i1 %.not, label %bb.f, label %use_component.exit.thread

bb.f:                                             ; preds = %use_component.exit.thr_comm, %use_component.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.02971, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  store volatile ptr %.02872, ptr %i.ac, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %.02872, i64 128
  store volatile ptr %i.ab, ptr %i.ad, align 8, !tbaa !38
  %i.ae = load volatile i64, ptr %i.r, align 8, !tbaa !40
  %i.af = add i64 %i.ae, -1
  store volatile i64 %i.af, ptr %i.r, align 8, !tbaa !40
  tail call void @pmix_mca_base_component_unload(ptr noundef %i.t, i32 noundef %i.c) #12
  %i.ag = tail call i32 @pthread_mutex_lock(ptr noundef %.02971) #12
  %i.ah = icmp eq i32 %i.ag, 35
  br i1 %i.ah, label %bb.g, label %pmix_obj_update.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = tail call ptr @__errno_location() #15
  store i32 35, ptr %i.ai, align 4, !tbaa !32
  tail call void @perror(ptr noundef nonnull @.str.5) #16
  tail call void @abort() #17
  unreachable

pmix_obj_update.exit:                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.02971, i64 48 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !34
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !34
  %i.am = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %.02971) #12 ; 0 uses
  %i.an = icmp eq i32 %i.al, 0
  br i1 %i.an, label %bb.h, label %use_component.exit.thread

bb.h:                                             ; preds = %pmix_obj_update.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %.02971, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !67 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !35 ; 2 uses
  %.not6.i = icmp eq ptr %i.as, null
  br i1 %.not6.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.h, %.lr.ph.i38
  %i.at = phi ptr [ %i.av, %.lr.ph.i38 ], [ %i.as, %bb.h ]
  %.07.i = phi ptr [ %i.au, %.lr.ph.i38 ], [ %i.ar, %bb.h ]
  tail call void %i.at(ptr noundef nonnull %.02971) #12, !inline_history !62
  %i.au = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !35 ; 2 uses
  %.not.i39 = icmp eq ptr %i.av, null
  br i1 %.not.i39, label %pmix_obj_run_destructors.exit, label %.lr.ph.i38, !llvm.loop !63

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i38, %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %.02971, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !68 ; 2 uses
  %.not36 = icmp eq ptr %i.ax, null
  br i1 %.not36, label %bb.j, label %bb.i

bb.i:                                             ; preds = %pmix_obj_run_destructors.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %.02971, i64 56
  tail call void %i.ax(ptr noundef nonnull %i.ay, ptr noundef nonnull %.02971) #12, !inline_history !64
  br label %use_component.exit.thread

bb.j:                                             ; preds = %pmix_obj_run_destructors.exit
  tail call void @free(ptr noundef nonnull %.02971) #12
  br label %use_component.exit.thread

use_component.exit.thread:                        ; preds = %use_component.exit.thr_comm, %pmix_obj_update.exit, %bb.j, %bb.i, %use_component.exit
  %.not34 = icmp eq ptr %.02872, %i.n
  br i1 %.not34, label %._crit_edge, label %.preheader.i, !llvm.loop !65

._crit_edge:                                      ; preds = %use_component.exit.thread, %.lr.ph, %bb.d
  %.050.ph86 = phi ptr [ %i.m, %bb.d ], [ null, %.lr.ph ], [ %i.m, %use_component.exit.thread ] ; 5 uses
  %i.az = icmp eq ptr %.050.ph86, null
  br i1 %i.az, label %component_find_check.exit.thread64, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  br i1 %.not, label %component_find_check.exit.thread, label %.preheader.i42

.preheader.i42:                                   ; preds = %bb.k
  %i.ba = load ptr, ptr %.050.ph86, align 8, !tbaa !29 ; 2 uses
  %.not2935.i = icmp eq ptr %i.ba, null
  br i1 %.not2935.i, label %component_find_check.exit.thread, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %.preheader.i42
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.l

bb.l:                                             ; preds = %.critedge.i, %.lr.ph37.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph37.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 2 uses
  %i.bc = phi ptr [ %i.ba, %.lr.ph37.i ], [ %i.bs, %.critedge.i ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.050.ph86, i64 %indvars.iv.i
  %.02432.i = load ptr, ptr %i.o, align 8, !tbaa !39 ; 2 uses
  %.not30.not33.i = icmp eq ptr %.02432.i, %i.n
  br i1 %.not30.not33.i, label %._crit_edge.i44, label %.lr.ph.i43

bb.m:                                             ; preds = %.lr.ph.i43
  %i.be = getelementptr inbounds nuw i8, ptr %.02434.i, i64 120
  %.024.i = load ptr, ptr %i.be, align 8, !tbaa !39 ; 2 uses
  %.not30.not.i = icmp eq ptr %.024.i, %i.n
  br i1 %.not30.not.i, label %._crit_edge.i44, label %.lr.ph.i43, !llvm.loop !1

.lr.ph.i43:                                       ; preds = %bb.l, %bb.m
  %.02434.i = phi ptr [ %.024.i, %bb.m ], [ %.02432.i, %bb.l ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.02434.i, i64 144
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 84
  %i.bi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bc, ptr noundef nonnull dereferenceable(1) %i.bh) #13
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.critedge.i, label %bb.m

._crit_edge.i44:                                  ; preds = %bb.m, %bb.l
  %i.bk = load ptr, ptr @pmix_mca_base_component_show_load_errors, align 8
  %.not.i45 = icmp eq ptr %i.bk, null
  br i1 %.not.i45, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65) %i.a, i8 0, i64 65, i1 false)
  %i.bl = call i32 @gethostname(ptr noundef nonnull %i.a, i64 noundef 64) #12 ; 0 uses
  %i.bm = load ptr, ptr %i.bb, align 8, !tbaa !25
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !29
  %i.bo = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef %i.bm, ptr noundef %i.bn) #12 ; 0 uses
  %i.bp = load i8, ptr @pmix_mca_base_component_abort_on_load_error, align 1, !tbaa !42, !range !41, !noundef !43
  %i.bq = trunc nuw i8 %i.bp to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br i1 %i.bq, label %component_find_check.exit.thread, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i43, %bb.n, %._crit_edge.i44
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.050.ph86, i64 %indvars.iv.next.i
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !29 ; 2 uses
  %.not29.i = icmp eq ptr %i.bs, null
  br i1 %.not29.i, label %component_find_check.exit.thread, label %bb.l, !llvm.loop !2

component_find_check.exit.thread:                 ; preds = %.critedge.i, %bb.n, %bb.k, %.preheader.i42
  %.063 = phi i32 [ 0, %bb.k ], [ 0, %.preheader.i42 ], [ -46, %bb.n ], [ 0, %.critedge.i ]
  call void @PMIx_Argv_free(ptr noundef nonnull %.050.ph86) #12
  br label %component_find_check.exit.thread64

component_find_check.exit.thread64:               ; preds = %._crit_edge, %bb.b, %pmix_mca_base_component_parse_requested.exit, %component_find_check.exit.thread, %bb.a
  %.030 = phi i32 [ -1, %pmix_mca_base_component_parse_requested.exit ], [ 0, %bb.a ], [ %.063, %component_find_check.exit.thread ], [ 0, %bb.b ], [ 0, %._crit_edge ]
  ret i32 %.030
}

declare void @pmix_mca_base_component_unload(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @pmix_show_help(ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

declare ptr @PMIx_Argv_split(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @pmix_class_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

declare i32 @pmix_mca_base_component_repository_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pmix_mca_base_component_repository_get_components(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pmix_mca_base_component_repository_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nounwind
declare i32 @gethostname(ptr noundef, i64 noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { cold }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !30}
!1 = distinct !{!1, !30}
!2 = distinct !{!2, !30}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"any p2 pointer", !11, i64 0}
!14 = !{!"p2 _ZTS31pmix_mca_base_component_2_1_0_t", !13, i64 0}
!15 = !{!"p1 _ZTS12pmix_class_t", !11, i64 0}
!16 = !{!"pmix_tma", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !13, i64 56}
!17 = !{!"pmix_object_t", !7, i64 0, !15, i64 40, !8, i64 48, !16, i64 56}
!18 = !{!"p1 _ZTS16pmix_list_item_t", !11, i64 0}
!19 = !{!"pmix_list_item_t", !17, i64 0, !18, i64 120, !18, i64 128, !8, i64 136}
!20 = !{!"long", !7, i64 0}
!21 = !{!"pmix_list_t", !17, i64 0, !19, i64 120, !20, i64 264}
!22 = !{!"pmix_mca_base_framework_t", !12, i64 0, !12, i64 8, !12, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !8, i64 48, !8, i64 52, !14, i64 56, !12, i64 64, !8, i64 72, !8, i64 76, !21, i64 80, !21, i64 352}
!23 = !{!22, !8, i64 76}
!24 = !{!"_Bool", !7, i64 0}
!25 = !{!22, !12, i64 8}
!26 = !{!22, !12, i64 64}
!27 = !{!7, !7, i64 0}
!28 = !{!"p1 _ZTS31pmix_mca_base_component_2_1_0_t", !11, i64 0}
!29 = !{!12, !12, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"pmix_class_t", !12, i64 0, !15, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !13, i64 40, !13, i64 48, !20, i64 56}
!32 = !{!8, !8, i64 0}
!33 = !{!17, !15, i64 40}
!34 = !{!17, !8, i64 48}
!35 = !{!11, !11, i64 0}
!36 = !{!"pmix_mca_base_component_list_item_t", !19, i64 0, !28, i64 144}
!37 = !{!36, !28, i64 144}
!38 = !{!19, !18, i64 128}
!39 = !{!19, !18, i64 120}
!40 = !{!21, !20, i64 264}
!41 = !{i8 0, i8 2}
!42 = !{!24, !24, i64 0}
!43 = !{}
!44 = distinct !{null, null}
!45 = distinct !{!45, !30}
!46 = distinct !{!46, !30}
!47 = distinct !{!47, !30}
!48 = distinct !{!48, !30, !59}
!49 = !{!22, !14, i64 56}
!50 = !{!"", !24, i64 0, !24, i64 1, !8, i64 4, !24, i64 8, !8, i64 12, !12, i64 16, !12, i64 24, !8, i64 32, !12, i64 40, !8, i64 48, !24, i64 52, !24, i64 53, !24, i64 54, !24, i64 55, !12, i64 56, !8, i64 64, !8, i64 68}
!51 = !{!50, !8, i64 4}
!52 = !{!28, !28, i64 0}
!53 = !{!31, !20, i64 56}
!54 = !{!31, !8, i64 32}
!55 = !{!31, !13, i64 40}
!56 = !{!22, !12, i64 0}
!57 = !{!"p1 _ZTS11pmix_list_t", !11, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"llvm.loop.unswitch.partial.disable"}
!60 = !{!"p2 omnipotent char", !13, i64 0}
!61 = !{!60, !60, i64 0}
!62 = distinct !{null}
!63 = distinct !{!63, !30}
!64 = distinct !{null}
!65 = distinct !{!65, !30}
!66 = !{!21, !18, i64 240}
!67 = !{!31, !13, i64 48}
!68 = !{!17, !11, i64 96}
end_hunk_0
