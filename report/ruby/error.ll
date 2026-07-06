inline.NumInlined: 575
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@rb_bug_without_die_internal:bb.a
  store volatile ptr %i.f, ptr %i.b, align 8, !tbaa !32
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.0..0..0..0..0..0..i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @rb_source_location_cstr(ptr noundef nonnull %i.c) #32
  %.pre = load i32, ptr %i.c, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %.pre, %bb.b ], [ 0, %bb.a ]
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store i32 -1, ptr %i.d, align 4, !tbaa !7
  %i.i = call fastcc ptr @bug_report_file(ptr noundef %.0, i32 noundef %i.h, ptr noundef %i.d) ; 9 uses
  %.not8 = icmp eq ptr %i.i, null
  br i1 %.not8, label %bug_report_end.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.j = call i64 @fwrite(ptr nonnull @.str.275, i64 6, i64 1, ptr nonnull %i.i) ; 0 uses
  %i.k = call i32 @ruby_vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef %0, ptr noundef nonnull %1) #32 ; 0 uses
  %i.l = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef nonnull %i.i) ; 0 uses
  %i.m = load ptr, ptr @rb_dynamic_description, align 8, !tbaa !31
  %i.n = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef nonnull @.str.13, ptr noundef %i.m) #32 ; 0 uses
  %i.o = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef nonnull %i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.p = call zeroext i1 @rb_vm_bugreport(ptr noundef null, ptr noundef nonnull %i.i) #32 ; 0 uses
  %i.q = load i32, ptr %i.d, align 4, !tbaa !7    ; 2 uses
  %i.r = load i32, ptr @bug_reporters_size, align 4, !tbaa !7
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.d ] ; 2 uses
  %i.t = getelementptr [16 x i8], ptr @bug_reporters, i64 %indvars.iv.i ; 2 uses
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !28
  %i.v = getelementptr i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30
  call void %i.u(ptr noundef nonnull %i.i, ptr noundef %i.w) #32, !inline_history !34
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.x = load i32, ptr @bug_reporters_size, align 4, !tbaa !7
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv.next.i, %i.y
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !35

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.d
  %i.aa = load ptr, ptr @stdout, align 8, !tbaa !37
  %.not.i.i = icmp eq ptr %i.i, %i.aa
  %i.ab = load ptr, ptr @stderr, align 8
  %.not5.i.i = icmp eq ptr %i.i, %i.ab
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %or.cond.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.ac = call i32 @fclose(ptr noundef nonnull %i.i) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.ad = icmp sgt i32 %i.q, 0
  br i1 %i.ad, label %bb.g, label %bug_report_end.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = call i32 @waitpid(i32 noundef %i.q, ptr noundef null, i32 noundef 0) #32 ; 0 uses
  br label %bug_report_end.exit

bug_report_end.exit:                              ; preds = %bb.g, %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  ret void
}

; Function Attrs: cold noreturn nounwind optsize sspstrong uwtable
define dso_local void @rb_bug(ptr noundef nonnull %0, ...) local_unnamed_addr #10 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.va_start.p0(ptr nonnull %1)
  call fastcc void @rb_bug_without_die_internal(ptr noundef nonnull %0, ptr noundef %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call fastcc void @die() #33
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind sspstrong uwtable
define internal fastcc void @die() unnamed_addr #11 {
bb.a:
  tail call void @abort() #36
  unreachable
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define hidden void @rb_bug_for_fatal_signal(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i32 0, ptr %i.c, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  store volatile ptr %i.f, ptr %i.b, align 8, !tbaa !32
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.0..0..0..0..0..0..i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @rb_source_location_cstr(ptr noundef nonnull %i.c) #32
  %.pre = load i32, ptr %i.c, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %.pre, %bb.b ], [ 0, %bb.a ]
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store i32 -1, ptr %i.d, align 4, !tbaa !7
  %i.i = call fastcc ptr @bug_report_file(ptr noundef %.0, i32 noundef %i.h, ptr noundef %i.d) ; 9 uses
  %.not12 = icmp eq ptr %i.i, null
  br i1 %.not12, label %bug_report_end.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.va_start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.j = call i64 @fwrite(ptr nonnull @.str.275, i64 6, i64 1, ptr nonnull %i.i) ; 0 uses
  %i.k = call i32 @ruby_vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef %3, ptr noundef nonnull %4) #32 ; 0 uses
  %i.l = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef nonnull %i.i) ; 0 uses
  %i.m = load ptr, ptr @rb_dynamic_description, align 8, !tbaa !31
  %i.n = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef nonnull @.str.13, ptr noundef %i.m) #32 ; 0 uses
  %i.o = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef nonnull %i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.va_end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.p = call zeroext i1 @rb_vm_bugreport(ptr noundef %2, ptr noundef nonnull %i.i) #32 ; 0 uses
  %i.q = load i32, ptr %i.d, align 4, !tbaa !7    ; 2 uses
  %i.r = load i32, ptr @bug_reporters_size, align 4, !tbaa !7
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.d ] ; 2 uses
  %i.t = getelementptr [16 x i8], ptr @bug_reporters, i64 %indvars.iv.i ; 2 uses
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !28
  %i.v = getelementptr i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30
  call void %i.u(ptr noundef nonnull %i.i, ptr noundef %i.w) #32, !inline_history !34
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.x = load i32, ptr @bug_reporters_size, align 4, !tbaa !7
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv.next.i, %i.y
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !35

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.d
  %i.aa = load ptr, ptr @stdout, align 8, !tbaa !37
  %.not.i.i = icmp eq ptr %i.i, %i.aa
  %i.ab = load ptr, ptr @stderr, align 8
  %.not5.i.i = icmp eq ptr %i.i, %i.ab
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %or.cond.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.ac = call i32 @fclose(ptr noundef nonnull %i.i) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.ad = icmp sgt i32 %i.q, 0
  br i1 %i.ad, label %bb.g, label %bug_report_end.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = call i32 @waitpid(i32 noundef %i.q, ptr noundef null, i32 noundef 0) #32 ; 0 uses
  br label %bug_report_end.exit

bug_report_end.exit:                              ; preds = %bb.g, %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  %.not13 = icmp eq ptr %0, null
  br i1 %.not13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bug_report_end.exit
  call void %0(i32 noundef %1) #32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bug_report_end.exit
  call void @ruby_default_signal(i32 noundef %1) #32
  call fastcc void @die() #33
  unreachable
}

declare ptr @rb_source_location_cstr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @bug_report_file(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %3 = alloca %struct.report_expansion, align 8   ; 7 uses
  %i.b = alloca [16 x ptr], align 16              ; 5 uses
  %i.c = alloca [256 x i8], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.d = load ptr, ptr @crash_report, align 8, !tbaa !31 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @getenv(ptr noundef nonnull @.str.269) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %open_report_path.exit, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.01523 = phi ptr [ %i.d, %.thread ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = load i8, ptr %.01523, align 1, !tbaa !14
  switch i8 %i.f, label %bb.h [
    i8 124, label %bb.d
    i8 0, label %open_report_path.exit
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.h = getelementptr i8, ptr %.01523, i64 1
  store ptr %i.h, ptr %i.a, align 8, !tbaa !31
  %i.i = ptrtoint ptr %i.g to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.f, %bb.d
  %indvars.iv.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %.02245.i = phi ptr [ %i.c, %bb.d ], [ %i.u, %bb.f ] ; 3 uses
  %.promoted.i = load ptr, ptr %i.a, align 8, !tbaa !31 ; 3 uses
  %i.j = load i8, ptr %.promoted.i, align 1, !tbaa !14 ; 2 uses
  %.not2842.i = icmp eq i8 %i.j, 0
  br i1 %.not2842.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.e
  %i.k = phi i8 [ %i.r, %bb.e ], [ %i.j, %.preheader.i ] ; 2 uses
  %i.l = phi ptr [ %i.q, %bb.e ], [ %.promoted.i, %.preheader.i ] ; 2 uses
  %i.m = sext i8 %i.k to i32
  %i.n = icmp ne i8 %i.k, 32
  %i.o = add nsw i32 %i.m, -14
  %i.p = icmp ult i32 %i.o, -5
  %narrow.i.not.i = select i1 %i.n, i1 %i.p, i1 false
  br i1 %narrow.i.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr i8, ptr %i.l, i64 1        ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14    ; 2 uses
  %.not28.i = icmp eq i8 %i.r, 0
  br i1 %.not28.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !39

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i, %.preheader.i
  %.lcssa.i = phi ptr [ %.promoted.i, %.preheader.i ], [ %i.l, %.lr.ph.i ], [ %i.q, %bb.e ]
  store ptr %.lcssa.i, ptr %i.a, align 8
  %i.s = ptrtoint ptr %.02245.i to i64
  %i.t = sub i64 %i.i, %i.s
  %i.u = call fastcc ptr @expand_report_argument(ptr noundef %i.a, ptr noundef %3, ptr noundef %.02245.i, i64 noundef %i.t, i1 noundef zeroext true) ; 2 uses
  %.not30.i = icmp eq ptr %i.u, null
  %4 = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  br i1 %.not30.i, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %.critedge.i
  store ptr null, ptr %4, align 8, !tbaa !31
  %i.v = call ptr @ruby_popen_writer(ptr noundef nonnull %i.b, ptr noundef nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %open_report_path.exit

bb.f:                                             ; preds = %.critedge.i
  store ptr %.02245.i, ptr %4, align 8, !tbaa !31
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 15
  br i1 %exitcond.not.i, label %bb.g, label %.preheader.i, !llvm.loop !40

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %open_report_path.exit

bb.h:                                             ; preds = %bb.c
  %i.w = call fastcc ptr @expand_report_argument(ptr noundef %i.a, ptr noundef %3, ptr noundef nonnull %i.c, i64 noundef 256, i1 noundef zeroext false) ; 0 uses
  %i.x = call noalias ptr @fopen(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.270)
  br label %open_report_path.exit

open_report_path.exit:                            ; preds = %bb.b, %bb.c, %.thread.i, %bb.g, %bb.h
  %.120.i = phi ptr [ null, %bb.b ], [ %i.v, %.thread.i ], [ %i.x, %bb.h ], [ null, %bb.g ], [ null, %bb.c ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i20 = icmp eq ptr %0, null
  br i1 %.not.i20, label %err_position_0.exit, label %bb.i

bb.i:                                             ; preds = %open_report_path.exit
  %i.y = icmp eq i32 %1, 0
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.c, i64 noundef 256, ptr noundef nonnull @.str.273, ptr noundef nonnull %0) #32
  br label %err_position_0.exit

bb.k:                                             ; preds = %bb.i
  %i.aa = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.c, i64 noundef 256, ptr noundef nonnull @.str.274, ptr noundef nonnull %0, i32 noundef %1) #32
  br label %err_position_0.exit

err_position_0.exit:                              ; preds = %open_report_path.exit, %bb.j, %bb.k
  %.0.i = phi i32 [ %i.z, %bb.j ], [ %i.aa, %bb.k ], [ 0, %open_report_path.exit ]
  %.not19 = icmp eq ptr %.120.i, null
  %.pre = sext i32 %.0.i to i64                   ; 6 uses
  br i1 %.not19, label %err_position_0.exit._crit_edge, label %bb.l

bb.l:                                             ; preds = %err_position_0.exit
  %i.ab = call i64 @fwrite(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef %.pre, ptr noundef nonnull %.120.i)
  %i.ac = icmp eq i64 %i.ab, %.pre
  br i1 %i.ac, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = call i32 @fclose(ptr noundef nonnull %.120.i) ; 0 uses
  br label %err_position_0.exit._crit_edge

err_position_0.exit._crit_edge:                   ; preds = %err_position_0.exit, %bb.m
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.af = call i64 @fwrite(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef %.pre, ptr noundef %i.ae) #37
  %i.ag = icmp eq i64 %i.af, %.pre
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %err_position_0.exit._crit_edge
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !37
  br label %bb.p

bb.o:                                             ; preds = %err_position_0.exit._crit_edge
  %i.ai = load ptr, ptr @stdout, align 8, !tbaa !37
  %i.aj = call i64 @fwrite(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef %.pre, ptr noundef %i.ai)
  %i.ak = icmp eq i64 %i.aj, %.pre
  %i.al = load ptr, ptr @stdout, align 8
  %spec.select = select i1 %i.ak, ptr %i.al, ptr null
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.n
  %.0 = phi ptr [ %.120.i, %bb.l ], [ %i.ah, %bb.n ], [ %spec.select, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  ret ptr %.0
}

declare zeroext i1 @rb_vm_bugreport(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ruby_default_signal(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn nounwind sspstrong uwtable
define dso_local void @rb_bug_errno(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef @.str.3, ptr noundef nonnull %0) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @rb_strerrno(i32 noundef %1) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = tail call ptr @strerror(i32 noundef %1) #32 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_bug(ptr noundef @.str.4, ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef nonnull %i.b) #35
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_bug(ptr noundef @.str.5, ptr noundef nonnull %0, ptr noundef %i.c, i32 noundef %1) #35
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal fastcc noundef ptr @rb_strerrno(i32 noundef range(i32 1, 0) %0) unnamed_addr #13 {
bb.a:
  switch i32 %0, label %bb.dy [
    i32 7, label %bb.ec
    i32 13, label %bb.b
    i32 98, label %bb.c
    i32 99, label %bb.d
    i32 68, label %bb.e
    i32 97, label %bb.f
    i32 11, label %bb.g
    i32 114, label %bb.h
    i32 52, label %bb.i
    i32 9, label %bb.j
    i32 77, label %bb.k
    i32 74, label %bb.l
    i32 53, label %bb.m
    i32 56, label %bb.n
    i32 57, label %bb.o
    i32 59, label %bb.p
    i32 16, label %bb.q
    i32 125, label %bb.r
    i32 10, label %bb.s
    i32 44, label %bb.t
    i32 70, label %bb.u
    i32 103, label %bb.v
    i32 111, label %bb.w
    i32 104, label %bb.x
    i32 35, label %bb.y
    i32 89, label %bb.z
    i32 33, label %bb.aa
    i32 73, label %bb.ab
    i32 122, label %bb.ac
    i32 17, label %bb.ad
    i32 14, label %bb.ae
    i32 27, label %bb.af
    i32 112, label %bb.ag
    i32 113, label %bb.ah
    i32 133, label %bb.ai
    i32 43, label %bb.aj
    i32 84, label %bb.ak
    i32 115, label %bb.al
    i32 4, label %bb.am
    i32 22, label %bb.an
    i32 5, label %bb.ao
    i32 106, label %bb.ap
    i32 21, label %bb.aq
    i32 120, label %bb.ar
    i32 127, label %bb.as
    i32 129, label %bb.at
    i32 128, label %bb.au
    i32 51, label %bb.av
    i32 45, label %bb.aw
    i32 46, label %bb.ax
    i32 47, label %bb.ay
    i32 79, label %bb.az
    i32 80, label %bb.ba
    i32 83, label %bb.bb
    i32 82, label %bb.bc
    i32 81, label %bb.bd
    i32 48, label %bb.be
    i32 40, label %bb.bf
    i32 124, label %bb.bg
    i32 24, label %bb.bh
    i32 31, label %bb.bi
    i32 90, label %bb.bj
    i32 72, label %bb.bk
    i32 36, label %bb.bl
    i32 119, label %bb.bm
    i32 100, label %bb.bn
    i32 102, label %bb.bo
    i32 101, label %bb.bp
    i32 23, label %bb.bq
    i32 55, label %bb.br
    i32 105, label %bb.bs
    i32 50, label %bb.bt
    i32 61, label %bb.bu
    i32 19, label %bb.bv
    i32 2, label %bb.bw
    i32 8, label %bb.bx
    i32 126, label %bb.by
    i32 37, label %bb.bz
    i32 67, label %bb.ca
    i32 123, label %bb.cb
    i32 12, label %bb.cc
    i32 42, label %bb.cd
    i32 64, label %bb.ce
    i32 65, label %bb.cf
    i32 92, label %bb.cg
    i32 28, label %bb.ch
    i32 63, label %bb.ci
    i32 60, label %bb.cj
    i32 38, label %bb.ck
    i32 15, label %bb.cl
    i32 107, label %bb.cm
    i32 20, label %bb.cn
    i32 39, label %bb.co
    i32 118, label %bb.cp
    i32 131, label %bb.cq
    i32 88, label %bb.cr
end_hunk_0
