Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/dif?download=true
inline.NumInlined: 114
inline.NumDeleted: 41
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@nvme_dif_pract_generate_dif:bb.a
  %i.hm = getelementptr inbounds nuw i8, ptr %.04355.i, i64 %.09.i49.i
  %i.hn = load i8, ptr %i.hm, align 1
  %i.ho = zext i8 %i.hn to i64
  %i.hp = xor i64 %i.hl, %i.ho
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr @crc64_nvme_table, i64 %i.hp
  %i.hr = load i64, ptr %i.hq, align 8
  %i.hs = xor i64 %i.hr, %i.hk                    ; 2 uses
  %i.ht = lshr i64 %i.hs, 8
  %i.hu = and i64 %i.hs, 255
  %i.hv = getelementptr inbounds nuw i8, ptr %.04355.i, i64 %.09.i49.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  %i.hx = load i8, ptr %i.hw, align 1
  %i.hy = zext i8 %i.hx to i64
  %i.hz = xor i64 %i.hu, %i.hy
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr @crc64_nvme_table, i64 %i.hz
  %i.ib = load i64, ptr %i.ia, align 8
  %i.ic = xor i64 %i.ib, %i.ht                    ; 3 uses
  %i.id = add nuw i64 %.09.i49.i, 2               ; 2 uses
  %niter73.next.1 = add i64 %niter73, 2           ; 2 uses
  %niter73.ncmp.1 = icmp eq i64 %niter73.next.1, %unroll_iter72
  br i1 %niter73.ncmp.1, label %crc64_nvme.exit53.i.loopexit.unr-lcssa, label %.lr.ph.i48.i, !llvm.loop !1

crc64_nvme.exit53.i.loopexit.unr-lcssa:           ; preds = %.lr.ph.i48.i
  br i1 %lcmp.mod69.not, label %crc64_nvme.exit53.i.loopexit, label %.lr.ph.i48.i.epil.preheader

.lr.ph.i48.i.epil.preheader:                      ; preds = %crc64_nvme.exit53.i.loopexit.unr-lcssa, %.lr.ph.i48.i.preheader
  %.09.i49.i.epil.init = phi i64 [ 0, %.lr.ph.i48.i.preheader ], [ %i.id, %crc64_nvme.exit53.i.loopexit.unr-lcssa ]
  %.078.i50.i.epil.init = phi i64 [ %.078.i50.i.ph, %.lr.ph.i48.i.preheader ], [ %i.ic, %crc64_nvme.exit53.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.ie = lshr i64 %.078.i50.i.epil.init, 8
  %i.if = and i64 %.078.i50.i.epil.init, 255
  %i.ig = getelementptr inbounds nuw i8, ptr %.04355.i, i64 %.09.i49.i.epil.init
  %i.ih = load i8, ptr %i.ig, align 1
  %i.ii = zext i8 %i.ih to i64
  %i.ij = xor i64 %i.if, %i.ii
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr @crc64_nvme_table, i64 %i.ij
  %i.il = load i64, ptr %i.ik, align 8
  %i.im = xor i64 %i.il, %i.ie
  br label %crc64_nvme.exit53.i.loopexit

crc64_nvme.exit53.i.loopexit:                     ; preds = %crc64_nvme.exit53.i.loopexit.unr-lcssa, %.lr.ph.i48.i.epil.preheader
  %.lcssa65 = phi i64 [ %i.ic, %crc64_nvme.exit53.i.loopexit.unr-lcssa ], [ %i.im, %.lr.ph.i48.i.epil.preheader ]
  %.0.i = xor i64 %.lcssa65, -1
  %i.in = tail call noundef i64 @llvm.bswap.i64(i64 %.0.i)
  store i64 %i.in, ptr %i.gf, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store i16 %i.dk, ptr %i.io, align 8
  %i.ip = load i64, ptr %6, align 8
  %i.iq = lshr i64 %i.ip, 40
  %i.ir = trunc i64 %i.iq to i8
  %i.is = getelementptr inbounds nuw i8, ptr %i.gf, i64 10
  store i8 %i.ir, ptr %i.is, align 2
  %i.it = load i64, ptr %6, align 8
  %i.iu = lshr i64 %i.it, 32
  %i.iv = trunc i64 %i.iu to i8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gf, i64 11
  store i8 %i.iv, ptr %i.iw, align 1
  %i.ix = load i64, ptr %6, align 8
  %i.iy = lshr i64 %i.ix, 24
  %i.iz = trunc i64 %i.iy to i8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  store i8 %i.iz, ptr %i.ja, align 4
  %i.jb = load i64, ptr %6, align 8
  %i.jc = lshr i64 %i.jb, 16
  %i.jd = trunc i64 %i.jc to i8
  %i.je = getelementptr inbounds nuw i8, ptr %i.gf, i64 13
  store i8 %i.jd, ptr %i.je, align 1
  %i.jf = load i64, ptr %6, align 8
  %i.jg = lshr i64 %i.jf, 8
  %i.jh = trunc i64 %i.jg to i8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.gf, i64 14
  store i8 %i.jh, ptr %i.ji, align 2
  %i.jj = load i64, ptr %6, align 8
  %i.jk = trunc i64 %i.jj to i8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gf, i64 15
  store i8 %i.jk, ptr %i.jl, align 1
  %i.jm = load i8, ptr %i.cu, align 1
  %i.jn = and i8 %i.jm, 7
  %.not45.i = icmp eq i8 %i.jn, 3
  br i1 %.not45.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %crc64_nvme.exit53.i.loopexit
  %i.jo = load i64, ptr %6, align 8
  %i.jp = add i64 %i.jo, 1
  store i64 %i.jp, ptr %6, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %crc64_nvme.exit53.i.loopexit
  %i.jq = load i64, ptr %i.da, align 8            ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.04256.i, i64 %i.jq ; 2 uses
  %i.js = load i16, ptr %i.dl, align 8
  %i.jt = zext i16 %i.js to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %.04355.i, i64 %i.jt
  %i.jv = icmp ult ptr %i.jr, %i.ct
  br i1 %i.jv, label %.lr.ph.i18.split, label %nvme_dif_pract_generate_dif_crc16.exit, !llvm.loop !12

bb.v:                                             ; preds = %bb.a
  tail call void @abort() #11
  unreachable

nvme_dif_pract_generate_dif_crc16.exit:           ; preds = %bb.u, %bb.s, %bb.k, %bb.i, %trace_pci_nvme_dif_pract_generate_dif_crc64.exit.i, %trace_pci_nvme_dif_pract_generate_dif_crc16.exit.i
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext range(i16 0, 16770) i16 @nvme_dif_check(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, ptr noundef %3, i64 %4, i8 noundef zeroext %5, i64 noundef %6, i16 noundef zeroext %7, i16 noundef zeroext %8, ptr nofree noundef captures(none) %9) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.b = load i64, ptr %9, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12608 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8
  %.not.i = icmp eq i8 %i.d, 0                    ; 2 uses
  %i.e = select i1 %.not.i, i64 4294967295, i64 281474976710655
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 325 ; 4 uses
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = and i8 %i.g, 7                           ; 2 uses
  %i.i = icmp ne i8 %i.h, 1
  %i.j = and i8 %5, 1
  %.not8.i = icmp eq i8 %i.j, 0                   ; 2 uses
  %or.cond.i = or i1 %.not8.i, %i.i
  %i.k = and i64 %i.e, %6
  %.not9.i = icmp eq i64 %i.k, %i.b
  %or.cond11.i = select i1 %or.cond.i, i1 true, i1 %.not9.i ; 2 uses
  %i.l = icmp ne i8 %i.h, 3
  %or.cond12.i = or i1 %.not8.i, %i.l             ; 2 uses
  %spec.select.i = select i1 %or.cond12.i, i16 0, i16 385
  %.0.i = select i1 %or.cond11.i, i16 %spec.select.i, i16 16769
  %.not = and i1 %or.cond12.i, %or.cond11.i
  br i1 %.not, label %bb.b, label %nvme_dif_prchk.exit.thread67

bb.b:                                             ; preds = %bb.a
  %i.m = and i8 %i.g, 8
  %.not54 = icmp eq i8 %i.m, 0
  br i1 %.not54, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12584
  %i.o = load i16, ptr %i.n, align 8
  %.neg = select i1 %.not.i, i16 -8, i16 -16
  %i.p = add i16 %i.o, %.neg
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.048 = phi i16 [ 0, %bb.b ], [ %i.p, %bb.c ]   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12592 ; 6 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = sext i16 %.048 to i64                    ; 3 uses
  %i.t = trunc i64 %i.r to i16
  %i.u = add i16 %.048, %i.t
  %i.v = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i61 = icmp eq i32 %i.v, 0
  br i1 %.not.i61, label %trace_pci_nvme_dif_check.exit, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.w = load i16, ptr @_TRACE_PCI_NVME_DIF_CHECK_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.w, 0
  br i1 %.not2.i, label %trace_pci_nvme_dif_check.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr @qemu_loglevel, align 4
  %i.y = and i32 %i.x, 32768
  %.not3.i = icmp eq i32 %i.y, 0
  br i1 %.not3.i, label %trace_pci_nvme_dif_check.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = zext i8 %5 to i32
  %i.aa = zext i16 %i.u to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.4, i32 noundef %i.z, i32 noundef %i.aa) #10
  br label %trace_pci_nvme_dif_check.exit

trace_pci_nvme_dif_check.exit:                    ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.not90 = icmp eq i64 %2, 0
  br i1 %.not90, label %nvme_dif_prchk.exit.thread67, label %.lr.ph

.lr.ph:                                           ; preds = %trace_pci_nvme_dif_check.exit
  %i.ab = zext i8 %5 to i32                       ; 3 uses
  %i.ac = and i32 %i.ab, 4
  %.not46.i.i = icmp eq i32 %i.ac, 0              ; 2 uses
  %.not47.i.i = icmp eq i16 %.048, 0              ; 2 uses
  %i.ad = and i32 %i.ab, 2
  %.not49.i.i = icmp eq i32 %i.ad, 0              ; 2 uses
  %i.ae = zext i16 %7 to i32                      ; 2 uses
  %i.af = zext i16 %8 to i32                      ; 2 uses
  %i.ag = and i32 %i.ab, 1
  %.not51.i.i = icmp eq i32 %i.ag, 0              ; 2 uses
  %i.ah = icmp eq i64 %6, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12584
  %i.aj = icmp eq i16 %.048, 1
  %unroll_iter112 = and i64 %i.s, -2
  %i.ak = and i16 %.048, 1
  %lcmp.mod109.not = icmp eq i16 %i.ak, 0
  %lcmp.mod111 = trunc i16 %.048 to i1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.bf
  %.04982 = phi ptr [ %1, %.lr.ph ], [ %i.hq, %bb.bf ] ; 6 uses
  %.05177 = phi ptr [ %3, %.lr.ph ], [ %i.ht, %bb.bf ] ; 6 uses
  %i.al = getelementptr inbounds i8, ptr %.05177, i64 %i.s ; 19 uses
  %i.am = load i64, ptr %9, align 8               ; 4 uses
  %i.an = load i8, ptr %i.c, align 8
  switch i8 %i.an, label %bb.ba [
    i8 0, label %bb.i
    i8 2, label %bb.ae
  ]

bb.i:                                             ; preds = %bb.h
  %i.ao = load i8, ptr %i.f, align 1
  %i.ap = and i8 %i.ao, 7
  switch i8 %i.ap, label %bb.p [
    i8 3, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ar = load i32, ptr %i.aq, align 4
  %.not.i.i = icmp eq i32 %i.ar, -1
  br i1 %.not.i.i, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.at = load i16, ptr %i.as, align 2            ; 2 uses
  %i.au = tail call noundef i16 @llvm.bswap.i16(i16 %i.at)
  %.not33.i.i = icmp eq i16 %i.at, -1
  br i1 %.not33.i.i, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = tail call noundef i32 @llvm.bswap.i32(i32 %i.aw)
  %i.ay = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i, label %nvme_dif_prchk.exit.thread, label %bb.m, !prof !9

bb.m:                                             ; preds = %bb.l
  %i.az = load i16, ptr @_TRACE_PCI_NVME_DIF_PRCHK_DISABLED_CRC16_DSTATE, align 2
  %.not2.i.i.i = icmp eq i16 %i.az, 0
  br i1 %.not2.i.i.i, label %nvme_dif_prchk.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = load i32, ptr @qemu_loglevel, align 4
  %i.bb = and i32 %i.ba, 32768
  %.not3.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not3.i.i.i, label %nvme_dif_prchk.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = zext i16 %i.au to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.5, i32 noundef %i.bc, i32 noundef %i.ax) #10
  br label %nvme_dif_prchk.exit.thread

bb.p:                                             ; preds = %bb.k, %bb.j, %bb.i
  br i1 %.not46.i.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = load i64, ptr %i.q, align 8             ; 2 uses
  %.not.i41.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i41.i.i, label %crc16_t10dif.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i ], [ 0, %bb.q ] ; 2 uses
  %.079.i.i.i = phi i16 [ %i.bn, %.lr.ph.i.i.i ], [ 0, %bb.q ] ; 2 uses
  %i.be = shl i16 %.079.i.i.i, 8
  %i.bf = lshr i16 %.079.i.i.i, 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.04982, i64 %indvars.iv.i.i.i
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i16
  %i.bj = xor i16 %i.bf, %i.bi
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr @crc16_t10dif_table, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = xor i16 %i.bm, %i.be                    ; 2 uses
  %i.bo = add i64 %indvars.iv.i.i.i, 1            ; 2 uses
  %i.bp = and i64 %i.bo, 4294967295
  %i.bq = icmp ugt i64 %i.bd, %i.bp
  br i1 %i.bq, label %.lr.ph.i.i.i, label %crc16_t10dif.exit.i.i, !llvm.loop !0

crc16_t10dif.exit.i.i:                            ; preds = %.lr.ph.i.i.i, %bb.q
  %.07.lcssa.i.i.i = phi i16 [ 0, %bb.q ], [ %i.bn, %.lr.ph.i.i.i ] ; 2 uses
  br i1 %.not47.i.i, label %crc16_t10dif.exit48.i.i, label %.lr.ph.i43.i.i

.lr.ph.i43.i.i:                                   ; preds = %crc16_t10dif.exit.i.i, %.lr.ph.i43.i.i
  %indvars.iv.i44.i.i = phi i64 [ %i.cb, %.lr.ph.i43.i.i ], [ 0, %crc16_t10dif.exit.i.i ] ; 2 uses
  %.079.i45.i.i = phi i16 [ %i.ca, %.lr.ph.i43.i.i ], [ %.07.lcssa.i.i.i, %crc16_t10dif.exit.i.i ] ; 2 uses
  %i.br = shl i16 %.079.i45.i.i, 8
  %i.bs = lshr i16 %.079.i45.i.i, 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.05177, i64 %indvars.iv.i44.i.i
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i16
  %i.bw = xor i16 %i.bs, %i.bv
  %i.bx = zext nneg i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr @crc16_t10dif_table, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2
  %i.ca = xor i16 %i.bz, %i.br                    ; 2 uses
  %i.cb = add i64 %indvars.iv.i44.i.i, 1          ; 2 uses
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = icmp ult i64 %i.cc, %i.s
  br i1 %i.cd, label %.lr.ph.i43.i.i, label %crc16_t10dif.exit48.i.i, !llvm.loop !0

crc16_t10dif.exit48.i.i:                          ; preds = %.lr.ph.i43.i.i, %crc16_t10dif.exit.i.i
  %.030.i.i = phi i16 [ %.07.lcssa.i.i.i, %crc16_t10dif.exit.i.i ], [ %i.ca, %.lr.ph.i43.i.i ] ; 2 uses
  %i.ce = load i16, ptr %i.al, align 8
  %i.cf = tail call noundef i16 @llvm.bswap.i16(i16 %i.ce) ; 4 uses
  %i.cg = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i49.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i49.i.i, label %trace_pci_nvme_dif_prchk_guard_crc16.exit.i.i, label %bb.r, !prof !9

bb.r:                                             ; preds = %crc16_t10dif.exit48.i.i
  %i.ch = load i16, ptr @_TRACE_PCI_NVME_DIF_PRCHK_GUARD_CRC16_DSTATE, align 2
  %.not2.i50.i.i = icmp eq i16 %i.ch, 0
  br i1 %.not2.i50.i.i, label %trace_pci_nvme_dif_prchk_guard_crc16.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = load i32, ptr @qemu_loglevel, align 4
  %i.cj = and i32 %i.ci, 32768
  %.not3.i51.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not3.i51.i.i, label %trace_pci_nvme_dif_prchk_guard_crc16.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = zext i16 %i.cf to i32
  %i.cl = zext i16 %.030.i.i to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.6, i32 noundef %i.ck, i32 noundef %i.cl) #10
  %.pre.i.i = load i16, ptr %i.al, align 8
  %.pre64.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.pre.i.i)
  br label %trace_pci_nvme_dif_prchk_guard_crc16.exit.i.i

trace_pci_nvme_dif_prchk_guard_crc16.exit.i.i:    ; preds = %bb.t, %bb.s, %bb.r, %crc16_t10dif.exit48.i.i
  %.pre-phi65.i.i = phi i16 [ %i.cf, %crc16_t10dif.exit48.i.i ], [ %i.cf, %bb.r ], [ %i.cf, %bb.s ], [ %.pre64.i.i, %bb.t ]
  %.not36.not.i.i = icmp eq i16 %.pre-phi65.i.i, %.030.i.i
  br i1 %.not36.not.i.i, label %bb.u, label %nvme_dif_prchk.exit

bb.u:                                             ; preds = %trace_pci_nvme_dif_prchk_guard_crc16.exit.i.i, %bb.p
  br i1 %.not49.i.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %i.al, i64 2 ; 2 uses
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = tail call noundef i16 @llvm.bswap.i16(i16 %i.cn) ; 4 uses
  %i.cp = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i52.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i52.i.i, label %trace_pci_nvme_dif_prchk_apptag.exit.i.i, label %bb.w, !prof !9

bb.w:                                             ; preds = %bb.v
  %i.cq = load i16, ptr @_TRACE_PCI_NVME_DIF_PRCHK_APPTAG_DSTATE, align 2
  %.not3.i53.i.i = icmp eq i16 %i.cq, 0
  br i1 %.not3.i53.i.i, label %trace_pci_nvme_dif_prchk_apptag.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = load i32, ptr @qemu_loglevel, align 4
  %i.cs = and i32 %i.cr, 32768
  %.not4.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not4.i.i.i, label %trace_pci_nvme_dif_prchk_apptag.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ct = zext i16 %i.co to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.7, i32 noundef %i.ct, i32 noundef %i.ae, i32 noundef %i.af) #10
  %.pre59.i.i = load i16, ptr %i.cm, align 2
  %.pre62.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.pre59.i.i)
  br label %trace_pci_nvme_dif_prchk_apptag.exit.i.i

trace_pci_nvme_dif_prchk_apptag.exit.i.i:         ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.pre-phi63.i.i = phi i16 [ %i.co, %bb.v ], [ %i.co, %bb.w ], [ %i.co, %bb.x ], [ %.pre62.i.i, %bb.y ]
  %i.cu = xor i16 %.pre-phi63.i.i, %7
  %i.cv = and i16 %i.cu, %8
  %.not38.i.i = icmp eq i16 %i.cv, 0
  br i1 %.not38.i.i, label %bb.z, label %nvme_dif_prchk.exit.thread67

bb.z:                                             ; preds = %trace_pci_nvme_dif_prchk_apptag.exit.i.i, %bb.u
  br i1 %.not51.i.i, label %nvme_dif_prchk.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cw = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = tail call noundef i32 @llvm.bswap.i32(i32 %i.cx) ; 4 uses
  %i.cz = trunc i64 %i.am to i32
  %i.da = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i54.i.i = icmp eq i32 %i.da, 0
  br i1 %.not.i54.i.i, label %trace_pci_nvme_dif_prchk_reftag_crc16.exit.i.i, label %bb.ab, !prof !9

bb.ab:                                            ; preds = %bb.aa
  %i.db = load i16, ptr @_TRACE_PCI_NVME_DIF_PRCHK_REFTAG_CRC16_DSTATE, align 2
  %.not2.i55.i.i = icmp eq i16 %i.db, 0
  br i1 %.not2.i55.i.i, label %trace_pci_nvme_dif_prchk_reftag_crc16.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dc = load i32, ptr @qemu_loglevel, align 4
  %i.dd = and i32 %i.dc, 32768
  %.not3.i56.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not3.i56.i.i, label %trace_pci_nvme_dif_prchk_reftag_crc16.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.8, i32 noundef %i.cy, i32 noundef %i.cz) #10
  %.pre60.i.i = load i32, ptr %i.cw, align 4
  %.pre61.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %.pre60.i.i)
  br label %trace_pci_nvme_dif_prchk_reftag_crc16.exit.i.i

trace_pci_nvme_dif_prchk_reftag_crc16.exit.i.i:   ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.pre-phi.i.i = phi i32 [ %i.cy, %bb.aa ], [ %i.cy, %bb.ab ], [ %i.cy, %bb.ac ], [ %.pre61.i.i, %bb.ad ]
  %i.de = zext i32 %.pre-phi.i.i to i64
  %.not40.i.i = icmp eq i64 %i.am, %i.de
  br i1 %.not40.i.i, label %nvme_dif_prchk.exit.thread, label %nvme_dif_prchk.exit.thread67

bb.ae:                                            ; preds = %bb.h
  %i.df = getelementptr inbounds nuw i8, ptr %i.al, i64 10
  %10 = load i8, ptr %i.df, align 2
  %11 = zext i8 %10 to i64
  %12 = shl nuw nsw i64 %11, 40
  %13 = getelementptr inbounds nuw i8, ptr %i.al, i64 11
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 32
  %17 = or disjoint i64 %16, %12
  %18 = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %19 = load i8, ptr %18, align 2
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %20, 24
  %22 = or disjoint i64 %17, %21
  %23 = getelementptr inbounds nuw i8, ptr %i.al, i64 13
  %24 = load i8, ptr %23, align 1
  %i.dg = zext i8 %24 to i64
  %i.dh = shl nuw nsw i64 %i.dg, 16
  %25 = or disjoint i64 %22, %i.dh
  %i.di = getelementptr inbounds nuw i8, ptr %i.al, i64 14
  %i.dj = load i8, ptr %i.di, align 2
  %i.dk = zext i8 %i.dj to i64
  %i.dl = shl nuw nsw i64 %i.dk, 8
  %i.dm = or disjoint i64 %25, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.al, i64 15
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = zext i8 %i.do to i64
  %i.dq = or disjoint i64 %i.dm, %i.dp            ; 4 uses
  %i.dr = load i8, ptr %i.f, align 1
  %i.ds = and i8 %i.dr, 7
  switch i8 %i.ds, label %bb.al [
    i8 3, label %bb.af
    i8 1, label %bb.ag
    i8 2, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %.not.i29.i = icmp eq i64 %i.dq, 281474976710655
  br i1 %.not.i29.i, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ae
  %i.dt = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.du = load i16, ptr %i.dt, align 8
  %.not45.i.i = icmp eq i16 %i.du, -1
  br i1 %.not45.i.i, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.dv = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.dw = load i16, ptr %i.dv, align 2
  %i.dx = tail call noundef i16 @llvm.bswap.i16(i16 %i.dw)
  %i.dy = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i26.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i26.i, label %nvme_dif_prchk.exit.thread, label %bb.ai, !prof !9

bb.ai:                                            ; preds = %bb.ah
  %i.dz = load i16, ptr @_TRACE_PCI_NVME_DIF_PRCHK_DISABLED_CRC64_DSTATE, align 2
  %.not2.i.i27.i = icmp eq i16 %i.dz, 0
  br i1 %.not2.i.i27.i, label %nvme_dif_prchk.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ea = load i32, ptr @qemu_loglevel, align 4
  %i.eb = and i32 %i.ea, 32768
  %.not3.i.i28.i = icmp eq i32 %i.eb, 0
  br i1 %.not3.i.i28.i, label %nvme_dif_prchk.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ec = zext i16 %i.dx to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, i32 noundef %i.ec, i64 noundef range(i64 0, 281474976710656) %i.dq) #10
  br label %nvme_dif_prchk.exit.thread

bb.al:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  br i1 %.not46.i.i, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ed = load i64, ptr %i.q, align 8             ; 5 uses
  %.not.i53.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not.i53.i.i, label %crc64_nvme.exit.i.i, label %.lr.ph.i.i19.i.preheader

.lr.ph.i.i19.i.preheader:                         ; preds = %bb.am
  %xtraiter = and i64 %i.ed, 1
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %.lr.ph.i.i19.i.epil.preheader, label %.lr.ph.i.i19.i.preheader.new

.lr.ph.i.i19.i.preheader.new:                     ; preds = %.lr.ph.i.i19.i.preheader
  %unroll_iter = and i64 %i.ed, -2
  br label %.lr.ph.i.i19.i

.lr.ph.i.i19.i:                                   ; preds = %.lr.ph.i.i19.i, %.lr.ph.i.i19.i.preheader.new
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.i.i19.i.preheader.new ], [ %i.ey, %.lr.ph.i.i19.i ] ; 3 uses
  %.078.i.i.i = phi i64 [ -1, %.lr.ph.i.i19.i.preheader.new ], [ %i.ex, %.lr.ph.i.i19.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i19.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i19.i ]
  %i.ef = lshr i64 %.078.i.i.i, 8
  %i.eg = and i64 %.078.i.i.i, 255
  %i.eh = getelementptr inbounds nuw i8, ptr %.04982, i64 %.09.i.i.i
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = zext i8 %i.ei to i64
  %i.ek = xor i64 %i.eg, %i.ej
  %i.el = getelementptr inbounds nuw [8 x i8], ptr @crc64_nvme_table, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8
  %i.en = xor i64 %i.em, %i.ef                    ; 2 uses
  %i.eo = lshr i64 %i.en, 8
  %i.ep = and i64 %i.en, 255
  %i.eq = getelementptr inbounds nuw i8, ptr %.04982, i64 %.09.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.es = load i8, ptr %i.er, align 1
  %i.et = zext i8 %i.es to i64
  %i.eu = xor i64 %i.ep, %i.et
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr @crc64_nvme_table, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = xor i64 %i.ew, %i.eo                    ; 3 uses
  %i.ey = add nuw i64 %.09.i.i.i, 2               ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %crc64_nvme.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i19.i, !llvm.loop !1

crc64_nvme.exit.i.i.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i19.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %crc64_nvme.exit.i.i, label %.lr.ph.i.i19.i.epil.preheader

.lr.ph.i.i19.i.epil.preheader:                    ; preds = %crc64_nvme.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i19.i.preheader
  %.09.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i19.i.preheader ], [ %i.ey, %crc64_nvme.exit.i.i.loopexit.unr-lcssa ]
  %.078.i.i.i.epil.init = phi i64 [ -1, %.lr.ph.i.i19.i.preheader ], [ %i.ex, %crc64_nvme.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod107 = trunc i64 %i.ed to i1
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %i.ez = lshr i64 %.078.i.i.i.epil.init, 8
  %i.fa = and i64 %.078.i.i.i.epil.init, 255
  %i.fb = getelementptr inbounds nuw i8, ptr %.04982, i64 %.09.i.i.i.epil.init
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = zext i8 %i.fc to i64
  %i.fe = xor i64 %i.fa, %i.fd
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr @crc64_nvme_table, i64 %i.fe
  %i.fg = load i64, ptr %i.ff, align 8
  %i.fh = xor i64 %i.fg, %i.ez
  br label %crc64_nvme.exit.i.i

crc64_nvme.exit.i.i:                              ; preds = %.lr.ph.i.i19.i.epil.preheader, %crc64_nvme.exit.i.i.loopexit.unr-lcssa, %bb.am
  %.07.lcssa.i.i20.i = phi i64 [ -1, %bb.am ], [ %i.ex, %crc64_nvme.exit.i.i.loopexit.unr-lcssa ], [ %i.fh, %.lr.ph.i.i19.i.epil.preheader ] ; 3 uses
  br i1 %.not47.i.i, label %crc64_nvme.exit60.i.i, label %.lr.ph.i55.i.i.preheader

.lr.ph.i55.i.i.preheader:                         ; preds = %crc64_nvme.exit.i.i
  br i1 %i.aj, label %.lr.ph.i55.i.i.epil.preheader, label %.lr.ph.i55.i.i

.lr.ph.i55.i.i:                                   ; preds = %.lr.ph.i55.i.i.preheader, %.lr.ph.i55.i.i
  %.09.i56.i.i = phi i64 [ %i.gb, %.lr.ph.i55.i.i ], [ 0, %.lr.ph.i55.i.i.preheader ] ; 3 uses
  %.078.i57.i.i = phi i64 [ %i.ga, %.lr.ph.i55.i.i ], [ %.07.lcssa.i.i20.i, %.lr.ph.i55.i.i.preheader ] ; 2 uses
  %niter113 = phi i64 [ %niter113.next.1, %.lr.ph.i55.i.i ], [ 0, %.lr.ph.i55.i.i.preheader ]
  %i.fi = lshr i64 %.078.i57.i.i, 8
  %i.fj = and i64 %.078.i57.i.i, 255
  %i.fk = getelementptr inbounds nuw i8, ptr %.05177, i64 %.09.i56.i.i
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = zext i8 %i.fl to i64
  %i.fn = xor i64 %i.fj, %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr @crc64_nvme_table, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = xor i64 %i.fp, %i.fi                    ; 2 uses
  %i.fr = lshr i64 %i.fq, 8
  %i.fs = and i64 %i.fq, 255
  %i.ft = getelementptr inbounds nuw i8, ptr %.05177, i64 %.09.i56.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 1
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = zext i8 %i.fv to i64
  %i.fx = xor i64 %i.fs, %i.fw
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr @crc64_nvme_table, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8
  %i.ga = xor i64 %i.fz, %i.fr                    ; 3 uses
  %i.gb = add nuw i64 %.09.i56.i.i, 2             ; 2 uses
  %niter113.next.1 = add i64 %niter113, 2         ; 2 uses
  %niter113.ncmp.1 = icmp eq i64 %niter113.next.1, %unroll_iter112
  br i1 %niter113.ncmp.1, label %crc64_nvme.exit60.i.i.loopexit.unr-lcssa, label %.lr.ph.i55.i.i, !llvm.loop !1

crc64_nvme.exit60.i.i.loopexit.unr-lcssa:         ; preds = %.lr.ph.i55.i.i
  br i1 %lcmp.mod109.not, label %crc64_nvme.exit60.i.i, label %.lr.ph.i55.i.i.epil.preheader

.lr.ph.i55.i.i.epil.preheader:                    ; preds = %crc64_nvme.exit60.i.i.loopexit.unr-lcssa, %.lr.ph.i55.i.i.preheader
  %.09.i56.i.i.epil.init = phi i64 [ 0, %.lr.ph.i55.i.i.preheader ], [ %i.gb, %crc64_nvme.exit60.i.i.loopexit.unr-lcssa ]
  %.078.i57.i.i.epil.init = phi i64 [ %.07.lcssa.i.i20.i, %.lr.ph.i55.i.i.preheader ], [ %i.ga, %crc64_nvme.exit60.i.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %i.gc = lshr i64 %.078.i57.i.i.epil.init, 8
  %i.gd = and i64 %.078.i57.i.i.epil.init, 255
  %i.ge = getelementptr inbounds nuw i8, ptr %.05177, i64 %.09.i56.i.i.epil.init
  %i.gf = load i8, ptr %i.ge, align 1
  %i.gg = zext i8 %i.gf to i64
  %i.gh = xor i64 %i.gd, %i.gg
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr @crc64_nvme_table, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8
  %i.gk = xor i64 %i.gj, %i.gc
  br label %crc64_nvme.exit60.i.i

crc64_nvme.exit60.i.i:                            ; preds = %.lr.ph.i55.i.i.epil.preheader, %crc64_nvme.exit60.i.i.loopexit.unr-lcssa, %crc64_nvme.exit.i.i
  %.0.in.i.i = phi i64 [ %.07.lcssa.i.i20.i, %crc64_nvme.exit.i.i ], [ %i.ga, %crc64_nvme.exit60.i.i.loopexit.unr-lcssa ], [ %i.gk, %.lr.ph.i55.i.i.epil.preheader ]
  %.0.i.i = xor i64 %.0.in.i.i, -1                ; 2 uses
  %i.gl = load i64, ptr %i.al, align 8
  %i.gm = tail call noundef i64 @llvm.bswap.i64(i64 %i.gl) ; 4 uses
  %i.gn = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i61.i.i = icmp eq i32 %i.gn, 0
  br i1 %.not.i61.i.i, label %trace_pci_nvme_dif_prchk_guard_crc64.exit.i.i, label %bb.an, !prof !9

bb.an:                                            ; preds = %crc64_nvme.exit60.i.i
  %i.go = load i16, ptr @_TRACE_PCI_NVME_DIF_PRCHK_GUARD_CRC64_DSTATE, align 2
  %.not2.i62.i.i = icmp eq i16 %i.go, 0
  br i1 %.not2.i62.i.i, label %trace_pci_nvme_dif_prchk_guard_crc64.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gp = load i32, ptr @qemu_loglevel, align 4
  %i.gq = and i32 %i.gp, 32768
  %.not3.i63.i.i = icmp eq i32 %i.gq, 0
  br i1 %.not3.i63.i.i, label %trace_pci_nvme_dif_prchk_guard_crc64.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10, i64 noundef %i.gm, i64 noundef %.0.i.i) #10
  %.pre.i21.i = load i64, ptr %i.al, align 8
  %.pre73.i.i = tail call noundef i64 @llvm.bswap.i64(i64 %.pre.i21.i)
  br label %trace_pci_nvme_dif_prchk_guard_crc64.exit.i.i

trace_pci_nvme_dif_prchk_guard_crc64.exit.i.i:    ; preds = %bb.ap, %bb.ao, %bb.an, %crc64_nvme.exit60.i.i
  %.pre-phi74.i.i = phi i64 [ %i.gm, %crc64_nvme.exit60.i.i ], [ %i.gm, %bb.an ], [ %i.gm, %bb.ao ], [ %.pre73.i.i, %bb.ap ]
  %.not48.i.i = icmp eq i64 %.pre-phi74.i.i, %.0.i.i
  br i1 %.not48.i.i, label %bb.aq, label %nvme_dif_prchk.exit

bb.aq:                                            ; preds = %trace_pci_nvme_dif_prchk_guard_crc64.exit.i.i, %bb.al
  br i1 %.not49.i.i, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gr = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
end_hunk_0
