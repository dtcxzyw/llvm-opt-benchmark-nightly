Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_compute-9613269d388cc6ca.polars_compute.fc5e0f69f37249e8-cgu.13?download=true
inline.NumInlined: 2209
inline.NumDeleted: 1332
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs_NtNtCslFlrwjHoTci_14polars_compute6unique8distinctNtB4_13BooleanUniqueNtB4_15AmortizedUnique12n_unique_idx:bb.a
bb.h:                                             ; preds = %bb.f
  %i.q = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.n), !dbg !39023
  br label %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !39024

_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.g, %bb.h
  %.sroa.0.1.i = phi i64 [ %.val.i, %bb.g ], [ %i.q, %bb.h ], !dbg !39025
  %.not = icmp eq i64 %.sroa.0.1.i, 0, !dbg !39026
  br i1 %.not, label %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %.lr.ph, !dbg !39027

_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.f, %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !39028 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 48, !dbg !39029
  %i.t = load i64, ptr %i.s, align 8, !dbg !39029, !noundef !916
  %i.u = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.r), !dbg !39030
  %i.v = icmp eq i64 %i.t, %i.u, !dbg !39031
  br i1 %i.v, label %.loopexit, label %bb.i, !dbg !39031

.lr.ph:                                           ; preds = %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %.idx = shl nuw nsw i64 %4, 2, !dbg !39032      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %.idx, !dbg !39032
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !noundef !916 ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  br i1 %.not.i.i13, label %.lr.ph.split.us.split, label %.lr.ph.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph
  %i.ab = load ptr, ptr %i.z, align 8, !nonnull !916, !noundef !916 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !916 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !noundef !916 ; 3 uses
  %i.ag = load i64, ptr %i.aa, align 8, !noundef !916 ; 3 uses
  %i.ah = add nsw i64 %.idx, -4, !dbg !39005      ; 3 uses
  %i.ai = lshr exact i64 %i.ah, 2, !dbg !39005
  %i.aj = add nuw nsw i64 %i.ai, 1, !dbg !39005   ; 2 uses
  %i.ak = icmp eq i64 %i.ah, 0, !dbg !39005
  br i1 %i.ak, label %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit.thread.us.epil.preheader, label %.lr.ph.split.us.split.new, !dbg !39005

.lr.ph.split.us.split.new:                        ; preds = %.lr.ph.split.us.split
  %unroll_iter = and i64 %i.aj, 9223372036854775806, !dbg !39005
  br label %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit.thread.us, !dbg !39005

_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit.thread.us: ; preds = %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit.thread.us, %.lr.ph.split.us.split.new
  %.sroa.02.018.us = phi i8 [ 0, %.lr.ph.split.us.split.new ], [ %i.bk, %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit.thread.us ]
  %.sroa.05.017.us = phi ptr [ %3, %.lr.ph.split.us.split.new ], [ %i.ay, %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit.thread.us ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.split.new ], [ %niter.next.1, %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit.thread.us ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.05.017.us, i64 4, !dbg !39033
  %i.am = load i32, ptr %.sroa.05.017.us, align 4, !dbg !39034, !noundef !916
  %i.an = zext i32 %i.am to i64, !dbg !39035
  %i.ao = add i64 %i.ag, %i.an, !dbg !39036       ; 2 uses
  %i.ap = lshr i64 %i.ao, 3, !dbg !39037          ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ad, !dbg !39038
  call void @llvm.assume(i1 %i.aq), !dbg !39039
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ap, !dbg !39040
  %i.as = load i8, ptr %i.ar, align 1, !dbg !39041, !noundef !916
  %i.at = trunc i64 %i.ao to i8, !dbg !39042
  %i.au = and i8 %i.at, 7, !dbg !39042
  %i.av = shl nuw i8 1, %i.au, !dbg !39043
  %i.aw = and i8 %i.av, %i.as, !dbg !39043
  %.not12.us = icmp eq i8 %i.aw, 0, !dbg !39043
  %..us = select i1 %.not12.us, i8 2, i8 4, !dbg !39044
  %i.ax = or i8 %..us, %.sroa.02.018.us, !dbg !39045
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.05.017.us, i64 8, !dbg !39033 ; 2 uses
  %i.az = load i32, ptr %i.al, align 4, !dbg !39034, !noundef !916
  %i.ba = zext i32 %i.az to i64, !dbg !39035
  %i.bb = add i64 %i.ag, %i.ba, !dbg !39036       ; 2 uses
  %i.bc = lshr i64 %i.bb, 3, !dbg !39037          ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.ad, !dbg !39038
  call void @llvm.assume(i1 %i.bd), !dbg !39039
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bc, !dbg !39040
  %i.bf = load i8, ptr %i.be, align 1, !dbg !39041, !noundef !916
  %i.bg = trunc i64 %i.bb to i8, !dbg !39042
  %i.bh = and i8 %i.bg, 7, !dbg !39042
  %i.bi = shl nuw i8 1, %i.bh, !dbg !39043
  %i.bj = and i8 %i.bi, %i.bf, !dbg !39043
  %.not12.us.1 = icmp eq i8 %i.bj, 0, !dbg !39043
  %..us.1 = select i1 %.not12.us.1, i8 2, i8 4, !dbg !39044
  %i.bk = or i8 %..us.1, %i.ax, !dbg !39045       ; 3 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !39005  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !39005
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit.thread.us, !dbg !39005

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !916
  %i.bp = load ptr, ptr %i.bm, align 8, !noundef !916
  %i.bq = load i64, ptr %i.bl, align 8, !noundef !916
  br label %bb.l, !dbg !39005

bb.i:                                             ; preds = %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.br = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.r), !dbg !39046
  %i.bs = icmp eq i64 %i.br, 0, !dbg !39047
  br i1 %i.bs, label %.loopexit, label %.lr.ph30, !dbg !39047

.lr.ph30:                                         ; preds = %bb.i
  %i.bt = load i32, ptr %3, align 4, !dbg !39048, !noundef !916
  %i.bu = zext i32 %i.bt to i64, !dbg !39048
  %i.bv = load ptr, ptr %i.r, align 8, !dbg !39049, !nonnull !916, !noundef !916 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40, !dbg !39050
  %i.bx = load i64, ptr %i.bw, align 8, !dbg !39050, !noundef !916 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 32, !dbg !39051
  %i.bz = load ptr, ptr %i.by, align 8, !dbg !39051, !noundef !916 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 40, !dbg !39052
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !39052, !noundef !916 ; 2 uses
  %i.cc = add i64 %i.cb, %i.bu, !dbg !39052       ; 2 uses
  %i.cd = lshr i64 %i.cc, 3, !dbg !39053          ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.bx, !dbg !39054
  call void @llvm.assume(i1 %i.ce), !dbg !39055
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cd, !dbg !39056
  %i.cg = load i8, ptr %i.cf, align 1, !dbg !39057, !noundef !916
  %i.ch = trunc i64 %i.cc to i8, !dbg !39058
  %i.ci = and i8 %i.ch, 7, !dbg !39058
  %i.cj = lshr i8 %i.cg, %i.ci, !dbg !39058
  %.idx33 = shl nuw nsw i64 %4, 2, !dbg !39059
  %i.ck = getelementptr i8, ptr %3, i64 %.idx33, !dbg !39059
  %.sroa.09.027 = getelementptr inbounds nuw i8, ptr %3, i64 4, !dbg !39060
  br label %bb.k, !dbg !39061

bb.j:                                             ; preds = %bb.k
  %.sroa.09.0 = getelementptr inbounds nuw i8, ptr %.sroa.09.028, i64 4, !dbg !39060 ; 2 uses
  %i.cl = icmp eq ptr %.sroa.09.0, %i.ck, !dbg !39062
  br i1 %i.cl, label %.loopexit, label %bb.k, !dbg !39061

bb.k:                                             ; preds = %.lr.ph30, %bb.j
  %.sroa.09.028 = phi ptr [ %.sroa.09.027, %.lr.ph30 ], [ %.sroa.09.0, %bb.j ] ; 2 uses
  %i.cm = load i32, ptr %.sroa.09.028, align 4, !dbg !39063, !noundef !916
  %i.cn = zext i32 %i.cm to i64, !dbg !39064
  %i.co = add i64 %i.cb, %i.cn, !dbg !39065       ; 2 uses
  %i.cp = lshr i64 %i.co, 3, !dbg !39066          ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.bx, !dbg !39067
  call void @llvm.assume(i1 %i.cq), !dbg !39068
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cp, !dbg !39069
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !39070, !noundef !916
  %i.ct = trunc i64 %i.co to i8, !dbg !39071
  %i.cu = and i8 %i.ct, 7, !dbg !39071
  %i.cv = lshr i8 %i.cs, %i.cu, !dbg !39071
  %i.cw = xor i8 %i.cv, %i.cj, !dbg !39072
  %i.cx = trunc i8 %i.cw to i1, !dbg !39072
  br i1 %i.cx, label %.loopexit, label %bb.j, !dbg !39072

.loopexit:                                        ; preds = %bb.j, %bb.k, %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, %bb.i, %._crit_edge, %bb.c
  %.sroa.0.0 = phi i32 [ %i.l, %bb.c ], [ %i.ea, %._crit_edge ], [ 1, %bb.i ], [ 1, %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ 2, %bb.k ], [ 1, %bb.j ], !dbg !39073
  ret i32 %.sroa.0.0, !dbg !39074

bb.l:                                             ; preds = %.lr.ph.split, %bb.m
  %.sroa.02.018 = phi i8 [ 0, %.lr.ph.split ], [ %i.eq, %bb.m ] ; 2 uses
  %.sroa.05.017 = phi ptr [ %3, %.lr.ph.split ], [ %i.cy, %bb.m ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.05.017, i64 4, !dbg !39033 ; 2 uses
  %i.cz = icmp eq i8 %.sroa.02.018, 7, !dbg !39075
  br i1 %i.cz, label %._crit_edge, label %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit, !dbg !39075

_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.l
  %i.da = load i32, ptr %.sroa.05.017, align 4, !dbg !39034, !noundef !916
  %i.db = zext i32 %i.da to i64, !dbg !39035      ; 2 uses
  %i.dc = add i64 %i.bq, %i.db, !dbg !39076       ; 2 uses
  %i.dd = lshr i64 %i.dc, 3, !dbg !39077          ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.bo, !dbg !39078
  call void @llvm.assume(i1 %i.de), !dbg !39079
  %i.df = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.dd, !dbg !39080
  %i.dg = load i8, ptr %i.df, align 1, !dbg !39081, !noundef !916
  %i.dh = trunc i64 %i.dc to i8, !dbg !39082
  %i.di = and i8 %i.dh, 7, !dbg !39082
  %i.dj = xor i8 %i.dg, -1, !dbg !39083
  %i.dk = lshr i8 %i.dj, %i.di, !dbg !39083
  %i.dl = trunc i8 %i.dk to i1, !dbg !39084
  br i1 %i.dl, label %bb.m, label %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit.thread, !dbg !39085

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit.thread.us
  %i.dm = and i64 %i.ah, 4, !dbg !39005
  %lcmp.mod.not.not = icmp eq i64 %i.dm, 0, !dbg !39005
  br i1 %lcmp.mod.not.not, label %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit.thread.us.epil.preheader, label %._crit_edge, !dbg !39005

_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit.thread.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.split
  %.sroa.02.018.us.epil.init = phi i8 [ 0, %.lr.ph.split.us.split ], [ %i.bk, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.05.017.us.epil.init = phi ptr [ %3, %.lr.ph.split.us.split ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod36 = trunc i64 %i.aj to i1, !dbg !39005
  call void @llvm.assume(i1 %lcmp.mod36), !dbg !39005
  %i.dn = load i32, ptr %.sroa.05.017.us.epil.init, align 4, !dbg !39034, !noundef !916
  %i.do = zext i32 %i.dn to i64, !dbg !39035
  %i.dp = add i64 %i.ag, %i.do, !dbg !39036       ; 2 uses
  %i.dq = lshr i64 %i.dp, 3, !dbg !39037          ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.ad, !dbg !39038
  call void @llvm.assume(i1 %i.dr), !dbg !39039
  %i.ds = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.dq, !dbg !39040
  %i.dt = load i8, ptr %i.ds, align 1, !dbg !39041, !noundef !916
  %i.du = trunc i64 %i.dp to i8, !dbg !39042
  %i.dv = and i8 %i.du, 7, !dbg !39042
  %i.dw = shl nuw i8 1, %i.dv, !dbg !39043
  %i.dx = and i8 %i.dw, %i.dt, !dbg !39043
  %.not12.us.epil = icmp eq i8 %i.dx, 0, !dbg !39043
  %..us.epil = select i1 %.not12.us.epil, i8 2, i8 4, !dbg !39044
  %i.dy = or i8 %..us.epil, %.sroa.02.018.us.epil.init, !dbg !39045
  br label %._crit_edge, !dbg !39086

._crit_edge:                                      ; preds = %bb.m, %bb.l, %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit.thread.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa
  %.sroa.02.0.lcssa = phi i8 [ %i.dy, %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit.thread.us.epil.preheader ], [ %i.bk, %._crit_edge.loopexit.unr-lcssa ], [ %i.eq, %bb.m ], [ 7, %bb.l ], !dbg !39087
  %i.dz = call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.sroa.02.0.lcssa), !dbg !39086
  %i.ea = zext nneg i8 %i.dz to i32, !dbg !39086
  br label %.loopexit, !dbg !39088

_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit
  %i.eb = load ptr, ptr %i.z, align 8, !dbg !39089, !nonnull !916, !noundef !916 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 40, !dbg !39090
  %i.ed = load i64, ptr %i.ec, align 8, !dbg !39090, !noundef !916
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 32, !dbg !39091
  %i.ef = load ptr, ptr %i.ee, align 8, !dbg !39091, !noundef !916
  %i.eg = load i64, ptr %i.aa, align 8, !dbg !39036, !noundef !916
  %i.eh = add i64 %i.eg, %i.db, !dbg !39036       ; 2 uses
  %i.ei = lshr i64 %i.eh, 3, !dbg !39037          ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.ed, !dbg !39038
  call void @llvm.assume(i1 %i.ej), !dbg !39039
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ei, !dbg !39040
  %i.el = load i8, ptr %i.ek, align 1, !dbg !39041, !noundef !916
  %i.em = trunc i64 %i.eh to i8, !dbg !39042
  %i.en = and i8 %i.em, 7, !dbg !39042
  %i.eo = shl nuw i8 1, %i.en, !dbg !39043
  %i.ep = and i8 %i.eo, %i.el, !dbg !39043
  %.not12 = icmp eq i8 %i.ep, 0, !dbg !39043
  %. = select i1 %.not12, i8 2, i8 4, !dbg !39044
  br label %bb.m, !dbg !39044

bb.m:                                             ; preds = %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit, %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit.thread
  %.sroa.07.0 = phi i8 [ %., %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit.thread ], [ 1, %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCslFlrwjHoTci_14polars_compute.exit ], !dbg !39044
  %i.eq = or i8 %.sroa.07.0, %.sroa.02.018, !dbg !39045 ; 2 uses
  %i.er = icmp eq ptr %i.cy, %i.w, !dbg !39092
  br i1 %i.er, label %._crit_edge, label %bb.l, !dbg !39005
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute6unique8distinctNtB4_13BooleanUniqueNtB4_15AmortizedUnique13retain_unique(ptr noalias nofree nonnull readnone captures(none) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, ptr noalias noundef align 8 dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !39093 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !39254 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !dbg !39254, !noundef !916
  %i.j = icmp ult i32 %i.i, 2, !dbg !39255
  br i1 %i.j, label %bb.q, label %bb.b, !dbg !39255

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !39256
  %i.l = load ptr, ptr %i.k, align 8, !dbg !39256, !invariant.load !916, !nonnull !916
  %i.m = tail call { ptr, ptr } %i.l(ptr noundef nonnull %1) #35, !dbg !39257 ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0, !dbg !39257 ; 9 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1, !dbg !39257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !39186
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !39258
  %i.q = load ptr, ptr %i.p, align 8, !dbg !39258, !invariant.load !916, !nonnull !916
  call void %i.q(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.n) #35, !dbg !39259
  %i.r = load i128, ptr %i.a, align 16, !dbg !39260, !noundef !916
  %i.s = icmp eq i128 %i.r, 114555723586533567551938201543257205922, !dbg !39261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !39186
  br i1 %i.s, label %bb.d, label %bb.c, !dbg !39262, !prof !1051

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #37, !dbg !39263
  unreachable, !dbg !39263

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.t = call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @262) #35, !dbg !39264
  br i1 %i.t, label %bb.f, label %bb.e, !dbg !39265

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 64, !dbg !39266 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !dbg !39266, !noundef !916
  %.not.i.i = icmp eq ptr %i.v, null, !dbg !39266
  br i1 %.not.i.i, label %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.g, !dbg !39267

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %i.n, i64 48, !dbg !39268
  %.val.i = load i64, ptr %i.w, align 8, !dbg !39268, !noundef !916
  br label %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !39269

bb.g:                                             ; preds = %bb.e
  %i.x = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.u), !dbg !39270
  br label %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !39271

_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.1.i = phi i64 [ %.val.i, %bb.f ], [ %i.x, %bb.g ], !dbg !39272
  %.not = icmp eq i64 %.sroa.0.1.i, 0, !dbg !39273
  br i1 %.not, label %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.h, !dbg !39274

_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.e, %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !39275 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 48, !dbg !39276
  %i.aa = load i64, ptr %i.z, align 8, !dbg !39276, !noundef !916
  %i.ab = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.y), !dbg !39277
  %i.ac = icmp eq i64 %i.aa, %i.ab, !dbg !39278
  br i1 %i.ac, label %bb.j, label %bb.i, !dbg !39278

bb.h:                                             ; preds = %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !39279
  store i8 0, ptr %i.g, align 1, !dbg !39280
  call void @_RINvMs1_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmE6retainNCNvXs_NtNtCslFlrwjHoTci_14polars_compute6unique8distinctNtB1c_13BooleanUniqueNtB1c_15AmortizedUnique13retain_unique0EB1g_(ptr noalias noundef nonnull align 8 dereferenceable(16) %3, ptr noalias noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull align 8 %i.n), !dbg !39281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !39282
  br label %bb.q, !dbg !39283

bb.i:                                             ; preds = %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.ad = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.y), !dbg !39284
  %i.ae = icmp eq i64 %i.ad, 0, !dbg !39285
  br i1 %i.ae, label %bb.j, label %bb.k, !dbg !39285

bb.j:                                             ; preds = %bb.i, %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !39286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !39287
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 12, !dbg !39288
  %i.ag = load i32, ptr %i.af, align 4, !dbg !39288, !range !1333, !noundef !916
  %i.ah = icmp eq i32 %i.ag, 1, !dbg !39289
  br i1 %i.ah, label %bb.m, label %bb.l, !dbg !39289

bb.k:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 12, !dbg !39290
  %i.aj = load i32, ptr %i.ai, align 4, !dbg !39290, !range !1333, !noundef !916
  %i.ak = icmp eq i32 %i.aj, 1, !dbg !39291       ; 4 uses
  br i1 %i.ak, label %bb.t, label %bb.s, !dbg !39291

bb.l:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %3, align 8, !dbg !39292, !noundef !916
  br label %bb.m, !dbg !39293

bb.m:                                             ; preds = %bb.j, %bb.l
  %.sroa.03.0 = phi ptr [ %i.al, %bb.l ], [ %3, %bb.j ], !dbg !39294
  %i.am = load i32, ptr %i.h, align 8, !dbg !39295, !noundef !916
  %.not20 = icmp eq i32 %i.am, 0, !dbg !39195
  br i1 %.not20, label %bb.o, label %bb.n, !dbg !39195

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %.sroa.03.0, align 4, !dbg !39195, !noundef !916
  store i32 %i.an, ptr %i.e, align 4, !dbg !39287
  call void @_RNvMs2_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmE10from_sliceCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.e, i64 noundef 1), !dbg !39286
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECslFlrwjHoTci_14polars_compute.exit unwind label %bb.p, !dbg !39296

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @213) #37, !dbg !39195
  unreachable, !dbg !39195

bb.p:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.r, !dbg !39297

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !dbg !39298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !39297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !39299
  br label %bb.q, !dbg !39300

bb.q:                                             ; preds = %bb.h, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECslFlrwjHoTci_14polars_compute.exit22, %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEECslFlrwjHoTci_14polars_compute.exit
  ret void, !dbg !39301

bb.r:                                             ; preds = %bb.ah, %bb.p
  %.sink = phi ptr [ %i.d, %bb.ah ], [ %i.f, %bb.p ]
  %.pn = phi { ptr, i32 } [ %i.cn, %bb.ah ], [ %i.ao, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sink, i64 16, i1 false), !dbg !39302
  resume { ptr, i32 } %.pn, !dbg !39303

bb.s:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %3, align 8, !dbg !39304, !noundef !916
  br label %bb.t, !dbg !39305

bb.t:                                             ; preds = %bb.k, %bb.s
  %.sroa.04.0 = phi ptr [ %i.ap, %bb.s ], [ %3, %bb.k ], !dbg !39306
  %i.aq = load i32, ptr %i.h, align 8, !dbg !39307, !noundef !916 ; 3 uses
  %.not17 = icmp eq i32 %i.aq, 0, !dbg !39204
  br i1 %.not17, label %bb.v, label %bb.u, !dbg !39204

bb.u:                                             ; preds = %bb.t
  %i.ar = load i32, ptr %.sroa.04.0, align 4, !dbg !39204, !noundef !916
  %i.as = zext i32 %i.ar to i64, !dbg !39204
  %i.at = load ptr, ptr %i.y, align 8, !dbg !39308, !nonnull !916, !noundef !916 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40, !dbg !39309
  %i.av = load i64, ptr %i.au, align 8, !dbg !39309, !noundef !916 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 32, !dbg !39310
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !39310, !noundef !916 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 40, !dbg !39311
  %i.az = load i64, ptr %i.ay, align 8, !dbg !39311, !noundef !916 ; 2 uses
  %i.ba = add i64 %i.az, %i.as, !dbg !39311       ; 2 uses
  %i.bb = lshr i64 %i.ba, 3, !dbg !39312          ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.av, !dbg !39313
  call void @llvm.assume(i1 %i.bc), !dbg !39314
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bb, !dbg !39315
  %i.be = load i8, ptr %i.bd, align 1, !dbg !39316, !noundef !916
  %i.bf = trunc i64 %i.ba to i8, !dbg !39317
  %i.bg = and i8 %i.bf, 7, !dbg !39317
  %i.bh = lshr i8 %i.be, %i.bg, !dbg !39317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !39318
  br i1 %i.ak, label %bb.x, label %bb.w, !dbg !39319

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @214) #37, !dbg !39204
  unreachable, !dbg !39204
end_hunk_0
