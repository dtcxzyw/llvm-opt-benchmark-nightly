begin_hunk_0
@_Py_ctype_table = external local_unnamed_addr constant [256 x i32], align 16
@_Py_ctype_tolower = external local_unnamed_addr constant [256 x i8], align 16
@.str.44 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"us_ascii\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"latin1\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"latin_1\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"iso_8859_1\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"iso8859_1\00", align 1
@.str.50 = private unnamed_addr constant [102 x i8] c"'%.400s' decoder returned '%.400s' instead of 'str'; use codecs.decode() to decode to arbitrary types\00", align 1
@PyByteArray_Type = external global %struct._typeobject, align 8
@PyExc_RuntimeWarning = external local_unnamed_addr global ptr, align 8
end_hunk_0
begin_hunk_1
define dso_local ptr @PyUnicode_Decode(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.Py_buffer, align 8          ; 4 uses
  %i.a = alloca [11 x i8], align 1                ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.b = tail call fastcc i32 @unicode_check_encoding_errors(ptr noundef %2, ptr noundef %3)
end_hunk_1
begin_hunk_2
  br label %_PyUnicode_Result.exit

bb.u:                                             ; preds = %.loopexit
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %i.a, ptr noundef nonnull dereferenceable(6) @.str.44, i64 6)
  %i.bb = icmp eq i32 %bcmp, 0
  br i1 %i.bb, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %bcmp66 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %i.a, ptr noundef nonnull dereferenceable(9) @.str.45, i64 9)
  %i.bc = icmp eq i32 %bcmp66, 0
  br i1 %i.bc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
end_hunk_2
begin_hunk_3
  br label %_PyUnicode_Result.exit

bb.x:                                             ; preds = %bb.v
  %bcmp67 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %i.a, ptr noundef nonnull dereferenceable(7) @.str.46, i64 7)
  %i.be = icmp eq i32 %bcmp67, 0
  br i1 %i.be, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %bcmp68 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %i.a, ptr noundef nonnull dereferenceable(8) @.str.47, i64 8)
  %i.bf = icmp eq i32 %bcmp68, 0
  br i1 %i.bf, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %bcmp69 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %i.a, ptr noundef nonnull dereferenceable(11) @.str.48, i64 11)
  %i.bg = icmp eq i32 %bcmp69, 0
  br i1 %i.bg, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %bcmp70 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %i.a, ptr noundef nonnull dereferenceable(10) @.str.49, i64 10)
  %i.bh = icmp eq i32 %bcmp70, 0
  br i1 %i.bh, label %bb.ab, label %PyUnicode_DecodeLatin1.exit

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
end_hunk_3
begin_hunk_4
; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsEncodedString(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.b = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val80 = load ptr, ptr %i.b, align 8, !tbaa !197
end_hunk_4
begin_hunk_5
  br label %Py_DECREF.exit76

bb.v:                                             ; preds = %.loopexit
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %i.a, ptr noundef nonnull dereferenceable(6) @.str.44, i64 6)
  %i.bc = icmp eq i32 %bcmp, 0
  br i1 %i.bc, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %bcmp60 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %i.a, ptr noundef nonnull dereferenceable(9) @.str.45, i64 9)
  %i.bd = icmp eq i32 %bcmp60, 0
  br i1 %i.bd, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w, %bb.v
end_hunk_5
begin_hunk_6
  br label %Py_DECREF.exit76

bb.ae:                                            ; preds = %bb.w
  %bcmp61 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %i.a, ptr noundef nonnull dereferenceable(7) @.str.46, i64 7)
  %i.bo = icmp eq i32 %bcmp61, 0
  br i1 %i.bo, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %bcmp62 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %i.a, ptr noundef nonnull dereferenceable(8) @.str.47, i64 8)
  %i.bp = icmp eq i32 %bcmp62, 0
  br i1 %i.bp, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %bcmp63 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %i.a, ptr noundef nonnull dereferenceable(11) @.str.48, i64 11)
  %i.bq = icmp eq i32 %bcmp63, 0
  br i1 %i.bq, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %bcmp64 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %i.a, ptr noundef nonnull dereferenceable(10) @.str.49, i64 10)
  %i.br = icmp eq i32 %bcmp64, 0
  br i1 %i.br, label %bb.ai, label %_PyUnicode_AsASCIIString.exit

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
end_hunk_6
