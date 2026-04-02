begin_hunk_0
@.str.91 = private unnamed_addr constant [25 x i8] c"Error writing to master\0A\00", align 1
@.str.92 = private unnamed_addr constant [41 x i8] c"Error reading bulk length while SYNCing\0A\00", align 1
@.str.93 = private unnamed_addr constant [29 x i8] c"SYNC with master failed: %s\0A\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"+FULLRESYNC\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"+CONTINUE\00", align 1
@.str.96 = private unnamed_addr constant [18 x i8] c"PSYNC replied %s\0A\00", align 1
@.str.97 = private unnamed_addr constant [42 x i8] c"Error reading bulk length while PSYNCing\0A\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"EOF:\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"STRLEN\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
end_hunk_0
begin_hunk_1
@.str.402 = private unnamed_addr constant [52 x i8] c"How many slots do you want to move (from 1 to %d)? \00", align 1
@.str.403 = private unnamed_addr constant [32 x i8] c"What is the receiving node ID? \00", align 1
@.str.407 = private unnamed_addr constant [19 x i8] c"Source node #%lu: \00", align 1
@.str.408 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.409 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.410 = private unnamed_addr constant [47 x i8] c"*** No source nodes given, operation aborted.\0A\00", align 1
@.str.411 = private unnamed_addr constant [26 x i8] c"\0AReady to move %d slots.\0A\00", align 1
end_hunk_1
begin_hunk_2
  br label %bb.ci

confirmWithYes.exit:                              ; preds = %bb.be
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @.str.248, ptr noundef nonnull dereferenceable(4) %i.a, i64 4)
  %.not5.i.not = icmp eq i32 %bcmp.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br i1 %.not5.i.not, label %confirmWithYes.exit.thread, label %bb.ci

end_hunk_2
begin_hunk_3
  %2 = alloca %struct.listIter, align 8           ; 5 uses
  %3 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = alloca [6 x i8], align 1                 ; 5 uses
  %i.b = alloca [255 x i8], align 16              ; 10 uses
  %4 = alloca %struct.listIter, align 8           ; 9 uses
  %i.c = alloca [4 x i8], align 1                 ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
end_hunk_3
begin_hunk_4

.loopexit283:                                     ; preds = %.preheader, %.preheader, %bb.q
  store i8 0, ptr %i.cp, align 1, !tbaa !72
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %i.b, ptr noundef nonnull dereferenceable(5) @.str.408, i64 5)
  %.not149 = icmp eq i32 %bcmp, 0
  br i1 %.not149, label %.thread220.thread, label %bb.r

bb.r:                                             ; preds = %.loopexit283
end_hunk_4
begin_hunk_5
  br i1 %i.ga, label %.thread261, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %bcmp162 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @.str.248, ptr noundef nonnull dereferenceable(4) %i.c, i64 4)
  %.not163 = icmp eq i32 %bcmp162, 0
  br i1 %.not163, label %bb.ap, label %.thread261

.thread261:                                       ; preds = %bb.an, %bb.ao
end_hunk_5
begin_hunk_6
; Function Attrs: nounwind uwtable
define dso_local i64 @sendSync(ptr noundef %0, i32 noundef %1, ptr noundef writeonly captures(none) %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b
end_hunk_6
begin_hunk_7
  unreachable

bb.m:                                             ; preds = %.split.loop.exit53
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %i.a, ptr noundef nonnull dereferenceable(11) @.str.94, i64 11)
  %.not43 = icmp eq i32 %bcmp, 0
  br i1 %.not43, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %bcmp44 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %i.a, ptr noundef nonnull dereferenceable(9) @.str.95, i64 9)
  %.not45 = icmp eq i32 %bcmp44, 0
  br i1 %.not45, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n, %bb.m
  %bcmp46 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %i.a, ptr noundef nonnull dereferenceable(9) @.str.95, i64 9)
  %.not47.not = icmp eq i32 %bcmp46, 0
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.w = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.96, ptr noundef nonnull %i.a) #41 ; 0 uses
  br label %bb.p
end_hunk_7
begin_hunk_8

.critedge:                                        ; preds = %.split.loop.exit56, %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %bcmp50 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.ah, ptr noundef nonnull dereferenceable(4) @.str.98, i64 4)
  %i.ai = icmp eq i32 %bcmp50, 0
  br i1 %i.ai, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.critedge
end_hunk_8
begin_hunk_9
  %i.ac = alloca [16384 x i8], align 16           ; 4 uses
  %i.ad = alloca [256 x i8], align 16             ; 3 uses
  %i.ae = alloca ptr, align 8                     ; 7 uses
  %i.af = alloca [20 x i8], align 16              ; 23 uses
  %i.ag = alloca [44 x i8], align 16              ; 5 uses
  %18 = alloca %struct.timeval, align 8           ; 5 uses
  %19 = alloca %struct.timeval, align 8           ; 5 uses
end_hunk_9
begin_hunk_10

bb.pg:                                            ; preds = %bb.pf
  %i.aze = getelementptr inbounds nuw i8, ptr %i.ays, i64 32
  %i.azf = load ptr, ptr %i.aze, align 8, !tbaa !42
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(20) %i.azf, ptr noundef nonnull dereferenceable(20) %i.af, i64 20)
  %i.azg = icmp eq i32 %bcmp.i, 0
  br i1 %i.azg, label %bb.ph, label %bb.pi

bb.ph:                                            ; preds = %bb.pg
end_hunk_10
begin_hunk_11
  br label %bb.es

confirmWithYes.exit.i:                            ; preds = %bb.ek
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @.str.248, ptr noundef nonnull dereferenceable(4) %i.c, i64 4)
  %.not5.i.not.i = icmp eq i32 %bcmp.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br i1 %.not5.i.not.i, label %bb.el, label %bb.es

end_hunk_11
begin_hunk_12
  br label %bb.fb

confirmWithYes.exit218.i:                         ; preds = %bb.et
  %bcmp.i216.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @.str.248, ptr noundef nonnull dereferenceable(4) %i.b, i64 4)
  %.not5.i217.not.i = icmp eq i32 %bcmp.i216.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br i1 %.not5.i217.not.i, label %bb.eu, label %bb.fb

end_hunk_12
begin_hunk_13
  br label %bb.ft

confirmWithYes.exit222.i:                         ; preds = %bb.fc
  %bcmp.i220.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @.str.248, ptr noundef nonnull dereferenceable(4) %i.a, i64 4)
  %.not5.i221.not.i = icmp eq i32 %bcmp.i220.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br i1 %.not5.i221.not.i, label %bb.fd, label %bb.ft

end_hunk_13
