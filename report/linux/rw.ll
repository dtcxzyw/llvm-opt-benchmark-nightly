Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/rw?download=true
inline.NumInlined: 224
inline.NumDeleted: 122
begin_hunk_0_@io_req_io_end:bb.a
  %i.q = trunc nuw i8 %i.o to i1
  br i1 %i.q, label %bb.g, label %io_req_end_write.exit, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.r = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.s = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.r) #12, !srcloc !35
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.s)
  br label %io_req_end_write.exit

io_req_end_write.exit:                            ; preds = %bb.b, %bb.f, %bb.g
  %i.t = load ptr, ptr %0, align 8                ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, 100663296
  %i.x = icmp eq i32 %i.w, 33554432
  br i1 %i.x, label %fsnotify_modify.exit, label %bb.h

bb.h:                                             ; preds = %io_req_end_write.exit
  %i.y = getelementptr i8, ptr %i.t, i64 64       ; 2 uses
  %i.z = getelementptr i8, ptr %i.t, i64 72
  %i.aa = load ptr, ptr %i.z, align 8             ; 5 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 48
  %.val.i.i.i.i = load ptr, ptr %i.ab, align 8    ; 3 uses
  %i.ac = getelementptr i8, ptr %.val.i.i.i.i, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 904
  %i.af = load volatile ptr, ptr %i.ae, align 8   ; 2 uses
  %.not.i.i.i.i.i.i5 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i5, label %fsnotify_modify.exit, label %fsnotify_sb_has_watchers.exit.i.i.i.i

fsnotify_sb_has_watchers.exit.i.i.i.i:            ; preds = %bb.h
  %i.ag = getelementptr i8, ptr %i.af, i64 32
  %i.ah = load volatile i64, ptr %i.ag, align 8
  %.not18.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not18.i.i.i.i, label %fsnotify_modify.exit, label %bb.i

bb.i:                                             ; preds = %fsnotify_sb_has_watchers.exit.i.i.i.i
  %i.ai = load i16, ptr %.val.i.i.i.i, align 8
  %i.aj = and i16 %i.ai, -4096
  %i.ak = icmp eq i16 %i.aj, 16384
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr %i.aa, align 8
  %i.am = and i32 %i.al, 8192
  %.not.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.015.i.i.i.i = phi i32 [ 1073741826, %bb.j ], [ 2, %bb.i ] ; 2 uses
  %i.an = getelementptr i8, ptr %i.aa, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq ptr %i.aa, %i.ao
  br i1 %i.ap, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = tail call i32 @__fsnotify_parent(ptr noundef %i.aa, i32 noundef %.015.i.i.i.i, ptr noundef %i.y, i32 noundef 2) #13 ; 0 uses
  br label %fsnotify_modify.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  %.1.i.i.i.i = phi i32 [ %.015.i.i.i.i, %bb.k ], [ 1073741826, %bb.j ]
  %i.ar = tail call i32 @fsnotify(i32 noundef %.1.i.i.i.i, ptr noundef %i.y, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef %.val.i.i.i.i, i32 noundef 0) #13 ; 0 uses
  br label %fsnotify_modify.exit

bb.n:                                             ; preds = %bb.a
  %i.as = load ptr, ptr %0, align 8               ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4
  %i.av = and i32 %i.au, 100663296
  %i.aw = icmp eq i32 %i.av, 33554432
  br i1 %i.aw, label %fsnotify_modify.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr i8, ptr %i.as, i64 64     ; 2 uses
  %i.ay = getelementptr i8, ptr %i.as, i64 72
  %i.az = load ptr, ptr %i.ay, align 8            ; 5 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 48
  %.val.i.i.i.i6 = load ptr, ptr %i.ba, align 8   ; 3 uses
  %i.bb = getelementptr i8, ptr %.val.i.i.i.i6, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr i8, ptr %i.bc, i64 904
  %i.be = load volatile ptr, ptr %i.bd, align 8   ; 2 uses
  %.not.i.i.i.i.i.i7 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i7, label %fsnotify_modify.exit, label %fsnotify_sb_has_watchers.exit.i.i.i.i8

fsnotify_sb_has_watchers.exit.i.i.i.i8:           ; preds = %bb.o
  %i.bf = getelementptr i8, ptr %i.be, i64 32
  %i.bg = load volatile i64, ptr %i.bf, align 8
  %.not18.i.i.i.i9 = icmp eq i64 %i.bg, 0
  br i1 %.not18.i.i.i.i9, label %fsnotify_modify.exit, label %bb.p

bb.p:                                             ; preds = %fsnotify_sb_has_watchers.exit.i.i.i.i8
  %i.bh = load i16, ptr %.val.i.i.i.i6, align 8
  %i.bi = and i16 %i.bh, -4096
  %i.bj = icmp eq i16 %i.bi, 16384
  br i1 %i.bj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bk = load i32, ptr %i.az, align 8
  %i.bl = and i32 %i.bk, 8192
  %.not.i.i.i.i12 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i.i12, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.015.i.i.i.i10 = phi i32 [ 1073741825, %bb.q ], [ 1, %bb.p ] ; 2 uses
  %i.bm = getelementptr i8, ptr %i.az, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = icmp eq ptr %i.az, %i.bn
  br i1 %i.bo, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = tail call i32 @__fsnotify_parent(ptr noundef %i.az, i32 noundef %.015.i.i.i.i10, ptr noundef %i.ax, i32 noundef 2) #13 ; 0 uses
  br label %fsnotify_modify.exit

bb.t:                                             ; preds = %bb.r, %bb.q
  %.1.i.i.i.i11 = phi i32 [ %.015.i.i.i.i10, %bb.r ], [ 1073741825, %bb.q ]
  %i.bq = tail call i32 @fsnotify(i32 noundef %.1.i.i.i.i11, ptr noundef %i.ax, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef %.val.i.i.i.i6, i32 noundef 0) #13 ; 0 uses
  br label %fsnotify_modify.exit

fsnotify_modify.exit:                             ; preds = %bb.t, %bb.s, %fsnotify_sb_has_watchers.exit.i.i.i.i8, %bb.o, %bb.n, %bb.m, %bb.l, %fsnotify_sb_has_watchers.exit.i.i.i.i, %bb.h, %io_req_end_write.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @io_req_task_complete(ptr, i8) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @io_read(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.io_br_sel, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = call fastcc i32 @__io_read(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %1) #11, !srcloc !36 ; 4 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %i.d = call fastcc i32 @kiocb_done(ptr noundef %0, i64 noundef %i.c, ptr noundef nonnull %2, i32 noundef %1) #11, !srcloc !37
  br label %io_fixup_restart_res.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 5 uses
  %i.g = and i64 %i.f, 34359738368
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %io_kbuf_recycle.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %2, align 8
  %i.i = and i64 %i.f, 17179869184
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.e, label %io_kbuf_recycle.exit

bb.e:                                             ; preds = %bb.d
  %i.j = and i64 %i.f, 131072
  %.not7.i = icmp eq i64 %i.j, 0
  br i1 %.not7.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i.not.i, label %io_kbuf_recycle.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = and i64 %i.f, -51539738625
  store i64 %i.k, ptr %i.e, align 8
  br label %io_kbuf_recycle.exit

bb.h:                                             ; preds = %bb.e
  %i.l = and i64 %i.f, 65536
  %.not8.i = icmp eq i64 %i.l, 0
  br i1 %.not8.i, label %io_kbuf_recycle.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = tail call zeroext i1 @io_kbuf_recycle_legacy(ptr noundef %0, i32 noundef %1) #13 ; 0 uses
  br label %io_kbuf_recycle.exit

io_kbuf_recycle.exit:                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  %switch.tableidx = add nsw i32 %i.a, 516        ; 2 uses
  %i.n = icmp ult i32 %switch.tableidx, 5
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.n, i1 %switch.lobit, i1 false
  %spec.select = select i1 %or.cond, i32 -4, i32 %i.a
  br label %io_fixup_restart_res.exit

io_fixup_restart_res.exit:                        ; preds = %io_kbuf_recycle.exit, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %spec.select, %io_kbuf_recycle.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @__io_read(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.poll_table_struct, align 8  ; 7 uses
  %i.a = icmp slt i32 %2, 0                       ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 184        ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 21 uses
  %i.d = getelementptr i8, ptr %0, i64 72         ; 12 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = and i64 %i.e, 549755813888
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.c, i64 24
  %i.j = tail call i32 @io_import_reg_vec(i32 noundef 0, ptr noundef %i.i, ptr noundef %0, ptr noundef %i.c, i32 noundef %i.h, i32 noundef %2) #13 ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %io_rw_import_reg_vec.exit.thread, label %io_rw_import_reg_vec.exit, !prof !12

io_rw_import_reg_vec.exit.thread:                 ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.c, i64 64
  %i.l = getelementptr i8, ptr %i.c, i64 32
  %i.m = load i64, ptr %i.l, align 8
  store i64 %i.m, ptr %i.k, align 8
  %i.n = getelementptr i8, ptr %i.c, i64 48
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.c, i64 72
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %i.c, i64 56
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.c, i64 80
  store i64 %i.r, ptr %i.s, align 8
  %i.t = load i64, ptr %i.d, align 8
  %i.u = and i64 %i.t, -549755813889
  store i64 %i.u, ptr %i.d, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.v = and i64 %i.e, 196640
  %.0.i = icmp eq i64 %i.v, 32
  br i1 %.0.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = tail call fastcc i32 @io_import_rw_buffer(i32 noundef 0, ptr noundef %0, ptr noundef %i.c, ptr noundef %1, i32 noundef %2) #11, !srcloc !38 ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %io_rw_import_reg_vec.exit, label %bb.e, !prof !19

bb.e:                                             ; preds = %io_rw_import_reg_vec.exit.thread, %bb.c, %bb.d
  %i.y = tail call fastcc i32 @io_rw_init_file(ptr noundef %0, i32 noundef 1, i32 noundef 0) #11, !srcloc !39 ; 2 uses
  %.not84 = icmp eq i32 %i.y, 0
  br i1 %.not84, label %bb.f, label %io_rw_import_reg_vec.exit, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr i8, ptr %i.c, i64 24       ; 7 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 48      ; 3 uses
  %.val98 = load i64, ptr %i.aa, align 8
  %i.ab = trunc i64 %.val98 to i32
  %i.ac = getelementptr i8, ptr %0, i64 88        ; 4 uses
  store i32 %i.ab, ptr %i.ac, align 8
  br i1 %i.a, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ad = load i64, ptr %i.d, align 8             ; 3 uses
  %i.ae = and i64 %i.ad, 536870912
  %.not.i99 = icmp eq i64 %i.ae, 0
  br i1 %.not.i99, label %bb.h, label %io_file_supports_nowait.exit.thread123

bb.h:                                             ; preds = %bb.g
  %i.af = and i64 %i.ad, 4294967296
  %.not.i.i = icmp eq i64 %i.af, 0
  %.pre.i = load ptr, ptr %0, align 8             ; 4 uses
  br i1 %.not.i.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not6.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not6.i.i, label %io_rw_import_reg_vec.exit, label %bb.j, !prof !40

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr i8, ptr %.pre.i, i64 8
  %.val.i.i = load ptr, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %.val.i.i, i64 72
  %.val.val.i.i = load ptr, ptr %i.ah, align 8
  %.not7.i.i = icmp eq ptr %.val.val.i.i, null
  br i1 %.not7.i.i, label %io_rw_import_reg_vec.exit, label %bb.k, !prof !40

bb.k:                                             ; preds = %bb.j
  %i.ai = or disjoint i64 %i.ad, 4294967296
  store i64 %i.ai, ptr %i.d, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %3, align 8
  store i32 1, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr i8, ptr %.pre.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr i8, ptr %i.am, i64 72
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not.i5.i = icmp eq ptr %i.ao, null
  br i1 %.not.i5.i, label %io_file_supports_nowait.exit.thread125, label %io_file_supports_nowait.exit, !prof !19

io_file_supports_nowait.exit.thread125:           ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %io_file_supports_nowait.exit.thread123

io_file_supports_nowait.exit:                     ; preds = %bb.l
  %i.ap = call i32 %i.ao(ptr noundef %.pre.i, ptr noundef nonnull %3) #13, !inline_history !41
  %i.aq = and i32 %i.ap, 1
  %.not131 = icmp eq i32 %i.aq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br i1 %.not131, label %io_rw_import_reg_vec.exit, label %io_file_supports_nowait.exit.thread123, !prof !42

io_file_supports_nowait.exit.thread123:           ; preds = %bb.g, %io_file_supports_nowait.exit.thread125, %io_file_supports_nowait.exit
  %i.ar = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = or i32 %i.as, 8
  store i32 %i.at, ptr %i.ar, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  %i.au = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = and i32 %i.av, -9
  store i32 %i.aw, ptr %i.au, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %io_file_supports_nowait.exit.thread123
  %i.ax = getelementptr i8, ptr %0, i64 8         ; 4 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %.not.i101 = icmp eq i64 %i.ay, -1
  %.pre = load ptr, ptr %0, align 8               ; 3 uses
  br i1 %.not.i101, label %bb.o, label %io_kiocb_update_pos.exit

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr i8, ptr %.pre, i64 4
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = and i32 %i.ba, 2097152
  %.not10.i = icmp eq i32 %i.bb, 0
  br i1 %.not10.i, label %bb.p, label %.sink.split.i

bb.p:                                             ; preds = %bb.o
  %i.bc = load i64, ptr %i.d, align 8
  %i.bd = or i64 %i.bc, 1024
  store i64 %i.bd, ptr %i.d, align 8
  %i.be = getelementptr i8, ptr %.pre, i64 104
  %i.bf = load i64, ptr %i.be, align 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.p, %bb.o
  %.sink.i = phi i64 [ %i.bf, %bb.p ], [ 0, %bb.o ]
  %.0.ph.i = phi ptr [ %i.ax, %bb.p ], [ null, %bb.o ]
  store i64 %.sink.i, ptr %i.ax, align 8
  br label %io_kiocb_update_pos.exit

io_kiocb_update_pos.exit:                         ; preds = %bb.n, %.sink.split.i
  %.0.i102 = phi ptr [ %i.ax, %bb.n ], [ %.0.ph.i, %.sink.split.i ]
  %i.bg = load i32, ptr %i.ac, align 8
  %i.bh = sext i32 %i.bg to i64
  %i.bi = call i32 @rw_verify_area(i32 noundef 0, ptr noundef %.pre, ptr noundef %.0.i102, i64 noundef %i.bh) #13 ; 2 uses
  %.not85 = icmp eq i32 %i.bi, 0
  br i1 %.not85, label %bb.q, label %io_rw_import_reg_vec.exit, !prof !12

bb.q:                                             ; preds = %io_kiocb_update_pos.exit
  %i.bj = load ptr, ptr %0, align 8
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %.not.i103 = icmp eq ptr %i.bn, null
  br i1 %.not.i103, label %bb.s, label %bb.r, !prof !19

bb.r:                                             ; preds = %bb.q
  %i.bo = call i64 %i.bn(ptr noundef %0, ptr noundef %i.z) #13, !inline_history !43
  %i.bp = trunc i64 %i.bo to i32
  br label %io_iter_do_read.exit

bb.s:                                             ; preds = %bb.q
  %i.bq = getelementptr i8, ptr %i.bl, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  %.not9.i = icmp eq ptr %i.br, null
  br i1 %.not9.i, label %io_iter_do_read.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = call fastcc i64 @loop_rw_iter(i32 noundef 0, ptr noundef %0, ptr noundef %i.z) #11, !srcloc !44
  %i.bt = trunc i64 %i.bs to i32
  br label %io_iter_do_read.exit

io_iter_do_read.exit:                             ; preds = %bb.r, %bb.s, %bb.t
  %.0.i104 = phi i32 [ %i.bp, %bb.r ], [ %i.bt, %bb.t ], [ -22, %bb.s ] ; 2 uses
  %i.bu = sext i32 %.0.i104 to i64                ; 2 uses
  %i.bv = icmp eq i32 %.0.i104, -95
  %or.cond = and i1 %i.a, %i.bv
  %spec.store.select = select i1 %or.cond, i64 -11, i64 %i.bu ; 4 uses
  switch i64 %spec.store.select, label %bb.y [
    i64 -11, label %bb.u
    i64 -529, label %io_rw_import_reg_vec.exit
  ]

bb.u:                                             ; preds = %io_iter_do_read.exit
  %i.bw = load i64, ptr %i.d, align 8             ; 4 uses
  %i.bx = and i64 %i.bw, 4294967296
  %.not.i105 = icmp eq i64 %i.bx, 0
  br i1 %.not.i105, label %bb.v, label %io_rw_import_reg_vec.exit

bb.v:                                             ; preds = %bb.u
  %i.by = load ptr, ptr %0, align 8               ; 2 uses
  %.not6.i = icmp eq ptr %i.by, null
  br i1 %.not6.i, label %io_file_can_poll.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %.val.i = load ptr, ptr %i.bz, align 8
  %i.ca = getelementptr i8, ptr %.val.i, i64 72
  %.val.val.i = load ptr, ptr %i.ca, align 8
  %.not7.i = icmp eq ptr %.val.val.i, null
  br i1 %.not7.i, label %io_file_can_poll.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = or disjoint i64 %i.bw, 4294967296
  store i64 %i.cb, ptr %i.d, align 8
  br label %io_rw_import_reg_vec.exit

io_file_can_poll.exit:                            ; preds = %bb.w, %bb.v
  %.not153 = icmp slt i32 %2, 0
  %i.cc = and i64 %i.bw, 2199023255552
  %.not91 = icmp ne i64 %i.cc, 0
  %or.cond154.not156 = or i1 %.not153, %.not91
  %i.cd = and i64 %i.bw, 2048
  %.not92 = icmp eq i64 %i.cd, 0
  %or.cond155 = and i1 %or.cond154.not156, %.not92
  br i1 %or.cond155, label %bb.ad, label %io_rw_import_reg_vec.exit

bb.y:                                             ; preds = %io_iter_do_read.exit
  %i.ce = load i32, ptr %i.ac, align 8
  %i.cf = sext i32 %i.ce to i64
  %i.cg = icmp ne i64 %spec.store.select, %i.cf
  %i.ch = icmp sgt i64 %spec.store.select, 0
  %or.cond3.not88 = and i1 %i.ch, %i.cg
  %or.cond5 = and i1 %i.a, %or.cond3.not88
  br i1 %or.cond5, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.ci = load i64, ptr %i.d, align 8             ; 2 uses
  %i.cj = and i64 %i.ci, 2048
  %.not89 = icmp eq i64 %i.cj, 0
  br i1 %.not89, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ck = and i64 %i.ci, 1073741824
  %.not.i107 = icmp eq i64 %i.ck, 0
  br i1 %.not.i107, label %bb.ab, label %need_complete_io.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cl = load ptr, ptr %0, align 8
  %i.cm = getelementptr i8, ptr %i.cl, i64 32
  %.val.i108 = load ptr, ptr %i.cm, align 8
  %i.cn = load i16, ptr %.val.i108, align 8
  %i.co = and i16 %i.cn, -4096
  %i.cp = icmp eq i16 %i.co, 24576
  br label %need_complete_io.exit

need_complete_io.exit:                            ; preds = %bb.aa, %bb.ab
  %i.cq = phi i1 [ true, %bb.aa ], [ %i.cp, %bb.ab ]
  %i.cr = and i32 %2, 4
  %.not90 = icmp eq i32 %i.cr, 0
  %or.cond94 = and i1 %.not90, %i.cq
  br i1 %or.cond94, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %need_complete_io.exit, %bb.z, %bb.y
  %i.cs = trunc nsw i64 %spec.store.select to i32
  br label %io_rw_import_reg_vec.exit

bb.ad:                                            ; preds = %io_file_can_poll.exit, %need_complete_io.exit
  %.0 = phi i64 [ %i.bu, %need_complete_io.exit ], [ 0, %io_file_can_poll.exit ]
  %i.ct = getelementptr i8, ptr %i.c, i64 64      ; 3 uses
  call void @iov_iter_restore(ptr noundef %i.z, ptr noundef %i.ct) #13
  %i.cu = getelementptr i8, ptr %0, i64 32        ; 7 uses
  %.val = load i32, ptr %i.cu, align 8
  %i.cv = and i32 %.val, 8388608
  %.not.i109 = icmp eq i32 %i.cv, 0
  br i1 %.not.i109, label %io_meta_restore.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cw = getelementptr i8, ptr %i.c, i64 168
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr i8, ptr %i.c, i64 120
  store i64 %i.cy, ptr %i.cz, align 8
  %i.da = getelementptr i8, ptr %i.c, i64 128
  %i.db = getelementptr i8, ptr %i.c, i64 176
  call void @iov_iter_restore(ptr noundef %i.da, ptr noundef %i.db) #13
  br label %io_meta_restore.exit

io_meta_restore.exit:                             ; preds = %bb.ad, %bb.ae
  %i.dc = getelementptr i8, ptr %i.c, i64 16      ; 2 uses
  %i.dd = getelementptr i8, ptr %i.c, i64 32
  %i.de = getelementptr i8, ptr %i.c, i64 72
  %i.df = getelementptr i8, ptr %i.c, i64 56
  %i.dg = getelementptr i8, ptr %i.c, i64 80
  %i.dh = getelementptr i8, ptr %0, i64 40
  br label %bb.af

bb.af:                                            ; preds = %io_iter_do_read.exit121.thread, %io_meta_restore.exit
  %.1 = phi i64 [ %.0, %io_meta_restore.exit ], [ %i.ew, %io_iter_do_read.exit121.thread ] ; 3 uses
  call void @iov_iter_advance(ptr noundef %i.z, i64 noundef %.1) #13
  %.val97 = load i64, ptr %i.aa, align 8          ; 2 uses
  %.not93 = icmp eq i64 %.val97, 0
  br i1 %.not93, label %bb.ap, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.di = load i64, ptr %i.dc, align 8
  %i.dj = add i64 %i.di, %.1
  store i64 %i.dj, ptr %i.dc, align 8
  %i.dk = load i64, ptr %i.dd, align 8
  store i64 %i.dk, ptr %i.ct, align 8
  store i64 %.val97, ptr %i.de, align 8
  %i.dl = load i64, ptr %i.df, align 8
  store i64 %i.dl, ptr %i.dg, align 8
  %i.dm = load ptr, ptr %i.b, align 8             ; 6 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 112
  %i.do = load i64, ptr %i.d, align 8             ; 3 uses
  %i.dp = and i64 %i.do, 274877908992
  %.not.i110 = icmp eq i64 %i.dp, 0
  %.pre137.pre = load i32, ptr %i.cu, align 8     ; 2 uses
  br i1 %.not.i110, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.dq = and i32 %.pre137.pre, 131073
  %.not18.i = icmp eq i32 %i.dq, 0
  %i.dr = and i64 %i.do, 4294967296
  %.not.i.i112 = icmp eq i64 %i.dr, 0
  %or.cond.i = and i1 %.not.i.i112, %.not18.i
  br i1 %or.cond.i, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.ds = load ptr, ptr %0, align 8               ; 2 uses
  %.not6.i.i113 = icmp eq ptr %i.ds, null
  br i1 %.not6.i.i113, label %.io_file_can_poll.exit_crit_edge.i, label %bb.aj

.io_file_can_poll.exit_crit_edge.i:               ; preds = %bb.ai
  %.pre.i117 = load ptr, ptr inttoptr (i64 8 to ptr), align 8
  br label %io_file_can_poll.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %.val.i.i114 = load ptr, ptr %i.dt, align 8     ; 2 uses
  %i.du = getelementptr i8, ptr %.val.i.i114, i64 72
  %.val.val.i.i115 = load ptr, ptr %i.du, align 8
  %.not7.i.i116 = icmp eq ptr %.val.val.i.i115, null
  br i1 %.not7.i.i116, label %io_file_can_poll.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dv = or disjoint i64 %i.do, 4294967296
  store i64 %i.dv, ptr %i.d, align 8
  br label %.loopexit

io_file_can_poll.exit.i:                          ; preds = %bb.aj, %.io_file_can_poll.exit_crit_edge.i
  %i.dw = phi ptr [ %.pre.i117, %.io_file_can_poll.exit_crit_edge.i ], [ %.val.i.i114, %bb.aj ]
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  %i.dy = load i32, ptr %i.dx, align 8
  %i.dz = and i32 %i.dy, 1
  %.not19.i = icmp eq i32 %i.dz, 0
  br i1 %.not19.i, label %.loopexit, label %bb.al

.loopexit:                                        ; preds = %bb.ag, %bb.ah, %io_file_can_poll.exit.i, %bb.ak
  %i.ea = and i32 %.pre137.pre, -524289
  store i32 %i.ea, ptr %i.cu, align 8
  br label %io_rw_import_reg_vec.exit

bb.al:                                            ; preds = %io_file_can_poll.exit.i
  %i.eb = getelementptr i8, ptr %i.dm, i64 128
  %i.ec = getelementptr i8, ptr %i.dm, i64 144
  store ptr @io_async_buf_func, ptr %i.ec, align 8
  %i.ed = getelementptr i8, ptr %i.dm, i64 136
  store ptr %0, ptr %i.ed, align 8
  store i32 0, ptr %i.eb, align 8
  %i.ee = getelementptr i8, ptr %i.dm, i64 152    ; 3 uses
  store volatile ptr %i.ee, ptr %i.ee, align 8
  %i.ef = getelementptr i8, ptr %i.dm, i64 160
  store volatile ptr %i.ee, ptr %i.ef, align 8
  %i.eg = load i32, ptr %i.cu, align 8
  %i.eh = and i32 %i.eg, -524297                  ; 2 uses
  %i.ei = or disjoint i32 %i.eh, 524288
  store i32 %i.ei, ptr %i.cu, align 8
  store ptr %i.dn, ptr %i.dh, align 8
  %.val96 = load i64, ptr %i.aa, align 8
  %i.ej = trunc i64 %.val96 to i32
  store i32 %i.ej, ptr %i.ac, align 8
  %i.ek = load ptr, ptr %0, align 8
  %i.el = getelementptr i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8            ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 40
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %.not.i118 = icmp eq ptr %i.eo, null
  br i1 %.not.i118, label %bb.an, label %bb.am, !prof !19

bb.am:                                            ; preds = %bb.al
  %i.ep = call i64 %i.eo(ptr noundef %0, ptr noundef %i.z) #13, !inline_history !43
  br label %io_iter_do_read.exit121

bb.an:                                            ; preds = %bb.al
  %i.eq = getelementptr i8, ptr %i.em, i64 24
  %i.er = load ptr, ptr %i.eq, align 8
  %.not9.i120 = icmp eq ptr %i.er, null
  br i1 %.not9.i120, label %io_iter_do_read.exit121.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.es = call fastcc i64 @loop_rw_iter(i32 noundef 0, ptr noundef %0, ptr noundef %i.z) #11, !srcloc !44
  br label %io_iter_do_read.exit121

io_iter_do_read.exit121:                          ; preds = %bb.am, %bb.ao
  %.0.i119.in = phi i64 [ %i.ep, %bb.am ], [ %i.es, %bb.ao ]
  %.0.i119 = trunc i64 %.0.i119.in to i32         ; 2 uses
  %i.et = icmp eq i32 %.0.i119, -529
  br i1 %i.et, label %io_rw_import_reg_vec.exit, label %io_iter_do_read.exit121.io_iter_do_read.exit121.thread_crit_edge

io_iter_do_read.exit121.io_iter_do_read.exit121.thread_crit_edge: ; preds = %io_iter_do_read.exit121
  %.pre136 = load i32, ptr %i.cu, align 8
  %i.eu = and i32 %.pre136, -524289
  br label %io_iter_do_read.exit121.thread

io_iter_do_read.exit121.thread:                   ; preds = %io_iter_do_read.exit121.io_iter_do_read.exit121.thread_crit_edge, %bb.an
  %i.ev = phi i32 [ %i.eu, %io_iter_do_read.exit121.io_iter_do_read.exit121.thread_crit_edge ], [ %i.eh, %bb.an ]
  %.0.i119130 = phi i32 [ %.0.i119, %io_iter_do_read.exit121.io_iter_do_read.exit121.thread_crit_edge ], [ -22, %bb.an ] ; 2 uses
  %i.ew = sext i32 %.0.i119130 to i64             ; 2 uses
  store i32 %i.ev, ptr %i.cu, align 8
  call void @iov_iter_restore(ptr noundef %i.z, ptr noundef %i.ct) #13
end_hunk_0
