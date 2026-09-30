Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/bytecode_api?download=true
inline.NumInlined: 110
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@cli_bcapi_write:bb.a
  br label %._crit_edge

bb.j:                                             ; preds = %bb.h
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.19, ptr noundef %i.s) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !41
  tail call void @cli_event_fastdata(ptr noundef %i.aa, i32 noundef 2, ptr noundef %1, i32 noundef %2) #27
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !64
  %i.ad = add i32 %i.ac, %2
  %i.ae = zext i32 %i.ad to i64
  %i.af = tail call i32 @cli_checklimits(ptr noundef nonnull @.str.20, ptr noundef %i.c, i64 noundef %i.ae, i64 noundef 0, i64 noundef 0) #27
  %.not36 = icmp eq i32 %i.af, 0
  br i1 %.not36, label %bb.l, label %._crit_edge

bb.l:                                             ; preds = %bb.k
  %i.ag = load i32, ptr %i.g, align 4, !tbaa !52
  %i.ah = zext nneg i32 %2 to i64
  %i.ai = tail call i64 @cli_writen(i32 noundef %i.ag, ptr noundef %1, i64 noundef %i.ah) #27 ; 3 uses
  %cond = icmp eq i64 %i.ai, 0
  br i1 %cond, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load i32, ptr %i.ab, align 8, !tbaa !64
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  %i.al = add i32 %i.aj, %i.ak
  store i32 %i.al, ptr %i.ab, align 8, !tbaa !64
  %i.am = icmp eq i64 %i.ai, -1
  br i1 %i.am, label %bb.n, label %._crit_edge

bb.n:                                             ; preds = %bb.m
  %i.an = tail call ptr @__errno_location() #29
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !63
  %i.ap = call ptr @cli_strerror(i32 noundef %i.ao, ptr noundef nonnull %i.a, i64 noundef 128) #27
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.21, ptr noundef %i.ap) #27
  %i.aq = load ptr, ptr %i.z, align 8, !tbaa !41
  call void @cli_event_error_str(ptr noundef %i.aq, ptr noundef nonnull @.str.22) #27
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %bb.n, %bb.l, %bb.k, %bb.i, %bb.g, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.i ], [ -1, %bb.g ], [ -1, %bb.k ], [ %i.ak, %bb.m ], [ -1, %bb.n ], [ 0, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.0
}

declare ptr @cli_gentemp_with_prefix(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cli_event_error_oom(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #6

declare ptr @cli_strerror(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare i32 @cli_checklimits(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @cli_writen(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @cli_bytecode_context_set_trace(ptr nofree noundef writeonly captures(none) initializes((1120, 1152), (1176, 1180)) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store ptr %2, ptr %i.a, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store ptr %3, ptr %i.b, align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store ptr %4, ptr %i.c, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store ptr %5, ptr %i.d, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store i32 %1, ptr %i.e, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @cli_bcapi_trace_scope(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !177
  %.not16 = icmp eq ptr %i.d, %1
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not18 = icmp eq ptr %1, null
  %i.e = select i1 %.not18, ptr @.str.23, ptr %1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !177
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1180
  store i32 %2, ptr %i.f, align 4, !tbaa !178
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %i.b, 2
  br i1 %i.g, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1180 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !178
  %.not17 = icmp eq i32 %i.i, %2
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %2, ptr %i.h, align 4, !tbaa !178
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.c
  %.sink21 = phi i32 [ 128, %bb.c ], [ 64, %bb.f ]
  %i.j = or i32 %i.b, %.sink21
  store i32 %i.j, ptr %i.a, align 8, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e, %bb.d, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @cli_bcapi_trace_directory(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !69
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %.not4 = icmp eq ptr %1, null
  %i.c = select i1 %.not4, ptr @.str.24, ptr %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store ptr %i.c, ptr %i.d, align 8, !tbaa !179
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @cli_bcapi_trace_source(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !69
  %i.c = icmp ult i32 %i.b, 4
  br i1 %i.c, label %bb.e, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !180
  %.not = icmp eq ptr %i.e, %1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.g = load i32, ptr %i.f, align 8, !tbaa !181
  %.not11 = icmp eq i32 %i.g, %2
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1188
  store i32 0, ptr %i.h, align 4, !tbaa !71
  %.not12 = icmp eq ptr %1, null
  %i.i = select i1 %.not12, ptr @.str.25, ptr %1
  store ptr %i.i, ptr %i.d, align 8, !tbaa !180
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store i32 %2, ptr %i.j, align 8, !tbaa !181
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @cli_bcapi_trace_op(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %i.c = icmp ult i32 %i.b, 5
  br i1 %i.c, label %bb.h, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 192
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1188
  store i32 %2, ptr %i.e, align 4, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65
  %3 = lshr i32 %i.b, 6
  %4 = and i32 %3, 2
  %5 = xor i32 %4, 3
  tail call void %i.g(ptr noundef nonnull %0, i32 noundef %5) #27
  %i.h = load i32, ptr %i.a, align 8, !tbaa !69
  %i.i = and i32 %i.h, -193                       ; 2 uses
  store i32 %i.i, ptr %i.a, align 8, !tbaa !69
  %i.j = icmp ult i32 %i.i, 5
  br i1 %i.j, label %bb.h, label %.thread, !prof !182

.thread:                                          ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1188 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !71
  %.not28 = icmp eq i32 %i.l, %2
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread
  store i32 %2, ptr %i.k, align 4, !tbaa !71
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %.sink = phi i32 [ 5, %bb.d ], [ 4, %.thread ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !65
  tail call void %i.n(ptr noundef nonnull %0, i32 noundef %.sink) #27
  %i.o = load i32, ptr %i.a, align 8, !tbaa !69
  %i.p = icmp ult i32 %i.o, 6
  br i1 %i.p, label %bb.h, label %bb.f, !prof !70

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !66   ; 2 uses
  %i.s = icmp ne ptr %i.r, null
  %i.t = icmp ne ptr %1, null
  %or.cond = and i1 %i.t, %i.s
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void %i.r(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @cli_bcapi_trace_value(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %i.c = icmp ult i32 %i.b, 7
  br i1 %i.c, label %bb.g, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.b, 126
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  tail call void %i.h(ptr noundef nonnull %0, i32 noundef 2) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67   ; 2 uses
  %i.k = icmp ne ptr %i.j, null
  %i.l = icmp ne ptr %1, null
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void %i.j(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @cli_bcapi_trace_ptr(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %i.c = icmp ult i32 %i.b, 7
  br i1 %i.c, label %bb.g, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.b, 126
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  tail call void %i.h(ptr noundef nonnull %0, i32 noundef 2) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68   ; 2 uses
  %.not10 = icmp eq ptr %i.j, null
  br i1 %.not10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.j(ptr noundef nonnull %0, ptr noundef %1) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @cli_bcapi_pe_rawaddr(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i16, ptr %i.f, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !48
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 644
  %i.l = load i32, ptr %i.k, align 4, !tbaa !183
  %i.m = call i32 @cli_rawaddr(i32 noundef %1, ptr noundef %i.e, i16 noundef zeroext %i.g, ptr noundef nonnull %i.a, i64 noundef %i.j, i32 noundef %i.l) #27
  %i.n = load i32, ptr %i.a, align 4, !tbaa !63
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.26, i32 noundef %1) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.m, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.0
}

declare i32 @cli_rawaddr(i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @cli_bcapi_file_find(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq i32 %2, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.27) #27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  tail call void @cli_event_error_str(ptr noundef %i.f, ptr noundef nonnull @.str.28) #27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.h = load i64, ptr %i.g, align 8, !tbaa !46
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call i32 @cli_bcapi_file_find_limit(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.j, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @cli_bcapi_file_find_limit(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = zext i32 %2 to i64                       ; 3 uses
  %i.f = add i32 %2, -1025
  %i.g = icmp ult i32 %i.f, -1024
  %or.cond4 = or i1 %i.g, %i.d
  %i.h = icmp slt i32 %3, 1
  %or.cond6 = or i1 %i.h, %or.cond4
  br i1 %or.cond6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29) #27
end_hunk_0
