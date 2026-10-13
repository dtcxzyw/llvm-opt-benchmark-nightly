Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/help?download=true
inline.NumInlined: 17
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@qsort
; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @list_commands(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not53 = icmp eq i64 %i.b, 0                   ; 2 uses
  br i1 %.not53, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  br label %bb.b

.preheader.loopexit:                              ; preds = %bb.b
  %spec.select = trunc i64 %spec.select42 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.028.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %.preheader.loopexit ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19   ; 3 uses
  %.not54 = icmp eq i64 %i.f, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph50

.lr.ph50:                                         ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.02845 = phi i64 [ 0, %.lr.ph ], [ %spec.select42, %bb.b ]
  %i.i = and i64 %.02845, 4294967295
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13
  %spec.select42 = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %i.i) ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.m = and i64 %indvars.iv.next, 4294967295
  %i.n = icmp ugt i64 %i.b, %i.m
  br i1 %i.n, label %bb.b, label %.preheader.loopexit, !llvm.loop !39

bb.c:                                             ; preds = %.lr.ph50, %bb.c
  %indvars.iv56 = phi i64 [ 0, %.lr.ph50 ], [ %indvars.iv.next57, %bb.c ] ; 2 uses
  %.248 = phi i32 [ %.028.lcssa, %.lr.ph50 ], [ %spec.select35, %bb.c ]
  %i.o = zext i32 %.248 to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.r = load i64, ptr %i.q, align 8, !tbaa !13
  %spec.select3541 = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.o)
  %spec.select35 = trunc i64 %spec.select3541 to i32 ; 2 uses
  %indvars.iv.next57 = add i64 %indvars.iv56, 1   ; 2 uses
  %i.s = and i64 %indvars.iv.next57, 4294967295
  %i.t = icmp ugt i64 %i.f, %i.s
  br i1 %i.t, label %bb.c, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %.2.lcssa = phi i32 [ %.028.lcssa, %.preheader ], [ %spec.select35, %bb.c ] ; 2 uses
  br i1 %.not53, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.u = tail call ptr @get_argv_exec_path() #25  ; 3 uses
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %0, ptr noundef %i.u) ; 0 uses
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4) ; 0 uses
  %i.x = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #26
  %i.z = add i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %.not2.i = icmp eq i32 %i.aa, 0
  br i1 %.not2.i, label %mput_char.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.03.i = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.aa, %bb.d ]
  %i.ab = add i32 %.03.i, -1                      ; 2 uses
  %i.ac = load ptr, ptr @stdout, align 8, !tbaa !26
  %i.ad = tail call i32 @putc(i32 noundef 45, ptr noundef %i.ac), !inline_history !0 ; 0 uses
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %mput_char.exit, label %.lr.ph.i, !llvm.loop !41

mput_char.exit:                                   ; preds = %.lr.ph.i, %bb.d
  %i.ae = load ptr, ptr @stdout, align 8, !tbaa !26
  %i.af = tail call i32 @putc(i32 noundef 10, ptr noundef %i.ae), !inline_history !0 ; 0 uses
  tail call fastcc void @pretty_print_string_list(ptr noundef nonnull %1, i32 noundef %.2.lcssa)
  %i.ag = load ptr, ptr @stdout, align 8, !tbaa !26
  %i.ah = tail call i32 @putc(i32 noundef 10, ptr noundef %i.ag), !inline_history !0 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.u) #25
  %.pr = load i64, ptr %i.e, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %mput_char.exit, %._crit_edge
  %i.ai = phi i64 [ %.pr, %mput_char.exit ], [ %i.f, %._crit_edge ]
  %.not34 = icmp eq i64 %i.ai, 0
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %0) ; 0 uses
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  %i.al = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  %.not2.i36 = icmp eq i32 %i.am, 0
  br i1 %.not2.i36, label %mput_char.exit40, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %bb.f, %.lr.ph.i37
  %.03.i38 = phi i32 [ %i.an, %.lr.ph.i37 ], [ %i.am, %bb.f ]
  %i.an = add i32 %.03.i38, -1                    ; 2 uses
  %i.ao = load ptr, ptr @stdout, align 8, !tbaa !26
  %i.ap = tail call i32 @putc(i32 noundef 45, ptr noundef %i.ao), !inline_history !0 ; 0 uses
  %.not.i39 = icmp eq i32 %i.an, 0
  br i1 %.not.i39, label %mput_char.exit40, label %.lr.ph.i37, !llvm.loop !41

mput_char.exit40:                                 ; preds = %.lr.ph.i37, %bb.f
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !26
  %i.ar = tail call i32 @putc(i32 noundef 10, ptr noundef %i.aq), !inline_history !0 ; 0 uses
  tail call fastcc void @pretty_print_string_list(ptr noundef nonnull %2, i32 noundef %.2.lcssa)
  %i.as = load ptr, ptr @stdout, align 8, !tbaa !26
  %i.at = tail call i32 @putc(i32 noundef 10, ptr noundef %i.as), !inline_history !0 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %mput_char.exit40, %bb.e
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @pretty_print_string_list(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.winsize, align 2            ; 8 uses
  %i.a = add nsw i32 %1, 1                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str.18) #25 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 10) #25, !inline_history !42
  %i.d = trunc i64 %i.c to i16                    ; 2 uses
  store i16 %i.d, ptr %2, align 2, !tbaa !47
  %i.e = tail call ptr @getenv(ptr noundef nonnull @.str.19) #25 ; 2 uses
  %.not14.i = icmp eq ptr %i.e, null
  br i1 %.not14.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.e, ptr noundef null, i32 noundef 10) #25, !inline_history !42 ; 2 uses
  %i.g = trunc i64 %i.f to i16                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.g, ptr %i.h, align 2, !tbaa !48
  %.not15.i = icmp eq i16 %i.d, 0
  %i.i = and i64 %i.f, 65535
  %.not16.i = icmp eq i64 %i.i, 0
  %or.cond.i = select i1 %.not15.i, i1 true, i1 %.not16.i
  br i1 %or.cond.i, label %bb.d, label %get_term_dimensions.exit

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = call i32 (i32, i64, ...) @ioctl(i32 noundef 1, i64 noundef 21523, ptr noundef nonnull %2) #25
  %i.k = icmp ne i32 %i.j, 0
  %i.l = load i16, ptr %2, align 2
  %.not17.i = icmp eq i16 %i.l, 0
  %or.cond40 = select i1 %i.k, i1 true, i1 %.not17.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2              ; 2 uses
  %.not18.i = icmp eq i16 %i.n, 0
  %or.cond42 = select i1 %or.cond40, i1 true, i1 %.not18.i
  br i1 %or.cond42, label %bb.e, label %get_term_dimensions.exit

bb.e:                                             ; preds = %bb.d
  store i16 25, ptr %2, align 2, !tbaa !47
  store i16 80, ptr %i.m, align 2, !tbaa !48
  br label %get_term_dimensions.exit

get_term_dimensions.exit:                         ; preds = %bb.d, %bb.c, %bb.e
  %i.o = phi i16 [ %i.n, %bb.d ], [ %i.g, %bb.c ], [ 80, %bb.e ]
  %i.p = zext i16 %i.o to i32
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  %i.r = icmp slt i32 %i.a, %i.q
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %get_term_dimensions.exit
  %i.s = sdiv i32 %i.q, %i.a
  %i.t = freeze i32 %i.s
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %get_term_dimensions.exit
  %.031 = phi i32 [ %i.t, %bb.f ], [ 1, %get_term_dimensions.exit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !19
  %i.w = sext i32 %.031 to i64                    ; 2 uses
  %i.x = add nsw i64 %i.w, -1
  %i.y = add i64 %i.x, %i.v
  %i.z = udiv i64 %i.y, %i.w                      ; 3 uses
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph47, label %._crit_edge48

.lr.ph47:                                         ; preds = %bb.g
  %i.ac = icmp sgt i32 %.031, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %i.ac, label %.lr.ph.us.preheader, label %.lr.ph47.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph47
  %i.ae = add nsw i32 %.031, -1
  %i.af = and i64 %i.z, 2147483647                ; 2 uses
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = and i64 %i.z, 2147483647
  %wide.trip.count = zext nneg i32 %.031 to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv51 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next52, %._crit_edge.us ] ; 2 uses
  %i.ai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.us, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.aj = mul nuw nsw i64 %indvars.iv, %i.af
  %i.ak = add nuw nsw i64 %i.aj, %indvars.iv51    ; 3 uses
  %i.al = load i64, ptr %i.u, align 8, !tbaa !19  ; 2 uses
  %.not.us = icmp ugt i64 %i.al, %i.ak
  br i1 %.not.us, label %bb.i, label %._crit_edge.us

bb.i:                                             ; preds = %bb.h
  %i.am = icmp ne i64 %indvars.iv, %i.ag
  %i.an = add nuw nsw i64 %i.ak, %i.af
  %.not37.us = icmp ugt i64 %i.al, %i.an
  %or.cond.us = and i1 %i.am, %.not37.us
  %.028.us = select i1 %or.cond.us, i32 %i.a, i32 1
  %i.ao = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ak
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %.028.us, ptr noundef nonnull %i.ar) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.h, !llvm.loop !43

._crit_edge.us:                                   ; preds = %bb.i, %bb.h
  %i.at = load ptr, ptr @stdout, align 8, !tbaa !26
  %i.au = call i32 @putc(i32 noundef 10, ptr noundef %i.at), !inline_history !0 ; 0 uses
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %i.av = icmp samesign ult i64 %indvars.iv.next52, %i.ah
  br i1 %i.av, label %.lr.ph.us, label %._crit_edge48, !llvm.loop !44

.lr.ph47.split:                                   ; preds = %.lr.ph47, %.lr.ph47.split
  %.03045 = phi i32 [ %6, %.lr.ph47.split ], [ 0, %.lr.ph47 ]
  %3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16) ; 0 uses
  %4 = load ptr, ptr @stdout, align 8, !tbaa !26
  %5 = call i32 @putc(i32 noundef 10, ptr noundef %4), !inline_history !0 ; 0 uses
  %6 = add nuw nsw i32 %.03045, 1                 ; 2 uses
  %7 = icmp slt i32 %6, %i.aa
  br i1 %7, label %.lr.ph47.split, label %._crit_edge48, !llvm.loop !44

._crit_edge48:                                    ; preds = %.lr.ph47.split, %._crit_edge.us, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @is_in_cmdlist(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not11 = icmp eq i64 %i.b, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.e = add i32 %.08, 1                          ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = icmp ugt i64 %i.b, %i.f
  br i1 %i.g, label %bb.c, label %._crit_edge, !llvm.loop !49

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.h = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ]
  %.08 = phi i32 [ 0, %.lr.ph ], [ %i.e, %bb.b ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.k) #26
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.06 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.06
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal void @die(ptr nofree noundef readonly captures(none) %0, ...) unnamed_addr #15 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.va_start.p0(ptr nonnull %1)
  call fastcc void @report(ptr noundef %0, ptr noundef %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @exit(i32 noundef 128) #28
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #16

; Function Attrs: cold inlinehint nofree nounwind uwtable
define internal fastcc void @report(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1) unnamed_addr #17 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef %0, ptr noundef nonnull %1) #25 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.d = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a) #29 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #16

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #19

declare ptr @readdir64(ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #19

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind allocsize(1) }
attributes #24 = { noreturn }
attributes #25 = { nounwind }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { noreturn nounwind }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { cold nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{!"any p2 pointer", !15, i64 0}
!17 = !{!"p2 _ZTS7cmdname", !16, i64 0}
!18 = !{!"cmdnames", !12, i64 0, !12, i64 8, !17, i64 16}
!19 = !{!18, !12, i64 8}
!20 = !{!18, !12, i64 0}
!21 = !{!18, !17, i64 16}
!22 = !{!"p1 _ZTS7cmdname", !15, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!26 = !{!25, !25, i64 0}
!27 = distinct !{!27, !24}
!28 = distinct !{!28, !24}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
!31 = distinct !{!31, !24}
!32 = distinct !{!32, !24}
!33 = distinct !{!33, !24}
!34 = !{!"p1 omnipotent char", !15, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"timespec", !12, i64 0, !12, i64 8}
!37 = !{!"stat", !12, i64 0, !12, i64 8, !12, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !36, i64 72, !36, i64 88, !36, i64 104, !8, i64 120}
!38 = !{!37, !9, i64 24}
!39 = distinct !{!39, !24}
!40 = distinct !{!40, !24}
!41 = distinct !{!41, !24}
!42 = distinct !{null}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !24}
!45 = !{!"short", !8, i64 0}
!46 = !{!"winsize", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6}
!47 = !{!46, !45, i64 0}
!48 = !{!46, !45, i64 2}
!49 = distinct !{!49, !24}
end_hunk_0
