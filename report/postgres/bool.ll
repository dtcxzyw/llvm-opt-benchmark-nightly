Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/bool?download=true
inline.NumInlined: 52
inline.NumDeleted: 14
begin_hunk_0_@parse_bool_with_len:bb.a
bb.g:                                             ; preds = %bb.f
  %.not40 = icmp eq ptr %2, null
  br i1 %.not40, label %bb.s, label %.sink.split

bb.h:                                             ; preds = %bb.a, %bb.a
  %i.h = tail call i32 @pg_strncasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i64 noundef %1) #12
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %.not39 = icmp eq ptr %2, null
  br i1 %.not39, label %bb.s, label %.sink.split

bb.j:                                             ; preds = %bb.a, %bb.a
  %i.j = tail call i64 @llvm.umax.i64(i64 %1, i64 2) ; 2 uses
  %i.k = tail call i32 @pg_strncasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i64 noundef %i.j) #12
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.not38 = icmp eq ptr %2, null
  br i1 %.not38, label %bb.s, label %.sink.split

bb.l:                                             ; preds = %bb.j
  %i.m = tail call i32 @pg_strncasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i64 noundef %i.j) #12
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %.not37 = icmp eq ptr %2, null
  br i1 %.not37, label %bb.s, label %.sink.split

bb.n:                                             ; preds = %bb.a
  %i.o = icmp eq i64 %1, 1
  br i1 %i.o, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not36 = icmp eq ptr %2, null
  br i1 %.not36, label %bb.s, label %.sink.split

bb.p:                                             ; preds = %bb.a
  %i.p = icmp eq i64 %1, 1
  br i1 %i.p, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.s, label %.sink.split

bb.r:                                             ; preds = %bb.a, %bb.p, %bb.n, %bb.l, %bb.h, %bb.f, %bb.d, %bb.b
  %.not43 = icmp eq ptr %2, null
  br i1 %.not43, label %bb.s, label %.sink.split

.sink.split:                                      ; preds = %bb.r, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.sink = phi i8 [ 0, %bb.q ], [ 1, %bb.o ], [ 0, %bb.m ], [ 1, %bb.k ], [ 0, %bb.i ], [ 1, %bb.g ], [ 0, %bb.e ], [ 1, %bb.c ], [ 0, %bb.r ]
  %.0.ph = phi i1 [ true, %bb.q ], [ true, %bb.o ], [ true, %bb.m ], [ true, %bb.k ], [ true, %bb.i ], [ true, %bb.g ], [ true, %bb.e ], [ true, %bb.c ], [ false, %bb.r ]
  store i8 %.sink, ptr %2, align 1
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.r, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi i1 [ true, %bb.q ], [ true, %bb.o ], [ true, %bb.c ], [ true, %bb.e ], [ true, %bb.g ], [ true, %bb.i ], [ true, %bb.k ], [ true, %bb.m ], [ false, %bb.r ], [ %.0.ph, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

declare i32 @pg_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @boolin(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.e = tail call ptr @__ctype_b_loc() #13
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.015 = phi ptr [ %i.d, %bb.a ], [ %i.l, %bb.b ] ; 5 uses
  %i.g = load i8, ptr %.015, align 1
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2
  %i.k = and i16 %i.j, 8192
  %.not = icmp eq i16 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %.015, i64 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !6

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.015) #11 ; 2 uses
  %.not1719 = icmp eq i64 %i.m, 0
  br i1 %.not1719, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.020 = phi i64 [ %i.u, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %i.n = getelementptr i8, ptr %.015, i64 %.020
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2
  %i.t = and i16 %i.s, 8192
  %.not18 = icmp eq i16 %i.t, 0
  br i1 %.not18, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.u = add i64 %.020, -1                        ; 2 uses
  %.not17 = icmp eq i64 %i.u, 0
  br i1 %.not17, label %.critedge, label %.lr.ph, !llvm.loop !7

.critedge:                                        ; preds = %.lr.ph, %bb.d, %bb.c
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ 0, %bb.d ], [ %.020, %.lr.ph ]
  %i.v = call zeroext i1 @parse_bool_with_len(ptr noundef nonnull %.015, i64 noundef %.0.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.w = load i8, ptr %i.a, align 1, !range !4, !noundef !5
  %i.x = zext nneg i8 %i.w to i64
  br label %bb.h

bb.f:                                             ; preds = %.critedge
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = call zeroext i1 @errsave_start(ptr noundef %i.z, ptr noundef null) #12
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = call i32 @errcode(i32 noundef 33685634) #12 ; 0 uses
  %i.ac = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef %i.d) #12 ; 0 uses
  call void @errsave_finish(ptr noundef %i.z, ptr noundef nonnull @.str.8, i32 noundef 151, ptr noundef nonnull @__func__.boolin) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.016 = phi i64 [ %i.x, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.016
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

declare zeroext i1 @errsave_start(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare void @errsave_finish(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @boolout(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, 0
  %i.c = tail call ptr @palloc(i64 noundef 2) #12 ; 3 uses
  %i.d = select i1 %.not, i8 102, i8 116
  store i8 %i.d, ptr %i.c, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 0, ptr %i.e, align 1
  %i.f = ptrtoint ptr %i.c to i64
  ret i64 %i.f
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @boolrecv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call i32 @pq_getmsgbyte(ptr noundef %i.c) #12
  %i.e = icmp ne i32 %i.d, 0
  %i.f = zext i1 %i.e to i64
  ret i64 %i.f
}

declare i32 @pq_getmsgbyte(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @boolsend(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.StringInfoData, align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ne i64 %i.b, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @pq_begintypsend(ptr noundef nonnull %1) #12
  %i.d = zext i1 %i.c to i8
  call void @enlargeStringInfo(ptr noundef nonnull %1, i32 noundef 1) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %i.e = load ptr, ptr %1, align 8, !alias.scope !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !alias.scope !11 ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  store i8 %i.d, ptr %i.i, align 1, !noalias !11
  %i.j = add i32 %i.g, 1
  store i32 %i.j, ptr %i.f, align 8, !alias.scope !11
  %i.k = call ptr @pq_endtypsend(ptr noundef nonnull %1) #12
  %i.l = ptrtoint ptr %i.k to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i64 %i.l
}

declare void @pq_begintypsend(ptr noundef) local_unnamed_addr #2

declare ptr @pq_endtypsend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @booltext(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, 0
  %.str..str.1 = select i1 %.not, ptr @.str.1, ptr @.str
  %i.c = tail call ptr @cstring_to_text(ptr noundef nonnull %.str..str.1) #12
  %i.d = ptrtoint ptr %i.c to i64
  ret i64 %i.d
}

declare ptr @cstring_to_text(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @booleq(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ne i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0
  %i.g = xor i1 %i.c, %i.f
  %i.h = zext i1 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @boolne(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ne i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ne i64 %i.e, 0
  %i.g = xor i1 %i.c, %i.f
  %i.h = zext i1 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @boollt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ne i64 %i.d, 0
  %i.f = and i1 %.not, %i.e
  %i.g = zext i1 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @boolgt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ne i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %i.e, 0
  %i.f = and i1 %i.c, %.not
  %i.g = zext i1 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @boolle(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %.not, %i.e
  %i.g = zext i1 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @boolge(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ne i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %i.e, 0
  %i.f = or i1 %i.c, %.not
  %i.g = zext i1 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 4294967296) i64 @hashbool(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ne i64 %i.b, 0
  %i.d = zext i1 %i.c to i32
  %i.e = tail call i32 @hash_bytes_uint32(i32 noundef range(i32 0, 2) %i.d) #12
  %i.f = zext i32 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: nounwind uwtable
define dso_local i64 @hashboolextended(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ne i64 %i.b, 0
  %i.d = zext i1 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call i64 @hash_bytes_uint32_extended(i32 noundef range(i32 0, 2) %i.d, i64 noundef %i.f) #12
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @booland_statefunc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ne i64 %i.d, 0
  %i.f = zext i1 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i64 [ 0, %bb.a ], [ %i.f, %bb.b ]
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @boolor_statefunc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ne i64 %i.d, 0
  %i.f = zext i1 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i64 [ 1, %bb.a ], [ %i.f, %bb.b ]
  ret i64 %i.g
}

; Function Attrs: nounwind uwtable
define dso_local i64 @bool_accum(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i8, ptr %i.b, align 8, !range !4, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.i = call i32 @AggCheckCallContext(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.c, label %makeBoolAggState.exit

bb.c:                                             ; preds = %.thread
  %i.j = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.k = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10) #12 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.8, i32 noundef 330, ptr noundef nonnull @__func__.makeBoolAggState) #12
  unreachable
end_hunk_0
begin_hunk_1_@bool_accum:bb.a
  %i.o = load i8, ptr %i.n, align 8, !range !4, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i64, ptr %.0, align 8
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %.0, align 8
  %i.t = load i64, ptr %i.q, align 8
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.x = ptrtoint ptr %.0 to i64
  ret i64 %i.x
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 1, 0) i64 @bool_accum_inv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  %i.h = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.i = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.8, i32 noundef 370, ptr noundef nonnull @__func__.bool_accum_inv) #12
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i8, ptr %i.j, align 8, !range !4, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i64, ptr %i.f, align 8
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr %i.f, align 8
  %i.p = load i64, ptr %i.m, align 8
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = add i64 %i.r, -1
  store i64 %i.s, ptr %i.q, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret i64 %i.e
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 2) i64 @bool_alltrue(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8              ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.j, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp eq i64 %i.l, %i.h
  %i.n = zext i1 %i.m to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %.0 = phi i64 [ 0, %.thread ], [ %i.n, %bb.d ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 2) i64 @bool_anytrue(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.j, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp sgt i64 %i.l, 0
  %i.n = zext i1 %i.m to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %.0 = phi i64 [ 0, %.thread ], [ %i.n, %bb.d ]
  ret i64 %.0
}

declare void @enlargeStringInfo(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @hash_bytes_uint32(i32 noundef) local_unnamed_addr #2

declare i64 @hash_bytes_uint32_extended(i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @AggCheckCallContext(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @MemoryContextAlloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = distinct !{!6, !8}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, i1 false, !"pq_writeint8"}
!10 = distinct !{!10, !9, !"pq_writeint8: argument 0"}
!11 = !{!10}
end_hunk_1
