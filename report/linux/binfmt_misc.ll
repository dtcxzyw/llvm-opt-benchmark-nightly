Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/binfmt_misc?download=true
inline.NumInlined: 102
inline.NumDeleted: 52
begin_hunk_0_@bm_status_read:bb.a
  %.val.val = load ptr, ptr %i.c, align 64
  %i.d = getelementptr i8, ptr %.val.val, i64 848
  %.val.val.val = load ptr, ptr %i.d, align 16
  %i.e = getelementptr i8, ptr %.val.val.val, i64 24
  %i.f = load i8, ptr %i.e, align 8, !range !11, !noundef !12
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = select i1 %i.g, ptr @.str.7, ptr @.str.8
  %i.i = select i1 %i.g, i64 8, i64 9
  %i.j = tail call i64 @simple_read_from_buffer(ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %i.h, i64 noundef %i.i) #14
  ret i64 %i.j
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -22, 4) i64 @bm_status_write(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree readnone captures(none) %3) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = icmp ugt i64 %2, 3
  br i1 %i.b, label %bb.j, label %copy_from_user.exit.i

copy_from_user.exit.i:                            ; preds = %bb.a
  store i32 0, ptr %i.a, align 4, !annotation !18
  %i.c = call i64 @_copy_from_user(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef range(i64 0, 1921) %2) #14
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.j

bb.b:                                             ; preds = %copy_from_user.exit.i
  %.not26.i = icmp eq i64 %2, 0
  br i1 %.not26.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.a, i64 %2
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 10
  %i.h = sext i1 %i.g to i64
  %spec.select.i = add nsw i64 %2, %i.h           ; 2 uses
  %i.i = icmp eq i64 %spec.select.i, 1            ; 2 uses
  %i.j = load i8, ptr %i.a, align 4               ; 3 uses
  %i.k = icmp eq i8 %i.j, 48
  %or.cond.i = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq i8 %i.j, 49
  %or.cond7.i = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond7.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq i64 %spec.select.i, 2
  %i.n = icmp eq i8 %i.j, 45
  %or.cond11.i = select i1 %i.m, i1 %i.n, i1 false
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 49
  %or.cond15.i = select i1 %or.cond11.i, i1 %i.q, i1 false
  br i1 %or.cond15.i, label %bb.h, label %bb.j

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.r = getelementptr i8, ptr %0, i64 32
  %.val2838 = load ptr, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %.val2838, i64 40
  %.val39 = load ptr, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %.val39, i64 1088
  %.val.val40 = load ptr, ptr %i.t, align 64
  %i.u = getelementptr i8, ptr %.val.val40, i64 848
  %.val.val.val41 = load ptr, ptr %i.u, align 16
  %i.v = getelementptr i8, ptr %.val.val.val41, i64 24
  store i8 0, ptr %i.v, align 8
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.w = getelementptr i8, ptr %0, i64 32
  %.val2845 = load ptr, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %.val2845, i64 40
  %.val46 = load ptr, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %.val46, i64 1088
  %.val.val47 = load ptr, ptr %i.y, align 64
  %i.z = getelementptr i8, ptr %.val.val47, i64 848
  %.val.val.val48 = load ptr, ptr %i.z, align 16
  %i.aa = getelementptr i8, ptr %.val.val.val48, i64 24
  store i8 1, ptr %i.aa, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ab = getelementptr i8, ptr %0, i64 32
  %.val28 = load ptr, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %.val28, i64 40
  %.val = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ad = getelementptr i8, ptr %.val, i64 1088
  %.val.val = load ptr, ptr %i.ad, align 64
  %i.ae = getelementptr i8, ptr %.val.val, i64 848
  %.val.val.val = load ptr, ptr %i.ae, align 16   ; 4 uses
  %i.af = getelementptr i8, ptr %.val, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 48
  %.val29 = load ptr, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %.val29, i64 152  ; 2 uses
  call void @down_write(ptr noundef %i.ai) #14
  %i.aj = load ptr, ptr %.val.val.val, align 8    ; 2 uses
  %.not50 = icmp eq ptr %i.aj, %.val.val.val
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %.val.val.val, i64 16 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.02551 = phi ptr [ %i.aj, %.lr.ph ], [ %.026, %bb.i ] ; 7 uses
  %.026 = load ptr, ptr %.02551, align 8          ; 2 uses
  call void @_raw_write_lock(ptr noundef %i.ak) #14
  %i.al = getelementptr i8, ptr %.02551, i64 8    ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = load ptr, ptr %.02551, align 8          ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8
  store volatile ptr %i.an, ptr %i.am, align 8
  store volatile ptr %.02551, ptr %.02551, align 8
  store volatile ptr %.02551, ptr %i.al, align 8
  call void @_raw_write_unlock(ptr noundef %i.ak) #14
  %i.ap = getelementptr i8, ptr %.02551, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8
  call void @locked_recursive_removal(ptr noundef %i.aq, ptr noundef null) #14
  %.not = icmp eq ptr %.026, %.val.val.val
  br i1 %.not, label %._crit_edge, label %bb.i, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.i, %bb.h
  call void @up_write(ptr noundef %i.ai) #14
  br label %bb.k

bb.j:                                             ; preds = %copy_from_user.exit.i, %bb.a, %bb.b, %bb.e
  %.024.i.ph = phi i64 [ -22, %bb.e ], [ 0, %bb.b ], [ -22, %bb.a ], [ -14, %copy_from_user.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.g, %._crit_edge, %bb.j
  %.0 = phi i64 [ %.024.i.ph, %bb.j ], [ %2, %._crit_edge ], [ %2, %bb.g ], [ %2, %bb.f ]
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @simple_read_from_buffer(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @locked_recursive_removal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bm_register_write(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree readnone captures(none) %3) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = add i64 %2, -1921
  %or.cond.i = icmp ult i64 %i.d, -1910
  br i1 %or.cond.i, label %bb.ag, label %_kmalloc_noprof.exit.i

_kmalloc_noprof.exit.i:                           ; preds = %bb.a
  %i.e = add nuw nsw i64 %2, 96
  %i.f = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 32, 4097) %i.e, i32 noundef 4197568) #17 ; 15 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.ag, label %copy_from_user.exit.i

copy_from_user.exit.i:                            ; preds = %_kmalloc_noprof.exit.i
  %i.g = getelementptr i8, ptr %i.f, i64 88       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, i8 0, i64 88, i1 false)
  %i.h = tail call i64 @_copy_from_user(ptr noundef %i.g, ptr noundef %1, i64 noundef range(i64 0, 1921) %2) #14
  %.not145.i = icmp eq i64 %i.h, 0
  br i1 %.not145.i, label %bb.b, label %create_entry.exit.thread.sink.split

bb.b:                                             ; preds = %copy_from_user.exit.i
  %i.i = load i8, ptr %i.g, align 8               ; 6 uses
  %i.j = zext i8 %i.i to i32                      ; 5 uses
  switch i8 %i.i, label %bb.c [
    i8 80, label %create_entry.exit.thread.sink.split
    i8 79, label %create_entry.exit.thread.sink.split
    i8 70, label %create_entry.exit.thread.sink.split
    i8 67, label %create_entry.exit.thread.sink.split
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.f, i64 89       ; 2 uses
  %i.l = getelementptr i8, ptr %i.g, i64 %2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(8) %i.l, i8 %i.i, i64 8, i1 false)
  %i.m = getelementptr i8, ptr %i.f, i64 56       ; 2 uses
  store ptr %i.k, ptr %i.m, align 8
  %i.n = tail call ptr @strchr(ptr noundef %i.k, i32 noundef %i.j) #14 ; 5 uses
  %.not146.i = icmp eq ptr %i.n, null
  br i1 %.not146.i, label %create_entry.exit.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.n, i64 1
  store i8 0, ptr %i.n, align 1
  %i.p = load ptr, ptr %i.m, align 8              ; 4 uses
  %i.q = load i8, ptr %i.p, align 1
  switch i8 %i.q, label %.tail190.thread.i [
    i8 0, label %create_entry.exit.thread.sink.split
    i8 46, label %.tail.i
  ]

.tail.i:                                          ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.s = load i8, ptr %i.r, align 1
  switch i8 %i.s, label %.tail190.thread.i [
    i8 0, label %create_entry.exit.thread.sink.split
    i8 46, label %.tail190.i
  ]

.tail190.i:                                       ; preds = %.tail.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %create_entry.exit.thread.sink.split, label %.tail190.thread.i

.tail190.thread.i:                                ; preds = %.tail.i, %.tail190.i, %bb.d
  %i.w = tail call ptr @strchr(ptr noundef %i.p, i32 noundef 47) #14
  %.not150.i = icmp eq ptr %i.w, null
  br i1 %.not150.i, label %bb.e, label %create_entry.exit.thread.sink.split

bb.e:                                             ; preds = %.tail190.thread.i
  %i.x = getelementptr i8, ptr %i.n, i64 2
  %i.y = load i8, ptr %i.o, align 1
  switch i8 %i.y, label %create_entry.exit.thread.sink.split [
    i8 69, label %bb.g
    i8 77, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i = phi i64 [ 3, %bb.f ], [ 1, %bb.e ]
  %i.z = getelementptr i8, ptr %i.f, i64 16       ; 4 uses
  store i64 %.sink.i, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %i.n, i64 3       ; 3 uses
  %i.ab = load i8, ptr %i.x, align 1
  %.not151.i = icmp eq i8 %i.ab, %i.i
  br i1 %.not151.i, label %bb.h, label %create_entry.exit.thread.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ac = load volatile i64, ptr %i.z, align 8
  %i.ad = and i64 %i.ac, 2
  %.not188.i = icmp eq i64 %i.ad, 0
  %i.ae = tail call ptr @strchr(ptr noundef %i.aa, i32 noundef %i.j) #14 ; 7 uses
  %.not152.i = icmp eq ptr %i.ae, null            ; 2 uses
  br i1 %.not188.i, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not152.i, label %create_entry.exit.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.ae, align 1
  %.not158.i = icmp eq ptr %i.aa, %i.ae
  br i1 %.not158.i, label %.thread179.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr i8, ptr %i.f, i64 24      ; 2 uses
  %i.ag = tail call i32 @kstrtoint(ptr noundef %i.aa, i32 noundef 10, ptr noundef %i.af) #14
  %.not159.i = icmp eq i32 %i.ag, 0
  br i1 %.not159.i, label %bb.l, label %create_entry.exit.thread.sink.split

bb.l:                                             ; preds = %bb.k
  %i.ah = load i32, ptr %i.af, align 8
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %bb.m, label %create_entry.exit.thread.sink.split

bb.m:                                             ; preds = %bb.l
  %.pr.i = load i8, ptr %i.ae, align 1
  %.not160.i = icmp eq i8 %.pr.i, 0
  br i1 %.not160.i, label %.thread179.i, label %create_entry.exit.thread.sink.split

.thread179.i:                                     ; preds = %bb.m, %bb.j
  %i.aj = getelementptr i8, ptr %i.ae, i64 1      ; 2 uses
  %i.ak = getelementptr i8, ptr %i.f, i64 32      ; 3 uses
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = tail call fastcc ptr @scanarg(ptr noundef %i.aj, i8 noundef zeroext %i.i) #18, !srcloc !33 ; 3 uses
  %.not161.i = icmp eq ptr %i.al, null
  br i1 %.not161.i, label %create_entry.exit.thread.sink.split, label %bb.n

bb.n:                                             ; preds = %.thread179.i
  %i.am = load ptr, ptr %i.ak, align 8
  %i.an = load i8, ptr %i.am, align 1
  %.not162.i = icmp eq i8 %i.an, 0
  br i1 %.not162.i, label %create_entry.exit.thread.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr i8, ptr %i.f, i64 40      ; 4 uses
  store ptr %i.al, ptr %i.ao, align 8
  %i.ap = tail call fastcc ptr @scanarg(ptr noundef nonnull %i.al, i8 noundef zeroext %i.i) #18, !srcloc !34 ; 2 uses
  %.not163.i = icmp eq ptr %i.ap, null
  br i1 %.not163.i, label %create_entry.exit.thread.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = load ptr, ptr %i.ao, align 8
  %i.ar = load i8, ptr %i.aq, align 1
  %.not164.i = icmp eq i8 %i.ar, 0
  br i1 %.not164.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.ao, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.as = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.at = tail call i32 @string_unescape(ptr noundef %i.as, ptr noundef %i.as, i64 noundef 0, i32 noundef 4) #14 ; 2 uses
  %i.au = getelementptr i8, ptr %i.f, i64 28      ; 2 uses
  store i32 %i.at, ptr %i.au, align 4
  %i.av = load ptr, ptr %i.ao, align 8            ; 3 uses
  %.not165.i = icmp eq ptr %i.av, null
  br i1 %.not165.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = tail call i32 @string_unescape(ptr noundef nonnull %i.av, ptr noundef nonnull %i.av, i64 noundef 0, i32 noundef 4) #14 ; 2 uses
  %i.ax = load i32, ptr %i.au, align 4
  %.not166.i = icmp eq i32 %i.aw, %i.ax
  br i1 %.not166.i, label %bb.t, label %create_entry.exit.thread.sink.split

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ay = phi i32 [ %i.aw, %bb.s ], [ %i.at, %bb.r ] ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 256
  br i1 %i.az, label %create_entry.exit.thread.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = sub i32 256, %i.ay
  %i.bb = getelementptr i8, ptr %i.f, i64 24
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = icmp slt i32 %i.ba, %i.bc
  br i1 %i.bd, label %create_entry.exit.thread.sink.split, label %.thread184.i

bb.v:                                             ; preds = %bb.h
  br i1 %.not152.i, label %create_entry.exit.thread.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = getelementptr i8, ptr %i.ae, i64 1      ; 2 uses
  store i8 0, ptr %i.ae, align 1
  %i.bf = getelementptr i8, ptr %i.f, i64 32      ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8
  %i.bg = tail call ptr @strchr(ptr noundef %i.be, i32 noundef %i.j) #14 ; 3 uses
  %.not153.i = icmp eq ptr %i.bg, null
  br i1 %.not153.i, label %create_entry.exit.thread.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = getelementptr i8, ptr %i.bg, i64 1
  store i8 0, ptr %i.bg, align 1
  %i.bi = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1
  %.not154.i = icmp eq i8 %i.bj, 0
  br i1 %.not154.i, label %create_entry.exit.thread.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = tail call ptr @strchr(ptr noundef %i.bi, i32 noundef 47) #14
  %.not155.i = icmp eq ptr %i.bk, null
  br i1 %.not155.i, label %bb.z, label %create_entry.exit.thread.sink.split

bb.z:                                             ; preds = %bb.y
  %i.bl = tail call ptr @strchr(ptr noundef %i.bh, i32 noundef %i.j) #14 ; 3 uses
  %.not156.i = icmp eq ptr %i.bl, null
  br i1 %.not156.i, label %create_entry.exit.thread.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bm = getelementptr i8, ptr %i.bl, i64 1
  store i8 0, ptr %i.bl, align 1
  br label %.thread184.i

.thread184.i:                                     ; preds = %bb.aa, %bb.u
  %.1128.i = phi ptr [ %i.ap, %bb.u ], [ %i.bm, %bb.aa ] ; 2 uses
  %i.bn = getelementptr i8, ptr %i.f, i64 48      ; 2 uses
  store ptr %.1128.i, ptr %i.bn, align 8
  %i.bo = tail call ptr @strchr(ptr noundef %.1128.i, i32 noundef %i.j) #14 ; 3 uses
  %.not167.i = icmp eq ptr %i.bo, null
  br i1 %.not167.i, label %create_entry.exit.thread.sink.split, label %bb.ab

bb.ab:                                            ; preds = %.thread184.i
  store i8 0, ptr %i.bo, align 1
  %i.bp = load ptr, ptr %i.bn, align 8
  %i.bq = load i8, ptr %i.bp, align 1
  %.not168.i = icmp eq i8 %i.bq, 0
  br i1 %.not168.i, label %create_entry.exit.thread.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ab, %bb.af
  %.pn.i = phi ptr [ %.013.i.i, %bb.af ], [ %i.bo, %bb.ab ] ; 2 uses
  %.013.i.i = getelementptr i8, ptr %.pn.i, i64 1 ; 3 uses
  %i.br = load i8, ptr %.013.i.i, align 1         ; 2 uses
  switch i8 %i.br, label %check_special_flags.exit.i [
    i8 80, label %bb.af
    i8 79, label %bb.ac
    i8 67, label %bb.ad
    i8 70, label %bb.ae
  ]

bb.ac:                                            ; preds = %.preheader.i
  br label %bb.af

bb.ad:                                            ; preds = %.preheader.i
  br label %bb.af

bb.ae:                                            ; preds = %.preheader.i
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %.preheader.i
  %.sink18.i.i = phi i64 [ 268435456, %bb.ae ], [ 1610612736, %bb.ad ], [ 1073741824, %bb.ac ], [ 2147483648, %.preheader.i ]
  %i.bs = load i64, ptr %i.z, align 8
  %i.bt = or i64 %i.bs, %.sink18.i.i
  store i64 %i.bt, ptr %i.z, align 8
  br label %.preheader.i, !llvm.loop !32

check_special_flags.exit.i:                       ; preds = %.preheader.i
  %i.bu = icmp eq i8 %i.br, 10
  %i.bv = getelementptr i8, ptr %.pn.i, i64 2
  %spec.select.i = select i1 %i.bu, ptr %i.bv, ptr %.013.i.i
  %.not169.i = icmp eq ptr %spec.select.i, %i.l
  br i1 %.not169.i, label %create_entry.exit, label %create_entry.exit.thread.sink.split

bb.ag:                                            ; preds = %_kmalloc_noprof.exit.i, %bb.a
  %.0125.i = phi i64 [ -22, %bb.a ], [ -12, %_kmalloc_noprof.exit.i ]
  %i.bw = inttoptr i64 %.0125.i to ptr
  br label %create_entry.exit

create_entry.exit:                                ; preds = %check_special_flags.exit.i, %bb.ag
  %.0.i = phi ptr [ %i.bw, %bb.ag ], [ %i.f, %check_special_flags.exit.i ] ; 15 uses
  %i.bx = icmp ugt ptr %.0.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.bx, label %create_entry.exit.thread, label %bb.ah

create_entry.exit.thread.sink.split:              ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.c, %bb.d, %.tail190.i, %.tail190.thread.i, %bb.e, %bb.g, %bb.i, %bb.k, %bb.l, %bb.m, %.thread179.i, %bb.n, %bb.o, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %.thread184.i, %bb.ab, %check_special_flags.exit.i, %.tail.i, %copy_from_user.exit.i
  %.0.i30.ph = phi ptr [ inttoptr (i64 -22 to ptr), %bb.b ], [ inttoptr (i64 -14 to ptr), %copy_from_user.exit.i ], [ inttoptr (i64 -22 to ptr), %bb.b ], [ inttoptr (i64 -22 to ptr), %.tail.i ], [ inttoptr (i64 -22 to ptr), %check_special_flags.exit.i ], [ inttoptr (i64 -22 to ptr), %bb.ab ], [ inttoptr (i64 -22 to ptr), %.thread184.i ], [ inttoptr (i64 -22 to ptr), %bb.z ], [ inttoptr (i64 -22 to ptr), %bb.y ], [ inttoptr (i64 -22 to ptr), %bb.x ], [ inttoptr (i64 -22 to ptr), %bb.w ], [ inttoptr (i64 -22 to ptr), %bb.v ], [ inttoptr (i64 -22 to ptr), %bb.u ], [ inttoptr (i64 -22 to ptr), %bb.t ], [ inttoptr (i64 -22 to ptr), %bb.s ], [ inttoptr (i64 -22 to ptr), %bb.o ], [ inttoptr (i64 -22 to ptr), %bb.n ], [ inttoptr (i64 -22 to ptr), %.thread179.i ], [ inttoptr (i64 -22 to ptr), %bb.m ], [ inttoptr (i64 -22 to ptr), %bb.l ], [ inttoptr (i64 -22 to ptr), %bb.k ], [ inttoptr (i64 -22 to ptr), %bb.i ], [ inttoptr (i64 -22 to ptr), %bb.g ], [ inttoptr (i64 -22 to ptr), %bb.e ], [ inttoptr (i64 -22 to ptr), %.tail190.thread.i ], [ inttoptr (i64 -22 to ptr), %.tail190.i ], [ inttoptr (i64 -22 to ptr), %bb.d ], [ inttoptr (i64 -22 to ptr), %bb.c ], [ inttoptr (i64 -22 to ptr), %bb.b ], [ inttoptr (i64 -22 to ptr), %bb.b ]
  tail call void @kfree(ptr noundef nonnull %i.f) #14
  br label %create_entry.exit.thread

create_entry.exit.thread:                         ; preds = %create_entry.exit.thread.sink.split, %create_entry.exit
  %.0.i30 = phi ptr [ %.0.i, %create_entry.exit ], [ %.0.i30.ph, %create_entry.exit.thread.sink.split ]
  %i.by = ptrtoint ptr %.0.i30 to i64
  br label %bb.ap

bb.ah:                                            ; preds = %create_entry.exit
  %i.bz = getelementptr i8, ptr %.0.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = and i64 %i.ca, 268435456
  %.not = icmp eq i64 %i.cb, 0
  br i1 %.not, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cc = getelementptr i8, ptr %0, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #19, !srcloc !35
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = getelementptr i8, ptr %i.cf, i64 1992   ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !36
  store volatile ptr %i.cd, ptr %i.cg, align 8
  %i.ci = getelementptr i8, ptr %.0.i, i64 48     ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = tail call ptr @open_exec(ptr noundef %i.cj) #14 ; 4 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !37
  store volatile ptr %i.ch, ptr %i.cg, align 8
  %i.cl = icmp ugt ptr %i.ck, inttoptr (i64 -4096 to ptr)
  br i1 %i.cl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cm = load ptr, ptr %i.ci, align 8
  %i.cn = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %i.cm) #20 ; 0 uses
  tail call void @kfree(ptr noundef %.0.i) #14
  %i.co = ptrtoint ptr %i.ck to i64
  br label %bb.ap

bb.ak:                                            ; preds = %bb.ai
  %i.cp = getelementptr i8, ptr %.0.i, i64 72
  store ptr %i.ck, ptr %i.cp, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.023 = phi ptr [ %i.ck, %bb.ak ], [ null, %bb.ah ] ; 3 uses
  %i.cq = getelementptr i8, ptr %i.c, i64 104
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr i8, ptr %.0.i, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = tail call ptr @simple_start_creating(ptr noundef %i.cr, ptr noundef %i.ct) #14 ; 6 uses
  %i.cv = icmp ugt ptr %i.cu, inttoptr (i64 -4096 to ptr)
  br i1 %i.cv, label %add_entry.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cw = tail call ptr @new_inode(ptr noundef %i.c) #14 ; 8 uses
  %.not.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i, label %add_entry.exit.thread33, label %add_entry.exit.thread

add_entry.exit.thread33:                          ; preds = %bb.am
  tail call void @simple_done_creating(ptr noundef %i.cu) #14
  br label %bb.an

add_entry.exit.thread:                            ; preds = %bb.am
  %i.cx = tail call i32 @get_next_ino() #14
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr i8, ptr %i.cw, i64 64
  store i64 %i.cy, ptr %i.cz, align 8
  store i16 -32348, ptr %i.cw, align 8
  %i.da = tail call { i64, i64 } @simple_inode_init_ts(ptr noundef nonnull %i.cw) #14 ; 0 uses
  %i.db = getelementptr i8, ptr %.0.i, i64 80
  store volatile i32 1, ptr %i.db, align 8
  %i.dc = getelementptr i8, ptr %.0.i, i64 64
  store ptr %i.cu, ptr %i.dc, align 8
  %i.dd = getelementptr i8, ptr %i.cw, i64 536
  store ptr %.0.i, ptr %i.dd, align 8
  %i.de = getelementptr i8, ptr %i.cw, i64 328
  store ptr @bm_entry_operations, ptr %i.de, align 8
  %i.df = tail call ptr @d_make_persistent(ptr noundef %i.cu, ptr noundef nonnull %i.cw) #14 ; 0 uses
  %i.dg = getelementptr i8, ptr %i.cw, i64 40
  %.val.i = load ptr, ptr %i.dg, align 8
  %i.dh = getelementptr i8, ptr %.val.i, i64 1088
  %.val.val.i = load ptr, ptr %i.dh, align 64
  %i.di = getelementptr i8, ptr %.val.val.i, i64 848
  %.val.val.val.i = load ptr, ptr %i.di, align 16 ; 4 uses
  %i.dj = getelementptr i8, ptr %.val.val.val.i, i64 16 ; 2 uses
  tail call void @_raw_write_lock(ptr noundef %i.dj) #14
  %i.dk = load ptr, ptr %.val.val.val.i, align 8  ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  store ptr %.0.i, ptr %i.dl, align 8
  store ptr %i.dk, ptr %.0.i, align 8
  %i.dm = getelementptr i8, ptr %.0.i, i64 8
  store ptr %.val.val.val.i, ptr %i.dm, align 8
  store volatile ptr %.0.i, ptr %.val.val.val.i, align 8
  tail call void @_raw_write_unlock(ptr noundef %i.dj) #14
  tail call void @simple_done_creating(ptr noundef %i.cu) #14
  br label %bb.ap

add_entry.exit:                                   ; preds = %bb.al
  %i.dn = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.do = and i64 %i.dn, 4294967295
  %.not25 = icmp eq i64 %i.do, 0
  br i1 %.not25, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %add_entry.exit.thread33, %add_entry.exit
  %.0.i2736 = phi i64 [ -12, %add_entry.exit.thread33 ], [ %i.dn, %add_entry.exit ]
  %.not26 = icmp eq ptr %.023, null
  br i1 %.not26, label %bb.ao, label %exe_file_allow_write_access.exit

exe_file_allow_write_access.exit:                 ; preds = %bb.an
  %i.dp = getelementptr i8, ptr %.023, i64 32
  %.val.i.i = load ptr, ptr %i.dp, align 8
  %i.dq = getelementptr i8, ptr %.val.i.i, i64 320 ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dq, ptr elementtype(i32) %i.dq) #15, !srcloc !17
  %i.dr = tail call i32 @filp_close(ptr noundef nonnull %.023, ptr noundef null) #14 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %exe_file_allow_write_access.exit, %bb.an
  tail call void @kfree(ptr noundef %.0.i) #14
  %sext = shl i64 %.0.i2736, 32
  %i.ds = ashr exact i64 %sext, 32
  br label %bb.ap

bb.ap:                                            ; preds = %add_entry.exit.thread, %add_entry.exit, %bb.ao, %bb.aj, %create_entry.exit.thread
  %.0 = phi i64 [ %i.by, %create_entry.exit.thread ], [ %i.co, %bb.aj ], [ %i.ds, %bb.ao ], [ %2, %add_entry.exit ], [ %2, %add_entry.exit.thread ]
  ret i64 %.0
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define internal fastcc noundef ptr @scanarg(ptr nofree noundef captures(ret: address, provenance) %0, i8 noundef zeroext %1) unnamed_addr #10 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1          ; 2 uses
  %i.b = load i8, ptr %0, align 1                 ; 2 uses
  %.not15 = icmp eq i8 %i.b, %1
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.c = phi i8 [ %i.v, %bb.e ], [ %i.b, %bb.a ]
  %i.d = phi ptr [ %i.u, %bb.e ], [ %i.a, %bb.a ] ; 3 uses
  %.0916 = phi ptr [ %.1, %bb.e ], [ %0, %bb.a ]  ; 3 uses
  %i.e = icmp eq i8 %i.c, 92
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.f = load i8, ptr %i.d, align 1
  %i.g = icmp eq i8 %i.f, 120
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.0916, i64 2
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr i8, ptr @_ctype, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1
  %i.m = and i8 %i.l, 68
  %.not11 = icmp eq i8 %i.m, 0
  br i1 %.not11, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %.0916, i64 3
  %i.o = getelementptr i8, ptr %.0916, i64 4
  %i.p = load i8, ptr %i.n, align 1
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr i8, ptr @_ctype, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  %i.t = and i8 %i.s, 68
  %.not12 = icmp eq i8 %i.t, 0
  br i1 %.not12, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %.lr.ph
  %.1 = phi ptr [ %i.o, %bb.d ], [ %i.d, %bb.b ], [ %i.d, %.lr.ph ] ; 4 uses
  %i.u = getelementptr i8, ptr %.1, i64 1         ; 2 uses
  %i.v = load i8, ptr %.1, align 1                ; 2 uses
  %.not = icmp eq i8 %i.v, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.09.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.e ]
  %.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.u, %bb.e ]
  store i8 0, ptr %.09.lcssa, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %._crit_edge
  %.0 = phi ptr [ %.lcssa, %._crit_edge ], [ null, %bb.c ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
end_hunk_0
