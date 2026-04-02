begin_hunk_0
@__func__.rb_sysopen = private unnamed_addr constant [11 x i8] c"rb_sysopen\00", align 1
@.str.207 = private unnamed_addr constant [34 x i8] c"Unsupported encoding %li\0B ignored\00", align 1
@.str.208 = private unnamed_addr constant [18 x i8] c"/proc/self/status\00", align 1
@.str.209 = private unnamed_addr constant [8 x i8] c"FDSize:\00", align 1
@.str.210 = private unnamed_addr constant [39 x i8] c"exclusive access mode is not supported\00", align 1
@.str.211 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.212 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
end_hunk_0
begin_hunk_1

.lr.ph.i:                                         ; preds = %bb.c, %bb.f
  %i.j = phi i64 [ %i.s, %bb.f ], [ %i.e, %bb.c ]
  %.01925.i = phi ptr [ %i.q, %bb.f ], [ %i.a, %bb.c ] ; 3 uses
  %i.k = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.01925.i, i32 noundef 10, i64 noundef %i.j) #34 ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %.01925.i, ptr noundef nonnull dereferenceable(7) @.str.209, i64 7)
  %i.l = icmp eq i32 %bcmp.i, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_1
begin_hunk_2
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.c, %bb.d
  %i.o = phi ptr [ %i.n, %bb.d ], [ %i.m, %bb.c ]
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %i.o, ptr noundef nonnull dereferenceable(13) @closed_stream, i64 13)
  %.not6 = icmp eq i32 %bcmp, 0
  br i1 %.not6, label %bb.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %RSTRING_PTR.exit, %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit
end_hunk_2
