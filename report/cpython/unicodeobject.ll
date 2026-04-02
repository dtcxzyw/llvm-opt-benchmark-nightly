begin_hunk_0
@_Py_ctype_table = external local_unnamed_addr constant [256 x i32], align 16
@_Py_ctype_tolower = external local_unnamed_addr constant [256 x i8], align 16
@.str.44 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"latin1\00", align 1
@.str.50 = private unnamed_addr constant [102 x i8] c"'%.400s' decoder returned '%.400s' instead of 'str'; use codecs.decode() to decode to arbitrary types\00", align 1
@PyByteArray_Type = external global %struct._typeobject, align 8
@PyExc_RuntimeWarning = external local_unnamed_addr global ptr, align 8
end_hunk_0
begin_hunk_1
define dso_local ptr @PyUnicode_Decode(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.Py_buffer, align 8          ; 4 uses
  %i.a = alloca [11 x i8], align 1                ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.b = tail call fastcc i32 @unicode_check_encoding_errors(ptr noundef %2, ptr noundef %3)
end_hunk_1
begin_hunk_2
  br label %_PyUnicode_Result.exit

bb.u:                                             ; preds = %.loopexit
  %5 = load i32, ptr %i.a, align 1
  %6 = xor i32 %5, 1768125281
  %7 = getelementptr i8, ptr %i.a, i64 4
  %8 = load i16, ptr %7, align 1
  %9 = zext i16 %8 to i32
  %10 = xor i32 %9, 105
  %11 = or i32 %6, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  %i.bb = icmp eq i32 %13, 0
  br i1 %i.bb, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %14 = load i64, ptr %i.a, align 1
  %15 = xor i64 %14, 7595711593743086453
  %16 = getelementptr i8, ptr %i.a, i64 8
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i64
  %19 = or i64 %15, %18
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  %i.bc = icmp eq i32 %21, 0
  br i1 %i.bc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
end_hunk_2
begin_hunk_3
  br label %_PyUnicode_Result.exit

bb.x:                                             ; preds = %bb.v
  %22 = load i32, ptr %i.a, align 1
  %23 = xor i32 %22, 1769234796
  %24 = getelementptr i8, ptr %i.a, i64 3
  %25 = load i32, ptr %24, align 1
  %26 = xor i32 %25, 3239529
  %27 = or i32 %23, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %i.be = icmp eq i32 %29, 0
  br i1 %i.be, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %30 = load i64, ptr %i.a, align 1
  %31 = icmp ne i64 %30, 13897201679098220
  %32 = zext i1 %31 to i32
  %i.bf = icmp eq i32 %32, 0
  br i1 %i.bf, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %33 = load i64, ptr %i.a, align 1
  %34 = xor i64 %33, 4122262848698020713
  %35 = getelementptr i8, ptr %i.a, i64 3
  %36 = load i64, ptr %35, align 1
  %37 = xor i64 %36, 13896973169473631
  %38 = or i64 %34, %37
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i32
  %i.bg = icmp eq i32 %40, 0
  br i1 %i.bg, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %41 = load i64, ptr %i.a, align 1
  %42 = xor i64 %41, 6861574022856930153
  %43 = getelementptr i8, ptr %i.a, i64 8
  %44 = load i16, ptr %43, align 1
  %45 = zext i16 %44 to i64
  %46 = xor i64 %45, 49
  %47 = or i64 %42, %46
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i32
  %i.bh = icmp eq i32 %49, 0
  br i1 %i.bh, label %bb.ab, label %PyUnicode_DecodeLatin1.exit

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
end_hunk_3
begin_hunk_4
; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsEncodedString(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.b = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val80 = load ptr, ptr %i.b, align 8, !tbaa !197
end_hunk_4
begin_hunk_5
  br label %Py_DECREF.exit76

bb.v:                                             ; preds = %.loopexit
  %3 = load i32, ptr %i.a, align 1
  %4 = xor i32 %3, 1768125281
  %5 = getelementptr i8, ptr %i.a, i64 4
  %6 = load i16, ptr %5, align 1
  %7 = zext i16 %6 to i32
  %8 = xor i32 %7, 105
  %9 = or i32 %4, %8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %i.bc = icmp eq i32 %11, 0
  br i1 %i.bc, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %12 = load i64, ptr %i.a, align 1
  %13 = xor i64 %12, 7595711593743086453
  %14 = getelementptr i8, ptr %i.a, i64 8
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i64
  %17 = or i64 %13, %16
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i32
  %i.bd = icmp eq i32 %19, 0
  br i1 %i.bd, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w, %bb.v
end_hunk_5
begin_hunk_6
  br label %Py_DECREF.exit76

bb.ae:                                            ; preds = %bb.w
  %20 = load i32, ptr %i.a, align 1
  %21 = xor i32 %20, 1769234796
  %22 = getelementptr i8, ptr %i.a, i64 3
  %23 = load i32, ptr %22, align 1
  %24 = xor i32 %23, 3239529
  %25 = or i32 %21, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %i.bo = icmp eq i32 %27, 0
  br i1 %i.bo, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %28 = load i64, ptr %i.a, align 1
  %29 = icmp ne i64 %28, 13897201679098220
  %30 = zext i1 %29 to i32
  %i.bp = icmp eq i32 %30, 0
  br i1 %i.bp, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %31 = load i64, ptr %i.a, align 1
  %32 = xor i64 %31, 4122262848698020713
  %33 = getelementptr i8, ptr %i.a, i64 3
  %34 = load i64, ptr %33, align 1
  %35 = xor i64 %34, 13896973169473631
  %36 = or i64 %32, %35
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i32
  %i.bq = icmp eq i32 %38, 0
  br i1 %i.bq, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %39 = load i64, ptr %i.a, align 1
  %40 = xor i64 %39, 6861574022856930153
  %41 = getelementptr i8, ptr %i.a, i64 8
  %42 = load i16, ptr %41, align 1
  %43 = zext i16 %42 to i64
  %44 = xor i64 %43, 49
  %45 = or i64 %40, %44
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i32
  %i.br = icmp eq i32 %47, 0
  br i1 %i.br, label %bb.ai, label %_PyUnicode_AsASCIIString.exit

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
end_hunk_6
