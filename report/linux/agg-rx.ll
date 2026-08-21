inline.NumInlined: 63
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ieee80211_retrieve_addba_ext_data:bb.a
  %i.a = getelementptr i8, ptr %0, i64 3060
  %i.b = load i8, ptr %i.a, align 4, !range !16, !noundef !17
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp sgt i64 %2, 0
  %or.cond.not = and i1 %i.d, %i.c
  br i1 %or.cond.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store i32 6, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 -48, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.i, i8 0, i64 31, i1 false)
  store i32 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 60
  store i32 0, ptr %i.k, align 4
  %i.l = call ptr @ieee802_11_parse_elems_full(ptr noundef nonnull %4) #9 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.l, i64 793
  %i.n = load i8, ptr %i.m, align 1
  %.not21 = icmp eq i8 %i.n, 0
  br i1 %.not21, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.l, i64 392
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not22 = icmp eq ptr %i.p, null
  br i1 %.not22, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.p, align 1               ; 4 uses
  %.not23 = icmp eq ptr %3, null
  br i1 %.not23, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %0, i64 2968
  %i.s = load i16, ptr %i.r, align 8
  %.not24 = icmp eq i16 %i.s, 0
  br i1 %.not24, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %0, i64 3117
  %i.u = load i8, ptr %i.t, align 1, !range !16, !noundef !17
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = lshr i8 %i.q, 5
  %i.x = zext nneg i8 %i.w to i16
  %i.y = shl nuw nsw i16 %i.x, 10
  %i.z = load i16, ptr %3, align 2
  %i.aa = or i16 %i.z, %i.y
  store i16 %i.aa, ptr %3, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.b, %bb.c, %bb.d
  %.0 = phi i8 [ 0, %bb.c ], [ %i.q, %bb.h ], [ %i.q, %bb.g ], [ %i.q, %bb.e ], [ 0, %bb.d ], [ 0, %bb.b ]
  call void @kfree(ptr noundef %i.l) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.016 = phi i8 [ 0, %bb.a ], [ %.0, %bb.i ]
  ret i8 %.016
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__ieee80211_start_rx_ba_session(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, i16 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i8 noundef zeroext %10) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %11 = alloca %struct.ieee80211_ampdu_params, align 8 ; 13 uses
  %i.a = zext i1 %8 to i8
  %i.b = getelementptr i8, ptr %0, i64 80         ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 1856
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.g = getelementptr i8, ptr %0, i64 2784       ; 2 uses
  store i64 0, ptr %11, align 8
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i16 %5, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 18
  store i16 %3, ptr %i.i, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  store i16 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i8 0, ptr %i.k, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 23
  store i8 0, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i16 %2, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.n, i8 0, i64 6, i1 false)
  %i.o = icmp ugt i16 %5, 7
  br i1 %i.o, label %.thread184, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call zeroext i1 @ieee80211_s1g_use_ndp_ba(ptr noundef %i.c, ptr noundef %0) #9
  %.not = xor i1 %i.p, true
  %or.cond = or i1 %9, %.not
  br i1 %or.cond, label %bb.d, label %.thread184.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr i8, ptr %0, i64 2968
  %i.r = load i16, ptr %i.q, align 8
  %.not160 = icmp eq i16 %i.r, 0                  ; 2 uses
  br i1 %.not160, label %bb.e, label %test_sta_flag.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %0, i64 3022
  %i.t = load i8, ptr %i.s, align 2, !range !16, !noundef !17
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %test_sta_flag.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %0, i64 3060
  %i.w = load i8, ptr %i.v, align 4, !range !16, !noundef !17
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %test_sta_flag.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %0, i64 3182
  %i.z = load i8, ptr %i.y, align 2, !range !16, !noundef !17
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %test_sta_flag.exit, label %.thread184

test_sta_flag.exit:                               ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.ab = getelementptr i8, ptr %0, i64 216
  %i.ac = load volatile i64, ptr %i.ab, align 8
  %i.ad = and i64 %i.ac, 256
  %.not161 = icmp eq i64 %i.ad, 0
  br i1 %.not161, label %bb.h, label %.thread184

bb.h:                                             ; preds = %test_sta_flag.exit
  br i1 %.not160, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %0, i64 3117
  %i.af = load i8, ptr %i.ae, align 1, !range !16, !noundef !17
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr i8, ptr %0, i64 3060
  %i.ai = load i8, ptr %i.ah, align 4, !range !16, !noundef !17
  %i.aj = trunc nuw i8 %i.ai to i1
  %. = select i1 %i.aj, i16 256, i16 64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0155 = phi i16 [ 1024, %bb.i ], [ %., %bb.j ] ; 3 uses
  %.not163 = icmp eq i16 %4, 1
  br i1 %.not163, label %bb.n, label %bb.l

.thread:                                          ; preds = %bb.h
  %.not163177 = icmp eq i16 %4, 1
  br i1 %.not163177, label %bb.n, label %.thread184

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr i8, ptr %0, i64 3020
  %i.al = load i16, ptr %i.ak, align 4
  %i.am = and i16 %i.al, 1024
  %.not165 = icmp eq i16 %i.am, 0
  br i1 %.not165, label %.thread184, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr i8, ptr %0, i64 3186
  %i.ao = load i8, ptr %i.an, align 2
  %i.ap = and i8 %i.ao, 2
  %.not166 = icmp eq i8 %i.ap, 0
  %i.aq = icmp ugt i16 %6, %.0155
  %or.cond172 = select i1 %.not166, i1 true, i1 %i.aq
  br i1 %or.cond172, label %.thread184, label %arch_test_bit.exit

bb.n:                                             ; preds = %.thread, %bb.k
  %.0155178 = phi i16 [ 1024, %.thread ], [ %.0155, %bb.k ] ; 2 uses
  %.old = icmp ugt i16 %6, %.0155178
  br i1 %.old, label %.thread184, label %arch_test_bit.exit

arch_test_bit.exit:                               ; preds = %bb.m, %bb.n
  %.0155180 = phi i16 [ %.0155, %bb.m ], [ %.0155178, %bb.n ]
  %i.ar = icmp eq i16 %6, 0
  %spec.select = select i1 %i.ar, i16 %.0155180, i16 %6
  %i.as = getelementptr i8, ptr %0, i64 2792
  %i.at = load i16, ptr %i.as, align 8            ; 2 uses
  %.1 = tail call i16 @llvm.umin.i16(i16 %spec.select, i16 %i.at) ; 10 uses
  store i16 %.1, ptr %i.j, align 4
  %i.au = zext nneg i16 %5 to i64                 ; 3 uses
  %i.av = getelementptr i8, ptr %0, i64 864
  %i.aw = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 65536) %i.au) #8, !srcloc !10 ; 2 uses
  %i.ax = icmp ult i8 %i.aw, 2
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = trunc nuw i8 %i.aw to i1
  br i1 %i.ay, label %bb.o, label %_ieee80211_hw_check.exit

bb.o:                                             ; preds = %arch_test_bit.exit
  %i.az = getelementptr i8, ptr %0, i64 824
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.au
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = icmp eq i8 %i.bb, %1
  br i1 %i.bc, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr i8, ptr %0, i64 696
  tail call void @__rcu_read_lock() #9
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.au
  %i.bf = load volatile ptr, ptr %i.be, align 8   ; 2 uses
  %.not171 = icmp eq ptr %i.bf, null
  br i1 %.not171, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr i8, ptr %i.bf, i64 136
  %i.bh = load i16, ptr %i.bg, align 8
  %i.bi = icmp eq i16 %i.bh, %2
  br i1 %i.bi, label %.thread195, label %bb.y

.thread195:                                       ; preds = %bb.q
  tail call void @__rcu_read_unlock() #9
  br label %.thread190

bb.r:                                             ; preds = %bb.o
  tail call void @__ieee80211_stop_rx_ba_session(ptr noundef %0, i16 noundef zeroext %5, i16 noundef zeroext 0, i16 noundef zeroext 32, i1 noundef zeroext false) #11
  br label %_ieee80211_hw_check.exit

_ieee80211_hw_check.exit:                         ; preds = %arch_test_bit.exit, %bb.r
  %i.bj = getelementptr i8, ptr %i.e, i64 104
  %i.bk = load volatile i64, ptr %i.bj, align 8
  %i.bl = and i64 %i.bk, 17179869184
  %.not203 = icmp eq i64 %i.bl, 0
  br i1 %.not203, label %_kzalloc_noprof.exit, label %bb.s

bb.s:                                             ; preds = %_ieee80211_hw_check.exit
  %i.bm = load ptr, ptr %i.b, align 8
  %i.bn = call i32 @drv_ampdu_action(ptr noundef %i.e, ptr noundef %i.bm, ptr noundef nonnull %11) #9
  %.not170 = icmp eq i32 %i.bn, 0
  br i1 %.not170, label %.thread190, label %.thread184

_kzalloc_noprof.exit:                             ; preds = %_ieee80211_hw_check.exit
  %i.bo = zext nneg i16 %.1 to i64
  %i.bp = shl nuw nsw i64 %i.bo, 5
  %i.bq = add nuw nsw i64 %i.bp, 144
  %i.br = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 144, 2097265) %i.bq, i32 noundef 3520) #12 ; 17 uses
  %.not167 = icmp eq ptr %i.br, null
  br i1 %.not167, label %.thread184, label %bb.t

bb.t:                                             ; preds = %_kzalloc_noprof.exit
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i32 0, ptr %i.bs, align 8
  %i.bt = getelementptr i8, ptr %i.br, i64 40     ; 2 uses
  tail call void @timer_init_key(ptr noundef %i.bt, ptr noundef nonnull @sta_rx_agg_session_timer_expired, i32 noundef 524288, ptr noundef null, ptr noundef null) #9
  %i.bu = getelementptr i8, ptr %i.br, i64 80
  tail call void @timer_init_key(ptr noundef %i.bu, ptr noundef nonnull @sta_rx_agg_reorder_timer_expired, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  %.not206 = icmp eq i16 %i.at, 0
  br i1 %.not206, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %i.bv = getelementptr i8, ptr %i.br, i64 144    ; 5 uses
  %i.bw = tail call i16 @llvm.umax.i16(i16 %.1, i16 1)
  %wide.trip.count = zext nneg i16 %i.bw to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bx = icmp ult i16 %.1, 4
  br i1 %i.bx, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 32764
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.u ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.u ]
  %i.by = getelementptr [32 x i8], ptr %i.bv, i64 %indvars.iv ; 5 uses
  store ptr %i.by, ptr %i.by, align 8
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  store ptr %i.by, ptr %i.bz, align 8
  %i.ca = getelementptr i8, ptr %i.by, i64 16
  store i32 0, ptr %i.ca, align 8
  %i.cb = getelementptr [32 x i8], ptr %i.bv, i64 %indvars.iv ; 3 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 32     ; 3 uses
  store ptr %i.cc, ptr %i.cc, align 8
  %i.cd = getelementptr i8, ptr %i.cb, i64 40
  store ptr %i.cc, ptr %i.cd, align 8
  %i.ce = getelementptr i8, ptr %i.cb, i64 48
  store i32 0, ptr %i.ce, align 8
  %i.cf = getelementptr [32 x i8], ptr %i.bv, i64 %indvars.iv ; 3 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 64     ; 3 uses
  store ptr %i.cg, ptr %i.cg, align 8
  %i.ch = getelementptr i8, ptr %i.cf, i64 72
  store ptr %i.cg, ptr %i.ch, align 8
  %i.ci = getelementptr i8, ptr %i.cf, i64 80
  store i32 0, ptr %i.ci, align 8
  %i.cj = getelementptr [32 x i8], ptr %i.bv, i64 %indvars.iv ; 3 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 96     ; 3 uses
  store ptr %i.ck, ptr %i.ck, align 8
  %i.cl = getelementptr i8, ptr %i.cj, i64 104
  store ptr %i.ck, ptr %i.cl, align 8
  %i.cm = getelementptr i8, ptr %i.cj, i64 112
  store i32 0, ptr %i.cm, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.u, !llvm.loop !18

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod219 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod219)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.v ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.cn = getelementptr [32 x i8], ptr %i.bv, i64 %indvars.iv.epil ; 5 uses
  store ptr %i.cn, ptr %i.cn, align 8
  %i.co = getelementptr i8, ptr %i.cn, i64 8
  store ptr %i.cn, ptr %i.co, align 8
  %i.cp = getelementptr i8, ptr %i.cn, i64 16
  store i32 0, ptr %i.cp, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.v, !llvm.loop !19

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.v, %bb.t
  %i.cq = load ptr, ptr %i.b, align 8
  %i.cr = call i32 @drv_ampdu_action(ptr noundef %i.e, ptr noundef %i.cq, ptr noundef nonnull %11) #9
  %.not168 = icmp eq i32 %i.cr, 0
  br i1 %.not168, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  call void @kfree(ptr noundef nonnull %i.br) #9
  br label %.thread184

bb.x:                                             ; preds = %._crit_edge
  %i.cs = getelementptr i8, ptr %i.br, i64 132
  store i16 %3, ptr %i.cs, align 4
  %i.ct = getelementptr i8, ptr %i.br, i64 128
  store i16 %3, ptr %i.ct, align 8
  %i.cu = getelementptr i8, ptr %i.br, i64 134
  store i16 %.1, ptr %i.cu, align 2
  %i.cv = getelementptr i8, ptr %i.br, i64 136
  store i16 %2, ptr %i.cv, align 8
  %i.cw = getelementptr i8, ptr %i.br, i64 130
  store i16 0, ptr %i.cw, align 2
  %i.cx = getelementptr i8, ptr %i.br, i64 139    ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = and i8 %i.cy, -6
  %i.da = or disjoint i8 %i.cz, %i.a
  store i8 %i.da, ptr %i.cx, align 1
  %i.db = getelementptr i8, ptr %i.br, i64 24
  store i64 0, ptr %i.db, align 8
  %i.dc = trunc nuw nsw i16 %5 to i8
  %i.dd = getelementptr i8, ptr %i.br, i64 138
  store i8 %i.dc, ptr %i.dd, align 2
  %i.de = getelementptr i8, ptr %i.br, i64 32
  store ptr %0, ptr %i.de, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !21
  %i.df = getelementptr i8, ptr %0, i64 696
  %i.dg = zext nneg i16 %5 to i64
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %i.dg
  store volatile ptr %i.br, ptr %i.dh, align 8
  %.not169 = icmp eq i16 %2, 0
  br i1 %.not169, label %.thread190, label %usecs_to_jiffies.exit

usecs_to_jiffies.exit:                            ; preds = %bb.x
  %i.di = load volatile i64, ptr @jiffies, align 64
  %i.dj = zext i16 %2 to i32
  %i.dk = shl nuw nsw i32 %i.dj, 10
  %i.dl = call i64 @__usecs_to_jiffies(i32 noundef range(i32 0, 67107841) %i.dk) #9
  %i.dm = add i64 %i.dl, %i.di
  %i.dn = call i32 @mod_timer(ptr noundef %i.bt, i64 noundef %i.dm) #9 ; 0 uses
  %i.do = load volatile i64, ptr @jiffies, align 64
  %i.dp = getelementptr i8, ptr %i.br, i64 120
  store i64 %i.do, ptr %i.dp, align 8
  br label %.thread190

bb.y:                                             ; preds = %bb.p, %bb.q
  tail call void @__rcu_read_unlock() #9
  br label %.thread184

.thread190:                                       ; preds = %.thread195, %usecs_to_jiffies.exit, %bb.x, %bb.s
  %i.dq = zext nneg i16 %5 to i64
  %i.dr = getelementptr i8, ptr %0, i64 864
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dr, i64 range(i64 0, 65536) %i.dq) #8, !srcloc !22
  %i.ds = zext nneg i16 %5 to i64                 ; 2 uses
  %i.dt = getelementptr i8, ptr %0, i64 872
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dt, i64 range(i64 0, 65536) %i.ds) #8, !srcloc !11
  %i.du = getelementptr i8, ptr %0, i64 824
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.ds
  store i8 %1, ptr %i.dv, align 1
  br label %.thread184

.thread184:                                       ; preds = %.thread, %bb.l, %bb.m, %bb.n, %bb.g, %_kzalloc_noprof.exit, %bb.w, %bb.s, %test_sta_flag.exit, %bb.a, %bb.y, %.thread190
  %.2188 = phi i16 [ %.1, %bb.y ], [ %.1, %.thread190 ], [ %6, %bb.a ], [ %6, %bb.l ], [ %6, %bb.m ], [ %6, %bb.n ], [ %6, %bb.g ], [ %.1, %_kzalloc_noprof.exit ], [ %.1, %bb.w ], [ %6, %test_sta_flag.exit ], [ %.1, %bb.s ], [ %6, %.thread ]
  %.1154187 = phi i16 [ 37, %bb.y ], [ 0, %.thread190 ], [ 37, %bb.a ], [ 38, %bb.l ], [ 38, %bb.m ], [ 38, %bb.n ], [ 37, %bb.g ], [ 37, %_kzalloc_noprof.exit ], [ 37, %bb.w ], [ 37, %test_sta_flag.exit ], [ 37, %bb.s ], [ 38, %.thread ]
  br i1 %7, label %.thread184.thread, label %ieee80211_send_addba_resp.exit

.thread184.thread:                                ; preds = %bb.c, %.thread184
  %.1154187200 = phi i16 [ %.1154187, %.thread184 ], [ 109, %bb.c ]
  %.2188199 = phi i16 [ %.2188, %.thread184 ], [ %6, %bb.c ] ; 2 uses
  %i.dw = load ptr, ptr %i.b, align 8             ; 10 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 1856
  %i.dy = load ptr, ptr %i.dx, align 8            ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 104
  %i.ea = load volatile i64, ptr %i.dz, align 8
  %i.eb = call zeroext i1 @ieee80211_s1g_use_ndp_ba(ptr noundef %i.dw, ptr noundef %0) #9
  %i.ec = getelementptr i8, ptr %i.dy, i64 112    ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 8
  %i.ee = add i32 %i.ed, 53
  %i.ef = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %i.ee, i32 noundef 2080) #9 ; 7 uses
  %.not.i = icmp eq ptr %i.ef, null
  br i1 %.not.i, label %ieee80211_send_addba_resp.exit, label %bb.z

bb.z:                                             ; preds = %.thread184.thread
  %i.eg = load i32, ptr %i.ec, align 8            ; 2 uses
  %i.eh = getelementptr i8, ptr %i.ef, i64 208    ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = sext i32 %i.eg to i64
  %i.ek = getelementptr i8, ptr %i.ei, i64 %i.ej
  store ptr %i.ek, ptr %i.eh, align 8
  %i.el = getelementptr i8, ptr %i.ef, i64 188    ; 2 uses
  %i.em = load i32, ptr %i.el, align 4
  %i.en = add i32 %i.em, %i.eg
  store i32 %i.en, ptr %i.el, align 4
  %i.eo = call noundef ptr @skb_put(ptr noundef nonnull %i.ef, i32 noundef 24) #9 ; 16 uses
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(24) %i.eo, i8 0, i64 24, i1 false)
  %i.ep = getelementptr i8, ptr %i.eo, i64 4
  %i.eq = load i32, ptr %i.g, align 8
  store i32 %i.eq, ptr %i.ep, align 4
  %i.er = getelementptr i8, ptr %0, i64 2788
  %i.es = load i16, ptr %i.er, align 4
  %i.et = getelementptr i8, ptr %i.eo, i64 8
  store i16 %i.es, ptr %i.et, align 4
  %i.eu = getelementptr i8, ptr %i.eo, i64 10
  %i.ev = getelementptr i8, ptr %i.dw, i64 5072
  %i.ew = getelementptr i8, ptr %i.dw, i64 7202   ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4
  store i32 %i.ex, ptr %i.eu, align 4
  %i.ey = getelementptr i8, ptr %i.dw, i64 7206   ; 2 uses
  %i.ez = load i16, ptr %i.ey, align 2
  %i.fa = getelementptr i8, ptr %i.eo, i64 14
  store i16 %i.ez, ptr %i.fa, align 2
  %i.fb = load i32, ptr %i.ev, align 8
  switch i32 %i.fb, label %ieee80211_mgmt_ba.exit.i [
    i32 3, label %bb.aa
    i32 4, label %bb.aa
    i32 7, label %bb.aa
    i32 2, label %bb.ab
    i32 1, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z
  %i.fc = getelementptr i8, ptr %i.eo, i64 16
  %i.fd = load i32, ptr %i.ew, align 4
  store i32 %i.fd, ptr %i.fc, align 4
  br label %.sink.split.i.i

bb.ab:                                            ; preds = %bb.z
end_hunk_0
