Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.09?download=true
inline.NumInlined: 486
inline.NumDeleted: 240
begin_hunk_0_@_RNvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB5_9PackIndex16resolve_snapshot:bb.a

_RINvMs3_NtCs4u2a9tqgjUw_9hashbrown3mapINtB6_7HashMapNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuE12remove_entryBO_EBS_.exit.i.cont: ; preds = %_RINvMs3_NtCs4u2a9tqgjUw_9hashbrown3mapINtB6_7HashMapNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuE12remove_entryBO_EBS_.exit.i.invoke
  unreachable

._crit_edge.i:                                    ; preds = %bb.i, %bb.c
  %i.cu = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !548, !noalias !545, !nonnull !4, !noundef !4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !548, !noalias !545, !noundef !4 ; 2 uses
  %.idx23.i = mul nuw nsw i64 %i.cx, 12
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx23.i
  %i.cz = icmp eq i64 %i.cx, 0
  br i1 %i.cz, label %_RINvMs8_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_8Snapshot13apply_changesNtB6_10FileHandleEB8_.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %._crit_edge.i, %bb.q
  %.sroa.08.019.i = phi ptr [ %i.fv, %bb.q ], [ %i.cv, %._crit_edge.i ] ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.08.019.i, align 4, !alias.scope !616, !noalias !548 ; 4 uses
  %.sroa.6.0..sroa.08.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.08.019.i, i64 8
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa.08.0.sroa_idx.i, align 4, !alias.scope !616, !noalias !548 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %.val.i10.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !623, !noalias !626, !noundef !4
  %i.da = load i64, ptr @_RNvNtNtCsjdYVxJKtkyg_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !629, !noundef !4
  %i.db = xor i64 %.val.i10.i, %.sroa.0.0.copyload.i
  %i.dc = zext i64 %i.db to i128
  %i.dd = zext i32 %.sroa.6.0.copyload.i to i64
  %i.de = xor i64 %i.da, %i.dd
  %i.df = zext i64 %i.de to i128
  %i.dg = mul nuw i128 %i.df, %i.dc               ; 2 uses
  %i.dh = lshr i128 %i.dg, 64
  %i.di = xor i128 %i.dh, %i.dg
  %i.dj = trunc i128 %i.di to i64                 ; 2 uses
  %i.dk = load i64, ptr %i.s, align 8, !alias.scope !635, !noalias !640, !noundef !4
  %i.dl = icmp eq i64 %i.dk, 0
  %i.dm = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.dn = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.do = trunc nuw i64 %i.dn to i32
  br i1 %i.dl, label %bb.j, label %_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsjdYVxJKtkyg_8foldhash4fast11RandomStateE0EBU_.exit.i.i.i, !prof !30

bb.j:                                             ; preds = %.lr.ph21.i
  %i.dp = invoke { i64, i64 } @_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCsjdYVxJKtkyg_8foldhash4fast11RandomStateE0EBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.4.0..sroa_idx, i1 noundef zeroext true) #25
          to label %_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsjdYVxJKtkyg_8foldhash4fast11RandomStateE0EBU_.exit.i.i.i unwind label %.loopexit ; 0 uses

_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsjdYVxJKtkyg_8foldhash4fast11RandomStateE0EBU_.exit.i.i.i: ; preds = %bb.j, %.lr.ph21.i
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !644, !noalias !645, !nonnull !4, !noundef !4 ; 8 uses
  %.val5.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !644, !noalias !645, !noundef !4 ; 4 uses
  %i.dq = lshr i64 %i.dj, 57
  %i.dr = trunc nuw nsw i64 %i.dq to i8           ; 3 uses
  %i.ds = insertelement <16 x i8> poison, i8 %i.dr, i64 0
  %i.dt = shufflevector <16 x i8> %i.ds, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsjdYVxJKtkyg_8foldhash4fast11RandomStateE0EBU_.exit.i.i.i
  %.pn.i.i.i.i = phi i64 [ %i.dj, %_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsjdYVxJKtkyg_8foldhash4fast11RandomStateE0EBU_.exit.i.i.i ], [ %i.ez, %bb.n ]
  %.sroa.4.0.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsjdYVxJKtkyg_8foldhash4fast11RandomStateE0EBU_.exit.i.i.i ], [ %.sroa.4.124.i.i.i.i, %bb.n ]
  %.sroa.01.0.i.i.i11.i = phi i64 [ 0, %_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsjdYVxJKtkyg_8foldhash4fast11RandomStateE0EBU_.exit.i.i.i ], [ %.sroa.01.126.i.i.i.i, %bb.n ]
  %i.du = phi i64 [ 0, %_RINvMs6_NtCs4u2a9tqgjUw_9hashbrown3rawINtB6_8RawTableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtCsjdYVxJKtkyg_8foldhash4fast11RandomStateE0EBU_.exit.i.i.i ], [ %i.ey, %bb.n ]
  %.sroa.0.021.i.i.i.i = and i64 %.pn.i.i.i.i, %.val5.i.i.i ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.0.021.i.i.i.i
  %.sroa.0.0.copyload.i31.i.i.i.i = load <16 x i8>, ptr %i.dv, align 1, !noalias !646 ; 3 uses
  %i.dw = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i.i.i, %i.dt
  %i.dx = bitcast <16 x i1> %i.dw to i16          ; 2 uses
  %.not32.i.i.i.i = icmp eq i16 %i.dx, 0
  br i1 %.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %.backedge.i.i.i.i
  %.sroa.05.033.i.i.i.i = phi i16 [ %i.eb, %.backedge.i.i.i.i ], [ %i.dx, %bb.k ] ; 3 uses
  %i.dy = add i16 %.sroa.05.033.i.i.i.i, -1
  %i.dz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.033.i.i.i.i, i1 true)
  %i.ea = zext nneg i16 %i.dz to i64
  %i.eb = and i16 %i.dy, %.sroa.05.033.i.i.i.i    ; 2 uses
  %i.ec = add i64 %.sroa.0.021.i.i.i.i, %i.ea
  %i.ed = and i64 %i.ec, %.val5.i.i.i
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = getelementptr inbounds [12 x i8], ptr %.val.i.i.i, i64 %i.ee ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -12
  %i.eh = load i32, ptr %i.eg, align 4, !alias.scope !649, !noalias !656, !noundef !4
  %i.ei = icmp eq i32 %i.eh, %i.dm
  br i1 %i.ei, label %bb.l, label %.backedge.i.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 -8
  %i.ek = load i32, ptr %i.ej, align 4, !alias.scope !649, !noalias !656, !noundef !4
  %i.el = icmp eq i32 %i.ek, %i.do
  br i1 %i.el, label %.split.i.i.i.i, label %.backedge.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.l
  %i.em = getelementptr inbounds i8, ptr %i.ef, i64 -4
  %i.en = load i32, ptr %i.em, align 4, !alias.scope !649, !noalias !656, !noundef !4
  %i.eo = icmp eq i32 %.sroa.6.0.copyload.i, %i.en
  br i1 %i.eo, label %_RINvMs3_NtCs4u2a9tqgjUw_9hashbrown3mapINtB6_7HashMapNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuE12remove_entryBO_EBS_.exit.i.invoke, label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %.split.i.i.i.i, %bb.l, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq i16 %i.eb, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.backedge.i.i.i.i, %bb.k
  %.not11.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i11.i, 1
  br i1 %.not11.i.i.i.i, label %.thread.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i31.i.i.i.i, zeroinitializer
  %i.eq = bitcast <16 x i1> %i.ep to i16          ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.eq, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %.thread28.i.i.i.i

.thread28.i.i.i.i:                                ; preds = %bb.m
  %i.er = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.eq, i1 true)
  %i.es = zext nneg i16 %i.er to i64
  %i.et = add i64 %.sroa.0.021.i.i.i.i, %i.es
  %i.eu = and i64 %i.et, %.val5.i.i.i
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.thread28.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.4.125.i.i.i.i = phi i64 [ %i.eu, %.thread28.i.i.i.i ], [ %.sroa.4.0.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ev = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i.i.i, splat (i8 -1)
  %i.ew = bitcast <16 x i1> %i.ev to i16
  %i.ex = icmp eq i16 %i.ew, 0
  br i1 %i.ex, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread.i.i.i.i, %bb.m
  %.sroa.01.126.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i ], [ 0, %bb.m ]
  %.sroa.4.124.i.i.i.i = phi i64 [ %.sroa.4.125.i.i.i.i, %.thread.i.i.i.i ], [ undef, %bb.m ]
  %i.ey = add i64 %i.du, 16                       ; 2 uses
  %i.ez = add i64 %i.ey, %.sroa.0.021.i.i.i.i
  br label %bb.k

bb.o:                                             ; preds = %.thread.i.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.4.125.i.i.i.i
  %i.fb = load i8, ptr %i.fa, align 1, !noalias !661, !noundef !4 ; 2 uses
  %i.fc = icmp sgt i8 %i.fb, -1
  br i1 %i.fc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.val62.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i, align 16, !noalias !661
  %i.fd = icmp slt <16 x i8> %.val62.i.i.i.i.i, zeroinitializer
  %i.fe = bitcast <16 x i1> %i.fd to i16          ; 2 uses
  %.not.i22.i.i.i.i = icmp ne i16 %i.fe, 0
  %i.ff = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fe, i1 true)
  %i.fg = zext nneg i16 %i.ff to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i22.i.i.i.i)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.fg
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !662
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fh = phi i8 [ %.pre.i.i, %bb.p ], [ %i.fb, %bb.o ]
  %.sroa.3.0.i.ph.i.i.i = phi i64 [ %i.fg, %bb.p ], [ %.sroa.4.125.i.i.i.i, %bb.o ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %i.fi = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i
  %i.fj = and i8 %i.fh, 1
  %i.fk = zext nneg i8 %i.fj to i64
  %i.fl = add i64 %.sroa.3.0.i.ph.i.i.i, -16
  %i.fm = and i64 %i.fl, %.val5.i.i.i
  store i8 %i.dr, ptr %i.fi, align 1, !noalias !662
  %i.fn = getelementptr i8, ptr %.val.i.i.i, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 16
  store i8 %i.dr, ptr %i.fo, align 1, !noalias !662
  %i.fp = load <2 x i64>, ptr %i.s, align 8, !alias.scope !667, !noalias !668
  %i.fq = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.fk, i64 0
  %i.fr = sub <2 x i64> %i.fp, %i.fq
  store <2 x i64> %i.fr, ptr %i.s, align 8, !alias.scope !667, !noalias !668
  %i.fs = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i
  %i.ft = getelementptr inbounds [12 x i8], ptr %.val.i.i.i, i64 %i.fs ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 -12
  store i64 %.sroa.0.0.copyload.i, ptr %i.fu, align 4, !noalias !669
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ft, i64 -4
  store i32 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !669
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.08.019.i, i64 12 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.cy
  br i1 %i.fw, label %_RINvMs8_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_8Snapshot13apply_changesNtB6_10FileHandleEB8_.exit, label %.lr.ph21.i

.thread27:                                        ; preds = %bb.t, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_INtNtCskuiImRAV2ip_9elfshaker7packidx9ChangeSetNtB2c_10FileHandleEEEB2e_.exit
  store i64 -1, ptr %0, align 8
  call void @_RINvMsa_NtCs4u2a9tqgjUw_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuENtNtNtNtCs7ew5ejTEOoB_14allocator_api26stable5alloc6global6GlobalEB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0..sroa_idx, i64 noundef 12, i64 noundef 16)
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %.thread27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RINvMs8_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_8Snapshot13apply_changesNtB6_10FileHandleEB8_.exit: ; preds = %bb.q, %._crit_edge.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !noundef !4
  %i.fz = icmp eq i64 %i.fy, %3
  br i1 %i.fz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_RINvMs8_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_8Snapshot13apply_changesNtB6_10FileHandleEB8_.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !nonnull !4, !noundef !4
  %bcmp = call i32 @bcmp(ptr nonnull %i.gb, ptr nonnull %2, i64 %3)
  %i.gc = icmp eq i32 %bcmp, 0
  br i1 %i.gc, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RINvMs8_NtCskuiImRAV2ip_9elfshaker7packidxNtB6_8Snapshot13apply_changesNtB6_10FileHandleEB8_.exit, %bb.s
  %exitcond.not = icmp eq i64 %i.u, %.sroa.8.0.copyload
  br i1 %exitcond.not, label %.thread27, label %bb.c

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.018.0.copyload = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %.sroa.419.0.copyload = load i64, ptr %i.r, align 8 ; 4 uses
  %.sroa.521.0.copyload = load i64, ptr %i.t, align 8
  %.val24.i.i.i = load <16 x i8>, ptr %.sroa.018.0.copyload, align 16, !noalias !670
  %i.gd = icmp eq i64 %.sroa.419.0.copyload, 0
  br i1 %i.gd, label %bb.v, label %_RNvMs1_NtCs4u2a9tqgjUw_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs4u2a9tqgjUw_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.u
  %4 = mul i64 %.sroa.419.0.copyload, 12          ; 2 uses
  %5 = add i64 %4, 12
  %6 = icmp ult i64 %5, -15
  call void @llvm.assume(i1 %6)
  %i.ge = add i64 %4, 24
  %i.gf = and i64 %i.ge, -16                      ; 3 uses
  %i.gg = add i64 %.sroa.419.0.copyload, 17
  %i.gh = add i64 %i.gg, %i.gf                    ; 3 uses
  %i.gi = icmp uge i64 %i.gh, %i.gf
  call void @llvm.assume(i1 %i.gi)
  %i.gj = icmp ult i64 %i.gh, 9223372036854775793
  call void @llvm.assume(i1 %i.gj)
  %i.gk = sub nsw i64 0, %i.gf
  %i.gl = getelementptr inbounds i8, ptr %.sroa.018.0.copyload, i64 %i.gk
  br label %bb.v

bb.v:                                             ; preds = %_RNvMs1_NtCs4u2a9tqgjUw_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.u
  %.sroa.510.0.i.i = phi ptr [ undef, %bb.u ], [ %i.gl, %_RNvMs1_NtCs4u2a9tqgjUw_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %.sroa.49.0.i.i = phi i64 [ undef, %bb.u ], [ %i.gh, %_RNvMs1_NtCs4u2a9tqgjUw_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %.sink.i.i.i = phi i64 [ 0, %bb.u ], [ 16, %_RNvMs1_NtCs4u2a9tqgjUw_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.018.0.copyload, i64 16
  %i.gn = icmp sgt <16 x i8> %.val24.i.i.i, splat (i8 -1)
  %i.go = getelementptr i8, ptr %.sroa.018.0.copyload, i64 %.sroa.419.0.copyload
  %i.gp = getelementptr i8, ptr %i.go, i64 1
  store i64 %.sink.i.i.i, ptr %i.a, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.49.0.i.i, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.510.0.i.i, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.018.0.copyload, ptr %.sroa.615.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.gm, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.gp, ptr %.sroa.816.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <16 x i1> %i.gn, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1017.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.521.0.copyload, ptr %.sroa.1017.0..sroa_idx, align 8
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEINtB2_18SpecFromIterNestedB11_INtNtCs4u2a9tqgjUw_9hashbrown3set8IntoIterB11_EE9from_iterB15_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4u2a9tqgjUw_9hashbrown3set7HashSetNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEEB1k_.exit: ; preds = %bb.w
  resume { ptr, i32 } %lpad.phi

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp:                               ; preds = %_RINvMs3_NtCs4u2a9tqgjUw_9hashbrown3mapINtB6_7HashMapNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuE12remove_entryBO_EBS_.exit.i.invoke, %_RNvXs7_NtCs4u2a9tqgjUw_9hashbrown3mapINtB5_7HashMapNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuENtNtCs3oUPovFnLWP_4core7default7Default7defaultBR_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvMsa_NtCs4u2a9tqgjUw_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleuENtNtNtNtCs7ew5ejTEOoB_14allocator_api26stable5alloc6global6GlobalEB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0..sroa_idx, i64 noundef 12, i64 noundef 16)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs4u2a9tqgjUw_9hashbrown3set7HashSetNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEEB1k_.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB5_9PackIndex17object_size_total(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(264) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.g = load i64, ptr %i.f, align 8
  %.sroa.0.sroa.0.0 = zext i1 %.not to i64        ; 2 uses
  %.sroa.0.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.e, i64 undef ; 2 uses
  %.sroa.5.0 = select i1 %.not, i64 %i.g, i64 0
  store i64 %.sroa.0.sroa.0.0, ptr %i.a, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.0.sroa.5.sroa.6.0, ptr %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.0.sroa.0.0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.0.sroa.5.sroa.6.0, ptr %.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.h = call noundef align 8 ptr @_RNvXsM_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_6ValuesmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) ; 2 uses
  %.not5.i = icmp eq ptr %i.h, null
  br i1 %.not5.i, label %_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map6ValuesmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB1Y_8adapters3map8map_foldRB11_yyNCNvMsd_B13_NtB13_9PackIndex17object_size_total0NCINvXsC_NtB1W_5accumyNtB4u_3Sum3sumINtB2Y_3MapB3_B3z_EE0E0EB15_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.h, %bb.a ]
  %.sroa.0.06.i = phi i64 [ %i.k, %.lr.ph.i ], [ 0, %bb.a ]
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val.i = load i64, ptr %i.j, align 8, !noundef !4
  %i.k = add i64 %.val.i, %.sroa.0.06.i           ; 2 uses
  %i.l = call noundef align 8 ptr @_RNvXsM_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_6ValuesmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map6ValuesmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB1Y_8adapters3map8map_foldRB11_yyNCNvMsd_B13_NtB13_9PackIndex17object_size_total0NCINvXsC_NtB1W_5accumyNtB4u_3Sum3sumINtB2Y_3MapB3_B3z_EE0E0EB15_.exit, label %.lr.ph.i

_RINvYINtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map6ValuesmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldyNCINvNtNtB1Y_8adapters3map8map_foldRB11_yyNCNvMsd_B13_NtB13_9PackIndex17object_size_total0NCINvXsC_NtB1W_5accumyNtB4u_3Sum3sumINtB2Y_3MapB3_B3z_EE0E0EB15_.exit: ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.k, %.lr.ph.i ]
  ret i64 %.sroa.0.0.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB5_9PackIndex18handle_to_checksum(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(264) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %i.d = icmp ugt i64 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.b, !prof !94

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %i.c
  ret ptr %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB5_9PackIndex19handle_to_entry_ref(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = load i32, ptr %2, align 4, !noundef !4   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = zext i32 %i.c to i64                     ; 2 uses
  %i.g = icmp ugt i64 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i32 %i.c, ptr %i.h, align 8
  %.sroa.438.0.copyload = load ptr, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.438.0.copyload, ptr %.sroa.447.0..sroa_idx, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.f ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.c, ptr %i.l, align 8
  store i64 -9223372036854775807, ptr %i.b, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.t = load i64, ptr %i.s, align 8, !noundef !4
  %i.u = zext i32 %i.r to i64                     ; 2 uses
  %i.v = icmp ugt i64 %i.t, %i.u
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.450.0.copyload = load ptr, ptr %.sroa.450.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.450.0.copyload, ptr %.sroa.459.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -9223372036854775806, ptr %i.a, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskuiImRAV2ip_9elfshaker7packidx9PackErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.z = call noundef align 8 ptr @_RINvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB6_8BTreeMapmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE3getmEB1d_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.q) ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.h, label %bb.g, !prof !30

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.g
  ret void
end_hunk_0
