Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tpm_tis_common?download=true
inline.NumInlined: 50
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@tpm_tis_mmio_read:bb.a
; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i16 @tpm_tis_get_checksum(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4368
  %i.c = load i16, ptr %i.b, align 16
  %i.d = zext i16 %i.c to i64
  %i.e = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext 0, ptr noundef nonnull %i.a, i64 noundef %i.d) #9
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.e)
  ret i16 %i.f
}

declare zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tpm_tis_write_data(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @tpm_tis_mmio_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @tpm_tis_mmio_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = and i32 %i.a, 4092
  %i.c = and i64 %1, 3                            ; 2 uses
  %.tr = trunc nuw nsw i64 %i.c to i8
  %i.d = shl nuw nsw i8 %.tr, 3                   ; 2 uses
  %i.e = lshr i64 %1, 12                          ; 14 uses
  %i.f = trunc i64 %i.e to i8
  %i.g = and i8 %i.f, 7                           ; 21 uses
  %i.h = icmp samesign ult i8 %i.g, 5
  br i1 %i.h, label %tpm_tis_locality_from_addr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 58, ptr noundef nonnull @__PRETTY_FUNCTION__.tpm_tis_locality_from_addr) #8
  unreachable

tpm_tis_locality_from_addr.exit:                  ; preds = %bb.a
  %i.i = icmp eq i32 %3, 1
  %i.j = icmp eq i32 %3, 2
  %i.k = select i1 %i.j, i32 65535, i32 -1
  %i.l = select i1 %i.i, i32 255, i32 %i.k        ; 2 uses
  %i.m = trunc i64 %2 to i32
  %i.n = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %trace_tpm_tis_mmio_write.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %tpm_tis_locality_from_addr.exit
  %i.o = load i16, ptr @_TRACE_TPM_TIS_MMIO_WRITE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.o, 0
  br i1 %.not3.i, label %trace_tpm_tis_mmio_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr @qemu_loglevel, align 4
  %i.q = and i32 %i.p, 32768
  %.not4.i = icmp eq i32 %i.q, 0
  br i1 %.not4.i, label %trace_tpm_tis_mmio_write.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.22, i32 noundef %3, i32 noundef %i.a, i32 noundef %i.m) #9
  br label %trace_tpm_tis_mmio_write.exit

trace_tpm_tis_mmio_write.exit:                    ; preds = %tpm_tis_locality_from_addr.exit, %bb.c, %bb.d, %bb.e
  %i.r = icmp eq i8 %i.g, 4
  br i1 %i.r, label %bb.f, label %bb.j

bb.f:                                             ; preds = %trace_tpm_tis_mmio_write.exit
  %i.s = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i251 = icmp eq i32 %i.s, 0
  br i1 %.not.i251, label %trace_tpm_tis_mmio_write_locty4.exit, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.t = load i16, ptr @_TRACE_TPM_TIS_MMIO_WRITE_LOCTY4_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.t, 0
  br i1 %.not1.i, label %trace_tpm_tis_mmio_write_locty4.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load i32, ptr @qemu_loglevel, align 4
  %i.v = and i32 %i.u, 32768
  %.not2.i = icmp eq i32 %i.v, 0
  br i1 %.not2.i, label %trace_tpm_tis_mmio_write_locty4.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.23) #9
  br label %trace_tpm_tis_mmio_write_locty4.exit

bb.j:                                             ; preds = %trace_tpm_tis_mmio_write.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4552 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call zeroext i1 @tpm_backend_had_startup_error(ptr noundef %i.x) #9
  br i1 %i.y, label %trace_tpm_tis_mmio_write_locty4.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = zext i32 %i.l to i64
  %i.aa = and i64 %2, %i.z                        ; 2 uses
  %i.ab = zext nneg i8 %i.d to i64
  %.0214 = shl nuw nsw i64 %i.aa, %i.ab           ; 11 uses
  switch i32 %i.b, label %trace_tpm_tis_mmio_write_locty4.exit [
    i32 0, label %bb.l
    i32 8, label %bb.ad
    i32 48, label %bb.bq
    i32 16, label %bb.ae
    i32 24, label %bb.ai
    i32 36, label %bb.bc
    i32 128, label %bb.bc
    i32 188, label %bb.bc
    i32 144, label %bb.bc
    i32 176, label %bb.bc
    i32 132, label %bb.bc
    i32 164, label %bb.bc
    i32 184, label %bb.bc
    i32 160, label %bb.bc
    i32 136, label %bb.bc
    i32 148, label %bb.bc
    i32 168, label %bb.bc
    i32 180, label %bb.bc
    i32 140, label %bb.bc
    i32 172, label %bb.bc
    i32 156, label %bb.bc
    i32 152, label %bb.bc
  ]

bb.l:                                             ; preds = %bb.k
  %i.ac = and i64 %.0214, 8
  %.not235 = icmp eq i64 %i.ac, 0
  %i.ad = and i64 %.0214, 72057594037927901
  %spec.select = select i1 %.not235, i64 %.0214, i64 %i.ad ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4370 ; 4 uses
  %i.af = load i8, ptr %i.ae, align 2             ; 3 uses
  %i.ag = and i64 %spec.select, 32
  %.not236 = icmp eq i64 %i.ag, 0
  br i1 %.not236, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = icmp eq i8 %i.af, %i.g
  br i1 %i.ah, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @trace_tpm_tis_mmio_write_release_locty(i8 noundef zeroext %i.g)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4476
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = and i8 %i.aj, 2
  %.not237 = icmp eq i8 %i.ak, 0
  br i1 %.not237, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4452
  %i.am = load i8, ptr %i.al, align 4
  %i.an = and i8 %i.am, 2
  %.not237.1 = icmp eq i8 %i.an, 0
  br i1 %.not237.1, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4428
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = and i8 %i.ap, 2
  %.not237.2 = icmp eq i8 %i.aq, 0
  br i1 %.not237.2, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4404
  %i.as = load i8, ptr %i.ar, align 4
  %i.at = and i8 %i.as, 2
  %.not237.3 = icmp eq i8 %i.at, 0
  br i1 %.not237.3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4380
  %i.av = load i8, ptr %i.au, align 4
  %i.aw = and i8 %i.av, 2
  %.not237.4 = icmp eq i8 %i.aw, 0
  br i1 %.not237.4, label %.thread, label %bb.s

.thread:                                          ; preds = %bb.r
  tail call fastcc void @trace_tpm_tis_mmio_write_next_locty(i8 noundef zeroext -1)
  br label %bb.u

bb.s:                                             ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.0204267.lcssa = phi i8 [ 4, %bb.n ], [ 3, %bb.o ], [ 2, %bb.p ], [ 1, %bb.q ], [ 0, %bb.r ] ; 3 uses
  tail call fastcc void @trace_tpm_tis_mmio_write_locty_req_use(i8 noundef zeroext %.0204267.lcssa)
  tail call fastcc void @trace_tpm_tis_mmio_write_next_locty(i8 noundef zeroext %.0204267.lcssa)
  tail call fastcc void @tpm_tis_prep_abort(ptr noundef nonnull %0, i8 noundef zeroext %i.g, i8 noundef zeroext %.0204267.lcssa)
  br label %bb.u

bb.t:                                             ; preds = %bb.m
  %i.ax = and i64 %i.e, 7
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4380 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 4
  %i.bb = and i8 %i.ba, -3
  store i8 %i.bb, ptr %i.az, align 4
  br label %bb.u

bb.u:                                             ; preds = %.thread, %bb.s, %bb.t, %bb.l
  %.1209 = phi i8 [ %i.af, %bb.l ], [ %i.af, %bb.t ], [ %i.g, %bb.s ], [ -1, %.thread ] ; 3 uses
  %.1 = phi i32 [ 1, %bb.l ], [ 1, %bb.t ], [ 0, %bb.s ], [ 1, %.thread ] ; 4 uses
  %i.bc = and i64 %spec.select, 16
  %.not238 = icmp eq i64 %i.bc, 0
  br i1 %.not238, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = and i64 %i.e, 7
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4380 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 4
  %i.bh = and i8 %i.bg, -17
  store i8 %i.bh, ptr %i.bf, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bi = and i64 %spec.select, 8
  %.not239 = icmp eq i64 %i.bi, 0
  br i1 %.not239, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = load i8, ptr %i.ae, align 2             ; 3 uses
  %i.bk = icmp ugt i8 %i.g, %i.bj
  %i.bl = icmp ugt i8 %i.bj, 4
  %or.cond256 = or i1 %i.bk, %i.bl
  br i1 %or.cond256, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.x
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4376 ; 2 uses
  %i.bn = and i64 %i.e, 7
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 4             ; 2 uses
  %i.br = and i8 %i.bq, 8
  %.not240 = icmp eq i8 %i.br, 0
  br i1 %.not240, label %.lr.ph296.2, label %.loopexit

.lr.ph296.2:                                      ; preds = %.critedge
  %4 = and i64 %i.e, 7                            ; 2 uses
  %.not241.2 = icmp eq i64 %4, 4
  br i1 %.not241.2, label %.critedge246.preheader, label %.lr.ph296

.lr.ph296.3:                                      ; preds = %.lr.ph296
  %.not241.3 = icmp eq i64 %indvars.iv.next, 4
  br i1 %.not241.3, label %.critedge246.preheader, label %.lr.ph296, !llvm.loop !13

.critedge246.preheader:                           ; preds = %.lr.ph296.3, %.lr.ph296.2
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %.critedge246._crit_edge, label %.critedge246.preheader270

.critedge246.preheader270:                        ; preds = %.critedge246.preheader
  %wide.trip.count = and i64 %i.e, 7              ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4380 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 4
  %i.bu = and i8 %i.bt, -9
  store i8 %i.bu, ptr %i.bs, align 4
  %exitcond.not = icmp eq i64 %wide.trip.count, 1
  br i1 %exitcond.not, label %.critedge246._crit_edge.loopexit, label %.critedge246.1

.lr.ph296:                                        ; preds = %.lr.ph296.2, %.lr.ph296.3
  %indvars.iv298 = phi i64 [ %indvars.iv.next, %.lr.ph296.3 ], [ %4, %.lr.ph296.2 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv298, 1 ; 3 uses
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %indvars.iv.next
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = load i8, ptr %i.bw, align 4
  %i.by = and i8 %i.bx, 8
  %.not241 = icmp eq i8 %i.by, 0
  br i1 %.not241, label %.lr.ph296.3, label %.loopexit, !llvm.loop !13

.critedge246.1:                                   ; preds = %.critedge246.preheader270
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4404 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 4
  %i.cb = and i8 %i.ca, -9
  store i8 %i.cb, ptr %i.bz, align 4
  %exitcond.not.1 = icmp eq i64 %wide.trip.count, 2
  br i1 %exitcond.not.1, label %.critedge246._crit_edge.loopexit, label %.critedge246.2

.critedge246.2:                                   ; preds = %.critedge246.1
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 4428 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 4
  %i.ce = and i8 %i.cd, -9
  store i8 %i.ce, ptr %i.cc, align 4
  %exitcond.not.2 = icmp eq i64 %wide.trip.count, 3
  br i1 %exitcond.not.2, label %.critedge246._crit_edge.loopexit, label %.critedge246.3

.critedge246.3:                                   ; preds = %.critedge246.2
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 4452 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 4
  %i.ch = and i8 %i.cg, -9
  store i8 %i.ch, ptr %i.cf, align 4
  %exitcond.not.3 = icmp eq i64 %wide.trip.count, 4
  br i1 %exitcond.not.3, label %.critedge246._crit_edge.loopexit, label %.critedge246.4

.critedge246.4:                                   ; preds = %.critedge246.3
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 4476 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 4
  %i.ck = and i8 %i.cj, -9
  store i8 %i.ck, ptr %i.ci, align 4
  %exitcond.not.4 = icmp eq i64 %wide.trip.count, 5
  br i1 %exitcond.not.4, label %.critedge246._crit_edge.loopexit, label %.critedge246.5

.critedge246.5:                                   ; preds = %.critedge246.4
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4500 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 4
  %i.cn = and i8 %i.cm, -9
  store i8 %i.cn, ptr %i.cl, align 4
  %exitcond.not.5 = icmp eq i64 %wide.trip.count, 6
  br i1 %exitcond.not.5, label %.critedge246._crit_edge.loopexit, label %.critedge246.6

.critedge246.6:                                   ; preds = %.critedge246.5
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4524 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 4
  %i.cq = and i8 %i.cp, -9
  store i8 %i.cq, ptr %i.co, align 4
  br label %.critedge246._crit_edge.loopexit

.critedge246._crit_edge.loopexit:                 ; preds = %.critedge246.6, %.critedge246.5, %.critedge246.4, %.critedge246.3, %.critedge246.2, %.critedge246.1, %.critedge246.preheader270
  %.pre282.a = load i8, ptr %i.bp, align 4
  br label %.critedge246._crit_edge

.critedge246._crit_edge:                          ; preds = %.critedge246._crit_edge.loopexit, %.critedge246.preheader
  %i.cr = phi i8 [ %.pre282.a, %.critedge246._crit_edge.loopexit ], [ %i.bq, %.critedge246.preheader ]
  %i.cs = or i8 %i.cr, 8
  store i8 %i.cs, ptr %i.bp, align 4
  tail call fastcc void @trace_tpm_tis_mmio_write_locty_seized(i8 noundef zeroext %i.g, i8 noundef zeroext %i.bj)
  tail call fastcc void @trace_tpm_tis_mmio_write_init_abort()
  %i.ct = load i8, ptr %i.ae, align 2
  tail call fastcc void @tpm_tis_prep_abort(ptr noundef nonnull %0, i8 noundef zeroext %i.ct, i8 noundef zeroext %i.g)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph296, %bb.x, %.critedge246._crit_edge, %.critedge, %bb.w
  %.3 = phi i32 [ %.1, %bb.w ], [ %.1, %bb.x ], [ 0, %.critedge246._crit_edge ], [ %.1, %.critedge ], [ %.1, %.lr.ph296 ]
  %i.cu = and i64 %spec.select, 2
  %.not242 = icmp eq i64 %i.cu, 0
  br i1 %.not242, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %.loopexit
  %i.cv = load i8, ptr %i.ae, align 2             ; 2 uses
  %.not243 = icmp eq i8 %i.cv, %i.g
  br i1 %.not243, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = icmp ult i8 %i.cv, 5
  br i1 %i.cw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = and i64 %i.e, 7
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4380 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 4
  %i.db = or i8 %i.da, 2
  store i8 %i.db, ptr %i.cz, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.y, %bb.aa, %.loopexit
  %.2210 = phi i8 [ %.1209, %bb.aa ], [ %.1209, %.loopexit ], [ %.1209, %bb.y ], [ %i.g, %bb.z ]
  %.not244 = icmp eq i32 %.3, 0
  br i1 %.not244, label %trace_tpm_tis_mmio_write_locty4.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @tpm_tis_new_active_locality(ptr noundef nonnull %0, i8 noundef zeroext %.2210)
  br label %trace_tpm_tis_mmio_write_locty4.exit

bb.ad:                                            ; preds = %bb.k
  %i.dc = zext nneg i8 %i.d to i32
  %.0202 = shl i32 %i.l, %i.dc
  %i.dd = xor i32 %.0202, -1
  %i.de = and i64 %i.e, 7
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4392 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = and i32 %i.dh, %i.dd
  %i.dj = trunc i64 %.0214 to i32
  %i.dk = and i32 %i.dj, -2147483489
  %i.dl = or i32 %i.di, %i.dk
  store i32 %i.dl, ptr %i.dg, align 8
  br label %trace_tpm_tis_mmio_write_locty4.exit

bb.ae:                                            ; preds = %bb.k
  %i.dm = and i64 %.0214, 135                     ; 2 uses
  %.not232 = icmp eq i64 %i.dm, 0
  %.pre284 = and i64 %i.e, 7                      ; 2 uses
  br i1 %.not232, label %._crit_edge283, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.pre284
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4396 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4            ; 2 uses
  %i.dq = and i32 %i.dp, 135
  %.not233 = icmp eq i32 %i.dq, 0
  br i1 %.not233, label %._crit_edge283, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dr = trunc i64 %.0214 to i32
  %i.ds = xor i32 %i.dr, -1
  %i.dt = and i32 %i.dp, %i.ds                    ; 2 uses
  store i32 %i.dt, ptr %i.do, align 4
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.ah, label %._crit_edge283

bb.ah:                                            ; preds = %bb.ag
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 4496
  %i.dw = load ptr, ptr %i.dv, align 16
  tail call void @qemu_set_irq(ptr noundef %i.dw, i32 noundef 0) #9
  tail call fastcc void @trace_tpm_tis_mmio_write_lowering_irq()
  br label %._crit_edge283

._crit_edge283:                                   ; preds = %bb.ae, %bb.ag, %bb.ah, %bb.af
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.pre284
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4396 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = trunc nuw nsw i64 %i.dm to i32
  %i.eb = xor i32 %i.ea, -1
  %i.ec = and i32 %i.dz, %i.eb
  store i32 %i.ec, ptr %i.dy, align 4
  br label %trace_tpm_tis_mmio_write_locty4.exit

bb.ai:                                            ; preds = %bb.k
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 4370
  %i.ee = load i8, ptr %i.ed, align 2
  %.not228 = icmp eq i8 %i.ee, %i.g
  br i1 %.not228, label %bb.aj, label %trace_tpm_tis_mmio_write_locty4.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 4560
  %i.eg = load i32, ptr %i.ef, align 16
  %i.eh = icmp eq i32 %i.eg, 2
  br i1 %i.eh, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.ei = and i64 %.0214, 16777216
  %.not229 = icmp eq i64 %i.ei, 0
  br i1 %.not229, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 4376
  %i.ek = and i64 %i.e, 7
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 8
  %i.en = icmp eq i32 %i.em, 3
  br i1 %i.en, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.eo = load ptr, ptr %i.w, align 8
  tail call void @tpm_backend_cancel_cmd(ptr noundef %i.eo) #9
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am, %bb.ak
  %i.ep = and i64 %.0214, 33554432
  %.not230 = icmp ne i64 %i.ep, 0
  %i.eq = icmp eq i8 %i.g, 3
  %or.cond247 = and i1 %i.eq, %.not230
  br i1 %or.cond247, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.er = load ptr, ptr %i.w, align 8
  %i.es = tail call i32 @tpm_backend_reset_tpm_established_flag(ptr noundef %i.er, i8 noundef zeroext 3) #9 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.aj
  %i.et = and i64 %.0214, 98
  switch i64 %i.et, label %trace_tpm_tis_mmio_write_locty4.exit [
    i64 64, label %bb.aq
    i64 32, label %bb.ax
    i64 2, label %bb.ba
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 4376
  %i.ev = and i64 %i.e, 7
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.eu, i64 %i.ev ; 5 uses
  %i.ex = load i32, ptr %i.ew, align 8
  switch i32 %i.ex, label %trace_tpm_tis_mmio_write_locty4.exit [
    i32 1, label %bb.ar
    i32 0, label %bb.as
    i32 3, label %bb.at
    i32 4, label %bb.at
    i32 2, label %bb.au
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 4368
  store i16 0, ptr %i.ey, align 16
  br label %trace_tpm_tis_mmio_write_locty4.exit

bb.as:                                            ; preds = %bb.aq
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 8
  %i.fb = and i32 %i.fa, 201326596
  %i.fc = or disjoint i32 %i.fb, 64
  store i32 %i.fc, ptr %i.ez, align 8
  store i32 1, ptr %i.ew, align 8
  tail call fastcc void @tpm_tis_raise_irq(ptr noundef nonnull %0, i8 noundef zeroext %i.g, i32 noundef 128)
  br label %trace_tpm_tis_mmio_write_locty4.exit

bb.at:                                            ; preds = %bb.aq, %bb.aq
  tail call fastcc void @trace_tpm_tis_mmio_write_init_abort()
  tail call fastcc void @tpm_tis_prep_abort(ptr noundef nonnull %0, i8 noundef zeroext %i.g, i8 noundef zeroext %i.g)
  br label %trace_tpm_tis_mmio_write_locty4.exit

bb.au:                                            ; preds = %bb.aq
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 4368
  store i16 0, ptr %i.fd, align 16
  store i32 1, ptr %i.ew, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 4 uses
  %i.ff = load i32, ptr %i.fe, align 8            ; 3 uses
  %i.fg = and i32 %i.ff, 64
  %.not231 = icmp eq i32 %i.fg, 0
  br i1 %.not231, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fh = and i32 %i.ff, 201326596
  %i.fi = or disjoint i32 %i.fh, 64
  store i32 %i.fi, ptr %i.fe, align 8
  tail call fastcc void @tpm_tis_raise_irq(ptr noundef nonnull %0, i8 noundef zeroext %i.g, i32 noundef 128)
  %.pre281 = load i32, ptr %i.fe, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fj = phi i32 [ %.pre281, %bb.av ], [ %i.ff, %bb.au ]
  %i.fk = and i32 %i.fj, -17
  store i32 %i.fk, ptr %i.fe, align 8
  br label %trace_tpm_tis_mmio_write_locty4.exit

bb.ax:                                            ; preds = %bb.ap
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 4376
  %i.fm = and i64 %i.e, 7
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.fl, i64 %i.fm ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 8
  %cond1 = icmp eq i32 %i.fo, 4
  br i1 %cond1, label %bb.ay, label %trace_tpm_tis_mmio_write_locty4.exit

end_hunk_0
