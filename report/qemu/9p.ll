Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/9p?download=true
inline.NumInlined: 372
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@v9fs_mkdir:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 7368
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = icmp eq i32 %i.bn, %i.br
  br i1 %i.bs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 7376
  call void @migrate_del_blocker(ptr noundef nonnull %i.bt) #23
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bu = call i32 @free_fid(ptr noundef nonnull %0, ptr noundef nonnull %i.ae) ; 0 uses
  br label %put_fid.exit

put_fid.exit:                                     ; preds = %trace_v9fs_mkdir.exit, %bb.f, %bb.f, %bb.f, %bb.g, %name_is_illegal.exit.i, %bb.t, %bb.q, %bb.p, %check_name.exit, %bb.a
  %.1 = phi i32 [ %i.f, %bb.a ], [ %.0, %bb.t ], [ -2, %check_name.exit ], [ %.0, %bb.p ], [ %.0, %bb.q ], [ -2, %trace_v9fs_mkdir.exit ], [ -21, %bb.f ], [ -21, %bb.f ], [ -21, %bb.f ], [ -17, %bb.g ], [ -2, %name_is_illegal.exit.i ]
  %i.bv = sext i32 %.1 to i64
  call void @pdu_complete(ptr noundef %0, i64 noundef %i.bv)
  call void @v9fs_string_free(ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @v9fs_renameat(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %struct.V9fsString, align 8         ; 8 uses
  %2 = alloca %struct.V9fsString, align 8         ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store i64 0, ptr %1, align 8, !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i64 0, ptr %2, align 8, !annotation !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr null, ptr %i.e, align 8
  store i16 0, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.f, align 8
  %i.g = call i64 (ptr, i64, ptr, ...) @pdu_unmarshal(ptr noundef %0, i64 noundef 7, ptr noundef nonnull @.str.89, ptr noundef nonnull %i.a, ptr noundef nonnull %1, ptr noundef nonnull %i.b, ptr noundef nonnull %2) ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %check_name.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.j = getelementptr i8, ptr %0, i64 6
  %.val21 = load i8, ptr %i.j, align 2            ; 2 uses
  %i.k = load i8, ptr %i.i, align 1               ; 2 uses
  %.not.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i, label %check_name.exit.thread, label %name_is_illegal.exit.i

name_is_illegal.exit.i:                           ; preds = %bb.b
  %i.l = call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.i, i32 noundef 47) #28
  %.not1.i = icmp eq ptr %i.l, null
  br i1 %.not1.i, label %sub_0.i, label %check_name.exit.thread

sub_0.i:                                          ; preds = %name_is_illegal.exit.i
  %.not6.i = icmp eq i8 %i.k, 46
  br i1 %.not6.i, label %.tail.i, label %bb.d

.tail.i:                                          ; preds = %sub_0.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.n = load i8, ptr %i.m, align 1
  switch i8 %i.n, label %bb.d [
    i8 0, label %bb.c
    i8 46, label %.tail2.i
  ]

.tail2.i:                                         ; preds = %.tail.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.tail.i, %.tail2.i
  switch i8 %.val21, label %bb.f [
    i8 74, label %check_name.exit.thread
    i8 20, label %check_name.exit.thread
    i8 126, label %check_name.exit.thread
  ]

bb.d:                                             ; preds = %.tail.i, %.tail2.i, %sub_0.i
  %i.r = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %.not.i.i22 = icmp eq i8 %i.s, 0
  br i1 %.not.i.i22, label %check_name.exit.thread, label %name_is_illegal.exit.i23

name_is_illegal.exit.i23:                         ; preds = %bb.d
  %i.t = call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.r, i32 noundef 47) #28
  %.not1.i24 = icmp eq ptr %i.t, null
  br i1 %.not1.i24, label %sub_0.i26, label %check_name.exit.thread

sub_0.i26:                                        ; preds = %name_is_illegal.exit.i23
  %.not6.i27 = icmp eq i8 %i.s, 46
  br i1 %.not6.i27, label %.tail.i28, label %bb.g

.tail.i28:                                        ; preds = %sub_0.i26
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.v = load i8, ptr %i.u, align 1
  switch i8 %i.v, label %bb.g [
    i8 0, label %bb.e
    i8 46, label %.tail2.i31
  ]

.tail2.i31:                                       ; preds = %.tail.i28
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.tail.i28, %.tail2.i31
  switch i8 %.val21, label %bb.f [
    i8 74, label %check_name.exit.thread
    i8 20, label %check_name.exit.thread
    i8 126, label %check_name.exit.thread
  ]

bb.f:                                             ; preds = %bb.c, %bb.e
  br label %check_name.exit.thread

bb.g:                                             ; preds = %.tail.i28, %.tail2.i31, %sub_0.i26
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = and i32 %i.aa, 2
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %check_name.exit.thread, label %v9fs_path_write_lock.exit

v9fs_path_write_lock.exit:                        ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 7296 ; 2 uses
  call void @qemu_co_rwlock_wrlock(ptr noundef nonnull %i.ac) #23
  %i.ad = load i32, ptr %i.a, align 4
  %i.ae = load i32, ptr %i.b, align 4
  %i.af = call i32 @v9fs_complete_renameat(ptr noundef nonnull %0, i32 noundef %i.ad, ptr noundef nonnull %1, i32 noundef %i.ae, ptr noundef nonnull %2) ; 2 uses
  %i.ag = load i32, ptr %i.z, align 8
  %i.ah = and i32 %i.ag, 2
  %.not.i33 = icmp eq i32 %i.ah, 0
  br i1 %.not.i33, label %v9fs_path_unlock.exit, label %bb.h

bb.h:                                             ; preds = %v9fs_path_write_lock.exit
  call void @qemu_co_rwlock_unlock(ptr noundef nonnull %i.ac) #23
  br label %v9fs_path_unlock.exit

v9fs_path_unlock.exit:                            ; preds = %v9fs_path_write_lock.exit, %bb.h
  %.not20 = icmp eq i32 %i.af, 0
  %narrow = select i1 %.not20, i32 7, i32 %i.af
  %spec.select = sext i32 %narrow to i64
  br label %check_name.exit.thread

check_name.exit.thread:                           ; preds = %bb.d, %bb.e, %bb.e, %bb.e, %bb.f, %name_is_illegal.exit.i23, %bb.b, %bb.c, %bb.c, %bb.c, %name_is_illegal.exit.i, %v9fs_path_unlock.exit, %bb.g, %bb.a
  %.0 = phi i64 [ %i.g, %bb.a ], [ -95, %bb.g ], [ -2, %name_is_illegal.exit.i ], [ %spec.select, %v9fs_path_unlock.exit ], [ -2, %bb.b ], [ -21, %bb.c ], [ -21, %bb.c ], [ -21, %bb.c ], [ -2, %name_is_illegal.exit.i23 ], [ -2, %bb.d ], [ -21, %bb.e ], [ -21, %bb.e ], [ -21, %bb.e ], [ -17, %bb.f ]
  call void @pdu_complete(ptr noundef nonnull %0, i64 noundef %.0)
  call void @v9fs_string_free(ptr noundef nonnull %1) #23
  call void @v9fs_string_free(ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @v9fs_unlinkat(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.V9fsString, align 8         ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %struct.V9fsPath, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store i64 0, ptr %1, align 8, !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store ptr null, ptr %i.c, align 8
  store i16 0, ptr %1, align 8
  %i.d = call i64 (ptr, i64, ptr, ...) @pdu_unmarshal(ptr noundef %0, i64 noundef 7, ptr noundef nonnull @.str.90, ptr noundef nonnull %i.a, ptr noundef nonnull %1, ptr noundef nonnull %i.b)
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %name_is_illegal.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %name_is_illegal.exit.thread, label %name_is_illegal.exit

name_is_illegal.exit:                             ; preds = %bb.b
  %i.i = call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.g, i32 noundef 47) #28
  %.not32 = icmp eq ptr %i.i, null
  br i1 %.not32, label %sub_0, label %name_is_illegal.exit.thread

sub_0:                                            ; preds = %name_is_illegal.exit
  %.not37 = icmp eq i8 %i.h, 46
  br i1 %.not37, label %.tail, label %bb.c

.tail:                                            ; preds = %sub_0
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %name_is_illegal.exit.thread, label %sub_135

sub_135:                                          ; preds = %.tail
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = zext i8 %i.m to i32
  %i.o = sub nsw i32 46, %i.n
  %.not39 = icmp eq i8 %i.m, 46
  br i1 %.not39, label %sub_2, label %.tail33

sub_2:                                            ; preds = %sub_135
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = sub nsw i32 0, %i.r
  br label %.tail33

.tail33:                                          ; preds = %sub_135, %sub_2
  %3 = phi i32 [ %i.s, %sub_2 ], [ %i.o, %sub_135 ]
  %.not26 = icmp eq i32 %3, 0
  br i1 %.not26, label %name_is_illegal.exit.thread, label %bb.c

bb.c:                                             ; preds = %sub_0, %.tail33
  %i.t = load i32, ptr %i.b, align 4              ; 2 uses
  %i.u = and i32 %i.t, -513
  %.not27 = icmp eq i32 %i.u, 0
  br i1 %.not27, label %bb.d, label %name_is_illegal.exit.thread

bb.d:                                             ; preds = %bb.c
  %.not28 = icmp eq i32 %i.t, 0
  %spec.select = select i1 %.not28, i32 0, i32 512
  %i.v = load i32, ptr %i.a, align 4
  %i.w = call ptr @get_fid(ptr noundef %0, i32 noundef %i.v) ; 6 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %name_is_illegal.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.c, align 8
  %i.aa = call i32 @v9fs_co_name_to_path(ptr noundef %0, ptr noundef nonnull %i.y, ptr noundef %i.z, ptr noundef nonnull %2) #23 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = call i32 @v9fs_mark_fids_unreclaim(ptr noundef %0, ptr noundef nonnull %2) ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = call i32 @v9fs_co_unlinkat(ptr noundef %0, ptr noundef nonnull %i.y, ptr noundef nonnull %1, i32 noundef %spec.select) #23 ; 2 uses
  %.not29 = icmp eq i32 %i.ae, 0
  %spec.select30 = select i1 %.not29, i32 7, i32 %i.ae
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.020 = phi i32 [ %i.aa, %bb.e ], [ %i.ac, %bb.f ], [ %spec.select30, %bb.g ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 260 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %.not.i31 = icmp eq i32 %i.ag, 0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef 436, ptr noundef nonnull @__PRETTY_FUNCTION__.put_fid) #27
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4
  %.not10.i = icmp eq i32 %i.ah, 0
  br i1 %.not10.i, label %bb.k, label %put_fid.exit

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 264
  %i.aj = load i8, ptr %i.ai, align 8, !range !14, !noundef !15
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.l, label %put_fid.exit

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.am = load i32, ptr %i.al, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 7368
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = icmp eq i32 %i.am, %i.aq
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 7376
  call void @migrate_del_blocker(ptr noundef nonnull %i.as) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.at = call i32 @free_fid(ptr noundef nonnull %0, ptr noundef nonnull %i.w) ; 0 uses
  br label %put_fid.exit

put_fid.exit:                                     ; preds = %bb.j, %bb.k, %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void @g_free(ptr noundef %i.av) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %name_is_illegal.exit.thread

name_is_illegal.exit.thread:                      ; preds = %bb.b, %bb.d, %bb.c, %.tail33, %.tail, %name_is_illegal.exit, %bb.a, %put_fid.exit
  %.1 = phi i32 [ %i.e, %bb.a ], [ -2, %name_is_illegal.exit ], [ -39, %.tail33 ], [ -22, %bb.c ], [ %.020, %put_fid.exit ], [ -22, %.tail ], [ -22, %bb.d ], [ -2, %bb.b ]
  %i.aw = sext i32 %.1 to i64
  call void @pdu_complete(ptr noundef %0, i64 noundef %i.aw)
  call void @v9fs_string_free(ptr noundef nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @v9fs_version(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.V9fsString, align 8         ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 116 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.e = call i64 (ptr, i64, ptr, ...) @pdu_unmarshal(ptr noundef %0, i64 noundef 7, ptr noundef nonnull @.str.91, ptr noundef nonnull %i.d, ptr noundef nonnull %1) ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %trace_v9fs_version_return.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load i16, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.j = load i8, ptr %i.i, align 2
  %i.k = load i32, ptr %i.d, align 4
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %trace_v9fs_version.exit, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.n = load i16, ptr @_TRACE_V9FS_VERSION_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.n, 0
  br i1 %.not3.i, label %trace_v9fs_version.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr @qemu_loglevel, align 4
  %i.p = and i32 %i.o, 32768
  %.not4.i = icmp eq i32 %i.p, 0
  br i1 %.not4.i, label %trace_v9fs_version.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = zext i16 %i.h to i32
  %i.r = zext i8 %i.j to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.99, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.k, ptr noundef %i.l) #23
  br label %trace_v9fs_version.exit

trace_v9fs_version.exit:                          ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  call void @virtfs_reset(ptr noundef nonnull %0)
  %i.s = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.t = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(9) @.str.92) #28
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %trace_v9fs_version.exit
  %i.u = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(9) @.str.93) #28
  %.not36 = icmp eq i32 %i.u, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ptr, ...) @v9fs_string_sprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.94) #23
  br label %bb.o

bb.h:                                             ; preds = %bb.f, %trace_v9fs_version.exit
  %.sink = phi i32 [ 1, %trace_v9fs_version.exit ], [ 2, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 %.sink, ptr %i.v, align 8
  %i.w = load i32, ptr %i.d, align 4              ; 2 uses
  %i.x = icmp slt i32 %i.w, 4096
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.95) #23
  br label %trace_v9fs_version_return.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 7288
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 2 uses
  %i.ab = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.aa, ptr nonnull @.str.19, ptr nonnull @.str.20, i32 488, ptr null)
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not37 = icmp eq ptr %i.ac, null
  br i1 %.not37, label %thread-pre-split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.aa, ptr nonnull @.str.19, ptr nonnull @.str.20, i32 488, ptr null)
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call i64 %i.ae(ptr noundef nonnull %i.b) #23 ; 3 uses
  %i.ag = load i32, ptr %i.d, align 4             ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp ult i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.l, label %thread-pre-split

bb.l:                                             ; preds = %bb.k
  %i.aj = trunc i64 %i.af to i32
  store i32 %i.aj, ptr %i.d, align 4
  %i.ak = call zeroext i1 (ptr, ptr, ...) @warn_report_once_cond(ptr noundef nonnull @v9fs_version.print_once_, ptr noundef nonnull @.str.96, i64 noundef %i.af) #23 ; 0 uses
  %.pr.pre = load i32, ptr %i.d, align 4
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.l, %bb.j, %bb.k
  %i.al = phi i32 [ %i.ag, %bb.k ], [ %i.w, %bb.j ], [ %.pr.pre, %bb.l ]
  %i.am = icmp slt i32 %i.al, 8193
  br i1 %i.am, label %bb.m, label %bb.o

bb.m:                                             ; preds = %thread-pre-split
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = and i32 %i.ao, 2048
  %.not38 = icmp eq i32 %i.ap, 0
  br i1 %.not38, label %bb.n, label %bb.o

end_hunk_0
