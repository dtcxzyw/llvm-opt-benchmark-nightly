Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/smmuv3?download=true
inline.NumInlined: 356
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@smmuv3_propagate_event:bb.a
  %i.ac = add i32 %i.ab, -1
  %i.ad = and i32 %i.ac, %i.x
  %i.ae = shl nuw i32 1, %i.aa
  %i.af = icmp eq i32 %i.ad, %i.ae
  br i1 %i.af, label %smmuv3_write_eventq.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load i64, ptr %i.q, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3696
  %i.ai = load i8, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.aj = and i64 %i.ag, 4503599627370432
  %i.ak = zext i8 %i.ai to i32
  %notmask.i.i = shl nsw i32 -1, %i.aa
  %i.al = xor i32 %notmask.i.i, -1
  %i.am = and i32 %i.w, %i.al
  %i.an = mul i32 %i.am, %i.ak
  %i.ao = zext i32 %i.an to i64
  %i.ap = add nuw nsw i64 %i.aj, %i.ao
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !8
  fence seq_cst
  %i.aq = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef range(i64 0, 4503603922337728) %i.ap, i64 4294967296, ptr noundef nonnull %2, i64 noundef range(i64 8, 65) 32, i1 noundef zeroext true) #12
  %.not.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i, label %bb.i, label %queue_write.exit.i

queue_write.exit.i:                               ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %smmuv3_write_eventq.exit

bb.i:                                             ; preds = %bb.h
  %i.ar = load i32, ptr %i.v, align 8
  %i.as = add i32 %i.ar, 1                        ; 2 uses
  %i.at = load i8, ptr %i.y, align 1
  %i.au = zext nneg i8 %i.at to i32
  %i.av = shl nuw i32 2, %i.au
  %i.aw = add i32 %i.av, -1                       ; 2 uses
  %i.ax = and i32 %i.aw, %i.as
  store i32 %i.ax, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.ay = load i32, ptr %i.t, align 4
  %i.az = xor i32 %i.ay, %i.as
  %i.ba = and i32 %i.az, %i.aw
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %glib_autoptr_cleanup_QemuLockable.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr i8, ptr %0, i64 3616
  %.val.i.i = load i32, ptr %i.bc, align 16
  %i.bd = and i32 %.val.i.i, 4
  %.not25.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not25.i.i, label %glib_autoptr_cleanup_QemuLockable.exit, label %.critedge21.i.i

.critedge21.i.i:                                  ; preds = %bb.j
  %i.be = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i23.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i23.i.i, label %trace_smmuv3_trigger_irq.exit.i.i, label %bb.k, !prof !7

bb.k:                                             ; preds = %.critedge21.i.i
  %i.bf = load i16, ptr @_TRACE_SMMUV3_TRIGGER_IRQ_DSTATE, align 2
  %.not1.i.i.i = icmp eq i16 %i.bf, 0
  br i1 %.not1.i.i.i, label %trace_smmuv3_trigger_irq.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = load i32, ptr @qemu_loglevel, align 4
  %i.bh = and i32 %i.bg, 32768
  %.not2.i24.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not2.i24.i.i, label %trace_smmuv3_trigger_irq.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.32, i32 noundef range(i32 0, 4) 0) #12
  br label %trace_smmuv3_trigger_irq.exit.i.i

trace_smmuv3_trigger_irq.exit.i.i:                ; preds = %bb.m, %bb.l, %bb.k, %.critedge21.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %i.bj = load ptr, ptr %i.bi, align 16           ; 2 uses
  call void @qemu_set_irq(ptr noundef %i.bj, i32 noundef 1) #12
  call void @qemu_set_irq(ptr noundef %i.bj, i32 noundef 0) #12
  br label %glib_autoptr_cleanup_QemuLockable.exit

smmuv3_write_eventq.exit:                         ; preds = %queue_write.exit.i, %bb.g, %trace_smmuv3_propagate_event.exit
  call fastcc void @smmuv3_trigger_irq(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 4)
  br label %glib_autoptr_cleanup_QemuLockable.exit

glib_autoptr_cleanup_QemuLockable.exit:           ; preds = %trace_smmuv3_trigger_irq.exit.i.i, %bb.j, %bb.i, %smmuv3_write_eventq.exit
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.29, i32 noundef 56) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @smmuv3_trigger_irq(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 4) %1, i32 noundef range(i32 0, 5) %2) unnamed_addr #0 {
bb.a:
  switch i32 %1, label %default.unreachable26 [
    i32 0, label %bb.i
    i32 1, label %bb.b
    i32 2, label %.critedge21
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @qemu_loglevel, align 4
  %i.b = and i32 %i.a, 1024
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge19, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.30) #12
  br label %.critedge19

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3620 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3624
  %i.f = load i32, ptr %i.e, align 8
  %i.g = xor i32 %i.d, %i.f
  %i.h = xor i32 %i.g, -1
  %i.i = and i32 %2, %i.h                         ; 3 uses
  %.not.not = icmp eq i32 %i.i, 0
  br i1 %.not.not, label %.critedge19, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = xor i32 %i.i, %i.d                       ; 2 uses
  store i32 %i.j, ptr %i.c, align 4
  %i.k = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %trace_smmuv3_write_gerror.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.l = load i16, ptr @_TRACE_SMMUV3_WRITE_GERROR_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.l, 0
  br i1 %.not2.i, label %trace_smmuv3_write_gerror.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr @qemu_loglevel, align 4
  %i.n = and i32 %i.m, 32768
  %.not3.i = icmp eq i32 %i.n, 0
  br i1 %.not3.i, label %trace_smmuv3_write_gerror.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.31, i32 noundef range(i32 1, 5) %i.i, i32 noundef %i.j) #12
  br label %trace_smmuv3_write_gerror.exit

trace_smmuv3_write_gerror.exit:                   ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.o = getelementptr i8, ptr %0, i64 3616
  %.val22 = load i32, ptr %i.o, align 16
  %i.p = trunc i32 %.val22 to i1
  br i1 %i.p, label %.critedge21, label %.critedge19

default.unreachable26:                            ; preds = %bb.a
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %0, i64 3616
  %.val = load i32, ptr %i.q, align 16
  %i.r = and i32 %.val, 4
  %.not25 = icmp eq i32 %i.r, 0
  br i1 %.not25, label %.critedge19, label %.critedge21

.critedge21:                                      ; preds = %trace_smmuv3_write_gerror.exit, %bb.a, %bb.i
  %i.s = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i23 = icmp eq i32 %i.s, 0
  br i1 %.not.i23, label %trace_smmuv3_trigger_irq.exit, label %bb.j, !prof !7

bb.j:                                             ; preds = %.critedge21
  %i.t = load i16, ptr @_TRACE_SMMUV3_TRIGGER_IRQ_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.t, 0
  br i1 %.not1.i, label %trace_smmuv3_trigger_irq.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = load i32, ptr @qemu_loglevel, align 4
  %i.v = and i32 %i.u, 32768
  %.not2.i24 = icmp eq i32 %i.v, 0
  br i1 %.not2.i24, label %trace_smmuv3_trigger_irq.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.32, i32 noundef range(i32 0, 4) %1) #12
  br label %trace_smmuv3_trigger_irq.exit

trace_smmuv3_trigger_irq.exit:                    ; preds = %.critedge21, %bb.j, %bb.k, %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %i.x = zext nneg i32 %1 to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  tail call void @qemu_set_irq(ptr noundef %i.z, i32 noundef 1) #12
  tail call void @qemu_set_irq(ptr noundef %i.z, i32 noundef 0) #12
  br label %.critedge19

.critedge19:                                      ; preds = %trace_smmuv3_write_gerror.exit, %bb.d, %bb.i, %trace_smmuv3_trigger_irq.exit, %bb.b, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @smmuv3_record_event(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.Evt, align 4                ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr i8, ptr %0, i64 3592
  %.val = load i32, ptr %i.b, align 8
  %i.c = and i32 %.val, 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8                ; 2 uses
  %i.e = and i32 %i.d, 255                        ; 10 uses
  store i32 %i.e, ptr %2, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.g, ptr %i.h, align 4
  switch i32 %i.d, label %bb.m [
    i32 0, label %bb.o
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 6, label %bb.n
    i32 7, label %bb.g
    i32 8, label %bb.h
    i32 9, label %bb.i
    i32 10, label %bb.j
    i32 11, label %bb.k
    i32 16, label %bb.k
    i32 17, label %bb.k
    i32 18, label %bb.k
    i32 19, label %bb.k
    i32 33, label %bb.l
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = shl i32 %i.j, 12
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = load i8, ptr %i.l, align 4, !range !9, !noundef !10
  %i.n = zext nneg i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 11
  %i.p = or disjoint i32 %i.k, %i.o
  %i.q = or disjoint i32 %i.p, %i.e
  store i32 %i.q, ptr %2, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.s, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i8, ptr %i.v, align 8, !range !9, !noundef !10
  %i.x = shl nuw nsw i8 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.z = load i8, ptr %i.y, align 1, !range !9, !noundef !10
  %i.aa = shl nuw nsw i8 %i.z, 1
  %i.ab = or disjoint i8 %i.x, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.ad = load i8, ptr %i.ac, align 2, !range !9, !noundef !10
  %i.ae = shl nuw nsw i8 %i.ad, 2
  %i.af = or disjoint i8 %i.ab, %i.ae
  %i.ag = zext nneg i8 %i.af to i32
  store i32 %i.ag, ptr %i.u, align 4
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = shl i32 %i.ai, 12
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i8, ptr %i.ak, align 4, !range !9, !noundef !10
  %i.am = zext nneg i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 11
  %i.ao = or disjoint i32 %i.aj, %i.an
  %i.ap = or disjoint i32 %i.ao, %i.e
  store i32 %i.ap, ptr %2, align 4
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = shl i32 %i.ar, 12
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.au = load i8, ptr %i.at, align 4, !range !9, !noundef !10
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 11
  %i.ax = or disjoint i32 %i.as, %i.aw
  %i.ay = or disjoint i32 %i.ax, %i.e
  store i32 %i.ay, ptr %2, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.ba, ptr %i.bb, align 4
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = shl i32 %i.bd, 12
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bg = load i8, ptr %i.bf, align 4, !range !9, !noundef !10
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 11
  %i.bj = or disjoint i32 %i.be, %i.bi
  %i.bk = or disjoint i32 %i.bj, %i.e
  store i32 %i.bk, ptr %2, align 4
  br label %bb.n

bb.g:                                             ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bm, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bq = load i8, ptr %i.bp, align 8, !range !9, !noundef !10
  %i.br = shl nuw nsw i8 %i.bq, 3
  %i.bs = zext nneg i8 %i.br to i32
  store i32 %i.bs, ptr %i.bo, align 4
  br label %bb.n

bb.h:                                             ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = shl i32 %i.bu, 12
  %i.bw = or disjoint i32 %i.bv, %i.e
  store i32 %i.bw, ptr %2, align 4
  br label %bb.n

bb.i:                                             ; preds = %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = shl i32 %i.by, 12
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cb = load i8, ptr %i.ca, align 4, !range !9, !noundef !10
  %i.cc = zext nneg i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 11
  %i.ce = or disjoint i32 %i.bz, %i.cd
  %i.cf = or disjoint i32 %i.ce, %i.e
  store i32 %i.cf, ptr %2, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.ch, ptr %i.ci, align 4
  br label %bb.n

bb.j:                                             ; preds = %bb.b
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = shl i32 %i.ck, 12
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cn = load i8, ptr %i.cm, align 4, !range !9, !noundef !10
  %i.co = zext nneg i8 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 11
  %i.cq = or disjoint i32 %i.cl, %i.cp
  %i.cr = or disjoint i32 %i.cq, %i.e
  store i32 %i.cr, ptr %2, align 4
  br label %bb.n

bb.k:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cu = load i8, ptr %i.ct, align 8, !range !9, !noundef !10
  %i.cv = zext nneg i8 %i.cu to i32
  %i.cw = shl nuw i32 %i.cv, 31
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = zext i16 %i.cy to i32
  %i.da = or disjoint i32 %i.cw, %i.cz
  store i32 %i.da, ptr %i.cs, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = shl i32 %i.dc, 12
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.df = load i8, ptr %i.de, align 8, !range !9, !noundef !10
  %i.dg = zext nneg i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 11
  %i.di = or disjoint i32 %i.dd, %i.dh
  %i.dj = or disjoint i32 %i.di, %i.e
  store i32 %i.dj, ptr %2, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.dm = load i8, ptr %i.dl, align 1, !range !9, !noundef !10
  %i.dn = shl nuw i8 %i.dm, 7
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.dp, ptr %i.dq, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ds = load i8, ptr %i.dr, align 8, !range !9, !noundef !10
  %i.dt = shl nuw nsw i8 %i.ds, 3
  %i.du = or disjoint i8 %i.dn, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.dw = load i8, ptr %i.dv, align 1, !range !9, !noundef !10
  %i.dx = shl nuw nsw i8 %i.dw, 1
  %i.dy = or disjoint i8 %i.du, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.ea = load i8, ptr %i.dz, align 2, !range !9, !noundef !10
  %i.eb = shl nuw nsw i8 %i.ea, 2
  %i.ec = or disjoint i8 %i.dy, %i.eb
  %i.ed = zext i8 %i.ec to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 43
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = and i8 %i.ef, 3
  %i.eh = zext nneg i8 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 8
  %i.ej = or disjoint i32 %i.ei, %i.ed
  store i32 %i.ej, ptr %i.dk, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.el, ptr %i.em, align 4
  br label %bb.n

bb.l:                                             ; preds = %bb.b
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eo = load i32, ptr %i.en, align 8
  %i.ep = shl i32 %i.eo, 12
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.er = load i8, ptr %i.eq, align 4, !range !9, !noundef !10
  %i.es = zext nneg i8 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 11
  %i.eu = or disjoint i32 %i.ep, %i.et
  %i.ev = or disjoint i32 %i.eu, %i.e
  store i32 %i.ev, ptr %2, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.b
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 264, ptr noundef nonnull @__func__.smmuv3_record_event, ptr noundef null) #13
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  call void @smmuv3_propagate_event(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 1, ptr %i.ew, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.a, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @smmuv3_ats_enabled(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3560
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1024
  %i.d = icmp ne i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -22, 1) i32 @smmu_find_ste(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.STEDesc, align 8            ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3552 ; 2 uses
  %i.b = load i32, ptr %i.a, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3557 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %trace_smmuv3_find_ste.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr @_TRACE_SMMUV3_FIND_STE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.f, 0
  br i1 %.not3.i, label %trace_smmuv3_find_ste.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 32768
  %.not4.i = icmp eq i32 %i.h, 0
  br i1 %.not4.i, label %trace_smmuv3_find_ste.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %1, 65535
  %i.j = zext i8 %i.d to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.33, i32 noundef %i.i, i32 noundef %i.b, i32 noundef %i.j) #12
  br label %trace_smmuv3_find_ste.exit

trace_smmuv3_find_ste.exit:                       ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3656
  %i.l = load i32, ptr %i.k, align 8
  %i.m = and i32 %i.l, 63                         ; 3 uses
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.m, i32 16)
  %.highbits = lshr i32 %1, %i.n
  %.not = icmp eq i32 %.highbits, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %trace_smmuv3_find_ste.exit
  store i32 2, ptr %3, align 8
  br label %bb.af

bb.f:                                             ; preds = %trace_smmuv3_find_ste.exit
  %i.o = load i32, ptr %i.a, align 16
  %i.p = and i32 %i.o, 1
  %.not97 = icmp eq i32 %i.p, 0
  br i1 %.not97, label %bb.y, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store i64 0, ptr %4, align 8, !annotation !11
  %i.q = load i8, ptr %i.c, align 1
  %i.r = zext i8 %i.q to i32                      ; 3 uses
  %i.s = sub nsw i32 %i.m, %i.r
  %i.t = tail call i32 @llvm.smax.i32(i32 %i.s, i32 3)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3648 ; 2 uses
  %i.v = load i64, ptr %i.u, align 16
  %i.w = and i64 %i.v, 4503599627370432
  %i.x = sub nsw i32 61, %i.t
  %i.y = zext nneg i32 %i.x to i64
  %i.z = lshr i64 -1, %i.y
  %i.aa = xor i64 %i.z, -1
  %i.ab = and i64 %i.w, %i.aa
  %i.ac = lshr i32 %1, %i.r                       ; 2 uses
  %notmask = shl nsw i32 -1, %i.r
  %i.ad = xor i32 %notmask, -1
  %i.ae = and i32 %1, %i.ad                       ; 4 uses
  %i.af = sext i32 %i.ac to i64
  %i.ag = shl nsw i64 %i.af, 3
  %i.ah = add nsw i64 %i.ab, %i.ag                ; 4 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !8
  fence seq_cst
  %i.ai = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %i.ah, i64 4294967296, ptr noundef nonnull %4, i64 noundef range(i64 8, 65) 8, i1 noundef zeroext false) #12
  %.not98 = icmp eq i32 %i.ai, 0
  br i1 %.not98, label %.preheader.preheader, label %bb.h

.preheader.preheader:                             ; preds = %bb.g
  %i.aj = load i32, ptr %4, align 8               ; 2 uses
  %i.ak = and i32 %i.aj, 31                       ; 5 uses
  %i.al = add nsw i32 %i.ak, -12
  %or.cond = icmp ult i32 %i.al, -11
  br i1 %or.cond, label %bb.k, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr @qemu_loglevel, align 4
  %i.an = and i32 %i.am, 2048
  %.not105 = icmp eq i32 %i.an, 0
  br i1 %.not105, label %bb.j, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.1, i64 noundef %i.ah) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 3, ptr %3, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.ah, ptr %i.ao, align 8
  br label %.critedge

bb.k:                                             ; preds = %.preheader.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.aq = load i8, ptr %i.ap, align 1, !range !9, !noundef !10
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr @qemu_loglevel, align 4
  %i.at = and i32 %i.as, 2048
  %.not108 = icmp eq i32 %i.at, 0
  br i1 %.not108, label %bb.n, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.2, i32 noundef %1) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  store i32 2, ptr %3, align 8
  br label %.critedge

bb.o:                                             ; preds = %.preheader.preheader
  %i.au = load i8, ptr %i.c, align 1
  %i.av = zext i8 %i.au to i32
  %i.aw = add nuw nsw i32 %i.av, 1
  %i.ax = icmp samesign ugt i32 %i.ak, %i.aw
  br i1 %i.ax, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.az = load i8, ptr %i.ay, align 1, !range !9, !noundef !10
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = load i32, ptr @qemu_loglevel, align 4
  %i.bc = and i32 %i.bb, 2048
  %.not107 = icmp eq i32 %i.bc, 0
  br i1 %.not107, label %bb.s, label %bb.r, !prof !7

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.3, i32 noundef %i.ak) #12
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  store i32 2, ptr %3, align 8
  br label %.critedge

bb.t:                                             ; preds = %bb.o
  %notmask99 = shl nsw i32 -1, %i.ak
  %i.bd = xor i32 %notmask99, -1                  ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.val101 = load i32, ptr %i.be, align 4
  %i.bf = zext i32 %.val101 to i64
  %i.bg = and i32 %i.aj, -32
  %i.bh = zext i32 %i.bg to i64
end_hunk_0
