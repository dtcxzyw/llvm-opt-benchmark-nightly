Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/PyException?download=true
inline.NumInlined: 5
begin_hunk_0_@c11_strdup

; Function Attrs: nounwind uwtable
define zeroext i1 @py_checkexc() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @pk_current_vm)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.c, i16 noundef signext 0) #10
  %i.e = xor i1 %i.d, true
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @py_matchexc(i16 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @pk_current_vm)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 3 uses
  %i.d = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.c, i16 noundef signext 0) #10
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %i.c, align 8, !tbaa !61
  %i.f = tail call zeroext i1 @py_issubclass(i16 noundef signext %i.e, i16 noundef signext %0) #10
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !29
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

declare zeroext i1 @py_issubclass(i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
declare i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @py_printexc() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @pk_current_vm) ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 3 uses
  %i.d = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.c, i16 noundef signext 0) #10
  br i1 %i.d, label %py_formatexc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @formatexc_internal(ptr noundef nonnull %i.c) ; 3 uses
  %i.f = tail call i32 (...) @py_debugger_status() #10
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %py_formatexc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @py_debugger_exceptionbreakpoint(ptr noundef nonnull %i.c) #10
  br label %py_formatexc.exit

py_formatexc.exit:                                ; preds = %bb.b, %bb.c
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %py_formatexc.exit.thread, label %bb.d

bb.d:                                             ; preds = %py_formatexc.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  tail call void %i.j(ptr noundef nonnull %i.e) #10
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62
  tail call void %i.m(ptr noundef nonnull @.str.8) #10
  tail call void @free(ptr noundef nonnull %i.e) #10
  br label %py_formatexc.exit.thread

py_formatexc.exit.thread:                         ; preds = %bb.a, %py_formatexc.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define noalias noundef ptr @py_formatexc() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @pk_current_vm)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 3 uses
  %i.d = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.c, i16 noundef signext 0) #10
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @formatexc_internal(ptr noundef nonnull %i.c) ; 2 uses
  %i.f = tail call i32 (...) @py_debugger_status() #10
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @py_debugger_exceptionbreakpoint(ptr noundef nonnull %i.c) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.e, %bb.c ], [ %i.e, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @formatexc_internal(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.c11_sbuf, align 8           ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !56
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9) #11 ; 0 uses
  %i.c = tail call i32 @putchar(i32 noundef 10)   ; 0 uses
  tail call void @abort() #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i16, ptr %0, align 8, !tbaa !30
  %i.e = tail call zeroext i1 @py_issubclass(i16 noundef signext %i.d, i16 noundef signext 20) #10
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !56
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10) #11 ; 0 uses
  %i.h = tail call i32 @putchar(i32 noundef 10)   ; 0 uses
  tail call void @abort() #12
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @c11_sbuf__ctor(ptr noundef nonnull %1) #10
  %i.i = call ptr @py_touserdata(ptr noundef nonnull %0) #10
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.k = call zeroext i1 @py_istype(ptr noundef nonnull %i.j, i16 noundef signext 0) #10
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call fastcc void @c11_sbuf__write_exc(ptr noundef %1, ptr noundef nonnull %i.j)
  call void @c11_sbuf__write_cstr(ptr noundef nonnull %1, ptr noundef nonnull @.str.11) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  call fastcc void @c11_sbuf__write_exc(ptr noundef %1, ptr noundef nonnull %0)
  %i.l = call ptr @c11_sbuf__submit(ptr noundef nonnull %1) #10 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !27
  %i.n = add nsw i32 %i.m, 1
  %i.o = sext i32 %i.n to i64
  %i.p = call noalias ptr @malloc(i64 noundef %i.o) #13 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.r = load i32, ptr %i.l, align 4, !tbaa !27
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 4 %i.q, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  store i8 0, ptr %i.t, align 1, !tbaa !28
  call void @c11_string__delete(ptr noundef nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret ptr %i.p
}

declare void @py_debugger_exceptionbreakpoint(ptr noundef) local_unnamed_addr #2

declare void @c11_sbuf__ctor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @c11_sbuf__write_exc(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @c11_sbuf__write_cstr(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #10
  %i.a = tail call ptr @py_touserdata(ptr noundef %1) #10 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.g = load i16, ptr %1, align 8, !tbaa !30
  %i.h = tail call ptr @py_tpname(i16 noundef signext %i.g) #10
  %i.i = tail call ptr @safe_stringify_exception(ptr noundef nonnull %1) ; 2 uses
  tail call void @c11_sbuf__write_cstr(ptr noundef nonnull %0, ptr noundef %i.h) #10
  tail call void @c11_sbuf__write_cstr(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #10
  tail call void @c11_sbuf__write_cstr(ptr noundef nonnull %0, ptr noundef %i.i) #10
  tail call void @free(ptr noundef %i.i) #10
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.f, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.j, i64 %indvars.iv.next ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23   ; 2 uses
  %.not = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %spec.select = select i1 %.not, ptr null, ptr %i.q
  tail call void @SourceData__snapshot(ptr noundef %i.l, ptr noundef nonnull %0, i32 noundef %i.n, ptr noundef null, ptr noundef %spec.select) #10
  tail call void @c11_sbuf__write_char(ptr noundef nonnull %0, i8 noundef signext 10) #10
  %i.r = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !63
}

declare void @c11_sbuf__write_cstr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @c11_sbuf__submit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

declare void @c11_string__delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @py_exception(i16 noundef signext %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.c11_sbuf, align 8           ; 5 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @c11_sbuf__ctor(ptr noundef nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @pk_vsprintf(ptr noundef nonnull %2, ptr noundef %1, ptr noundef nonnull %3) #10
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.a = call ptr (...) @py_pushtmp() #10         ; 2 uses
  call void @c11_sbuf__py_submit(ptr noundef nonnull %2, ptr noundef %i.a) #10
  %i.b = call zeroext i1 @py_tpcall(i16 noundef signext %0, i32 noundef 1, ptr noundef %i.a) #10
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void (...) @py_pop() #10
  %i.c = call ptr (...) @py_retval() #10          ; 2 uses
  %i.d = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @pk_current_vm)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %py_raise.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call ptr @Frame__top_exc_info(ptr noundef nonnull %i.f) #10 ; 2 uses
  %.not10.i = icmp eq ptr %i.g, null
  br i1 %.not10.i, label %py_raise.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = call zeroext i1 @py_istype(ptr noundef nonnull %i.h, i16 noundef signext 0) #10
  br i1 %i.i, label %py_raise.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = call ptr @py_touserdata(ptr noundef %i.c) #10
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !29
  br label %py_raise.exit

py_raise.exit:                                    ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !29
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %py_raise.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #9

declare void @pk_vsprintf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

declare void @c11_sbuf__py_submit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @py_tpcall(i16 noundef signext, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @py_pop(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @py_raise(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @pk_current_vm)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @Frame__top_exc_info(ptr noundef nonnull %i.c) #10 ; 2 uses
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.e, i16 noundef signext 0) #10
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @py_touserdata(ptr noundef %0) #10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !29
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !29
  ret i1 false
}

declare ptr @Frame__top_exc_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @KeyError(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @py_tpcall(i16 noundef signext 56, i32 noundef 1, ptr noundef %0) #10
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr (...) @py_retval() #10     ; 2 uses
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @pk_current_vm)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %py_raise.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @Frame__top_exc_info(ptr noundef nonnull %i.e) #10 ; 2 uses
  %.not10.i = icmp eq ptr %i.f, null
  br i1 %.not10.i, label %py_raise.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.g, i16 noundef signext 0) #10
  br i1 %i.h, label %py_raise.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @py_touserdata(ptr noundef %i.b) #10
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !29
  br label %py_raise.exit

py_raise.exit:                                    ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !29
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %py_raise.exit
  ret i1 false
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @StopIteration() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @py_tpcall(i16 noundef signext 39, i32 noundef 0, ptr noundef null) #10
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr (...) @py_retval() #10     ; 2 uses
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @pk_current_vm)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %py_raise.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @Frame__top_exc_info(ptr noundef nonnull %i.e) #10 ; 2 uses
  %.not10.i = icmp eq ptr %i.f, null
  br i1 %.not10.i, label %py_raise.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.g, i16 noundef signext 0) #10
  br i1 %i.h, label %py_raise.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @py_touserdata(ptr noundef %i.b) #10
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !29
  br label %py_raise.exit

py_raise.exit:                                    ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !29
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %py_raise.exit
  ret i1 false
}

declare void @c11_vector__dtor(ptr noundef) local_unnamed_addr #2

declare signext i16 @py_totype(ptr noundef) local_unnamed_addr #2

end_hunk_0
