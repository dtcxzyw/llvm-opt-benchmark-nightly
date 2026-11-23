Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/ioend?download=true
inline.NumInlined: 102
inline.NumDeleted: 59
begin_hunk_0_@iomap_finish_ioends:bb.a
  %i.bx = call i32 @iomap_finish_ioend_buffered_read(ptr noundef %.027.i10) #12
  br label %iomap_finish_ioend.exit15

bb.ab:                                            ; preds = %bb.z
  %i.by = call fastcc i32 @iomap_finish_ioend_buffered_write(ptr noundef %.027.i10) #13, !srcloc !36
  br label %iomap_finish_ioend.exit15

iomap_finish_ioend.exit15:                        ; preds = %bb.w, %bb.y, %bb.aa, %bb.ab
  %.0.i12 = phi i32 [ %i.bt, %bb.y ], [ %i.bx, %bb.aa ], [ %i.by, %bb.ab ], [ 0, %bb.w ]
  %i.bz = add i32 %.0.i12, %.1
  %i.ca = load volatile ptr, ptr %2, align 8      ; 2 uses
  %.not = icmp eq ptr %i.ca, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !33

._crit_edge:                                      ; preds = %iomap_finish_ioend.exit15, %iomap_finish_ioend.exit15.us, %iomap_finish_ioend.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local void @iomap_ioend_try_merge(ptr noundef %0, ptr nofree noundef captures(address) %1) #5 align 16 prefalign(16) {
bb.a:
  store volatile ptr %0, ptr %0, align 8
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  store volatile ptr %0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 104
  %i.c = getelementptr i8, ptr %0, i64 114
  %i.d = getelementptr i8, ptr %0, i64 72
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = getelementptr i8, ptr %0, i64 56
  %i.g = getelementptr i8, ptr %0, i64 64
  %i.h = load volatile ptr, ptr %1, align 8       ; 3 uses
  %.not20 = icmp eq ptr %i.h, %1
  %.not171921 = icmp eq ptr %i.h, null
  %.not1722 = or i1 %.not20, %.not171921
  br i1 %.not1722, label %iomap_ioend_can_merge.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 32         ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.j = phi ptr [ %i.h, %.lr.ph ], [ %i.aw, %bb.i ] ; 12 uses
  %.val21.i = load i32, ptr %i.b, align 8
  %i.k = and i32 %.val21.i, 255
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %iomap_ioend_can_merge.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.j, i64 104
  %.val.i = load i32, ptr %i.m, align 8
  %i.n = and i32 %.val.i, 255
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %iomap_ioend_can_merge.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.c, align 2
  %i.q = getelementptr i8, ptr %i.j, i64 114
  %i.r = load i8, ptr %i.q, align 2
  %.not.i = icmp eq i8 %i.p, %i.r
  br i1 %.not.i, label %bb.e, label %iomap_ioend_can_merge.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.d, align 8
  %i.t = getelementptr i8, ptr %i.j, i64 72
  %i.u = load ptr, ptr %i.t, align 8
  %.not16.i = icmp eq ptr %i.s, %i.u
  br i1 %.not16.i, label %bb.f, label %iomap_ioend_can_merge.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.j, i64 16
  %i.w = load i16, ptr %i.v, align 8
  %i.x = zext i16 %i.w to i32                     ; 2 uses
  %i.y = and i32 %i.x, 4
  %.not17.i = icmp eq i32 %i.y, 0
  br i1 %.not17.i, label %bb.g, label %iomap_ioend_can_merge.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.z = load i16, ptr %i.e, align 8
  %i.aa = and i16 %i.z, 27
  %i.ab = zext nneg i16 %i.aa to i32
  %i.ac = and i32 %i.x, 27
  %.not18.i = icmp eq i32 %i.ac, %i.ab
  br i1 %.not18.i, label %bb.h, label %iomap_ioend_can_merge.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ad = load i64, ptr %i.f, align 8
  %i.ae = load i64, ptr %i.i, align 8             ; 2 uses
  %i.af = add i64 %i.ae, %i.ad
  %i.ag = getelementptr i8, ptr %i.j, i64 56
  %i.ah = load i64, ptr %i.ag, align 8
  %.not19.i = icmp eq i64 %i.af, %i.ah
  br i1 %.not19.i, label %iomap_ioend_can_merge.exit, label %iomap_ioend_can_merge.exit.thread

iomap_ioend_can_merge.exit:                       ; preds = %bb.h
  %i.ai = load i64, ptr %i.g, align 8
  %i.aj = lshr i64 %i.ae, 9
  %i.ak = add i64 %i.ai, %i.aj
  %i.al = getelementptr i8, ptr %i.j, i64 64
  %i.am = load i64, ptr %i.al, align 8
  %.not20.i = icmp eq i64 %i.ak, %i.am
  br i1 %.not20.i, label %bb.i, label %iomap_ioend_can_merge.exit.thread

bb.i:                                             ; preds = %iomap_ioend_can_merge.exit
  %i.an = getelementptr i8, ptr %i.j, i64 8       ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  store ptr %i.ao, ptr %i.aq, align 8
  store volatile ptr %i.ap, ptr %i.ao, align 8
  %i.ar = load ptr, ptr %i.a, align 8             ; 2 uses
  store ptr %i.j, ptr %i.a, align 8
  store ptr %0, ptr %i.j, align 8
  store ptr %i.ar, ptr %i.an, align 8
  store volatile ptr %i.j, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %i.j, i64 32
  %i.at = load i64, ptr %i.as, align 8
  %i.au = load i64, ptr %i.i, align 8
  %i.av = add i64 %i.au, %i.at
  store i64 %i.av, ptr %i.i, align 8
  %i.aw = load volatile ptr, ptr %1, align 8      ; 3 uses
  %.not = icmp eq ptr %i.aw, %1
  %.not1719 = icmp eq ptr %i.aw, null
  %.not17 = or i1 %.not, %.not1719
  br i1 %.not17, label %iomap_ioend_can_merge.exit.thread, label %bb.b, !llvm.loop !37

iomap_ioend_can_merge.exit.thread:                ; preds = %bb.i, %iomap_ioend_can_merge.exit, %bb.h, %bb.b, %bb.d, %bb.e, %bb.f, %bb.g, %bb.c, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @iomap_sort_ioends(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  tail call void @list_sort(ptr noundef null, ptr noundef %0, ptr noundef @iomap_ioend_compare) #12
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal range(i32 -1, 2) i32 @iomap_ioend_compare(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 56
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %2, i64 56
  %i.d = load i64, ptr %i.c, align 8
  %.0 = tail call i32 @llvm.scmp.i32.i64(i64 %i.b, i64 %i.d)
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @iomap_split_ioend(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 88         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !annotation !38
  br i1 %2, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %.val = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.f = getelementptr i8, ptr %.val, i64 112
  %i.g = getelementptr i8, ptr %.val, i64 220
  %i.h = load i32, ptr %i.g, align 4
  %i.i = shl i32 %i.h, 9
  %i.j = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.i)
  %i.k = getelementptr i8, ptr %.val, i64 288
  %i.l = load i32, ptr %i.k, align 8
  %i.m = call i32 @bio_split_io_at(ptr noundef %i.b, ptr noundef %i.f, ptr noundef nonnull %i.a, i32 noundef %i.j, i32 noundef %i.l) #12 ; 4 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.thread, label %bb.c, !prof !11

.thread:                                          ; preds = %bb.b
  %i.o = sext i32 %i.m to i64
  %i.p = inttoptr i64 %i.o to ptr
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %.not54.not = icmp eq i32 %i.m, 0
  br i1 %.not54.not, label %bb.i, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %0, i64 136
  %i.r = load i32, ptr %i.q, align 8
  %.not = icmp ugt i32 %i.r, %1
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.s = lshr i32 %1, 9
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.050 = phi i32 [ %i.m, %bb.c ], [ %i.s, %bb.e ]
  %i.t = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 134
  %.val58 = load i8, ptr %i.v, align 2
  %i.w = zext nneg i8 %.val58 to i32
  %.neg = shl nsw i32 -1, %i.w
  %3 = lshr i32 %.neg, 9
  %4 = and i32 %3, %.050
  %i.x = call ptr @bio_split(ptr noundef %i.b, i32 noundef %4, i32 noundef 3136, ptr noundef @iomap_ioend_split_bioset) #12 ; 17 uses
  %i.y = icmp ugt ptr %i.x, inttoptr (i64 -4096 to ptr)
  br i1 %i.y, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %0, i64 160
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.x, i64 72
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %0, i64 152
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %i.x, i64 64
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = load ptr, ptr %i.t, align 8
  %i.ag = getelementptr i8, ptr %0, i64 56        ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr i8, ptr %0, i64 16
  %i.aj = load i16, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.x, i64 -88     ; 5 uses
  %i.al = getelementptr i8, ptr %i.x, i64 -48
  store volatile i32 1, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %i.x, i64 -44
  store i32 0, ptr %i.am, align 4
  %i.an = getelementptr i8, ptr %i.x, i64 -40
  store volatile ptr %i.ak, ptr %i.ak, align 8
  %i.ao = getelementptr i8, ptr %i.x, i64 -80
  store volatile ptr %i.ak, ptr %i.ao, align 8
  %i.ap = getelementptr i8, ptr %i.x, i64 -72
  store i16 %i.aj, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %i.x, i64 -64
  store ptr %i.af, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %i.x, i64 -32
  store i64 %i.ah, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %i.x, i64 40
  %i.at = getelementptr i8, ptr %i.x, i64 48
  %i.au = load i32, ptr %i.at, align 8
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr i8, ptr %i.x, i64 -56     ; 4 uses
  store i64 %i.av, ptr %i.aw, align 8
  %i.ax = load i64, ptr %i.as, align 8
  %i.ay = getelementptr i8, ptr %i.x, i64 -24     ; 2 uses
  store i64 %i.ax, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %i.x, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  store ptr %0, ptr %i.an, align 8
  %i.ba = getelementptr i8, ptr %0, i64 40        ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ba, ptr elementtype(i32) %i.ba) #11, !srcloc !39
  %i.bb = load i64, ptr %i.aw, align 8
  %i.bc = load i64, ptr %i.ag, align 8
  %i.bd = add i64 %i.bc, %i.bb
  store i64 %i.bd, ptr %i.ag, align 8
  %i.be = load i64, ptr %i.aw, align 8
  %i.bf = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = sub i64 %i.bg, %i.be
  store i64 %i.bh, ptr %i.bf, align 8
  %i.bi = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8            ; 2 uses
  store i64 %i.bj, ptr %i.ay, align 8
  br i1 %2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = load i64, ptr %i.aw, align 8
  %i.bl = lshr i64 %i.bk, 9
  %i.bm = add i64 %i.bj, %i.bl
  store i64 %i.bm, ptr %i.bi, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %.thread, %bb.g, %bb.h, %bb.d, %bb.c
  %.1 = phi ptr [ %i.p, %.thread ], [ null, %bb.d ], [ null, %bb.c ], [ %i.ak, %bb.h ], [ %i.ak, %bb.g ], [ %i.x, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @bio_split(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @iomap_ioend_init() #7 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @bioset_init(ptr noundef @iomap_ioend_bioset, i32 noundef 32, i32 noundef 88, i32 noundef 1) #12 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @bioset_init(ptr noundef @iomap_ioend_split_bioset, i32 noundef 32, i32 noundef 88, i32 noundef 1) #12 ; 2 uses
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @bioset_exit(ptr noundef @iomap_ioend_bioset) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.b, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @iomap_finish_ioend_buffered_write(ptr noundef %0) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr i8, ptr %0, i64 44         ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  tail call void @__filemap_set_wb_err(ptr noundef %i.f, i32 noundef range(i32 1, 0) %i.d) #12
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 1068
  %i.k = tail call i32 @errseq_set(ptr noundef %i.j, i32 noundef range(i32 1, 0) %i.d) #12 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = icmp eq i32 %i.d, -28
  %i.m = getelementptr i8, ptr %i.f, i64 104      ; 4 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.m, i32 2, ptr elementtype(i8) %i.m) #11, !srcloc !41
  br label %mapping_set_error.exit

bb.f:                                             ; preds = %bb.d
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.m, i32 1, ptr elementtype(i8) %i.m) #11, !srcloc !41
  br label %mapping_set_error.exit

mapping_set_error.exit:                           ; preds = %bb.e, %bb.f
  %i.n = getelementptr i8, ptr %0, i64 108
  %.val = load i16, ptr %i.n, align 4
  %i.o = and i16 %.val, 4
  %.not39 = icmp eq i16 %i.o, 0
  br i1 %.not39, label %bb.g, label %bb.i

bb.g:                                             ; preds = %mapping_set_error.exit
  %i.p = tail call i32 @___ratelimit(ptr noundef @iomap_finish_ioend_buffered_write._rs, ptr noundef @__func__.iomap_finish_ioend_buffered_write) #12
  %.not22 = icmp eq i32 %i.p, 0
  br i1 %.not22, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %i.b, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 912
  %i.t = getelementptr i8, ptr %i.b, i64 64
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %0, i64 56
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %0, i64 64
  %i.y = load i64, ptr %i.x, align 8
  %i.z = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %i.s, i64 noundef %i.u, i64 noundef %i.w, i64 noundef %i.y) #14 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %mapping_set_error.exit, %bb.h, %bb.g, %bb.a
  %i.aa = getelementptr i8, ptr %0, i64 108       ; 2 uses
  %.val.i.i = load i16, ptr %i.aa, align 4
  %i.ab = and i16 %.val.i.i, 2
  %.not.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.i, label %bio_first_bvec_all.exit.i, label %bb.j, !prof !10

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "537: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 537b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 537) #11, !srcloc !42
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.3, i32 245, i32 2307, i64 16) #11, !srcloc !43
  tail call void asm sideeffect "538: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 538b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 538) #11, !srcloc !44
  br label %bio_first_bvec_all.exit.i

bio_first_bvec_all.exit.i:                        ; preds = %bb.j, %bb.i
  %i.ac = getelementptr i8, ptr %0, i64 192       ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 8
  %.not.i26.not = icmp eq i16 %i.ad, 0
  br i1 %.not.i26.not, label %._crit_edge, label %bb.k, !prof !11

bb.k:                                             ; preds = %bio_first_bvec_all.exit.i
  %i.ae = getelementptr i8, ptr %0, i64 120
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load volatile i64, ptr %i.ah, align 8   ; 2 uses
  %i.aj = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ak = and i64 %i.ai, 1
  %i.al = add nsw i64 %i.ak, -1
  %i.am = or i64 %i.al, %i.ai
  %i.an = and i64 %i.am, %i.aj                    ; 3 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 6 uses
  %i.ap = getelementptr i8, ptr %i.af, i64 12
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = sub i64 %i.aj, %i.an
  %i.at = shl i64 %i.as, 6
  %i.au = add i64 %i.at, %i.ar                    ; 2 uses
end_hunk_0
