Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/copyfromparse?download=true
inline.NumInlined: 63
inline.NumDeleted: 27
begin_hunk_0
@my_wait_event_info = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [59 x i8] c"wrong number of fields in header line: got %d, expected %d\00", align 1
@__func__.NextCopyFromRawFieldsInternal = private unnamed_addr constant [30 x i8] c"NextCopyFromRawFieldsInternal\00", align 1
@.str.14 = private unnamed_addr constant [83 x i8] c"column name mismatch in header line field %d: got null value (\22%s\22), expected \22%s\22\00", align 1
@.str.15 = private unnamed_addr constant [70 x i8] c"column name mismatch in header line field %d: got \22%s\22, expected \22%s\22\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"literal carriage return found in data\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"unquoted carriage return found in data\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"Use \22\\r\22 to represent carriage return.\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"Use quoted CSV field to represent carriage return.\00", align 1
@__func__.CopyReadLineText = private unnamed_addr constant [17 x i8] c"CopyReadLineText\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"literal newline found in data\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"unquoted newline found in data\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Use \22\\n\22 to represent newline.\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"Use quoted CSV field to represent newline.\00", align 1
@.str.24 = private unnamed_addr constant [57 x i8] c"end-of-copy marker does not match previous newline style\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"end-of-copy marker is not alone on its line\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"encoding conversion failed without error\00", align 1
@__func__.CopyConversionError = private unnamed_addr constant [20 x i8] c"CopyConversionError\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"extra data after last expected column\00", align 1
@__func__.CopyReadAttributesCSV = private unnamed_addr constant [22 x i8] c"CopyReadAttributesCSV\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"unterminated CSV quoted field\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"unexpected default marker in COPY data\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"Column \22%s\22 has no default value.\00", align 1
@__func__.CopyReadAttributesText = private unnamed_addr constant [23 x i8] c"CopyReadAttributesText\00", align 1
@__func__.CopyFromTextLikeOneRow = private unnamed_addr constant [23 x i8] c"CopyFromTextLikeOneRow\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"missing data for column \22%s\22\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"domain %s does not allow null values\00", align 1
@.str.33 = private unnamed_addr constant [97 x i8] c"ON_ERROR SET_NULL cannot be applied because column \22%s\22 (domain %s) does not accept null values.\00", align 1
@.str.34 = private unnamed_addr constant [80 x i8] c"skipping row due to data type incompatibility at line %lu for column \22%s\22: \22%s\22\00", align 1
@.str.35 = private unnamed_addr constant [83 x i8] c"setting to null due to data type incompatibility at line %lu for column \22%s\22: \22%s\22\00", align 1
@.str.36 = private unnamed_addr constant [86 x i8] c"skipping row due to data type incompatibility at line %lu for column \22%s\22: null input\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"unexpected EOF in COPY data\00", align 1
@__func__.CopyReadBinaryAttribute = private unnamed_addr constant [24 x i8] c"CopyReadBinaryAttribute\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"invalid field size\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"incorrect binary data format\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ReceiveCopyBegin(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.StringInfoData, align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %list_length.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  br label %list_length.exit

list_length.exit:                                 ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 1                      ; 2 uses
  call void @pq_beginmessage(ptr noundef nonnull %1, i8 noundef signext 71) #14
  %i.i = zext i1 %i.h to i8
  call void @enlargeStringInfo(ptr noundef nonnull %1, i32 noundef 1) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.j = load ptr, ptr %1, align 8, !alias.scope !18
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.l = load i32, ptr %i.k, align 8, !alias.scope !18 ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  store i8 %i.i, ptr %i.n, align 1, !noalias !18
  %i.o = add i32 %i.l, 1
  store i32 %i.o, ptr %i.k, align 8, !alias.scope !18
  %i.p = trunc i32 %i.e to i16
  call void @enlargeStringInfo(ptr noundef nonnull %1, i32 noundef 2) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %i.q = call i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = load ptr, ptr %1, align 8, !alias.scope !19
  %i.s = load i32, ptr %i.k, align 8, !alias.scope !19 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t
  store i16 %i.q, ptr %i.u, align 1, !noalias !19
  %i.v = add i32 %i.s, 2
  store i32 %i.v, ptr %i.k, align 8, !alias.scope !19
  %i.w = icmp sgt i32 %i.e, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %list_length.exit
  %i.x = select i1 %i.h, i16 256, i16 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.09 = phi i32 [ 0, %.lr.ph ], [ %i.ad, %bb.c ]
  call void @enlargeStringInfo(ptr noundef nonnull %1, i32 noundef 2) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.y = load ptr, ptr %1, align 8, !alias.scope !20
  %i.z = load i32, ptr %i.k, align 8, !alias.scope !20 ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 %i.aa
  store i16 %i.x, ptr %i.ab, align 1, !noalias !20
  %i.ac = add i32 %i.z, 2
  store i32 %i.ac, ptr %i.k, align 8, !alias.scope !20
  %i.ad = add nuw nsw i32 %.09, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ad, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.c, %list_length.exit
  call void @pq_endmessage(ptr noundef nonnull %1) #14
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ae, align 8
  %i.af = call ptr @makeStringInfo() #14
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = load ptr, ptr @PqCommMethods, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call i32 %i.aj() #14                    ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @pq_beginmessage(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare void @pq_endmessage(ptr noundef) local_unnamed_addr #2

declare ptr @makeStringInfo() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @ReceiveCopyBinaryHeader(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [11 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.d = call fastcc i32 @CopyReadBinaryData(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 11)
  %.not5 = icmp eq i32 %i.d, 11
  br i1 %.not5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 1
  %i.f = xor i64 %i.e, -69144642808756400
  %i.g = getelementptr i8, ptr %i.c, i64 3
  %i.h = load i64, ptr %i.g, align 1
  %i.i = xor i64 %i.h, 2830138808553551
  %i.j = or i64 %i.f, %i.i
  %i.k = icmp ne i64 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %.not6 = icmp eq i32 %i.l, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.n = tail call i32 @errcode(i32 noundef 67240066) #14 ; 0 uses
  %i.o = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__func__.ReceiveCopyBinaryHeader) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.p = call fastcc i32 @CopyReadBinaryData(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 4)
  %.not.i = icmp eq i32 %i.p, 4
  %i.q = load i32, ptr %i.b, align 4
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.t = tail call i32 @errcode(i32 noundef 67240066) #14 ; 0 uses
  %i.u = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.2) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 209, ptr noundef nonnull @__func__.ReceiveCopyBinaryHeader) #14
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.v = and i32 %i.r, 65536
  %.not7 = icmp eq i32 %i.v, 0
  br i1 %.not7, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.x = tail call i32 @errcode(i32 noundef 67240066) #14 ; 0 uses
  %i.y = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 213, ptr noundef nonnull @__func__.ReceiveCopyBinaryHeader) #14
  unreachable

bb.h:                                             ; preds = %bb.f
  %.not8 = icmp ult i32 %i.r, 131072
  br i1 %.not8, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.aa = tail call i32 @errcode(i32 noundef 67240066) #14 ; 0 uses
  %i.ab = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.4) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 218, ptr noundef nonnull @__func__.ReceiveCopyBinaryHeader) #14
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ac = call fastcc i32 @CopyReadBinaryData(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 4)
  %.not.i10 = icmp eq i32 %i.ac, 4
  %i.ad = load i32, ptr %i.a, align 4
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.af = icmp sgt i32 %i.ae, -1
  %or.cond.not = select i1 %.not.i10, i1 %i.af, i1 false
  br i1 %or.cond.not, label %.preheader.preheader, label %bb.k

.preheader.preheader:                             ; preds = %bb.j
  %i.ag = icmp sgt i32 %i.ae, 0
  br i1 %i.ag, label %.lr.ph, label %.preheader._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.ai = tail call i32 @errcode(i32 noundef 67240066) #14 ; 0 uses
  %i.aj = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.5) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 224, ptr noundef nonnull @__func__.ReceiveCopyBinaryHeader) #14
  unreachable

.preheader:                                       ; preds = %.lr.ph
  %i.ak = add nsw i32 %.014, -1
  %i.al = icmp sgt i32 %.014, 1
  br i1 %i.al, label %.lr.ph, label %.preheader._crit_edge, !llvm.loop !21

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %.014 = phi i32 [ %i.ak, %.preheader ], [ %i.ae, %.preheader.preheader ] ; 2 uses
  %i.am = call fastcc i32 @CopyReadBinaryData(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 1)
  %.not = icmp eq i32 %i.am, 1
  br i1 %.not, label %.preheader, label %bb.l, !llvm.loop !21

bb.l:                                             ; preds = %.lr.ph
  %i.an = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.ao = tail call i32 @errcode(i32 noundef 67240066) #14 ; 0 uses
  %i.ap = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 231, ptr noundef nonnull @__func__.ReceiveCopyBinaryHeader) #14
  unreachable

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @CopyReadBinaryData(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 572 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 7 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = sub i32 %i.b, %i.d
  %.not = icmp slt i32 %i.e, %2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 548 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = sext i32 %i.d to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.n, i64 %i.o, i1 false)
  %i.p = load i32, ptr %i.c, align 8
  %i.q = add i32 %i.p, %2
  store i32 %i.q, ptr %i.c, align 8
  br label %.thread

bb.c:                                             ; preds = %.preheader, %bb.g
  %i.r = phi i32 [ %i.ar, %bb.g ], [ %i.d, %.preheader ] ; 2 uses
  %.036 = phi ptr [ %i.as, %bb.g ], [ %1, %.preheader ] ; 2 uses
  %.035 = phi i32 [ %i.at, %bb.g ], [ 0, %.preheader ] ; 4 uses
  %i.s = load i32, ptr %i.a, align 4              ; 2 uses
  %i.t = icmp eq i32 %i.s, %i.r
  br i1 %i.t, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.a, align 4
  store i32 0, ptr %i.c, align 8
  %i.u = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.g, align 8
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %i.h, align 8
  %i.y = load i32, ptr %i.i, align 4
  %i.z = sub i32 %i.y, %i.x
  store i32 %i.z, ptr %i.i, align 4
  store i32 0, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = tail call fastcc i32 @CopyGetData(ptr noundef nonnull %0, ptr noundef %i.u, i32 noundef 65536) ; 3 uses
  %i.ab = load ptr, ptr %i.f, align 8
  %i.ac = sext i32 %i.aa to i64                   ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac
  store i8 0, ptr %i.ad, align 1
  store i32 %i.aa, ptr %i.a, align 4
  %i.ae = load i64, ptr %i.j, align 8
  %i.af = add i64 %i.ae, %i.ac                    ; 2 uses
  store i64 %i.af, ptr %i.j, align 8
  tail call void @pgstat_progress_update_param(i32 noundef 0, i64 noundef %i.af) #14
  %i.ag = icmp eq i32 %i.aa, 0
  br i1 %i.ag, label %CopyLoadRawBuf.exit.thread, label %CopyLoadRawBuf.exit

CopyLoadRawBuf.exit.thread:                       ; preds = %bb.f
  store i8 1, ptr %i.k, align 8
  br label %.thread

CopyLoadRawBuf.exit:                              ; preds = %bb.f
  %.pre = load i8, ptr %i.k, align 8, !range !8
  %i.ah = trunc nuw i8 %.pre to i1
  br i1 %i.ah, label %.thread, label %CopyLoadRawBuf.exit._crit_edge

CopyLoadRawBuf.exit._crit_edge:                   ; preds = %CopyLoadRawBuf.exit
  %.pre45 = load i32, ptr %i.a, align 4
  %.pre46 = load i32, ptr %i.c, align 8
  br label %bb.g

bb.g:                                             ; preds = %CopyLoadRawBuf.exit._crit_edge, %bb.c
  %i.ai = phi i32 [ %.pre46, %CopyLoadRawBuf.exit._crit_edge ], [ %i.r, %bb.c ] ; 2 uses
  %i.aj = phi i32 [ %.pre45, %CopyLoadRawBuf.exit._crit_edge ], [ %i.s, %bb.c ]
  %i.ak = sub i32 %2, %.035
  %i.al = sub i32 %i.aj, %i.ai
  %. = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %i.al) ; 3 uses
  %i.am = load ptr, ptr %i.f, align 8
  %i.an = sext i32 %i.ai to i64
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  %i.ap = sext i32 %. to i64                      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.036, ptr align 1 %i.ao, i64 %i.ap, i1 false)
  %i.aq = load i32, ptr %i.c, align 8
  %i.ar = add i32 %i.aq, %.                       ; 2 uses
  store i32 %i.ar, ptr %i.c, align 8
  %i.as = getelementptr inbounds i8, ptr %.036, i64 %i.ap
  %i.at = add i32 %., %.035                       ; 3 uses
  %i.au = icmp slt i32 %i.at, %2
  br i1 %i.au, label %bb.c, label %.thread, !llvm.loop !22

.thread:                                          ; preds = %CopyLoadRawBuf.exit, %bb.g, %CopyLoadRawBuf.exit.thread, %bb.b
  %.2 = phi i32 [ %2, %bb.b ], [ %.035, %CopyLoadRawBuf.exit.thread ], [ %.035, %CopyLoadRawBuf.exit ], [ %i.at, %bb.g ]
  ret i32 %.2
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @NextCopyFromRawFields(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 2                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 4 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.h, -1
  %spec.store.select.i = select i1 %i.i, i32 1, i32 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp sgt i32 %spec.store.select.i, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.053.i13 = phi i32 [ %i.r, %.lr.ph ], [ 0, %bb.c ]
  %i.o = load i64, ptr %i.d, align 8
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.d, align 8
  %i.q = tail call fastcc zeroext i1 @CopyReadLine(ptr noundef nonnull %0, i1 noundef zeroext %i.c) ; 2 uses
  %i.r = add nuw nsw i32 %.053.i13, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.r, %spec.store.select.i
  %or.cond = select i1 %i.q, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !0

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.g, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.s = phi i32 [ %i.h, %bb.c ], [ %.pre, %._crit_edge.loopexit ]
  %.lcssa = phi i1 [ false, %bb.c ], [ %i.q, %._crit_edge.loopexit ]
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %._crit_edge
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call fastcc i32 @CopyReadAttributesCSV(ptr noundef nonnull %0)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.v = tail call fastcc i32 @CopyReadAttributesText(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.056.i = phi i32 [ %i.u, %bb.e ], [ %i.v, %bb.f ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %.not.i4 = icmp eq ptr %i.x, null
  br i1 %.not.i4, label %list_length.exit, label %list_length.exit.thread

end_hunk_0
