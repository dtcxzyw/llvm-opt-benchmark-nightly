Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/transport?download=true
inline.NumInlined: 112
inline.NumDeleted: 23
begin_hunk_0_@usb_stor_bulk_transfer_buf:bb.a
  %i.p = getelementptr i8, ptr %i.o, i64 140
  %i.q = load i32, ptr %i.p, align 4
  %i.r = tail call fastcc i32 @interpret_urb_result(ptr noundef %0, i32 noundef %1, i32 noundef %3, i32 noundef %i.k, i32 noundef %i.q) #7, !srcloc !18
  ret i32 %i.r
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 5) i32 @usb_stor_bulk_srb(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) initializes((240, 244)) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !annotation !11
  %i.b = getelementptr i8, ptr %2, i64 200
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %2, i64 208
  %.val7 = load i32, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %2, i64 216        ; 2 uses
  %.val9 = load i32, ptr %i.d, align 8
  %i.e = call fastcc i32 @usb_stor_bulk_transfer_sglist(ptr noundef %0, i32 noundef %1, ptr noundef %.val, i32 noundef %.val7, i32 noundef %.val9, ptr noundef nonnull %i.a) #7, !srcloc !19
  %.val8 = load i32, ptr %i.d, align 8
  %i.f = load i32, ptr %i.a, align 4
  %i.g = sub i32 %.val8, %i.f
  %i.h = getelementptr i8, ptr %2, i64 240
  store i32 %i.g, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.e
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 5) i32 @usb_stor_bulk_transfer_sglist(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 8 uses
  %i.b = load volatile i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4
  %.not43 = icmp eq i64 %i.c, 0
  br i1 %.not43, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 208        ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = zext i32 %4 to i64
  %i.h = tail call i32 @usb_sg_init(ptr noundef %i.d, ptr noundef %i.f, i32 noundef %1, i32 noundef 0, ptr noundef %2, i32 noundef %3, i64 noundef %i.g, i32 noundef 3072) #8
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.a, i32 2, ptr elementtype(i8) %i.a) #9, !srcloc !12
  %i.i = load volatile i64, ptr %i.a, align 8
  %i.j = and i64 %i.i, 4
  %.not45 = icmp eq i64 %i.j, 0
  br i1 %.not45, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.a, i64 1, ptr elementtype(i64) %i.a) #9, !srcloc !13 ; 2 uses
  %i.l = icmp ult i8 %i.k, 2
  tail call void @llvm.assume(i1 %i.l)
  %i.m = trunc nuw i8 %i.k to i1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @usb_sg_cancel(ptr noundef %i.d) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  tail call void @usb_sg_wait(ptr noundef %i.d) #8
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.a, i32 -3, ptr elementtype(i8) %i.a) #9, !srcloc !14
  %i.n = load i32, ptr %i.d, align 8
  %.not41 = icmp eq ptr %5, null
  br i1 %.not41, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %0, i64 216
  %i.p = load i64, ptr %i.o, align 8
  %i.q = trunc i64 %i.p to i32
  store i32 %i.q, ptr %5, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr i8, ptr %0, i64 216
  %i.s = load i64, ptr %i.r, align 8
  %i.t = trunc i64 %i.s to i32
  %i.u = tail call fastcc i32 @interpret_urb_result(ptr noundef %0, i32 noundef %1, i32 noundef %4, i32 noundef %i.n, i32 noundef %i.t) #7, !srcloc !20
  br label %bb.k

bb.i:                                             ; preds = %bb.b, %bb.a
  %.not42 = icmp eq ptr %5, null
  br i1 %.not42, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %5, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.0 = phi i32 [ %i.u, %bb.h ], [ 4, %bb.j ], [ 4, %bb.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 5) i32 @usb_stor_bulk_transfer_sg(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !annotation !11
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call fastcc i32 @usb_stor_bulk_transfer_sglist(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef %3, ptr noundef nonnull %i.a) #7, !srcloc !21
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.d, i64 64
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.d, i64 80
  store i32 %1, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.d, i64 96
  store ptr %2, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %i.d, i64 136
  store i32 %3, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %i.d, i64 184
  store ptr @usb_stor_blocking_completion, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %i.d, i64 176
  store ptr null, ptr %i.l, align 8
  %i.m = tail call fastcc i32 @usb_stor_msg_common(ptr noundef %0, i32 noundef 0) #7, !srcloc !17
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 140
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  store i32 %i.p, ptr %i.a, align 4
  %i.q = tail call fastcc range(i32 0, 5) i32 @interpret_urb_result(ptr noundef %0, i32 noundef %1, i32 noundef %3, i32 noundef %i.m, i32 noundef %i.p) #7, !srcloc !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.q, %bb.c ]
  %.not18 = icmp eq ptr %5, null
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.pn = load i32, ptr %i.a, align 4
  %.015 = sub i32 %3, %.pn
  store i32 %.015, ptr %5, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @usb_stor_invoke_transport(ptr noundef initializes((240, 244)) %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.scsi_eh_save, align 8       ; 9 uses
  %3 = alloca %struct.scsi_sense_hdr, align 8     ; 10 uses
  %i.a = getelementptr i8, ptr %0, i64 240        ; 6 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 120        ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 %i.c(ptr noundef %0, ptr noundef %1) #8 ; 5 uses
  %i.e = getelementptr i8, ptr %1, i64 56         ; 16 uses
  %i.f = load volatile i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 32
  %.not220 = icmp eq i64 %i.g, 0
  %i.h = getelementptr i8, ptr %0, i64 288        ; 16 uses
  br i1 %.not220, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 327680, ptr %i.h, align 8
  br label %bb.bm

bb.c:                                             ; preds = %bb.a
  switch i32 %i.d, label %bb.l [
    i32 3, label %bb.d
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  store i32 458752, ptr %i.h, align 8
  br label %bb.bm

bb.e:                                             ; preds = %bb.c
  store i32 2, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %1, i64 520
  %i.j = load i32, ptr %i.i, align 8
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %last_sector_hacks.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %0, i64 164        ; 2 uses
  %i.l = load i8, ptr %i.k, align 4               ; 2 uses
  switch i8 %i.l, label %thread-pre-split.i [
    i8 40, label %bb.g
    i8 42, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.m = getelementptr i8, ptr %0, i64 166
  %4 = load i32, ptr %i.m, align 2
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %i.n = getelementptr i8, ptr %0, i64 -248
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 96
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not24.i = icmp eq ptr %i.q, null
  br i1 %.not24.i, label %thread-pre-split.i.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %i.q, i64 88
  %.val.i = load ptr, ptr %i.r, align 8           ; 2 uses
  %.not25.i = icmp eq ptr %.val.i, null
  br i1 %.not25.i, label %thread-pre-split.i.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %i.s = getelementptr i8, ptr %.val.i, i64 792
  %i.t = load i64, ptr %i.s, align 8
  %.not26.i = icmp eq i64 %i.t, %7
  br i1 %.not26.i, label %bb.j, label %thread-pre-split.i.thread

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr i8, ptr %1, i64 524        ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = add i32 %i.v, 1                          ; 2 uses
  store i32 %i.w, ptr %i.u, align 4
  %i.x = icmp slt i32 %i.w, 3
  br i1 %i.x, label %last_sector_hacks.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 2, ptr %i.h, align 8
  %i.y = getelementptr i8, ptr %0, i64 248
  %i.z = load ptr, ptr %i.y, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(18) %i.z, ptr noundef nonnull align 16 dereferenceable(18) @last_sector_hacks.record_not_found, i64 18, i1 false)
  %.pr.i.pre = load i8, ptr %i.k, align 4
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.k, %bb.f
  %i.aa = phi i8 [ %i.l, %bb.f ], [ %.pr.i.pre, %bb.k ]
  %.not27.i = icmp eq i8 %i.aa, 0
  br i1 %.not27.i, label %last_sector_hacks.exit, label %thread-pre-split.i.thread

thread-pre-split.i.thread:                        ; preds = %bb.g, %bb.h, %bb.i, %thread-pre-split.i
  %i.ab = getelementptr i8, ptr %1, i64 524
  store i32 0, ptr %i.ab, align 4
  br label %last_sector_hacks.exit

bb.l:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8
  %i.ac = getelementptr i8, ptr %1, i64 109
  %i.ad = load i8, ptr %i.ac, align 1
  switch i8 %i.ad, label %._crit_edge [
    i8 1, label %bb.m
    i8 -16, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.ae = getelementptr i8, ptr %0, i64 160
  %i.af = load i32, ptr %i.ae, align 8
  %.not.not = icmp eq i32 %i.af, 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %bb.l
  %.0164 = phi i1 [ true, %bb.l ], [ %.not.not, %bb.m ]
  %i.ag = getelementptr i8, ptr %1, i64 48        ; 10 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 7 uses
  %i.ai = and i64 %i.ah, 2147483648
  %.not172 = icmp eq i64 %i.ai, 0
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 164
  %.pre = load i8, ptr %.phi.trans.insert, align 4 ; 3 uses
  %i.aj = icmp ne i8 %.pre, 53
  %i.ak = or i1 %.not172, %i.aj
  %i.al = icmp ne i32 %i.d, 1
  %i.am = getelementptr i8, ptr %0, i64 164       ; 4 uses
  %i.an = icmp eq i8 %.pre, -123
  br i1 %i.an, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.ao = icmp eq i8 %.pre, -95
  %i.ap = icmp eq i32 %i.d, 0
  %or.cond5 = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond5, label %bb.p, label %.critedge

bb.o:                                             ; preds = %._crit_edge
  %.old4 = icmp eq i32 %i.d, 0
  br i1 %.old4, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.aq = and i64 %i.ah, 163840
  %or.cond187 = icmp eq i64 %i.aq, 0
  br i1 %or.cond187, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr i8, ptr %0, i64 166
  %i.as = load i8, ptr %i.ar, align 2
  %i.at = and i8 %i.as, 32
  %.not175 = icmp eq i8 %i.at, 0
  br i1 %.not175, label %bb.r, label %.critedge, !prof !22

bb.r:                                             ; preds = %bb.q
  %i.au = or disjoint i64 %i.ah, 32768            ; 2 uses
  store i64 %i.au, ptr %i.ag, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.p, %bb.o, %bb.n, %bb.r, %bb.q
  %i.av = phi i64 [ %i.ah, %bb.p ], [ %i.ah, %bb.o ], [ %i.ah, %bb.n ], [ %i.au, %bb.r ], [ %i.ah, %bb.q ] ; 2 uses
  %i.aw = select i1 %i.al, i1 %i.ak, i1 false
  %.not176 = select i1 %i.aw, i1 %.0164, i1 false
  br i1 %.not176, label %bb.ap, label %.peel.begin

.peel.begin:                                      ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %2, i8 0, i64 112, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store i64 0, ptr %3, align 8, !annotation !11
  %i.ax = and i64 %i.av, 32768
  %.not177 = icmp ne i64 %i.ax, 0                 ; 3 uses
  %spec.select188 = select i1 %.not177, i32 -1, i32 18
  %i.ay = getelementptr i8, ptr %1, i64 108       ; 2 uses
  %i.az = getelementptr i8, ptr %0, i64 156       ; 2 uses
  %i.ba = getelementptr i8, ptr %1, i64 144       ; 2 uses
  call void @scsi_eh_prep_cmnd(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null, i32 noundef 0, i32 noundef %spec.select188) #8
  %i.bb = load i8, ptr %i.ay, align 4
  switch i8 %i.bb, label %bb.s [
    i8 1, label %bb.t
    i8 6, label %bb.t
    i8 -15, label %bb.t
  ]

bb.s:                                             ; preds = %.peel.begin
  br label %bb.t

bb.t:                                             ; preds = %.peel.begin, %.peel.begin, %.peel.begin, %bb.s
  %storemerge = phi i16 [ 12, %bb.s ], [ 6, %.peel.begin ], [ 6, %.peel.begin ], [ 6, %.peel.begin ]
  store i16 %storemerge, ptr %i.az, align 4
  store i32 0, ptr %i.a, align 8
  %i.bc = load ptr, ptr %i.b, align 8
  %i.bd = load ptr, ptr %i.ba, align 8
  %i.be = call i32 %i.bc(ptr noundef %i.bd, ptr noundef %1) #8 ; 2 uses
  call void @scsi_eh_restore_cmnd(ptr noundef %0, ptr noundef nonnull %2) #8
  %i.bf = load volatile i64, ptr %i.e, align 8
  %i.bg = and i64 %i.bf, 32
  %.not223.peel = icmp eq i64 %i.bg, 0
  br i1 %.not223.peel, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.bh = icmp eq i32 %i.be, 1
  %or.cond13.peel = and i1 %.not177, %i.bh
  br i1 %or.cond13.peel, label %bb.v, label %.loopexit235

bb.v:                                             ; preds = %bb.u
  %i.bi = load i64, ptr %i.ag, align 8
  %i.bj = and i64 %i.bi, 4294803455
  %i.bk = or disjoint i64 %i.bj, 131072
  store i64 %i.bk, ptr %i.ag, align 8
  call void @scsi_eh_prep_cmnd(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null, i32 noundef 0, i32 noundef 18) #8
  %i.bl = load i8, ptr %i.ay, align 4
  switch i8 %i.bl, label %bb.w [
    i8 1, label %bb.x
    i8 6, label %bb.x
    i8 -15, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.v, %bb.v, %bb.w
  %storemerge245 = phi i16 [ 12, %bb.w ], [ 6, %bb.v ], [ 6, %bb.v ], [ 6, %bb.v ]
  store i16 %storemerge245, ptr %i.az, align 4
  store i32 0, ptr %i.a, align 8
  %i.bm = load ptr, ptr %i.b, align 8
  %i.bn = load ptr, ptr %i.ba, align 8
  %i.bo = call i32 %i.bm(ptr noundef %i.bn, ptr noundef %1) #8
  call void @scsi_eh_restore_cmnd(ptr noundef %0, ptr noundef nonnull %2) #8
  %i.bp = load volatile i64, ptr %i.e, align 8
  %i.bq = and i64 %i.bp, 32
  %.not223 = icmp eq i64 %i.bq, 0
  br i1 %.not223, label %.loopexit235, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.x
  store i32 327680, ptr %i.h, align 8
  br label %.thread217

.loopexit:                                        ; preds = %bb.t
  store i32 327680, ptr %i.h, align 8
  br i1 %.not177, label %bb.y, label %.thread217

bb.y:                                             ; preds = %.loopexit
  %i.br = load i64, ptr %i.ag, align 8
  %i.bs = and i64 %i.br, 4294803455
  %i.bt = or disjoint i64 %i.bs, 131072
  store i64 %i.bt, ptr %i.ag, align 8
  br label %.thread217

.loopexit235:                                     ; preds = %bb.x, %bb.u
  %.lcssa233 = phi i32 [ %i.be, %bb.u ], [ %i.bo, %bb.x ]
  %.not178 = icmp eq i32 %.lcssa233, 0
  br i1 %.not178, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.loopexit235
  store i32 458752, ptr %i.h, align 8
  %i.bu = load i64, ptr %i.ag, align 8
  %i.bv = and i64 %i.bu, 4
  %.not182 = icmp eq i64 %i.bv, 0
  br i1 %.not182, label %.thread217, label %bb.ao

bb.aa:                                            ; preds = %.loopexit235
  %i.bw = getelementptr i8, ptr %0, i64 248       ; 7 uses
  %i.bx = load ptr, ptr %i.bw, align 8            ; 5 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 7
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = icmp ugt i8 %i.bz, 10
  br i1 %i.ca, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cb = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.cc = and i64 %i.cb, 163840
  %or.cond189 = icmp eq i64 %i.cc, 0
  br i1 %or.cond189, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cd = load i8, ptr %i.bx, align 1
  %i.ce = and i8 %i.cd, 124
  %i.cf = icmp eq i8 %i.ce, 112
  br i1 %i.cf, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cg = or disjoint i64 %i.cb, 32768
  store i64 %i.cg, ptr %i.ag, align 8
  %i.ch = load ptr, ptr %i.bw, align 8
  %i.ci = getelementptr i8, ptr %i.ch, i64 7
  store i8 10, ptr %i.ci, align 1
  %.pre237 = load ptr, ptr %i.bw, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.cj = phi ptr [ %.pre237, %bb.ad ], [ %i.bx, %bb.ac ], [ %i.bx, %bb.ab ], [ %i.bx, %bb.aa ]
  %i.ck = call zeroext i1 @scsi_normalize_sense(ptr noundef %i.cj, i32 noundef 96, ptr noundef nonnull %3) #8 ; 0 uses
  store i32 2, ptr %i.h, align 8
  %i.cl = load ptr, ptr %i.bw, align 8
  %i.cm = call ptr @scsi_sense_desc_find(ptr noundef %i.cl, i32 noundef 96, i32 noundef 4) #8 ; 2 uses
  %.not181 = icmp eq ptr %i.cm, null
  br i1 %.not181, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cn = getelementptr i8, ptr %i.cm, i64 3
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.co = load ptr, ptr %i.bw, align 8
  %i.cp = getelementptr i8, ptr %i.co, i64 2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.in.in = phi ptr [ %i.cn, %bb.af ], [ %i.cp, %bb.ag ]
  %.in = load i8, ptr %.in.in, align 1
  %i.cq = and i8 %.in, -96
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = icmp eq i8 %i.cs, 0
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.cv = load i8, ptr %i.cu, align 2
  %i.cw = icmp eq i8 %i.cv, 0
  %or.cond18 = select i1 %i.ct, i1 %i.cw, i1 false
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = icmp eq i8 %i.cy, 0
  %or.cond23 = select i1 %or.cond18, i1 %i.cz, i1 false
  %i.da = icmp eq i8 %i.cq, 0
  %or.cond27 = select i1 %or.cond23, i1 %i.da, i1 false
  br i1 %or.cond27, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.db = icmp eq i32 %i.d, 0
  br i1 %i.db, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.h, align 8
  %i.dc = load ptr, ptr %i.bw, align 8
  store i8 0, ptr %i.dc, align 1
  br label %.thread

bb.ak:                                            ; preds = %bb.ai
  %i.dd = load i8, ptr %i.am, align 4
  switch i8 %i.dd, label %bb.al [
    i8 -123, label %.thread
    i8 -95, label %.thread
  ]

bb.al:                                            ; preds = %bb.ak
  store i32 458752, ptr %i.h, align 8
  %i.de = load i8, ptr %3, align 8
  %i.df = and i8 %i.de, 114
  %i.dg = icmp eq i8 %i.df, 114
  %i.dh = load ptr, ptr %i.bw, align 8            ; 2 uses
  br i1 %i.dg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.di = getelementptr i8, ptr %i.dh, i64 1
  store i8 4, ptr %i.di, align 1
  br label %.thread

bb.an:                                            ; preds = %bb.al
  %i.dj = getelementptr i8, ptr %i.dh, i64 2
  store i8 4, ptr %i.dj, align 1
  br label %.thread

.thread:                                          ; preds = %bb.ak, %bb.ak, %bb.aj, %bb.am, %bb.an, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %.pre238 = load i64, ptr %i.ag, align 8
  br label %bb.ap

.thread217:                                       ; preds = %.loopexit.thread, %bb.y, %.loopexit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.bm

bb.ao:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %last_sector_hacks.exit

bb.ap:                                            ; preds = %.thread, %.critedge
  %i.dk = phi i64 [ %.pre238, %.thread ], [ %i.av, %.critedge ]
  %i.dl = and i64 %i.dk, 1048576
  %.not184 = icmp eq i64 %i.dl, 0
  br i1 %.not184, label %.critedge191, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dm = load i8, ptr %i.am, align 4
  %i.dn = icmp eq i8 %i.dm, 40
  br i1 %i.dn, label %bb.ar, label %.critedge191, !prof !22

bb.ar:                                            ; preds = %bb.aq
  %i.do = load i32, ptr %i.h, align 8
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dq = getelementptr i8, ptr %1, i64 57        ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.dq, i32 1, ptr elementtype(i8) %i.dq) #9, !srcloc !12
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  %i.dr = load volatile i64, ptr %i.e, align 8
  %i.ds = and i64 %i.dr, 256
  %.not225 = icmp eq i64 %i.ds, 0
  br i1 %.not225, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dt = getelementptr i8, ptr %1, i64 57        ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.dt, i32 -2, ptr elementtype(i8) %i.dt) #9, !srcloc !14
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.e, i32 128, ptr elementtype(i8) %i.e) #9, !srcloc !12
  br label %bb.av

bb.av:                                            ; preds = %bb.as, %bb.au, %bb.at
  %i.du = load volatile i64, ptr %i.e, align 8
  %i.dv = and i64 %i.du, 128
  %.not227 = icmp eq i64 %i.dv, 0
  br i1 %.not227, label %.critedge191, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.e, i32 -129, ptr elementtype(i8) %i.e) #9, !srcloc !14
  store i32 786432, ptr %i.h, align 8
  %i.dw = getelementptr i8, ptr %0, i64 248
  %i.dx = load ptr, ptr %i.dw, align 8
  store i8 0, ptr %i.dx, align 1
  br label %.critedge191

.critedge191:                                     ; preds = %bb.ap, %bb.av, %bb.aw, %bb.aq
  %i.dy = load i32, ptr %i.h, align 8             ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.critedge191
  %i.ea = getelementptr i8, ptr %0, i64 248
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = getelementptr i8, ptr %i.eb, i64 2
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = icmp eq i8 %i.ed, 0
  br i1 %i.ee, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax, %.critedge191
  %i.ef = getelementptr i8, ptr %0, i64 216
  %.val = load i32, ptr %i.ef, align 8
  %.val192 = load i32, ptr %i.a, align 8
  %i.eg = sub i32 %.val, %.val192
  %i.eh = getelementptr i8, ptr %0, i64 232
  %i.ei = load i32, ptr %i.eh, align 8
  %i.ej = icmp ult i32 %i.eg, %i.ei
  br i1 %i.ej, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 458752, ptr %i.h, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %i.ek = phi i32 [ 458752, %bb.az ], [ %i.dy, %bb.ay ], [ 458752, %bb.ax ]
  %i.el = getelementptr i8, ptr %1, i64 520       ; 2 uses
  %i.em = load i32, ptr %i.el, align 8
  %.not.i194 = icmp eq i32 %i.em, 0
  br i1 %.not.i194, label %last_sector_hacks.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.en = load i8, ptr %i.am, align 4             ; 2 uses
  switch i8 %i.en, label %bb.bk [
    i8 40, label %bb.bc
    i8 42, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb, %bb.bb
  %i.eo = getelementptr i8, ptr %0, i64 166
  %8 = load i32, ptr %i.eo, align 2
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %i.ep = getelementptr i8, ptr %0, i64 -248
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = getelementptr i8, ptr %i.eq, i64 96
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %.not24.i195 = icmp eq ptr %i.es, null
  br i1 %.not24.i195, label %thread-pre-split.i199, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.et = getelementptr i8, ptr %i.es, i64 88
  %.val.i196 = load ptr, ptr %i.et, align 8       ; 2 uses
  %.not25.i197 = icmp eq ptr %.val.i196, null
  br i1 %.not25.i197, label %thread-pre-split.i199, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %10 = add i32 %9, 1
  %11 = zext i32 %10 to i64
  %i.eu = getelementptr i8, ptr %.val.i196, i64 792
  %i.ev = load i64, ptr %i.eu, align 8
  %.not26.i198 = icmp eq i64 %i.ev, %11
  br i1 %.not26.i198, label %bb.bf, label %thread-pre-split.i199

bb.bf:                                            ; preds = %bb.be
  %i.ew = icmp eq i32 %i.ek, 0
  br i1 %i.ew, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %.val28.i202 = load i32, ptr %i.a, align 8
  %i.ex = icmp eq i32 %.val28.i202, 0
  br i1 %i.ex, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.el, align 8
  br label %thread-pre-split.i199

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %i.ey = getelementptr i8, ptr %1, i64 524       ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = add i32 %i.ez, 1                        ; 2 uses
  store i32 %i.fa, ptr %i.ey, align 4
  %i.fb = icmp slt i32 %i.fa, 3
  br i1 %i.fb, label %last_sector_hacks.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 2, ptr %i.h, align 8
  %i.fc = getelementptr i8, ptr %0, i64 248
  %i.fd = load ptr, ptr %i.fc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(18) %i.fd, ptr noundef nonnull align 16 dereferenceable(18) @last_sector_hacks.record_not_found, i64 18, i1 false)
  br label %thread-pre-split.i199

thread-pre-split.i199:                            ; preds = %bb.bj, %bb.bh, %bb.be, %bb.bd, %bb.bc
  %.pr.i200 = load i8, ptr %i.am, align 4
  br label %bb.bk

bb.bk:                                            ; preds = %thread-pre-split.i199, %bb.bb
  %i.fe = phi i8 [ %.pr.i200, %thread-pre-split.i199 ], [ %i.en, %bb.bb ]
  %.not27.i201 = icmp eq i8 %i.fe, 0
  br i1 %.not27.i201, label %last_sector_hacks.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ff = getelementptr i8, ptr %1, i64 524
  store i32 0, ptr %i.ff, align 4
  br label %last_sector_hacks.exit

bb.bm:                                            ; preds = %.thread217, %bb.d, %bb.b
  %i.fg = getelementptr i8, ptr %1, i64 -2160     ; 4 uses
  %i.fh = load ptr, ptr %i.fg, align 8
  call void @_raw_spin_lock_irq(ptr noundef %i.fh) #8
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.e, i32 16, ptr elementtype(i8) %i.e) #9, !srcloc !12
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.e, i32 -5, ptr elementtype(i8) %i.e) #9, !srcloc !14
  %i.fi = load ptr, ptr %i.fg, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %i.fi) #8
  call void @mutex_unlock(ptr noundef %1) #8
  %i.fj = getelementptr i8, ptr %1, i64 24        ; 3 uses
  %i.fk = load ptr, ptr %i.fj, align 8            ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 1308
  %i.fm = load i32, ptr %i.fl, align 4
  %i.fn = and i32 %i.fm, 16
  %.not.i204 = icmp eq i32 %i.fn, 0
  br i1 %.not.i204, label %bb.bn, label %.sink.split

bb.bn:                                            ; preds = %bb.bm
  %i.fo = getelementptr i8, ptr %1, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = call i32 @usb_lock_device_for_reset(ptr noundef %i.fk, ptr noundef %i.fp) #8
  %i.fr = icmp slt i32 %i.fq, 0
  br i1 %i.fr, label %.sink.split, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fs = load volatile i64, ptr %i.e, align 8
  %i.ft = and i64 %i.fs, 8
  %.not17.i = icmp eq i64 %i.ft, 0
  %i.fu = load ptr, ptr %i.fj, align 8            ; 2 uses
  br i1 %.not17.i, label %usb_stor_port_reset.exit, label %.critedge229

usb_stor_port_reset.exit:                         ; preds = %bb.bo
  %i.fv = call i32 @usb_reset_device(ptr noundef %i.fu) #8
  %i.fw = icmp slt i32 %i.fv, 0
  %i.fx = load ptr, ptr %i.fj, align 8
  %i.fy = getelementptr i8, ptr %i.fx, i64 320
  call void @mutex_unlock(ptr noundef %i.fy) #8
  call void @mutex_lock(ptr noundef %1) #8
  br i1 %i.fw, label %bb.bp, label %bb.bq

.critedge229:                                     ; preds = %bb.bo
  %i.fz = getelementptr i8, ptr %i.fu, i64 320
  call void @mutex_unlock(ptr noundef %i.fz) #8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bn, %bb.bm, %.critedge229
  call void @mutex_lock(ptr noundef %1) #8
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split, %usb_stor_port_reset.exit
  %i.ga = load ptr, ptr %i.fg, align 8
  call void @_raw_spin_lock_irq(ptr noundef %i.ga) #8
  call void @usb_stor_report_device_reset(ptr noundef %1) #8
  %i.gb = load ptr, ptr %i.fg, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %i.gb) #8
  %i.gc = getelementptr i8, ptr %1, i64 128
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = call i32 %i.gd(ptr noundef %1) #8       ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %usb_stor_port_reset.exit
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.e, i32 -17, ptr elementtype(i8) %i.e) #9, !srcloc !14
  %i.gf = getelementptr i8, ptr %1, i64 520       ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 8
  %.not.i205 = icmp eq i32 %i.gg, 0
  br i1 %.not.i205, label %last_sector_hacks.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gh = getelementptr i8, ptr %0, i64 164       ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 4             ; 2 uses
  switch i8 %i.gi, label %bb.ca [
    i8 40, label %bb.bs
    i8 42, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br, %bb.br
  %i.gj = getelementptr i8, ptr %0, i64 166
  %12 = load i32, ptr %i.gj, align 2
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %i.gk = getelementptr i8, ptr %0, i64 -248
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = getelementptr i8, ptr %i.gl, i64 96
  %i.gn = load ptr, ptr %i.gm, align 8            ; 2 uses
  %.not24.i206 = icmp eq ptr %i.gn, null
  br i1 %.not24.i206, label %thread-pre-split.i210, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.go = getelementptr i8, ptr %i.gn, i64 88
  %.val.i207 = load ptr, ptr %i.go, align 8       ; 2 uses
  %.not25.i208 = icmp eq ptr %.val.i207, null
  br i1 %.not25.i208, label %thread-pre-split.i210, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %14 = add i32 %13, 1
  %15 = zext i32 %14 to i64
  %i.gp = getelementptr i8, ptr %.val.i207, i64 792
  %i.gq = load i64, ptr %i.gp, align 8
  %.not26.i209 = icmp eq i64 %i.gq, %15
  br i1 %.not26.i209, label %bb.bv, label %thread-pre-split.i210

bb.bv:                                            ; preds = %bb.bu
  %i.gr = getelementptr i8, ptr %0, i64 288       ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %.val28.i213 = load i32, ptr %i.a, align 8
  %i.gu = icmp eq i32 %.val28.i213, 0
  br i1 %i.gu, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %i.gf, align 8
  br label %thread-pre-split.i210

bb.by:                                            ; preds = %bb.bw, %bb.bv
  %i.gv = getelementptr i8, ptr %1, i64 524       ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4
  %i.gx = add i32 %i.gw, 1                        ; 2 uses
  store i32 %i.gx, ptr %i.gv, align 4
  %i.gy = icmp slt i32 %i.gx, 3
  br i1 %i.gy, label %last_sector_hacks.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i32 2, ptr %i.gr, align 8
  %i.gz = getelementptr i8, ptr %0, i64 248
  %i.ha = load ptr, ptr %i.gz, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(18) %i.ha, ptr noundef nonnull align 16 dereferenceable(18) @last_sector_hacks.record_not_found, i64 18, i1 false)
  br label %thread-pre-split.i210

thread-pre-split.i210:                            ; preds = %bb.bz, %bb.bx, %bb.bu, %bb.bt, %bb.bs
  %.pr.i211 = load i8, ptr %i.gh, align 4
  br label %bb.ca

bb.ca:                                            ; preds = %thread-pre-split.i210, %bb.br
  %i.hb = phi i8 [ %.pr.i211, %thread-pre-split.i210 ], [ %i.gi, %bb.br ]
  %.not27.i212 = icmp eq i8 %i.hb, 0
  br i1 %.not27.i212, label %last_sector_hacks.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hc = getelementptr i8, ptr %1, i64 524
  store i32 0, ptr %i.hc, align 4
  br label %last_sector_hacks.exit

last_sector_hacks.exit:                           ; preds = %bb.cb, %bb.ca, %bb.by, %bb.bq, %bb.bl, %bb.bk, %bb.bi, %bb.ba, %bb.ao, %thread-pre-split.i.thread, %thread-pre-split.i, %bb.j, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @scsi_eh_prep_cmnd(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @scsi_eh_restore_cmnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @scsi_normalize_sense(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @scsi_sense_desc_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @usb_stor_port_reset(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1308
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 @usb_lock_device_for_reset(ptr noundef %i.b, ptr noundef %i.g) #8 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 56
  %i.k = load volatile i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, 8
  %.not17 = icmp eq i64 %i.l, 0
  br i1 %.not17, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = tail call i32 @usb_reset_device(ptr noundef %i.m) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %i.n, %bb.d ], [ -5, %bb.c ]
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 320
  tail call void @mutex_unlock(ptr noundef %i.p) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %.015 = phi i32 [ -1, %bb.a ], [ %i.h, %bb.b ], [ %.0, %bb.e ]
  ret i32 %.015
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usb_stor_report_device_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @usb_stor_stop_transport(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 4 uses
  %i.b = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.a, i64 0, ptr elementtype(i64) %i.a) #9, !srcloc !13 ; 2 uses
  %i.c = icmp ult i8 %i.b, 2
  tail call void @llvm.assume(i1 %i.c)
  %i.d = trunc nuw i8 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 192
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 @usb_unlink_urb(ptr noundef %i.f) #8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.a, i64 1, ptr elementtype(i64) %i.a) #9, !srcloc !13 ; 2 uses
  %i.i = icmp ult i8 %i.h, 2
  tail call void @llvm.assume(i1 %i.i)
  %i.j = trunc nuw i8 %i.h to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 208
  tail call void @usb_sg_cancel(ptr noundef %i.k) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usb_sg_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 4) i32 @usb_stor_CB_transport(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 216        ; 3 uses
  %.val = load i32, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %1, i64 296        ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 164        ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 156        ; 2 uses
  %i.g = load i16, ptr %i.f, align 4
  %i.h = zext i16 %i.g to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 4 %i.e, i64 %i.h, i1 false)
  %i.i = getelementptr i8, ptr %1, i64 72
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 111
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i16
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = load i16, ptr %i.f, align 4              ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 200        ; 6 uses
  %i.q = load ptr, ptr %i.p, align 8
  store i8 33, ptr %i.q, align 1
  %i.r = load ptr, ptr %i.p, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 1
  store i8 0, ptr %i.s, align 1
  %i.t = load ptr, ptr %i.p, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 2
  store i16 0, ptr %i.u, align 1
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 4
  store i16 %i.m, ptr %i.w, align 1
  %i.x = load ptr, ptr %i.p, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 6
  store i16 %i.o, ptr %i.y, align 1
  %i.z = getelementptr i8, ptr %1, i64 192        ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 7 uses
  %i.ab = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.p, align 8
  %i.ae = zext i16 %i.o to i32                    ; 2 uses
  %i.af = getelementptr i8, ptr %i.aa, i64 64
  store ptr %i.ac, ptr %i.af, align 8
  %i.ag = getelementptr i8, ptr %i.aa, i64 80
  store i32 %i.j, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %i.aa, i64 144
end_hunk_0
begin_hunk_1_@usb_stor_reset_common:bb.a
  %i.av = lshr i32 %i.au, 15
  %i.aw = and i32 %i.av, 15
  %i.ax = and i32 %i.au, 128
  %spec.select.i = or disjoint i32 %i.aw, %i.ax   ; 2 uses
  %i.ay = load i32, ptr %i.d, align 8
  %i.az = trunc nuw nsw i32 %spec.select.i to i16
  %i.ba = load ptr, ptr %i.f, align 8
  store i8 2, ptr %i.ba, align 1
  %i.bb = load ptr, ptr %i.f, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 1
  store i8 1, ptr %i.bc, align 1
  %i.bd = load ptr, ptr %i.f, align 8
  %i.be = getelementptr i8, ptr %i.bd, i64 2
  store i16 0, ptr %i.be, align 1
  %i.bf = load ptr, ptr %i.f, align 8
  %i.bg = getelementptr i8, ptr %i.bf, i64 4
  store i16 %i.az, ptr %i.bg, align 1
  %i.bh = load ptr, ptr %i.f, align 8
  %i.bi = getelementptr i8, ptr %i.bh, i64 6
  store i16 0, ptr %i.bi, align 1
  %i.bj = load ptr, ptr %i.p, align 8             ; 7 uses
  %i.bk = load ptr, ptr %i.r, align 8
  %i.bl = load ptr, ptr %i.f, align 8
  %i.bm = getelementptr i8, ptr %i.bj, i64 64
  store ptr %i.bk, ptr %i.bm, align 8
  %i.bn = getelementptr i8, ptr %i.bj, i64 80
  store i32 %i.ay, ptr %i.bn, align 8
  %i.bo = getelementptr i8, ptr %i.bj, i64 144
  store ptr %i.bl, ptr %i.bo, align 8
  %i.bp = getelementptr i8, ptr %i.bj, i64 96
  store ptr null, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %i.bj, i64 136
  store i32 0, ptr %i.bq, align 8
  %i.br = getelementptr i8, ptr %i.bj, i64 184
  store ptr @usb_stor_blocking_completion, ptr %i.br, align 8
  %i.bs = getelementptr i8, ptr %i.bj, i64 176
  store ptr null, ptr %i.bs, align 8
  %i.bt = call fastcc i32 @usb_stor_msg_common(ptr noundef %0, i32 noundef 3000) #7, !srcloc !10 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.k, label %usb_stor_control_msg.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %i.p, align 8
  %i.bw = getelementptr i8, ptr %i.bv, i64 140
  %i.bx = load i32, ptr %i.bw, align 4
  br label %usb_stor_control_msg.exit.i

usb_stor_control_msg.exit.i:                      ; preds = %bb.k, %bb.j
  %.0.i.i = phi i32 [ %i.bx, %bb.k ], [ %i.bt, %bb.j ] ; 2 uses
  %i.by = icmp sgt i32 %.0.i.i, -1                ; 2 uses
  br i1 %i.by, label %bb.l, label %usb_stor_clear_halt.exit

bb.l:                                             ; preds = %usb_stor_control_msg.exit.i
  %i.bz = load ptr, ptr %i.r, align 8
  call void @usb_reset_endpoint(ptr noundef %i.bz, i32 noundef %spec.select.i) #8
  br label %usb_stor_clear_halt.exit

usb_stor_clear_halt.exit:                         ; preds = %usb_stor_control_msg.exit.i, %bb.l
  %i.ca = getelementptr i8, ptr %0, i64 64
  %i.cb = load i32, ptr %i.ca, align 8            ; 2 uses
  %i.cc = lshr i32 %i.cb, 15
  %i.cd = and i32 %i.cc, 15
  %i.ce = and i32 %i.cb, 128
  %spec.select.i111 = or disjoint i32 %i.cd, %i.ce ; 2 uses
  %i.cf = load i32, ptr %i.d, align 8
  %i.cg = trunc nuw nsw i32 %spec.select.i111 to i16
  %i.ch = load ptr, ptr %i.f, align 8
  store i8 2, ptr %i.ch, align 1
  %i.ci = load ptr, ptr %i.f, align 8
  %i.cj = getelementptr i8, ptr %i.ci, i64 1
  store i8 1, ptr %i.cj, align 1
  %i.ck = load ptr, ptr %i.f, align 8
  %i.cl = getelementptr i8, ptr %i.ck, i64 2
  store i16 0, ptr %i.cl, align 1
  %i.cm = load ptr, ptr %i.f, align 8
  %i.cn = getelementptr i8, ptr %i.cm, i64 4
  store i16 %i.cg, ptr %i.cn, align 1
  %i.co = load ptr, ptr %i.f, align 8
  %i.cp = getelementptr i8, ptr %i.co, i64 6
  store i16 0, ptr %i.cp, align 1
  %i.cq = load ptr, ptr %i.p, align 8             ; 7 uses
  %i.cr = load ptr, ptr %i.r, align 8
  %i.cs = load ptr, ptr %i.f, align 8
  %i.ct = getelementptr i8, ptr %i.cq, i64 64
  store ptr %i.cr, ptr %i.ct, align 8
  %i.cu = getelementptr i8, ptr %i.cq, i64 80
  store i32 %i.cf, ptr %i.cu, align 8
  %i.cv = getelementptr i8, ptr %i.cq, i64 144
  store ptr %i.cs, ptr %i.cv, align 8
  %i.cw = getelementptr i8, ptr %i.cq, i64 96
  store ptr null, ptr %i.cw, align 8
  %i.cx = getelementptr i8, ptr %i.cq, i64 136
  store i32 0, ptr %i.cx, align 8
  %i.cy = getelementptr i8, ptr %i.cq, i64 184
  store ptr @usb_stor_blocking_completion, ptr %i.cy, align 8
  %i.cz = getelementptr i8, ptr %i.cq, i64 176
  store ptr null, ptr %i.cz, align 8
  %i.da = call fastcc i32 @usb_stor_msg_common(ptr noundef %0, i32 noundef 3000) #7, !srcloc !10 ; 2 uses
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.m, label %usb_stor_control_msg.exit.i112

bb.m:                                             ; preds = %usb_stor_clear_halt.exit
  %i.dc = load ptr, ptr %i.p, align 8
  %i.dd = getelementptr i8, ptr %i.dc, i64 140
  %i.de = load i32, ptr %i.dd, align 4
  br label %usb_stor_control_msg.exit.i112

usb_stor_control_msg.exit.i112:                   ; preds = %bb.m, %usb_stor_clear_halt.exit
  %.0.i.i113 = phi i32 [ %i.de, %bb.m ], [ %i.da, %usb_stor_clear_halt.exit ] ; 2 uses
  %i.df = icmp sgt i32 %.0.i.i113, -1
  br i1 %i.df, label %bb.n, label %usb_stor_clear_halt.exit114

bb.n:                                             ; preds = %usb_stor_control_msg.exit.i112
  %i.dg = load ptr, ptr %i.r, align 8
  call void @usb_reset_endpoint(ptr noundef %i.dg, i32 noundef %spec.select.i111) #8
  br label %usb_stor_clear_halt.exit114

usb_stor_clear_halt.exit114:                      ; preds = %usb_stor_control_msg.exit.i112, %bb.n
  %spec.select109 = select i1 %i.by, i32 %.0.i.i113, i32 %.0.i.i
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %usb_stor_control_msg.exit, %bb.a, %usb_stor_clear_halt.exit114
  %.0 = phi i32 [ %spec.select109, %usb_stor_clear_halt.exit114 ], [ -5, %bb.a ], [ %.0.i, %usb_stor_control_msg.exit ], [ -5, %bb.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @usb_stor_Bulk_reset(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 111
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i16
  %i.d = tail call fastcc i32 @usb_stor_reset_common(ptr noundef %0, i8 noundef zeroext -1, i16 noundef zeroext %i.c, ptr noundef null, i16 noundef zeroext 0) #7
  ret i32 %i.d
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_lock_device_for_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @wait_for_completion_interruptible_timeout(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_sg_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usb_sg_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usleep_range_state(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @schedule_timeout(i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noredzone "no-builtin-wcslen" }
attributes #8 = { noredzone nounwind "no-builtin-wcslen" }
attributes #9 = { nounwind }
attributes #10 = { cold noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{i64 7220}
!11 = !{!"auto-init"}
!12 = !{i64 2148435521, i64 2148435560, i64 2148435581, i64 2148435618, i64 2148435641, i64 2148435512}
!13 = !{i64 2148444782, i64 2148444821, i64 2148444842, i64 2148444879, i64 2148444902, i64 2148444911}
!14 = !{i64 2148436833, i64 2148436872, i64 2148436893, i64 2148436930, i64 2148436953, i64 2148436824}
!15 = !{i64 11320}
!16 = !{i64 11357}
!17 = !{i64 12915}
!18 = !{i64 13066}
!19 = !{i64 15109}
!20 = !{i64 14700}
!21 = !{i64 15949}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{i64 12229}
!24 = !{i64 12266}
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_1
