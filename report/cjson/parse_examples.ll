inline.NumInlined: 141
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@read_file:bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.028 = phi ptr [ %.0.ph, %bb.i ], [ null, %bb.a ]
  ret ptr %.028
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @main() local_unnamed_addr #8 {
bb.a:
  tail call void @UnityBegin(ptr noundef nonnull @.str.2) #28
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @file_test1_should_be_parsed_and_printed, ptr noundef nonnull @.str.3, i32 noundef 283) #28
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @file_test2_should_be_parsed_and_printed, ptr noundef nonnull @.str.4, i32 noundef 284) #28
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @file_test3_should_be_parsed_and_printed, ptr noundef nonnull @.str.5, i32 noundef 285) #28
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @file_test4_should_be_parsed_and_printed, ptr noundef nonnull @.str.6, i32 noundef 286) #28
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @file_test5_should_be_parsed_and_printed, ptr noundef nonnull @.str.7, i32 noundef 287) #28
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @file_test6_should_not_be_parsed, ptr noundef nonnull @.str.8, i32 noundef 288) #28
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @file_test7_should_be_parsed_and_printed, ptr noundef nonnull @.str.9, i32 noundef 289) #28
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @file_test8_should_be_parsed_and_printed, ptr noundef nonnull @.str.10, i32 noundef 290) #28
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @file_test9_should_be_parsed_and_printed, ptr noundef nonnull @.str.11, i32 noundef 291) #28
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @file_test10_should_be_parsed_and_printed, ptr noundef nonnull @.str.12, i32 noundef 292) #28
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @file_test11_should_be_parsed_and_printed, ptr noundef nonnull @.str.13, i32 noundef 293) #28
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @test12_should_not_be_parsed, ptr noundef nonnull @.str.14, i32 noundef 294) #28
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @test13_should_be_parsed_without_null_termination, ptr noundef nonnull @.str.15, i32 noundef 295) #28
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @test14_should_not_be_parsed, ptr noundef nonnull @.str.16, i32 noundef 296) #28
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @test15_should_not_heap_buffer_overflow, ptr noundef nonnull @.str.17, i32 noundef 297) #28
  %i.a = tail call i32 @UnityEnd() #28
  ret i32 %i.a
}

declare void @UnityBegin(ptr noundef) local_unnamed_addr #22

declare void @UnityDefaultTestRun(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define internal void @file_test1_should_be_parsed_and_printed() #8 {
bb.a:
  tail call fastcc void @do_test(ptr noundef nonnull @.str.28)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @file_test2_should_be_parsed_and_printed() #8 {
bb.a:
  tail call fastcc void @do_test(ptr noundef nonnull @.str.36)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @file_test3_should_be_parsed_and_printed() #8 {
bb.a:
  tail call fastcc void @do_test(ptr noundef nonnull @.str.37)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @file_test4_should_be_parsed_and_printed() #8 {
bb.a:
  tail call fastcc void @do_test(ptr noundef nonnull @.str.38)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @file_test5_should_be_parsed_and_printed() #8 {
bb.a:
  tail call fastcc void @do_test(ptr noundef nonnull @.str.39)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @file_test6_should_not_be_parsed() #8 {
bb.a:
  %i.a = tail call ptr @read_file(ptr noundef nonnull @.str.40) ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread17, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %i.c = add i64 %i.b, 1
  %i.d = tail call ptr @cJSON_ParseWithLengthOpts(ptr noundef nonnull %i.a, i64 noundef %i.c, ptr noundef null, i32 noundef 0) ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @UnityFail(ptr noundef nonnull @.str.42, i64 noundef 143) #28
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = load ptr, ptr @global_error.0, align 8, !tbaa !9
  %i.h = load i64, ptr @global_error.1, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.j = ptrtoint ptr %i.i to i64
  tail call void @UnityAssertEqualNumber(i64 noundef %i.f, i64 noundef %i.j, ptr noundef nonnull @.str.43, i64 noundef 145, i32 noundef 72) #28
  tail call void @free(ptr noundef nonnull %i.a) #28
  tail call void @cJSON_Delete(ptr noundef nonnull %i.d)
  br label %bb.d

.thread17:                                        ; preds = %bb.a
  tail call void @UnityFail(ptr noundef nonnull @.str.41, i64 noundef 140) #28
  %i.k = load ptr, ptr @global_error.0, align 8, !tbaa !9
  %i.l = load i64, ptr @global_error.1, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = ptrtoint ptr %i.m to i64
  tail call void @UnityAssertEqualNumber(i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull @.str.43, i64 noundef 145, i32 noundef 72) #28
  br label %bb.d

.critedge:                                        ; preds = %bb.b
  %i.o = ptrtoint ptr %i.a to i64
  %i.p = load ptr, ptr @global_error.0, align 8, !tbaa !9
  %i.q = load i64, ptr @global_error.1, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.s = ptrtoint ptr %i.r to i64
  tail call void @UnityAssertEqualNumber(i64 noundef %i.o, i64 noundef %i.s, ptr noundef nonnull @.str.43, i64 noundef 145, i32 noundef 72) #28
  tail call void @free(ptr noundef nonnull %i.a) #28
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %.thread17, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @file_test7_should_be_parsed_and_printed() #8 {
bb.a:
  tail call fastcc void @do_test(ptr noundef nonnull @.str.44)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @file_test8_should_be_parsed_and_printed() #8 {
bb.a:
  tail call fastcc void @do_test(ptr noundef nonnull @.str.45)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @file_test9_should_be_parsed_and_printed() #8 {
bb.a:
  tail call fastcc void @do_test(ptr noundef nonnull @.str.46)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @file_test10_should_be_parsed_and_printed() #8 {
bb.a:
  tail call fastcc void @do_test(ptr noundef nonnull @.str.47)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @file_test11_should_be_parsed_and_printed() #8 {
bb.a:
  tail call fastcc void @do_test(ptr noundef nonnull @.str.48)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @test12_should_not_be_parsed() #8 {
bb.a:
  %i.a = tail call ptr @cJSON_ParseWithLengthOpts(ptr noundef nonnull @.str.49, i64 noundef 11, ptr noundef null, i32 noundef 0) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.c = load ptr, ptr @global_error.0, align 8, !tbaa !9
  %i.d = load i64, ptr @global_error.1, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %i.e to i64
  tail call void @UnityAssertEqualNumber(i64 noundef ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @.str.49, i64 10) to i64), i64 noundef %i.f, ptr noundef nonnull @.str.43, i64 noundef 190, i32 noundef 72) #28
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @UnityFail(ptr noundef nonnull @.str.50, i64 noundef 188) #28
  %i.g = load ptr, ptr @global_error.0, align 8, !tbaa !9
  %i.h = load i64, ptr @global_error.1, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.j = ptrtoint ptr %i.i to i64
  tail call void @UnityAssertEqualNumber(i64 noundef ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @.str.49, i64 10) to i64), i64 noundef %i.j, ptr noundef nonnull @.str.43, i64 noundef 190, i32 noundef 72) #28
  tail call void @cJSON_Delete(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @test13_should_be_parsed_without_null_termination() #8 {
bb.a:
  %0 = alloca %struct.parse_buffer, align 8       ; 9 uses
  %i.a = alloca [178 x i8], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(178) %i.a, ptr noundef nonnull align 16 dereferenceable(178) @__const.test14_should_not_be_parsed.test_14, i64 178, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #28
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %1, align 8
  store ptr null, ptr @global_error.0, align 8, !tbaa !9
  store i64 0, ptr @global_error.1, align 8, !tbaa !14
  %.0.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.0.i.sroa.gep48.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !33
  store i64 178, ptr %.0.i.sroa.gep48.i, align 8, !tbaa !35
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @global_hooks, i64 24, i1 false), !tbaa.struct !36
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %3 = call ptr %global_hooks.val.i(i64 noundef 64) #28, !inline_history !99 ; 5 uses
  %.not = icmp eq ptr %3, null
  %.0.i.sroa.gep.promoted.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  br i1 %.not, label %bb.b, label %4

4:                                                ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %5 = load i8, ptr %i.a, align 16                ; 2 uses
  %.not14.i.i = icmp eq i8 %5, -17
  br i1 %.not14.i.i, label %sub_1.i.i, label %skip_utf8_bom.exit.i

sub_1.i.i:                                        ; preds = %4
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %7 = load i8, ptr %6, align 1
  %.not15.i.i = icmp eq i8 %7, -69
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %9 = load i8, ptr %8, align 2
  %10 = icmp eq i8 %9, -65
  %or.cond = select i1 %.not15.i.i, i1 %10, i1 false
  br i1 %or.cond, label %11, label %buffer_skip_whitespace.exit.sink.split.i

11:                                               ; preds = %sub_1.i.i
  %.pr.pre = load i8, ptr %.0.i.sroa.gep.promoted.i.sroa.gep, align 1, !tbaa !40
  br label %skip_utf8_bom.exit.i

skip_utf8_bom.exit.i:                             ; preds = %11, %4
  %12 = phi i8 [ %5, %4 ], [ %.pr.pre, %11 ]
  %.0.i.sroa.gep.promoted.i = phi i64 [ 0, %4 ], [ 3, %11 ] ; 2 uses
  %13 = icmp ult i8 %12, 33
  br i1 %13, label %.lr.ph.i.preheader, label %buffer_skip_whitespace.exit.sink.split.i

.lr.ph.i.preheader:                               ; preds = %skip_utf8_bom.exit.i
  %14 = add nuw nsw i64 %.0.i.sroa.gep.promoted.i, 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %15 = phi i64 [ %14, %.lr.ph.i.preheader ], [ %19, %.lr.ph.i ] ; 3 uses
  %16 = getelementptr inbounds nuw i8, ptr %i.a, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !40
  %18 = icmp ult i8 %17, 33
  br i1 %18, label %.lr.ph.i, label %buffer_skip_whitespace.exit.sink.split.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %19 = add nuw nsw i64 %15, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %19, 178
  br i1 %exitcond.not.i.i, label %buffer_skip_whitespace.exit.sink.split.i, label %.lr.ph.i.i

buffer_skip_whitespace.exit.sink.split.i:         ; preds = %.lr.ph.i, %.lr.ph.i.i, %sub_1.i.i, %skip_utf8_bom.exit.i
  %.lcssa62.sink.i = phi i64 [ %.0.i.sroa.gep.promoted.i, %skip_utf8_bom.exit.i ], [ 0, %sub_1.i.i ], [ %15, %.lr.ph.i.i ], [ 177, %.lr.ph.i ]
  store i64 %.lcssa62.sink.i, ptr %.0.i.sroa.gep.i, align 8
  %20 = call fastcc i32 @parse_value(ptr noundef %3, ptr noundef nonnull %0)
  %.not.i = icmp eq i32 %20, 0
  br i1 %.not.i, label %.thread55.i, label %.critedge

.thread55.i:                                      ; preds = %buffer_skip_whitespace.exit.sink.split.i
  call void @cJSON_Delete(ptr noundef nonnull %3)
  %.pre75.i = load i64, ptr %.0.i.sroa.gep.i, align 8, !tbaa !39
  %.pre76.i = load i64, ptr %.0.i.sroa.gep48.i, align 8, !tbaa !35
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread55.i
  %21 = phi i64 [ %.pre76.i, %.thread55.i ], [ 178, %bb.a ] ; 2 uses
  %22 = phi i64 [ %.pre75.i, %.thread55.i ], [ 0, %bb.a ] ; 2 uses
  %23 = icmp ult i64 %22, %21
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %21, i64 1)
  %.sroa.5.0.i = select i1 %23, i64 %22, i64 %spec.select.i
  store ptr %i.a, ptr @global_error.0, align 8, !tbaa !41
  store i64 %.sroa.5.0.i, ptr @global_error.1, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #28
  call void @UnityFail(ptr noundef nonnull @.str.51, i64 noundef 219) #28
  br label %bb.c

.critedge:                                        ; preds = %buffer_skip_whitespace.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #28
  call void @cJSON_Delete(ptr noundef nonnull %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @test14_should_not_be_parsed() #8 {
bb.a:
  %0 = alloca %struct.parse_buffer, align 8       ; 9 uses
  %i.a = alloca [179 x i8], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(179) %i.a, ptr noundef nonnull align 16 dereferenceable(179) @__const.test14_should_not_be_parsed.test_14, i64 179, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #28
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %1, align 8
  store ptr null, ptr @global_error.0, align 8, !tbaa !9
  store i64 0, ptr @global_error.1, align 8, !tbaa !14
  %.0.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.0.i.sroa.gep48.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !33
  store i64 177, ptr %.0.i.sroa.gep48.i, align 8, !tbaa !35
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @global_hooks, i64 24, i1 false), !tbaa.struct !36
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !21
  %3 = call ptr %global_hooks.val.i(i64 noundef 64) #28, !inline_history !99 ; 5 uses
  %cond = icmp eq ptr %3, null
  %.0.i.sroa.gep.promoted.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  br i1 %cond, label %cJSON_ParseWithLengthOpts.exit.thread, label %4

4:                                                ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %5 = load i8, ptr %i.a, align 16                ; 2 uses
  %.not14.i.i = icmp eq i8 %5, -17
  br i1 %.not14.i.i, label %sub_1.i.i, label %skip_utf8_bom.exit.i

sub_1.i.i:                                        ; preds = %4
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %7 = load i8, ptr %6, align 1
  %.not15.i.i = icmp eq i8 %7, -69
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %9 = load i8, ptr %8, align 2
  %10 = icmp eq i8 %9, -65
  %or.cond = select i1 %.not15.i.i, i1 %10, i1 false
  br i1 %or.cond, label %11, label %buffer_skip_whitespace.exit.sink.split.i

11:                                               ; preds = %sub_1.i.i
  %.pr.pre = load i8, ptr %.0.i.sroa.gep.promoted.i.sroa.gep, align 1, !tbaa !40
  br label %skip_utf8_bom.exit.i

skip_utf8_bom.exit.i:                             ; preds = %11, %4
  %12 = phi i8 [ %5, %4 ], [ %.pr.pre, %11 ]
  %.0.i.sroa.gep.promoted.i = phi i64 [ 0, %4 ], [ 3, %11 ] ; 2 uses
  %13 = icmp ult i8 %12, 33
  br i1 %13, label %.lr.ph.i.preheader, label %buffer_skip_whitespace.exit.sink.split.i

.lr.ph.i.preheader:                               ; preds = %skip_utf8_bom.exit.i
  %14 = add nuw nsw i64 %.0.i.sroa.gep.promoted.i, 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %15 = phi i64 [ %14, %.lr.ph.i.preheader ], [ %19, %.lr.ph.i ] ; 3 uses
  %16 = getelementptr inbounds nuw i8, ptr %i.a, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !40
  %18 = icmp ult i8 %17, 33
  br i1 %18, label %.lr.ph.i, label %buffer_skip_whitespace.exit.sink.split.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %19 = add nuw nsw i64 %15, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %19, 177
  br i1 %exitcond.not.i.i, label %buffer_skip_whitespace.exit.sink.split.i, label %.lr.ph.i.i

buffer_skip_whitespace.exit.sink.split.i:         ; preds = %.lr.ph.i, %.lr.ph.i.i, %sub_1.i.i, %skip_utf8_bom.exit.i
  %.lcssa62.sink.i = phi i64 [ %.0.i.sroa.gep.promoted.i, %skip_utf8_bom.exit.i ], [ 0, %sub_1.i.i ], [ %15, %.lr.ph.i.i ], [ 176, %.lr.ph.i ]
  store i64 %.lcssa62.sink.i, ptr %.0.i.sroa.gep.i, align 8
  %20 = call fastcc i32 @parse_value(ptr noundef %3, ptr noundef nonnull %0)
  %.not.i = icmp eq i32 %20, 0
  br i1 %.not.i, label %.thread55.i, label %bb.b

.thread55.i:                                      ; preds = %buffer_skip_whitespace.exit.sink.split.i
  call void @cJSON_Delete(ptr noundef nonnull %3)
  %.pre75.i = load i64, ptr %.0.i.sroa.gep.i, align 8, !tbaa !39
  %.pre76.i = load i64, ptr %.0.i.sroa.gep48.i, align 8, !tbaa !35
  br label %cJSON_ParseWithLengthOpts.exit.thread

cJSON_ParseWithLengthOpts.exit.thread:            ; preds = %bb.a, %.thread55.i
  %21 = phi i64 [ %.pre76.i, %.thread55.i ], [ 177, %bb.a ] ; 2 uses
  %22 = phi i64 [ %.pre75.i, %.thread55.i ], [ 0, %bb.a ] ; 2 uses
  %23 = icmp ult i64 %22, %21
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %21, i64 1)
  %.sroa.5.0.i = select i1 %23, i64 %22, i64 %spec.select.i
  store ptr %i.a, ptr @global_error.0, align 8, !tbaa !41
  store i64 %.sroa.5.0.i, ptr @global_error.1, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #28
  br label %bb.c

bb.b:                                             ; preds = %buffer_skip_whitespace.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #28
  call void @UnityFail(ptr noundef nonnull @.str.52, i64 noundef 245) #28
  call void @cJSON_Delete(ptr noundef nonnull %3)
  br label %bb.c

bb.c:                                             ; preds = %cJSON_ParseWithLengthOpts.exit.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @test15_should_not_heap_buffer_overflow() #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(7) ptr @malloc(i64 noundef 7) #31 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.split, label %.split12

.split12:                                         ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.53, i64 7, i1 false)
  %i.b = tail call ptr @cJSON_ParseWithLengthOpts(ptr noundef nonnull %i.a, i64 noundef 7, ptr noundef null, i32 noundef 0)
  tail call void @cJSON_Delete(ptr noundef %i.b)
  tail call void @free(ptr noundef %i.a) #28
  %i.c = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #31 ; 4 uses
  %.not.1 = icmp eq ptr %i.c, null
  br i1 %.not.1, label %.split.1, label %.split12.1

.split:                                           ; preds = %bb.a
  tail call void @UnityFail(ptr noundef nonnull @.str.55, i64 noundef 270) #28
  unreachable

.split12.1:                                       ; preds = %.split12
  store i64 2318282033940472443, ptr %i.c, align 1
  %i.d = tail call ptr @cJSON_ParseWithLengthOpts(ptr noundef nonnull %i.c, i64 noundef 8, ptr noundef null, i32 noundef 0)
  tail call void @cJSON_Delete(ptr noundef %i.d)
  tail call void @free(ptr noundef %i.c) #28
  ret void

.split.1:                                         ; preds = %.split12
  tail call void @UnityFail(ptr noundef nonnull @.str.55, i64 noundef 270) #28
  unreachable
}

declare i32 @UnityEnd() local_unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @parse_string(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !39   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 6 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 7 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !40
  %.not = icmp eq i8 %i.e, 34
  br i1 %.not, label %.preheader, label %.thread103

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !35   ; 3 uses
  %i.h = add nuw nsw i64 %i.c, 1
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %.lr.ph, label %.thread103

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.in = phi ptr [ %.ptr124, %bb.d ], [ %.ptr, %.preheader ]
  %.059117 = phi i64 [ %.160, %bb.d ], [ 0, %.preheader ] ; 3 uses
  %.063116.idx = phi i64 [ %.164.add, %bb.d ], [ 1, %.preheader ] ; 5 uses
  %.063116.ptr = getelementptr inbounds nuw i8, ptr %i.d, i64 %.063116.idx
  %i.j = load i8, ptr %.063116.ptr, align 1, !tbaa !40
  switch i8 %i.j, label %bb.d [
    i8 34, label %bb.e
    i8 92, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph
  %.063116.add = add nuw nsw i64 %.063116.idx, 1  ; 2 uses
  %i.k = add nuw nsw i64 %i.c, %.063116.add
  %.not75 = icmp ult i64 %i.k, %i.g
  br i1 %.not75, label %bb.c, label %.thread103

bb.c:                                             ; preds = %bb.b
  %i.l = add i64 %.059117, 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.164.idx = phi i64 [ %.063116.add, %bb.c ], [ %.063116.idx, %.lr.ph ]
  %.160 = phi i64 [ %i.l, %bb.c ], [ %.059117, %.lr.ph ]
  %.164.add = add nuw nsw i64 %.164.idx, 1        ; 3 uses
  %.ptr124 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.164.add
  %i.m = add nuw nsw i64 %i.c, %.164.add
  %i.n = icmp ult i64 %i.m, %i.g
  br i1 %i.n, label %.lr.ph, label %.thread103

bb.e:                                             ; preds = %.lr.ph
  %i.o = ptrtoint ptr %.in to i64                 ; 4 uses
  %.063116.ptr.le = getelementptr inbounds nuw i8, ptr %i.d, i64 %.063116.idx
  %i.p = ptrtoint ptr %i.d to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !45
  %i.s = add i64 %.059117, %i.p
  %reass.sub = sub i64 %i.o, %i.s
  %i.t = add i64 %reass.sub, 1
  %i.u = tail call ptr %i.r(i64 noundef %i.t) #28 ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread103, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.e
  %i.w = icmp sgt i64 %.063116.idx, 1
  br i1 %i.w, label %.lr.ph123, label %.critedge._crit_edge

.lr.ph123:                                        ; preds = %.critedge.preheader, %.critedge
  %.065120 = phi ptr [ %.2, %.critedge ], [ %.ptr, %.critedge.preheader ] ; 13 uses
  %.090119 = phi ptr [ %.393, %.critedge ], [ %i.u, %.critedge.preheader ] ; 19 uses
  %i.x = load i8, ptr %.065120, align 1, !tbaa !40 ; 2 uses
  %.not76 = icmp eq i8 %i.x, 92
  br i1 %.not76, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph123
  %i.y = getelementptr inbounds nuw i8, ptr %.065120, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 %i.x, ptr %.090119, align 1, !tbaa !40
  br label %.critedge

bb.g:                                             ; preds = %.lr.ph123
  %i.aa = ptrtoint ptr %.065120 to i64
  %i.ab = sub i64 %i.o, %i.aa                     ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 1
  br i1 %i.ac, label %utf16_literal_to_utf8.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.065120, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !40  ; 2 uses
  switch i8 %i.ae, label %utf16_literal_to_utf8.exit.thread [
    i8 98, label %bb.i
    i8 102, label %bb.j
    i8 110, label %bb.k
    i8 114, label %bb.l
    i8 116, label %bb.m
    i8 34, label %bb.n
    i8 92, label %bb.n
    i8 47, label %bb.n
    i8 117, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 8, ptr %.090119, align 1, !tbaa !40
  br label %bb.al

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 12, ptr %.090119, align 1, !tbaa !40
  br label %bb.al

bb.k:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 10, ptr %.090119, align 1, !tbaa !40
  br label %bb.al

bb.l:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 13, ptr %.090119, align 1, !tbaa !40
  br label %bb.al

bb.m:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 9, ptr %.090119, align 1, !tbaa !40
  br label %bb.al

bb.n:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 %i.ae, ptr %.090119, align 1, !tbaa !40
  br label %bb.al

bb.o:                                             ; preds = %bb.h
  %i.al = icmp samesign ult i64 %i.ab, 6
  br i1 %i.al, label %utf16_literal_to_utf8.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %.065120, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !40  ; 4 uses
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = add i8 %i.an, -48
  %or.cond.i.i = icmp ult i8 %i.ap, 10
  br i1 %or.cond.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = add i8 %i.an, -65
  %or.cond31.i.i = icmp ult i8 %i.aq, 6
  br i1 %or.cond31.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = add i8 %i.an, -97
  %or.cond32.i.i = icmp ult i8 %i.ar, 6
  br i1 %or.cond32.i.i, label %bb.s, label %bb.ak

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.sink.i.i = phi i32 [ -48, %bb.p ], [ -55, %bb.q ], [ -87, %bb.r ]
  %i.as = add nsw i32 %.sink.i.i, %i.ao
  %i.at = getelementptr inbounds nuw i8, ptr %.065120, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !40  ; 4 uses
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = add i8 %i.au, -48
end_hunk_0
begin_hunk_1_@do_test:bb.a
  %.not32 = icmp eq ptr %i.m, null
  br i1 %.not32, label %.split, label %.split26

.split:                                           ; preds = %bb.g, %parse_file.exit
  tail call void @UnityFail(ptr noundef nonnull @.str.34, i64 noundef 77) #28
  br label %.split26

.split26:                                         ; preds = %parse_file.exit, %.split
  %.sink = phi ptr [ null, %.split ], [ %i.m, %parse_file.exit ] ; 2 uses
  %.not3238 = phi i1 [ true, %.split ], [ false, %parse_file.exit ]
  %i.n = tail call fastcc ptr @print(ptr noundef %.sink, i32 noundef 1) ; 3 uses
  %.not33 = icmp eq ptr %i.n, null                ; 2 uses
  br i1 %.not33, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.split26
  tail call void @UnityFail(ptr noundef nonnull @.str.35, i64 noundef 81) #28
  br label %bb.i

bb.i:                                             ; preds = %.split26, %bb.h
  tail call void @UnityAssertEqualString(ptr noundef %i.h, ptr noundef %i.n, ptr noundef null, i64 noundef 84) #28
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.h) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %.not3238, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @cJSON_Delete(ptr noundef nonnull %.sink)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %.not33, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.n) #28
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @free(ptr noundef nonnull %i.c) #28
  tail call void @free(ptr noundef nonnull %i.e) #28
  ret void
}

declare void @UnityFail(ptr noundef, i64 noundef) local_unnamed_addr #22

declare void @UnityAssertEqualString(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #22

declare void @UnityAssertEqualNumber(i64 noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #26

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { nounwind willreturn memory(none) }
attributes #31 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"", !11, i64 0, !13, i64 8}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!10, !13, i64 8}
!15 = !{!16, !6, i64 24}
!16 = !{!"cJSON", !17, i64 0, !17, i64 8, !17, i64 16, !6, i64 24, !11, i64 32, !6, i64 40, !18, i64 48, !11, i64 56}
!17 = !{!"p1 _ZTS5cJSON", !12, i64 0}
!18 = !{!"double", !7, i64 0}
!19 = !{!16, !11, i64 32}
!20 = !{!16, !18, i64 48}
!21 = !{!22, !12, i64 0}
!22 = !{!"internal_hooks", !12, i64 0, !12, i64 8, !12, i64 16}
!23 = !{!24, !12, i64 0}
!24 = !{!"cJSON_Hooks", !12, i64 0, !12, i64 8}
!25 = !{!22, !12, i64 8}
!26 = !{!24, !12, i64 8}
!27 = !{!16, !17, i64 0}
!28 = !{!16, !17, i64 16}
!29 = !{!16, !11, i64 56}
!30 = !{!16, !6, i64 40}
!31 = distinct !{null}
!32 = !{ptr @cJSON_free}
!33 = !{!34, !11, i64 0}
!34 = !{!"", !11, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !22, i64 32}
!35 = !{!34, !13, i64 8}
!36 = !{i64 0, i64 8, !37, i64 8, i64 8, !37, i64 16, i64 8, !37}
!37 = !{!12, !12, i64 0}
!38 = distinct !{null}
!39 = !{!34, !13, i64 16}
!40 = !{!7, !7, i64 0}
!41 = !{!11, !11, i64 0}
!42 = !{!13, !13, i64 0}
!43 = !{!44, !11, i64 0}
!44 = !{!"lconv", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !7, i64 80, !7, i64 81, !7, i64 82, !7, i64 83, !7, i64 84, !7, i64 85, !7, i64 86, !7, i64 87, !7, i64 88, !7, i64 89, !7, i64 90, !7, i64 91, !7, i64 92, !7, i64 93}
!45 = !{!34, !12, i64 32}
!46 = distinct !{null}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = !{!"branch_weights", i32 8, i32 24}
!51 = distinct !{!51, !48, !49}
!52 = distinct !{!52, !49, !48}
!53 = !{!34, !12, i64 40}
!54 = !{!34, !13, i64 24}
!55 = distinct !{null, null}
!56 = !{!16, !17, i64 8}
!57 = distinct !{null}
!58 = !{!59, !11, i64 0}
!59 = !{!"", !11, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !22, i64 40}
!60 = !{!59, !13, i64 8}
!61 = !{!59, !6, i64 36}
!62 = !{!59, !13, i64 16}
!63 = !{!22, !12, i64 16}
!64 = !{!59, !6, i64 32}
!65 = !{!59, !12, i64 56}
!66 = !{ptr @ensure}
!67 = !{!59, !12, i64 48}
!68 = !{!59, !12, i64 40}
!69 = !{!18, !18, i64 0}
!70 = distinct !{!70, !49, !48}
!71 = !{!59, !13, i64 24}
!72 = distinct !{null}
!73 = distinct !{null}
!74 = !{!17, !17, i64 0}
!75 = !{!76, !76, i64 0}
!76 = !{!"p1 int", !12, i64 0}
!77 = !{!6, !6, i64 0}
!78 = distinct !{null, null}
!79 = distinct !{null}
!80 = distinct !{null, null}
!81 = distinct !{ptr @cJSON_CreateNull, null}
!82 = distinct !{ptr @cJSON_CreateTrue, null}
!83 = distinct !{ptr @cJSON_CreateFalse, null}
!84 = distinct !{ptr @cJSON_CreateBool, null}
!85 = distinct !{ptr @cJSON_CreateNumber, null}
!86 = distinct !{ptr @cJSON_CreateString, null}
!87 = distinct !{ptr @cJSON_CreateString, null}
!88 = distinct !{ptr @cJSON_CreateRaw, null}
!89 = distinct !{ptr @cJSON_CreateRaw, null}
!90 = distinct !{ptr @cJSON_CreateObject, null}
!91 = distinct !{ptr @cJSON_CreateArray, null}
!92 = distinct !{!92, !93}
!93 = !{!"llvm.loop.peeled.count", i32 1}
!94 = !{!95, !95, i64 0}
!95 = !{!"float", !7, i64 0}
!96 = distinct !{!96, !93}
!97 = distinct !{!97, !93}
!98 = distinct !{!98, !93}
!99 = distinct !{ptr @cJSON_ParseWithLengthOpts, null}
end_hunk_1
