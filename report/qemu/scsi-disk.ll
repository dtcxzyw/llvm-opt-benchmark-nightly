Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/scsi-disk?download=true
inline.NumInlined: 175
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@scsi_disk_emulate_command:bb.a

bb.ci:                                            ; preds = %bb.ce
  %i.mi = trunc i64 %i.md to i32
  br label %bb.co

scsi_emulate_mechanism_status.exit.thread:        ; preds = %bb.az, %scsi_disk_emulate_mode_sense.exit.thread, %trace_scsi_disk_emulate_command_VERIFY.exit, %bb.bi, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.ay, %bb.au, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %scsi_disk_emulate_mode_sense.exit, %bb.m, %bb.g, %bb.bl
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.mk = load i16, ptr %i.mj, align 4
  %i.ml = icmp eq i16 %i.mk, -1
  br i1 %i.ml, label %bb.cj, label %bb.co

bb.cj:                                            ; preds = %scsi_emulate_mechanism_status.exit.thread
  %.0.copyload1 = load i24, ptr @sense_code_INVALID_FIELD, align 1 ; 4 uses
  %.sroa.3.0.extract.shift.i183 = lshr i24 %.0.copyload1, 8
  %.sroa.4.0.extract.shift.i184 = lshr i24 %.0.copyload1, 16
  %.sroa.4.0.extract.trunc.i185 = zext nneg i24 %.sroa.4.0.extract.shift.i184 to i32
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.mn = load i32, ptr %i.mm, align 4
  %i.mo = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i186 = icmp eq i32 %i.mo, 0
  br i1 %.not.i.i186, label %scsi_check_condition.exit189, label %bb.ck, !prof !10

bb.ck:                                            ; preds = %bb.cj
  %i.mp = load i16, ptr @_TRACE_SCSI_DISK_CHECK_CONDITION_DSTATE, align 2
  %.not4.i.i187 = icmp eq i16 %i.mp, 0
  br i1 %.not4.i.i187, label %scsi_check_condition.exit189, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mq = load i32, ptr @qemu_loglevel, align 4
  %i.mr = and i32 %i.mq, 32768
  %.not5.i.i188 = icmp eq i32 %i.mr, 0
  br i1 %.not5.i.i188, label %scsi_check_condition.exit189, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ms = and i24 %.0.copyload1, 255
  %i.mt = zext nneg i24 %i.ms to i32
  %i.mu = and i24 %.sroa.3.0.extract.shift.i183, 255
  %i.mv = zext nneg i24 %i.mu to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.24, i32 noundef %i.mn, i32 noundef %i.mt, i32 noundef %i.mv, i32 noundef %.sroa.4.0.extract.trunc.i185) #16
  br label %scsi_check_condition.exit189

scsi_check_condition.exit189:                     ; preds = %bb.cj, %bb.ck, %bb.cl, %bb.cm
  call void @scsi_req_build_sense(ptr noundef nonnull %0, i24 %.0.copyload1) #16
  call void @scsi_req_complete(ptr noundef nonnull %0, i32 noundef 2) #16
  br label %bb.co

bb.cn:                                            ; preds = %bb.bn
  %.0.copyload = load i24, ptr @sense_code_LBA_OUT_OF_RANGE, align 1
  tail call fastcc void @scsi_check_condition(ptr noundef nonnull %0, i24 %.0.copyload)
  br label %bb.co

bb.co:                                            ; preds = %scsi_emulate_mechanism_status.exit.thread, %scsi_check_condition.exit189, %bb.ap, %bb.cn, %bb.ci, %bb.ch, %bb.ca, %bb.bm, %bb.bg, %bb.as, %scsi_check_condition.exit
  %.0 = phi i32 [ 0, %bb.ap ], [ 0, %bb.ca ], [ %i.mh, %bb.ch ], [ %i.mi, %bb.ci ], [ 0, %scsi_check_condition.exit ], [ 0, %bb.as ], [ 0, %bb.bg ], [ 0, %bb.bm ], [ 0, %bb.cn ], [ 0, %scsi_check_condition.exit189 ], [ 0, %scsi_emulate_mechanism_status.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @scsi_disk_emulate_read_data(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %trace_scsi_disk_emulate_read_data.exit, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.e = load i16, ptr @_TRACE_SCSI_DISK_EMULATE_READ_DATA_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.e, 0
  br i1 %.not1.i, label %trace_scsi_disk_emulate_read_data.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 32768
  %.not2.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i, label %trace_scsi_disk_emulate_read_data.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.61, i32 noundef range(i32 1, 0) %i.c) #16
  br label %trace_scsi_disk_emulate_read_data.exit

trace_scsi_disk_emulate_read_data.exit:           ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  store i64 0, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i8 1, ptr %i.h, align 8
  tail call void @scsi_req_data(ptr noundef nonnull %0, i32 noundef %i.c) #16
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @scsi_req_complete(ptr noundef nonnull %0, i32 noundef 0) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %trace_scsi_disk_emulate_read_data.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @scsi_disk_emulate_write_data(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca [256 x i8], align 16              ; 7 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %trace_scsi_disk_emulate_write_data.exit, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.i = load i16, ptr @_TRACE_SCSI_DISK_EMULATE_WRITE_DATA_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.i, 0
  br i1 %.not1.i, label %trace_scsi_disk_emulate_write_data.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 32768
  %.not2.i = icmp eq i32 %i.k, 0
  br i1 %.not2.i, label %trace_scsi_disk_emulate_write_data.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.62, i32 noundef %i.g) #16
  br label %trace_scsi_disk_emulate_write_data.exit

trace_scsi_disk_emulate_write_data.exit:          ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  store i64 0, ptr %i.e, align 8
  tail call void @scsi_req_data(ptr noundef nonnull %0, i32 noundef %i.g) #16
  br label %scsi_disk_emulate_mode_select.exit

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8               ; 2 uses
  switch i8 %i.m, label %bb.cx [
    i8 21, label %bb.g
    i8 85, label %bb.g
    i8 66, label %bb.bl
    i8 47, label %bb.ca
    i8 -81, label %bb.ca
    i8 -113, label %bb.ca
    i8 65, label %bb.cf
    i8 -109, label %bb.cf
    i8 4, label %bb.cw
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.n = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load i64, ptr %i.q, align 8
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = icmp eq i8 %i.m, 21                      ; 2 uses
  %i.u = select i1 %i.t, i32 4, i32 8             ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.w = load i8, ptr %i.v, align 1
  %i.x = and i8 %i.w, 17
  %.not.i20 = icmp eq i8 %i.x, 16
  br i1 %.not.i20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 744
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = and i32 %i.z, 4
  %.not66.i = icmp eq i32 %i.aa, 0
  br i1 %.not66.i, label %bb.bh, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = icmp sgt i32 %i.u, %i.s
  br i1 %i.ab, label %bb.bd, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i32
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %.val.i = load i16, ptr %i.af, align 1
  %i.ag = tail call i16 @llvm.bswap.i16(i16 %.val.i)
  %i.ah = zext i16 %i.ag to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ai = phi i32 [ %i.ae, %bb.k ], [ %i.ah, %bb.l ] ; 4 uses
  %i.aj = sub nuw nsw i32 %i.s, %i.u              ; 2 uses
  %i.ak = zext nneg i32 %i.u to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ak ; 4 uses
  %i.am = icmp samesign ult i32 %i.aj, %i.ai
  br i1 %i.am, label %bb.bd, label %bb.n

bb.n:                                             ; preds = %bb.m
  %trunc.i = trunc nuw i32 %i.ai to i16
  switch i16 %trunc.i, label %bb.az [
    i16 0, label %bb.r
    i16 8, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 5
  %1 = load i8, ptr %i.an, align 1
  %2 = zext i8 %1 to i32
  %3 = shl nuw nsw i32 %2, 16
  %4 = getelementptr inbounds nuw i8, ptr %i.al, i64 6
  %5 = load i8, ptr %4, align 1
  %i.ao = zext i8 %5 to i32
  %i.ap = shl nuw nsw i32 %i.ao, 8
  %6 = or disjoint i32 %i.ap, %3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 7
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = or disjoint i32 %6, %i.as               ; 5 uses
  %.not67.i = icmp ne i32 %i.at, 0
  %i.au = and i32 %i.at, 16712191
  %.not68.i = icmp eq i32 %i.au, 0
  %or.cond.i = and i1 %.not67.i, %.not68.i
  br i1 %or.cond.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 600 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8
  %.not69.i = icmp eq i32 %i.at, %i.aw
  br i1 %.not69.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.at, ptr %i.av, align 8
  tail call fastcc void @trace_scsi_disk_mode_select_set_blocksize(i32 noundef %i.at)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.ax = sub nuw nsw i32 %i.aj, %i.ai            ; 3 uses
  %i.ay = zext nneg i32 %i.ai to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ay ; 2 uses
  %.not153.i = icmp eq i32 %i.ax, 0
  br i1 %.not153.i, label %.split103.i, label %.lr.ph.split.i.preheader.i

.lr.ph.split.i.preheader.i:                       ; preds = %bb.r
  %i.ba = load ptr, ptr %i.o, align 8             ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 744
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %scsi_disk_check_mode_select.exit.i.i, %.lr.ph.split.i.preheader.i
  %.04382.i.i = phi ptr [ %i.cz, %scsi_disk_check_mode_select.exit.i.i ], [ %i.az, %.lr.ph.split.i.preheader.i ] ; 6 uses
  %.04881.i.i = phi i32 [ %i.da, %scsi_disk_check_mode_select.exit.i.i ], [ %i.ax, %.lr.ph.split.i.preheader.i ] ; 4 uses
  %i.bc = load i8, ptr %.04382.i.i, align 1
  %i.bd = zext i8 %i.bc to i32                    ; 2 uses
  %i.be = and i32 %i.bd, 63                       ; 4 uses
  %i.bf = and i32 %i.bd, 64
  %.not.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.i.i
  %i.bg = icmp samesign ult i32 %.04881.i.i, 4
  br i1 %i.bg, label %.split.us.i.i, label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.i.i
  %i.bh = icmp eq i32 %.04881.i.i, 1
  br i1 %i.bh, label %.split.us.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %.04382.i.i, i64 1
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %.04382.i.i, i64 2
  %i.bm = add nsw i32 %.04881.i.i, -2
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %.04382.i.i, i64 1
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.04382.i.i, i64 2
  %.val.i.i = load i16, ptr %i.bp, align 1
  %i.bq = call i16 @llvm.bswap.i16(i16 %.val.i.i)
  %i.br = zext i16 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %.04382.i.i, i64 4
  %i.bt = add nsw i32 %.04881.i.i, -4
  %i.bu = icmp eq i8 %i.bo, 0
  br i1 %i.bu, label %bb.v, label %.loopexit79.i.i

bb.v:                                             ; preds = %bb.u, %.thread.i.i
  %.168.i.i = phi ptr [ %i.bl, %.thread.i.i ], [ %i.bs, %bb.u ] ; 2 uses
  %.04567.i.i = phi i32 [ %i.bk, %.thread.i.i ], [ %i.br, %bb.u ] ; 3 uses
  %.14966.i.i = phi i32 [ %i.bm, %.thread.i.i ], [ %i.bt, %bb.u ] ; 7 uses
  %i.bv = icmp samesign ugt i32 %.04567.i.i, %.14966.i.i
  br i1 %i.bv, label %bb.w, label %trace_scsi_disk_mode_select_page_truncated.exit.i.i

bb.w:                                             ; preds = %bb.v
  %i.bw = load i32, ptr %i.bb, align 8
  %i.bx = and i32 %i.bw, 3
  %.not52.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not52.i.i, label %.split.us.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.by = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i, label %trace_scsi_disk_mode_select_page_truncated.exit.i.i, label %bb.y, !prof !10

bb.y:                                             ; preds = %bb.x
  %i.bz = load i16, ptr @_TRACE_SCSI_DISK_MODE_SELECT_PAGE_TRUNCATED_DSTATE, align 2
  %.not3.i.i.i = icmp eq i16 %i.bz, 0
  br i1 %.not3.i.i.i, label %trace_scsi_disk_mode_select_page_truncated.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = load i32, ptr @qemu_loglevel, align 4
  %i.cb = and i32 %i.ca, 32768
  %.not4.i.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not4.i.i.i, label %trace_scsi_disk_mode_select_page_truncated.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.65, i32 noundef range(i32 0, 64) %i.be, i32 noundef range(i32 1, 65536) %.04567.i.i, i32 noundef range(i32 0, 65535) %.14966.i.i) #16
  br label %trace_scsi_disk_mode_select_page_truncated.exit.i.i

trace_scsi_disk_mode_select_page_truncated.exit.i.i: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.v
  %.146.i.i = phi i32 [ %.04567.i.i, %bb.v ], [ %.14966.i.i, %bb.x ], [ %.14966.i.i, %bb.y ], [ %.14966.i.i, %bb.z ], [ %.14966.i.i, %bb.aa ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.cc = add nuw nsw i32 %.146.i.i, 2            ; 2 uses
  %i.cd = icmp samesign ugt i32 %.146.i.i, 254
  %i.ce = icmp eq i32 %i.be, 63
  %or.cond24.i.i.i = or i1 %i.ce, %i.cd
  br i1 %or.cond24.i.i.i, label %scsi_disk_check_mode_select.exit.thread.i.i, label %bb.ab

bb.ab:                                            ; preds = %trace_scsi_disk_mode_select_page_truncated.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false), !annotation !7
  store ptr %i.a, ptr %i.c, align 8
  %i.cf = call fastcc i32 @mode_sense_page(ptr noundef readonly %i.ba, i32 noundef range(i32 0, 64) %i.be, ptr noundef %i.c, i32 noundef 0) ; 4 uses
  %i.cg = icmp slt i32 %i.cf, 0
  %i.ch = icmp sgt i32 %i.cc, %i.cf
  %or.cond.i.i.i = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond.i.i.i, label %scsi_disk_check_mode_select.exit.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.b, ptr %i.c, align 8
  %i.ci = zext nneg i32 %i.cf to i64
  %i.cj = call ptr @__memset_chk(ptr noundef nonnull %i.b, i32 noundef 0, i64 noundef %i.ci, i64 noundef 256) #16 ; 0 uses
  %i.ck = call fastcc i32 @mode_sense_page(ptr noundef readonly %i.ba, i32 noundef range(i32 0, 64) %i.be, ptr noundef %i.c, i32 noundef 1)
  %i.cl = icmp eq i32 %i.ck, %i.cf
  br i1 %i.cl, label %.preheader.i.i.i, label %.loopexit119.i

.preheader.i.i.i:                                 ; preds = %bb.ac
  %.not28.i.i.i = icmp eq i32 %.146.i.i, 0
  br i1 %.not28.i.i.i, label %scsi_disk_check_mode_select.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.cc to i64
  br label %.lr.ph.i.i.i

.loopexit119.i:                                   ; preds = %bb.ac
  call void @__assert_fail(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.6, i32 noundef 1555, ptr noundef nonnull @__PRETTY_FUNCTION__.scsi_disk_check_mode_select) #19
  unreachable

bb.ad:                                            ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %scsi_disk_check_mode_select.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !15

.lr.ph.i.i.i:                                     ; preds = %bb.ad, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 2, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ad ] ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i.i
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = getelementptr i8, ptr %.168.i.i, i64 %indvars.iv.i.i.i
  %i.cp = getelementptr i8, ptr %i.co, i64 -2
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = xor i8 %i.cq, %i.cn
  %i.cs = zext i8 %i.cr to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i.i
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = zext i8 %i.cu to i32
  %i.cw = xor i32 %i.cv, -1
  %i.cx = and i32 %i.cs, %i.cw
  %.not.i53.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i53.i.i, label %bb.ad, label %scsi_disk_check_mode_select.exit.thread.i.i

scsi_disk_check_mode_select.exit.thread.i.i:      ; preds = %bb.ab, %trace_scsi_disk_mode_select_page_truncated.exit.i.i, %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.loopexit79.i.i

scsi_disk_check_mode_select.exit.i.i:             ; preds = %bb.ad, %.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.cy = zext nneg i32 %.146.i.i to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.168.i.i, i64 %i.cy
  %i.da = sub nsw i32 %.14966.i.i, %.146.i.i      ; 2 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph.split.i.i, label %.lr.ph.split.us.i.preheader.1.i

.loopexit79.i.i:                                  ; preds = %bb.u, %bb.an, %scsi_disk_check_mode_select.exit.thread.i.i
  %.0102117.i = phi i32 [ 1, %bb.an ], [ 0, %scsi_disk_check_mode_select.exit.thread.i.i ], [ 0, %bb.u ] ; 4 uses
  %.0.copyload1.i.i = load i24, ptr @sense_code_INVALID_PARAM, align 1 ; 7 uses
  %.sroa.3.0.extract.shift.i.i.i = lshr i24 %.0.copyload1.i.i, 8
  %.sroa.4.0.extract.shift.i.i.i = lshr i24 %.0.copyload1.i.i, 16
  %.sroa.4.0.extract.trunc.i.i.i = zext nneg i24 %.sroa.4.0.extract.shift.i.i.i to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i.i = icmp eq i32 %i.de, 0
  br i1 %.not.i.i.i.i, label %bb.ak, label %bb.ae, !prof !10

bb.ae:                                            ; preds = %.loopexit79.i.i
  %i.df = load i16, ptr @_TRACE_SCSI_DISK_CHECK_CONDITION_DSTATE, align 2
  %.not4.i.i.i.i = icmp eq i16 %i.df, 0
  br i1 %.not4.i.i.i.i, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dg = load i32, ptr @qemu_loglevel, align 4
  %i.dh = and i32 %i.dg, 32768
  %.not5.i.i.i.i = icmp eq i32 %i.dh, 0
end_hunk_0
