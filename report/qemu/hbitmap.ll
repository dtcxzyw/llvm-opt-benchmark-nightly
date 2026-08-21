inline.NumInlined: 39
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@hbitmap_set:bb.a
  %i.cm = icmp ult i64 %.unshifted.i46.i, 64
  br i1 %i.cm, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 419, ptr noundef nonnull @__PRETTY_FUNCTION__.hb_set_elem) #11, !inline_history !15
  unreachable

bb.l:                                             ; preds = %bb.j
  %.not.i.i = icmp ugt i64 %.039.i, %.tr51.i
  br i1 %.not.i.i, label %bb.m, label %hb_set_elem.exit48.i

bb.m:                                             ; preds = %bb.l
  call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 420, ptr noundef nonnull @__PRETTY_FUNCTION__.hb_set_elem) #11, !inline_history !15
  unreachable

hb_set_elem.exit48.i:                             ; preds = %bb.l
  %i.cn = and i64 %.tr51.i, 63
  %i.co = shl i64 2, %i.cn
  %i.cp = and i64 %.039.i, 63
  %.neg.i47.i = shl nsw i64 -1, %i.cp
  %i.cq = add i64 %.neg.i47.i, %i.co
  %i.cr = load i64, ptr %i.cl, align 8            ; 2 uses
  %i.cs = or i64 %i.cr, %i.cq                     ; 2 uses
  store i64 %i.cs, ptr %i.cl, align 8
  %i.ct = icmp ne i64 %i.cr, %i.cs
  %i.cu = zext i1 %i.ct to i32
  %i.cv = or i32 %.138.i, %i.cu
  %i.cw = icmp ne i32 %i.cv, 0                    ; 2 uses
  %i.cx = icmp ne i64 %indvars.iv.i, 0
  %or.cond.i = select i1 %i.cx, i1 %i.cw, i1 false
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br i1 %or.cond.i, label %tailrecurse.i, label %hb_set_between.exit

hb_set_between.exit:                              ; preds = %hb_set_elem.exit48.i
  %current.ret.tr52.i = select i1 %ret.known.tr.i, i1 true, i1 %i.cw
  br i1 %current.ret.tr52.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %hb_set_between.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %.not = icmp eq ptr %i.cz, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @hbitmap_set(ptr noundef nonnull %i.cz, i64 noundef %1, i64 noundef %2)
  br label %bb.p

bb.p:                                             ; preds = %hb_set_between.exit, %bb.n, %bb.o, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @hbitmap_reset(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.HBitmapIter, align 8        ; 9 uses
  %i.a = add i64 %2, %1                           ; 2 uses
  %i.b = add i64 %i.a, -1                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64                     ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %notmask = shl nsw i64 -1, %i.e
  %i.g = xor i64 %notmask, -1                     ; 2 uses
  %i.h = and i64 %1, %i.g
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 569, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_reset) #11
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = and i64 %2, %i.g
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %0, align 8
  %i.m = icmp eq i64 %i.a, %i.l
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 570, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_reset) #11
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.n = lshr i64 %1, %i.e
  %i.o = lshr i64 %i.b, %i.e                      ; 4 uses
  %i.p = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %trace_hbitmap_reset.exit, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.q = load i16, ptr @_TRACE_HBITMAP_RESET_DSTATE, align 2
  %.not4.i = icmp eq i16 %i.q, 0
  br i1 %.not4.i, label %trace_hbitmap_reset.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load i32, ptr @qemu_loglevel, align 4
  %i.s = and i32 %i.r, 32768
  %.not5.i = icmp eq i32 %i.s, 0
  br i1 %.not5.i, label %trace_hbitmap_reset.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.29, ptr noundef nonnull %0, i64 noundef %1, i64 noundef range(i64 1, 0) %2, i64 noundef %i.n, i64 noundef %i.o) #12
  %.pre = load i32, ptr %i.c, align 8
  %.pre51 = zext i32 %.pre to i64                 ; 2 uses
  %.pre52 = lshr i64 %i.b, %.pre51
  br label %trace_hbitmap_reset.exit

trace_hbitmap_reset.exit:                         ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.pre-phi53 = phi i64 [ %i.o, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ], [ %.pre52, %bb.j ] ; 3 uses
  %.pre-phi = phi i64 [ %i.e, %bb.g ], [ %i.e, %bb.h ], [ %i.e, %bb.i ], [ %.pre51, %bb.j ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp ult i64 %.pre-phi53, %i.u
  br i1 %i.v, label %.peel.begin, label %bb.k

bb.k:                                             ; preds = %trace_hbitmap_reset.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 577, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_reset) #11
  unreachable

.peel.begin:                                      ; preds = %trace_hbitmap_reset.exit
  %i.w = lshr i64 %1, %.pre-phi                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, i8 0, i64 72, i1 false), !annotation !11
  %i.y = add nuw i64 %.pre-phi53, 1               ; 2 uses
  %i.z = shl i64 %i.w, %.pre-phi
  call void @hbitmap_iter_init(ptr noundef nonnull %3, ptr noundef nonnull %0, i64 noundef %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = lshr i64 %i.y, 6                        ; 3 uses
  %.pre.i = load i64, ptr %i.aa, align 8          ; 2 uses
  %i.ad = icmp eq i64 %.pre.i, 0
  br i1 %i.ad, label %bb.l, label %hbitmap_iter_next_word.exit.i.peel

bb.l:                                             ; preds = %.peel.begin
  %i.ae = call fastcc i64 @hbitmap_iter_skip_words(ptr noundef nonnull %3) ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %hb_count_between.exit, label %hbitmap_iter_next_word.exit.i.peel

hbitmap_iter_next_word.exit.i.peel:               ; preds = %bb.l, %.peel.begin
  %.0.i.i.peel = phi i64 [ %i.ae, %bb.l ], [ %.pre.i, %.peel.begin ] ; 2 uses
  store i64 0, ptr %i.aa, align 8
  %i.ag = load i64, ptr %i.ab, align 8            ; 2 uses
  %.not.i36.peel = icmp ult i64 %i.ag, %i.ac
  br i1 %.not.i36.peel, label %.peel.next, label %.loopexit

.peel.next:                                       ; preds = %hbitmap_iter_next_word.exit.i.peel
  %i.ah = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.0.i.i.peel) ; 2 uses
  %i.ai = call fastcc i64 @hbitmap_iter_skip_words(ptr noundef nonnull %3) ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %hb_count_between.exit, label %hbitmap_iter_next_word.exit.i

hbitmap_iter_next_word.exit.i:                    ; preds = %.peel.next, %bb.m
  %i.ak = phi i64 [ %i.an, %bb.m ], [ %i.ai, %.peel.next ] ; 2 uses
  %.0.i77 = phi i64 [ %i.am, %bb.m ], [ %i.ah, %.peel.next ] ; 2 uses
  %.pre50 = load i64, ptr %i.ab, align 8          ; 2 uses
  store i64 0, ptr %i.aa, align 8
  %.not.i36 = icmp ult i64 %.pre50, %i.ac
  br i1 %.not.i36, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %hbitmap_iter_next_word.exit.i
  %i.al = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.ak)
  %i.am = add i64 %i.al, %.0.i77                  ; 2 uses
  %i.an = call fastcc i64 @hbitmap_iter_skip_words(ptr noundef nonnull %3) ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %hb_count_between.exit, label %hbitmap_iter_next_word.exit.i, !llvm.loop !16

.loopexit:                                        ; preds = %hbitmap_iter_next_word.exit.i, %hbitmap_iter_next_word.exit.i.peel
  %.0.i.i.lcssa = phi i64 [ %.0.i.i.peel, %hbitmap_iter_next_word.exit.i.peel ], [ %i.ak, %hbitmap_iter_next_word.exit.i ]
  %.lcssa47 = phi i64 [ %i.ag, %hbitmap_iter_next_word.exit.i.peel ], [ %.pre50, %hbitmap_iter_next_word.exit.i ]
  %.0.i.lcssa46 = phi i64 [ 0, %hbitmap_iter_next_word.exit.i.peel ], [ %.0.i77, %hbitmap_iter_next_word.exit.i ] ; 2 uses
  %i.ap = icmp eq i64 %.lcssa47, %i.ac
  br i1 %i.ap, label %bb.n, label %hb_count_between.exit

bb.n:                                             ; preds = %.loopexit
  %i.aq = and i64 %i.y, 63
  %notmask.i = shl nsw i64 -1, %i.aq
  %i.ar = xor i64 %notmask.i, -1
  %i.as = and i64 %.0.i.i.lcssa, %i.ar
  %i.at = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.as)
  %i.au = add i64 %i.at, %.0.i.lcssa46
  br label %hb_count_between.exit

hb_count_between.exit:                            ; preds = %bb.m, %.peel.next, %bb.l, %.loopexit, %bb.n
  %.1.i = phi i64 [ %i.au, %bb.n ], [ %.0.i.lcssa46, %.loopexit ], [ 0, %bb.l ], [ %i.ah, %.peel.next ], [ %i.am, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = sub i64 %i.aw, %.1.i
  store i64 %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.r, %hb_count_between.exit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.r ], [ 6, %hb_count_between.exit ] ; 4 uses
  %.tr55.i = phi i64 [ %.141.i, %bb.r ], [ %i.w, %hb_count_between.exit ] ; 4 uses
  %.tr56.i = phi i64 [ %.039.i, %bb.r ], [ %.pre-phi53, %hb_count_between.exit ] ; 4 uses
  %ret.known.tr.i = phi i1 [ true, %bb.r ], [ false, %hb_count_between.exit ]
  %i.az = lshr i64 %.tr55.i, 6                    ; 9 uses
  %i.ba = lshr i64 %.tr56.i, 6                    ; 9 uses
  %i.bb = icmp samesign ult i64 %i.az, %i.ba
  br i1 %i.bb, label %hb_reset_elem.exit.i, label %.loopexit.i

hb_reset_elem.exit.i:                             ; preds = %tailrecurse.i
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i ; 4 uses
  %i.bd = or i64 %.tr55.i, 63                     ; 2 uses
  %i.be = load ptr, ptr %i.bc, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.az ; 2 uses
  %i.bg = add i64 %i.bd, 1                        ; 2 uses
  %i.bh = and i64 %.tr55.i, 63
  %.neg.i.i = shl nsw i64 -1, %i.bh
  %i.bi = load i64, ptr %i.bf, align 8            ; 2 uses
  %.not14.i.i = icmp eq i64 %i.bi, 0
  %i.bj = xor i64 %.neg.i.i, -1
  %i.bk = and i64 %i.bi, %i.bj                    ; 2 uses
  %i.bl = icmp ne i64 %i.bk, 0
  %.not53.i = select i1 %.not14.i.i, i1 true, i1 %i.bl ; 2 uses
  store i64 %i.bk, ptr %i.bf, align 8
  %i.bm = zext i1 %.not53.i to i64
  %.040.i = add nuw nsw i64 %i.az, %i.bm          ; 3 uses
  %not..not53.i = xor i1 %.not53.i, true          ; 3 uses
  %i.bn = add nuw nsw i64 %i.az, 1                ; 3 uses
  %i.bo = icmp eq i64 %i.bn, %i.ba
  br i1 %i.bo, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %hb_reset_elem.exit.i
  %i.bp = add nsw i64 %i.ba, -2
  %i.bq = sub nsw i64 %i.az, %i.ba
  %i.br = and i64 %i.bq, 1
  %lcmp.mod.not.not = icmp eq i64 %i.br, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.bs = add i64 %i.bd, 65                       ; 2 uses
  %i.bt = load ptr, ptr %i.bc, align 8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bn ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = icmp ne i64 %i.bv, 0
  %i.bx = or i1 %i.bw, %not..not53.i              ; 2 uses
  store i64 0, ptr %i.bu, align 8
  %i.by = add nuw nsw i64 %i.az, 2
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa78.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.bs, %.lr.ph.i.prol ]
  %.lcssa.unr = phi i1 [ poison, %.lr.ph.i.preheader ], [ %i.bx, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %i.bn, %.lr.ph.i.preheader ], [ %i.by, %.lr.ph.i.prol ]
  %.063.i.unr = phi i64 [ %i.bg, %.lr.ph.i.preheader ], [ %i.bs, %.lr.ph.i.prol ]
  %.13862.i.unr = phi i1 [ %not..not53.i, %.lr.ph.i.preheader ], [ %i.bx, %.lr.ph.i.prol ]
  %i.bz = icmp eq i64 %i.bp, %i.az
  br i1 %i.bz, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ca = phi i64 [ %i.cm, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.063.i = phi i64 [ %i.ce, %.lr.ph.i ], [ %.063.i.unr, %.lr.ph.i.prol.loopexit ]
  %.13862.i = phi i1 [ %i.cl, %.lr.ph.i ], [ %.13862.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.cb = load ptr, ptr %i.bc, align 8
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8
  store i64 0, ptr %i.cc, align 8
  %i.ce = add i64 %.063.i, 128                    ; 2 uses
  %i.cf = load ptr, ptr %i.bc, align 8
  %i.cg = getelementptr [8 x i8], ptr %i.cf, i64 %i.ca
  %i.ch = getelementptr i8, ptr %i.cg, i64 8      ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = or i64 %i.ci, %i.cd
  %i.ck = icmp ne i64 %i.cj, 0
  %i.cl = or i1 %.13862.i, %i.ck                  ; 2 uses
  store i64 0, ptr %i.ch, align 8
  %i.cm = add i64 %i.ca, 2                        ; 2 uses
  %i.cn = icmp eq i64 %i.cm, %i.ba
  br i1 %i.cn, label %.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %hb_reset_elem.exit.i, %tailrecurse.i
  %.042.i = phi i64 [ %.tr55.i, %tailrecurse.i ], [ %i.bg, %hb_reset_elem.exit.i ], [ %.lcssa78.unr, %.lr.ph.i.prol.loopexit ], [ %i.ce, %.lr.ph.i ] ; 3 uses
  %.141.i = phi i64 [ %i.az, %tailrecurse.i ], [ %.040.i, %hb_reset_elem.exit.i ], [ %.040.i, %.lr.ph.i ], [ %.040.i, %.lr.ph.i.prol.loopexit ]
  %.2.i = phi i1 [ false, %tailrecurse.i ], [ %not..not53.i, %hb_reset_elem.exit.i ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.cl, %.lr.ph.i ]
  %.1.i37 = phi i64 [ %i.az, %tailrecurse.i ], [ %i.ba, %hb_reset_elem.exit.i ], [ %i.ba, %.lr.ph.i ], [ %i.ba, %.lr.ph.i.prol.loopexit ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.1.i37 ; 2 uses
  %.unshifted.i49.i = xor i64 %.042.i, %.tr56.i
  %i.cr = icmp ult i64 %.unshifted.i49.i, 64
  br i1 %i.cr, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit.i
  call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__PRETTY_FUNCTION__.hb_reset_elem) #11, !inline_history !17
  unreachable

bb.p:                                             ; preds = %.loopexit.i
  %.not.i.i = icmp ugt i64 %.042.i, %.tr56.i
  br i1 %.not.i.i, label %bb.q, label %hb_reset_elem.exit52.i

bb.q:                                             ; preds = %bb.p
  call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 498, ptr noundef nonnull @__PRETTY_FUNCTION__.hb_reset_elem) #11, !inline_history !17
  unreachable

hb_reset_elem.exit52.i:                           ; preds = %bb.p
  %i.cs = and i64 %.tr56.i, 63
  %i.ct = shl i64 2, %i.cs
  %i.cu = and i64 %.042.i, 63
  %.neg.i50.i = shl nsw i64 -1, %i.cu
  %i.cv = add i64 %.neg.i50.i, %i.ct
  %i.cw = load i64, ptr %i.cq, align 8            ; 2 uses
  %.not14.i51.i = icmp ne i64 %i.cw, 0
  %i.cx = xor i64 %i.cv, -1
  %i.cy = and i64 %i.cw, %i.cx                    ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  %i.da = select i1 %.not14.i51.i, i1 %i.cz, i1 false ; 2 uses
  store i64 %i.cy, ptr %i.cq, align 8
  %.3.i = select i1 %i.da, i1 true, i1 %.2.i      ; 2 uses
  %i.db = icmp ne i64 %indvars.iv.i, 0
  %or.cond.i = select i1 %i.db, i1 %.3.i, i1 false
  br i1 %or.cond.i, label %bb.r, label %hb_reset_between.exit

bb.r:                                             ; preds = %hb_reset_elem.exit52.i
  %not..i = xor i1 %i.da, true
  %i.dc = sext i1 %not..i to i64
  %.039.i = add nsw i64 %i.ba, %i.dc
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br label %tailrecurse.i

hb_reset_between.exit:                            ; preds = %hb_reset_elem.exit52.i
  %current.ret.tr57.i = select i1 %ret.known.tr.i, i1 true, i1 %.3.i
  br i1 %current.ret.tr57.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %hb_reset_between.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.not = icmp eq ptr %i.de, null
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @hbitmap_set(ptr noundef nonnull %i.de, i64 noundef %1, i64 noundef %2)
  br label %bb.u

bb.u:                                             ; preds = %hb_reset_between.exit, %bb.s, %bb.t, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @hbitmap_reset_all(ptr nofree noundef captures(none) initializes((16, 24)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load i64, ptr %i.d, align 8
  %i.f = shl i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.c, i8 noundef 0, i64 noundef %i.f, i1 noundef false) #12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = load i64, ptr %i.i, align 8
  %i.k = shl i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.h, i8 noundef 0, i64 noundef %i.k, i1 noundef false) #12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load i64, ptr %i.n, align 8
  %i.p = shl i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.m, i8 noundef 0, i64 noundef %i.p, i1 noundef false) #12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = load i64, ptr %i.s, align 8
  %i.u = shl i64 %i.t, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.r, i8 noundef 0, i64 noundef %i.u, i1 noundef false) #12
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load i64, ptr %i.x, align 8
  %i.z = shl i64 %i.y, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.w, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #12
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = shl i64 %i.ad, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ab, i8 noundef 0, i64 noundef %i.ae, i1 noundef false) #12
  %i.af = load ptr, ptr %i.a, align 8
  store i64 -9223372036854775808, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ag, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @hbitmap_is_serializable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp slt i32 %i.b, 58
  ret i1 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hbitmap_get(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %i.c = zext nneg i32 %i.b to i64
  %i.d = lshr i64 %1, %i.c                        ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 622, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_get) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = and i64 %i.d, 63
  %i.i = shl nuw i64 1, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = lshr i64 %i.d, 6
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, %i.i
  %i.p = icmp ne i64 %i.o, 0
  ret i1 %i.p
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @hbitmap_serialization_align(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp slt i32 %i.b, 58
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 629, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_serialization_align) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %i.e = shl i64 64, %i.d
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 0, -7) i64 @hbitmap_serialization_size(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !annotation !11
  call fastcc void @serialization_chunk(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %i.b, ptr noundef %i.a)
  %i.c = load i64, ptr %i.a, align 8
  %i.d = shl i64 %i.c, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @serialization_chunk(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef range(i64 1, 0) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = add i64 %i.a, %2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp slt i32 %i.d, 58
  br i1 %i.e, label %hbitmap_serialization_align.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 629, ptr noundef nonnull @__PRETTY_FUNCTION__.hbitmap_serialization_align) #11
  unreachable

hbitmap_serialization_align.exit:                 ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64                ; 3 uses
  %i.g = shl i64 64, %i.f
  %i.h = add i64 %i.g, -1                         ; 2 uses
  %i.i = and i64 %i.h, %1
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %hbitmap_serialization_align.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 646, ptr noundef nonnull @__PRETTY_FUNCTION__.serialization_chunk) #11
  unreachable

bb.d:                                             ; preds = %hbitmap_serialization_align.exit
  %i.k = lshr i64 %i.b, %i.f                      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 647, ptr noundef nonnull @__PRETTY_FUNCTION__.serialization_chunk) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = add i64 %i.m, -1
  %.not = icmp eq i64 %i.k, %i.o
  %i.p = and i64 %i.h, %2
  %i.q = icmp eq i64 %i.p, 0
  %or.cond = or i1 %i.q, %.not
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 649, ptr noundef nonnull @__PRETTY_FUNCTION__.serialization_chunk) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = lshr i64 %1, %i.f
  %i.s = lshr i64 %i.r, 6                         ; 2 uses
  %i.t = lshr i64 %i.k, 6
end_hunk_0
