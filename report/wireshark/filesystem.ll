Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/filesystem?download=true
inline.NumInlined: 45
inline.NumDeleted: 11
begin_hunk_0_@get_datafile_path:bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call ptr @get_datafile_dir(ptr noundef %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink = phi ptr [ %i.c, %bb.d ], [ %i.b, %bb.c ]
  %i.d = tail call noalias ptr (ptr, ...) @g_build_filename(ptr noundef %.sink, ptr noundef %0, ptr noundef null)
  ret ptr %i.d
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noalias ptr @get_docfile_path(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %.b = load i1, ptr @running_in_build_directory_flag, align 1
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @progfile_dir, align 8
  br label %get_doc_dir.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @doc_dir, align 8          ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %get_doc_dir.exit

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 @g_path_is_absolute(ptr noundef @.str.3)
  %.not4.i = icmp eq i32 %i.c, 0
  br i1 %.not4.i, label %bb.e, label %g_strdup_inline.exit.i

g_strdup_inline.exit.i:                           ; preds = %bb.d
  %i.d = tail call noalias dereferenceable_or_null(20) ptr @g_malloc(i64 noundef 20) #23 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(20) %i.d, ptr noundef align 1 dereferenceable(20) @.str.3, i64 noundef 20, i1 noundef false) #21
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr @install_prefix, align 8
  %i.f = tail call noalias ptr (ptr, ...) @g_build_filename(ptr noundef %i.e, ptr noundef @.str.3, ptr noundef null)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %g_strdup_inline.exit.i
  %.0.i5.sink.i = phi ptr [ %i.d, %g_strdup_inline.exit.i ], [ %i.f, %bb.e ] ; 2 uses
  store ptr %.0.i5.sink.i, ptr @doc_dir, align 8
  br label %get_doc_dir.exit

get_doc_dir.exit:                                 ; preds = %.sink.split.i, %bb.c, %bb.b
  %.0.i.sink = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ %.0.i5.sink.i, %.sink.split.i ]
  %i.g = tail call noalias ptr (ptr, ...) @g_build_filename(ptr noundef %.0.i.sink, ptr noundef %0, ptr noundef null)
  ret ptr %i.g
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define noundef nonnull ptr @file_open_error_message(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #12 {
bb.a:
  switch i32 %0, label %bb.i [
    i32 2, label %bb.b
    i32 13, label %bb.c
    i32 21, label %bb.j
    i32 28, label %bb.d
    i32 122, label %bb.e
    i32 22, label %bb.f
    i32 36, label %bb.g
    i32 12, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %.str.11..str.12 = select i1 %1, ptr @.str.11, ptr @.str.12
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.str.13..str.14 = select i1 %1, ptr @.str.13, ptr @.str.14
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %.str.20..str.21 = select i1 %1, ptr @.str.20, ptr @.str.21
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.a = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @file_open_error_message.errmsg_errno) ; 2 uses
  %i.b = select i1 %1, ptr @.str.23, ptr @.str.24
  %i.c = tail call ptr @g_strerror(i32 noundef %0) #22
  %i.d = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.a, i64 noundef 1025, i32 noundef 2, i64 noundef 1025, ptr noundef @.str.22, ptr noundef nonnull %i.b, ptr noundef %i.c) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.a, %bb.c, %bb.b, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.0 = phi ptr [ %i.a, %bb.i ], [ %.str.11..str.12, %bb.b ], [ @.str.15, %bb.a ], [ %.str.13..str.14, %bb.c ], [ %.str.20..str.21, %bb.h ], [ @.str.19, %bb.g ], [ @.str.16, %bb.d ], [ @.str.17, %bb.e ], [ @.str.18, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare ptr @g_strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define noundef nonnull ptr @file_write_error_message(i32 noundef %0) local_unnamed_addr #12 {
bb.a:
  switch i32 %0, label %bb.c [
    i32 28, label %bb.d
    i32 122, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.a = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @file_write_error_message.errmsg_errno) ; 2 uses
  %i.b = tail call ptr @g_strerror(i32 noundef %0) #22
  %i.c = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.a, i64 noundef 1025, i32 noundef 2, i64 noundef 1025, ptr noundef @.str.27, ptr noundef %i.b) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi ptr [ %i.a, %bb.c ], [ @.str.26, %bb.b ], [ @.str.25, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @file_exists(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = call i32 @stat(ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  %.not4 = icmp eq i32 %i.a, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__errno_location() #22
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.d ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @config_file_exists_with_entries(ptr nofree noundef readonly captures(address_is_null) %0, i8 noundef signext %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef @.str.28) ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.m, label %.split16

.split16:                                         ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.a, i64 8        ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not.i = icmp ult ptr %i.d, %i.f
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !24

bb.c:                                             ; preds = %.split16
  %i.g = tail call i32 @__uflow(ptr noundef nonnull %i.a), !inline_history !22
  br label %getc_unlocked.exit

bb.d:                                             ; preds = %.split16
  %i.h = getelementptr i8, ptr %i.d, i64 1
  store ptr %i.h, ptr %i.c, align 8
  %i.i = load i8, ptr %i.d, align 1
  %i.j = zext i8 %i.i to i32
  br label %getc_unlocked.exit

getc_unlocked.exit:                               ; preds = %bb.c, %bb.d
  %i.k = phi i32 [ %i.g, %bb.c ], [ %i.j, %bb.d ]
  %i.l = sext i8 %1 to i32
  %i.m = load ptr, ptr @g_ascii_table, align 8    ; 2 uses
  br label %getc_unlocked.exit27

getc_unlocked.exit27:                             ; preds = %getc_unlocked.exit27.backedge, %getc_unlocked.exit
  %phi.call = phi i32 [ %i.k, %getc_unlocked.exit ], [ %phi.call.be, %getc_unlocked.exit27.backedge ] ; 5 uses
  %.014 = phi i1 [ true, %getc_unlocked.exit ], [ %.1, %getc_unlocked.exit27.backedge ] ; 2 uses
  %.not19 = icmp ne i32 %phi.call, %i.l
  %or.cond.not = select i1 %.014, i1 %.not19, i1 false
  br i1 %or.cond.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %getc_unlocked.exit27
  %i.n = and i32 %phi.call, 255
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr [2 x i8], ptr %i.m, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2
  %i.r = and i16 %i.q, 320
  %or.cond25.not = icmp eq i16 %i.r, 64
  br i1 %or.cond25.not, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e, %getc_unlocked.exit27
  %i.s = icmp eq i32 %phi.call, 10                ; 2 uses
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = and i32 %phi.call, 255
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr [2 x i8], ptr %i.m, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  %i.x = and i16 %i.w, 256
  %.not22 = icmp eq i16 %i.x, 0
  br i1 %.not22, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1 = phi i1 [ %i.s, %bb.h ], [ %.014, %bb.g ]
  %.not23 = icmp eq i32 %phi.call, -1
  br i1 %.not23, label %bb.l, label %.split, !llvm.loop !23

.split:                                           ; preds = %bb.i
  %i.y = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.z = load ptr, ptr %i.e, align 8
  %.not.i26 = icmp ult ptr %i.y, %i.z
  br i1 %.not.i26, label %bb.k, label %bb.j, !prof !24

bb.j:                                             ; preds = %.split
  %i.aa = tail call i32 @__uflow(ptr noundef nonnull %i.a), !inline_history !22
  br label %getc_unlocked.exit27.backedge

getc_unlocked.exit27.backedge:                    ; preds = %bb.j, %bb.k
  %phi.call.be = phi i32 [ %i.aa, %bb.j ], [ %i.ad, %bb.k ]
  br label %getc_unlocked.exit27, !llvm.loop !23

bb.k:                                             ; preds = %.split
  %i.ab = getelementptr i8, ptr %i.y, i64 1
  store ptr %i.ab, ptr %i.c, align 8
  %i.ac = load i8, ptr %i.y, align 1
  %i.ad = zext i8 %i.ac to i32
  br label %getc_unlocked.exit27.backedge

bb.l:                                             ; preds = %bb.e, %bb.i
  %.0 = phi i1 [ false, %bb.i ], [ true, %bb.e ]
  %i.ae = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.a, %bb.l
  %.015 = phi i1 [ false, %bb.a ], [ %.0, %bb.l ], [ false, %bb.b ]
  ret i1 %.015
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @files_identical_hash(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %1 = alloca %struct.stat, align 16              ; 5 uses
  %2 = alloca %struct.file_hash_key, align 16     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = call i32 @stat(ptr noundef readonly %0, ptr noundef nonnull %1) #21
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %files_identical_key.exit, label %bb.b

files_identical_key.exit:                         ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load <2 x i64>, ptr %1, align 16
  store <2 x i64> %i.b, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.c = call i32 @wmem_strong_hash(ptr noundef nonnull %2, i64 noundef 16)
  br label %bb.c

bb.c:                                             ; preds = %files_identical_key.exit, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %files_identical_key.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @wmem_strong_hash(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable
define zeroext i1 @files_identical(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.stat, align 16              ; 5 uses
  %3 = alloca %struct.stat, align 16              ; 5 uses
  %4 = alloca %struct.file_hash_key, align 16     ; 4 uses
  %5 = alloca %struct.file_hash_key, align 16     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = call i32 @stat(ptr noundef readonly %0, ptr noundef nonnull %3) #21
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %files_identical_key.exit, label %bb.b

files_identical_key.exit:                         ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load <2 x i64>, ptr %3, align 16
  store <2 x i64> %i.b, ptr %4, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.c = call i32 @stat(ptr noundef readonly %1, ptr noundef nonnull %2) #21
  %.not4 = icmp eq i32 %i.c, -1
  br i1 %.not4, label %files_identical_key.exit3, label %bb.c

files_identical_key.exit3:                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load <2 x i64>, ptr %2, align 16
  store <2 x i64> %i.d, ptr %5, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.e = load i128, ptr %4, align 16
  %i.f = load i128, ptr %5, align 16
  %i.g = icmp ne i128 %i.e, %i.f
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br label %bb.d

bb.d:                                             ; preds = %files_identical_key.exit3, %files_identical_key.exit, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %files_identical_key.exit ], [ false, %files_identical_key.exit3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i1 %.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable
define zeroext i1 @file_needs_reopen(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 6 uses
  %3 = alloca %struct.stat, align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %2) #21
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @stat(ptr noundef %1, ptr noundef nonnull %3) #21
  %.not2 = icmp eq i32 %i.b, 0
  br i1 %.not2, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %2, align 8
  %i.d = load i64, ptr %3, align 8
  %.not3 = icmp eq i64 %i.c, %i.d
  br i1 %.not3, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %.not4 = icmp eq i64 %i.f, %i.h
  br i1 %.not4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp sgt i64 %i.j, %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.d ], [ true, %bb.c ], [ %i.m, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i1 %.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @write_file_binary_mode(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 577, i32 noundef 420) ; 4 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not27 = icmp eq i64 %2, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #22
  %i.d = load i32, ptr %i.c, align 4
  tail call void @report_open_failure(ptr noundef %0, i32 noundef %i.d, i1 noundef zeroext true)
  br label %bb.g

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.02129 = phi ptr [ %i.l, %bb.f ], [ %1, %.preheader ] ; 2 uses
  %.02328 = phi i64 [ %i.k, %bb.f ], [ %2, %.preheader ] ; 2 uses
  %..023 = tail call i64 @llvm.umin.i64(i64 %.02328, i64 1073741824)
  %i.e = tail call i64 @write(i32 noundef %i.a, ptr noundef %.02129, i64 noundef %..023) ; 4 uses
  %i.f = icmp slt i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__errno_location() #22
  %i.i = load i32, ptr %i.h, align 4
end_hunk_0
