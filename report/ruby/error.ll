Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/error?download=true
inline.NumInlined: 575
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@rb_async_bug_errno:bb.a

bb.n:                                             ; preds = %bb.l
  %i.q = load ptr, ptr @rb_dynamic_description, align 8, !tbaa !34 ; 2 uses
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #34
  %i.s = tail call i64 @write(i32 noundef 2, ptr noundef nonnull %i.q, i64 noundef %i.r) #32 ; 0 uses
  tail call void @abort() #36
  unreachable
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_report_bug_valist(i64 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i32 -1, ptr %i.b, align 4, !tbaa !15
  %i.c = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18
  %i.e = and i64 %i.d, 8192
  %.not.i = icmp eq i64 %i.e, 0
  %i.f = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ]
  %i.i = call fastcc ptr @bug_report_file(ptr noundef %i.h, i32 noundef %1, ptr noundef %i.b) ; 9 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bug_report_end.exit, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.275, i64 6, i64 1, ptr nonnull %i.i) ; 0 uses
  %i.j = call i32 @ruby_vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef %2, ptr noundef %3) #32 ; 0 uses
  %i.k = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef nonnull %i.i) ; 0 uses
  %i.l = load ptr, ptr @rb_dynamic_description, align 8, !tbaa !34
  %i.m = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef nonnull @.str.13, ptr noundef %i.l) #32 ; 0 uses
  %i.n = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef nonnull %i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.o = call zeroext i1 @rb_vm_bugreport(ptr noundef null, ptr noundef nonnull %i.i) #32 ; 0 uses
  %i.p = load i32, ptr %i.b, align 4, !tbaa !15   ; 2 uses
  %i.q = load i32, ptr @bug_reporters_size, align 4, !tbaa !15
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.c ] ; 2 uses
  %i.s = getelementptr [16 x i8], ptr @bug_reporters, i64 %indvars.iv.i ; 2 uses
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !32
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33
  call void %i.t(ptr noundef nonnull %i.i, ptr noundef %i.v) #32, !inline_history !0
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.w = load i32, ptr @bug_reporters_size, align 4, !tbaa !15
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next.i, %i.x
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %i.z = load ptr, ptr @stdout, align 8, !tbaa !39
  %.not.i.i = icmp eq ptr %i.i, %i.z
  %i.aa = load ptr, ptr @stderr, align 8
  %.not5.i.i = icmp eq ptr %i.i, %i.aa
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %or.cond.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.ab = call i32 @fclose(ptr noundef nonnull %i.i) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %i.ac = icmp sgt i32 %i.p, 0
  br i1 %i.ac, label %bb.f, label %bug_report_end.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = call i32 @waitpid(i32 noundef %i.p, ptr noundef null, i32 noundef 0) #32 ; 0 uses
  br label %bug_report_end.exit

bug_report_end.exit:                              ; preds = %bb.f, %bb.e, %RSTRING_PTR.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  ret void
}

; Function Attrs: cold noreturn nounwind optsize sspstrong uwtable
define dso_local void @rb_assert_failure(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #10 {
bb.a:
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @rb_assert_failure_detail(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null) #35
  unreachable
}

; Function Attrs: cold noreturn nounwind optsize sspstrong uwtable
define dso_local void @rb_assert_failure_detail(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ...) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i32 -1, ptr %i.a, align 4, !tbaa !15
  %i.b = call fastcc ptr @bug_report_file(ptr noundef %0, i32 noundef %1, ptr noundef %i.a) ; 12 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bug_report_end.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @fputs(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.b) ; 0 uses
  %.not19 = icmp eq ptr %2, null
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull %2) #32 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = call i32 @fputs(ptr noundef %3, ptr noundef nonnull %i.b) ; 0 uses
  %.not20 = icmp eq ptr %4, null
  br i1 %.not20, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i8, ptr %4, align 1, !tbaa !19
  %.not21 = icmp eq i8 %i.f, 0
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.va_start.p0(ptr nonnull %5)
  %i.g = call i32 @fputs(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.b) ; 0 uses
  %i.h = call i32 @__vfprintf_chk(ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5) #32 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.i = load ptr, ptr @rb_dynamic_description, align 8, !tbaa !34
  %i.j = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef %i.i) #32 ; 0 uses
  %i.k = call zeroext i1 @rb_vm_bugreport(ptr noundef null, ptr noundef nonnull %i.b) #32 ; 0 uses
  %i.l = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %i.m = load i32, ptr @bug_reporters_size, align 4, !tbaa !15
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.g ] ; 2 uses
  %i.o = getelementptr [16 x i8], ptr @bug_reporters, i64 %indvars.iv.i ; 2 uses
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !32
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33
  call void %i.p(ptr noundef nonnull %i.b, ptr noundef %i.r) #32, !inline_history !0
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.s = load i32, ptr @bug_reporters_size, align 4, !tbaa !15
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next.i, %i.t
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.g
  %i.v = load ptr, ptr @stdout, align 8, !tbaa !39
  %.not.i.i = icmp eq ptr %i.b, %i.v
  %i.w = load ptr, ptr @stderr, align 8
  %.not5.i.i = icmp eq ptr %i.b, %i.w
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %or.cond.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.x = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %i.y = icmp sgt i32 %i.l, 0
  br i1 %i.y, label %bb.j, label %bug_report_end.exit

bb.j:                                             ; preds = %bb.i
  %i.z = call i32 @waitpid(i32 noundef %i.l, ptr noundef null, i32 noundef 0) #32 ; 0 uses
  br label %bug_report_end.exit

bug_report_end.exit:                              ; preds = %bb.j, %bb.i, %bb.a
  call fastcc void @die() #33
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #19

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden ptr @rb_builtin_type_name(i32 noundef %0) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp ugt i32 %0, 28
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64                  ; 2 uses
  %1 = shl nuw nsw i64 1, %i.b
  %2 = and i64 %1, 58785793
  %.not.not = icmp eq i64 %2, 0
  %3 = getelementptr [10 x i8], ptr @builtin_types, i64 %i.b
  %spec.select = select i1 %.not.not, ptr %3, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_builtin_class_name(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %builtin_class_name.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %0 to i1
  br i1 %i.b, label %builtin_class_name.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i64 %0, 254
  %i.d = icmp eq i64 %i.c, 12
  br i1 %i.d, label %builtin_class_name.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq i64 %0, 0
  %i.f = and i64 %0, 6
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %RB_SYMBOL_P.exit.thread5.i, label %RB_SYMBOL_P.exit.i

RB_SYMBOL_P.exit.i:                               ; preds = %bb.d
  %i.i = inttoptr i64 %0 to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18
  %i.k = and i64 %i.j, 31
  %i.l = icmp eq i64 %i.k, 20
  br i1 %i.l, label %builtin_class_name.exit.thread, label %RB_SYMBOL_P.exit.thread5.i

RB_SYMBOL_P.exit.thread5.i:                       ; preds = %RB_SYMBOL_P.exit.i, %bb.d
  %i.m = icmp eq i64 %0, 20
  %.str.279.mux = select i1 %i.m, ptr @.str.279, ptr @.str.280 ; 2 uses
  switch i64 %0, label %bb.e [
    i64 20, label %builtin_class_name.exit.thread
    i64 0, label %builtin_class_name.exit.thread
  ]

bb.e:                                             ; preds = %RB_SYMBOL_P.exit.thread5.i
  %i.n = tail call ptr @rb_obj_classname(i64 noundef %0) #32
  br label %builtin_class_name.exit.thread

builtin_class_name.exit.thread:                   ; preds = %RB_SYMBOL_P.exit.thread5.i, %RB_SYMBOL_P.exit.thread5.i, %bb.c, %RB_SYMBOL_P.exit.i, %bb.b, %bb.a, %bb.e
  %.0 = phi ptr [ %.str.279.mux, %RB_SYMBOL_P.exit.thread5.i ], [ %i.n, %bb.e ], [ @.str.276, %bb.a ], [ @.str.278, %bb.c ], [ @.str.278, %RB_SYMBOL_P.exit.i ], [ @.str.277, %bb.b ], [ %.str.279.mux, %RB_SYMBOL_P.exit.thread5.i ]
  ret ptr %.0
}

declare ptr @rb_obj_classname(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize sspstrong uwtable
define dso_local void @rb_check_type(i64 noundef %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %0, 36
  br i1 %i.a, label %bb.b, label %bb.c, !prof !40

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef @.str.14) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = inttoptr i64 %0 to ptr
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 31
  br label %rb_type.exit

bb.e:                                             ; preds = %bb.c
  switch i64 %0, label %bb.h [
    i64 0, label %rb_type.exit
    i64 4, label %bb.f
    i64 20, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %rb_type.exit

bb.g:                                             ; preds = %bb.e
  br label %rb_type.exit

bb.h:                                             ; preds = %bb.e
  %i.j = trunc i64 %0 to i1
  br i1 %i.j, label %rb_type.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = and i64 %0, 254
  %i.l = icmp eq i64 %i.k, 12
  %spec.select.i = select i1 %i.l, i32 20, i32 4
  br label %rb_type.exit

rb_type.exit:                                     ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i32 [ %i.i, %bb.d ], [ 17, %bb.f ], [ 18, %bb.g ], [ %spec.select.i, %bb.i ], [ 19, %bb.e ], [ 21, %bb.h ] ; 2 uses
  %.not = icmp eq i32 %.0.i, %1
  br i1 %.not, label %bb.j, label %.split

.split:                                           ; preds = %rb_type.exit
  tail call fastcc void @unexpected_type(i64 noundef %0, i32 noundef %.0.i, i32 noundef %1) #35
  unreachable

bb.j:                                             ; preds = %rb_type.exit
  %i.m = icmp eq i32 %1, 12
  br i1 %i.m, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.n = inttoptr i64 %0 to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !18
  %i.p = and i64 %i.o, 64
  %.not12 = icmp eq i64 %i.p, 0
  br i1 %.not12, label %bb.l, label %.split9

.split9:                                          ; preds = %bb.k
  tail call fastcc void @unexpected_type(i64 noundef %0, i32 noundef 12, i32 noundef 12) #35
  unreachable

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 32) i32 @rb_type(i64 noundef %0) unnamed_addr #20 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 31
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %0, 37
  %switch.shifted = lshr i64 68720525329, %0
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %i.i, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = trunc i64 %0 to i1
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = and i64 %0, 254
  %i.l = icmp eq i64 %i.k, 12
  %spec.select = select i1 %i.l, i32 20, i32 4
  br label %bb.f

switch.lookup:                                    ; preds = %bb.c
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.rb_type, i64 %0
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.f

bb.f:                                             ; preds = %switch.lookup, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %spec.select, %bb.e ], [ 21, %bb.d ], [ %switch.ext, %switch.lookup ]
  ret i32 %.0
}

; Function Attrs: cold noreturn nounwind optsize sspstrong uwtable
define internal fastcc void @unexpected_type(i64 noundef %0, i32 noundef range(i32 0, 32) %1, i32 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = icmp ugt i32 %2, 28
  br i1 %i.a, label %rb_builtin_type_name.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %2 to i64                  ; 2 uses
  %3 = shl nuw nsw i64 1, %i.b
  %4 = and i64 %3, 58785793
  %.not.not.i = icmp ne i64 %4, 0
  %i.c = getelementptr [10 x i8], ptr @builtin_types, i64 %i.b ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %or.cond = or i1 %.not, %.not.not.i
  br i1 %or.cond, label %rb_builtin_type_name.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %5 = tail call fastcc i64 @displaying_class_of(i64 noundef %0)
  %i.d = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.15, i64 noundef %5, ptr noundef nonnull %i.c) #32
  %6 = load i64, ptr @rb_eTypeError, align 8, !tbaa !20
  br label %bb.d

rb_builtin_type_name.exit.thread:                 ; preds = %bb.b, %bb.a
  %7 = load i64, ptr @rb_eFatal, align 8, !tbaa !20
  %i.e = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.282, i32 noundef %2, i32 noundef %1) #32
  br label %bb.d

bb.d:                                             ; preds = %rb_builtin_type_name.exit.thread, %bb.c
  %.012 = phi i64 [ %i.d, %bb.c ], [ %i.e, %rb_builtin_type_name.exit.thread ]
  %.0 = phi i64 [ %6, %bb.c ], [ %7, %rb_builtin_type_name.exit.thread ]
  %i.f = tail call i64 @rb_exc_new_str(i64 noundef %.0, i64 noundef %.012)
  tail call void @rb_exc_raise(i64 noundef %i.f) #36
  unreachable
}

; Function Attrs: cold noreturn nounwind optsize sspstrong uwtable
define dso_local void @rb_unexpected_type(i64 noundef %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq i64 %0, 36
  br i1 %i.a, label %bb.b, label %bb.c, !prof !40

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef @.str.14) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @rb_type(i64 noundef %0) #34
  tail call fastcc void @unexpected_type(i64 noundef %0, i32 noundef %i.b, i32 noundef %1) #35
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @rb_typeddata_inherited_p(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #21 {
bb.a:
  %.not5 = icmp eq ptr %0, null
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.046 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]  ; 2 uses
  %i.a = icmp eq ptr %.046, %1
  br i1 %i.a, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.b = getelementptr i8, ptr %.046, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @rb_typeddata_is_kind_of(i64 noundef %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #21 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rb_typeddata_inherited_p.exit, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18
  %i.g = and i64 %i.f, 95
  %or.cond.not = icmp eq i64 %i.g, 76
  br i1 %or.cond.not, label %bb.b, label %rb_typeddata_inherited_p.exit

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !46
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %.not5.i = icmp eq i64 %i.j, 0
  br i1 %.not5.i, label %rb_typeddata_inherited_p.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.k = inttoptr i64 %i.j to ptr
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %.046.i = phi ptr [ %i.n, %bb.c ], [ %i.k, %.lr.ph.i.preheader ] ; 2 uses
  %i.l = icmp eq ptr %.046.i, %1
  br i1 %i.l, label %rb_typeddata_inherited_p.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr i8, ptr %.046.i, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44   ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %rb_typeddata_inherited_p.exit, label %.lr.ph.i, !llvm.loop !2

rb_typeddata_inherited_p.exit:                    ; preds = %.lr.ph.i, %bb.c, %bb.a, %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit
  %.0 = phi i32 [ 0, %rbimpl_RB_TYPE_P_fastpath.exit ], [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %.lr.ph.i ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @rb_typeddata_is_instance_of(i64 noundef %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #22 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rb_typeddata_is_instance_of_inline.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18
  %i.g = and i64 %i.f, 95
  %or.cond.not.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i, label %bb.b, label %rb_typeddata_is_instance_of_inline.exit

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !46
  %i.j = and i64 %i.i, -2
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = icmp eq ptr %1, %i.k
  %i.m = zext i1 %i.l to i32
  br label %rb_typeddata_is_instance_of_inline.exit

rb_typeddata_is_instance_of_inline.exit:          ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %i.n = phi i32 [ 0, %bb.a ], [ %i.m, %bb.b ], [ 0, %rbimpl_RB_TYPE_P_fastpath.exit.i ]
  ret i32 %i.n
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_check_typeddata(i64 noundef %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 12
  br i1 %i.h, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.i = tail call fastcc i64 @displaying_class_of(i64 noundef %0)
  br label %bb.g

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.j = and i64 %i.f, 64
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call fastcc i64 @displaying_class_of(i64 noundef %0)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.e, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !46   ; 2 uses
  %i.n = and i64 %i.m, -2                         ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %.not5.i = icmp eq i64 %i.n, 0
  br i1 %.not5.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.046.i = phi ptr [ %i.r, %bb.e ], [ %i.o, %bb.d ] ; 2 uses
  %i.p = icmp eq ptr %.046.i, %1
  br i1 %i.p, label %rb_typeddata_inherited_p.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr i8, ptr %.046.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44   ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !2

.loopexit:                                        ; preds = %bb.e, %bb.d
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.t = tail call i64 @rb_str_new_cstr(ptr noundef %i.s) #32
  br label %bb.g

rb_typeddata_inherited_p.exit:                    ; preds = %.lr.ph.i
  %i.u = trunc i64 %i.m to i1
  %i.v = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.u, label %RTYPEDDATA_GET_DATA.exit, label %bb.f

bb.f:                                             ; preds = %rb_typeddata_inherited_p.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %rb_typeddata_inherited_p.exit, %bb.f
  %i.x = phi ptr [ %i.w, %bb.f ], [ %i.v, %rb_typeddata_inherited_p.exit ]
  ret ptr %i.x

bb.g:                                             ; preds = %bb.c, %.loopexit, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.0 = phi i64 [ %i.t, %.loopexit ], [ %i.k, %bb.c ], [ %i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread ]
  %i.y = load ptr, ptr %1, align 8, !tbaa !47
  %i.z = load i64, ptr @rb_eTypeError, align 8, !tbaa !20
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.z, ptr noundef @.str.15, i64 noundef %.0, ptr noundef %i.y) #33
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @displaying_class_of(i64 noundef %0) unnamed_addr #0 {
bb.a:
  switch i64 %0, label %bb.e [
    i64 0, label %bb.b
    i64 4, label %bb.c
    i64 20, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
end_hunk_0
