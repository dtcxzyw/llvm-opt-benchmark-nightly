Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/parse_examples?download=true
inline.NumInlined: 139
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@UnityBegin
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
  %i.g = load ptr, ptr @global_error.0, align 8, !tbaa !22
  %i.h = load i64, ptr @global_error.1, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.j = ptrtoint ptr %i.i to i64
  tail call void @UnityAssertEqualNumber(i64 noundef %i.f, i64 noundef %i.j, ptr noundef nonnull @.str.43, i64 noundef 145, i32 noundef 72) #28
  tail call void @free(ptr noundef nonnull %i.a) #28
  tail call void @cJSON_Delete(ptr noundef nonnull %i.d)
  br label %bb.d

.thread17:                                        ; preds = %bb.a
  tail call void @UnityFail(ptr noundef nonnull @.str.41, i64 noundef 140) #28
  %i.k = load ptr, ptr @global_error.0, align 8, !tbaa !22
  %i.l = load i64, ptr @global_error.1, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = ptrtoint ptr %i.m to i64
  tail call void @UnityAssertEqualNumber(i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull @.str.43, i64 noundef 145, i32 noundef 72) #28
  br label %bb.d

.critedge:                                        ; preds = %bb.b
  %i.o = ptrtoint ptr %i.a to i64
  %i.p = load ptr, ptr @global_error.0, align 8, !tbaa !22
  %i.q = load i64, ptr @global_error.1, align 8, !tbaa !23
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
  %i.c = load ptr, ptr @global_error.0, align 8, !tbaa !22
  %i.d = load i64, ptr @global_error.1, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %i.e to i64
  tail call void @UnityAssertEqualNumber(i64 noundef ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @.str.49, i64 10) to i64), i64 noundef %i.f, ptr noundef nonnull @.str.43, i64 noundef 190, i32 noundef 72) #28
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @UnityFail(ptr noundef nonnull @.str.50, i64 noundef 188) #28
  %i.g = load ptr, ptr @global_error.0, align 8, !tbaa !22
  %i.h = load i64, ptr @global_error.1, align 8, !tbaa !23
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
  %i.a = alloca [178 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(178) %i.a, ptr noundef nonnull align 16 dereferenceable(178) @__const.test14_should_not_be_parsed.test_14, i64 178, i1 false)
  %i.b = call ptr @cJSON_ParseWithLengthOpts(ptr noundef nonnull %i.a, i64 noundef 178, ptr noundef null, i32 noundef 0) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  call void @UnityFail(ptr noundef nonnull @.str.51, i64 noundef 219) #28
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  call void @cJSON_Delete(ptr noundef nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @test14_should_not_be_parsed() #8 {
bb.a:
  %i.a = alloca [179 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(179) %i.a, ptr noundef nonnull align 16 dereferenceable(179) @__const.test14_should_not_be_parsed.test_14, i64 179, i1 false)
  %i.b = call ptr @cJSON_ParseWithLengthOpts(ptr noundef nonnull %i.a, i64 noundef 177, ptr noundef null, i32 noundef 0) ; 2 uses
  %cond = icmp eq ptr %i.b, null
  br i1 %cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @UnityFail(ptr noundef nonnull @.str.52, i64 noundef 245) #28
  call void @cJSON_Delete(ptr noundef nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
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
  %i.a = load ptr, ptr %1, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !44   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 6 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 7 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !45
  %.not = icmp eq i8 %i.e, 34
  br i1 %.not, label %.preheader, label %.thread103

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !41   ; 3 uses
  %i.h = add nuw nsw i64 %i.c, 1
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %.lr.ph, label %.thread103

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.in = phi ptr [ %.ptr124, %bb.d ], [ %.ptr, %.preheader ]
  %.059117 = phi i64 [ %.160, %bb.d ], [ 0, %.preheader ] ; 3 uses
  %.063116.idx = phi i64 [ %.164.add, %bb.d ], [ 1, %.preheader ] ; 5 uses
  %.063116.ptr = getelementptr inbounds nuw i8, ptr %i.d, i64 %.063116.idx
  %i.j = load i8, ptr %.063116.ptr, align 1, !tbaa !45
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
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50
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
  %i.x = load i8, ptr %.065120, align 1, !tbaa !45 ; 2 uses
  %.not76 = icmp eq i8 %i.x, 92
  br i1 %.not76, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph123
  %i.y = getelementptr inbounds nuw i8, ptr %.065120, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 %i.x, ptr %.090119, align 1, !tbaa !45
  br label %.critedge

bb.g:                                             ; preds = %.lr.ph123
  %i.aa = ptrtoint ptr %.065120 to i64
  %i.ab = sub i64 %i.o, %i.aa                     ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 1
  br i1 %i.ac, label %utf16_literal_to_utf8.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.065120, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !45  ; 2 uses
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
  store i8 8, ptr %.090119, align 1, !tbaa !45
  br label %bb.al

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 12, ptr %.090119, align 1, !tbaa !45
  br label %bb.al

bb.k:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 10, ptr %.090119, align 1, !tbaa !45
  br label %bb.al

bb.l:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 13, ptr %.090119, align 1, !tbaa !45
  br label %bb.al

bb.m:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 9, ptr %.090119, align 1, !tbaa !45
  br label %bb.al

bb.n:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 %i.ae, ptr %.090119, align 1, !tbaa !45
  br label %bb.al

bb.o:                                             ; preds = %bb.h
  %i.al = icmp samesign ult i64 %i.ab, 6
  br i1 %i.al, label %utf16_literal_to_utf8.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %.065120, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !45  ; 4 uses
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
  %i.au = load i8, ptr %i.at, align 1, !tbaa !45  ; 4 uses
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = add i8 %i.au, -48
  %or.cond.1.i.i = icmp ult i8 %i.aw, 10
  br i1 %or.cond.1.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = add i8 %i.au, -65
  %or.cond31.1.i.i = icmp ult i8 %i.ax, 6
  br i1 %or.cond31.1.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = add i8 %i.au, -97
  %or.cond32.1.i.i = icmp ult i8 %i.ay, 6
  br i1 %or.cond32.1.i.i, label %bb.v, label %bb.ak

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sink35.i.i = phi i32 [ -55, %bb.t ], [ -87, %bb.u ], [ -48, %bb.s ]
  %i.az = add nsw i32 %.sink35.i.i, %i.av
  %i.ba = shl nuw nsw i32 %i.as, 8
  %i.bb = shl nuw nsw i32 %i.az, 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.065120, i64 4
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !45  ; 4 uses
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = add i8 %i.bd, -48
  %or.cond.2.i.i = icmp ult i8 %i.bf, 10
  br i1 %or.cond.2.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = add i8 %i.bd, -65
  %or.cond31.2.i.i = icmp ult i8 %i.bg, 6
  br i1 %or.cond31.2.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = add i8 %i.bd, -97
end_hunk_0
