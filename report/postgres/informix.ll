Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/informix?download=true
inline.NumInlined: 19
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"mm/dd/yyyy\00", align 1
@value.5 = internal unnamed_addr global ptr null, align 8
@sqlca_init = internal unnamed_addr constant { [8 x i8], i64, i64, { i32, [150 x i8], [2 x i8] }, [8 x i8], [4 x i8], [6 x i64], [8 x i8], [5 x i8], [3 x i8] } { [8 x i8] c"SQLCA   ", i64 256, i64 0, { i32, [150 x i8], [2 x i8] } zeroinitializer, [8 x i8] c"NOT SET ", [4 x i8] zeroinitializer, [6 x i64] zeroinitializer, [8 x i8] zeroinitializer, [5 x i8] c"00000", [3 x i8] zeroinitializer }, align 8
@switch.table.rdefmtdate = private unnamed_addr constant [5 x i32] [i32 -1212, i32 -1209, i32 -1212, i32 -1206, i32 -1205], align 4

; Function Attrs: nounwind uwtable
define range(i32 -1201, 1) i32 @decadd(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @__errno_location() #16    ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.b = tail call fastcc i32 @deccall3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @PGTYPESnumeric_add) ; 0 uses
  %i.c = load i32, ptr %i.a, align 4
  switch i32 %i.c, label %bb.c [
    i32 301, label %bb.e
    i32 304, label %bb.b
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.d ], [ -1201, %bb.b ], [ -1, %bb.c ], [ -1200, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @deccall3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @ECPGis_noind_null(i32 noundef 17, ptr noundef %0) #17
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @ECPGis_noind_null(i32 noundef 17, ptr noundef %1) #17
  br i1 %i.b, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @PGTYPESnumeric_new() #17  ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @PGTYPESnumeric_new() #17  ; 8 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @PGTYPESnumeric_new() #17  ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.sink.split.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @PGTYPESnumeric_from_decimal(ptr noundef %0, ptr noundef nonnull %i.c) #17
  %.not31 = icmp eq i32 %i.i, 0
  br i1 %.not31, label %bb.g, label %.sink.split.sink.split.sink.split

bb.g:                                             ; preds = %bb.f
  %i.j = tail call i32 @PGTYPESnumeric_from_decimal(ptr noundef %1, ptr noundef nonnull %i.e) #17
  %.not32 = icmp eq i32 %i.j, 0
  br i1 %.not32, label %bb.h, label %.sink.split.sink.split.sink.split

bb.h:                                             ; preds = %bb.g
  %i.k = tail call i32 %3(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g) #17, !callees !3 ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.i, label %.sink.split.sink.split.sink.split

bb.i:                                             ; preds = %bb.h
  tail call void @ECPGset_noind_null(i32 noundef 17, ptr noundef %2) #17
  %i.m = tail call i32 @PGTYPESnumeric_to_decimal(ptr noundef nonnull %i.g, ptr noundef %2) #17 ; 0 uses
  br label %.sink.split.sink.split.sink.split

.sink.split.sink.split.sink.split:                ; preds = %bb.h, %bb.i, %bb.g, %bb.f
  %.sink37 = phi ptr [ %i.c, %bb.g ], [ %i.c, %bb.f ], [ %i.g, %bb.i ], [ %i.g, %bb.h ]
  %.sink36.ph = phi ptr [ %i.e, %bb.g ], [ %i.e, %bb.f ], [ %i.c, %bb.i ], [ %i.c, %bb.h ]
  %.sink.ph.ph = phi ptr [ %i.g, %bb.g ], [ %i.g, %bb.f ], [ %i.e, %bb.i ], [ %i.e, %bb.h ]
  %.0.ph.ph.ph = phi i32 [ -1211, %bb.g ], [ -1211, %bb.f ], [ %i.k, %bb.i ], [ %i.k, %bb.h ]
  tail call void @PGTYPESnumeric_free(ptr noundef nonnull %.sink37) #17
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %.sink.split.sink.split.sink.split, %bb.e
  %.sink36 = phi ptr [ %i.c, %bb.e ], [ %.sink36.ph, %.sink.split.sink.split.sink.split ]
  %.sink.ph = phi ptr [ %i.e, %bb.e ], [ %.sink.ph.ph, %.sink.split.sink.split.sink.split ]
  %.0.ph.ph = phi i32 [ -1211, %bb.e ], [ %.0.ph.ph.ph, %.sink.split.sink.split.sink.split ]
  tail call void @PGTYPESnumeric_free(ptr noundef nonnull %.sink36) #17
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.d
  %.sink = phi ptr [ %i.c, %bb.d ], [ %.sink.ph, %.sink.split.sink.split ]
  %.0.ph = phi i32 [ -1211, %bb.d ], [ %.0.ph.ph, %.sink.split.sink.split ]
  tail call void @PGTYPESnumeric_free(ptr noundef nonnull %.sink) #17
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ -1211, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

declare i32 @PGTYPESnumeric_add(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @deccmp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PGTYPESnumeric_new() #17  ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %deccall2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PGTYPESnumeric_new() #17  ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @PGTYPESnumeric_from_decimal(ptr noundef %0, ptr noundef nonnull %i.a) #17
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %.sink.split.sink.split.i

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @PGTYPESnumeric_from_decimal(ptr noundef %1, ptr noundef nonnull %i.c) #17
  %.not17.i = icmp eq i32 %i.f, 0
  br i1 %.not17.i, label %bb.e, label %.sink.split.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @PGTYPESnumeric_cmp(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #17
  br label %.sink.split.sink.split.i

.sink.split.sink.split.i:                         ; preds = %bb.e, %bb.d, %bb.c
  %.0.ph.ph.i = phi i32 [ %i.g, %bb.e ], [ -1211, %bb.c ], [ -1211, %bb.d ]
  tail call void @PGTYPESnumeric_free(ptr noundef nonnull %i.a) #17
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %bb.b
  %.sink.i = phi ptr [ %i.a, %bb.b ], [ %i.c, %.sink.split.sink.split.i ]
  %.0.ph.i = phi i32 [ -1211, %bb.b ], [ %.0.ph.ph.i, %.sink.split.sink.split.i ]
  tail call void @PGTYPESnumeric_free(ptr noundef nonnull %.sink.i) #17
  br label %deccall2.exit

deccall2.exit:                                    ; preds = %bb.a, %.sink.split.i
  %.0.i = phi i32 [ -1211, %bb.a ], [ %.0.ph.i, %.sink.split.i ]
  ret i32 %.0.i
}

declare i32 @PGTYPESnumeric_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @deccopy(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 52)) %1) local_unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %1, ptr noundef nonnull align 4 dereferenceable(52) %0, i64 52, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define range(i32 -1216, 1) i32 @deccvasc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @ECPGset_noind_null(i32 noundef 17, ptr noundef %2) #17
  %i.a = tail call zeroext i1 @ECPGis_noind_null(i32 noundef 1, ptr noundef %0) #17
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #18
  %i.d = tail call i64 @llvm.umin.i64(i64 %i.c, i64 range(i64 -2147483648, 2147483648) %i.b)
  %i.e = shl i64 %i.d, 32                         ; 2 uses
  %sext.i = add i64 %i.e, 4294967296
  %i.f = ashr exact i64 %sext.i, 32
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #19 ; 5 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %ecpg_strndup.exit.thread, label %bb.c

ecpg_strndup.exit.thread:                         ; preds = %bb.b
  %i.h = tail call ptr @__errno_location() #16
  store i32 12, ptr %i.h, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = ashr exact i64 %i.e, 32                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull readonly align 1 %0, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 %i.i
  store i8 0, ptr %i.j, align 1
  %i.k = tail call ptr @__errno_location() #16    ; 2 uses
  store i32 0, ptr %i.k, align 4
  %i.l = tail call ptr @PGTYPESnumeric_from_asc(ptr noundef nonnull %i.g, ptr noundef null) #17 ; 3 uses
  %.not17 = icmp eq ptr %i.l, null
  br i1 %.not17, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.k, align 4              ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.m, 302
  %switch.select = select i1 %switch.selectcmp, i32 -1213, i32 -1216
  %switch.selectcmp19 = icmp eq i32 %i.m, 301
end_hunk_0
begin_hunk_1_@PGTYPESdate_today

; Function Attrs: nounwind uwtable
define noundef i32 @rjulmdy(i64 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 6)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @PGTYPESdate_julmdy(i64 noundef %0, ptr noundef nonnull %i.a) #17
  %i.b = load <2 x i32>, ptr %i.a, align 8
  %i.c = trunc <2 x i32> %i.b to <2 x i16>
  store <2 x i16> %i.c, ptr %1, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = trunc i32 %i.e to i16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.f, ptr %i.g, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 0
}

declare void @PGTYPESdate_julmdy(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PGTYPESdate_defmt_asc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1211, 1) i32 @rfmtdate(i64 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @__errno_location() #16    ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.b = tail call i32 @PGTYPESdate_fmt_asc(i64 noundef %0, ptr noundef %1, ptr noundef %2) #17
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4
  %i.e = icmp eq i32 %i.d, 12
  %. = select i1 %i.e, i32 -1211, i32 -1210
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

declare i32 @PGTYPESdate_fmt_asc(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef i32 @rmdyjul(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = load i16, ptr %0, align 2
  %i.c = sext i16 %i.b to i32
  store i32 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = sext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i16, ptr %i.h, align 2
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.j, ptr %i.k, align 4
  call void @PGTYPESdate_mdyjul(ptr noundef nonnull %i.a, ptr noundef %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 0
}

declare void @PGTYPESdate_mdyjul(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @rdayofweek(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @PGTYPESdate_dayofweek(i64 noundef %0) #17
  ret i32 %i.a
}

declare i32 @PGTYPESdate_dayofweek(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dtcurrent(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @PGTYPEStimestamp_current(ptr noundef %0) #17
  ret void
}

declare void @PGTYPEStimestamp_current(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @dtcvasc(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = tail call ptr @__errno_location() #16    ; 2 uses
  store i32 0, ptr %i.b, align 4
  %i.c = call i64 @PGTYPEStimestamp_from_asc(ptr noundef %0, ptr noundef nonnull %i.a) #17
  %i.d = load i32, ptr %i.b, align 4              ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = load i8, ptr %i.e, align 1
  %.not7 = icmp eq i8 %i.f, 0
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %i.c, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.d, %bb.a ], [ -1264, %bb.b ]
  ret i32 %.0
}

declare i64 @PGTYPEStimestamp_from_asc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @dtcvfmtasc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @PGTYPEStimestamp_defmt_asc(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %i.a
}

declare i32 @PGTYPEStimestamp_defmt_asc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @dtsub(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @PGTYPEStimestamp_sub(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret i32 %i.a
}

declare i32 @PGTYPEStimestamp_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef i32 @dttoasc(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call ptr @PGTYPEStimestamp_to_asc(i64 noundef %i.a) #17 ; 2 uses
  %i.c = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.b) #17 ; 0 uses
  tail call void @free(ptr noundef %i.b) #17
  ret i32 0
}

declare ptr @PGTYPEStimestamp_to_asc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @dttofmtasc(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @PGTYPEStimestamp_fmt_asc(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #17
  ret i32 %i.a
}

declare i32 @PGTYPEStimestamp_fmt_asc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @intoasc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @__errno_location() #16    ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.b = tail call ptr @PGTYPESinterval_to_asc(ptr noundef %0) #17 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4
  %i.d = sub i32 0, %i.c
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.b) #17 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.b) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]
  ret i32 %.0
}

declare ptr @PGTYPESinterval_to_asc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @rfmtlong(i64 noundef %0, ptr nofree noundef readonly %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 31 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i16 32, ptr %i.a, align 2
  %i.c = add i64 %i.b, 1
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #19 ; 10 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #16
  store i32 12, ptr %i.e, align 4
  br label %bb.bj

bb.c:                                             ; preds = %bb.a
  %i.f = icmp sgt i64 %0, -1                      ; 4 uses
  %i.g = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %i.h = select i1 %i.f, i8 43, i8 45
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.024.i = phi i32 [ 0, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %.022.i = phi i64 [ 1, %bb.c ], [ %i.j, %bb.d ]
  %i.i = add nuw nsw i32 %.024.i, 1               ; 2 uses
  %i.j = mul i64 %.022.i, 10                      ; 5 uses
  %i.k = add i64 %i.j, -1
  %i.l = icmp slt i64 %i.k, %i.g
  %i.m = icmp slt i64 %i.j, 922337203685477581    ; 2 uses
  %i.n = and i1 %i.m, %i.l
  br i1 %i.n, label %bb.d, label %bb.e, !llvm.loop !4

bb.e:                                             ; preds = %bb.d
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = sdiv i64 %i.j, 10
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = add nuw i32 %.024.i, 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i32 [ %i.i, %bb.f ], [ %i.p, %bb.g ] ; 5 uses
  %.1.i = phi i64 [ %i.o, %bb.f ], [ %i.j, %bb.g ]
  %i.q = add i32 %.sink.i, 1
  %i.r = sext i32 %i.q to i64
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #19 ; 13 uses
  store ptr %i.s, ptr @value.5, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = icmp sgt i32 %.sink.i, 0
  br i1 %i.u, label %.lr.ph.preheader.i, label %.loopexit174

.lr.ph.preheader.i:                               ; preds = %bb.i
  %wide.trip.count.i = zext nneg i32 %.sink.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.034.i = phi i64 [ %i.g, %.lr.ph.preheader.i ], [ %i.z, %.lr.ph.i ] ; 2 uses
  %.233.i = phi i64 [ %.1.i, %.lr.ph.preheader.i ], [ %i.aa, %.lr.ph.i ] ; 3 uses
  %i.v = sdiv i64 %.034.i, %.233.i
  %i.w = trunc i64 %i.v to i8
  %i.x = add i8 %i.w, 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.i
  store i8 %i.x, ptr %i.y, align 1
  %i.z = srem i64 %.034.i, %.233.i
  %i.aa = sdiv i64 %.233.i, 10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit174, label %.lr.ph.i, !llvm.loop !6

bb.j:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.d) #17
  %i.ab = tail call ptr @__errno_location() #16
  store i32 12, ptr %i.ab, align 4
  br label %bb.bj

.loopexit174:                                     ; preds = %.lr.ph.i, %bb.i
  %i.ac = sext i32 %.sink.i to i64
  %i.ad = getelementptr inbounds i8, ptr %i.s, i64 %i.ac
  store i8 0, ptr %i.ad, align 1
  %i.ae = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 60) #18
  %.not140 = icmp ne ptr %i.ae, null              ; 2 uses
  %i.af = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 40) #18
  %.not141 = icmp eq ptr %i.af, null
  br i1 %.not141, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit174
  %i.ag = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 41) #18
  %.not142 = icmp ne ptr %i.ag, null
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit174
  %i.ah = phi i1 [ false, %.loopexit174 ], [ %.not142, %bb.k ]
  %i.ai = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #18
  %i.aj = trunc i64 %i.ai to i32                  ; 3 uses
  %.0912.i = add i32 %i.aj, -1                    ; 2 uses
  %i.ak = icmp sgt i32 %.0912.i, -1
  br i1 %i.ak, label %.lr.ph.i148, label %getRightMostDot.exit

.lr.ph.i148:                                      ; preds = %bb.l, %bb.n
  %.0914.i = phi i32 [ %.09.i, %bb.n ], [ %.0912.i, %bb.l ] ; 2 uses
  %.013.i = phi i32 [ %i.as, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %i.al = zext nneg i32 %.0914.i to i64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp eq i8 %i.an, 46
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i148
  %i.ap = xor i32 %.013.i, -1
  %i.aq = add i32 %i.ap, %i.aj
  %i.ar = zext i32 %i.aq to i64
  br label %getRightMostDot.exit

bb.n:                                             ; preds = %.lr.ph.i148
  %i.as = add nuw i32 %.013.i, 1                  ; 2 uses
  %.09.i = add nsw i32 %.0914.i, -1
  %exitcond.not.i149 = icmp eq i32 %i.as, %i.aj
  br i1 %exitcond.not.i149, label %getRightMostDot.exit, label %.lr.ph.i148, !llvm.loop !7

getRightMostDot.exit:                             ; preds = %bb.n, %bb.l, %bb.m
  %.010.i = phi i64 [ %i.ar, %bb.m ], [ 4294967295, %bb.l ], [ 4294967295, %bb.n ] ; 3 uses
  store i8 0, ptr %i.d, align 1
  %i.at = trunc i64 %i.b to i32                   ; 2 uses
  %.0135179 = add i32 %i.at, -1                   ; 2 uses
  %i.au = icmp sgt i32 %.0135179, -1
  br i1 %i.au, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %getRightMostDot.exit
  %i.av = add i32 %.sink.i, -1
  %i.aw = select i1 %i.f, i8 32, i8 41
  %not.175 = xor i1 %i.f, true
  %or.cond26 = and i1 %i.ah, %not.175             ; 2 uses
  %i.ax = zext nneg i32 %.0135179 to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.bi
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph ], [ %indvars.iv.next, %bb.bi ] ; 7 uses
  %.0118191 = phi i8 [ 32, %.lr.ph ], [ %.1, %bb.bi ] ; 3 uses
  %.0120190 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.bi ] ; 24 uses
  %.0122189 = phi i32 [ 0, %.lr.ph ], [ %.2124, %bb.bi ] ; 25 uses
  %.0125188 = phi i32 [ 0, %.lr.ph ], [ %.2127158, %bb.bi ] ; 4 uses
  %.0128187 = phi i32 [ 0, %.lr.ph ], [ %.1129155, %bb.bi ] ; 2 uses
  %.0131184 = phi i32 [ %i.av, %.lr.ph ], [ %.2133, %bb.bi ] ; 35 uses
  %.0134180 = phi i32 [ 0, %.lr.ph ], [ %i.cv, %bb.bi ] ; 2 uses
  %i.ay = icmp slt i32 %.0131184, 0               ; 2 uses
  br i1 %i.ay, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.az = icmp eq i32 %.0131184, -1
  %spec.select146 = select i1 %i.az, i32 1, i32 %.0125188 ; 3 uses
  %i.ba = icmp ne i32 %spec.select146, 0
  %or.cond30 = select i1 %.not140, i1 %i.ba, i1 false
  %i.bb = icmp ne i32 %.0120190, 0
  %or.cond32 = select i1 %or.cond30, i1 %i.bb, i1 false
  br i1 %or.cond32, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bc = sext i32 %.0134180 to i64
  %i.bd = getelementptr inbounds i8, ptr %i.d, i64 %i.bc
  store i8 0, ptr %i.bd, align 1
  br label %.loopexit

bb.r:                                             ; preds = %bb.o
  %or.cond147 = icmp ugt i64 %.010.i, %indvars.iv
  br i1 %or.cond147, label %bb.v, label %bb.s

.thread:                                          ; preds = %bb.p
  %or.cond147154 = icmp ugt i64 %.010.i, %indvars.iv
  br i1 %or.cond147154, label %.thread161, label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r
  %.2127159 = phi i32 [ %spec.select146, %.thread ], [ %.0125188, %bb.r ]
  %.1129156 = phi i32 [ 1, %.thread ], [ %.0128187, %bb.r ]
  %i.be = icmp samesign ult i64 %.010.i, %indvars.iv
  br i1 %i.be, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 41
  %. = select i1 %i.bh, i8 %i.aw, i8 48
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.sink = phi i8 [ %., %bb.t ], [ 46, %bb.s ]
  store i8 %.sink, ptr %i.a, align 2
  %i.bi = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.a) #17 ; 0 uses
  br label %bb.bi

bb.v:                                             ; preds = %bb.r
  %.not144 = icmp eq i32 %.0128187, 0
  br i1 %.not144, label %._crit_edge203, label %.thread161

._crit_edge203:                                   ; preds = %bb.v
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %.pre = load i8, ptr %.phi.trans.insert, align 1 ; 2 uses
  br label %bb.w

.thread161:                                       ; preds = %.thread, %bb.v
  %.2127160167 = phi i32 [ %.0125188, %bb.v ], [ %spec.select146, %.thread ]
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.bk = load i8, ptr %i.bj, align 1             ; 3 uses
  %i.bl = icmp eq i8 %i.bk, 44
  %spec.select216 = select i1 %i.bl, i8 %.0118191, i8 %i.bk
  br label %bb.w

bb.w:                                             ; preds = %.thread161, %._crit_edge203
  %i.bm = phi i8 [ %i.bk, %.thread161 ], [ %.pre, %._crit_edge203 ] ; 2 uses
  %.not144172 = phi i1 [ false, %.thread161 ], [ true, %._crit_edge203 ] ; 8 uses
  %.1129157169 = phi i32 [ 1, %.thread161 ], [ 0, %._crit_edge203 ] ; 2 uses
  %.2127160166 = phi i32 [ %.2127160167, %.thread161 ], [ %.0125188, %._crit_edge203 ] ; 3 uses
  %.0 = phi i8 [ %spec.select216, %.thread161 ], [ %.pre, %._crit_edge203 ] ; 3 uses
  %or.cond = and i1 %.not140, %i.ay
  %i.bn = icmp ne i32 %.2127160166, 0             ; 3 uses
  %or.cond3 = select i1 %or.cond, i1 %i.bn, i1 false
  %i.bo = icmp ne i32 %.0120190, 0                ; 3 uses
  %.not145 = xor i1 %i.bo, true
  %or.cond5.not = select i1 %or.cond3, i1 %.not145, i1 false
  %i.bp = icmp ne i8 %.0, 43
  %i.bq = icmp ne i8 %.0, 45
  %i.br = and i1 %i.bp, %i.bq
  %or.cond11 = select i1 %or.cond5.not, i1 %i.br, i1 false
  br i1 %or.cond11, label %bb.bi, label %bb.x

bb.x:                                             ; preds = %bb.w
  switch i8 %.0, label %bb.bg [
    i8 44, label %bb.y
    i8 42, label %bb.z
    i8 38, label %bb.ac
    i8 35, label %bb.af
    i8 45, label %bb.ai
    i8 43, label %bb.an
    i8 40, label %bb.as
    i8 41, label %bb.ax
    i8 36, label %bb.ba
    i8 60, label %bb.bf
  ]

bb.y:                                             ; preds = %bb.x
  store i8 44, ptr %i.a, align 2
  %i.bs = add i32 %.0131184, 1
  br label %bb.bh

bb.z:                                             ; preds = %bb.x
  br i1 %.not144172, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 42, ptr %i.a, align 2
  br label %bb.bh

bb.ab:                                            ; preds = %bb.z
  %i.bt = sext i32 %.0131184 to i64
  %i.bu = getelementptr inbounds i8, ptr %i.s, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1
  store i8 %i.bv, ptr %i.a, align 2
  br label %bb.bh

bb.ac:                                            ; preds = %bb.x
  br i1 %.not144172, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i8 48, ptr %i.a, align 2
  br label %bb.bh

bb.ae:                                            ; preds = %bb.ac
  %i.bw = sext i32 %.0131184 to i64
  %i.bx = getelementptr inbounds i8, ptr %i.s, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1
  store i8 %i.by, ptr %i.a, align 2
  br label %bb.bh

bb.af:                                            ; preds = %bb.x
  br i1 %.not144172, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 32, ptr %i.a, align 2
  br label %bb.bh

bb.ah:                                            ; preds = %bb.af
  %i.bz = sext i32 %.0131184 to i64
  %i.ca = getelementptr inbounds i8, ptr %i.s, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1
  store i8 %i.cb, ptr %i.a, align 2
  br label %bb.bh

bb.ai:                                            ; preds = %bb.x
  %not. = xor i1 %i.bn, true
  %or.cond14 = or i1 %i.f, %not.
  %or.cond16 = select i1 %or.cond14, i1 true, i1 %i.bo
  br i1 %or.cond16, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i8 45, ptr %i.a, align 2
  br label %bb.bh

bb.ak:                                            ; preds = %bb.ai
  br i1 %.not144172, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i8 32, ptr %i.a, align 2
  br label %bb.bh

bb.am:                                            ; preds = %bb.ak
  %i.cc = sext i32 %.0131184 to i64
  %i.cd = getelementptr inbounds i8, ptr %i.s, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  store i8 %i.ce, ptr %i.a, align 2
  br label %bb.bh

bb.an:                                            ; preds = %bb.x
  %i.cf = icmp eq i32 %.2127160166, 0
  %or.cond18 = select i1 %i.cf, i1 true, i1 %i.bo
  br i1 %or.cond18, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i8 %i.h, ptr %i.a, align 2
  br label %bb.bh

bb.ap:                                            ; preds = %bb.an
  br i1 %.not144172, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i8 32, ptr %i.a, align 2
  br label %bb.bh

bb.ar:                                            ; preds = %bb.ap
  %i.cg = sext i32 %.0131184 to i64
  %i.ch = getelementptr inbounds i8, ptr %i.s, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  store i8 %i.ci, ptr %i.a, align 2
  br label %bb.bh

bb.as:                                            ; preds = %bb.x
  %or.cond20 = and i1 %or.cond26, %i.bn
  br i1 %or.cond20, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i8 40, ptr %i.a, align 2
  br label %bb.bh

bb.au:                                            ; preds = %bb.as
  br i1 %.not144172, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i8 32, ptr %i.a, align 2
  br label %bb.bh

bb.aw:                                            ; preds = %bb.au
  %i.cj = sext i32 %.0131184 to i64
  %i.ck = getelementptr inbounds i8, ptr %i.s, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1
  store i8 %i.cl, ptr %i.a, align 2
  br label %bb.bh

bb.ax:                                            ; preds = %bb.x
  br i1 %or.cond26, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i8 41, ptr %i.a, align 2
  br label %bb.bh

bb.az:                                            ; preds = %bb.ax
  store i8 32, ptr %i.a, align 2
  br label %bb.bh

bb.ba:                                            ; preds = %bb.x
  %i.cm = icmp ne i32 %.0122189, 0
  %or.cond28 = select i1 %.not144172, i1 true, i1 %i.cm
  br i1 %or.cond28, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i8 36, ptr %i.a, align 2
  br label %bb.bh

bb.bc:                                            ; preds = %bb.ba
  br i1 %.not144172, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i8 32, ptr %i.a, align 2
  br label %bb.bh

bb.be:                                            ; preds = %bb.bc
  %i.cn = sext i32 %.0131184 to i64
  %i.co = getelementptr inbounds i8, ptr %i.s, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1
  store i8 %i.cp, ptr %i.a, align 2
  br label %bb.bh

bb.bf:                                            ; preds = %bb.x
  %i.cq = sext i32 %.0131184 to i64
  %i.cr = getelementptr inbounds i8, ptr %i.s, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1
  store i8 %i.cs, ptr %i.a, align 2
  br label %bb.bh

bb.bg:                                            ; preds = %bb.x
  store i8 %i.bm, ptr %i.a, align 2
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bb, %bb.be, %bb.bd, %bb.ay, %bb.az, %bb.at, %bb.aw, %bb.av, %bb.ao, %bb.ar, %bb.aq, %bb.aj, %bb.am, %bb.al, %bb.ag, %bb.ah, %bb.ad, %bb.ae, %bb.aa, %bb.ab, %bb.bg, %bb.bf, %bb.y
  %.1132 = phi i32 [ %.0131184, %bb.bg ], [ %i.bs, %bb.y ], [ %.0131184, %bb.aa ], [ %.0131184, %bb.ab ], [ %.0131184, %bb.ad ], [ %.0131184, %bb.ae ], [ %.0131184, %bb.ag ], [ %.0131184, %bb.ah ], [ %.0131184, %bb.al ], [ %.0131184, %bb.am ], [ %.0131184, %bb.aj ], [ %.0131184, %bb.aq ], [ %.0131184, %bb.ar ], [ %.0131184, %bb.ao ], [ %.0131184, %bb.at ], [ %.0131184, %bb.av ], [ %.0131184, %bb.aw ], [ %.0131184, %bb.ay ], [ %.0131184, %bb.az ], [ %.0131184, %bb.bd ], [ %.0131184, %bb.be ], [ %.0131184, %bb.bb ], [ %.0131184, %bb.bf ]
  %.1123 = phi i32 [ %.0122189, %bb.bg ], [ %.0122189, %bb.y ], [ %.0122189, %bb.aa ], [ %.0122189, %bb.ab ], [ %.0122189, %bb.ad ], [ %.0122189, %bb.ae ], [ %.0122189, %bb.ag ], [ %.0122189, %bb.ah ], [ %.0122189, %bb.al ], [ %.0122189, %bb.am ], [ %.0122189, %bb.aj ], [ %.0122189, %bb.aq ], [ %.0122189, %bb.ar ], [ %.0122189, %bb.ao ], [ %.0122189, %bb.at ], [ %.0122189, %bb.av ], [ %.0122189, %bb.aw ], [ %.0122189, %bb.ay ], [ %.0122189, %bb.az ], [ %.0122189, %bb.bd ], [ %.0122189, %bb.be ], [ 1, %bb.bb ], [ %.0122189, %bb.bf ]
  %.1121 = phi i32 [ %.0120190, %bb.bg ], [ %.0120190, %bb.y ], [ %.0120190, %bb.aa ], [ %.0120190, %bb.ab ], [ %.0120190, %bb.ad ], [ %.0120190, %bb.ae ], [ %.0120190, %bb.ag ], [ %.0120190, %bb.ah ], [ %.0120190, %bb.al ], [ %.0120190, %bb.am ], [ 1, %bb.aj ], [ %.0120190, %bb.aq ], [ %.0120190, %bb.ar ], [ 1, %bb.ao ], [ %.0120190, %bb.at ], [ %.0120190, %bb.av ], [ %.0120190, %bb.aw ], [ %.0120190, %bb.ay ], [ %.0120190, %bb.az ], [ %.0120190, %bb.bd ], [ %.0120190, %bb.be ], [ %.0120190, %bb.bb ], [ %.0120190, %bb.bf ]
  %i.ct = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.a) #17 ; 0 uses
  %i.cu = add i32 %.1132, -1
  br label %bb.bi

bb.bi:                                            ; preds = %bb.w, %bb.bh, %bb.u
  %.2127158 = phi i32 [ %.2127159, %bb.u ], [ 1, %bb.w ], [ %.2127160166, %bb.bh ]
  %.1129155 = phi i32 [ %.1129156, %bb.u ], [ %.1129157169, %bb.w ], [ %.1129157169, %bb.bh ]
  %.2133 = phi i32 [ %.0131184, %bb.u ], [ %.0131184, %bb.w ], [ %i.cu, %bb.bh ]
  %.2124 = phi i32 [ %.0122189, %bb.u ], [ %.0122189, %bb.w ], [ %.1123, %bb.bh ]
  %.2 = phi i32 [ %.0120190, %bb.u ], [ 0, %bb.w ], [ %.1121, %bb.bh ]
  %.1 = phi i8 [ %.0118191, %bb.u ], [ %.0118191, %bb.w ], [ %i.bm, %bb.bh ]
  %i.cv = add nuw i32 %.0134180, 1                ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond.not = icmp eq i32 %i.cv, %i.at
  br i1 %exitcond.not, label %.loopexit, label %bb.o, !llvm.loop !8

.loopexit:                                        ; preds = %bb.bi, %getRightMostDot.exit, %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  store i8 0, ptr %i.cw, align 1
  %i.cx = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #18 ; 2 uses
  store i8 0, ptr %2, align 1
  %i.cy = trunc i64 %i.cx to i32
  %.1136193 = add i32 %i.cy, -1                   ; 2 uses
  %i.cz = icmp sgt i32 %.1136193, -1
  br i1 %i.cz, label %.lr.ph195.preheader, label %._crit_edge

.lr.ph195.preheader:                              ; preds = %.loopexit
  %i.da = zext nneg i32 %.1136193 to i64
  br label %.lr.ph195

.lr.ph195:                                        ; preds = %.lr.ph195.preheader, %.lr.ph195
  %indvars.iv200 = phi i64 [ %i.da, %.lr.ph195.preheader ], [ %indvars.iv.next201, %.lr.ph195 ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv200
  %i.dc = load i8, ptr %i.db, align 1
  store i8 %i.dc, ptr %i.a, align 2
  %i.dd = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %i.a) #17 ; 0 uses
  %indvars.iv.next201 = add nsw i64 %indvars.iv200, -1
  %.not217 = icmp eq i64 %indvars.iv200, 0
  br i1 %.not217, label %._crit_edge, label %.lr.ph195, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph195, %.loopexit
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 %i.cx
  store i8 0, ptr %i.de, align 1
  tail call void @free(ptr noundef nonnull %i.d) #17
  tail call void @free(ptr noundef %i.s) #17
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge, %bb.j, %bb.b
  %.0137 = phi i32 [ -1, %bb.j ], [ 0, %._crit_edge ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0137
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @rupshift(ptr nofree noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %.not7 = icmp eq i8 %i.a, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = tail call ptr @__ctype_b_loc() #16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.c = phi i8 [ %i.a, %.lr.ph ], [ %i.o, %bb.d ]
  %.08 = phi ptr [ %0, %.lr.ph ], [ %i.n, %bb.d ] ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = zext i8 %i.c to i64                      ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2
  %i.h = and i16 %i.g, 512
  %.not6 = icmp eq i16 %i.h, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__ctype_toupper_loc() #16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.e
  %i.l = load i32, ptr %i.k, align 4
  %i.m = trunc i32 %i.l to i8
  store i8 %i.m, ptr %.08, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.08, i64 1 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @byleng(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.in = phi i32 [ %1, %bb.a ], [ %.0, %bb.b ]  ; 2 uses
  %.0 = add i32 %.0.in, -1                        ; 2 uses
  %i.a = sext i32 %.0 to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %cond = icmp eq i8 %i.c, 32
  br i1 %cond, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.b
  ret i32 %.0.in
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ldchar(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  br label %bb.b

end_hunk_1
