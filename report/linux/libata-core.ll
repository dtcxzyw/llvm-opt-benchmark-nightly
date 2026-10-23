Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/libata-core?download=true
inline.NumInlined: 502
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 23
begin_hunk_0_@ata_dev_next:bb.a
  %i.o = getelementptr i8, ptr %.024, i64 3136    ; 2 uses
  %i.p = load ptr, ptr %1, align 64               ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8256
  %i.r = icmp eq ptr %1, %i.q
  br i1 %i.r, label %ata_is_host_link.exit.thread.i32, label %ata_is_host_link.exit.i30

ata_is_host_link.exit.i30:                        ; preds = %bb.i
  %i.s = getelementptr i8, ptr %i.p, i64 15808
  %i.t = load ptr, ptr %i.s, align 64
  %i.u = icmp eq ptr %1, %i.t
  br i1 %i.u, label %ata_is_host_link.exit.thread.i32, label %bb.j

ata_is_host_link.exit.thread.i32:                 ; preds = %ata_is_host_link.exit.i30, %bb.i
  %i.v = getelementptr i8, ptr %i.p, i64 24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = and i64 %i.w, 1
  %.not.i33 = icmp eq i64 %i.x, 0
  br i1 %.not.i33, label %bb.j, label %ata_link_max_devices.exit34

bb.j:                                             ; preds = %ata_is_host_link.exit.thread.i32, %ata_is_host_link.exit.i30
  br label %ata_link_max_devices.exit34

ata_link_max_devices.exit34:                      ; preds = %ata_is_host_link.exit.thread.i32, %bb.j
  %.0.i31 = phi i64 [ 1, %bb.j ], [ 2, %ata_is_host_link.exit.thread.i32 ]
  %i.y = getelementptr [3136 x i8], ptr %i.n, i64 %.0.i31
  %i.z = icmp ult ptr %i.o, %i.y
  br i1 %i.z, label %bb.l, label %ata_dev_enabled.exit.thread

bb.k:                                             ; preds = %bb.h, %bb.h
  %i.aa = getelementptr i8, ptr %.024, i64 -3136  ; 2 uses
  %.not28 = icmp ult ptr %i.aa, %i.n
  br i1 %.not28, label %ata_dev_enabled.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %ata_link_max_devices.exit34, %ata_link_max_devices.exit, %bb.e
  %.1 = phi ptr [ %i.m, %ata_link_max_devices.exit ], [ %i.o, %ata_link_max_devices.exit34 ], [ %i.aa, %bb.k ], [ %i.b, %bb.e ] ; 8 uses
  %or.cond5 = icmp samesign ult i32 %2, 2
  br i1 %or.cond5, label %.thread, label %ata_dev_enabled.exit.thread

.thread:                                          ; preds = %bb.l
  %i.ab = getelementptr i8, ptr %.1, i64 840
  %.1.val = load i32, ptr %i.ab, align 8
  switch i32 %.1.val, label %bb.h [
    i32 7, label %ata_dev_enabled.exit.thread
    i32 5, label %ata_dev_enabled.exit.thread
    i32 3, label %ata_dev_enabled.exit.thread
    i32 1, label %ata_dev_enabled.exit.thread
    i32 9, label %ata_dev_enabled.exit.thread
  ]

ata_dev_enabled.exit.thread:                      ; preds = %.thread, %.thread, %.thread, %.thread, %.thread, %bb.l, %bb.k, %ata_link_max_devices.exit34
  %.0 = phi ptr [ null, %bb.k ], [ null, %ata_link_max_devices.exit34 ], [ %.1, %bb.l ], [ %.1, %.thread ], [ %.1, %.thread ], [ %.1, %.thread ], [ %.1, %.thread ], [ %.1, %.thread ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define dso_local ptr @ata_dev_phys_link(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 64               ; 2 uses
  %i.b = load ptr, ptr %i.a, align 64             ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 15808
  %i.d = load ptr, ptr %i.c, align 64             ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %.not8 = icmp eq i32 %i.f, 0
  %i.g = getelementptr i8, ptr %i.b, i64 8256
  %spec.select = select i1 %.not8, ptr %i.g, ptr %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ata_force_cbl(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @ata_force_tbl_size, align 4
  %.016 = add i32 %i.a, -1                        ; 2 uses
  %i.b = icmp sgt i32 %.016, -1
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr @ata_force_tbl, align 8
  %i.d = getelementptr i8, ptr %0, i64 36         ; 2 uses
  %i.e = zext nneg i32 %.016 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.e, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.f = getelementptr [56 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq i32 %i.g, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.d, align 4
  %.not14 = icmp eq i32 %i.g, %i.h
  br i1 %.not14, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i8, ptr %i.i, align 8               ; 2 uses
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %.critedge

.critedge:                                        ; preds = %bb.d
  %i.l = zext i8 %i.j to i32
  %i.m = getelementptr i8, ptr %i.f, i64 8
  %i.n = getelementptr i8, ptr %0, i64 300
  store i32 %i.l, ptr %i.n, align 4
  %i.o = load i32, ptr %i.d, align 4
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i32 noundef %i.o, ptr noundef %i.p) #32 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.r = icmp sgt i64 %indvars.iv, 0
  br i1 %i.r, label %bb.b, label %.loopexit, !llvm.loop !95

.loopexit:                                        ; preds = %bb.e, %bb.a, %.critedge
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 5) i32 @atapi_cmd_type(i8 noundef zeroext %0) #6 align 16 prefalign(16) {
bb.a:
  switch i8 %0, label %bb.e [
    i8 40, label %bb.f
    i8 -88, label %bb.f
    i8 42, label %bb.b
    i8 -86, label %bb.b
    i8 46, label %bb.b
    i8 -66, label %bb.c
    i8 -71, label %bb.c
    i8 -123, label %bb.d
    i8 -95, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.a
  br label %bb.f

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.a = load i32, ptr @atapi_passthru16, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.a, %bb.e, %bb.c, %bb.b
  %.0 = phi i32 [ 4, %bb.e ], [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 0, %bb.a ], [ 3, %bb.d ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -1, 281474976710656) i64 @ata_tf_read_block(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 16
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, 1
  %.not36 = icmp eq i64 %i.c, 0
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 13
  %i.e = load i16, ptr %i.d, align 1
  %i.f = zext i16 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 32
  %i.h = getelementptr i8, ptr %0, i64 12
  %i.i = load i8, ptr %i.h, align 4
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 24
  %i.l = or disjoint i64 %i.k, %i.g
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %0, i64 20
  %i.n = load i8, ptr %i.m, align 4
  %i.o = and i8 %i.n, 15
  %i.p = zext nneg i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.032 = phi i64 [ %i.l, %bb.c ], [ %i.q, %bb.d ]
  %i.r = getelementptr i8, ptr %0, i64 18
  %2 = load i16, ptr %i.r, align 2
  %i.s = zext i16 %2 to i64
  %i.t = shl nuw nsw i64 %i.s, 8
  %i.u = or i64 %i.t, %.032
  %i.v = getelementptr i8, ptr %0, i64 17
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = or i64 %i.u, %i.x
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.z = getelementptr i8, ptr %0, i64 17
  %i.aa = load i8, ptr %i.z, align 1              ; 2 uses
  %.not35.not = icmp eq i8 %i.aa, 0
  br i1 %.not35.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %1, align 64              ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 64
  %i.ad = getelementptr i8, ptr %i.ac, i64 36
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr i8, ptr %i.ab, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %1, i64 8
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = add i32 %i.ai, %i.ag
  %i.ak = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i32 noundef %i.ae, i32 noundef %i.aj) #32 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.al = zext i8 %i.aa to i64
  %i.am = getelementptr i8, ptr %0, i64 20
  %i.an = load i8, ptr %i.am, align 4
  %i.ao = and i8 %i.an, 15
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = getelementptr i8, ptr %0, i64 18
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = zext i16 %i.ar to i64
  %i.at = getelementptr i8, ptr %1, i64 890
  %i.au = load i16, ptr %i.at, align 2
  %i.av = zext i16 %i.au to i64
  %i.aw = mul nuw nsw i64 %i.av, %i.as
  %i.ax = add nuw nsw i64 %i.aw, %i.ap
  %i.ay = getelementptr i8, ptr %1, i64 892
  %i.az = load i16, ptr %i.ay, align 4
  %i.ba = zext i16 %i.az to i64
  %i.bb = mul nuw nsw i64 %i.ax, %i.ba
  %i.bc = add nuw nsw i64 %i.al, 4294967295
  %i.bd = add nuw nsw i64 %i.bc, %i.bb
  %i.be = and i64 %i.bd, 4294967295
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %.1 = phi i64 [ %i.y, %bb.e ], [ %i.be, %bb.h ], [ -1, %bb.g ]
  ret i64 %.1
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 -34, 1) i32 @ata_build_rw_tf(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 9 uses
  %i.d = load i64, ptr %i.a, align 8
  %i.e = zext i32 %3 to i64
  %i.f = or i64 %i.d, %i.e                        ; 9 uses
  %i.g = or i64 %i.f, 6
  store i64 %i.g, ptr %i.a, align 8
  %i.h = getelementptr i8, ptr %i.c, i64 24       ; 6 uses
  %.val = load i64, ptr %i.h, align 8             ; 3 uses
  %i.i = and i64 %.val, 49160
  %i.j = icmp eq i64 %i.i, 8
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = zext i32 %2 to i64
  %i.l = add i64 %1, -1
  %i.m = add i64 %i.l, %i.k
  %i.n = icmp ult i64 %i.m, 281474976710656
  %i.o = icmp ult i32 %2, 65536
  %i.p = and i1 %i.o, %i.n
  br i1 %i.p, label %bb.c, label %ata_set_rwcmd_protocol.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %0, i64 40
  store i8 6, ptr %i.q, align 8
  %i.r = or i64 %i.f, 23
  store i64 %i.r, ptr %i.a, align 8
  %i.s = and i64 %i.f, 8
  %.not118 = icmp eq i64 %i.s, 0
  %spec.select = select i1 %.not118, i8 96, i8 97
  %i.t = getelementptr i8, ptr %0, i64 53
  store i8 %spec.select, ptr %i.t, align 1
  %i.u = getelementptr i8, ptr %0, i64 92
  %i.v = load i32, ptr %i.u, align 4
  %.tr = trunc i32 %i.v to i8
  %i.w = shl i8 %.tr, 3
  %i.x = getelementptr i8, ptr %0, i64 48
  store i8 %i.w, ptr %i.x, align 8
  %i.y = lshr i32 %2, 8
  %i.z = trunc nuw i32 %i.y to i8
  %i.aa = getelementptr i8, ptr %0, i64 42
  store i8 %i.z, ptr %i.aa, align 2
  %i.ab = trunc i32 %2 to i8
  %i.ac = getelementptr i8, ptr %0, i64 47
  store i8 %i.ab, ptr %i.ac, align 1
  %i.ad = lshr i64 %1, 40
  %i.ae = trunc i64 %i.ad to i8
  %i.af = getelementptr i8, ptr %0, i64 46
  store i8 %i.ae, ptr %i.af, align 2
  %i.ag = lshr i64 %1, 32
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = getelementptr i8, ptr %0, i64 45
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = lshr i64 %1, 24
  %i.ak = trunc i64 %i.aj to i8
  %i.al = getelementptr i8, ptr %0, i64 44
  store i8 %i.ak, ptr %i.al, align 4
  %i.am = lshr i64 %1, 16
  %i.an = trunc i64 %i.am to i8
  %i.ao = getelementptr i8, ptr %0, i64 51
  store i8 %i.an, ptr %i.ao, align 1
  %i.ap = lshr i64 %1, 8
  %i.aq = trunc i64 %i.ap to i8
  %i.ar = getelementptr i8, ptr %0, i64 50
  store i8 %i.aq, ptr %i.ar, align 2
  %i.as = trunc i64 %1 to i8
  %i.at = getelementptr i8, ptr %0, i64 49
  store i8 %i.as, ptr %i.at, align 1
  %i.au = getelementptr i8, ptr %0, i64 52
  %i.av = and i64 %i.f, 32
  %.not119 = icmp eq i64 %i.av, 0
  %spec.store.select = select i1 %.not119, i8 64, i8 -64
  store i8 %spec.store.select, ptr %i.au, align 4
  %i.aw = load i64, ptr %i.h, align 8             ; 2 uses
  %i.ax = and i64 %i.aw, 1048576
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = icmp eq i32 %5, 1
  %or.cond = and i1 %i.az, %i.ay
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr i8, ptr %0, i64 43        ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = or i8 %i.bb, -128
  store i8 %i.bc, ptr %i.ba, align 1
  %.pre = load i64, ptr %i.h, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bd = phi i64 [ %.pre, %bb.d ], [ %i.aw, %bb.c ]
  %i.be = and i64 %i.bd, 2097152
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = icmp ne i32 %4, 0
  %or.cond3 = and i1 %i.bg, %i.bf
  br i1 %or.cond3, label %ata_set_tf_cdl.exit, label %ata_set_rwcmd_protocol.exit

ata_set_tf_cdl.exit:                              ; preds = %bb.e
  %i.bh = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = or i32 %i.bi, %4
  store i32 %i.bj, ptr %i.bh, align 8
  %i.bk = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = or i64 %i.bl, 272
  store i64 %i.bm, ptr %i.bk, align 8
  br label %ata_set_rwcmd_protocol.exit

bb.f:                                             ; preds = %bb.a
  %i.bn = and i64 %.val, 1
  %.not = icmp eq i64 %i.bn, 0
  br i1 %.not, label %bb.z, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = or i64 %i.f, 22                         ; 2 uses
  store i64 %i.bo, ptr %i.a, align 8
  %i.bp = load i64, ptr %i.h, align 8
  %i.bq = and i64 %i.bp, 2097152
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = icmp ne i32 %4, 0
  %or.cond5 = and i1 %i.bs, %i.br
  br i1 %or.cond5, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr i8, ptr %0, i64 40
  %i.bu = load i8, ptr %i.bt, align 8
  %i.bv = icmp eq i8 %i.bu, 6
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = or i32 %i.bx, %4
  store i32 %i.by, ptr %i.bw, align 8
  br label %ata_set_tf_cdl.exit122

bb.j:                                             ; preds = %bb.h
  %i.bz = getelementptr i8, ptr %0, i64 47        ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = trunc i32 %4 to i8
  %i.cc = or i8 %i.ca, %i.cb
  store i8 %i.cc, ptr %i.bz, align 1
  br label %ata_set_tf_cdl.exit122

end_hunk_0
begin_hunk_1_@ata_id_string:bb.a
  store i8 %i.k, ptr %i.i, align 1
  %i.l = getelementptr i8, ptr %1, i64 2
  %i.m = add i32 %2, 1
  %i.n = add i32 %3, -2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.019.unr = phi i32 [ %3, %.lr.ph.preheader ], [ %i.n, %.lr.ph.prol ]
  %.01318.unr = phi i32 [ %2, %.lr.ph.preheader ], [ %i.m, %.lr.ph.prol ]
  %.01417.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.l, %.lr.ph.prol ]
  %i.o = icmp eq i32 %i.b, 0
  br i1 %i.o, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1106: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1106b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1106) #30, !srcloc !26
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, ptr @.str.4, i32 1122, i32 0, i64 16) #30, !srcloc !27
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.019 = phi i32 [ %i.aj, %.lr.ph ], [ %.019.unr, %.lr.ph.prol.loopexit ]
  %.01318 = phi i32 [ %i.ai, %.lr.ph ], [ %.01318.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.01417 = phi ptr [ %i.ah, %.lr.ph ], [ %.01417.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.p = zext i32 %.01318 to i64
  %i.q = getelementptr [2 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = load i16, ptr %i.q, align 2
  %i.s = lshr i16 %i.r, 8
  %i.t = trunc nuw i16 %i.s to i8
  store i8 %i.t, ptr %.01417, align 1
  %i.u = getelementptr i8, ptr %.01417, i64 1
  %i.v = load i16, ptr %i.q, align 2
  %i.w = trunc i16 %i.v to i8
  store i8 %i.w, ptr %i.u, align 1
  %i.x = getelementptr i8, ptr %.01417, i64 2
  %i.y = add i32 %.01318, 1
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr [2 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = lshr i16 %i.ab, 8
  %i.ad = trunc nuw i16 %i.ac to i8
  store i8 %i.ad, ptr %i.x, align 1
  %i.ae = getelementptr i8, ptr %.01417, i64 3
  %i.af = load i16, ptr %i.aa, align 2
  %i.ag = trunc i16 %i.af to i8
  store i8 %i.ag, ptr %i.ae, align 1
  %i.ah = getelementptr i8, ptr %.01417, i64 4
  %i.ai = add i32 %.01318, 2
  %i.aj = add i32 %.019, -4                       ; 2 uses
  %.not15.1 = icmp eq i32 %i.aj, 0
  br i1 %.not15.1, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.preheader
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ata_id_c_string(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, i32 noundef %2, i32 noundef %3) #1 align 16 prefalign(16) {
bb.a:
  %i.a = add i32 %3, -1                           ; 4 uses
  %i.b = and i32 %i.a, 1
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %.preheader.i, label %bb.b, !prof !18

.preheader.i:                                     ; preds = %bb.a
  %.not1516.i = icmp eq i32 %i.a, 0
  br i1 %.not1516.i, label %ata_id_string.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.c = add i32 %3, -3                           ; 2 uses
  %i.d = and i32 %i.c, 2
  %lcmp.mod.not.not = icmp eq i32 %i.d, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.e = zext i32 %2 to i64
  %i.f = getelementptr [2 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = load i16, ptr %i.f, align 2
  %i.h = lshr i16 %i.g, 8
  %i.i = trunc nuw i16 %i.h to i8
  store i8 %i.i, ptr %1, align 1
  %i.j = getelementptr i8, ptr %1, i64 1
  %i.k = load i16, ptr %i.f, align 2
  %i.l = trunc i16 %i.k to i8
  store i8 %i.l, ptr %i.j, align 1
  %i.m = getelementptr i8, ptr %1, i64 2
  %i.n = add i32 %2, 1
  %i.o = add i32 %3, -3
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.019.i.unr = phi i32 [ %i.a, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %.01318.i.unr = phi i32 [ %2, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %.01417.i.unr = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.m, %.lr.ph.i.prol ]
  %i.p = icmp ult i32 %i.c, 2
  br i1 %i.p, label %ata_id_string.exit, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1106: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1106b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1106) #30, !srcloc !26
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, ptr @.str.4, i32 1122, i32 0, i64 16) #30, !srcloc !27
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.019.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %.019.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01318.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %.01318.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.01417.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.01417.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.q = zext i32 %.01318.i to i64
  %i.r = getelementptr [2 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.s = load i16, ptr %i.r, align 2
  %i.t = lshr i16 %i.s, 8
  %i.u = trunc nuw i16 %i.t to i8
  store i8 %i.u, ptr %.01417.i, align 1
  %i.v = getelementptr i8, ptr %.01417.i, i64 1
  %i.w = load i16, ptr %i.r, align 2
  %i.x = trunc i16 %i.w to i8
  store i8 %i.x, ptr %i.v, align 1
  %i.y = getelementptr i8, ptr %.01417.i, i64 2
  %i.z = add i32 %.01318.i, 1
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr [2 x i8], ptr %0, i64 %i.aa ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = lshr i16 %i.ac, 8
  %i.ae = trunc nuw i16 %i.ad to i8
  store i8 %i.ae, ptr %i.y, align 1
  %i.af = getelementptr i8, ptr %.01417.i, i64 3
  %i.ag = load i16, ptr %i.ab, align 2
  %i.ah = trunc i16 %i.ag to i8
  store i8 %i.ah, ptr %i.af, align 1
  %i.ai = getelementptr i8, ptr %.01417.i, i64 4
  %i.aj = add i32 %.01318.i, 2
  %i.ak = add i32 %.019.i, -4                     ; 2 uses
  %.not15.i.1 = icmp eq i32 %i.ak, 0
  br i1 %.not15.i.1, label %ata_id_string.exit, label %.lr.ph.i, !llvm.loop !0

ata_id_string.exit:                               ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.preheader.i
  %i.al = zext i32 %i.a to i64
  %i.am = tail call i64 @strnlen(ptr noundef %1, i64 noundef %i.al) #34
  %i.an = getelementptr i8, ptr %1, i64 %i.am     ; 3 uses
  %i.ao = icmp ugt ptr %i.an, %1
  br i1 %i.ao, label %.lr.ph, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.ap = icmp ugt ptr %i.aq, %1
  br i1 %i.ap, label %.lr.ph, label %.critedge, !llvm.loop !1

.lr.ph:                                           ; preds = %ata_id_string.exit, %bb.c
  %.012 = phi ptr [ %i.aq, %bb.c ], [ %i.an, %ata_id_string.exit ] ; 2 uses
  %i.aq = getelementptr i8, ptr %.012, i64 -1     ; 4 uses
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = icmp eq i8 %i.ar, 32
  br i1 %i.as, label %bb.c, label %..critedge_crit_edge13, !llvm.loop !1

..critedge_crit_edge13:                           ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !1

.critedge:                                        ; preds = %bb.c, %..critedge_crit_edge13, %ata_id_string.exit
  %.0.lcssa = phi ptr [ %i.an, %ata_id_string.exit ], [ %.012, %..critedge_crit_edge13 ], [ %i.aq, %bb.c ]
  store i8 0, ptr %.0.lcssa, align 1
  ret void
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local range(i64 0, 281474976710656) i64 @ata_tf_to_lba48(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 13
  %i.b = load i16, ptr %i.a, align 1
  %i.c = zext i16 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 32
  %i.e = getelementptr i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4
  %i.g = zext i8 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 24
  %i.i = or disjoint i64 %i.h, %i.d
  %i.j = getelementptr i8, ptr %0, i64 19
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 16
  %i.n = or disjoint i64 %i.i, %i.m
  %i.o = getelementptr i8, ptr %0, i64 18
  %i.p = load i8, ptr %i.o, align 2
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 8
  %i.s = or disjoint i64 %i.n, %i.r
  %i.t = getelementptr i8, ptr %0, i64 17
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i64
  %i.w = or disjoint i64 %i.s, %i.v
  ret i64 %i.w
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local range(i64 0, 268435456) i64 @ata_tf_to_lba(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 15
  %i.d = zext nneg i8 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 24
  %i.f = getelementptr i8, ptr %0, i64 19
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 16
  %i.j = or disjoint i64 %i.e, %i.i
  %i.k = getelementptr i8, ptr %0, i64 17
  %1 = load i16, ptr %i.k, align 1
  %i.l = zext i16 %1 to i64
  %i.m = or disjoint i64 %i.j, %i.l
  ret i64 %i.m
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local range(i32 0, 1048576) i32 @ata_id_xfermask(ptr nofree noundef readonly captures(none) %0) #10 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 106
  %i.b = load i16, ptr %i.a, align 2              ; 2 uses
  %i.c = and i16 %i.b, 2
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 128
  %i.e = load i16, ptr %i.d, align 2
  %i.f = shl i16 %i.e, 3
  %i.g = and i16 %i.f, 24
  %i.h = or disjoint i16 %i.g, 7
  %i.i = zext nneg i16 %i.h to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 102
  %i.k = load i16, ptr %i.j, align 2              ; 2 uses
  %i.l = icmp ult i16 %i.k, 1280
  %i.m = lshr i16 %i.k, 8
  %i.n = zext nneg i16 %i.m to i32
  %i.o = shl nuw nsw i32 2, %i.n
  %i.p = add nsw i32 %i.o, -1
  %.024 = select i1 %i.l, i32 %i.p, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.125 = phi i32 [ %i.i, %bb.b ], [ %.024, %bb.c ] ; 3 uses
  %i.q = getelementptr i8, ptr %0, i64 126
  %i.r = load i16, ptr %i.q, align 2
  %i.s = and i16 %i.r, 7
  %i.t = zext nneg i16 %i.s to i32                ; 3 uses
  %i.u = load i16, ptr %0, align 2
  switch i16 %i.u, label %ata_id_is_cfa.exit [
    i16 -31606, label %ata_id_is_cfa.exit.thread
    i16 -31670, label %ata_id_is_cfa.exit.thread
  ]

ata_id_is_cfa.exit:                               ; preds = %bb.d
  %i.v = getelementptr i8, ptr %0, i64 166
  %i.w = load i16, ptr %i.v, align 2
  %i.x = and i16 %i.w, -16380
  %i.y = icmp eq i16 %i.x, 16388
  br i1 %i.y, label %ata_id_is_cfa.exit.thread, label %bb.e

ata_id_is_cfa.exit.thread:                        ; preds = %bb.d, %bb.d, %ata_id_is_cfa.exit
  %i.z = getelementptr i8, ptr %0, i64 326
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = zext i16 %i.aa to i32                   ; 2 uses
  %i.ac = and i32 %i.ab, 7                        ; 2 uses
  %i.ad = lshr i32 %i.ab, 3
  %i.ae = and i32 %i.ad, 7                        ; 2 uses
  %.not28 = icmp eq i32 %i.ac, 0
  %i.af = or i32 %.125, 32
  %spec.select = select i1 %.not28, i32 %.125, i32 %i.af ; 2 uses
  %i.ag = icmp samesign ugt i32 %i.ac, 1
  %i.ah = or i32 %spec.select, 64
  %.3 = select i1 %i.ag, i32 %i.ah, i32 %spec.select
  %.not29 = icmp eq i32 %i.ae, 0
  %i.ai = or disjoint i32 %i.t, 8
  %.023 = select i1 %.not29, i32 %i.t, i32 %i.ai  ; 2 uses
  %i.aj = icmp samesign ugt i32 %i.ae, 1
  %i.ak = or disjoint i32 %.023, 16
  %.1 = select i1 %i.aj, i32 %i.ak, i32 %.023
  br label %bb.e

bb.e:                                             ; preds = %ata_id_is_cfa.exit.thread, %ata_id_is_cfa.exit
  %.4 = phi i32 [ %.3, %ata_id_is_cfa.exit.thread ], [ %.125, %ata_id_is_cfa.exit ]
  %.2 = phi i32 [ %.1, %ata_id_is_cfa.exit.thread ], [ %i.t, %ata_id_is_cfa.exit ]
  %i.al = and i16 %i.b, 4
  %.not30 = icmp eq i16 %i.al, 0
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr i8, ptr %0, i64 176
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = zext i16 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 12
  %i.aq = and i32 %i.ap, 1044480
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %i.aq, %bb.f ], [ 0, %bb.e ]
  %i.ar = and i32 %.4, 127
  %i.as = shl nuw nsw i32 %.2, 7
  %i.at = and i32 %i.as, 3968
  %i.au = or disjoint i32 %i.at, %i.ar
  %i.av = or disjoint i32 %i.au, %.0
  ret i32 %i.av
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ata_exec_internal(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %7 = alloca %struct.scatterlist, align 8        ; 6 uses
  %8 = alloca %struct.completion, align 8         ; 7 uses
  %i.a = load ptr, ptr %0, align 64               ; 3 uses
  %i.b = load ptr, ptr %i.a, align 64             ; 42 uses
  %i.c = getelementptr i8, ptr %i.b, i64 15864
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #33, !srcloc !28
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = icmp eq ptr %i.f, %i.h                   ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 21
  %i.k = load i8, ptr %i.j, align 1               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false), !annotation !20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %i.l, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.l, ptr %i.m, align 8
  %.not = icmp ne i32 %3, 3                       ; 2 uses
  %.not127 = icmp eq ptr %4, null
  %spec.select = and i1 %.not, %.not127
  br i1 %spec.select, label %bb.b, label %.critedge, !prof !19

bb.b:                                             ; preds = %bb.a
  call void asm sideeffect "1110: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1110b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1110) #30, !srcloc !96
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, ptr @.str.4, i32 1557, i32 2305, i64 16) #30, !srcloc !97
  call void asm sideeffect "1111: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1111b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1111) #30, !srcloc !98
  br label %bb.ag

.critedge:                                        ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.b, i64 16       ; 7 uses
  %i.o = load ptr, ptr %i.n, align 16
  %i.p = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.o) #29 ; 2 uses
  %i.q = getelementptr i8, ptr %i.b, i64 32
  %.val = load i32, ptr %i.q, align 32
  %i.r = and i32 %.val, 4
  %.not140 = icmp eq i32 %i.r, 0
  br i1 %.not140, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.s = load ptr, ptr %i.n, align 16
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.s, i64 noundef %i.p) #29
  br label %bb.ag

bb.d:                                             ; preds = %.critedge
  %i.t = getelementptr i8, ptr %i.b, i64 7984     ; 3 uses
  %i.u = getelementptr i8, ptr %i.b, i64 8072     ; 3 uses
  store i32 32, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.b, i64 8076
  store i32 0, ptr %i.v, align 4
  %i.w = getelementptr i8, ptr %i.b, i64 8000
  store ptr null, ptr %i.w, align 32
  store ptr %i.b, ptr %i.t, align 16
  %i.x = getelementptr i8, ptr %i.b, i64 7992
  store ptr %0, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %i.b, i64 8088     ; 3 uses
  store i32 3, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %i.b, i64 8144     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.b, i64 8064    ; 8 uses
  store i64 0, ptr %i.aa, align 32
  %i.ab = getelementptr i8, ptr %i.b, i64 8104
  store i32 0, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %i.b, i64 8100
  store i32 0, ptr %i.ac, align 4
  %i.ad = getelementptr i8, ptr %i.b, i64 8096    ; 2 uses
  store i32 0, ptr %i.ad, align 32
  %i.ae = getelementptr i8, ptr %i.b, i64 8080    ; 2 uses
  store i32 0, ptr %i.ae, align 16
  %i.af = getelementptr i8, ptr %i.b, i64 8092
  call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store i32 512, ptr %i.af, align 4
  %i.ag = getelementptr i8, ptr %i.b, i64 8016    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(32) %i.ag, i8 0, i64 32, i1 false)
  %i.ah = load ptr, ptr %0, align 64
  %i.ai = load ptr, ptr %i.ah, align 64
  %i.aj = getelementptr i8, ptr %i.ai, i64 168
  %i.ak = load i8, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %i.b, i64 8025
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp eq i32 %i.an, 0
  %spec.select.i.i = select i1 %i.ao, i8 -96, i8 -80
  %i.ap = getelementptr i8, ptr %i.b, i64 8036
  store i8 %spec.select.i.i, ptr %i.ap, align 4
  %i.aq = getelementptr i8, ptr %i.b, i64 8189    ; 4 uses
  store i8 64, ptr %i.aq, align 1
  %i.ar = getelementptr i8, ptr %i.b, i64 8183
  store i8 0, ptr %i.ar, align 1
  %i.as = getelementptr i8, ptr %i.a, i64 776     ; 3 uses
  %i.at = load i32, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %i.a, i64 780     ; 3 uses
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = getelementptr i8, ptr %i.b, i64 8224    ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 32
  %i.ay = getelementptr i8, ptr %i.b, i64 8232    ; 3 uses
end_hunk_1
begin_hunk_2_@ata_dev_power_set_active:bb.a
bb.f:                                             ; preds = %ata_dev_power_is_active.exit.thread, %ata_dev_power_is_active.exit
  %i.ak = load ptr, ptr %0, align 64              ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 64
  %i.am = getelementptr i8, ptr %i.al, i64 36
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr i8, ptr %i.ak, i64 8
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = load i32, ptr %i.i, align 8
  %i.ar = add i32 %i.aq, %i.ap
  %i.as = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.44, i32 noundef %i.an, i32 noundef %i.ar) #32 ; 0 uses
  %i.at = call i32 @ata_exec_internal(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 0) #34 ; 2 uses
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %ata_dev_power_init_tf.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = load ptr, ptr %0, align 64              ; 2 uses
  %i.av = load ptr, ptr %i.au, align 64
  %i.aw = getelementptr i8, ptr %i.av, i64 36
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = getelementptr i8, ptr %i.au, i64 8
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = load i32, ptr %i.i, align 8
  %i.bb = add i32 %i.ba, %i.az
  %i.bc = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.45, i32 noundef %i.ax, i32 noundef %i.bb, i32 noundef %i.at) #32 ; 0 uses
  br label %ata_dev_power_init_tf.exit

ata_dev_power_init_tf.exit:                       ; preds = %bb.a, %bb.f, %bb.g, %ata_dev_power_is_active.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ata_read_log_page(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.ata_taskfile, align 8       ; 13 uses
  %i.a = load ptr, ptr %0, align 64
  %i.b = load ptr, ptr %i.a, align 64             ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.e = and i64 %i.d, 32
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.i = getelementptr i8, ptr %0, i64 857
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.l = trunc i32 %4 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = lshr i32 %4, 8
  %i.o = trunc i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 11
  %i.q = shl i32 %4, 9
  %i.r = getelementptr i8, ptr %0, i64 1068
  %i.s = getelementptr i8, ptr %0, i64 1134
  %i.t = getelementptr i8, ptr %0, i64 1136
  %i.u = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 21
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.g
  %i.y = phi ptr [ %i.b, %.preheader ], [ %i.ap, %bb.g ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.z = getelementptr i8, ptr %i.y, i64 168
  %i.aa = load i8, ptr %i.z, align 8
  store i8 %i.aa, ptr %i.f, align 1
  %i.ab = load i32, ptr %i.g, align 8
  %i.ac = icmp eq i32 %i.ab, 0
  %spec.select.i = select i1 %i.ac, i8 -96, i8 -80
  store i8 %spec.select.i, ptr %i.h, align 4
  %.val28 = load i8, ptr %i.i, align 1
  %.not32 = icmp eq i8 %.val28, -1
  br i1 %.not32, label %ata_id_has_read_log_dma_ext.exit.thread30, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load i16, ptr %i.r, align 4
  %.not.i = icmp sgt i16 %i.ad, -1
  br i1 %.not.i, label %ata_id_has_read_log_dma_ext.exit.thread30, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load i16, ptr %i.s, align 2
  %i.af = and i16 %i.ae, -16376
  %i.ag = icmp eq i16 %i.af, 16392
  br i1 %i.ag, label %ata_id_has_read_log_dma_ext.exit.thread, label %ata_id_has_read_log_dma_ext.exit

ata_id_has_read_log_dma_ext.exit:                 ; preds = %bb.d
  %i.ah = load i16, ptr %i.t, align 16
  %i.ai = and i16 %i.ah, -16376
  %i.aj = icmp eq i16 %i.ai, 16392
  br i1 %i.aj, label %ata_id_has_read_log_dma_ext.exit.thread, label %ata_id_has_read_log_dma_ext.exit.thread30

ata_id_has_read_log_dma_ext.exit.thread:          ; preds = %bb.d, %ata_id_has_read_log_dma_ext.exit
  %i.ak = load i64, ptr %i.u, align 16
  %i.al = and i64 %i.ak, 2097152
  %.not26 = icmp eq i64 %i.al, 0
  br i1 %.not26, label %bb.e, label %ata_id_has_read_log_dma_ext.exit.thread30

ata_id_has_read_log_dma_ext.exit.thread30:        ; preds = %bb.c, %ata_id_has_read_log_dma_ext.exit.thread, %ata_id_has_read_log_dma_ext.exit, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %ata_id_has_read_log_dma_ext.exit.thread, %ata_id_has_read_log_dma_ext.exit.thread30
  %storemerge40 = phi i8 [ 47, %ata_id_has_read_log_dma_ext.exit.thread30 ], [ 71, %ata_id_has_read_log_dma_ext.exit.thread ]
  %storemerge = phi i8 [ 1, %ata_id_has_read_log_dma_ext.exit.thread30 ], [ 2, %ata_id_has_read_log_dma_ext.exit.thread ]
  %.024 = phi i1 [ false, %ata_id_has_read_log_dma_ext.exit.thread30 ], [ true, %ata_id_has_read_log_dma_ext.exit.thread ]
  store i8 %storemerge40, ptr %i.v, align 1
  store i8 %storemerge, ptr %i.w, align 8
  store i8 %1, ptr %i.j, align 1
  store i8 %2, ptr %i.k, align 2
  store i8 %i.l, ptr %i.m, align 8
  store i8 %i.o, ptr %i.p, align 1
  store i64 7, ptr %5, align 8
  %i.am = call i32 @ata_exec_internal(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null, i32 noundef 2, ptr noundef %3, i32 noundef %i.q, i32 noundef 0) #34 ; 3 uses
  %.not27 = icmp eq i32 %i.am, 0
  br i1 %.not27, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.pre = load ptr, ptr %0, align 64              ; 3 uses
  br i1 %.024, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre38 = load ptr, ptr %.pre, align 64
  br label %split

bb.g:                                             ; preds = %bb.f
  %i.an = load i64, ptr %i.u, align 16
  %i.ao = or i64 %i.an, 2097152
  store i64 %i.ao, ptr %i.u, align 16
  %i.ap = load ptr, ptr %.pre, align 64           ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 32
  %.val = load i32, ptr %i.aq, align 32
  %i.ar = and i32 %.val, 4
  %.not33 = icmp eq i32 %i.ar, 0
  br i1 %.not33, label %bb.b, label %split

split:                                            ; preds = %bb.g, %._crit_edge
  %i.as = phi ptr [ %.pre38, %._crit_edge ], [ %i.ap, %bb.g ]
  %i.at = getelementptr i8, ptr %i.as, i64 36
  %i.au = load i32, ptr %i.at, align 4
  %i.av = getelementptr i8, ptr %.pre, i64 8
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = load i32, ptr %i.g, align 8
  %i.ay = add i32 %i.ax, %i.aw
  %i.az = zext i8 %1 to i32
  %i.ba = zext i8 %2 to i32
  %i.bb = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.46, i32 noundef %i.au, i32 noundef %i.ay, i32 noundef %i.az, i32 noundef %i.ba, i32 noundef %i.am) #32 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %split, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ %i.am, %split ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define dso_local noundef zeroext i1 @ata_adapter_is_online(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 15864
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not13 = icmp eq ptr %i.d, null
  br i1 %.not13, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, @pci_bus_type
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %i.d, i64 -4
  %.val = load i32, ptr %i.h, align 4
  %.not15 = icmp eq i32 %.val, 1
  br i1 %.not15, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.a, %bb.b, %bb.f
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.f ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.e ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ata_dev_configure(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.ata_taskfile, align 8       ; 18 uses
  %i.a = alloca [7 x i8], align 4                 ; 6 uses
  %i.b = alloca [9 x i8], align 1                 ; 17 uses
  %i.c = alloca [41 x i8], align 16               ; 49 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = load ptr, ptr %0, align 64               ; 2 uses
  %i.f = load ptr, ptr %i.e, align 64             ; 5 uses
  %i.g = getelementptr i8, ptr %i.e, i64 996
  %.val227.val = load i32, ptr %i.g, align 4
  %i.h = and i32 %.val227.val, 262144
  %i.i = icmp ne i32 %i.h, 0                      ; 6 uses
  %i.j = getelementptr i8, ptr %0, i64 896        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.a, i8 0, i64 7, i1 false), !annotation !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.k = getelementptr i8, ptr %0, i64 840        ; 5 uses
  %.val225 = load i32, ptr %i.k, align 8
  switch i32 %.val225, label %ata_hpa_resize.exit.thread273 [
    i32 7, label %ata_dev_enabled.exit.thread
    i32 5, label %ata_dev_enabled.exit.thread
    i32 3, label %ata_dev_enabled.exit.thread
    i32 1, label %ata_dev_enabled.exit.thread
    i32 9, label %ata_dev_enabled.exit.thread
  ]

ata_dev_enabled.exit.thread:                      ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.b, i8 0, i64 9, i1 false), !annotation !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(41) %i.c, i8 0, i64 41, i1 false), !annotation !20
  %i.l = getelementptr i8, ptr %0, i64 1408
  tail call void @llvm.memset.p0.i64(ptr noundef align 64 dereferenceable(512) %i.l, i8 0, i64 512, i1 false)
  %i.m = tail call fastcc i64 @ata_dev_quirks(ptr noundef %0) #34, !srcloc !113
  %i.n = getelementptr i8, ptr %0, i64 16         ; 19 uses
  %i.o = load i64, ptr %i.n, align 16
  %i.p = or i64 %i.o, %i.m                        ; 8 uses
  store i64 %i.p, ptr %i.n, align 16
  %.val.i = load ptr, ptr %0, align 64            ; 5 uses
  %i.q = getelementptr i8, ptr %0, i64 8          ; 25 uses
  %.val16.i = load i32, ptr %i.q, align 8         ; 2 uses
  %i.r = getelementptr i8, ptr %.val.i, i64 8     ; 2 uses
  %i.s = load i32, ptr %i.r, align 8
  %i.t = add i32 %i.s, %.val16.i                  ; 4 uses
  %i.u = load ptr, ptr %.val.i, align 64          ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8256
  %i.w = icmp eq ptr %.val.i, %i.v
  br i1 %i.w, label %ata_is_host_link.exit.thread.i.i, label %ata_is_host_link.exit.i.i

ata_is_host_link.exit.thread.i.i:                 ; preds = %ata_dev_enabled.exit.thread
  %i.x = add i32 %i.t, 15
  br label %bb.b

ata_is_host_link.exit.i.i:                        ; preds = %ata_dev_enabled.exit.thread
  %i.y = getelementptr i8, ptr %i.u, i64 15808
  %i.z = load ptr, ptr %i.y, align 64
  %.fr.i.i = freeze ptr %i.z
  %i.aa = icmp eq ptr %.val.i, %.fr.i.i
  %i.ab = add i32 %i.t, 15
  %spec.select.i.i = select i1 %i.aa, i32 %i.ab, i32 %i.t
  br label %bb.b

bb.b:                                             ; preds = %ata_is_host_link.exit.i.i, %ata_is_host_link.exit.thread.i.i
  %i.ac = phi i32 [ %spec.select.i.i, %ata_is_host_link.exit.i.i ], [ %i.x, %ata_is_host_link.exit.thread.i.i ]
  %i.ad = load i32, ptr @ata_force_tbl_size, align 4 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i.i, label %ata_force_quirks.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.af = load ptr, ptr @ata_force_tbl, align 8
  %i.ag = getelementptr i8, ptr %i.u, i64 36
  %wide.trip.count.i.i = zext nneg i32 %i.ad to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %i.ah = getelementptr [56 x i8], ptr %i.af, i64 %indvars.iv.i.i ; 7 uses
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  %.not.i.i = icmp eq i32 %i.ai, -1
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i32, ptr %i.ag, align 4
  %.not21.i.i = icmp eq i32 %i.ai, %i.aj
  br i1 %.not21.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = getelementptr i8, ptr %i.ah, i64 4
  %i.al = load i32, ptr %i.ak, align 4            ; 3 uses
  %.not22.i.i = icmp eq i32 %i.al, -1
  %.not23.i.i = icmp eq i32 %i.al, %i.t
  %or.cond.i.i = select i1 %.not22.i.i, i1 true, i1 %.not23.i.i
  %.not24.i.i = icmp eq i32 %i.al, %i.ac
  %or.cond25.i.i = select i1 %or.cond.i.i, i1 true, i1 %.not24.i.i
  br i1 %or.cond25.i.i, label %ata_force_get_fe_for_dev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %ata_force_quirks.exit, label %bb.c, !llvm.loop !2

ata_force_get_fe_for_dev.exit.i:                  ; preds = %bb.e
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %ata_force_quirks.exit, label %bb.g

bb.g:                                             ; preds = %ata_force_get_fe_for_dev.exit.i
  %i.am = xor i64 %i.p, -1
  %i.an = getelementptr i8, ptr %i.ah, i64 8
  %i.ao = getelementptr i8, ptr %i.ah, i64 32
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.aq = and i64 %i.ap, %i.am
  %.not14.i = icmp eq i64 %i.aq, 0
  br i1 %.not14.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr i8, ptr %i.ah, i64 40
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = and i64 %i.as, %i.p
  %.not15.i = icmp eq i64 %i.at, 0
  br i1 %.not15.i, label %ata_force_quirks.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = or i64 %i.ap, %i.p                      ; 2 uses
  store i64 %i.au, ptr %i.n, align 16
  %i.av = getelementptr i8, ptr %i.ah, i64 40
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = xor i64 %i.aw, -1
  %i.ay = and i64 %i.au, %i.ax
  store i64 %i.ay, ptr %i.n, align 16
  %i.az = load ptr, ptr %.val.i, align 64
  %i.ba = getelementptr i8, ptr %i.az, i64 36
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = load i32, ptr %i.r, align 8
  %i.bd = add i32 %i.bc, %.val16.i
  %i.be = load ptr, ptr %i.an, align 8
  %i.bf = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.289, i32 noundef %i.bb, i32 noundef %i.bd, ptr noundef %i.be) #32 ; 0 uses
  %.pre = load i64, ptr %i.n, align 16
  br label %ata_force_quirks.exit

ata_force_quirks.exit:                            ; preds = %bb.f, %bb.b, %ata_force_get_fe_for_dev.exit.i, %bb.h, %bb.i
  %i.bg = phi i64 [ %.pre, %bb.i ], [ %i.p, %bb.b ], [ %i.p, %ata_force_get_fe_for_dev.exit.i ], [ %i.p, %bb.h ], [ %i.p, %bb.f ]
  %i.bh = and i64 %i.bg, 16
  %.not199 = icmp eq i64 %i.bh, 0
  br i1 %.not199, label %bb.k, label %bb.j

bb.j:                                             ; preds = %ata_force_quirks.exit
  %i.bi = load ptr, ptr %0, align 64              ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 64
  %i.bk = getelementptr i8, ptr %i.bj, i64 36
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = getelementptr i8, ptr %i.bi, i64 8
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = load i32, ptr %i.q, align 8
  %i.bp = add i32 %i.bo, %i.bn
  %i.bq = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.47, i32 noundef %i.bl, i32 noundef %i.bp) #32 ; 0 uses
  tail call void @ata_dev_disable(ptr noundef %0) #29
  br label %ata_hpa_resize.exit.thread273

bb.k:                                             ; preds = %ata_force_quirks.exit
  %i.br = load i32, ptr @atapi_enabled, align 4
  %.not200 = icmp eq i32 %i.br, 0                 ; 2 uses
  br i1 %.not200, label %._crit_edge293, label %bb.l

._crit_edge293:                                   ; preds = %bb.k
  %.pre287.pre = load ptr, ptr %0, align 64
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr i8, ptr %i.f, i64 24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = and i64 %i.bt, 64
  %.not201 = icmp eq i64 %i.bu, 0
  %.pre287.pre294 = load ptr, ptr %0, align 64    ; 2 uses
  br i1 %.not201, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %._crit_edge293, %bb.l
  %.pre287 = phi ptr [ %.pre287.pre, %._crit_edge293 ], [ %.pre287.pre294, %bb.l ] ; 3 uses
  %i.bv = load i32, ptr %i.k, align 8
  %i.bw = icmp eq i32 %i.bv, 3
  br i1 %i.bw, label %bb.n, label %._crit_edge

bb.n:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %.pre287, align 64
  %i.by = getelementptr i8, ptr %i.bx, i64 36
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = getelementptr i8, ptr %.pre287, i64 8
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = load i32, ptr %i.q, align 8
  %i.cd = add i32 %i.cc, %i.cb
  %i.ce = select i1 %.not200, ptr @.str.50, ptr @.str.49
  %i.cf = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.48, i32 noundef %i.bz, i32 noundef %i.cd, ptr noundef nonnull %i.ce) #32 ; 0 uses
  tail call void @ata_dev_disable(ptr noundef %0) #29
  br label %ata_hpa_resize.exit.thread273

._crit_edge:                                      ; preds = %bb.l, %bb.m
  %i.cg = phi ptr [ %.pre287, %bb.m ], [ %.pre287.pre294, %bb.l ] ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 64           ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 15808
  %i.cj = load ptr, ptr %i.ci, align 64           ; 2 uses
  %.not.i.i230 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i230, label %ata_dev_phys_link.exit.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge
end_hunk_2
begin_hunk_3_@ata_dev_configure:bb.a
bb.u:                                             ; preds = %bb.t
  %i.di = getelementptr i8, ptr %0, i64 24
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = and i64 %i.dj, 524288
  %i.dl = icmp ne i64 %i.dk, 0
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dm = phi i1 [ true, %bb.t ], [ %i.dl, %bb.u ] ; 2 uses
  %i.dn = getelementptr i8, ptr %0, i64 994       ; 2 uses
  %i.do = load i16, ptr %i.dn, align 2
  %i.dp = and i16 %i.do, 512
  %.not.i.i236 = icmp eq i16 %i.dp, 0             ; 2 uses
  br i1 %.not.i.i236, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = getelementptr i8, ptr %0, i64 1062
  %i.dr = load i16, ptr %i.dq, align 2
  %i.ds = zext i16 %i.dr to i32                   ; 2 uses
  %i.dt = and i32 %i.ds, 49152
  %.not.i.i.i = icmp eq i32 %i.dt, 16384
  br i1 %.not.i.i.i, label %bb.x, label %ata_id_has_lba48.exit.thread.i.i

bb.x:                                             ; preds = %bb.w
  %i.du = getelementptr i8, ptr %0, i64 1096
  %i.dv = load i64, ptr %i.du, align 8            ; 2 uses
  %.not7.i.i.i = icmp ne i64 %i.dv, 0
  %i.dw = and i32 %i.ds, 1024
  %i.dx = icmp ne i32 %i.dw, 0
  %or.cond.i.i239 = and i1 %i.dx, %.not7.i.i.i
  br i1 %or.cond.i.i239, label %ata_id_n_sectors.exit.i, label %ata_id_has_lba48.exit.thread.i.i

ata_id_has_lba48.exit.thread.i.i:                 ; preds = %bb.x, %bb.w
  %i.dy = getelementptr i8, ptr %0, i64 1016
  %i.dz = load i32, ptr %i.dy, align 8
  %i.ea = zext i32 %i.dz to i64
  br label %ata_id_n_sectors.exit.i

bb.y:                                             ; preds = %bb.v
  %i.eb = getelementptr i8, ptr %0, i64 1002
  %i.ec = load i16, ptr %i.eb, align 2
  %i.ed = and i16 %i.ec, 1
  %.not.i15.i.i = icmp eq i16 %i.ed, 0
  br i1 %.not.i15.i.i, label %ata_id_current_chs_valid.exit.thread.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ee = getelementptr i8, ptr %0, i64 1004
  %i.ef = load i16, ptr %i.ee, align 4            ; 2 uses
  %.not5.i.i.i = icmp eq i16 %i.ef, 0
  br i1 %.not5.i.i.i, label %ata_id_current_chs_valid.exit.thread.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eg = getelementptr i8, ptr %0, i64 1006
  %i.eh = load i16, ptr %i.eg, align 2            ; 2 uses
  %i.ei = add i16 %i.eh, -1
  %or.cond.i.i.i = icmp ult i16 %i.ei, 16
  br i1 %or.cond.i.i.i, label %ata_id_current_chs_valid.exit.i.i, label %ata_id_current_chs_valid.exit.thread.i.i

ata_id_current_chs_valid.exit.i.i:                ; preds = %bb.aa
  %i.ej = getelementptr i8, ptr %0, i64 1008
  %i.ek = load i16, ptr %i.ej, align 16           ; 2 uses
  %.not18.i.i = icmp eq i16 %i.ek, 0
  br i1 %.not18.i.i, label %ata_id_current_chs_valid.exit.thread.i.i, label %bb.ab

bb.ab:                                            ; preds = %ata_id_current_chs_valid.exit.i.i
  %i.el = zext i16 %i.ef to i64
  %i.em = zext nneg i16 %i.eh to i64
  %i.en = mul nuw nsw i64 %i.em, %i.el
  %i.eo = zext i16 %i.ek to i64
  %i.ep = mul nuw nsw i64 %i.en, %i.eo
  %i.eq = and i64 %i.ep, 4294967295
  br label %ata_id_n_sectors.exit.i

ata_id_current_chs_valid.exit.thread.i.i:         ; preds = %ata_id_current_chs_valid.exit.i.i, %bb.aa, %bb.z, %bb.y
  %i.er = getelementptr i8, ptr %0, i64 898
  %i.es = load i16, ptr %i.er, align 2
  %i.et = zext i16 %i.es to i64
  %i.eu = getelementptr i8, ptr %0, i64 902
  %i.ev = load i16, ptr %i.eu, align 2
  %i.ew = zext i16 %i.ev to i64
  %i.ex = mul nuw nsw i64 %i.ew, %i.et
  %i.ey = getelementptr i8, ptr %0, i64 908
  %i.ez = load i16, ptr %i.ey, align 4
  %i.fa = zext i16 %i.ez to i64
  %i.fb = mul nuw nsw i64 %i.ex, %i.fa
  %i.fc = and i64 %i.fb, 4294967295
  br label %ata_id_n_sectors.exit.i

ata_id_n_sectors.exit.i:                          ; preds = %ata_id_current_chs_valid.exit.thread.i.i, %bb.ab, %ata_id_has_lba48.exit.thread.i.i, %bb.x
  %.0.i.i237 = phi i64 [ %i.fc, %ata_id_current_chs_valid.exit.thread.i.i ], [ %i.ea, %ata_id_has_lba48.exit.thread.i.i ], [ %i.eq, %bb.ab ], [ %i.dv, %bb.x ] ; 7 uses
  %i.fd = load i32, ptr %i.k, align 8
  switch i32 %i.fd, label %ata_hpa_resize.exit.thread [
    i32 1, label %bb.ac
    i32 9, label %bb.ac
  ]

bb.ac:                                            ; preds = %ata_id_n_sectors.exit.i, %ata_id_n_sectors.exit.i
  br i1 %.not.i.i236, label %ata_hpa_resize.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fe = getelementptr i8, ptr %0, i64 1062
  %i.ff = load i16, ptr %i.fe, align 2
  %.fr.i = freeze i16 %i.ff                       ; 2 uses
  %i.fg = and i16 %.fr.i, -16384
  %.not.i76.i = icmp eq i16 %i.fg, 16384
  br i1 %.not.i76.i, label %bb.ae, label %ata_hpa_resize.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.fh = getelementptr i8, ptr %0, i64 1070
  %i.fi = load i16, ptr %i.fh, align 2
  %i.fj = and i16 %i.fi, -16384
  %.not5.i.i = icmp eq i16 %i.fj, 16384
  br i1 %.not5.i.i, label %bb.af, label %ata_hpa_resize.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.fk = getelementptr i8, ptr %0, i64 1066
  %i.fl = load i16, ptr %i.fk, align 2
  %i.fm = and i16 %i.fl, 1024
  %i.fn = icmp eq i16 %i.fm, 0
  br i1 %i.fn, label %ata_hpa_resize.exit.thread, label %ata_id_hpa_enabled.exit.i

ata_id_hpa_enabled.exit.i:                        ; preds = %bb.af
  %i.fo = getelementptr i8, ptr %0, i64 1060
  %i.fp = load i16, ptr %i.fo, align 4
  %i.fq = and i16 %i.fp, 1024
  %.not96.i = icmp eq i16 %i.fq, 0
  br i1 %.not96.i, label %ata_hpa_resize.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %ata_id_hpa_enabled.exit.i
  %i.fr = load i64, ptr %i.n, align 16
  %i.fs = and i64 %i.fr, 8
  %.not70.i = icmp eq i64 %i.fs, 0
  br i1 %.not70.i, label %bb.ah, label %ata_hpa_resize.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.ft = getelementptr i8, ptr %0, i64 1152
  %i.fu = load i16, ptr %i.ft, align 64
  %i.fv = and i16 %i.fu, 7
  %i.fw = icmp eq i16 %i.fv, 7
  br i1 %i.fw, label %ata_hpa_resize.exit.thread, label %ata_id_has_lba48.exit.i.i

ata_id_has_lba48.exit.i.i:                        ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.fx = getelementptr i8, ptr %0, i64 1096
  %i.fy = load i64, ptr %i.fx, align 8
  %.not7.i.i81.i = icmp ne i64 %i.fy, 0
  %i.fz = and i16 %.fr.i, 1024
  %i.ga = icmp ne i16 %i.fz, 0
  %.0.i.i.i = and i1 %i.ga, %.not7.i.i81.i        ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, i8 0, i64 24, i1 false)
  %i.gc = load ptr, ptr %.val.i234, align 64
  %i.gd = getelementptr i8, ptr %i.gc, i64 168
  %i.ge = load i8, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.ge, ptr %i.gf, align 1
  %i.gg = load i32, ptr %i.q, align 8
  %i.gh = icmp eq i32 %i.gg, 0
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %.sink.i = select i1 %.0.i.i.i, i64 7, i64 6
  %i.gj = select i1 %.0.i.i.i, i8 39, i8 -8
  store i64 %.sink.i, ptr %1, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 %i.gj, ptr %i.gk, align 1
  %i.gl = select i1 %i.gh, i8 -32, i8 -16
  store i8 %i.gl, ptr %i.gi, align 4
  %i.gm = call i32 @ata_exec_internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 0) #34 ; 3 uses
  %.not.i79.i = icmp eq i32 %i.gm, 0
  br i1 %.not.i79.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %ata_id_has_lba48.exit.i.i
  %i.gn = load ptr, ptr %0, align 64              ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 64
  %i.gp = getelementptr i8, ptr %i.go, i64 36
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = getelementptr i8, ptr %i.gn, i64 8
  %i.gs = load i32, ptr %i.gr, align 8
  %i.gt = load i32, ptr %i.q, align 8
  %i.gu = add i32 %i.gt, %i.gs
  %i.gv = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.297, i32 noundef %i.gq, i32 noundef %i.gu, i32 noundef %i.gm) #32 ; 0 uses
  %i.gw = icmp eq i32 %i.gm, 1
  br i1 %i.gw, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.gy = load i8, ptr %i.gx, align 1
  %i.gz = and i8 %i.gy, 4
  %.not17.i.i = icmp eq i8 %i.gz, 0
  br i1 %.not17.i.i, label %bb.an, label %.thread.i

.thread.i:                                        ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %ata_hpa_resize.exit

bb.ak:                                            ; preds = %ata_id_has_lba48.exit.i.i
  br i1 %.0.i.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.hb = load i16, ptr %i.ha, align 1
  %2 = zext i16 %i.hb to i64
  %3 = shl nuw nsw i64 %2, 32
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i64
  %7 = shl nuw nsw i64 %6, 24
  %8 = or disjoint i64 %7, %3
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 19
  %10 = load i8, ptr %9, align 1
  %i.hc = zext i8 %10 to i64
  %i.hd = shl nuw nsw i64 %i.hc, 16
  %11 = or disjoint i64 %8, %i.hd
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.hf = load i8, ptr %i.he, align 2
  %i.hg = zext i8 %i.hf to i64
  %i.hh = shl nuw nsw i64 %i.hg, 8
  %12 = or disjoint i64 %11, %i.hh
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 17
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i64
  %i.hi = or disjoint i64 %12, %15
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.hj = load i8, ptr %i.gi, align 4
  %i.hk = and i8 %i.hj, 15
  %16 = zext nneg i8 %i.hk to i64
  %17 = shl nuw nsw i64 %16, 24
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 19
  %19 = load i8, ptr %18, align 1
  %i.hl = zext i8 %19 to i64
  %i.hm = shl nuw nsw i64 %i.hl, 16
  %20 = or disjoint i64 %17, %i.hm
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 17
  %22 = load i16, ptr %21, align 1
  %23 = zext i16 %22 to i64
  %24 = or disjoint i64 %20, %23
  br label %bb.ao

bb.an:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %i.dm, label %ata_hpa_resize.exit.thread273, label %ata_hpa_resize.exit

bb.ao:                                            ; preds = %bb.am, %bb.al
  %.sink.i.i = phi i64 [ %24, %bb.am ], [ %i.hi, %bb.al ]
  %i.hn = load i64, ptr %i.n, align 16
  %i.ho = lshr i64 %i.hn, 5
  %i.hp = and i64 %i.ho, 1
  %i.hq = xor i64 %i.hp, 1
  %spec.store.select.i.i = add nuw nsw i64 %i.hq, %.sink.i.i ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.hr = getelementptr i8, ptr %0, i64 832
  store i64 %spec.store.select.i.i, ptr %i.hr, align 64
  %i.hs = icmp ugt i64 %spec.store.select.i.i, %.0.i.i237 ; 2 uses
  %or.cond3.i = select i1 %i.hs, i1 %i.dm, i1 false
  br i1 %or.cond3.i, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ht = icmp eq i64 %spec.store.select.i.i, %.0.i.i237
  %or.cond75.i = select i1 %.not95.i, i1 true, i1 %i.ht
  br i1 %or.cond75.i, label %ata_hpa_resize.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.hs, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hu = load ptr, ptr %0, align 64              ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 64
  %i.hw = getelementptr i8, ptr %i.hv, i64 36
  %i.hx = load i32, ptr %i.hw, align 4
  %i.hy = getelementptr i8, ptr %i.hu, i64 8
  %i.hz = load i32, ptr %i.hy, align 8
  %i.ia = load i32, ptr %i.q, align 8
  %i.ib = add i32 %i.ia, %i.hz
  %i.ic = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.292, i32 noundef %i.hx, i32 noundef %i.ib, i64 noundef %.0.i.i237, i64 noundef %spec.store.select.i.i) #32 ; 0 uses
  br label %ata_hpa_resize.exit.thread

bb.as:                                            ; preds = %bb.aq
  %i.id = icmp ult i64 %spec.store.select.i.i, %.0.i.i237
  br i1 %i.id, label %bb.at, label %ata_hpa_resize.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.ie = load ptr, ptr %0, align 64              ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 64
  %i.ig = getelementptr i8, ptr %i.if, i64 36
  %i.ih = load i32, ptr %i.ig, align 4
  %i.ii = getelementptr i8, ptr %i.ie, i64 8
  %i.ij = load i32, ptr %i.ii, align 8
  %i.ik = load i32, ptr %i.q, align 8
  %i.il = add i32 %i.ik, %i.ij
  %i.im = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.293, i32 noundef %i.ih, i32 noundef %i.il, i64 noundef %spec.store.select.i.i, i64 noundef %.0.i.i237) #32 ; 0 uses
  br label %ata_hpa_resize.exit.thread

bb.au:                                            ; preds = %bb.ao
  %i.in = tail call fastcc i32 @ata_set_max_sectors(ptr noundef %0, i64 noundef %spec.store.select.i.i) #34, !srcloc !114 ; 2 uses
  switch i32 %i.in, label %ata_hpa_resize.exit.thread273 [
    i32 -13, label %bb.av
    i32 0, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %i.io = load ptr, ptr %0, align 64              ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 64
  %i.iq = getelementptr i8, ptr %i.ip, i64 36
  %i.ir = load i32, ptr %i.iq, align 4
  %i.is = getelementptr i8, ptr %i.io, i64 8
  %i.it = load i32, ptr %i.is, align 8
  %i.iu = load i32, ptr %i.q, align 8
  %i.iv = add i32 %i.iu, %i.it
  %i.iw = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.294, i32 noundef %i.ir, i32 noundef %i.iv, i64 noundef %.0.i.i237, i64 noundef %spec.store.select.i.i) #32 ; 0 uses
  %i.ix = load i64, ptr %i.n, align 16
  %i.iy = or i64 %i.ix, 8
  store i64 %i.iy, ptr %i.n, align 16
  br label %ata_hpa_resize.exit.thread

bb.aw:                                            ; preds = %bb.au
  %i.iz = tail call i32 @ata_dev_reread_id(ptr noundef %0, i32 noundef 0) #34 ; 2 uses
  %.not73.i = icmp eq i32 %i.iz, 0
  br i1 %.not73.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ja = load ptr, ptr %0, align 64              ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 64
  %i.jc = getelementptr i8, ptr %i.jb, i64 36
  %i.jd = load i32, ptr %i.jc, align 4
  %i.je = getelementptr i8, ptr %i.ja, i64 8
  %i.jf = load i32, ptr %i.je, align 8
  %i.jg = load i32, ptr %i.q, align 8
  %i.jh = add i32 %i.jg, %i.jf
  %i.ji = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.295, i32 noundef %i.jd, i32 noundef %i.jh) #32 ; 0 uses
  br label %ata_hpa_resize.exit.thread273

bb.ay:                                            ; preds = %bb.aw
  br i1 %.not95.i, label %ata_hpa_resize.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jj = tail call fastcc i64 @ata_id_n_sectors(ptr noundef %i.j) #34, !srcloc !115
  %i.jk = load ptr, ptr %0, align 64              ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 64
  %i.jm = getelementptr i8, ptr %i.jl, i64 36
  %i.jn = load i32, ptr %i.jm, align 4
  %i.jo = getelementptr i8, ptr %i.jk, i64 8
  %i.jp = load i32, ptr %i.jo, align 8
  %i.jq = load i32, ptr %i.q, align 8
  %i.jr = add i32 %i.jq, %i.jp
  %i.js = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.296, i32 noundef %i.jn, i32 noundef %i.jr, i64 noundef %.0.i.i237, i64 noundef %i.jj, i64 noundef %spec.store.select.i.i) #32 ; 0 uses
  br label %ata_hpa_resize.exit.thread

ata_hpa_resize.exit:                              ; preds = %.thread.i, %bb.an
  %.not204 = phi i1 [ true, %.thread.i ], [ false, %bb.an ]
  %spec.select94.i = phi i32 [ 0, %.thread.i ], [ -5, %bb.an ]
  %i.jt = load ptr, ptr %0, align 64              ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 64
  %i.jv = getelementptr i8, ptr %i.ju, i64 36
  %i.jw = load i32, ptr %i.jv, align 4
  %i.jx = getelementptr i8, ptr %i.jt, i64 8
  %i.jy = load i32, ptr %i.jx, align 8
  %i.jz = load i32, ptr %i.q, align 8
  %i.ka = add i32 %i.jz, %i.jy
  %i.kb = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.291, i32 noundef %i.jw, i32 noundef %i.ka) #32 ; 0 uses
  %i.kc = load i64, ptr %i.n, align 16
  %i.kd = or i64 %i.kc, 8
  store i64 %i.kd, ptr %i.n, align 16
  br i1 %.not204, label %ata_hpa_resize.exit.thread, label %ata_hpa_resize.exit.thread273

ata_hpa_resize.exit.thread:                       ; preds = %bb.ae, %bb.ad, %bb.af, %bb.ay, %bb.az, %bb.at, %bb.as, %ata_id_hpa_enabled.exit.i, %bb.ag, %bb.ah, %ata_id_n_sectors.exit.i, %bb.ar, %bb.av, %bb.ac, %bb.ap, %ata_hpa_resize.exit
  %i.ke = getelementptr i8, ptr %0, i64 24        ; 11 uses
  %i.kf = load i64, ptr %i.ke, align 8
  %i.kg = and i64 %i.kf, -16384
  store i64 %i.kg, ptr %i.ke, align 8
  %i.kh = getelementptr i8, ptr %0, i64 868       ; 7 uses
  store i32 0, ptr %i.kh, align 4
  %i.ki = getelementptr i8, ptr %0, i64 872       ; 3 uses
  store i32 0, ptr %i.ki, align 8
  %i.kj = getelementptr i8, ptr %0, i64 824       ; 3 uses
  store i64 0, ptr %i.kj, align 8
  %i.kk = getelementptr i8, ptr %0, i64 888
  store i16 0, ptr %i.kk, align 8
  %i.kl = getelementptr i8, ptr %0, i64 890
  store i16 0, ptr %i.kl, align 2
  %i.km = getelementptr i8, ptr %0, i64 892
  store i16 0, ptr %i.km, align 4
  %i.kn = getelementptr i8, ptr %0, i64 864       ; 2 uses
  store i32 0, ptr %i.kn, align 32
  %i.ko = getelementptr i8, ptr %0, i64 1002
  %i.kp = load i16, ptr %i.ko, align 2            ; 2 uses
  %i.kq = and i16 %i.kp, 2
  %.not.i240 = icmp eq i16 %i.kq, 0
  br i1 %.not.i240, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %ata_hpa_resize.exit.thread
  %i.kr = getelementptr i8, ptr %0, i64 1024
  %i.ks = load i16, ptr %i.kr, align 64
  %i.kt = shl i16 %i.ks, 3
  %i.ku = and i16 %i.kt, 24
  %i.kv = or disjoint i16 %i.ku, 7
  %i.kw = zext nneg i16 %i.kv to i32
  br label %bb.bc

bb.bb:                                            ; preds = %ata_hpa_resize.exit.thread
  %i.kx = getelementptr i8, ptr %0, i64 998
  %i.ky = load i16, ptr %i.kx, align 2            ; 2 uses
  %i.kz = icmp ult i16 %i.ky, 1280
  %i.la = lshr i16 %i.ky, 8
  %i.lb = zext nneg i16 %i.la to i32
  %i.lc = shl nuw nsw i32 2, %i.lb
  %i.ld = add nsw i32 %i.lc, -1
  %.024.i = select i1 %i.kz, i32 %i.ld, i32 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.125.i = phi i32 [ %i.kw, %bb.ba ], [ %.024.i, %bb.bb ] ; 3 uses
  %i.le = getelementptr i8, ptr %0, i64 1022
  %i.lf = load i16, ptr %i.le, align 2
  %i.lg = and i16 %i.lf, 7
  %i.lh = zext nneg i16 %i.lg to i32              ; 3 uses
  %i.li = load i16, ptr %i.j, align 64            ; 3 uses
  switch i16 %i.li, label %ata_id_is_cfa.exit.i [
    i16 -31606, label %ata_id_is_cfa.exit.thread.i
    i16 -31670, label %ata_id_is_cfa.exit.thread.i
  ]

ata_id_is_cfa.exit.i:                             ; preds = %bb.bc
  %i.lj = getelementptr i8, ptr %0, i64 1062
  %i.lk = load i16, ptr %i.lj, align 2
  %i.ll = and i16 %i.lk, -16380
  %i.lm = icmp eq i16 %i.ll, 16388
  br i1 %i.lm, label %ata_id_is_cfa.exit.thread.i, label %bb.bd

ata_id_is_cfa.exit.thread.i:                      ; preds = %ata_id_is_cfa.exit.i, %bb.bc, %bb.bc
  %i.ln = getelementptr i8, ptr %0, i64 1222
  %i.lo = load i16, ptr %i.ln, align 2
  %i.lp = zext i16 %i.lo to i32                   ; 2 uses
  %i.lq = and i32 %i.lp, 7                        ; 2 uses
  %i.lr = lshr i32 %i.lp, 3
  %i.ls = and i32 %i.lr, 7                        ; 2 uses
  %.not28.i = icmp eq i32 %i.lq, 0
  %i.lt = or i32 %.125.i, 32
  %spec.select.i = select i1 %.not28.i, i32 %.125.i, i32 %i.lt ; 2 uses
  %i.lu = icmp samesign ugt i32 %i.lq, 1
  %i.lv = or i32 %spec.select.i, 64
  %.3.i = select i1 %i.lu, i32 %i.lv, i32 %spec.select.i
  %.not29.i = icmp eq i32 %i.ls, 0
  %i.lw = or disjoint i32 %i.lh, 8
  %.023.i = select i1 %.not29.i, i32 %i.lh, i32 %i.lw ; 2 uses
  %i.lx = icmp samesign ugt i32 %i.ls, 1
  %i.ly = or disjoint i32 %.023.i, 16
  %.1.i = select i1 %i.lx, i32 %i.ly, i32 %.023.i
  br label %bb.bd

end_hunk_3
