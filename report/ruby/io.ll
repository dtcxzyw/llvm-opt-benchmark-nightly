begin_hunk_0
@__func__.rb_sysopen = private unnamed_addr constant [11 x i8] c"rb_sysopen\00", align 1
@.str.207 = private unnamed_addr constant [34 x i8] c"Unsupported encoding %li\0B ignored\00", align 1
@.str.208 = private unnamed_addr constant [18 x i8] c"/proc/self/status\00", align 1
@.str.210 = private unnamed_addr constant [39 x i8] c"exclusive access mode is not supported\00", align 1
@.str.211 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.212 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
end_hunk_0
begin_hunk_1

.lr.ph.i:                                         ; preds = %bb.c, %bb.f
  %i.j = phi i64 [ %i.s, %bb.f ], [ %i.e, %bb.c ]
  %.01925.i = phi ptr [ %i.q, %bb.f ], [ %i.a, %bb.c ] ; 4 uses
  %i.k = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.01925.i, i32 noundef 10, i64 noundef %i.j) #34 ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %3 = load i32, ptr %.01925.i, align 1
  %4 = xor i32 %3, 1767064646
  %5 = getelementptr i8, ptr %.01925.i, i64 3
  %6 = load i32, ptr %5, align 1
  %7 = xor i32 %6, 979729001
  %8 = or i32 %4, %7
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  %i.l = icmp eq i32 %10, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_1
begin_hunk_2
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.c, %bb.d
  %i.o = phi ptr [ %i.n, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %2 = load i64, ptr %i.o, align 1
  %3 = xor i64 %2, 8295740900507610211
  %4 = getelementptr i8, ptr %i.o, i64 5
  %5 = load i64, ptr %4, align 1
  %6 = xor i64 %5, 7881692365129457764
  %7 = or i64 %3, %6
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  %.not6 = icmp eq i32 %9, 0
  br i1 %.not6, label %bb.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %RSTRING_PTR.exit, %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit
end_hunk_2
