begin_hunk_0
inline.NumInlined: 5
inline.NumDeleted: 2
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1

; Function Attrs: nounwind uwtable
define internal i32 @FNT_Face_Init(ptr noundef %0, ptr noundef initializes((248, 256)) %1, i32 noundef %2, i32 %3, ptr readnone captures(none) %4) #0 {
  %6 = alloca i32, align 4                        ; 39 uses
  %7 = alloca %struct.WinMZ_HeaderRec_, align 2   ; 5 uses
  %8 = alloca %struct.WinNE_HeaderRec_, align 2   ; 11 uses
  %9 = alloca %struct.WinPE32_HeaderRec_, align 8 ; 11 uses
end_hunk_1
begin_hunk_2
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 12 uses
  store ptr null, ptr %27, align 8, !tbaa !28
  %28 = zext nneg i32 %24 to i64                  ; 5 uses
  %29 = tail call i32 @FT_Stream_Seek(ptr noundef %26, i64 noundef 0) #11
  %.not.i = icmp eq i32 %29, 0
  br i1 %.not.i, label %30, label %32

end_hunk_2
