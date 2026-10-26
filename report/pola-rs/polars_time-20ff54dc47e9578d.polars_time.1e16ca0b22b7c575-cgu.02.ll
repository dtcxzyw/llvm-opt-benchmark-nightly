Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_time-20ff54dc47e9578d.polars_time.1e16ca0b22b7c575-cgu.02?download=true
inline.NumInlined: 6868
inline.NumDeleted: 4050
begin_hunk_0_@_RINvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjE5drainINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEECs2Aa799EbAFJ_11polars_time:bb.a
  store i64 %i.f, ptr %i.l, align 8, !dbg !3643
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !3643
  store i64 %i.j, ptr %i.m, align 8, !dbg !3643
  store ptr %i.i, ptr %0, align 8, !dbg !3643
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3643
  store ptr %i.k, ptr %i.n, align 8, !dbg !3643
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3643
  store ptr %1, ptr %i.o, align 8, !dbg !3643
  ret void, !dbg !3644
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecAmj2_E16extend_desugaredINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtNtB8_11collections9vec_deque5drain5DrainNtNtNtCs2Aa799EbAFJ_11polars_time7windows8group_by12ActiveWindowENCNvMs0_B2F_NtB2F_15RollingWindower8finalize0EEB2J_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3645 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !3775, !alias.scope !3740, !noundef !1761 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !3775
  br i1 %i.c, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgZ49sUHp3tW_5alloc11collections9vec_deque5drain5DrainNtNtNtCs2Aa799EbAFJ_11polars_time7windows8group_by12ActiveWindowENCNvMs0_B20_NtB20_15RollingWindower8finalize0ENtNtNtB9_6traits8iterator8Iterator4nextB24_.exit, label %.lr.ph, !dbg !3775

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b, !dbg !3775

bb.b:                                             ; preds = %.lr.ph, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecAmj2_E7reserveCs2Aa799EbAFJ_11polars_time.exit
  %i.q = phi i64 [ %i.b, %.lr.ph ], [ %i.el, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecAmj2_E7reserveCs2Aa799EbAFJ_11polars_time.exit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3745), !dbg !3776
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3746), !dbg !3777
  %i.r = load ptr, ptr %1, align 8, !dbg !3778, !alias.scope !3747, !nonnull !1761, !noundef !1761 ; 3 uses
  %i.s = load i64, ptr %i.d, align 8, !dbg !3779, !alias.scope !3747, !noundef !1761 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !3780
  %i.u = load i64, ptr %i.t, align 8, !dbg !3780, !noalias !3750, !noundef !1761
  %i.v = add i64 %i.u, %i.s, !dbg !3781           ; 2 uses
  %i.w = load i64, ptr %i.r, align 8, !dbg !3782, !range !1793, !noalias !3750, !noundef !1761 ; 2 uses
  %.not.i.i = icmp ult i64 %i.v, %i.w, !dbg !3783
  %i.x = select i1 %.not.i.i, i64 0, i64 %i.w, !dbg !3783
  %.sroa.0.0.i.i = sub nuw i64 %i.v, %i.x, !dbg !3783
  %i.y = add i64 %i.s, 1, !dbg !3784
  store i64 %i.y, ptr %i.d, align 8, !dbg !3784, !alias.scope !3747
  %i.z = add i64 %i.q, -1, !dbg !3785
  store i64 %i.z, ptr %i.a, align 8, !dbg !3785, !alias.scope !3747
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !3786
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !3786, !noalias !3750, !nonnull !1761, !noundef !1761
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.sroa.0.0.i.i, !dbg !3787 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !3788, !noalias !3750, !noundef !1761 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !3788
  %i.af = load i64, ptr %i.ae, align 8, !dbg !3788, !noalias !3750, !noundef !1761 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3751), !dbg !3789
  %i.ag = load ptr, ptr %i.f, align 8, !alias.scope !3752, !nonnull !1761, !align !3753, !noundef !1761 ; 4 uses
  %i.ah = load ptr, ptr %i.g, align 8, !alias.scope !3752, !nonnull !1761, !align !3753, !noundef !1761 ; 3 uses
  %i.ai = load i32, ptr %i.ag, align 4, !dbg !3790, !noalias !3754, !noundef !1761 ; 3 uses
  %i.aj = load i32, ptr %i.ah, align 4, !dbg !3791, !noalias !3754, !noundef !1761 ; 3 uses
  %i.ak = icmp ult i32 %i.ai, %i.aj, !dbg !3790
  br i1 %i.ak, label %.lr.ph41.i.i, label %._crit_edge42.i.i, !dbg !3790

.lr.ph41.i.i:                                     ; preds = %bb.b
  %i.al = load ptr, ptr %i.h, align 8, !alias.scope !3752, !nonnull !1761, !align !1805, !noundef !1761 ; 6 uses
  %i.am = load i64, ptr %i.i, align 8, !alias.scope !3752, !noundef !1761 ; 5 uses
  %i.an = load ptr, ptr %i.k, align 8, !alias.scope !3752, !nonnull !1761, !align !1805 ; 4 uses
  %i.ao = load ptr, ptr %i.j, align 8, !alias.scope !3752, !nonnull !1761, !align !1805 ; 3 uses
  %i.ap = load ptr, ptr %i.e, align 8, !alias.scope !3752, !nonnull !1761
  br label %bb.c, !dbg !3790

bb.c:                                             ; preds = %._crit_edge.i.i, %.lr.ph41.i.i
  %i.aq = phi i32 [ %i.ai, %.lr.ph41.i.i ], [ %i.cc, %._crit_edge.i.i ]
  %i.ar = phi i32 [ %i.aj, %.lr.ph41.i.i ], [ %i.cd, %._crit_edge.i.i ]
  %i.as = load i64, ptr %i.al, align 8, !dbg !3792, !noalias !3754, !noundef !1761 ; 3 uses
  %i.at = icmp ult i64 %i.as, %i.am, !dbg !3793
  br i1 %i.at, label %bb.d, label %.invoke, !dbg !3793

._crit_edge42.i.i:                                ; preds = %._crit_edge.i.i, %bb.e, %bb.b
  %i.au = phi i32 [ %i.ai, %bb.b ], [ %i.cc, %._crit_edge.i.i ], [ %i.aq, %bb.e ]
  %i.av = phi i32 [ %i.aj, %bb.b ], [ %i.cd, %._crit_edge.i.i ], [ %i.ar, %bb.e ], !dbg !3794
  %i.aw = load ptr, ptr %i.l, align 8, !alias.scope !3752, !nonnull !1761, !align !3753, !noundef !1761 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !dbg !3795, !noalias !3754, !noundef !1761 ; 3 uses
  %i.ay = icmp ult i32 %i.ax, %i.av, !dbg !3795
  br i1 %i.ay, label %.lr.ph53.i.i, label %bb.o, !dbg !3795

.lr.ph53.i.i:                                     ; preds = %._crit_edge42.i.i
  %i.az = load ptr, ptr %i.m, align 8, !alias.scope !3752, !nonnull !1761, !align !1805, !noundef !1761 ; 6 uses
  %i.ba = load i64, ptr %i.i, align 8, !alias.scope !3752, !noundef !1761 ; 5 uses
  %i.bb = load ptr, ptr %i.n, align 8, !alias.scope !3752, !nonnull !1761, !align !1805 ; 4 uses
  %i.bc = load ptr, ptr %i.j, align 8, !alias.scope !3752, !nonnull !1761, !align !1805 ; 3 uses
  %i.bd = load ptr, ptr %i.e, align 8, !alias.scope !3752, !nonnull !1761
  br label %bb.i, !dbg !3795

bb.d:                                             ; preds = %bb.c
  %i.be = load i64, ptr %i.an, align 8, !dbg !3796, !noalias !3754, !noundef !1761 ; 4 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.as, !dbg !3793 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8, !dbg !3793
  %i.bh = load i64, ptr %i.bg, align 8, !dbg !3793, !noalias !3754, !noundef !1761 ; 2 uses
  %i.bi = icmp ult i64 %i.be, %i.bh, !dbg !3793
  br i1 %i.bi, label %bb.e, label %.invoke, !dbg !3793

bb.e:                                             ; preds = %bb.d
  %i.bj = load ptr, ptr %i.bf, align 8, !dbg !3793, !noalias !3754, !nonnull !1761, !align !1805, !noundef !1761
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.be, !dbg !3793
  %i.bl = load i64, ptr %i.bk, align 8, !dbg !3793, !noalias !3754, !noundef !1761 ; 2 uses
  %i.bm = load i8, ptr %i.ap, align 1, !dbg !3797, !range !1806, !noalias !3754, !noundef !1761
  %i.bn = icmp sgt i64 %i.bl, %i.ad, !dbg !3798
  %switch.and.i.i = and i8 %i.bm, 1, !dbg !3799
  %switch.selectcmp.i.i = icmp eq i8 %switch.and.i.i, 0, !dbg !3799
  %i.bo = icmp eq i64 %i.bl, %i.ad, !dbg !3800
  %i.bp = and i1 %i.bo, %switch.selectcmp.i.i, !dbg !3801
  %i.bq = or i1 %i.bn, %i.bp, !dbg !3798
  br i1 %i.bq, label %._crit_edge42.i.i, label %bb.f, !dbg !3802

bb.f:                                             ; preds = %bb.e
  %i.br = add nuw i64 %i.be, 1, !dbg !3803        ; 2 uses
  store i64 %i.br, ptr %i.an, align 8, !dbg !3804, !noalias !3754
  %i.bs = load i64, ptr %i.al, align 8, !dbg !3805, !noalias !3754, !noundef !1761 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, %i.am, !dbg !3805
  br i1 %i.bt, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i, !dbg !3805

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.bs, !dbg !3806
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !3806
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !3806, !noalias !3754, !noundef !1761
  %i.bx = icmp eq i64 %i.br, %i.bw, !dbg !3807
  br i1 %i.bx, label %bb.g, label %._crit_edge.i.i, !dbg !3807

bb.g:                                             ; preds = %.lr.ph.preheader.i.i
  %i.by = add nuw i64 %i.bs, 1, !dbg !3808
  store i64 %i.by, ptr %i.al, align 8, !dbg !3808, !noalias !3754
  store i64 0, ptr %i.an, align 8, !dbg !3804, !noalias !3754
  %i.bz = load i64, ptr %i.al, align 8, !dbg !3805, !noalias !3754, !noundef !1761 ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.am, !dbg !3805
  br i1 %i.ca, label %.lr.ph.i.i, label %._crit_edge.i.i, !dbg !3805

._crit_edge.i.i:                                  ; preds = %bb.h, %.lr.ph.i.i, %bb.g, %.lr.ph.preheader.i.i, %bb.f
  %i.cb = load i32, ptr %i.ag, align 4, !dbg !3809, !noalias !3754, !noundef !1761
  %i.cc = add i32 %i.cb, 1, !dbg !3809            ; 4 uses
  store i32 %i.cc, ptr %i.ag, align 4, !dbg !3809, !noalias !3754
  %i.cd = load i32, ptr %i.ah, align 4, !dbg !3791, !noalias !3754, !noundef !1761 ; 3 uses
  %i.ce = icmp ult i32 %i.cc, %i.cd, !dbg !3790
  br i1 %i.ce, label %bb.c, label %._crit_edge42.i.i, !dbg !3790

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %i.cf = phi i64 [ %i.cl, %bb.h ], [ %i.bz, %bb.g ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.cf, !dbg !3806
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !3806
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !3806, !noalias !3754, !noundef !1761
  %i.cj = icmp eq i64 %i.ci, 0, !dbg !3807
  br i1 %i.cj, label %bb.h, label %._crit_edge.i.i, !dbg !3807

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ck = add nuw i64 %i.cf, 1, !dbg !3808
  store i64 %i.ck, ptr %i.al, align 8, !dbg !3808, !noalias !3754
  store i64 0, ptr %i.an, align 8, !dbg !3804, !noalias !3754
  %i.cl = load i64, ptr %i.al, align 8, !dbg !3805, !noalias !3754, !noundef !1761 ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.am, !dbg !3805
  br i1 %i.cm, label %.lr.ph.i.i, label %._crit_edge.i.i, !dbg !3805, !llvm.loop !3706

bb.i:                                             ; preds = %._crit_edge50.i.i, %.lr.ph53.i.i
  %i.cn = phi i32 [ %i.ax, %.lr.ph53.i.i ], [ %i.dr, %._crit_edge50.i.i ]
  %i.co = load i64, ptr %i.az, align 8, !dbg !3810, !noalias !3754, !noundef !1761 ; 3 uses
  %i.cp = icmp ult i64 %i.co, %i.ba, !dbg !3811
  br i1 %i.cp, label %bb.j, label %.invoke, !dbg !3811

._crit_edge54.loopexit.i.i:                       ; preds = %._crit_edge50.i.i, %bb.k
  %.lcssa23.ph.i.i = phi i32 [ %i.dr, %._crit_edge50.i.i ], [ %i.cn, %bb.k ]
  %.pre.i.i = load i32, ptr %i.ag, align 4, !dbg !3812, !noalias !3754
  br label %bb.o, !dbg !3812

bb.j:                                             ; preds = %bb.i
  %i.cq = load i64, ptr %i.bb, align 8, !dbg !3813, !noalias !3754, !noundef !1761 ; 4 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.co, !dbg !3811 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !3811
  %i.ct = load i64, ptr %i.cs, align 8, !dbg !3811, !noalias !3754, !noundef !1761 ; 2 uses
  %i.cu = icmp ult i64 %i.cq, %i.ct, !dbg !3811
  br i1 %i.cu, label %bb.k, label %.invoke, !dbg !3811

bb.k:                                             ; preds = %bb.j
  %i.cv = load ptr, ptr %i.cr, align 8, !dbg !3811, !noalias !3754, !nonnull !1761, !align !1805, !noundef !1761
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cq, !dbg !3811
  %i.cx = load i64, ptr %i.cw, align 8, !dbg !3811, !noalias !3754, !noundef !1761 ; 2 uses
  %i.cy = load i8, ptr %i.bd, align 1, !dbg !3814, !range !1806, !noalias !3754, !noundef !1761
  %i.cz = icmp slt i64 %i.cx, %i.af, !dbg !3815
  %.off.i.i = add nsw i8 %i.cy, -1, !dbg !3816
  %switch.i.i = icmp ult i8 %.off.i.i, 2, !dbg !3816
  %i.da = icmp eq i64 %i.cx, %i.af, !dbg !3817
  %i.db = and i1 %i.da, %switch.i.i, !dbg !3818
  %i.dc = or i1 %i.cz, %i.db, !dbg !3815
  br i1 %i.dc, label %bb.l, label %._crit_edge54.loopexit.i.i, !dbg !3819

.invoke:                                          ; preds = %bb.d, %bb.c, %bb.j, %bb.i
  %i.dd = phi i64 [ %i.co, %bb.i ], [ %i.cq, %bb.j ], [ %i.as, %bb.c ], [ %i.be, %bb.d ]
  %i.de = phi i64 [ %i.ba, %bb.i ], [ %i.ct, %bb.j ], [ %i.am, %bb.c ], [ %i.bh, %bb.d ]
  %i.df = phi ptr [ @10, %bb.j ], [ @10, %bb.i ], [ @9, %bb.c ], [ @9, %bb.d ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dd, i64 noundef %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.df) #18
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3820

.cont:                                            ; preds = %.invoke
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.dg = add nuw i64 %i.cq, 1, !dbg !3821        ; 2 uses
  store i64 %i.dg, ptr %i.bb, align 8, !dbg !3822, !noalias !3754
  %i.dh = load i64, ptr %i.az, align 8, !dbg !3823, !noalias !3754, !noundef !1761 ; 3 uses
  %i.di = icmp ult i64 %i.dh, %i.ba, !dbg !3823
  br i1 %i.di, label %.lr.ph49.preheader.i.i, label %._crit_edge50.i.i, !dbg !3823

.lr.ph49.preheader.i.i:                           ; preds = %bb.l
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.dh, !dbg !3824
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8, !dbg !3824
  %i.dl = load i64, ptr %i.dk, align 8, !dbg !3824, !noalias !3754, !noundef !1761
  %i.dm = icmp eq i64 %i.dg, %i.dl, !dbg !3825
  br i1 %i.dm, label %bb.m, label %._crit_edge50.i.i, !dbg !3825

bb.m:                                             ; preds = %.lr.ph49.preheader.i.i
  %i.dn = add nuw i64 %i.dh, 1, !dbg !3826
  store i64 %i.dn, ptr %i.az, align 8, !dbg !3826, !noalias !3754
  store i64 0, ptr %i.bb, align 8, !dbg !3822, !noalias !3754
  %i.do = load i64, ptr %i.az, align 8, !dbg !3823, !noalias !3754, !noundef !1761 ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.ba, !dbg !3823
  br i1 %i.dp, label %.lr.ph49.i.i, label %._crit_edge50.i.i, !dbg !3823

._crit_edge50.i.i:                                ; preds = %bb.n, %.lr.ph49.i.i, %bb.m, %.lr.ph49.preheader.i.i, %bb.l
  %i.dq = load i32, ptr %i.aw, align 4, !dbg !3827, !noalias !3754, !noundef !1761
  %i.dr = add i32 %i.dq, 1, !dbg !3827            ; 4 uses
  store i32 %i.dr, ptr %i.aw, align 4, !dbg !3827, !noalias !3754
  %i.ds = load i32, ptr %i.ah, align 4, !dbg !3794, !noalias !3754, !noundef !1761
  %i.dt = icmp ult i32 %i.dr, %i.ds, !dbg !3795
  br i1 %i.dt, label %bb.i, label %._crit_edge54.loopexit.i.i, !dbg !3795

.lr.ph49.i.i:                                     ; preds = %bb.m, %bb.n
  %i.du = phi i64 [ %i.ea, %bb.n ], [ %i.do, %bb.m ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.du, !dbg !3824
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8, !dbg !3824
  %i.dx = load i64, ptr %i.dw, align 8, !dbg !3824, !noalias !3754, !noundef !1761
  %i.dy = icmp eq i64 %i.dx, 0, !dbg !3825
  br i1 %i.dy, label %bb.n, label %._crit_edge50.i.i, !dbg !3825

bb.n:                                             ; preds = %.lr.ph49.i.i
  %i.dz = add nuw i64 %i.du, 1, !dbg !3826
  store i64 %i.dz, ptr %i.az, align 8, !dbg !3826, !noalias !3754
  store i64 0, ptr %i.bb, align 8, !dbg !3822, !noalias !3754
  %i.ea = load i64, ptr %i.az, align 8, !dbg !3823, !noalias !3754, !noundef !1761 ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.ba, !dbg !3823
  br i1 %i.eb, label %.lr.ph49.i.i, label %._crit_edge50.i.i, !dbg !3823, !llvm.loop !3711

bb.o:                                             ; preds = %._crit_edge42.i.i, %._crit_edge54.loopexit.i.i
  %i.ec = phi i32 [ %i.au, %._crit_edge42.i.i ], [ %.pre.i.i, %._crit_edge54.loopexit.i.i ], !dbg !3812 ; 2 uses
  %.lcssa23.i.i = phi i32 [ %i.ax, %._crit_edge42.i.i ], [ %.lcssa23.ph.i.i, %._crit_edge54.loopexit.i.i ], !dbg !3795
  %i.ed = sub i32 %.lcssa23.i.i, %i.ec, !dbg !3828
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.ed to i64, !dbg !3829
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32, !dbg !3829
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.ec to i64, !dbg !3829
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i, !dbg !3829
  %i.ee = load i64, ptr %i.o, align 8, !dbg !3830, !noundef !1761 ; 5 uses
  %i.ef = icmp ult i64 %i.ee, 1152921504606846976, !dbg !3831
  tail call void @llvm.assume(i1 %i.ef), !dbg !3832
  %i.eg = load i64, ptr %0, align 8, !dbg !3833, !range !1793, !noundef !1761
  %i.eh = icmp eq i64 %i.ee, %i.eg, !dbg !3834
  br i1 %i.eh, label %bb.p, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecAmj2_E7reserveCs2Aa799EbAFJ_11polars_time.exit, !dbg !3834

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgZ49sUHp3tW_5alloc11collections9vec_deque5drain5DrainNtNtNtCs2Aa799EbAFJ_11polars_time7windows8group_by12ActiveWindowENCNvMs0_B20_NtB20_15RollingWindower8finalize0ENtNtNtB9_6traits8iterator8Iterator4nextB24_.exit: ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecAmj2_E7reserveCs2Aa799EbAFJ_11polars_time.exit, %bb.a
  tail call void @_RNvXs2_NtNtNtCsgZ49sUHp3tW_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs2Aa799EbAFJ_11polars_time7windows8group_by12ActiveWindowENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB1g_(ptr noalias noundef nonnull align 8 dereferenceable(120) %1), !dbg !3835
  ret void, !dbg !3836

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecAmj2_E7reserveCs2Aa799EbAFJ_11polars_time.exit: ; preds = %bb.p, %bb.o
  %i.ei = load ptr, ptr %i.p, align 8, !dbg !3837, !nonnull !1761, !noundef !1761
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ee, !dbg !3838
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.ej, align 4, !dbg !3839
  %i.ek = add nuw nsw i64 %i.ee, 1, !dbg !3840
  store i64 %i.ek, ptr %i.o, align 8, !dbg !3841
  %i.el = load i64, ptr %i.a, align 8, !dbg !3775, !alias.scope !3773, !noundef !1761 ; 2 uses
  %i.em = icmp eq i64 %i.el, 0, !dbg !3775
  br i1 %i.em, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgZ49sUHp3tW_5alloc11collections9vec_deque5drain5DrainNtNtNtCs2Aa799EbAFJ_11polars_time7windows8group_by12ActiveWindowENCNvMs0_B20_NtB20_15RollingWindower8finalize0ENtNtNtB9_6traits8iterator8Iterator4nextB24_.exit, label %bb.b, !dbg !3775

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %.invoke
  %lpad.loopexit.split-lp116 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsgZ49sUHp3tW_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs2Aa799EbAFJ_11polars_time7windows8group_by12ActiveWindowENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB1g_(ptr noalias noundef nonnull align 8 dereferenceable(120) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsgZ49sUHp3tW_5alloc11collections9vec_deque5drain5DrainNtNtNtCs2Aa799EbAFJ_11polars_time7windows8group_by12ActiveWindowENCNvMs0_B2i_NtB2i_15RollingWindower8finalize0EEB2m_.exit unwind label %bb.q, !dbg !3842

bb.p:                                             ; preds = %bb.o
  %.val = load i64, ptr %i.a, align 8, !dbg !3843, !noundef !1761
  %i.en = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1), !dbg !3844
  invoke void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ee, i64 noundef %i.en, i64 noundef 4, i64 noundef 8)
          to label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecAmj2_E7reserveCs2Aa799EbAFJ_11polars_time.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3845

bb.q:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !3846
  unreachable, !dbg !3846

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsgZ49sUHp3tW_5alloc11collections9vec_deque5drain5DrainNtNtNtCs2Aa799EbAFJ_11polars_time7windows8group_by12ActiveWindowENCNvMs0_B2i_NtB2i_15RollingWindower8finalize0EEB2m_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp116, !dbg !3846
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsh8eZTKRCwoO_3std9backtrace11BytesOrWideEECs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3852, !range !1809, !noundef !1761 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2, !dbg !3852
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace11BytesOrWideECs2Aa799EbAFJ_11polars_time.exit, label %bb.b, !dbg !3852

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace11BytesOrWideECs2Aa799EbAFJ_11polars_time.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void, !dbg !3852

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0, !dbg !3853
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3853 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d, !dbg !3853

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !3854
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace11BytesOrWideECs2Aa799EbAFJ_11polars_time.exit, !dbg !3853

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVectENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !3855
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std9backtrace11BytesOrWideECs2Aa799EbAFJ_11polars_time.exit, !dbg !3853
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEECs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3856 {
bb.a:
  invoke void @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4dropINtB4_12ChunkedArrayNtNtB6_9datatypes10UInt16TypeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.d unwind label %bb.b, !dbg !3888

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3888 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3882), !dbg !3888
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3883), !dbg !3889
  %i.c = load ptr, ptr %i.b, align 8, !dbg !3890, !alias.scope !3884, !nonnull !1761, !noundef !1761
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8, !dbg !3891, !noalias !3884
  %i.e = icmp eq i64 %i.d, 1, !dbg !3892
  br i1 %i.e, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECs2Aa799EbAFJ_11polars_time.exit, !dbg !3892

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !3893
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #20
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECs2Aa799EbAFJ_11polars_time.exit unwind label %bb.i, !dbg !3894

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3888 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3885), !dbg !3888
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3886), !dbg !3895
  %i.g = load ptr, ptr %i.f, align 8, !dbg !3896, !alias.scope !3887, !nonnull !1761, !noundef !1761
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !dbg !3897, !noalias !3887
  %i.i = icmp eq i64 %i.h, 1, !dbg !3898
  br i1 %i.i, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECs2Aa799EbAFJ_11polars_time.exit3, !dbg !3898

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !3899
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #20
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECs2Aa799EbAFJ_11polars_time.exit3 unwind label %bb.f, !dbg !3900

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECs2Aa799EbAFJ_11polars_time.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.a, %bb.c ], [ %i.a, %bb.b ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs2Aa799EbAFJ_11polars_time(ptr noalias noundef align 8 dereferenceable(24) %0) #21
          to label %common.resume unwind label %bb.i, !dbg !3888

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECs2Aa799EbAFJ_11polars_time.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECs2Aa799EbAFJ_11polars_time.exit3: ; preds = %bb.d, %bb.e
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs2Aa799EbAFJ_11polars_time.exit unwind label %bb.g, !dbg !3901

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECs2Aa799EbAFJ_11polars_time.exit3
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.h, !dbg !3902

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !3901
  unreachable, !dbg !3901

common.resume:                                    ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECs2Aa799EbAFJ_11polars_time.exit, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.g ], [ %.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECs2Aa799EbAFJ_11polars_time.exit ]
  resume { ptr, i32 } %common.resume.op, !dbg !3888

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs2Aa799EbAFJ_11polars_time.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECs2Aa799EbAFJ_11polars_time.exit3
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !3903
  ret void, !dbg !3888

bb.i:                                             ; preds = %bb.c, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECs2Aa799EbAFJ_11polars_time.exit
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !3888
end_hunk_0
begin_hunk_1_@_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecxEINtB2_12SpecFromIterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtB1q_5slice4iter4IterxEENCNvXNtCs2Aa799EbAFJ_11polars_time8truncateINtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7logical7LogicalNtNtB3K_9datatypes12DatetimeTypeNtB4I_9Int64TypeENtB31_14PolarsTruncate8truncate0EE9from_iterB33_:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !72523
  %i.y = load i64, ptr %i.x, align 8, !dbg !72523, !noalias !72499 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !72524, !noalias !72499
  %i.z = trunc nuw i64 %i.w to i1, !dbg !72525
  br i1 %i.z, label %bb.d, label %bb.f, !dbg !72525, !prof !2007

bb.d:                                             ; preds = %.noexc.i
  %i.aa = icmp ugt i64 %i.y, %i.o, !dbg !72526
  br i1 %i.aa, label %bb.e, label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB13_6copied6CopiedINtNtNtB17_5slice4iter4IterxEENCNvXNtCs2Aa799EbAFJ_11polars_time8truncateINtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7logical7LogicalNtNtB3r_9datatypes12DatetimeTypeNtB4p_9Int64TypeENtB2I_14PolarsTruncate8truncate0EEB2K_.exit.i.i, !dbg !72527, !prof !1829

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, i64 noundef %i.y, i64 noundef 8, i64 noundef 8)
          to label %.noexc3.i unwind label %bb.h, !dbg !72528, !noalias !72496

.noexc3.i:                                        ; preds = %bb.e
  %.pre.i.i.i = load i64, ptr %i.u, align 8, !dbg !72529, !alias.scope !72500, !noalias !72495
  %.pre.i = load ptr, ptr %i.t, align 8, !dbg !72530, !alias.scope !72500, !noalias !72495
  br label %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB13_6copied6CopiedINtNtNtB17_5slice4iter4IterxEENCNvXNtCs2Aa799EbAFJ_11polars_time8truncateINtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7logical7LogicalNtNtB3r_9datatypes12DatetimeTypeNtB4p_9Int64TypeENtB2I_14PolarsTruncate8truncate0EEB2K_.exit.i.i, !dbg !72528

bb.f:                                             ; preds = %.noexc.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23
          to label %.noexc4.i unwind label %bb.h, !dbg !72531, !noalias !72496

.noexc4.i:                                        ; preds = %bb.f
  unreachable

_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB13_6copied6CopiedINtNtNtB17_5slice4iter4IterxEENCNvXNtCs2Aa799EbAFJ_11polars_time8truncateINtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7logical7LogicalNtNtB3r_9datatypes12DatetimeTypeNtB4p_9Int64TypeENtB2I_14PolarsTruncate8truncate0EEB2K_.exit.i.i: ; preds = %.noexc3.i, %bb.d
  %i.ab = phi ptr [ %i.r, %bb.d ], [ %.pre.i, %.noexc3.i ], !dbg !72530
  %i.ac = phi i64 [ 0, %bb.d ], [ %.pre.i.i.i, %.noexc3.i ], !dbg !72529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !72532, !noalias !72499
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !72532
  store ptr %i.ab, ptr %i.ad, align 8, !dbg !72532, !noalias !72499
  store ptr %i.u, ptr %i.a, align 8, !dbg !72532, !noalias !72499
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !72532
  store i64 %i.ac, ptr %i.ae, align 8, !dbg !72532, !noalias !72499
  invoke void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterxEENCNvXNtCs2Aa799EbAFJ_11polars_time8truncateINtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7logical7LogicalNtNtB2A_9datatypes12DatetimeTypeNtB3y_9Int64TypeENtB1R_14PolarsTruncate8truncate0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4Q_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB63_3VecxE14extend_trustedBN_E0E0EB1T_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecxEINtB4_18SpecFromIterNestedxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1B_6copied6CopiedINtNtNtB1F_5slice4iter4IterxEENCNvXNtCs2Aa799EbAFJ_11polars_time8truncateINtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7logical7LogicalNtNtB3Z_9datatypes12DatetimeTypeNtB4X_9Int64TypeENtB3g_14PolarsTruncate8truncate0EE9from_iterB3i_.exit unwind label %bb.h, !dbg !72533, !noalias !72496

bb.g:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #23, !dbg !72534, !noalias !72496
  unreachable

bb.h:                                             ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB13_6copied6CopiedINtNtNtB17_5slice4iter4IterxEENCNvXNtCs2Aa799EbAFJ_11polars_time8truncateINtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7logical7LogicalNtNtB3r_9datatypes12DatetimeTypeNtB4p_9Int64TypeENtB2I_14PolarsTruncate8truncate0EEB2K_.exit.i.i, %bb.f, %bb.e, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Aa799EbAFJ_11polars_time.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2Aa799EbAFJ_11polars_time.exit.i unwind label %bb.i, !dbg !72535, !noalias !72496

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !72536, !noalias !72496
  unreachable, !dbg !72536

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2Aa799EbAFJ_11polars_time.exit.i: ; preds = %bb.h
  resume { ptr, i32 } %i.af, !dbg !72536

_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecxEINtB4_18SpecFromIterNestedxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB1B_6copied6CopiedINtNtNtB1F_5slice4iter4IterxEENCNvXNtCs2Aa799EbAFJ_11polars_time8truncateINtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7logical7LogicalNtNtB3Z_9datatypes12DatetimeTypeNtB4X_9Int64TypeENtB3g_14PolarsTruncate8truncate0EE9from_iterB3i_.exit: ; preds = %_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB13_6copied6CopiedINtNtNtB17_5slice4iter4IterxEENCNvXNtCs2Aa799EbAFJ_11polars_time8truncateINtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7logical7LogicalNtNtB3r_9datatypes12DatetimeTypeNtB4p_9Int64TypeENtB2I_14PolarsTruncate8truncate0EEB2K_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !72537, !noalias !72499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !72538, !noalias !72495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !72539, !noalias !72501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !72540, !noalias !72495
  ret void, !dbg !72541
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecxEINtB2_18SpecFromIterNestedxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_by6StepByINtNtNtB1D_3ops5range14RangeInclusivexEEE9from_iterCs2Aa799EbAFJ_11polars_time(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !72542 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !72711
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !72712
  %i.d = load i8, ptr %i.c, align 8, !dbg !72712, !range !2011, !alias.scope !72686, !noundef !1761
  %i.e = trunc nuw i8 %i.d to i1, !dbg !72712
  %i.f = load i64, ptr %1, align 8, !dbg !72712, !alias.scope !72686 ; 8 uses
  %.sroa.0.0.i.i = select i1 %i.e, i64 0, i64 %i.f, !dbg !72712
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !72713
  %i.h = load i8, ptr %i.g, align 8, !dbg !72713, !range !2011, !alias.scope !72691, !noundef !1761
  %i.i = trunc nuw i8 %i.h to i1, !dbg !72713
  br i1 %i.i, label %bb.o, label %bb.b, !dbg !72713

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !72714
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !72715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72692), !dbg !72716
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72693), !dbg !72716
  %i.l = load i64, ptr %i.j, align 8, !dbg !72717, !alias.scope !72694, !noundef !1761 ; 3 uses
  %i.m = load i64, ptr %i.k, align 8, !dbg !72718, !alias.scope !72695, !noundef !1761 ; 11 uses
  %.not.i.i.i = icmp sgt i64 %i.l, %i.m, !dbg !72717
  br i1 %.not.i.i.i, label %bb.o, label %bb.c, !dbg !72719

bb.c:                                             ; preds = %bb.b
  %i.n = add i64 %i.l, %.sroa.0.0.i.i, !dbg !72720 ; 5 uses
  %.not.i.not.i.i.i = icmp slt i64 %i.n, %i.l, !dbg !72721
  br i1 %.not.i.not.i.i.i, label %bb.o, label %bb.d, !dbg !72722

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.n, i64 %i.m), !dbg !72723
  switch i8 %i.o, label %bb.e [
    i8 1, label %bb.o
    i8 -1, label %bb.f
    i8 0, label %.thread
  ], !dbg !72724

bb.e:                                             ; preds = %bb.d
  unreachable, !dbg !72725

bb.f:                                             ; preds = %bb.d
  %i.p = add i64 %i.n, 1, !dbg !72726             ; 4 uses
  %.not.i.i.i7 = icmp sgt i64 %i.p, %i.m, !dbg !72727
  br i1 %.not.i.i.i7, label %.thread, label %bb.g, !dbg !72728

.thread:                                          ; preds = %bb.d, %bb.f
  %i.q = phi i1 [ false, %bb.f ], [ true, %bb.d ]
  %.sroa.411.0.copyload45 = phi i64 [ %i.p, %bb.f ], [ %i.n, %bb.d ]
  %i.r = add nuw i64 %i.f, 1, !dbg !72729
  %i.s = icmp ne i64 %i.f, -1, !dbg !72730
  tail call void @llvm.assume(i1 %i.s), !dbg !72730
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_3ops5range14RangeInclusivexEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2Aa799EbAFJ_11polars_time.exit, !dbg !72731

bb.g:                                             ; preds = %bb.f
  %i.t = sub i64 %i.m, %i.p, !dbg !72732
  %i.u = tail call i64 @llvm.uadd.sat.i64(i64 %i.t, i64 1), !dbg !72733
  %i.v = add nuw i64 %i.f, 1, !dbg !72729         ; 2 uses
  %i.w = icmp ne i64 %i.f, -1, !dbg !72730
  tail call void @llvm.assume(i1 %i.w), !dbg !72730
  %i.x = udiv i64 %i.u, %i.v, !dbg !72734
  %i.y = tail call i64 @llvm.uadd.sat.i64(i64 %i.x, i64 1), !dbg !72735
  %i.z = tail call range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.y, i64 4), !dbg !72736
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_3ops5range14RangeInclusivexEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2Aa799EbAFJ_11polars_time.exit, !dbg !72731

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_3ops5range14RangeInclusivexEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2Aa799EbAFJ_11polars_time.exit: ; preds = %bb.g, %.thread
  %i.aa = phi i1 [ %i.q, %.thread ], [ false, %bb.g ]
  %.sroa.411.0.copyload44 = phi i64 [ %.sroa.411.0.copyload45, %.thread ], [ %i.p, %bb.g ] ; 3 uses
  %i.ab = phi i64 [ %i.r, %.thread ], [ %i.v, %bb.g ]
  %.sroa.05.0.sink.i.i = phi i64 [ 4, %.thread ], [ %i.z, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !72737
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.05.0.sink.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !72737
  %i.ac = load i64, ptr %i.a, align 8, !dbg !72737, !range !1885, !noundef !1761
  %i.ad = trunc nuw i64 %i.ac to i1, !dbg !72738
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !72739
  %i.af = load i64, ptr %i.ae, align 8, !dbg !72739, !range !1848, !noundef !1761 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !72739 ; 2 uses
  br i1 %i.ad, label %bb.h, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Aa799EbAFJ_11polars_time.exit, !dbg !72738, !prof !1829

bb.h:                                             ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_3ops5range14RangeInclusivexEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2Aa799EbAFJ_11polars_time.exit
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !72740
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.af, i64 %i.ah) #23, !dbg !72741
  unreachable, !dbg !72741

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Aa799EbAFJ_11polars_time.exit: ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_3ops5range14RangeInclusivexEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2Aa799EbAFJ_11polars_time.exit
  %i.ai = load ptr, ptr %i.ag, align 8, !dbg !72742, !nonnull !1761, !noundef !1761 ; 4 uses
  %i.aj = icmp ule i64 %.sroa.05.0.sink.i.i, %i.af, !dbg !72743
  tail call void @llvm.assume(i1 %i.aj), !dbg !72744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !72745
  store i64 %i.n, ptr %i.ai, align 8, !dbg !72746
  store i64 %i.af, ptr %i.b, align 8, !dbg !72747
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !72747 ; 4 uses
  store ptr %i.ai, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !72747
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !72747 ; 5 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !72747
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72705), !dbg !72748
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72706), !dbg !72749
  br i1 %i.aa, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_by6StepByINtNtNtB1l_3ops5range14RangeInclusivexEEE11spec_extendCs2Aa799EbAFJ_11polars_time.exit, label %.lr.ph.i.i, !dbg !72750

.lr.ph.i.i:                                       ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Aa799EbAFJ_11polars_time.exit
  %i.ak = icmp ne i64 %i.f, -1                    ; 2 uses
  %.not.i.i.i.peel.i.i = icmp sgt i64 %.sroa.411.0.copyload44, %i.m, !dbg !72751
  br i1 %.not.i.i.i.peel.i.i, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_by6StepByINtNtNtB1l_3ops5range14RangeInclusivexEEE11spec_extendCs2Aa799EbAFJ_11polars_time.exit, label %bb.i, !dbg !72752

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.al = add i64 %.sroa.411.0.copyload44, %i.f, !dbg !72753 ; 5 uses
  %.not.i.not.i.i.i.peel.i.i = icmp slt i64 %i.al, %.sroa.411.0.copyload44, !dbg !72754
  br i1 %.not.i.not.i.i.i.peel.i.i, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_by6StepByINtNtNtB1l_3ops5range14RangeInclusivexEEE11spec_extendCs2Aa799EbAFJ_11polars_time.exit, label %bb.j, !dbg !72755

bb.j:                                             ; preds = %bb.i
  %i.am = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.al, i64 %i.m), !dbg !72756
  switch i8 %i.am, label %.loopexit26.i.i [
    i8 1, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_by6StepByINtNtNtB1l_3ops5range14RangeInclusivexEEE11spec_extendCs2Aa799EbAFJ_11polars_time.exit
    i8 -1, label %.peel.next.i.i
    i8 0, label %.loopexit.sink.split.i.i
  ], !dbg !72757

.peel.next.i.i:                                   ; preds = %bb.j
  %i.an = add i64 %i.al, 1, !dbg !72758           ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !72759
  store i64 %i.al, ptr %i.ao, align 8, !dbg !72760, !noalias !72707
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !72761, !alias.scope !72708
  %.not.i.i.i.i5.i = icmp sgt i64 %i.an, %i.m, !dbg !72751
  br i1 %.not.i.i.i.i5.i, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_by6StepByINtNtNtB1l_3ops5range14RangeInclusivexEEE11spec_extendCs2Aa799EbAFJ_11polars_time.exit, label %.lr.ph.i, !dbg !72752

.lr.ph.i:                                         ; preds = %.peel.next.i.i, %.backedge.i.i
  %i.ap = phi i64 [ %.be42.i.i, %.backedge.i.i ], [ %i.an, %.peel.next.i.i ] ; 2 uses
  %i.aq = phi i64 [ %.be.i.i, %.backedge.i.i ], [ 2, %.peel.next.i.i ] ; 10 uses
  %i.ar = add i64 %i.ap, %i.f, !dbg !72753        ; 7 uses
  %.not.i.not.i.i.i.i.i = icmp slt i64 %i.ar, %i.ap, !dbg !72754
  br i1 %.not.i.not.i.i.i.i.i, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_by6StepByINtNtNtB1l_3ops5range14RangeInclusivexEEE11spec_extendCs2Aa799EbAFJ_11polars_time.exit, label %bb.k, !dbg !72755

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.ar, i64 %i.m), !dbg !72756
  switch i8 %i.as, label %default.unreachable [
    i8 1, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_by6StepByINtNtNtB1l_3ops5range14RangeInclusivexEEE11spec_extendCs2Aa799EbAFJ_11polars_time.exit
    i8 -1, label %.thread39.i.i
    i8 0, label %bb.l
  ], !dbg !72757

default.unreachable:                              ; preds = %bb.k
  unreachable

.loopexit26.i.i:                                  ; preds = %bb.j
  unreachable, !dbg !72762

bb.l:                                             ; preds = %bb.k
  %i.at = icmp samesign ult i64 %i.aq, 1152921504606846976, !dbg !72763
  call void @llvm.assume(i1 %i.at), !dbg !72764
  %i.au = load i64, ptr %i.b, align 8, !dbg !72765, !range !1793, !alias.scope !72708, !noundef !1761
  %i.av = icmp eq i64 %i.aq, %i.au, !dbg !72766
  br i1 %i.av, label %.thread.i.i, label %.loopexit.sink.split.i.i.loopexit, !dbg !72766

.thread39.i.i:                                    ; preds = %bb.k
  %i.aw = add i64 %i.ar, 1, !dbg !72758           ; 5 uses
  %i.ax = icmp samesign ult i64 %i.aq, 1152921504606846976, !dbg !72763
  call void @llvm.assume(i1 %i.ax), !dbg !72764
  %i.ay = load i64, ptr %i.b, align 8, !dbg !72765, !range !1793, !alias.scope !72708, !noundef !1761
  %i.az = icmp eq i64 %i.aq, %i.ay, !dbg !72766
  br i1 %i.az, label %bb.m, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecxE7reserveCs2Aa799EbAFJ_11polars_time.exit.i.i, !dbg !72766

.loopexit.sink.split.i.i.loopexit:                ; preds = %bb.l
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !72767, !alias.scope !72708
  br label %.loopexit.sink.split.i.i, !dbg !72767

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.i.i.loopexit, %bb.j
  %i.ba = phi ptr [ %i.ai, %bb.j ], [ %.pre, %.loopexit.sink.split.i.i.loopexit ], !dbg !72767
  %.lcssa48.sink50.i.i = phi i64 [ 1, %bb.j ], [ %i.aq, %.loopexit.sink.split.i.i.loopexit ] ; 2 uses
  %.lcssa44.sink.i.i = phi i64 [ %i.al, %bb.j ], [ %i.ar, %.loopexit.sink.split.i.i.loopexit ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.lcssa48.sink50.i.i, !dbg !72759
  store i64 %.lcssa44.sink.i.i, ptr %i.bb, align 8, !dbg !72760, !noalias !72709
  %i.bc = add nuw nsw i64 %.lcssa48.sink50.i.i, 1, !dbg !72768
  store i64 %i.bc, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !72761, !alias.scope !72708
  br label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_by6StepByINtNtNtB1l_3ops5range14RangeInclusivexEEE11spec_extendCs2Aa799EbAFJ_11polars_time.exit, !dbg !72769

bb.m:                                             ; preds = %.thread39.i.i
  %.not.i.i.i6.i.i = icmp sgt i64 %i.aw, %i.m, !dbg !72770
  br i1 %.not.i.i.i6.i.i, label %.thread.i.i, label %bb.n, !dbg !72771

.thread.i.i:                                      ; preds = %bb.m, %bb.l
  %i.bd = phi i64 [ %i.aw, %bb.m ], [ %i.ar, %bb.l ]
  %i.be = phi i1 [ false, %bb.m ], [ true, %bb.l ]
  call void @llvm.assume(i1 %i.ak), !dbg !72772
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_3ops5range14RangeInclusivexEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2Aa799EbAFJ_11polars_time.exit.i.i, !dbg !72773

bb.n:                                             ; preds = %bb.m
  %i.bf = sub i64 %i.m, %i.aw, !dbg !72774
  %i.bg = call i64 @llvm.uadd.sat.i64(i64 %i.bf, i64 1), !dbg !72775
  call void @llvm.assume(i1 %i.ak), !dbg !72772
  %i.bh = udiv i64 %i.bg, %i.ab, !dbg !72776
  %i.bi = call i64 @llvm.uadd.sat.i64(i64 %i.bh, i64 1), !dbg !72777
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_3ops5range14RangeInclusivexEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2Aa799EbAFJ_11polars_time.exit.i.i, !dbg !72773

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_3ops5range14RangeInclusivexEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2Aa799EbAFJ_11polars_time.exit.i.i: ; preds = %bb.n, %.thread.i.i
  %i.bj = phi i1 [ %i.be, %.thread.i.i ], [ false, %bb.n ]
  %i.bk = phi i64 [ %i.bd, %.thread.i.i ], [ %i.aw, %bb.n ]
  %.sroa.05.0.sink.i.i.i.i = phi i64 [ 1, %.thread.i.i ], [ %i.bi, %bb.n ]
  invoke void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.aq, i64 noundef %.sroa.05.0.sink.i.i.i.i, i64 noundef 8, i64 noundef 8)
          to label %.noexc8 unwind label %bb.q, !dbg !72778

.noexc8:                                          ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_3ops5range14RangeInclusivexEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2Aa799EbAFJ_11polars_time.exit.i.i
  %i.bl = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !72767, !alias.scope !72708, !nonnull !1761, !noundef !1761
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.aq, !dbg !72759
  store i64 %i.ar, ptr %i.bm, align 8, !dbg !72760, !noalias !72709
  %i.bn = add nuw nsw i64 %i.aq, 1, !dbg !72768   ; 2 uses
  store i64 %i.bn, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !72761, !alias.scope !72708
  br i1 %i.bj, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_by6StepByINtNtNtB1l_3ops5range14RangeInclusivexEEE11spec_extendCs2Aa799EbAFJ_11polars_time.exit, label %.backedge.i.i, !dbg !72750

.backedge.i.i:                                    ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecxE7reserveCs2Aa799EbAFJ_11polars_time.exit.i.i, %.noexc8
  %.be.i.i = phi i64 [ %i.bq, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecxE7reserveCs2Aa799EbAFJ_11polars_time.exit.i.i ], [ %i.bn, %.noexc8 ]
  %.be42.i.i = phi i64 [ %i.aw, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecxE7reserveCs2Aa799EbAFJ_11polars_time.exit.i.i ], [ %i.bk, %.noexc8 ] ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i64 %.be42.i.i, %i.m, !dbg !72751
  br i1 %.not.i.i.i.i.i, label %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_by6StepByINtNtNtB1l_3ops5range14RangeInclusivexEEE11spec_extendCs2Aa799EbAFJ_11polars_time.exit, label %.lr.ph.i, !dbg !72752, !llvm.loop !72682

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecxE7reserveCs2Aa799EbAFJ_11polars_time.exit.i.i: ; preds = %.thread39.i.i
  %i.bo = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !72767, !alias.scope !72708, !nonnull !1761, !noundef !1761
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.aq, !dbg !72759
  store i64 %i.ar, ptr %i.bp, align 8, !dbg !72760, !noalias !72709
  %i.bq = add nuw nsw i64 %i.aq, 1, !dbg !72768   ; 2 uses
  store i64 %i.bq, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !72761, !alias.scope !72708
  br label %.backedge.i.i, !dbg !72750

bb.o:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  store i64 0, ptr %0, align 8, !dbg !72779
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !72779
  store ptr inttoptr (i64 8 to ptr), ptr %i.br, align 8, !dbg !72779
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !72779
  store i64 0, ptr %i.bs, align 8, !dbg !72779
  br label %bb.p, !dbg !72780

bb.p:                                             ; preds = %_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_by6StepByINtNtNtB1l_3ops5range14RangeInclusivexEEE11spec_extendCs2Aa799EbAFJ_11polars_time.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !72780
  ret void, !dbg !72781

bb.q:                                             ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB4_6StepByINtNtNtBa_3ops5range14RangeInclusivexEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2Aa799EbAFJ_11polars_time.exit.i.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2Aa799EbAFJ_11polars_time.exit unwind label %bb.r, !dbg !72782

_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecxEINtB2_10SpecExtendxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_by6StepByINtNtNtB1l_3ops5range14RangeInclusivexEEE11spec_extendCs2Aa799EbAFJ_11polars_time.exit: ; preds = %.backedge.i.i, %.noexc8, %bb.k, %.lr.ph.i, %.loopexit.sink.split.i.i, %.peel.next.i.i, %bb.j, %bb.i, %.lr.ph.i.i, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Aa799EbAFJ_11polars_time.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !72783
  br label %bb.p, !dbg !72780

bb.r:                                             ; preds = %bb.q
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !72784
  unreachable, !dbg !72784

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2Aa799EbAFJ_11polars_time.exit: ; preds = %bb.q
  resume { ptr, i32 } %i.bt, !dbg !72784
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB7_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCs2Aa799EbAFJ_11polars_time(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !72785 {
bb.a:
  %i.a = invoke { ptr, i64 } @_RNvMs0_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE8as_sliceCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.c unwind label %bb.b, !dbg !72821 ; 2 uses

bb.b:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE7reserveCs2Aa799EbAFJ_11polars_time.exit.thread.i, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2Aa799EbAFJ_11polars_time.exit unwind label %bb.f, !dbg !72822

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.a, 0, !dbg !72823
  %i.d = extractvalue { ptr, i64 } %i.a, 1, !dbg !72823 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !72824 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !72824, !alias.scope !72818, !noundef !1761 ; 5 uses
  %i.g = load i64, ptr %0, align 8, !dbg !72825, !range !1793, !alias.scope !72818, !noundef !1761
  %i.h = sub i64 %i.g, %i.f, !dbg !72826
  %i.i = icmp ugt i64 %i.d, %i.h, !dbg !72827
  br i1 %i.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE7reserveCs2Aa799EbAFJ_11polars_time.exit.thread.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE7reserveCs2Aa799EbAFJ_11polars_time.exit.i, !dbg !72828, !prof !1829

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE7reserveCs2Aa799EbAFJ_11polars_time.exit.thread.i: ; preds = %bb.c
  invoke void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 16, i64 noundef 160)
          to label %.noexc unwind label %bb.b, !dbg !72829

.noexc:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE7reserveCs2Aa799EbAFJ_11polars_time.exit.thread.i
  %i.j = load i64, ptr %i.e, align 8, !dbg !72830, !alias.scope !72819, !noundef !1761 ; 2 uses
  %i.k = icmp ult i64 %i.j, 57646075230342349, !dbg !72831
  tail call void @llvm.assume(i1 %i.k), !dbg !72832
  br label %bb.d, !dbg !72833

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE7reserveCs2Aa799EbAFJ_11polars_time.exit.i: ; preds = %bb.c
  %i.l = icmp ult i64 %i.f, 57646075230342349, !dbg !72831
  tail call void @llvm.assume(i1 %i.l), !dbg !72832
  %.not.i = icmp eq i64 %i.d, 0, !dbg !72833
  br i1 %.not.i, label %bb.e, label %bb.d, !dbg !72833

bb.d:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE7reserveCs2Aa799EbAFJ_11polars_time.exit.i, %.noexc
  %i.m = phi i64 [ %i.j, %.noexc ], [ %i.f, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE7reserveCs2Aa799EbAFJ_11polars_time.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !72834
  %i.o = load ptr, ptr %i.n, align 8, !dbg !72834, !alias.scope !72819, !nonnull !1761, !noundef !1761
  %i.p = getelementptr inbounds nuw [160 x i8], ptr %i.o, i64 %i.m, !dbg !72835
  %i.q = mul i64 %i.d, 160, !dbg !72836
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.p, ptr readonly align 16 %i.c, i64 %i.q, i1 false), !dbg !72836
  %.pre.i = load i64, ptr %i.e, align 8, !dbg !72837, !alias.scope !72819
  br label %bb.e, !dbg !72838

bb.e:                                             ; preds = %bb.d, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE7reserveCs2Aa799EbAFJ_11polars_time.exit.i
  %i.r = phi i64 [ %.pre.i, %bb.d ], [ %i.f, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnE7reserveCs2Aa799EbAFJ_11polars_time.exit.i ], !dbg !72837
  %i.s = add i64 %i.r, %i.d, !dbg !72837
  store i64 %i.s, ptr %i.e, align 8, !dbg !72837, !alias.scope !72819
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !72839
  %i.u = load ptr, ptr %i.t, align 8, !dbg !72839, !nonnull !1761, !noundef !1761
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !72840
  store ptr %i.u, ptr %i.v, align 8, !dbg !72840
  tail call void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !72841
  ret void, !dbg !72842

bb.f:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !72843
  unreachable, !dbg !72843

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECs2Aa799EbAFJ_11polars_time.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !72843
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1G_NtCscgRAwXFJnXP_4core3fmtTINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBx_NtNtB17_5field5FieldEENtB6_5Debug3fmtCs2Aa799EbAFJ_11polars_time(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !72844 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !72848
  call void @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !dbg !72849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !72850
  store ptr %0, ptr %i.b, align 8, !dbg !72850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !72850
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !72850
  store ptr %i.d, ptr %i.a, align 8, !dbg !72850
  %i.e = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17), !dbg !72851 ; 0 uses
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18), !dbg !72851 ; 0 uses
  %i.g = call noundef zeroext i1 @_RNvMs2_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !72852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !72853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !72853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !72854
  ret i1 %i.g, !dbg !72855
}
end_hunk_1
begin_hunk_2_@_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE10extend_oneCs2Aa799EbAFJ_11polars_time:bb.a

bb.l:                                             ; preds = %bb.c, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !73911 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73868), !dbg !73911
  call void @llvm.experimental.noalias.scope.decl(metadata !73869), !dbg !73912
  call void @llvm.experimental.noalias.scope.decl(metadata !73870), !dbg !73913
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !73914, !alias.scope !73871, !nonnull !1761, !noundef !1761
  %i.ak = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !dbg !73915, !noalias !73871
  %i.al = icmp eq i64 %i.ak, 1, !dbg !73916
  br i1 %i.al, label %bb.m, label %.body, !dbg !73916

bb.m:                                             ; preds = %bb.l
  fence acquire, !dbg !73917
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCsi07hmUMJW4u_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque5InnerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai) #20
          to label %.body unwind label %bb.n, !dbg !73918

bb.n:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !73910
  unreachable, !dbg !73910
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE20extend_one_uncheckedCs2Aa799EbAFJ_11polars_time(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !73919 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !73966 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !73966, !alias.scope !73964, !noundef !1761 ; 3 uses
  %i.c = icmp ult i64 %i.b, 288230376151711744, !dbg !73967
  tail call void @llvm.assume(i1 %i.c), !dbg !73968
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !73969
  %i.e = load ptr, ptr %i.d, align 8, !dbg !73969, !alias.scope !73964, !nonnull !1761, !noundef !1761
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.b, !dbg !73970
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !73971
  %i.g = add nuw nsw i64 %i.b, 1, !dbg !73972
  store i64 %i.g, ptr %i.a, align 8, !dbg !73973, !alias.scope !73964
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !73974
  %i.i = load ptr, ptr %i.h, align 8, !dbg !73974, !nonnull !1761, !noundef !1761
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !73974
  %i.k = load i8, ptr %i.j, align 8, !dbg !73974, !range !2011, !noundef !1761
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73965), !dbg !73975
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !73976 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !73976, !alias.scope !73965, !noundef !1761 ; 3 uses
  %i.n = icmp ult i64 %i.m, 576460752303423488, !dbg !73977
  tail call void @llvm.assume(i1 %i.n), !dbg !73978
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !73979
  %i.p = load ptr, ptr %i.o, align 8, !dbg !73979, !alias.scope !73965, !nonnull !1761, !noundef !1761
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.m, !dbg !73980 ; 2 uses
  store ptr %i.i, ptr %i.q, align 8, !dbg !73981, !noalias !73965
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !73981
  store i8 %i.k, ptr %i.r, align 8, !dbg !73981, !noalias !73965
  %i.s = add nuw nsw i64 %i.m, 1, !dbg !73982
  store i64 %i.s, ptr %i.l, align 8, !dbg !73983, !alias.scope !73965
  ret void, !dbg !73984
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !73985 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i.i = alloca [23 x i8], align 8        ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.071 = alloca [79 x i8], align 8          ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.067 = alloca [56 x i8], align 8          ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.063 = alloca [56 x i8], align 8          ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.059 = alloca [56 x i8], align 8          ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.058 = alloca [56 x i8], align 8          ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = load i8, ptr %1, align 8, !dbg !74391, !range !1869, !noundef !1761
  switch i8 %i.u, label %default.unreachable83 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.y
    i8 24, label %bb.z
    i8 25, label %bb.aa
    i8 26, label %bb.ab
    i8 27, label %bb.ac
    i8 28, label %bb.an
    i8 29, label %bb.ay
    i8 30, label %bb.bj
    i8 31, label %bb.bk
    i8 32, label %bb.bv
    i8 33, label %bb.bx
    i8 34, label %bb.by
    i8 35, label %bb.bz
    i8 36, label %bb.ca
    i8 37, label %bb.cb
    i8 38, label %bb.cq
    i8 39, label %bb.cr
    i8 40, label %bb.cs
    i8 41, label %bb.ct
  ], !dbg !74391

default.unreachable83:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.d:                                             ; preds = %bb.a
  store i8 2, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.e:                                             ; preds = %bb.a
  store i8 3, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.f:                                             ; preds = %bb.a
  store i8 4, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.g:                                             ; preds = %bb.a
  store i8 5, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.h:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.i:                                             ; preds = %bb.a
  store i8 7, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.j:                                             ; preds = %bb.a
  store i8 8, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.k:                                             ; preds = %bb.a
  store i8 9, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.l:                                             ; preds = %bb.a
  store i8 10, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.m:                                             ; preds = %bb.a
  store i8 11, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.n:                                             ; preds = %bb.a
  store i8 12, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.o:                                             ; preds = %bb.a
  store i8 13, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.p:                                             ; preds = %bb.a
  store i8 14, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.q:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !74392
  %i.w = load i8, ptr %i.v, align 1, !dbg !74392, !range !1806, !noundef !1761
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !74393 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 31, !dbg !74393
  %i.z = load i8, ptr %i.y, align 1, !dbg !74393, !range !1870, !noundef !1761
  switch i8 %i.z, label %bb.dd [
    i8 -38, label %bb.db
    i8 -40, label %bb.dc
  ], !dbg !74394

bb.r:                                             ; preds = %bb.a
  store i8 16, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.s:                                             ; preds = %bb.a
  store i8 17, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.t:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !74395
  br label %bb.da, !dbg !74396

bb.u:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !74397
  br label %bb.da, !dbg !74396

bb.v:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !74398
  br label %bb.da, !dbg !74396

bb.w:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !74399
  br label %bb.da, !dbg !74396

bb.x:                                             ; preds = %bb.a
  store i8 22, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.y:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !74400
  br label %bb.da, !dbg !74396

bb.z:                                             ; preds = %bb.a
  store i8 24, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.aa:                                            ; preds = %bb.a
  store i8 25, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.ab:                                            ; preds = %bb.a
  store i8 26, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.ac:                                            ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !74401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74322), !dbg !74402
  %i.ab = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE13new_uninit_inCs2Aa799EbAFJ_11polars_time(), !dbg !74403, !noalias !74322, !inline_history !73997 ; 5 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !dbg !74404, !alias.scope !74322, !nonnull !1761, !noundef !1761 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74323), !dbg !74405
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.058), !dbg !74406
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74324), !dbg !74407, !noalias !74322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !74408, !noalias !74325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !74409, !noalias !74325
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32, !dbg !74409 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 55, !dbg !74410
  %i.af = load i8, ptr %i.ae, align 1, !dbg !74410, !range !1828, !alias.scope !74326, !noalias !74322, !noundef !1761
  %i.ag = icmp eq i8 %i.af, -40, !dbg !74411
  br i1 %i.ag, label %bb.ad, label %bb.ae, !dbg !74411

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad) #20
          to label %.noexc unwind label %bb.al, !dbg !74412, !inline_history !74016

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !dbg !74413, !noalias !74327
  br label %.noexc, !dbg !74414

.noexc:                                           ; preds = %bb.ad, %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !74415, !noalias !74325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !74416, !noalias !74325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !74417, !noalias !74325
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ac)
          to label %bb.ah unwind label %bb.af, !dbg !74417, !noalias !74327, !inline_history !74018

bb.af:                                            ; preds = %.noexc
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 23, !dbg !74418
  %i.aj = load i8, ptr %i.ai, align 1, !dbg !74418, !range !1828, !alias.scope !74328, !noalias !74325, !noundef !1761
  %i.ak = icmp eq i8 %i.aj, -40, !dbg !74419
  br i1 %i.ak, label %bb.ag, label %bb.am, !dbg !74419, !prof !1829

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.am unwind label %bb.ak, !dbg !74420, !noalias !74327, !inline_history !74018

bb.ah:                                            ; preds = %.noexc
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 64, !dbg !74421
  %i.am = load i8, ptr %i.al, align 8, !dbg !74421, !range !2011, !alias.scope !74326, !noalias !74322, !noundef !1761
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 56, !dbg !74422
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !74422, !alias.scope !74326, !noalias !74322, !noundef !1761 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ao, null, !dbg !74422
  br i1 %.not.i.i, label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit, label %bb.ai, !dbg !74423

bb.ai:                                            ; preds = %bb.ah
  %i.ap = atomicrmw add ptr %i.ao, i64 1 monotonic, align 8, !dbg !74424, !noalias !74327
  %i.aq = icmp slt i64 %i.ap, 0, !dbg !74425
  br i1 %i.aq, label %bb.aj, label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit, !dbg !74425

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.trap(), !dbg !74426, !noalias !74322
  unreachable, !dbg !74426

bb.ak:                                            ; preds = %bb.ag
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !74427, !noalias !74327, !inline_history !74018
  unreachable, !dbg !74427

bb.al:                                            ; preds = %bb.ad
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.am, !dbg !74428

common.resume:                                    ; preds = %bb.cz, %bb.cp, %bb.bw, %bb.bu, %bb.bi, %bb.ax, %bb.am
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %bb.am ], [ %eh.lpad-body22, %bb.ax ], [ %eh.lpad-body30, %bb.bi ], [ %eh.lpad-body38, %bb.bu ], [ %i.dp, %bb.bw ], [ %eh.lpad-body44, %bb.cp ], [ %eh.lpad-body49, %bb.cz ]
  resume { ptr, i32 } %common.resume.op, !dbg !74429

bb.am:                                            ; preds = %bb.al, %bb.ag, %bb.af
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.al ], [ %i.ah, %bb.ag ], [ %i.ah, %bb.af ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 72, i64 noundef 8) #22, !dbg !74430, !noalias !74322
  br label %common.resume, !dbg !74431

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit: ; preds = %bb.ai, %bb.ah
  %.sroa.058.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.058, i64 32, !dbg !74427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.058.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !74427, !noalias !74329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.058, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !dbg !74427, !noalias !74329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !74432, !noalias !74325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !74432, !noalias !74325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.058, i64 56, i1 false), !dbg !74433, !noalias !74330
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 56, !dbg !74433
  store ptr %i.ao, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !74433, !noalias !74330
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 64, !dbg !74433
  store i8 %i.am, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !74433, !noalias !74330
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.058), !dbg !74434
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !74435
  store ptr %i.ab, ptr %i.at, align 8, !dbg !74435
  store i8 27, ptr %0, align 8, !dbg !74435
  br label %bb.da, !dbg !74396

bb.an:                                            ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !74436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74331), !dbg !74437
  %i.av = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE13new_uninit_inCs2Aa799EbAFJ_11polars_time(), !dbg !74438, !noalias !74331, !inline_history !73997 ; 5 uses
  %i.aw = load ptr, ptr %i.au, align 8, !dbg !74439, !alias.scope !74331, !nonnull !1761, !noundef !1761 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74332), !dbg !74440
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.059), !dbg !74441
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74333), !dbg !74442, !noalias !74331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !74443, !noalias !74334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !74444, !noalias !74334
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32, !dbg !74444 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 55, !dbg !74445
  %i.az = load i8, ptr %i.ay, align 1, !dbg !74445, !range !1828, !alias.scope !74335, !noalias !74331, !noundef !1761
  %i.ba = icmp eq i8 %i.az, -40, !dbg !74446
  br i1 %i.ba, label %bb.ao, label %bb.ap, !dbg !74446

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax) #20
          to label %.noexc20 unwind label %bb.aw, !dbg !74447, !inline_history !74016

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !dbg !74448, !noalias !74336
  br label %.noexc20, !dbg !74449

.noexc20:                                         ; preds = %bb.ao, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !dbg !74450, !noalias !74334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !74451, !noalias !74334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !74452, !noalias !74334
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aw)
          to label %bb.as unwind label %bb.aq, !dbg !74452, !noalias !74336, !inline_history !74018

bb.aq:                                            ; preds = %.noexc20
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 23, !dbg !74453
  %i.bd = load i8, ptr %i.bc, align 1, !dbg !74453, !range !1828, !alias.scope !74337, !noalias !74334, !noundef !1761
  %i.be = icmp eq i8 %i.bd, -40, !dbg !74454
  br i1 %i.be, label %bb.ar, label %bb.ax, !dbg !74454, !prof !1829

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.ax unwind label %bb.av, !dbg !74455, !noalias !74336, !inline_history !74018

bb.as:                                            ; preds = %.noexc20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 64, !dbg !74456
  %i.bg = load i8, ptr %i.bf, align 8, !dbg !74456, !range !2011, !alias.scope !74335, !noalias !74331, !noundef !1761
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 56, !dbg !74457
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !74457, !alias.scope !74335, !noalias !74331, !noundef !1761 ; 3 uses
  %.not.i.i18 = icmp eq ptr %i.bi, null, !dbg !74457
  br i1 %.not.i.i18, label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit8, label %bb.at, !dbg !74458

bb.at:                                            ; preds = %bb.as
  %i.bj = atomicrmw add ptr %i.bi, i64 1 monotonic, align 8, !dbg !74459, !noalias !74336
  %i.bk = icmp slt i64 %i.bj, 0, !dbg !74460
end_hunk_2
begin_hunk_3_@_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a
bb.cb:                                            ; preds = %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !74560
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74365), !dbg !74561
  %i.dw = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeE13new_uninit_inCs2Aa799EbAFJ_11polars_time(), !dbg !74562, !noalias !74365, !inline_history !74213 ; 4 uses
  %i.dx = load ptr, ptr %i.dv, align 8, !dbg !74563, !alias.scope !74365, !nonnull !1761, !noundef !1761 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74366), !dbg !74564
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.071), !dbg !74565
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74367), !dbg !74566, !noalias !74365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !74567, !noalias !74368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !74568, !noalias !74368
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32, !dbg !74568 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 55, !dbg !74569
  %i.ea = load i8, ptr %i.dz, align 1, !dbg !74569, !range !1828, !alias.scope !74370, !noalias !74365, !noundef !1761
  %i.eb = icmp eq i8 %i.ea, -40, !dbg !74570
  br i1 %i.eb, label %bb.cc, label %bb.cd, !dbg !74570

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dy) #20
          to label %.noexc42 unwind label %bb.co, !dbg !74571, !inline_history !74238

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dy, i64 24, i1 false), !dbg !74572, !noalias !74371
  br label %.noexc42, !dbg !74573

.noexc42:                                         ; preds = %bb.cc, %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !74574, !noalias !74368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !74575, !noalias !74368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !74576, !noalias !74368
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.dx)
          to label %bb.ch unwind label %bb.cg, !dbg !74576, !noalias !74371, !inline_history !74241

bb.ce:                                            ; preds = %bb.cl, %bb.cg
  %.pn.i.i = phi { ptr, i32 } [ %i.ek, %bb.cl ], [ %i.ef, %bb.cg ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 23, !dbg !74577
  %i.ed = load i8, ptr %i.ec, align 1, !dbg !74577, !range !1828, !alias.scope !74372, !noalias !74371, !noundef !1761
  %i.ee = icmp eq i8 %i.ed, -40, !dbg !74578
  br i1 %i.ee, label %bb.cf, label %bb.cp, !dbg !74578, !prof !1829

bb.cf:                                            ; preds = %bb.ce
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.cp unwind label %bb.cn, !dbg !74579

bb.cg:                                            ; preds = %.noexc42
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ch:                                            ; preds = %.noexc42
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i), !dbg !74580
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 56, !dbg !74581 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 79, !dbg !74581
  %i.ei = load i8, ptr %i.eh, align 1, !dbg !74581, !range !1870, !alias.scope !74370, !noalias !74365, !noundef !1761 ; 2 uses
  %.not.i.i41 = icmp eq i8 %i.ei, -38, !dbg !74581
  br i1 %.not.i.i41, label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit, label %bb.ci, !dbg !74582

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !74583, !noalias !74368
  %i.ej = icmp eq i8 %i.ei, -40, !dbg !74584
  br i1 %i.ej, label %bb.cj, label %bb.ck, !dbg !74584

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eg)
          to label %bb.cm unwind label %bb.cl, !dbg !74585, !noalias !74371, !inline_history !74241

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.eg, i64 24, i1 false), !dbg !74586, !noalias !74371
  br label %bb.cm, !dbg !74587

bb.cl:                                            ; preds = %bb.cj
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs2Aa799EbAFJ_11polars_time(ptr noalias noundef align 8 dereferenceable(32) %i.e) #21
          to label %bb.ce unwind label %bb.cn, !dbg !74588, !noalias !74371, !inline_history !74241

bb.cm:                                            ; preds = %bb.ck, %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(23) %i.c, i64 23, i1 false), !dbg !74589, !noalias !74368
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 23, !dbg !74589
  %.sroa.46.0.copyload.i.i = load i8, ptr %.sroa.46.0..sroa_idx.i.i, align 1, !dbg !74589, !noalias !74368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !74590, !noalias !74368
  br label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit, !dbg !74591

bb.cn:                                            ; preds = %bb.cf, %bb.cl
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !74592, !noalias !74371, !inline_history !74241
  unreachable, !dbg !74592

bb.co:                                            ; preds = %bb.cc
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp, !dbg !74593

bb.cp:                                            ; preds = %bb.co, %bb.ce, %bb.cf
  %eh.lpad-body44 = phi { ptr, i32 } [ %i.em, %bb.co ], [ %.pn.i.i, %bb.ce ], [ %.pn.i.i, %bb.cf ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dw, i64 noundef 80, i64 noundef 8) #22, !dbg !74594, !noalias !74365
  br label %common.resume, !dbg !74595

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit: ; preds = %bb.cm, %bb.ch
  %.sroa.4.0.i.i = phi i8 [ %.sroa.46.0.copyload.i.i, %bb.cm ], [ -38, %bb.ch ], !dbg !74596
  %.sroa.071.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.071, i64 32, !dbg !74592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.071.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !74592, !noalias !74376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.071, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !74592, !noalias !74376
  %.sroa.071.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.071, i64 56, !dbg !74592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %.sroa.071.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(23) %.sroa.0.i.i, i64 23, i1 false), !dbg !74592, !noalias !74376
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i), !dbg !74588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !74588, !noalias !74368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !74588, !noalias !74368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(79) %i.dw, ptr noundef nonnull align 8 dereferenceable(79) %.sroa.071, i64 79, i1 false), !dbg !74597, !noalias !74377
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 79, !dbg !74597
  store i8 %.sroa.4.0.i.i, ptr %.sroa.672.0..sroa_idx, align 1, !dbg !74597, !noalias !74377
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.071), !dbg !74598
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !74599
  store ptr %i.dw, ptr %i.en, align 8, !dbg !74599
  store i8 37, ptr %0, align 8, !dbg !74599
  br label %bb.da, !dbg !74396

bb.cq:                                            ; preds = %bb.a
  store i8 38, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.cr:                                            ; preds = %bb.a
  store i8 39, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.cs:                                            ; preds = %bb.a
  store i8 40, ptr %0, align 8, !dbg !74391
  br label %bb.da, !dbg !74391

bb.ct:                                            ; preds = %bb.a
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !74600
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74378), !dbg !74601
  %i.ep = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes9UnionTypeE13new_uninit_inCs2Aa799EbAFJ_11polars_time(), !dbg !74602, !noalias !74378, !inline_history !74278 ; 6 uses
  %i.eq = load ptr, ptr %i.eo, align 8, !dbg !74603, !alias.scope !74378, !nonnull !1761, !noundef !1761 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74379), !dbg !74604
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74380), !dbg !74605, !noalias !74378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !74606, !noalias !74381
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eq)
          to label %.noexc47 unwind label %bb.cy, !dbg !74606, !inline_history !74293

.noexc47:                                         ; preds = %bb.ct
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24, !dbg !74607 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !dbg !74607, !range !1848, !alias.scope !74383, !noalias !74378, !noundef !1761
  %.not.i.i45 = icmp eq i64 %i.es, -9223372036854775808, !dbg !74607
  br i1 %.not.i.i45, label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes9UnionTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit, label %bb.cu, !dbg !74608

bb.cu:                                            ; preds = %.noexc47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !74609, !noalias !74381
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.er)
          to label %bb.cw unwind label %bb.cv, !dbg !74610, !noalias !74384, !inline_history !74297

bb.cv:                                            ; preds = %bb.cu
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECs2Aa799EbAFJ_11polars_time(ptr noalias noundef align 8 dereferenceable(24) %i.b) #21
          to label %bb.cz unwind label %bb.cx, !dbg !74611, !noalias !74384, !inline_history !74297

bb.cw:                                            ; preds = %bb.cu
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.a, align 8, !dbg !74612, !noalias !74381
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !74612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, i64 16, i1 false), !dbg !74612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !74613, !noalias !74381
  br label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes9UnionTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit, !dbg !74614

bb.cx:                                            ; preds = %bb.cv
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !74615, !noalias !74384, !inline_history !74297
  unreachable, !dbg !74615

bb.cy:                                            ; preds = %bb.ct
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz, !dbg !74616

bb.cz:                                            ; preds = %bb.cy, %bb.cv
  %eh.lpad-body49 = phi { ptr, i32 } [ %i.ev, %bb.cy ], [ %i.et, %bb.cv ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ep, i64 noundef 56, i64 noundef 8) #22, !dbg !74617, !noalias !74378
  br label %common.resume, !dbg !74618

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes9UnionTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit: ; preds = %bb.cw, %.noexc47
  %.sroa.0.0.i.i46 = phi i64 [ %.sroa.0.0.copyload1.i.i, %bb.cw ], [ -9223372036854775808, %.noexc47 ], !dbg !74619
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 48, !dbg !74620
  %i.ex = load i8, ptr %i.ew, align 8, !dbg !74620, !range !2011, !alias.scope !74383, !noalias !74378, !noundef !1761
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !74615, !noalias !74386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !74611, !noalias !74381
  %.sroa.4.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.ep, i64 24, !dbg !74621
  store i64 %.sroa.0.0.i.i46, ptr %.sroa.4.0..sroa_idx74, align 8, !dbg !74621, !noalias !74386
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 32, !dbg !74621
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.575.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !dbg !74621
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 48, !dbg !74621
  store i8 %i.ex, ptr %.sroa.676.0..sroa_idx, align 8, !dbg !74621, !noalias !74386
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !74622
  store ptr %i.ep, ptr %i.ey, align 8, !dbg !74622
  store i8 41, ptr %0, align 8, !dbg !74622
  br label %bb.da, !dbg !74396

bb.da:                                            ; preds = %bb.db, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes9UnionTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit, %bb.cs, %bb.cr, %bb.cq, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit, %bb.ca, %bb.bz, %bb.by, %bb.bx, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit12, %bb.bj, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit10, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit8, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void, !dbg !74623

bb.db:                                            ; preds = %bb.q, %bb.de
  %.sroa.4.0 = phi i8 [ %.sroa.46.0.copyload, %bb.de ], [ -38, %bb.q ], !dbg !74624
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !74625
  store i8 %i.w, ptr %i.ez, align 1, !dbg !74625
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !74625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.fa, ptr noundef nonnull align 8 dereferenceable(23) %i.t, i64 23, i1 false), !dbg !74625
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !74625
  store i8 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 1, !dbg !74625
  store i8 15, ptr %0, align 8, !dbg !74625
  br label %bb.da, !dbg !74396

bb.dc:                                            ; preds = %bb.q
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x) #20, !dbg !74626
  br label %bb.de, !dbg !74626

bb.dd:                                            ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !dbg !74627
  br label %bb.de, !dbg !74628

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 23, !dbg !74629
  %.sroa.46.0.copyload = load i8, ptr %.sroa.46.0..sroa_idx, align 1, !dbg !74629
  br label %bb.db, !dbg !74630
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !74631 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !dbg !74776, !noundef !1761 ; 5 uses
  %.not = icmp eq ptr %i.b, null, !dbg !74776
  br i1 %.not, label %bb.i, label %bb.b, !dbg !74777

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74743), !dbg !74778
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74744), !dbg !74778
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74745), !dbg !74779
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !74780 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !74780, !alias.scope !74749, !noundef !1761 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !74781
  %i.f = load i64, ptr %i.e, align 8, !dbg !74781, !alias.scope !74749, !noundef !1761
  %i.g = icmp eq i64 %i.d, %i.f, !dbg !74780
  br i1 %i.g, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit.i, label %bb.c, !dbg !74780

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.d, 1, !dbg !74782
  store i64 %i.h, ptr %i.c, align 8, !dbg !74782, !alias.scope !74749
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !74783
  %i.j = load ptr, ptr %i.i, align 8, !dbg !74783, !noalias !74756, !noundef !1761
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !74784
  %i.l = load i64, ptr %i.k, align 8, !dbg !74784, !noalias !74756, !noundef !1761
  %i.m = icmp ult i64 %i.d, %i.l, !dbg !74785
  tail call void @llvm.assume(i1 %i.m), !dbg !74786
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.d, !dbg !74787 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !74788
  %i.p = load ptr, ptr %i.o, align 8, !dbg !74788, !noalias !74756, !noundef !1761
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !74789
  %i.r = load i64, ptr %i.q, align 8, !dbg !74789, !noalias !74756, !noundef !1761
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74759), !dbg !74790
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74760), !dbg !74790
  %i.s = load i32, ptr %i.n, align 4, !dbg !74791, !alias.scope !74759, !noalias !74756, !noundef !1761 ; 2 uses
  %i.t = icmp ult i32 %i.s, 13, !dbg !74791
  br i1 %i.t, label %bb.e, label %bb.d, !dbg !74791

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !74792
  %i.v = load i32, ptr %i.u, align 4, !dbg !74792, !alias.scope !74759, !noalias !74756, !noundef !1761
  %i.w = zext i32 %i.v to i64, !dbg !74792        ; 2 uses
  %i.x = icmp samesign ugt i64 %i.r, %i.w, !dbg !74793
  tail call void @llvm.assume(i1 %i.x), !dbg !74794
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.w, !dbg !74795
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 12, !dbg !74796
  %i.aa = load i32, ptr %i.z, align 4, !dbg !74796, !alias.scope !74759, !noalias !74756, !noundef !1761
  %i.ab = zext i32 %i.aa to i64, !dbg !74796
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !74797
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !74797, !alias.scope !74765, !noalias !74756, !noundef !1761
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab, !dbg !74798
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCs2Aa799EbAFJ_11polars_time.exit.i.i, !dbg !74799

bb.e:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 4, !dbg !74800
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCs2Aa799EbAFJ_11polars_time.exit.i.i, !dbg !74799

_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCs2Aa799EbAFJ_11polars_time.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.af, %bb.e ], [ %i.ae, %bb.d ], !dbg !74801
  %.sroa.3.0.i.i.i.i.i = zext i32 %i.s to i64, !dbg !74801
  br label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit.i, !dbg !74802

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit.i: ; preds = %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCs2Aa799EbAFJ_11polars_time.exit.i.i, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCs2Aa799EbAFJ_11polars_time.exit.i.i ], [ undef, %bb.b ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCs2Aa799EbAFJ_11polars_time.exit.i.i ], [ null, %bb.b ], !dbg !74803
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !74804 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74767), !dbg !74805
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !74806 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !74806, !alias.scope !74768, !noundef !1761 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0, !dbg !74806
  br i1 %i.aj, label %bb.f, label %._crit_edge.i.i, !dbg !74806

._crit_edge.i.i:                                  ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !dbg !74807, !alias.scope !74768
  br label %bb.g, !dbg !74806

bb.f:                                             ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !74808 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !dbg !74808, !alias.scope !74768, !noundef !1761 ; 3 uses
  %i.am = icmp eq i64 %i.al, 0, !dbg !74808
  br i1 %i.am, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2Aa799EbAFJ_11polars_time.exit.i.i, !dbg !74808

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2Aa799EbAFJ_11polars_time.exit.i.i: ; preds = %bb.f
  %.sroa.0.0.i.i.i = tail call noundef range(i64 1, 65) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.al, i64 64), !dbg !74809 ; 2 uses
  %i.an = sub nuw i64 %i.al, %.sroa.0.0.i.i.i, !dbg !74810
  store i64 %i.an, ptr %i.ak, align 8, !dbg !74810, !alias.scope !74768
  %i.ao = load ptr, ptr %i.ag, align 8, !dbg !74811, !alias.scope !74768, !nonnull !1761, !noundef !1761 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !74811 ; 2 uses
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.ao, align 1, !dbg !74812, !noalias !74769
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !74813, !alias.scope !74768, !noundef !1761
  %i.ar = add i64 %i.aq, -8, !dbg !74814
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !74815
  store ptr %i.as, ptr %i.ag, align 8, !dbg !74816, !alias.scope !74768
  store i64 %i.ar, ptr %i.ap, align 8, !dbg !74816, !alias.scope !74768
  br label %bb.g, !dbg !74817

bb.g:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2Aa799EbAFJ_11polars_time.exit.i.i, %._crit_edge.i.i
  %i.at = phi i64 [ %i.ai, %._crit_edge.i.i ], [ %.sroa.0.0.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2Aa799EbAFJ_11polars_time.exit.i.i ], !dbg !74818
  %i.au = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %.sroa.02.0.copyload.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2Aa799EbAFJ_11polars_time.exit.i.i ], !dbg !74807 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !74807
  %i.aw = trunc i64 %i.au to i8, !dbg !74807
  %i.ax = lshr i64 %i.au, 1, !dbg !74819
  store i64 %i.ax, ptr %i.av, align 8, !dbg !74819, !alias.scope !74768
  %i.ay = add i64 %i.at, -1, !dbg !74818
  store i64 %i.ay, ptr %i.ah, align 8, !dbg !74818, !alias.scope !74768
  %i.az = and i8 %i.aw, 1, !dbg !74820
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i, !dbg !74821

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.0.i3.i = phi i8 [ %i.az, %bb.g ], [ 2, %bb.f ], !dbg !74822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !74823, !noalias !74770
  call void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipReECs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i8 noundef %.sroa.0.0.i3.i, ptr noalias noundef readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 %.sroa.3.0.i.i), !dbg !74824, !noalias !74770
  %i.ba = load i8, ptr %i.a, align 8, !dbg !74825, !range !2185, !noalias !74770, !noundef !1761 ; 2 uses
  %.not.i = icmp eq i8 %i.ba, 2, !dbg !74825
  br i1 %.not.i, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB4_15ZipValidityIterReINtNtNtBa_5array8iterator15ArrayValuesIterINtNtB1x_7binview22BinaryViewArrayGenericeEENtNtB6_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit, label %bb.h, !dbg !74826

bb.h:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i
  %i.bb = trunc nuw i8 %i.ba to i1, !dbg !74827
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !74827
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !74827, !noalias !74770, !noundef !1761
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !74828
  %i.bf = load ptr, ptr %i.be, align 8, !dbg !74828, !noalias !74770, !nonnull !1761
  %.sroa.01.0.i = select i1 %i.bb, ptr %i.bf, ptr null, !dbg !74828
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !74829
  store ptr %.sroa.01.0.i, ptr %i.bg, align 8, !dbg !74829, !alias.scope !74743
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !74829
  store i64 %i.bd, ptr %i.bh, align 8, !dbg !74829, !alias.scope !74743
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB4_15ZipValidityIterReINtNtNtBa_5array8iterator15ArrayValuesIterINtNtB1x_7binview22BinaryViewArrayGenericeEENtNtB6_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit, !dbg !74830

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB4_15ZipValidityIterReINtNtNtBa_5array8iterator15ArrayValuesIterINtNtB1x_7binview22BinaryViewArrayGenericeEENtNtB6_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i, %bb.h
  %storemerge.i = phi i64 [ 1, %bb.h ], [ 0, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i ], !dbg !74831
  store i64 %storemerge.i, ptr %0, align 8, !dbg !74831, !alias.scope !74743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !74832, !noalias !74770
  br label %bb.l, !dbg !74778

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74771), !dbg !74833
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !74834 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !dbg !74834, !alias.scope !74771, !noundef !1761 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !74835
  %i.bl = load i64, ptr %i.bk, align 8, !dbg !74835, !alias.scope !74771, !noundef !1761
  %i.bm = icmp eq i64 %i.bj, %i.bl, !dbg !74834
  br i1 %i.bm, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit.thread, label %bb.j, !dbg !74834

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !74836
  %i.bo = add nuw i64 %i.bj, 1, !dbg !74837
  store i64 %i.bo, ptr %i.bi, align 8, !dbg !74837, !alias.scope !74771
  %i.bp = load ptr, ptr %i.bn, align 8, !dbg !74838, !alias.scope !74771, !nonnull !1761, !align !1805, !noundef !1761 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40, !dbg !74839
  %i.br = load ptr, ptr %i.bq, align 8, !dbg !74839, !noalias !74771, !noundef !1761
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 48, !dbg !74840
  %i.bt = load i64, ptr %i.bs, align 8, !dbg !74840, !noalias !74771, !noundef !1761
  %i.bu = icmp ult i64 %i.bj, %i.bt, !dbg !74841
  tail call void @llvm.assume(i1 %i.bu), !dbg !74842
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bj, !dbg !74843 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 64, !dbg !74844
  %i.bx = load ptr, ptr %i.bw, align 8, !dbg !74844, !noalias !74771, !noundef !1761
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 72, !dbg !74845
  %i.bz = load i64, ptr %i.by, align 8, !dbg !74845, !noalias !74771, !noundef !1761
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74772), !dbg !74846
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74773), !dbg !74846
  %i.ca = load i32, ptr %i.bv, align 4, !dbg !74847, !alias.scope !74772, !noalias !74771, !noundef !1761 ; 2 uses
  %i.cb = icmp ult i32 %i.ca, 13, !dbg !74847
  br i1 %i.cb, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit.thread7, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit, !dbg !74847

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit.thread7: ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 4, !dbg !74848
  br label %bb.k, !dbg !74849

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs2Aa799EbAFJ_11polars_time.exit: ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 8, !dbg !74850
  %i.ce = load i32, ptr %i.cd, align 4, !dbg !74850, !alias.scope !74772, !noalias !74771, !noundef !1761
  %i.cf = zext i32 %i.ce to i64, !dbg !74850      ; 2 uses
  %i.cg = icmp samesign ugt i64 %i.bz, %i.cf, !dbg !74851
end_hunk_3
begin_hunk_4_@_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time:bb.a

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !79145, !noalias !79137
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23, !dbg !79146, !noalias !79137
  unreachable, !dbg !79146

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Aa799EbAFJ_11polars_time.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !79147, !noalias !79137, !nonnull !1761, !noundef !1761 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i, !dbg !79148
  tail call void @llvm.assume(i1 %i.m), !dbg !79149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !79150, !noalias !79137
  store i64 %i.i, ptr %0, align 8, !dbg !79151, !alias.scope !79135
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !79151
  store ptr %i.l, ptr %i.n, align 8, !dbg !79151, !alias.scope !79135
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !79151 ; 2 uses
  store i64 0, ptr %i.o, align 8, !dbg !79151, !alias.scope !79135
  %.not.i = icmp eq i64 %i.e, 0, !dbg !79152
  br i1 %.not.i, label %_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2Aa799EbAFJ_11polars_time.exit, label %bb.c, !dbg !79152

bb.c:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Aa799EbAFJ_11polars_time.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.d, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !dbg !79153, !noalias !79135
  store i64 %i.e, ptr %i.o, align 8, !dbg !79154, !alias.scope !79135
  br label %_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2Aa799EbAFJ_11polars_time.exit, !dbg !79155

_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2Aa799EbAFJ_11polars_time.exit: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Aa799EbAFJ_11polars_time.exit.i, %bb.c
  ret void, !dbg !79156
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !79157 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !79201
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !79202
  %i.d = load ptr, ptr %i.c, align 8, !dbg !79202, !nonnull !1761, !noundef !1761
  %i.e = load i64, ptr %i.b, align 8, !dbg !79203, !noundef !1761 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79198), !dbg !79204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !79205, !noalias !79200
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2Aa799EbAFJ_11polars_time(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693952) %i.e, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !dbg !79205, !noalias !79200
  %i.f = load i64, ptr %i.a, align 8, !dbg !79205, !range !1885, !noalias !79200, !noundef !1761
  %i.g = trunc nuw i64 %i.f to i1, !dbg !79206
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !79207
  %i.i = load i64, ptr %i.h, align 8, !dbg !79207, !range !1848, !noalias !79200, !noundef !1761 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !79207 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Aa799EbAFJ_11polars_time.exit.i, !dbg !79206, !prof !1829

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !79208, !noalias !79200
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23, !dbg !79209, !noalias !79200
  unreachable, !dbg !79209

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Aa799EbAFJ_11polars_time.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !79210, !noalias !79200, !nonnull !1761, !noundef !1761 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i, !dbg !79211
  tail call void @llvm.assume(i1 %i.m), !dbg !79212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !79213, !noalias !79200
  store i64 %i.i, ptr %0, align 8, !dbg !79214, !alias.scope !79198
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !79214
  store ptr %i.l, ptr %i.n, align 8, !dbg !79214, !alias.scope !79198
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !79214 ; 2 uses
  store i64 0, ptr %i.o, align 8, !dbg !79214, !alias.scope !79198
  %.not.i = icmp eq i64 %i.e, 0, !dbg !79215
  br i1 %.not.i, label %_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2Aa799EbAFJ_11polars_time.exit, label %bb.c, !dbg !79215

bb.c:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Aa799EbAFJ_11polars_time.exit.i
  %i.p = shl nuw nsw i64 %i.e, 2, !dbg !79216
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull readonly align 4 %i.d, i64 %i.p, i1 false), !dbg !79216, !noalias !79198
  store i64 %i.e, ptr %i.o, align 8, !dbg !79217, !alias.scope !79198
  br label %_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2Aa799EbAFJ_11polars_time.exit, !dbg !79218

_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2Aa799EbAFJ_11polars_time.exit: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2Aa799EbAFJ_11polars_time.exit.i, %bb.c
  ret void, !dbg !79219
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !79220 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 4 uses
  %i.b = alloca [48 x i8], align 16               ; 4 uses
  %i.c = alloca [48 x i8], align 16               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = load i8, ptr %1, align 16, !dbg !79365, !range !1873, !noundef !1761
  switch i8 %i.e, label %default.unreachable29 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.z
    i8 24, label %bb.ab
    i8 25, label %bb.ac
    i8 26, label %bb.ad
    i8 27, label %bb.ae
    i8 28, label %bb.af
    i8 29, label %bb.ag
    i8 30, label %bb.ai
  ], !dbg !79365

default.unreachable29:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 16, !dbg !79365
  br label %bb.aj, !dbg !79365

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 16, !dbg !79365
  br label %bb.aj, !dbg !79365

bb.d:                                             ; preds = %bb.a
  store i8 2, ptr %0, align 16, !dbg !79365
  br label %bb.aj, !dbg !79365

bb.e:                                             ; preds = %bb.a
  store i8 3, ptr %0, align 16, !dbg !79365
  br label %bb.aj, !dbg !79365

bb.f:                                             ; preds = %bb.a
  store i8 4, ptr %0, align 16, !dbg !79365
  br label %bb.aj, !dbg !79365

bb.g:                                             ; preds = %bb.a
  store i8 5, ptr %0, align 16, !dbg !79365
  br label %bb.aj, !dbg !79365

bb.h:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 16, !dbg !79365
  br label %bb.aj, !dbg !79365

bb.i:                                             ; preds = %bb.a
  store i8 7, ptr %0, align 16, !dbg !79365
  br label %bb.aj, !dbg !79365

bb.j:                                             ; preds = %bb.a
  store i8 8, ptr %0, align 16, !dbg !79365
  br label %bb.aj, !dbg !79365

bb.k:                                             ; preds = %bb.a
  store i8 9, ptr %0, align 16, !dbg !79365
  br label %bb.aj, !dbg !79365

bb.l:                                             ; preds = %bb.a
  store i8 10, ptr %0, align 16, !dbg !79365
  br label %bb.aj, !dbg !79365

bb.m:                                             ; preds = %bb.a
  store i8 11, ptr %0, align 16, !dbg !79365
  br label %bb.aj, !dbg !79365

bb.n:                                             ; preds = %bb.a
  store i8 12, ptr %0, align 16, !dbg !79365
  br label %bb.aj, !dbg !79365

bb.o:                                             ; preds = %bb.a
  store i8 13, ptr %0, align 16, !dbg !79365
  br label %bb.aj, !dbg !79365

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !79366
  br label %bb.aj, !dbg !79367

bb.q:                                             ; preds = %bb.a
  store i8 15, ptr %0, align 16, !dbg !79365
  br label %bb.aj, !dbg !79365

bb.r:                                             ; preds = %bb.a
  store i8 16, ptr %0, align 16, !dbg !79365
  br label %bb.aj, !dbg !79365

bb.s:                                             ; preds = %bb.a
  store i8 17, ptr %0, align 16, !dbg !79365
  br label %bb.aj, !dbg !79365

bb.t:                                             ; preds = %bb.a
  store i8 18, ptr %0, align 16, !dbg !79365
  br label %bb.aj, !dbg !79365

bb.u:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !79368
  %i.g = load i8, ptr %i.f, align 1, !dbg !79368, !range !2185, !noundef !1761
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !79369 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 31, !dbg !79369
  %i.j = load i8, ptr %i.i, align 1, !dbg !79369, !range !1870, !noundef !1761
  switch i8 %i.j, label %bb.am [
    i8 -38, label %bb.ak
    i8 -40, label %bb.al
  ], !dbg !79370

bb.v:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !79371
  br label %bb.aj, !dbg !79367

bb.w:                                             ; preds = %bb.a
  store i8 21, ptr %0, align 16, !dbg !79365
  br label %bb.aj, !dbg !79365

bb.x:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !79372
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79314), !dbg !79373
  %i.l = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCs2Aa799EbAFJ_11polars_time(), !dbg !79374, !noalias !79314, !inline_history !79229 ; 3 uses
  %i.m = load ptr, ptr %i.k, align 16, !dbg !79375, !alias.scope !79314, !nonnull !1761, !noundef !1761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !79376, !noalias !79315
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.m) #24
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit unwind label %bb.y, !dbg !79377, !inline_history !79239

common.resume.sink.split:                         ; preds = %bb.y, %bb.aa
  %.sink = phi ptr [ %i.t, %bb.aa ], [ %i.l, %bb.y ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.v, %bb.aa ], [ %i.n, %bb.y ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 48, i64 noundef 16) #22, !dbg !79378, !noalias !1761
  br label %common.resume, !dbg !79316

common.resume:                                    ; preds = %common.resume.sink.split, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op, !dbg !79316

bb.y:                                             ; preds = %bb.x
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split, !dbg !79379

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit: ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.l, ptr noundef nonnull align 16 dereferenceable(48) %i.c, i64 48, i1 false), !dbg !79380, !noalias !79315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !79381, !noalias !79315
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !79382
  %i.p = load i64, ptr %i.o, align 8, !dbg !79382, !noundef !1761
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !79383
  store ptr %i.l, ptr %i.q, align 16, !dbg !79383
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !79383
  store i64 %i.p, ptr %i.r, align 8, !dbg !79383
  store i8 22, ptr %0, align 16, !dbg !79383
  br label %bb.aj, !dbg !79367

bb.z:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !79384
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79323), !dbg !79385
  %i.t = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCs2Aa799EbAFJ_11polars_time(), !dbg !79386, !noalias !79323, !inline_history !79229 ; 3 uses
  %i.u = load ptr, ptr %i.s, align 8, !dbg !79387, !alias.scope !79323, !nonnull !1761, !noundef !1761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !79388, !noalias !79324
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.u) #24
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit17 unwind label %bb.aa, !dbg !79389, !inline_history !79239

bb.aa:                                            ; preds = %bb.z
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split, !dbg !79390

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit17: ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull align 16 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !79391, !noalias !79324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !79392, !noalias !79324
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !79393
  store ptr %i.t, ptr %i.w, align 8, !dbg !79393
  store i8 23, ptr %0, align 16, !dbg !79393
  br label %bb.aj, !dbg !79367

bb.ab:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !79394
  br label %bb.aj, !dbg !79367

bb.ac:                                            ; preds = %bb.a
  store i8 25, ptr %0, align 16, !dbg !79365
  br label %bb.aj, !dbg !79365

bb.ad:                                            ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !79395
  %i.y = load ptr, ptr %i.x, align 8, !dbg !79395, !nonnull !1761, !noundef !1761 ; 2 uses
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !dbg !79396
  %i.aa = icmp slt i64 %i.z, 0, !dbg !79397
  br i1 %i.aa, label %bb.ap, label %bb.ao, !dbg !79397

bb.ae:                                            ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !79398
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !79398, !nonnull !1761, !noundef !1761 ; 2 uses
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !dbg !79399
  %i.ae = icmp slt i64 %i.ad, 0, !dbg !79400
  br i1 %i.ae, label %bb.at, label %bb.as, !dbg !79400

bb.af:                                            ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !79401
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !79402
  %i.ah = load ptr, ptr %i.ag, align 16, !dbg !79402, !alias.scope !79338, !nonnull !1761, !noundef !1761
  %i.ai = load i64, ptr %i.af, align 8, !dbg !79403, !alias.scope !79338, !noundef !1761
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !79404
  tail call fastcc void @_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2Aa799EbAFJ_11polars_time(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.ah, i64 noundef %i.ai) #24, !dbg !79405
  store i8 28, ptr %0, align 16, !dbg !79404
  br label %bb.aj, !dbg !79367

bb.ag:                                            ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !79406
  %i.al = tail call { ptr, ptr } @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extensionNtB2_21ExtensionTypeInstanceNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ak), !dbg !79407 ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.al, 0, !dbg !79407 ; 3 uses
  %i.an = extractvalue { ptr, ptr } %i.al, 1, !dbg !79407 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79339), !dbg !79408
  %i.ao = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCs2Aa799EbAFJ_11polars_time()
          to label %.noexc unwind label %bb.aw, !dbg !79409, !inline_history !79229 ; 3 uses

.noexc:                                           ; preds = %bb.ag
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !79410
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !79411, !alias.scope !79339, !nonnull !1761, !noundef !1761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !79412, !noalias !79340
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.aq) #24
          to label %bb.ax unwind label %bb.ah, !dbg !79413, !inline_history !79239

bb.ah:                                            ; preds = %.noexc
  %i.ar = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef 48, i64 noundef 16) #22, !dbg !79414, !noalias !79339
  br label %.body, !dbg !79415

bb.ai:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !79416
  br label %bb.aj, !dbg !79367

bb.aj:                                            ; preds = %bb.ax, %bb.au, %bb.aq, %bb.ak, %bb.ai, %bb.af, %bb.ac, %bb.ab, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit17, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2Aa799EbAFJ_11polars_time.exit, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void, !dbg !79417

bb.ak:                                            ; preds = %bb.u, %bb.an
  %.sroa.4.0 = phi i8 [ %.sroa.48.0.copyload, %bb.an ], [ -38, %bb.u ], !dbg !79418
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !79419
  store i8 %i.g, ptr %i.as, align 1, !dbg !79419
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !79419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.at, ptr noundef nonnull align 8 dereferenceable(23) %i.d, i64 23, i1 false), !dbg !79419
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !79419
  store i8 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 1, !dbg !79419
  store i8 19, ptr %0, align 16, !dbg !79419
  br label %bb.aj, !dbg !79367

bb.al:                                            ; preds = %bb.u
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h) #20, !dbg !79420
  br label %bb.an, !dbg !79420

bb.am:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !79421
  br label %bb.an, !dbg !79422

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 23, !dbg !79423
  %.sroa.48.0.copyload = load i8, ptr %.sroa.48.0..sroa_idx, align 1, !dbg !79423
  br label %bb.ak, !dbg !79424

bb.ao:                                            ; preds = %bb.ad
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !79425
  %i.av = load ptr, ptr %i.au, align 16, !dbg !79425, !nonnull !1761, !noundef !1761 ; 2 uses
  %i.aw = atomicrmw add ptr %i.av, i64 1 monotonic, align 8, !dbg !79426
  %i.ax = icmp slt i64 %i.aw, 0, !dbg !79427
  br i1 %i.ax, label %bb.ar, label %bb.aq, !dbg !79427

bb.ap:                                            ; preds = %bb.ad
  tail call void @llvm.trap(), !dbg !79428
  unreachable, !dbg !79428

bb.aq:                                            ; preds = %bb.ao
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !79429
  store ptr %i.y, ptr %i.ay, align 8, !dbg !79429
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !79429
  store ptr %i.av, ptr %i.az, align 16, !dbg !79429
  store i8 26, ptr %0, align 16, !dbg !79429
  br label %bb.aj, !dbg !79367

bb.ar:                                            ; preds = %bb.ao
  tail call void @llvm.trap(), !dbg !79430
  unreachable, !dbg !79430

bb.as:                                            ; preds = %bb.ae
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !79431
  %i.bb = load ptr, ptr %i.ba, align 16, !dbg !79431, !nonnull !1761, !noundef !1761 ; 2 uses
  %i.bc = atomicrmw add ptr %i.bb, i64 1 monotonic, align 8, !dbg !79432
  %i.bd = icmp slt i64 %i.bc, 0, !dbg !79433
  br i1 %i.bd, label %bb.av, label %bb.au, !dbg !79433

bb.at:                                            ; preds = %bb.ae
  tail call void @llvm.trap(), !dbg !79434
  unreachable, !dbg !79434

bb.au:                                            ; preds = %bb.as
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !79435
  store ptr %i.ac, ptr %i.be, align 8, !dbg !79435
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !79435
  store ptr %i.bb, ptr %i.bf, align 16, !dbg !79435
  store i8 27, ptr %0, align 16, !dbg !79435
  br label %bb.aj, !dbg !79367

bb.av:                                            ; preds = %bb.as
  tail call void @llvm.trap(), !dbg !79436
  unreachable, !dbg !79436

bb.aw:                                            ; preds = %bb.ag
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !79437

.body:                                            ; preds = %bb.ah, %bb.aw
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.aw ], [ %i.ar, %bb.ah ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension21ExtensionTypeInstanceECs2Aa799EbAFJ_11polars_time(ptr %i.am, ptr nonnull %i.an) #21
          to label %common.resume unwind label %bb.ay, !dbg !79437

bb.ax:                                            ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ao, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !79438, !noalias !79340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !79439, !noalias !79340
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !79440
  store ptr %i.am, ptr %i.bh, align 8, !dbg !79440
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !79440
  store ptr %i.an, ptr %i.bi, align 16, !dbg !79440
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !79440
  store ptr %i.ao, ptr %i.bj, align 8, !dbg !79440
  store i8 29, ptr %0, align 16, !dbg !79440
  br label %bb.aj, !dbg !79367

bb.ay:                                            ; preds = %.body
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #19, !dbg !79365
  unreachable, !dbg !79365
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsl_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !79441 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = load i8, ptr %1, align 16, !dbg !79626, !range !1874, !noundef !1761
  switch i8 %i.d, label %default.unreachable9 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.y
    i8 24, label %bb.z
    i8 25, label %bb.aa
    i8 26, label %bb.ab
    i8 27, label %bb.ac
    i8 28, label %bb.ad
    i8 29, label %bb.ae
    i8 30, label %bb.af
    i8 31, label %bb.ak
    i8 32, label %bb.al
    i8 33, label %bb.am
    i8 34, label %bb.ap
  ], !dbg !79626

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 16, !dbg !79626
  br label %bb.aq, !dbg !79626

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !79627
  br label %bb.aq, !dbg !79628

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !79629
  br label %bb.aq, !dbg !79628

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !79630
  br label %bb.aq, !dbg !79628

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !79631
  br label %bb.aq, !dbg !79628

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !79632
  br label %bb.aq, !dbg !79628

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !79633
  br label %bb.aq, !dbg !79628

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !79634
  br label %bb.aq, !dbg !79628

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !79635
  br label %bb.aq, !dbg !79628

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !79636
  br label %bb.aq, !dbg !79628

bb.l:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !79637
  br label %bb.aq, !dbg !79628

bb.m:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !79638
  br label %bb.aq, !dbg !79628

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !79639
  br label %bb.aq, !dbg !79628

end_hunk_4
