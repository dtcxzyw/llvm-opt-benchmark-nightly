Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.04?download=true
inline.NumInlined: 554
inline.NumDeleted: 232
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN14regex_automata6hybrid3dfa3DFA7builder17h8eaa2a98563530d1E:bb.a

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E"(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.b) #29
          to label %bb.d unwind label %bb.c, !noalias !429

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !429
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.i

_ZN14regex_automata6hybrid3dfa7Builder3new17h5e9fc2b14388f33dE.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(592) %0, ptr noundef nonnull align 16 dereferenceable(144) %i.b, i64 144, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(448) %i.k, ptr noundef nonnull align 8 dereferenceable(448) %i.a, i64 448, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !429
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy10init_cache17h6ba1ae51ca18670dE(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [8 x i8], align 8                 ; 3 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  %i.l = alloca [8 x i8], align 8                 ; 3 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 3 uses
  %i.o = alloca [8 x i8], align 8                 ; 3 uses
  %i.p = alloca [16 x i8], align 8                ; 13 uses
  %i.q = alloca [16 x i8], align 8                ; 13 uses
  %i.r = alloca [16 x i8], align 8                ; 13 uses
  %i.s = alloca [48 x i8], align 8                ; 2 uses
  %i.t = alloca [4 x i8], align 4                 ; 2 uses
  %i.u = alloca [48 x i8], align 8                ; 2 uses
  %i.v = alloca [4 x i8], align 4                 ; 2 uses
  %i.w = alloca [48 x i8], align 8                ; 2 uses
  %i.x = alloca [4 x i8], align 4                 ; 2 uses
  %i.y = alloca [4 x i8], align 4                 ; 2 uses
  %i.z = alloca [4 x i8], align 4                 ; 2 uses
  %i.aa = alloca [4 x i8], align 4                ; 2 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 37 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 129
  %i.ae = load i8, ptr %i.ad, align 1, !range !16, !noundef !5
  %i.af = icmp eq i8 %i.ae, 1
  br i1 %i.af, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i64 [ %i.av, %bb.c ], [ 12, %bb.a ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5, !align !17, !noundef !5 ; 52 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h41b73a1e93305a60E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %.sroa.0.0, i32 noundef -2147483648)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.aj = tail call { ptr, i64 } @_ZN14regex_automata4util11determinize5state5State4dead17h59a8e2fd8424bc33E() ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 14 uses
  %i.al = extractvalue { ptr, i64 } %i.aj, 1      ; 6 uses
  store ptr %i.ak, ptr %i.ab, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.al, ptr %i.am, align 8
  %i.an = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.ao, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 688
  %i.aq = load ptr, ptr %i.ap, align 16, !nonnull !5, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 360
  %i.as = load i64, ptr %i.ar, align 8, !noundef !5 ; 2 uses
  %i.at = icmp ult i64 %i.as, 2305843009213693952
  tail call void @llvm.assume(i1 %i.at)
  %i.au = mul nuw i64 %i.as, 6
  %i.av = add nuw i64 %i.au, 12
  br label %bb.b

.body125.thread243.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %.invoke542, %bb.t, %bb.f, %bb.v, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i"
  %lpad.loopexit.split-lp630 = landingpad { ptr, i32 }
          cleanup
  br label %.body125.thread

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.ak, ptr %i.r, align 8, !noalias !618
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  store i64 %i.al, ptr %i.aw, align 8, !noalias !618
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 9 uses
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !619, !noalias !618, !noundef !5 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 2305843009213693952
  tail call void @llvm.assume(i1 %i.az), !noalias !618
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 64 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !619, !noalias !618, !noundef !5 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bc), !noalias !618
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 88 ; 12 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !619, !noalias !618, !noundef !5 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 576460752303423488
  tail call void @llvm.assume(i1 %i.bf), !noalias !618
  %i.bg = shl nuw nsw i64 %i.be, 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ah, i64 304 ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !619, !noalias !618, !noundef !5
  %i.bj = mul i64 %i.bi, 20
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 112 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !619, !noalias !618, !noundef !5 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bm), !noalias !618
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 136 ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !619, !noalias !618, !noundef !5 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bp), !noalias !618
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ah, i64 168 ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !619, !noalias !618, !noundef !5 ; 2 uses
  %i.bs = icmp ult i64 %i.br, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bs), !noalias !618
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 192 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !619, !noalias !618, !noundef !5 ; 2 uses
  %i.bv = icmp ult i64 %i.bu, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bv), !noalias !618
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ah, i64 208 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !range !14, !alias.scope !619, !noalias !618, !noundef !5
  %i.by = getelementptr inbounds nuw i8, ptr %i.ah, i64 232 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !range !14, !alias.scope !619, !noalias !618, !noundef !5
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ah, i64 328 ; 9 uses
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !619, !noalias !618, !noundef !5
  %i.cc = add nuw nsw i64 %i.bb, %i.ay
  %i.cd = add nuw nsw i64 %i.cc, %i.bl
  %i.ce = add nuw nsw i64 %i.cd, %i.bo
  %i.cf = add nuw i64 %i.ce, %i.br
  %i.cg = add nuw i64 %i.cf, %i.bu
  %reass.add.i.i = add i64 %i.cg, %i.bx
  %reass.mul.i.i = shl i64 %reass.add.i.i, 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ac, i64 696 ; 10 uses
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !618, !noundef !5
  %i.cj = and i64 %i.ci, 63
  %i.ck = shl i64 4, %i.cj
  %i.cl = add i64 %i.al, 36                       ; 3 uses
  %i.cm = add i64 %i.bg, %i.cl
  %i.cn = add i64 %i.cm, %i.bj
  %i.co = add i64 %i.cn, %i.bz
  %i.cp = add i64 %i.co, %i.cb
  %i.cq = add i64 %i.cp, %reass.mul.i.i
  %i.cr = add i64 %i.cq, %i.ck
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ac, i64 704 ; 3 uses
  %i.ct = load i64, ptr %i.cs, align 16, !noalias !618, !noundef !5
  %.not = icmp ugt i64 %i.cr, %i.ct
  br i1 %.not, label %bb.e, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit

bb.e:                                             ; preds = %bb.d
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.cv = load i64, ptr %i.cu, align 16, !range !15, !noalias !620, !noundef !5
  %i.cw = icmp eq i64 %i.cv, 1
  br i1 %i.cw, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.l, %bb.g, %bb.e
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy11clear_cache17hb279f51be876bc4aE(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit_crit_edge unwind label %.body125.thread243.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !436

._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit_crit_edge: ; preds = %bb.f
  %.pre502 = load i64, ptr %i.ax, align 8, !noalias !621
  br label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit

bb.g:                                             ; preds = %bb.e
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.cy = load i64, ptr %i.cx, align 8, !noalias !620
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ah, i64 336
  %i.da = load i64, ptr %i.cz, align 8, !noalias !620, !noundef !5
  %.not14.i = icmp ult i64 %i.da, %i.cy
  br i1 %.not14.i, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.db = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.dc = load i64, ptr %i.db, align 16, !range !15, !noalias !620, !noundef !5
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.de = load i64, ptr %i.dd, align 8, !noalias !620
  %i.df = icmp eq i64 %i.dc, 1
  br i1 %i.df, label %bb.i, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ah, i64 344
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !622, !noalias !620, !noundef !5
  %i.di = load i64, ptr %i.ah, align 8, !range !9, !alias.scope !622, !noalias !620, !noundef !5
  %i.dj = trunc nuw i64 %i.di to i1
  br i1 %i.dj, label %bb.j, label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.val.i.i.i = load i64, ptr %i.dk, align 8, !alias.scope !623, !noalias !620, !noundef !5 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.val5.i.i.i = load i64, ptr %i.dl, align 8, !alias.scope !623, !noalias !620, !noundef !5 ; 3 uses
  %.not.i.i.i.i = icmp ugt i64 %.val.i.i.i, %.val5.i.i.i
  %1 = sub nuw i64 %.val5.i.i.i, %.val.i.i.i
  %i.dm = sub nuw i64 %.val.i.i.i, %.val5.i.i.i
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 %i.dm, i64 %1
  br label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i

_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i: ; preds = %bb.j, %bb.i
  %.sroa.02.0.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.j ], [ 0, %bb.i ]
  %i.dn = add i64 %.sroa.02.0.i.i.i, %i.dh
  %i.do = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.de, i64 %i.be) ; 2 uses
  %i.dp = extractvalue { i64, i1 } %i.do, 0
  %i.dq = extractvalue { i64, i1 } %i.do, 1
  br i1 %i.dq, label %bb.k, label %bb.l, !prof !8

bb.k:                                             ; preds = %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i
  %.sroa.013.0.i = phi i64 [ -1, %bb.k ], [ %i.dp, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i ]
  %i.dr = icmp ult i64 %i.dn, %.sroa.013.0.i
  br i1 %i.dr, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread, label %bb.f

_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit: ; preds = %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit_crit_edge, %bb.d
  %i.ds = phi i64 [ %.pre502, %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit_crit_edge ], [ %i.ay, %bb.d ] ; 3 uses
  %i.dt = icmp ult i64 %i.ds, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = icmp samesign ugt i64 %i.ds, 134217727
  br i1 %i.du, label %bb.m, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i"

bb.m:                                             ; preds = %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.dw = load i64, ptr %i.dv, align 16, !range !15, !noalias !624, !noundef !5
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.dz = load i64, ptr %i.dy, align 8, !noalias !624
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ah, i64 336
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !624, !noundef !5
  %.not14.i.i = icmp ult i64 %i.eb, %i.dz
  br i1 %.not14.i.i, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ed = load i64, ptr %i.ec, align 16, !range !15, !noalias !624, !noundef !5
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ef = load i64, ptr %i.ee, align 8, !noalias !624
  %i.eg = icmp eq i64 %i.ed, 1
  br i1 %i.eg, label %bb.p, label %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread_crit_edge

bb.p:                                             ; preds = %bb.o
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ah, i64 344
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !625, !noalias !624, !noundef !5
  %i.ej = load i64, ptr %i.ah, align 8, !range !9, !alias.scope !625, !noalias !624, !noundef !5
  %i.ek = trunc nuw i64 %i.ej to i1
  br i1 %i.ek, label %bb.q, label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i393

bb.q:                                             ; preds = %bb.p
  %i.el = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.val.i.i.i395 = load i64, ptr %i.el, align 8, !alias.scope !626, !noalias !624, !noundef !5 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.val5.i.i.i396 = load i64, ptr %i.em, align 8, !alias.scope !626, !noalias !624, !noundef !5 ; 3 uses
  %.not.i.i.i.i397 = icmp ugt i64 %.val.i.i.i395, %.val5.i.i.i396
  %2 = sub nuw i64 %.val5.i.i.i396, %.val.i.i.i395
  %i.en = sub nuw i64 %.val.i.i.i395, %.val5.i.i.i396
  %.sroa.0.0.i.i.i.i398 = select i1 %.not.i.i.i.i397, i64 %i.en, i64 %2
  br label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i393

_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i393: ; preds = %bb.q, %bb.p
  %.sroa.02.0.i.i.i394 = phi i64 [ %.sroa.0.0.i.i.i.i398, %bb.q ], [ 0, %bb.p ]
  %i.eo = add i64 %.sroa.02.0.i.i.i394, %i.ei
  %i.ep = load i64, ptr %i.bd, align 8, !noalias !624, !noundef !5 ; 2 uses
  %i.eq = icmp ult i64 %i.ep, 576460752303423488
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ef, i64 %i.ep) ; 2 uses
  %i.es = extractvalue { i64, i1 } %i.er, 0
  %i.et = extractvalue { i64, i1 } %i.er, 1
  br i1 %i.et, label %bb.r, label %bb.s, !prof !8

bb.r:                                             ; preds = %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i393
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i393
  %.sroa.013.0.i.i = phi i64 [ -1, %bb.r ], [ %i.es, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i393 ]
  %i.eu = icmp ult i64 %i.eo, %.sroa.013.0.i.i
  br i1 %i.eu, label %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread_crit_edge, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n, %bb.m
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy11clear_cache17hb279f51be876bc4aE(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %.noexc unwind label %.body125.thread243.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !449

.noexc:                                           ; preds = %bb.t
  %i.ev = load i64, ptr %i.ax, align 8, !noalias !621, !noundef !5 ; 4 uses
  %i.ew = icmp ult i64 %i.ev, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = icmp samesign ugt i64 %i.ev, 134217727
  br i1 %i.ex, label %bb.u, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i"

bb.u:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !627
  store i64 %i.ev, ptr %i.d, align 8, !noalias !627
  br label %.invoke542

.invoke542:                                       ; preds = %bb.z, %bb.y, %bb.u
  %i.ey = phi ptr [ %i.d, %bb.u ], [ %i.k, %bb.z ], [ %i.l, %bb.y ]
  %i.ez = phi ptr [ @45, %bb.u ], [ @72, %bb.z ], [ @71, %bb.y ]
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @78, i64 noundef 43, ptr noundef nonnull align 1 %i.ey, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ez) #27
          to label %.cont543 unwind label %.body125.thread243.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !449

.cont543:                                         ; preds = %.invoke542
  unreachable

._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread_crit_edge: ; preds = %bb.s, %bb.o
  %.pre339 = load ptr, ptr %i.r, align 8, !alias.scope !628
  br label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i": ; preds = %.noexc, %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit
  %.sroa.3.0.i.in = phi i64 [ %i.ds, %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit ], [ %i.ev, %.noexc ]
  %i.fa = invoke noundef zeroext i1 @_ZN14regex_automata4util11determinize5state5State8is_match17hd3f2f536a5195b03E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %bb.v unwind label %.body125.thread243.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !459

bb.v:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i"
  %.sroa.3.0.i = trunc nuw nsw i64 %.sroa.3.0.i.in to i32
  %spec.select.i.v = select i1 %i.fa, i32 -2013265920, i32 -2147483648
  %spec.select.i = or disjoint i32 %spec.select.i.v, %.sroa.3.0.i ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 3 uses
  %i.fc = load i64, ptr %i.ch, align 8, !noundef !5
  %i.fd = and i64 %i.fc, 63
  %i.fe = shl nuw i64 1, %i.fd
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h41b73a1e93305a60E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fb, i64 noundef %i.fe, i32 noundef -2147483648)
          to label %bb.w unwind label %.body125.thread243.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !459

bb.w:                                             ; preds = %bb.v
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ac, i64 656 ; 9 uses
  %i.fg = load i128, ptr %i.ff, align 1
  %i.fh = getelementptr i8, ptr %i.ff, i64 16
  %i.fi = load i128, ptr %i.fh, align 1
  %i.fj = or i128 %i.fg, %i.fi
  %i.fk = icmp ne i128 %i.fj, 0
  %i.fl = zext i1 %i.fk to i32
  %i.fm = icmp eq i32 %i.fl, 0
  %i.fn = icmp eq i32 %spec.select.i, -2147483648 ; 2 uses
  %or.cond = select i1 %i.fm, i1 true, i1 %i.fn
  br i1 %or.cond, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fo = load i64, ptr %i.ch, align 8, !noalias !629, !noundef !5
  %i.fp = and i64 %i.fo, 63                       ; 4 uses
  %i.fq = icmp samesign ugt i64 %i.fp, 26
  br i1 %i.fq, label %bb.y, label %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i

bb.y:                                             ; preds = %bb.x
  %i.fr = shl nuw i64 1, %i.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !630
  store i64 %i.fr, ptr %i.l, align 8, !noalias !630
  br label %.invoke542

_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i: ; preds = %bb.x
  %i.fs = icmp eq i64 %i.fp, 26
  br i1 %i.fs, label %bb.z, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit

bb.z:                                             ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !631
  store i64 134217728, ptr %i.k, align 8, !noalias !631
  br label %.invoke542

_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread: ; preds = %bb.ac, %bb.aa, %bb.ab, %bb.w
  %i.ft = load i64, ptr %i.aw, align 8, !noalias !618, !noundef !5
  %i.fu = load i64, ptr %i.ca, align 8, !noundef !5
  %i.fv = add i64 %i.fu, %i.ft
  store i64 %i.fv, ptr %i.ca, align 8
  %i.fw = load ptr, ptr %i.r, align 8, !noalias !618, !nonnull !5, !noundef !5
  %i.fx = atomicrmw add ptr %i.fw, i64 1 monotonic, align 8
  %i.fy = icmp slt i64 %i.fx, 0
  br i1 %i.fy, label %bb.aj, label %bb.ae

_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit: ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i
  %i.fz = shl nuw nsw i64 2, %i.fp
  %i.ga = trunc nuw nsw i64 %i.fz to i32
  %i.gb = or disjoint i32 %i.ga, 536870912
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ad, %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit
  %.sroa.4218.0 = phi i64 [ 0, %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit ], [ %i.gd, %bb.ad ] ; 2 uses
  %exitcond.not.i579 = icmp eq i64 %.sroa.4218.0, 256
  br i1 %exitcond.not.i579, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread, label %.lr.ph

bb.ab:                                            ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %i.gd, 256
  br i1 %exitcond.not.i, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa, %bb.ab
  %.sroa.4218.1580 = phi i64 [ %i.gd, %bb.ab ], [ %.sroa.4218.0, %bb.aa ] ; 5 uses
  %i.gc = trunc nuw i64 %.sroa.4218.1580 to i8
  %i.gd = add nuw nsw i64 %.sroa.4218.1580, 1     ; 3 uses
  %.lobit.i.i = lshr i64 %.sroa.4218.1580, 7
  %i.ge = and i8 %i.gc, 127
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %.lobit.i.i
  %i.gg = load i128, ptr %i.gf, align 16, !alias.scope !632, !noalias !633, !noundef !5
  %i.gh = zext nneg i8 %i.ge to i128
  %i.gi = shl nuw i128 1, %i.gh
  %i.gj = and i128 %i.gg, %i.gi
  %.not.i = icmp eq i128 %i.gj, 0
  br i1 %.not.i, label %bb.ab, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph
  %i.gk = icmp ult i64 %.sroa.4218.1580, 256
  br i1 %i.gk, label %bb.ad, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.gl = trunc nuw nsw i64 %.sroa.4218.1580 to i32
  %.sroa.417.0.insert.shift.i = shl nuw nsw i32 %i.gl, 8
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy14set_transition17hc3806a8fe9907783E(ptr nonnull %i.ac, ptr nonnull %i.ah, i32 noundef %spec.select.i, i32 %.sroa.417.0.insert.shift.i, i32 noundef %i.gb)
          to label %bb.aa unwind label %.body125.thread243.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !459

bb.ae:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ah, i64 72 ; 6 uses
  %i.gn = load ptr, ptr %i.r, align 8, !noalias !618, !nonnull !5, !noundef !5 ; 3 uses
  %i.go = load i64, ptr %i.aw, align 8, !noalias !618, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.gn, ptr %i.m, align 8, !noalias !634
  %i.gp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.go, ptr %i.gp, align 8, !noalias !634
  %i.gq = load i64, ptr %i.bd, align 8, !alias.scope !634, !noundef !5 ; 3 uses
  %i.gr = load i64, ptr %i.gm, align 8, !range !14, !alias.scope !634, !noundef !5
  %i.gs = icmp eq i64 %i.gq, %i.gr
  br i1 %i.gs, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5991c16c81e0b063E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gm)
          to label %bb.ak unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gu = atomicrmw add ptr %i.gn, i64 -1 release, align 8, !noalias !635
  %i.gv = icmp eq i64 %i.gu, 1
  br i1 %i.gv, label %bb.ah, label %.body125.thread

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.body125.thread unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable

bb.aj:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread
  call void @llvm.trap()
  unreachable

bb.ak:                                            ; preds = %bb.af, %bb.ae
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ah, i64 80 ; 3 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !634, !nonnull !5, !noundef !5
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.gy, i64 %i.gq ; 2 uses
  store ptr %i.gn, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i64 %i.go, ptr %i.ha, align 8
  %i.hb = add i64 %i.gq, 1
  store i64 %i.hb, ptr %i.bd, align 8, !alias.scope !634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.hc = load ptr, ptr %i.r, align 8, !noalias !618, !nonnull !5, !noundef !5
  %i.hd = load i64, ptr %i.aw, align 8, !noalias !618, !noundef !5
  %i.he = getelementptr inbounds nuw i8, ptr %i.ah, i64 280 ; 4 uses
  %i.hf = invoke { i32, i32 } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2d1fa52a1f342d3dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.he, ptr noundef nonnull %i.hc, i64 noundef %i.hd, i32 noundef %spec.select.i)
          to label %bb.aq unwind label %.body174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !459 ; 0 uses

_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread: ; preds = %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread_crit_edge, %bb.l, %bb.h
  %i.hg = phi ptr [ %.pre339, %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread_crit_edge ], [ %i.ak, %bb.l ], [ %i.ak, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %i.hh = atomicrmw add ptr %i.hg, i64 -1 release, align 8, !noalias !628
  %i.hi = icmp eq i64 %i.hh, 1
  br i1 %i.hi, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %bb.ap unwind label %.body174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body125.thread:                                  ; preds = %.body125.thread243.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ah, %bb.ag
  %eh.lpad-body126242 = phi { ptr, i32 } [ %i.gt, %bb.ah ], [ %i.gt, %bb.ag ], [ %lpad.loopexit.split-lp630, %.body125.thread243.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !639)
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %i.hj = load ptr, ptr %i.r, align 8, !alias.scope !642, !nonnull !5, !noundef !5
  %i.hk = atomicrmw add ptr %i.hj, i64 -1 release, align 8, !noalias !642
  %i.hl = icmp eq i64 %i.hk, 1
  br i1 %i.hl, label %bb.am, label %.body.thread

bb.am:                                            ; preds = %.body125.thread
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %.body.thread unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !inline_history !459
  unreachable

bb.ao:                                            ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.ap:                                            ; preds = %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.invoke389.a

.invoke389.a:                                     ; preds = %bb.dz, %bb.dv, %bb.dr, %bb.ce, %bb.ap
  %i.hn = phi ptr [ %i.a, %bb.ap ], [ %i.a, %bb.ce ], [ %i.a, %bb.dr ], [ %i.o, %bb.dv ], [ %i.n, %bb.dz ]
  %i.ho = phi ptr [ @76, %bb.ap ], [ @76, %bb.ce ], [ @76, %bb.dr ], [ @77, %bb.dv ], [ @77, %bb.dz ]
  %i.hp = phi ptr [ @34, %bb.ap ], [ @35, %bb.ce ], [ @36, %bb.dr ], [ @71, %bb.dv ], [ @72, %bb.dz ]
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @78, i64 noundef 43, ptr noundef nonnull align 1 %i.hn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ho, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hp) #27
          to label %.cont390.a unwind label %.body174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont390.a:                                       ; preds = %.invoke389.a
  unreachable

bb.aq:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i32 %spec.select.i, ptr %i.aa, align 4
  %i.hq = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8
  %i.hr = icmp slt i64 %i.hq, 0
  br i1 %i.hr, label %bb.cd, label %bb.ar

.body138.thread266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bs, %.invoke, %bb.bh, %bb.at, %bb.bj, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i402"
  %lpad.loopexit.split-lp623 = landingpad { ptr, i32 }
          cleanup
  br label %.body138.thread

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.ak, ptr %i.q, align 8, !noalias !643
  %i.hs = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  store i64 %i.al, ptr %i.hs, align 8, !noalias !643
  %i.ht = load i64, ptr %i.ax, align 8, !alias.scope !644, !noalias !643, !noundef !5 ; 3 uses
  %i.hu = icmp ult i64 %i.ht, 2305843009213693952
  call void @llvm.assume(i1 %i.hu), !noalias !643
  %i.hv = load i64, ptr %i.ba, align 8, !alias.scope !644, !noalias !643, !noundef !5 ; 2 uses
  %i.hw = icmp ult i64 %i.hv, 2305843009213693952
  call void @llvm.assume(i1 %i.hw), !noalias !643
  %i.hx = load i64, ptr %i.bd, align 8, !alias.scope !644, !noalias !643, !noundef !5 ; 3 uses
  %i.hy = icmp ult i64 %i.hx, 576460752303423488
  call void @llvm.assume(i1 %i.hy), !noalias !643
  %i.hz = shl nuw nsw i64 %i.hx, 4
  %i.ia = load i64, ptr %i.bh, align 8, !alias.scope !644, !noalias !643, !noundef !5
  %i.ib = mul i64 %i.ia, 20
  %i.ic = load i64, ptr %i.bk, align 8, !alias.scope !644, !noalias !643, !noundef !5 ; 2 uses
  %i.id = icmp ult i64 %i.ic, 2305843009213693952
  call void @llvm.assume(i1 %i.id), !noalias !643
  %i.ie = load i64, ptr %i.bn, align 8, !alias.scope !644, !noalias !643, !noundef !5 ; 2 uses
  %i.if = icmp ult i64 %i.ie, 2305843009213693952
  call void @llvm.assume(i1 %i.if), !noalias !643
  %i.ig = load i64, ptr %i.bq, align 8, !alias.scope !644, !noalias !643, !noundef !5 ; 2 uses
  %i.ih = icmp ult i64 %i.ig, 2305843009213693952
  call void @llvm.assume(i1 %i.ih), !noalias !643
  %i.ii = load i64, ptr %i.bt, align 8, !alias.scope !644, !noalias !643, !noundef !5 ; 2 uses
  %i.ij = icmp ult i64 %i.ii, 2305843009213693952
  call void @llvm.assume(i1 %i.ij), !noalias !643
  %i.ik = load i64, ptr %i.bw, align 8, !range !14, !alias.scope !644, !noalias !643, !noundef !5
  %i.il = load i64, ptr %i.by, align 8, !range !14, !alias.scope !644, !noalias !643, !noundef !5
  %i.im = load i64, ptr %i.ca, align 8, !alias.scope !644, !noalias !643, !noundef !5
  %i.in = add nuw nsw i64 %i.hv, %i.ht
  %i.io = add nuw nsw i64 %i.in, %i.ic
  %i.ip = add nuw nsw i64 %i.io, %i.ie
  %i.iq = add nuw i64 %i.ip, %i.ig
  %i.ir = add nuw i64 %i.iq, %i.ii
  %reass.add.i.i167 = add i64 %i.ir, %i.ik
  %reass.mul.i.i168 = shl i64 %reass.add.i.i167, 2
  %i.is = load i64, ptr %i.ch, align 8, !noalias !643, !noundef !5
  %i.it = and i64 %i.is, 63
  %i.iu = shl i64 4, %i.it
  %i.iv = add i64 %i.hz, %i.cl
  %i.iw = add i64 %i.iv, %i.ib
  %i.ix = add i64 %i.iw, %i.il
  %i.iy = add i64 %i.ix, %i.im
  %i.iz = add i64 %i.iy, %reass.mul.i.i168
  %i.ja = add i64 %i.iz, %i.iu
  %i.jb = load i64, ptr %i.cs, align 16, !noalias !643, !noundef !5
  %.not290 = icmp ugt i64 %i.ja, %i.jb
  br i1 %.not290, label %bb.as, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit166

bb.as:                                            ; preds = %bb.ar
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.jd = load i64, ptr %i.jc, align 16, !range !15, !noalias !645, !noundef !5
  %i.je = icmp eq i64 %i.jd, 1
  br i1 %i.je, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.az, %bb.au, %bb.as
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy11clear_cache17hb279f51be876bc4aE(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit166_crit_edge unwind label %.body138.thread266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !492

._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit166_crit_edge: ; preds = %bb.at
  %.pre503 = load i64, ptr %i.ax, align 8, !noalias !646
  br label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit166

bb.au:                                            ; preds = %bb.as
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.jg = load i64, ptr %i.jf, align 8, !noalias !645
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ah, i64 336
  %i.ji = load i64, ptr %i.jh, align 8, !noalias !645, !noundef !5
  %.not14.i157 = icmp ult i64 %i.ji, %i.jg
  br i1 %.not14.i157, label %bb.at, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.jk = load i64, ptr %i.jj, align 16, !range !15, !noalias !645, !noundef !5
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.jm = load i64, ptr %i.jl, align 8, !noalias !645
  %i.jn = icmp eq i64 %i.jk, 1
  br i1 %i.jn, label %bb.aw, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit166.thread

bb.aw:                                            ; preds = %bb.av
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ah, i64 344
  %i.jp = load i64, ptr %i.jo, align 8, !alias.scope !647, !noalias !645, !noundef !5
  %i.jq = load i64, ptr %i.ah, align 8, !range !9, !alias.scope !647, !noalias !645, !noundef !5
  %i.jr = trunc nuw i64 %i.jq to i1
  br i1 %i.jr, label %bb.ax, label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i158

bb.ax:                                            ; preds = %bb.aw
  %i.js = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.val.i.i.i161 = load i64, ptr %i.js, align 8, !alias.scope !648, !noalias !645, !noundef !5 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.val5.i.i.i162 = load i64, ptr %i.jt, align 8, !alias.scope !648, !noalias !645, !noundef !5 ; 3 uses
  %.not.i.i.i.i163 = icmp ugt i64 %.val.i.i.i161, %.val5.i.i.i162
  %3 = sub nuw i64 %.val5.i.i.i162, %.val.i.i.i161
  %i.ju = sub nuw i64 %.val.i.i.i161, %.val5.i.i.i162
  %.sroa.0.0.i.i.i.i164 = select i1 %.not.i.i.i.i163, i64 %i.ju, i64 %3
  br label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i158

_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i158: ; preds = %bb.ax, %bb.aw
  %.sroa.02.0.i.i.i159 = phi i64 [ %.sroa.0.0.i.i.i.i164, %bb.ax ], [ 0, %bb.aw ]
  %i.jv = add i64 %.sroa.02.0.i.i.i159, %i.jp
  %i.jw = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.jm, i64 %i.hx) ; 2 uses
  %i.jx = extractvalue { i64, i1 } %i.jw, 0
  %i.jy = extractvalue { i64, i1 } %i.jw, 1
  br i1 %i.jy, label %bb.ay, label %bb.az, !prof !8

bb.ay:                                            ; preds = %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i158
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i158
  %.sroa.013.0.i160 = phi i64 [ -1, %bb.ay ], [ %i.jx, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i158 ]
  %i.jz = icmp ult i64 %i.jv, %.sroa.013.0.i160
  br i1 %i.jz, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit166.thread, label %bb.at

_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit166: ; preds = %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit166_crit_edge, %bb.ar
  %i.ka = phi i64 [ %.pre503, %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit166_crit_edge ], [ %i.ht, %bb.ar ] ; 3 uses
  %i.kb = icmp ult i64 %i.ka, 2305843009213693952
  call void @llvm.assume(i1 %i.kb)
  %i.kc = icmp samesign ugt i64 %i.ka, 134217727
  br i1 %i.kc, label %bb.ba, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i402"

bb.ba:                                            ; preds = %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit166
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ke = load i64, ptr %i.kd, align 16, !range !15, !noalias !649, !noundef !5
  %i.kf = icmp eq i64 %i.ke, 1
  br i1 %i.kf, label %bb.bb, label %bb.bh

bb.bb:                                            ; preds = %bb.ba
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.kh = load i64, ptr %i.kg, align 8, !noalias !649
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ah, i64 336
  %i.kj = load i64, ptr %i.ki, align 8, !noalias !649, !noundef !5
  %.not14.i.i403 = icmp ult i64 %i.kj, %i.kh
  br i1 %.not14.i.i403, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.kl = load i64, ptr %i.kk, align 16, !range !15, !noalias !649, !noundef !5
  %i.km = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.kn = load i64, ptr %i.km, align 8, !noalias !649
  %i.ko = icmp eq i64 %i.kl, 1
  br i1 %i.ko, label %bb.bd, label %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit166.thread_crit_edge

bb.bd:                                            ; preds = %bb.bc
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ah, i64 344
  %i.kq = load i64, ptr %i.kp, align 8, !alias.scope !650, !noalias !649, !noundef !5
  %i.kr = load i64, ptr %i.ah, align 8, !range !9, !alias.scope !650, !noalias !649, !noundef !5
  %i.ks = trunc nuw i64 %i.kr to i1
  br i1 %i.ks, label %bb.be, label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i404

bb.be:                                            ; preds = %bb.bd
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.val.i.i.i407 = load i64, ptr %i.kt, align 8, !alias.scope !651, !noalias !649, !noundef !5 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.val5.i.i.i408 = load i64, ptr %i.ku, align 8, !alias.scope !651, !noalias !649, !noundef !5 ; 3 uses
  %.not.i.i.i.i409 = icmp ugt i64 %.val.i.i.i407, %.val5.i.i.i408
  %4 = sub nuw i64 %.val5.i.i.i408, %.val.i.i.i407
  %i.kv = sub nuw i64 %.val.i.i.i407, %.val5.i.i.i408
  %.sroa.0.0.i.i.i.i410 = select i1 %.not.i.i.i.i409, i64 %i.kv, i64 %4
  br label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i404

_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i404: ; preds = %bb.be, %bb.bd
  %.sroa.02.0.i.i.i405 = phi i64 [ %.sroa.0.0.i.i.i.i410, %bb.be ], [ 0, %bb.bd ]
  %i.kw = add i64 %.sroa.02.0.i.i.i405, %i.kq
  %i.kx = load i64, ptr %i.bd, align 8, !noalias !649, !noundef !5 ; 2 uses
  %i.ky = icmp ult i64 %i.kx, 576460752303423488
  call void @llvm.assume(i1 %i.ky)
  %i.kz = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.kn, i64 %i.kx) ; 2 uses
  %i.la = extractvalue { i64, i1 } %i.kz, 0
  %i.lb = extractvalue { i64, i1 } %i.kz, 1
  br i1 %i.lb, label %bb.bf, label %bb.bg, !prof !8

bb.bf:                                            ; preds = %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i404
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i404
  %.sroa.013.0.i.i406 = phi i64 [ -1, %bb.bf ], [ %i.la, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i404 ]
  %i.lc = icmp ult i64 %i.kw, %.sroa.013.0.i.i406
  br i1 %i.lc, label %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit166.thread_crit_edge, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bb, %bb.ba
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy11clear_cache17hb279f51be876bc4aE(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %.noexc411 unwind label %.body138.thread266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !505

.noexc411:                                        ; preds = %bb.bh
  %i.ld = load i64, ptr %i.ax, align 8, !noalias !646, !noundef !5 ; 4 uses
  %i.le = icmp ult i64 %i.ld, 2305843009213693952
  call void @llvm.assume(i1 %i.le)
  %i.lf = icmp samesign ugt i64 %i.ld, 134217727
  br i1 %i.lf, label %bb.bi, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i402"

bb.bi:                                            ; preds = %.noexc411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !652
  store i64 %i.ld, ptr %i.c, align 8, !noalias !652
  br label %.invoke

.invoke:                                          ; preds = %bb.bo, %bb.bm, %bb.bi
  %i.lg = phi ptr [ %i.c, %bb.bi ], [ %i.h, %bb.bo ], [ %i.i, %bb.bm ]
  %i.lh = phi ptr [ @45, %bb.bi ], [ @72, %bb.bo ], [ @71, %bb.bm ]
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @78, i64 noundef 43, ptr noundef nonnull align 1 %i.lg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lh) #27
          to label %.cont unwind label %.body138.thread266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !505

.cont:                                            ; preds = %.invoke
  unreachable

._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit166.thread_crit_edge: ; preds = %bb.bg, %bb.bc
  %.pre338 = load ptr, ptr %i.q, align 8, !alias.scope !653
  br label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit166.thread

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i402": ; preds = %.noexc411, %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit166
  %.sroa.3.0.i400.in = phi i64 [ %i.ka, %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit166 ], [ %i.ld, %.noexc411 ]
  %i.li = invoke noundef zeroext i1 @_ZN14regex_automata4util11determinize5state5State8is_match17hd3f2f536a5195b03E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q)
          to label %bb.bj unwind label %.body138.thread266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !515

bb.bj:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i402"
  %.sroa.3.0.i400 = trunc nuw nsw i64 %.sroa.3.0.i400.in to i32
  %spec.select.i27.v = select i1 %i.li, i32 1207959552, i32 1073741824
  %spec.select.i27 = or disjoint i32 %spec.select.i27.v, %.sroa.3.0.i400 ; 8 uses
  %i.lj = load i64, ptr %i.ch, align 8, !noundef !5
  %i.lk = and i64 %i.lj, 63
  %i.ll = shl nuw i64 1, %i.lk
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h41b73a1e93305a60E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fb, i64 noundef %i.ll, i32 noundef -2147483648)
          to label %bb.bk unwind label %.body138.thread266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !515

bb.bk:                                            ; preds = %bb.bj
  %i.lm = load i128, ptr %i.ff, align 1
  %i.ln = getelementptr i8, ptr %i.ff, i64 16
  %i.lo = load i128, ptr %i.ln, align 1
  %i.lp = or i128 %i.lm, %i.lo
  %i.lq = icmp ne i128 %i.lp, 0
  %i.lr = zext i1 %i.lq to i32
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit155.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lt = load i64, ptr %i.ch, align 8, !noalias !654, !noundef !5
  %i.lu = and i64 %i.lt, 63                       ; 4 uses
  %i.lv = shl nuw i64 1, %i.lu                    ; 2 uses
  %i.lw = icmp samesign ugt i64 %i.lu, 26
  br i1 %i.lw, label %bb.bm, label %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i150

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !655
  store i64 %i.lv, ptr %i.i, align 8, !noalias !655
  br label %.invoke

_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i150: ; preds = %bb.bl
  %i.lx = trunc nuw nsw i64 %i.lv to i32
  %i.ly = or i32 %i.lx, 1073741824
  %i.lz = icmp eq i32 %spec.select.i27, %i.ly
  br i1 %i.lz, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit155.thread, label %bb.bn

bb.bn:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i150
  %i.ma = icmp eq i64 %i.lu, 26
  br i1 %i.ma, label %bb.bo, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit155

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !656
  store i64 134217728, ptr %i.h, align 8, !noalias !656
  br label %.invoke

_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit155.thread: ; preds = %bb.br, %bb.bp, %bb.bq, %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i150, %bb.bk
  %i.mb = load i64, ptr %i.hs, align 8, !noalias !643, !noundef !5
  %i.mc = load i64, ptr %i.ca, align 8, !noundef !5
  %i.md = add i64 %i.mc, %i.mb
  store i64 %i.md, ptr %i.ca, align 8
  %i.me = load ptr, ptr %i.q, align 8, !noalias !643, !nonnull !5, !noundef !5
  %i.mf = atomicrmw add ptr %i.me, i64 1 monotonic, align 8
  %i.mg = icmp slt i64 %i.mf, 0
  br i1 %i.mg, label %bb.by, label %bb.bt

_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit155: ; preds = %bb.bn
  %i.mh = shl nuw nsw i64 2, %i.lu
  %i.mi = trunc nuw nsw i64 %i.mh to i32
  %i.mj = or disjoint i32 %i.mi, 536870912
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bs, %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit155
  %.sroa.4228.0 = phi i64 [ 0, %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit155 ], [ %i.ml, %bb.bs ] ; 2 uses
  %exitcond.not.i143582 = icmp eq i64 %.sroa.4228.0, 256
  br i1 %exitcond.not.i143582, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit155.thread, label %.lr.ph584

bb.bq:                                            ; preds = %.lr.ph584
  %exitcond.not.i143 = icmp eq i64 %i.ml, 256
  br i1 %exitcond.not.i143, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit155.thread, label %.lr.ph584

.lr.ph584:                                        ; preds = %bb.bp, %bb.bq
  %.sroa.4228.1583 = phi i64 [ %i.ml, %bb.bq ], [ %.sroa.4228.0, %bb.bp ] ; 5 uses
  %i.mk = trunc nuw i64 %.sroa.4228.1583 to i8
  %i.ml = add nuw nsw i64 %.sroa.4228.1583, 1     ; 3 uses
  %.lobit.i.i144 = lshr i64 %.sroa.4228.1583, 7
  %i.mm = and i8 %i.mk, 127
  %i.mn = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %.lobit.i.i144
  %i.mo = load i128, ptr %i.mn, align 16, !alias.scope !657, !noalias !658, !noundef !5
  %i.mp = zext nneg i8 %i.mm to i128
  %i.mq = shl nuw i128 1, %i.mp
  %i.mr = and i128 %i.mo, %i.mq
  %.not.i145 = icmp eq i128 %i.mr, 0
  br i1 %.not.i145, label %bb.bq, label %bb.br

bb.br:                                            ; preds = %.lr.ph584
  %i.ms = icmp ult i64 %.sroa.4228.1583, 256
  br i1 %i.ms, label %bb.bs, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit155.thread

bb.bs:                                            ; preds = %bb.br
  %i.mt = trunc nuw nsw i64 %.sroa.4228.1583 to i32
  %.sroa.417.0.insert.shift.i34 = shl nuw nsw i32 %i.mt, 8
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy14set_transition17hc3806a8fe9907783E(ptr nonnull %i.ac, ptr nonnull %i.ah, i32 noundef %spec.select.i27, i32 %.sroa.417.0.insert.shift.i34, i32 noundef %i.mj)
          to label %bb.bp unwind label %.body138.thread266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !515

bb.bt:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit155.thread
  %i.mu = load ptr, ptr %i.q, align 8, !noalias !643, !nonnull !5, !noundef !5 ; 3 uses
  %i.mv = load i64, ptr %i.hs, align 8, !noalias !643, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !659)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.mu, ptr %i.j, align 8, !noalias !659
  %i.mw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.mv, ptr %i.mw, align 8, !noalias !659
  %i.mx = load i64, ptr %i.bd, align 8, !alias.scope !659, !noundef !5 ; 3 uses
  %i.my = load i64, ptr %i.gm, align 8, !range !14, !alias.scope !659, !noundef !5
  %i.mz = icmp eq i64 %i.mx, %i.my
  br i1 %i.mz, label %bb.bu, label %bb.bz

bb.bu:                                            ; preds = %bb.bt
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5991c16c81e0b063E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gm)
          to label %bb.bz unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.na = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nb = atomicrmw add ptr %i.mu, i64 -1 release, align 8, !noalias !660
  %i.nc = icmp eq i64 %i.nb, 1
  br i1 %i.nc, label %bb.bw, label %.body138.thread

bb.bw:                                            ; preds = %bb.bv
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %.body138.thread unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable

bb.by:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit155.thread
  call void @llvm.trap()
  unreachable

bb.bz:                                            ; preds = %bb.bu, %bb.bt
  %i.ne = load ptr, ptr %i.gx, align 8, !alias.scope !659, !nonnull !5, !noundef !5
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %i.mx ; 2 uses
  store ptr %i.mu, ptr %i.nf, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store i64 %i.mv, ptr %i.ng, align 8
  %i.nh = add i64 %i.mx, 1
  store i64 %i.nh, ptr %i.bd, align 8, !alias.scope !659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ni = load ptr, ptr %i.q, align 8, !noalias !643, !nonnull !5, !noundef !5
  %i.nj = load i64, ptr %i.hs, align 8, !noalias !643, !noundef !5
  %i.nk = invoke { i32, i32 } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2d1fa52a1f342d3dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.he, ptr noundef nonnull %i.ni, i64 noundef %i.nj, i32 noundef %spec.select.i27)
          to label %bb.cf unwind label %.body174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !515 ; 0 uses

_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit166.thread: ; preds = %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit166.thread_crit_edge, %bb.az, %bb.av
  %i.nl = phi ptr [ %.pre338, %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit166.thread_crit_edge ], [ %i.ak, %bb.az ], [ %i.ak, %bb.av ]
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.nm = atomicrmw add ptr %i.nl, i64 -1 release, align 8, !noalias !653
  %i.nn = icmp eq i64 %i.nm, 1
  br i1 %i.nn, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit166.thread
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %bb.ce unwind label %.body174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body138.thread:                                  ; preds = %.body138.thread266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bw, %bb.bv
  %eh.lpad-body139263 = phi { ptr, i32 } [ %i.na, %bb.bw ], [ %i.na, %bb.bv ], [ %lpad.loopexit.split-lp623, %.body138.thread266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %i.no = load ptr, ptr %i.q, align 8, !alias.scope !667, !nonnull !5, !noundef !5
  %i.np = atomicrmw add ptr %i.no, i64 -1 release, align 8, !noalias !667
  %i.nq = icmp eq i64 %i.np, 1
  br i1 %i.nq, label %bb.cb, label %.body.thread

bb.cb:                                            ; preds = %.body138.thread
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %.body.thread unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.nr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !inline_history !515
  unreachable

bb.cd:                                            ; preds = %bb.aq
  call void @llvm.trap()
  unreachable

bb.ce:                                            ; preds = %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit166.thread, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %.invoke389.a

bb.cf:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i32 %spec.select.i27, ptr %i.z, align 4
  %i.ns = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8
  %i.nt = icmp slt i64 %i.ns, 0
  br i1 %i.nt, label %bb.dq, label %bb.cg

.body174.thread281.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.df, %.invoke544, %bb.cw, %bb.ci, %bb.cy, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i416"
  %lpad.loopexit.split-lp616 = landingpad { ptr, i32 }
          cleanup
  br label %.body174.thread

.body174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ee, %bb.ef, %bb.ed, %.invoke391, %.invoke389.a, %bb.bz, %bb.ca, %bb.dn, %bb.al, %bb.ak, %bb.dm
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.ak, ptr %i.p, align 8, !noalias !668
  %i.nu = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  store i64 %i.al, ptr %i.nu, align 8, !noalias !668
  %i.nv = load i64, ptr %i.ax, align 8, !alias.scope !669, !noalias !668, !noundef !5 ; 3 uses
  %i.nw = icmp ult i64 %i.nv, 2305843009213693952
  call void @llvm.assume(i1 %i.nw), !noalias !668
  %i.nx = load i64, ptr %i.ba, align 8, !alias.scope !669, !noalias !668, !noundef !5 ; 2 uses
  %i.ny = icmp ult i64 %i.nx, 2305843009213693952
  call void @llvm.assume(i1 %i.ny), !noalias !668
  %i.nz = load i64, ptr %i.bd, align 8, !alias.scope !669, !noalias !668, !noundef !5 ; 3 uses
  %i.oa = icmp ult i64 %i.nz, 576460752303423488
  call void @llvm.assume(i1 %i.oa), !noalias !668
  %i.ob = shl nuw nsw i64 %i.nz, 4
  %i.oc = load i64, ptr %i.bh, align 8, !alias.scope !669, !noalias !668, !noundef !5
  %i.od = mul i64 %i.oc, 20
  %i.oe = load i64, ptr %i.bk, align 8, !alias.scope !669, !noalias !668, !noundef !5 ; 2 uses
  %i.of = icmp ult i64 %i.oe, 2305843009213693952
  call void @llvm.assume(i1 %i.of), !noalias !668
  %i.og = load i64, ptr %i.bn, align 8, !alias.scope !669, !noalias !668, !noundef !5 ; 2 uses
  %i.oh = icmp ult i64 %i.og, 2305843009213693952
  call void @llvm.assume(i1 %i.oh), !noalias !668
  %i.oi = load i64, ptr %i.bq, align 8, !alias.scope !669, !noalias !668, !noundef !5 ; 2 uses
  %i.oj = icmp ult i64 %i.oi, 2305843009213693952
  call void @llvm.assume(i1 %i.oj), !noalias !668
  %i.ok = load i64, ptr %i.bt, align 8, !alias.scope !669, !noalias !668, !noundef !5 ; 2 uses
  %i.ol = icmp ult i64 %i.ok, 2305843009213693952
  call void @llvm.assume(i1 %i.ol), !noalias !668
  %i.om = load i64, ptr %i.bw, align 8, !range !14, !alias.scope !669, !noalias !668, !noundef !5
  %i.on = load i64, ptr %i.by, align 8, !range !14, !alias.scope !669, !noalias !668, !noundef !5
  %i.oo = load i64, ptr %i.ca, align 8, !alias.scope !669, !noalias !668, !noundef !5
  %i.op = add nuw nsw i64 %i.nx, %i.nv
  %i.oq = add nuw nsw i64 %i.op, %i.oe
  %i.or = add nuw nsw i64 %i.oq, %i.og
  %i.os = add nuw i64 %i.or, %i.oi
  %i.ot = add nuw i64 %i.os, %i.ok
  %reass.add.i.i203 = add i64 %i.ot, %i.om
  %reass.mul.i.i204 = shl i64 %reass.add.i.i203, 2
  %i.ou = load i64, ptr %i.ch, align 8, !noalias !668, !noundef !5
  %i.ov = and i64 %i.ou, 63
  %i.ow = shl i64 4, %i.ov
  %i.ox = add i64 %i.ob, %i.cl
  %i.oy = add i64 %i.ox, %i.od
  %i.oz = add i64 %i.oy, %i.on
  %i.pa = add i64 %i.oz, %i.oo
  %i.pb = add i64 %i.pa, %reass.mul.i.i204
  %i.pc = add i64 %i.pb, %i.ow
  %i.pd = load i64, ptr %i.cs, align 16, !noalias !668, !noundef !5
  %.not291 = icmp ugt i64 %i.pc, %i.pd
  br i1 %.not291, label %bb.ch, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202

bb.ch:                                            ; preds = %bb.cg
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.pf = load i64, ptr %i.pe, align 16, !range !15, !noalias !670, !noundef !5
  %i.pg = icmp eq i64 %i.pf, 1
  br i1 %i.pg, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.co, %bb.cj, %bb.ch
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy11clear_cache17hb279f51be876bc4aE(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202_crit_edge unwind label %.body174.thread281.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !548

._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202_crit_edge: ; preds = %bb.ci
  %.pre504 = load i64, ptr %i.ax, align 8, !noalias !671
  br label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202

bb.cj:                                            ; preds = %bb.ch
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.pi = load i64, ptr %i.ph, align 8, !noalias !670
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ah, i64 336
  %i.pk = load i64, ptr %i.pj, align 8, !noalias !670, !noundef !5
  %.not14.i193 = icmp ult i64 %i.pk, %i.pi
  br i1 %.not14.i193, label %bb.ci, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.pm = load i64, ptr %i.pl, align 16, !range !15, !noalias !670, !noundef !5
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.po = load i64, ptr %i.pn, align 8, !noalias !670
  %i.pp = icmp eq i64 %i.pm, 1
  br i1 %i.pp, label %bb.cl, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202.thread

bb.cl:                                            ; preds = %bb.ck
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ah, i64 344
  %i.pr = load i64, ptr %i.pq, align 8, !alias.scope !672, !noalias !670, !noundef !5
  %i.ps = load i64, ptr %i.ah, align 8, !range !9, !alias.scope !672, !noalias !670, !noundef !5
  %i.pt = trunc nuw i64 %i.ps to i1
  br i1 %i.pt, label %bb.cm, label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i194

bb.cm:                                            ; preds = %bb.cl
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.val.i.i.i197 = load i64, ptr %i.pu, align 8, !alias.scope !673, !noalias !670, !noundef !5 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.val5.i.i.i198 = load i64, ptr %i.pv, align 8, !alias.scope !673, !noalias !670, !noundef !5 ; 3 uses
  %.not.i.i.i.i199 = icmp ugt i64 %.val.i.i.i197, %.val5.i.i.i198
  %5 = sub nuw i64 %.val5.i.i.i198, %.val.i.i.i197
  %i.pw = sub nuw i64 %.val.i.i.i197, %.val5.i.i.i198
  %.sroa.0.0.i.i.i.i200 = select i1 %.not.i.i.i.i199, i64 %i.pw, i64 %5
  br label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i194

_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i194: ; preds = %bb.cm, %bb.cl
  %.sroa.02.0.i.i.i195 = phi i64 [ %.sroa.0.0.i.i.i.i200, %bb.cm ], [ 0, %bb.cl ]
  %i.px = add i64 %.sroa.02.0.i.i.i195, %i.pr
  %i.py = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.po, i64 %i.nz) ; 2 uses
  %i.pz = extractvalue { i64, i1 } %i.py, 0
  %i.qa = extractvalue { i64, i1 } %i.py, 1
  br i1 %i.qa, label %bb.cn, label %bb.co, !prof !8

bb.cn:                                            ; preds = %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i194
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i194
  %.sroa.013.0.i196 = phi i64 [ -1, %bb.cn ], [ %i.pz, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i194 ]
  %i.qb = icmp ult i64 %i.px, %.sroa.013.0.i196
  br i1 %i.qb, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202.thread, label %bb.ci

_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202: ; preds = %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202_crit_edge, %bb.cg
  %i.qc = phi i64 [ %.pre504, %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202_crit_edge ], [ %i.nv, %bb.cg ] ; 3 uses
  %i.qd = icmp ult i64 %i.qc, 2305843009213693952
  call void @llvm.assume(i1 %i.qd)
  %i.qe = icmp samesign ugt i64 %i.qc, 134217727
  br i1 %i.qe, label %bb.cp, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i416"

bb.cp:                                            ; preds = %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.qg = load i64, ptr %i.qf, align 16, !range !15, !noalias !674, !noundef !5
  %i.qh = icmp eq i64 %i.qg, 1
  br i1 %i.qh, label %bb.cq, label %bb.cw

bb.cq:                                            ; preds = %bb.cp
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.qj = load i64, ptr %i.qi, align 8, !noalias !674
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ah, i64 336
  %i.ql = load i64, ptr %i.qk, align 8, !noalias !674, !noundef !5
  %.not14.i.i417 = icmp ult i64 %i.ql, %i.qj
  br i1 %.not14.i.i417, label %bb.cw, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.qn = load i64, ptr %i.qm, align 16, !range !15, !noalias !674, !noundef !5
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.qp = load i64, ptr %i.qo, align 8, !noalias !674
  %i.qq = icmp eq i64 %i.qn, 1
  br i1 %i.qq, label %bb.cs, label %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202.thread_crit_edge

bb.cs:                                            ; preds = %bb.cr
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ah, i64 344
  %i.qs = load i64, ptr %i.qr, align 8, !alias.scope !675, !noalias !674, !noundef !5
  %i.qt = load i64, ptr %i.ah, align 8, !range !9, !alias.scope !675, !noalias !674, !noundef !5
  %i.qu = trunc nuw i64 %i.qt to i1
  br i1 %i.qu, label %bb.ct, label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i418

bb.ct:                                            ; preds = %bb.cs
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.val.i.i.i421 = load i64, ptr %i.qv, align 8, !alias.scope !676, !noalias !674, !noundef !5 ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.val5.i.i.i422 = load i64, ptr %i.qw, align 8, !alias.scope !676, !noalias !674, !noundef !5 ; 3 uses
  %.not.i.i.i.i423 = icmp ugt i64 %.val.i.i.i421, %.val5.i.i.i422
  %6 = sub nuw i64 %.val5.i.i.i422, %.val.i.i.i421
  %i.qx = sub nuw i64 %.val.i.i.i421, %.val5.i.i.i422
  %.sroa.0.0.i.i.i.i424 = select i1 %.not.i.i.i.i423, i64 %i.qx, i64 %6
  br label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i418

_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i418: ; preds = %bb.ct, %bb.cs
  %.sroa.02.0.i.i.i419 = phi i64 [ %.sroa.0.0.i.i.i.i424, %bb.ct ], [ 0, %bb.cs ]
  %i.qy = add i64 %.sroa.02.0.i.i.i419, %i.qs
  %i.qz = load i64, ptr %i.bd, align 8, !noalias !674, !noundef !5 ; 2 uses
  %i.ra = icmp ult i64 %i.qz, 576460752303423488
  call void @llvm.assume(i1 %i.ra)
  %i.rb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.qp, i64 %i.qz) ; 2 uses
  %i.rc = extractvalue { i64, i1 } %i.rb, 0
  %i.rd = extractvalue { i64, i1 } %i.rb, 1
  br i1 %i.rd, label %bb.cu, label %bb.cv, !prof !8

bb.cu:                                            ; preds = %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i418
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i418
  %.sroa.013.0.i.i420 = phi i64 [ -1, %bb.cu ], [ %i.rc, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i418 ]
  %i.re = icmp ult i64 %i.qy, %.sroa.013.0.i.i420
  br i1 %i.re, label %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202.thread_crit_edge, label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cq, %bb.cp
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy11clear_cache17hb279f51be876bc4aE(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %.noexc425 unwind label %.body174.thread281.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !561

.noexc425:                                        ; preds = %bb.cw
  %i.rf = load i64, ptr %i.ax, align 8, !noalias !671, !noundef !5 ; 4 uses
  %i.rg = icmp ult i64 %i.rf, 2305843009213693952
  call void @llvm.assume(i1 %i.rg)
  %i.rh = icmp samesign ugt i64 %i.rf, 134217727
  br i1 %i.rh, label %bb.cx, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i416"

bb.cx:                                            ; preds = %.noexc425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !677
  store i64 %i.rf, ptr %i.b, align 8, !noalias !677
  br label %.invoke544

.invoke544:                                       ; preds = %bb.dc, %bb.db, %bb.cx
  %i.ri = phi ptr [ %i.b, %bb.cx ], [ %i.e, %bb.dc ], [ %i.f, %bb.db ]
  %i.rj = phi ptr [ @45, %bb.cx ], [ @72, %bb.dc ], [ @71, %bb.db ]
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @78, i64 noundef 43, ptr noundef nonnull align 1 %i.ri, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rj) #27
          to label %.cont545 unwind label %.body174.thread281.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !561

.cont545:                                         ; preds = %.invoke544
  unreachable

._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202.thread_crit_edge: ; preds = %bb.cv, %bb.cr
  %.pre = load ptr, ptr %i.p, align 8, !alias.scope !678
  br label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202.thread

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i416": ; preds = %.noexc425, %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202
  %.sroa.3.0.i414.in = phi i64 [ %i.qc, %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202 ], [ %i.rf, %.noexc425 ]
  %i.rk = invoke noundef zeroext i1 @_ZN14regex_automata4util11determinize5state5State8is_match17hd3f2f536a5195b03E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p)
          to label %bb.cy unwind label %.body174.thread281.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !571

bb.cy:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i416"
  %.sroa.3.0.i414 = trunc nuw nsw i64 %.sroa.3.0.i414.in to i32
  %spec.select.i45.v = select i1 %i.rk, i32 671088640, i32 536870912
  %spec.select.i45 = or disjoint i32 %spec.select.i45.v, %.sroa.3.0.i414 ; 7 uses
  %i.rl = load i64, ptr %i.ch, align 8, !noundef !5
  %i.rm = and i64 %i.rl, 63
  %i.rn = shl nuw i64 1, %i.rm
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h41b73a1e93305a60E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fb, i64 noundef %i.rn, i32 noundef -2147483648)
          to label %bb.cz unwind label %.body174.thread281.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !571

bb.cz:                                            ; preds = %bb.cy
  %i.ro = load i128, ptr %i.ff, align 1
  %i.rp = getelementptr i8, ptr %i.ff, i64 16
  %i.rq = load i128, ptr %i.rp, align 1
  %i.rr = or i128 %i.ro, %i.rq
  %i.rs = icmp ne i128 %i.rr, 0
  %i.rt = zext i1 %i.rs to i32
  %i.ru = icmp eq i32 %i.rt, 0
  br i1 %i.ru, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit191.thread, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.rv = load i64, ptr %i.ch, align 8, !noalias !679, !noundef !5
  %i.rw = and i64 %i.rv, 63                       ; 4 uses
  %i.rx = icmp samesign ugt i64 %i.rw, 26
  br i1 %i.rx, label %bb.db, label %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i186

bb.db:                                            ; preds = %bb.da
  %i.ry = shl nuw i64 1, %i.rw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !680
  store i64 %i.ry, ptr %i.f, align 8, !noalias !680
  br label %.invoke544

_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i186: ; preds = %bb.da
  %i.rz = shl nuw nsw i64 2, %i.rw                ; 2 uses
  %i.sa = icmp eq i64 %i.rw, 26
  br i1 %i.sa, label %bb.dc, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit191

bb.dc:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !681
  store i64 %i.rz, ptr %i.e, align 8, !noalias !681
  br label %.invoke544

_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit191.thread: ; preds = %bb.de, %.preheader, %bb.dd, %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit191, %bb.cz
  %i.sb = load i64, ptr %i.nu, align 8, !noalias !668, !noundef !5
  %i.sc = load i64, ptr %i.ca, align 8, !noundef !5
  %i.sd = add i64 %i.sc, %i.sb
  store i64 %i.sd, ptr %i.ca, align 8
  %i.se = load ptr, ptr %i.p, align 8, !noalias !668, !nonnull !5, !noundef !5
  %i.sf = atomicrmw add ptr %i.se, i64 1 monotonic, align 8
  %i.sg = icmp slt i64 %i.sf, 0
  br i1 %i.sg, label %bb.dl, label %bb.dg

_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit191: ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i186
  %i.sh = trunc nuw nsw i64 %i.rz to i32
  %i.si = or disjoint i32 %i.sh, 536870912        ; 2 uses
  %i.sj = icmp eq i32 %spec.select.i45, %i.si
  br i1 %i.sj, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit191.thread, label %.preheader

.preheader:                                       ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit191, %bb.df
  %.sroa.4238.0 = phi i64 [ %i.sl, %bb.df ], [ 0, %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit191 ] ; 2 uses
  %exitcond.not.i179586 = icmp eq i64 %.sroa.4238.0, 256
  br i1 %exitcond.not.i179586, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit191.thread, label %.lr.ph588

bb.dd:                                            ; preds = %.lr.ph588
  %exitcond.not.i179 = icmp eq i64 %i.sl, 256
  br i1 %exitcond.not.i179, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit191.thread, label %.lr.ph588

.lr.ph588:                                        ; preds = %.preheader, %bb.dd
  %.sroa.4238.1587 = phi i64 [ %i.sl, %bb.dd ], [ %.sroa.4238.0, %.preheader ] ; 5 uses
  %i.sk = trunc nuw i64 %.sroa.4238.1587 to i8
  %i.sl = add nuw nsw i64 %.sroa.4238.1587, 1     ; 3 uses
  %.lobit.i.i180 = lshr i64 %.sroa.4238.1587, 7
  %i.sm = and i8 %i.sk, 127
  %i.sn = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %.lobit.i.i180
  %i.so = load i128, ptr %i.sn, align 16, !alias.scope !682, !noalias !683, !noundef !5
  %i.sp = zext nneg i8 %i.sm to i128
  %i.sq = shl nuw i128 1, %i.sp
  %i.sr = and i128 %i.so, %i.sq
  %.not.i181 = icmp eq i128 %i.sr, 0
  br i1 %.not.i181, label %bb.dd, label %bb.de

bb.de:                                            ; preds = %.lr.ph588
  %i.ss = icmp ult i64 %.sroa.4238.1587, 256
  br i1 %i.ss, label %bb.df, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit191.thread

bb.df:                                            ; preds = %bb.de
  %i.st = trunc nuw nsw i64 %.sroa.4238.1587 to i32
  %.sroa.417.0.insert.shift.i52 = shl nuw nsw i32 %i.st, 8
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy14set_transition17hc3806a8fe9907783E(ptr nonnull %i.ac, ptr nonnull %i.ah, i32 noundef %spec.select.i45, i32 %.sroa.417.0.insert.shift.i52, i32 noundef %i.si)
          to label %.preheader unwind label %.body174.thread281.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !571

bb.dg:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit191.thread
  %i.su = load ptr, ptr %i.p, align 8, !noalias !668, !nonnull !5, !noundef !5 ; 3 uses
  %i.sv = load i64, ptr %i.nu, align 8, !noalias !668, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.su, ptr %i.g, align 8, !noalias !684
  %i.sw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.sv, ptr %i.sw, align 8, !noalias !684
  %i.sx = load i64, ptr %i.bd, align 8, !alias.scope !684, !noundef !5 ; 3 uses
  %i.sy = load i64, ptr %i.gm, align 8, !range !14, !alias.scope !684, !noundef !5
  %i.sz = icmp eq i64 %i.sx, %i.sy
  br i1 %i.sz, label %bb.dh, label %bb.dm

bb.dh:                                            ; preds = %bb.dg
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5991c16c81e0b063E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gm)
          to label %bb.dm unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ta = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tb = atomicrmw add ptr %i.su, i64 -1 release, align 8, !noalias !685
  %i.tc = icmp eq i64 %i.tb, 1
  br i1 %i.tc, label %bb.dj, label %.body174.thread

bb.dj:                                            ; preds = %bb.di
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.body174.thread unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.td = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable

bb.dl:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit191.thread
  call void @llvm.trap()
  unreachable

bb.dm:                                            ; preds = %bb.dh, %bb.dg
  %i.te = load ptr, ptr %i.gx, align 8, !alias.scope !684, !nonnull !5, !noundef !5
  %i.tf = getelementptr inbounds nuw [16 x i8], ptr %i.te, i64 %i.sx ; 2 uses
  store ptr %i.su, ptr %i.tf, align 8
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  store i64 %i.sv, ptr %i.tg, align 8
  %i.th = add i64 %i.sx, 1
  store i64 %i.th, ptr %i.bd, align 8, !alias.scope !684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ti = load ptr, ptr %i.p, align 8, !noalias !668, !nonnull !5, !noundef !5
  %i.tj = load i64, ptr %i.nu, align 8, !noalias !668, !noundef !5
  %i.tk = invoke { i32, i32 } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2d1fa52a1f342d3dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.he, ptr noundef nonnull %i.ti, i64 noundef %i.tj, i32 noundef %spec.select.i45)
          to label %bb.ds unwind label %.body174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !571 ; 0 uses

_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202.thread: ; preds = %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202.thread_crit_edge, %bb.co, %bb.ck
  %i.tl = phi ptr [ %.pre, %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit202.thread_crit_edge ], [ %i.ak, %bb.co ], [ %i.ak, %bb.ck ]
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  call void @llvm.experimental.noalias.scope.decl(metadata !688)
end_hunk_0
begin_hunk_1_@_ZN14regex_automata6hybrid3dfa4Lazy11clear_cache17hb279f51be876bc4aE:bb.a
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.c ], [ %eh.lpad-body3467, %bb.av ], [ %i.ib, %.thread ], [ %eh.lpad-body3467, %.body33.thread ], [ %lpad.thr_comm, %bb.ba ], [ %lpad.thr_comm, %bb.bb ], [ %i.z, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit8.i" ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable

"_ZN4core3ptr78drop_in_place$LT$$u5b$regex_automata..util..determinize..state..State$u5d$$GT$17hc4c990ce99349a12E.exit": ; preds = %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17hef8a9852c9554de6E.exit.i", %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 280 ; 2 uses
  tail call void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17h15d435266d124dffE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 328 ; 4 uses
  store i64 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 336 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8, !noundef !5
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 344 ; 3 uses
  store i64 0, ptr %i.an, align 8
  %i.ao = load i64, ptr %i.l, align 8, !range !9, !noundef !5
  %i.ap = trunc nuw i64 %i.ao to i1
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %"_ZN4core3ptr78drop_in_place$LT$$u5b$regex_automata..util..determinize..state..State$u5d$$GT$17hc4c990ce99349a12E.exit"
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noundef !5
  store i64 %i.as, ptr %i.aq, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %"_ZN4core3ptr78drop_in_place$LT$$u5b$regex_automata..util..determinize..state..State$u5d$$GT$17hc4c990ce99349a12E.exit"
  tail call fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy10init_cache17h6ba1ae51ca18670dE(ptr noalias noundef align 8 dereferenceable(16) %0)
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 256 ; 5 uses
  %.sroa.09.0.copyload = load i32, ptr %i.at, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 260 ; 3 uses
  %.sroa.510.0.copyload = load i32, ptr %.sroa.510.0..sroa_idx, align 4 ; 4 uses
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 264 ; 3 uses
  %.sroa.611.0.copyload = load ptr, ptr %.sroa.611.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 272
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  store i32 0, ptr %i.at, align 8
  %i.au = icmp eq i32 %.sroa.09.0.copyload, 1
  br i1 %i.au, label %bb.h, label %bb.bd

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.611.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %.sroa.611.0.copyload, ptr %i.j, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sroa.7.0.copyload, ptr %i.av, align 8
  %i.aw = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 12 uses
  %i.ax = icmp eq i32 %.sroa.510.0.copyload, -2147483648
  br i1 %i.ax, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread, label %bb.i, !prof !806

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 696 ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8, !noalias !807, !noundef !5
  %i.ba = and i64 %i.az, 63                       ; 5 uses
  %i.bb = shl nuw i64 1, %i.ba                    ; 2 uses
  %i.bc = icmp samesign ugt i64 %i.ba, 26
  br i1 %i.bc, label %bb.j, label %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !808
  store i64 %i.bb, ptr %i.h, align 8, !noalias !808
  br label %.invoke97

_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i: ; preds = %bb.i
  %i.bd = trunc nuw nsw i64 %i.bb to i32
  %i.be = or i32 %i.bd, 1073741824
  %i.bf = icmp eq i32 %.sroa.510.0.copyload, %i.be
  br i1 %i.bf, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread, label %bb.k, !prof !806

bb.k:                                             ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i
  %i.bg = shl nuw nsw i64 2, %i.ba                ; 2 uses
  %i.bh = icmp eq i64 %i.ba, 26
  br i1 %i.bh, label %bb.l, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !809
  store i64 %i.bg, ptr %i.g, align 8, !noalias !809
  br label %.invoke97

.invoke97:                                        ; preds = %bb.j, %bb.l
  %i.bi = phi ptr [ %i.g, %bb.l ], [ %i.h, %bb.j ]
  %i.bj = phi ptr [ @72, %bb.l ], [ @71, %bb.j ]
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @78, i64 noundef 43, ptr noundef nonnull align 1 %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj) #27
          to label %.cont98 unwind label %bb.ba

.cont98:                                          ; preds = %.invoke97
  unreachable

_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit: ; preds = %bb.k
  %i.bk = trunc nuw nsw i64 %i.bg to i32
  %i.bl = or disjoint i32 %i.bk, 536870912
  %i.bm = icmp eq i32 %.sroa.510.0.copyload, %i.bl
  br i1 %i.bm, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread, label %bb.m, !prof !810

.body33.thread70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %.invoke131, %bb.ac, %bb.o, %bb.ae, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i"
  %lpad.loopexit.split-lp141 = landingpad { ptr, i32 }
          cleanup
  br label %.body33.thread

bb.m:                                             ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.611.0.copyload, ptr %i.f, align 8, !noalias !811
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  store i64 %.sroa.7.0.copyload, ptr %i.bn, align 8, !noalias !811
  %i.bo = load i64, ptr %i.m, align 8, !alias.scope !812, !noalias !813, !noundef !5 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bp), !noalias !813
  %i.bq = load i64, ptr %i.n, align 8, !alias.scope !812, !noalias !813, !noundef !5 ; 2 uses
  %i.br = icmp ult i64 %i.bq, 2305843009213693952
  tail call void @llvm.assume(i1 %i.br), !noalias !813
  %i.bs = load i64, ptr %i.q, align 8, !alias.scope !812, !noalias !813, !noundef !5 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 576460752303423488
  tail call void @llvm.assume(i1 %i.bt), !noalias !813
  %i.bu = shl nuw nsw i64 %i.bs, 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 304
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !812, !noalias !813, !noundef !5
  %i.bx = mul i64 %i.bw, 20
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !812, !noalias !813, !noundef !5 ; 2 uses
  %i.ca = icmp ult i64 %i.bz, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ca), !noalias !813
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !812, !noalias !813, !noundef !5 ; 2 uses
  %i.cd = icmp ult i64 %i.cc, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cd), !noalias !813
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !812, !noalias !813, !noundef !5 ; 2 uses
  %i.cg = icmp ult i64 %i.cf, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cg), !noalias !813
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !812, !noalias !813, !noundef !5 ; 2 uses
  %i.cj = icmp ult i64 %i.ci, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cj), !noalias !813
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  %i.cl = load i64, ptr %i.ck, align 8, !range !14, !alias.scope !812, !noalias !813, !noundef !5
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  %i.cn = load i64, ptr %i.cm, align 8, !range !14, !alias.scope !812, !noalias !813, !noundef !5
  %i.co = load i64, ptr %i.aj, align 8, !alias.scope !812, !noalias !813, !noundef !5
  %i.cp = add nuw nsw i64 %i.bq, %i.bo
  %i.cq = add nuw nsw i64 %i.cp, %i.bz
  %i.cr = add nuw nsw i64 %i.cq, %i.cc
  %i.cs = add nuw i64 %i.cr, %i.cf
  %i.ct = add nuw i64 %i.cs, %i.ci
  %reass.add.i.i = add i64 %i.ct, %i.cl
  %reass.mul.i.i = shl i64 %reass.add.i.i, 2
  %i.cu = shl nuw nsw i64 4, %i.ba
  %i.cv = add i64 %.sroa.7.0.copyload, 36
  %i.cw = add i64 %i.cv, %i.cu
  %i.cx = add i64 %i.cw, %i.bu
  %i.cy = add i64 %i.cx, %i.bx
  %i.cz = add i64 %i.cy, %i.cn
  %i.da = add i64 %i.cz, %i.co
  %i.db = add i64 %i.da, %reass.mul.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aw, i64 704
  %i.dd = load i64, ptr %i.dc, align 16, !noalias !813, !noundef !5
  %.not = icmp ugt i64 %i.db, %i.dd
  br i1 %.not, label %bb.n, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit

bb.n:                                             ; preds = %bb.m
  %i.de = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.df = load i64, ptr %i.de, align 16, !range !15, !noalias !814, !noundef !5
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.u, %bb.p, %bb.n
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy11clear_cache17hb279f51be876bc4aE(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit_crit_edge unwind label %.body33.thread70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !732

._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit_crit_edge: ; preds = %bb.o
  %.pre118 = load i64, ptr %i.m, align 8, !noalias !815
  br label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit

bb.p:                                             ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.di = load i64, ptr %i.dh, align 8, !noalias !814
  %i.dj = load i64, ptr %i.ak, align 8, !noalias !814, !noundef !5
  %.not14.i = icmp ult i64 %i.dj, %i.di
  br i1 %.not14.i, label %bb.o, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.dl = load i64, ptr %i.dk, align 16, !range !15, !noalias !814, !noundef !5
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !814
  %i.do = icmp eq i64 %i.dl, 1
  br i1 %i.do, label %bb.r, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.dp = load i64, ptr %i.an, align 8, !alias.scope !816, !noalias !814, !noundef !5
  %i.dq = load i64, ptr %i.l, align 8, !range !9, !alias.scope !816, !noalias !814, !noundef !5
  %i.dr = trunc nuw i64 %i.dq to i1
  br i1 %i.dr, label %bb.s, label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i

bb.s:                                             ; preds = %bb.r
  %i.ds = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val.i.i.i = load i64, ptr %i.ds, align 8, !alias.scope !817, !noalias !814, !noundef !5 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val5.i.i.i = load i64, ptr %i.dt, align 8, !alias.scope !817, !noalias !814, !noundef !5 ; 3 uses
  %.not.i.i.i.i = icmp ugt i64 %.val.i.i.i, %.val5.i.i.i
  %1 = sub nuw i64 %.val5.i.i.i, %.val.i.i.i
  %i.du = sub nuw i64 %.val.i.i.i, %.val5.i.i.i
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 %i.du, i64 %1
  br label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i

_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i: ; preds = %bb.s, %bb.r
  %.sroa.02.0.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.s ], [ 0, %bb.r ]
  %i.dv = add i64 %.sroa.02.0.i.i.i, %i.dp
  %i.dw = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.dn, i64 %i.bs) ; 2 uses
  %i.dx = extractvalue { i64, i1 } %i.dw, 0
  %i.dy = extractvalue { i64, i1 } %i.dw, 1
  br i1 %i.dy, label %bb.t, label %bb.u, !prof !8

bb.t:                                             ; preds = %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i
  %.sroa.013.0.i = phi i64 [ -1, %bb.t ], [ %i.dx, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i ]
  %i.dz = icmp ult i64 %i.dv, %.sroa.013.0.i
  br i1 %i.dz, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread, label %bb.o

_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit: ; preds = %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit_crit_edge, %bb.m
  %i.ea = phi i64 [ %.pre118, %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit_crit_edge ], [ %i.bo, %bb.m ] ; 3 uses
  %i.eb = icmp ult i64 %i.ea, 2305843009213693952
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = icmp samesign ugt i64 %i.ea, 134217727
  br i1 %i.ec, label %bb.v, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i"

bb.v:                                             ; preds = %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ee = load i64, ptr %i.ed, align 16, !range !15, !noalias !818, !noundef !5
  %i.ef = icmp eq i64 %i.ee, 1
  br i1 %i.ef, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.eh = load i64, ptr %i.eg, align 8, !noalias !818
  %i.ei = load i64, ptr %i.ak, align 8, !noalias !818, !noundef !5
  %.not14.i.i = icmp ult i64 %i.ei, %i.eh
  br i1 %.not14.i.i, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.ek = load i64, ptr %i.ej, align 16, !range !15, !noalias !818, !noundef !5
  %i.el = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  %i.em = load i64, ptr %i.el, align 8, !noalias !818
  %i.en = icmp eq i64 %i.ek, 1
  br i1 %i.en, label %bb.y, label %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread_crit_edge

bb.y:                                             ; preds = %bb.x
  %i.eo = load i64, ptr %i.an, align 8, !alias.scope !819, !noalias !818, !noundef !5
  %i.ep = load i64, ptr %i.l, align 8, !range !9, !alias.scope !819, !noalias !818, !noundef !5
  %i.eq = trunc nuw i64 %i.ep to i1
  br i1 %i.eq, label %bb.z, label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i99

bb.z:                                             ; preds = %bb.y
  %i.er = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val.i.i.i101 = load i64, ptr %i.er, align 8, !alias.scope !820, !noalias !818, !noundef !5 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val5.i.i.i102 = load i64, ptr %i.es, align 8, !alias.scope !820, !noalias !818, !noundef !5 ; 3 uses
  %.not.i.i.i.i103 = icmp ugt i64 %.val.i.i.i101, %.val5.i.i.i102
  %2 = sub nuw i64 %.val5.i.i.i102, %.val.i.i.i101
  %i.et = sub nuw i64 %.val.i.i.i101, %.val5.i.i.i102
  %.sroa.0.0.i.i.i.i104 = select i1 %.not.i.i.i.i103, i64 %i.et, i64 %2
  br label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i99

_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i99: ; preds = %bb.z, %bb.y
  %.sroa.02.0.i.i.i100 = phi i64 [ %.sroa.0.0.i.i.i.i104, %bb.z ], [ 0, %bb.y ]
  %i.eu = add i64 %.sroa.02.0.i.i.i100, %i.eo
  %i.ev = load i64, ptr %i.q, align 8, !noalias !818, !noundef !5 ; 2 uses
  %i.ew = icmp ult i64 %i.ev, 576460752303423488
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.em, i64 %i.ev) ; 2 uses
  %i.ey = extractvalue { i64, i1 } %i.ex, 0
  %i.ez = extractvalue { i64, i1 } %i.ex, 1
  br i1 %i.ez, label %bb.aa, label %bb.ab, !prof !8

bb.aa:                                            ; preds = %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i99
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i99
  %.sroa.013.0.i.i = phi i64 [ -1, %bb.aa ], [ %i.ey, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i99 ]
  %i.fa = icmp ult i64 %i.eu, %.sroa.013.0.i.i
  br i1 %i.fa, label %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread_crit_edge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.w, %bb.v
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy11clear_cache17hb279f51be876bc4aE(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %.noexc unwind label %.body33.thread70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !745

.noexc:                                           ; preds = %bb.ac
  %i.fb = load i64, ptr %i.m, align 8, !noalias !815, !noundef !5 ; 4 uses
  %i.fc = icmp ult i64 %i.fb, 2305843009213693952
  tail call void @llvm.assume(i1 %i.fc)
  %i.fd = icmp samesign ugt i64 %i.fb, 134217727
  br i1 %i.fd, label %bb.ad, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i"

bb.ad:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !821
  store i64 %i.fb, ptr %i.b, align 8, !noalias !821
  br label %.invoke131

.invoke131:                                       ; preds = %bb.ai, %bb.ah, %bb.ad
  %i.fe = phi ptr [ %i.b, %bb.ad ], [ %i.c, %bb.ai ], [ %i.d, %bb.ah ]
  %i.ff = phi ptr [ @45, %bb.ad ], [ @72, %bb.ai ], [ @71, %bb.ah ]
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @78, i64 noundef 43, ptr noundef nonnull align 1 %i.fe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ff) #27
          to label %.cont132 unwind label %.body33.thread70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !745

.cont132:                                         ; preds = %.invoke131
  unreachable

._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread_crit_edge: ; preds = %bb.ab, %bb.x
  %.pre = load ptr, ptr %i.f, align 8, !alias.scope !822
  br label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i": ; preds = %.noexc, %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit
  %.sroa.3.0.i.in = phi i64 [ %i.ea, %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit ], [ %i.fb, %.noexc ]
  %i.fg = invoke noundef zeroext i1 @_ZN14regex_automata4util11determinize5state5State8is_match17hd3f2f536a5195b03E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.ae unwind label %.body33.thread70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !755

bb.ae:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i"
  %.sroa.3.0.i = trunc nuw nsw i64 %.sroa.3.0.i.in to i32
  %i.fh = and i32 %.sroa.510.0.copyload, 268435456
  %.sroa.0.0.i42 = or disjoint i32 %i.fh, %.sroa.3.0.i ; 2 uses
  %i.fi = or disjoint i32 %.sroa.0.0.i42, 134217728
  %spec.select.i = select i1 %i.fg, i32 %i.fi, i32 %.sroa.0.0.i42 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.fk = load i64, ptr %i.ay, align 8, !noundef !5
  %i.fl = and i64 %i.fk, 63
  %i.fm = shl nuw i64 1, %i.fl
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h41b73a1e93305a60E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fj, i64 noundef %i.fm, i32 noundef -2147483648)
          to label %bb.af unwind label %.body33.thread70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !755

bb.af:                                            ; preds = %bb.ae
  %i.fn = getelementptr inbounds nuw i8, ptr %i.aw, i64 656 ; 3 uses
  %i.fo = load i128, ptr %i.fn, align 1
  %i.fp = getelementptr i8, ptr %i.fn, i64 16
  %i.fq = load i128, ptr %i.fp, align 1
  %i.fr = or i128 %i.fo, %i.fq
  %i.fs = icmp ne i128 %i.fr, 0
  %i.ft = zext i1 %i.fs to i32
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit41.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fv = load i64, ptr %i.ay, align 8, !noalias !823, !noundef !5
  %i.fw = and i64 %i.fv, 63                       ; 4 uses
  %i.fx = icmp samesign ugt i64 %i.fw, 26
  br i1 %i.fx, label %bb.ah, label %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i36

bb.ah:                                            ; preds = %bb.ag
  %i.fy = shl nuw i64 1, %i.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !824
  store i64 %i.fy, ptr %i.d, align 8, !noalias !824
  br label %.invoke131

_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i36: ; preds = %bb.ag
  %i.fz = shl nuw nsw i64 2, %i.fw                ; 2 uses
  %i.ga = icmp eq i64 %i.fw, 26
  br i1 %i.ga, label %bb.ai, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit41

bb.ai:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !825
  store i64 %i.fz, ptr %i.c, align 8, !noalias !825
  br label %.invoke131

_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit41.thread: ; preds = %bb.al, %bb.aj, %bb.ak, %bb.af
  %i.gb = load i64, ptr %i.bn, align 8, !noalias !811, !noundef !5
  %i.gc = load i64, ptr %i.aj, align 8, !noundef !5
  %i.gd = add i64 %i.gc, %i.gb
  store i64 %i.gd, ptr %i.aj, align 8
  %i.ge = load ptr, ptr %i.f, align 8, !noalias !811, !nonnull !5, !noundef !5
  %i.gf = atomicrmw add ptr %i.ge, i64 1 monotonic, align 8
  %i.gg = icmp slt i64 %i.gf, 0
  br i1 %i.gg, label %bb.as, label %bb.an

_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit41: ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i36
  %i.gh = trunc nuw nsw i64 %i.fz to i32
  %i.gi = or disjoint i32 %i.gh, 536870912
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit41, %bb.am
  %.sroa.452.0 = phi i64 [ %i.gk, %bb.am ], [ 0, %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit41 ] ; 2 uses
  %exitcond.not.i137 = icmp eq i64 %.sroa.452.0, 256
  br i1 %exitcond.not.i137, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit41.thread, label %.lr.ph

bb.ak:                                            ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %i.gk, 256
  br i1 %exitcond.not.i, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit41.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aj, %bb.ak
  %.sroa.452.1138 = phi i64 [ %i.gk, %bb.ak ], [ %.sroa.452.0, %bb.aj ] ; 5 uses
  %i.gj = trunc nuw i64 %.sroa.452.1138 to i8
  %i.gk = add nuw nsw i64 %.sroa.452.1138, 1      ; 3 uses
  %.lobit.i.i = lshr i64 %.sroa.452.1138, 7
  %i.gl = and i8 %i.gj, 127
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %i.fn, i64 %.lobit.i.i
  %i.gn = load i128, ptr %i.gm, align 16, !alias.scope !826, !noalias !827, !noundef !5
  %i.go = zext nneg i8 %i.gl to i128
  %i.gp = shl nuw i128 1, %i.go
  %i.gq = and i128 %i.gn, %i.gp
  %.not.i = icmp eq i128 %i.gq, 0
  br i1 %.not.i, label %bb.ak, label %bb.al

bb.al:                                            ; preds = %.lr.ph
  %i.gr = icmp ult i64 %.sroa.452.1138, 256
  br i1 %i.gr, label %bb.am, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit41.thread

bb.am:                                            ; preds = %bb.al
  %i.gs = trunc nuw nsw i64 %.sroa.452.1138 to i32
  %.sroa.417.0.insert.shift.i = shl nuw nsw i32 %i.gs, 8
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy14set_transition17hc3806a8fe9907783E(ptr nonnull %i.aw, ptr nonnull %i.l, i32 noundef %spec.select.i, i32 %.sroa.417.0.insert.shift.i, i32 noundef %i.gi)
          to label %bb.aj unwind label %.body33.thread70.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !755

bb.an:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit41.thread
  %i.gt = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 2 uses
  %i.gu = load ptr, ptr %i.f, align 8, !noalias !811, !nonnull !5, !noundef !5 ; 3 uses
  %i.gv = load i64, ptr %i.bn, align 8, !noalias !811, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !828)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.gu, ptr %i.e, align 8, !noalias !828
  %i.gw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.gv, ptr %i.gw, align 8, !noalias !828
  %i.gx = load i64, ptr %i.q, align 8, !alias.scope !828, !noundef !5 ; 3 uses
  %i.gy = load i64, ptr %i.gt, align 8, !range !14, !alias.scope !828, !noundef !5
  %i.gz = icmp eq i64 %i.gx, %i.gy
  br i1 %i.gz, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %bb.an
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5991c16c81e0b063E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gt)
          to label %bb.at unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ha = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hb = atomicrmw add ptr %i.gu, i64 -1 release, align 8, !noalias !829
  %i.hc = icmp eq i64 %i.hb, 1
  br i1 %i.hc, label %bb.aq, label %.body33.thread

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.body33.thread unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable

bb.as:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit41.thread
  call void @llvm.trap()
  unreachable

bb.at:                                            ; preds = %bb.ao, %bb.an
  %i.he = load ptr, ptr %i.o, align 8, !alias.scope !828, !nonnull !5, !noundef !5
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %i.he, i64 %i.gx ; 2 uses
  store ptr %i.gu, ptr %i.hf, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store i64 %i.gv, ptr %i.hg, align 8
  %i.hh = add i64 %i.gx, 1
  store i64 %i.hh, ptr %i.q, align 8, !alias.scope !828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.hi = load ptr, ptr %i.f, align 8, !noalias !811, !nonnull !5, !noundef !5
  %i.hj = load i64, ptr %i.bn, align 8, !noalias !811, !noundef !5
  %i.hk = call { i32, i32 } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2d1fa52a1f342d3dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull %i.hi, i64 noundef %i.hj, i32 noundef %spec.select.i), !inline_history !755 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !830)
  %i.hl = load i32, ptr %i.at, align 8, !range !20, !alias.scope !830, !noundef !5
end_hunk_1
begin_hunk_2_@_ZN14regex_automata6hybrid3dfa4Lazy16cache_next_state17h6c5cd5765dfc4aaeE:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %i.q, i64 280 ; 2 uses
  %i.cg = icmp eq i64 %i.ca, 0
  br i1 %i.cg, label %select.unfold.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 312
  %i.ci = invoke noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hb99f759386e1d3daE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ch, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cc, i64 noundef %i.ce)
          to label %.noexc.i unwind label %.body.thread33.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !955 ; 2 uses

.noexc.i:                                         ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !956)
  call void @llvm.experimental.noalias.scope.decl(metadata !957)
  %i.cj = lshr i64 %i.ci, 57
  %i.ck = trunc nuw nsw i64 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !958, !noalias !955, !noundef !5 ; 2 uses
  %i.cn = load ptr, ptr %i.cf, align 8, !alias.scope !958, !noalias !955, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.ck, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.noexc.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc.i ], [ %i.de, %bb.i ]
  %.pn.i.i.i = phi i64 [ %i.ci, %.noexc.i ], [ %i.df, %bb.i ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.cm ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.co, align 1, !noalias !959 ; 2 uses
  %i.cp = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %i.cq = bitcast <16 x i1> %i.cp to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.cq, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.h
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.dd, %bb.h ], [ %i.cq, %bb.g ] ; 3 uses
  %i.cr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.cs = zext nneg i16 %i.cr to i64
  %i.ct = add i64 %.sroa.01.0.i.i.i.i, %i.cs
  %i.cu = and i64 %i.ct, %i.cm
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = getelementptr inbounds [24 x i8], ptr %i.cn, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -24
  %i.cy = invoke noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hc5f9b252535ba185E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cc, i64 noundef %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx)
          to label %.noexc8.i unwind label %.body.thread33.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !955

.noexc8.i:                                        ; preds = %.lr.ph.i.i.i
  br i1 %i.cy, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6b08816dcab288c2E.exit.i", label %bb.h, !prof !13

._crit_edge.i.i.i:                                ; preds = %bb.h, %bb.g
  %i.cz = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.da = bitcast <16 x i1> %i.cz to i16
  %i.db = icmp eq i16 %i.da, 0
  br i1 %i.db, label %bb.i, label %select.unfold.i, !prof !8

bb.h:                                             ; preds = %.noexc8.i
  %i.dc = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.dd = and i16 %i.dc, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.de = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.df = add i64 %.sroa.01.0.i.i.i.i, %i.de
  br label %bb.g

.body.thread33.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i, %bb.at, %bb.as, %select.unfold.i, %bb.f
  %lpad.loopexit.split-lp109 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread28.i

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6b08816dcab288c2E.exit.i": ; preds = %.noexc8.i
  %i.dg = getelementptr inbounds i8, ptr %i.cw, i64 -8
  %i.dh = load i32, ptr %i.dg, align 4, !noalias !955, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 16, i1 false), !noalias !955
  store i64 0, ptr %.sroa.519.0..sroa_idx, align 8, !noalias !961
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h64d9003bd4dd77e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread84 unwind label %bb.j, !noalias !961

bb.j:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6b08816dcab288c2E.exit.i"
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3b98a42065343f1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread unwind label %bb.k, !noalias !961

bb.k:                                             ; preds = %bb.j
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !961
  unreachable

.thread84:                                        ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6b08816dcab288c2E.exit.i"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3b98a42065343f1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.bh

select.unfold.i:                                  ; preds = %._crit_edge.i.i.i, %bb.e
  %i.dk = invoke { ptr, i64 } @_ZN14regex_automata4util11determinize5state15StateBuilderNFA8to_state17hdb18552d9dec39bfE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %bb.l unwind label %.body.thread33.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !955 ; 2 uses

bb.l:                                             ; preds = %select.unfold.i
  %i.dl = extractvalue { ptr, i64 } %i.dk, 0
  %i.dm = extractvalue { ptr, i64 } %i.dk, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !962
  store ptr %i.dl, ptr %i.g, align 8, !noalias !963
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store i64 %i.dm, ptr %i.dn, align 8, !noalias !963
  %i.do = load i64, ptr %i.ah, align 8, !alias.scope !964, !noalias !965, !noundef !5 ; 3 uses
  %i.dp = icmp ult i64 %i.do, 2305843009213693952
  call void @llvm.assume(i1 %i.dp)
  %i.dq = load i64, ptr %i.ak, align 8, !alias.scope !964, !noalias !965, !noundef !5 ; 2 uses
  %i.dr = icmp ult i64 %i.dq, 2305843009213693952
  call void @llvm.assume(i1 %i.dr)
  %i.ds = load i64, ptr %i.w, align 8, !alias.scope !964, !noalias !965, !noundef !5 ; 3 uses
  %i.dt = icmp ult i64 %i.ds, 576460752303423488
  call void @llvm.assume(i1 %i.dt)
  %i.du = shl nuw nsw i64 %i.ds, 4
  %i.dv = load i64, ptr %i.aq, align 8, !alias.scope !964, !noalias !965, !noundef !5
  %i.dw = mul i64 %i.dv, 20
  %i.dx = load i64, ptr %i.at, align 8, !alias.scope !964, !noalias !965, !noundef !5 ; 2 uses
  %i.dy = icmp ult i64 %i.dx, 2305843009213693952
  call void @llvm.assume(i1 %i.dy)
  %i.dz = load i64, ptr %i.aw, align 8, !alias.scope !964, !noalias !965, !noundef !5 ; 2 uses
  %i.ea = icmp ult i64 %i.dz, 2305843009213693952
  call void @llvm.assume(i1 %i.ea)
  %i.eb = load i64, ptr %i.az, align 8, !alias.scope !964, !noalias !965, !noundef !5 ; 2 uses
  %i.ec = icmp ult i64 %i.eb, 2305843009213693952
  call void @llvm.assume(i1 %i.ec)
  %i.ed = load i64, ptr %i.bc, align 8, !alias.scope !964, !noalias !965, !noundef !5 ; 2 uses
  %i.ee = icmp ult i64 %i.ed, 2305843009213693952
  call void @llvm.assume(i1 %i.ee)
  %i.ef = load i64, ptr %i.ad, align 8, !range !14, !alias.scope !964, !noalias !965, !noundef !5
  %i.eg = load i64, ptr %i.r, align 8, !range !14, !alias.scope !964, !noalias !965, !noundef !5
  %i.eh = load i64, ptr %i.bh, align 8, !alias.scope !964, !noalias !965, !noundef !5
  %i.ei = add nuw nsw i64 %i.dq, %i.do
  %i.ej = add nuw nsw i64 %i.ei, %i.dx
  %i.ek = add nuw nsw i64 %i.ej, %i.dz
  %i.el = add nuw i64 %i.ek, %i.eb
  %i.em = add nuw i64 %i.el, %i.ed
  %reass.add.i.i.i.i = add i64 %i.em, %i.ef
  %reass.mul.i.i.i.i = shl i64 %reass.add.i.i.i.i, 2
  %i.en = load i64, ptr %i.n, align 8, !noalias !965, !noundef !5
  %i.eo = and i64 %i.en, 63
  %i.ep = shl i64 4, %i.eo
  %i.eq = add i64 %i.dm, 36
  %i.er = add i64 %i.eq, %i.du
  %i.es = add i64 %i.er, %i.dw
  %i.et = add i64 %i.es, %i.eg
  %i.eu = add i64 %i.et, %i.eh
  %i.ev = add i64 %i.eu, %reass.mul.i.i.i.i
  %i.ew = add i64 %i.ev, %i.ep
  %i.ex = load i64, ptr %i.by, align 16, !noalias !965, !noundef !5
  %.not.i10.i = icmp ugt i64 %i.ew, %i.ex
  br i1 %.not.i10.i, label %bb.m, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.i.i

.body.thread57.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.al, %bb.ad, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i.i.i", %.invoke.i.i, %bb.ab, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.m:                                             ; preds = %bb.l
  %i.ey = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.ez = load i64, ptr %i.ey, align 16, !range !15, !noalias !966, !noundef !5
  %i.fa = icmp eq i64 %i.ez, 1
  br i1 %i.fa, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.t, %bb.o, %bb.m
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy11clear_cache17hb279f51be876bc4aE(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit_crit_edge.i.i unwind label %.body.thread57.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit_crit_edge.i.i: ; preds = %bb.n
  %.pre.i.i = load i64, ptr %i.ah, align 8, !noalias !967
  br label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.fb = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !966
  %i.fd = getelementptr inbounds nuw i8, ptr %i.q, i64 336
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !966, !noundef !5
  %.not14.i.i.i = icmp ult i64 %i.fe, %i.fc
  br i1 %.not14.i.i.i, label %bb.n, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ff = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.fg = load i64, ptr %i.ff, align 16, !range !15, !noalias !966, !noundef !5
  %i.fh = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.fi = load i64, ptr %i.fh, align 8, !noalias !966
  %i.fj = icmp eq i64 %i.fg, 1
  br i1 %i.fj, label %bb.q, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread.i.i

bb.q:                                             ; preds = %bb.p
  %i.fk = getelementptr inbounds nuw i8, ptr %i.q, i64 344
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !968, !noalias !966, !noundef !5
  %i.fm = load i64, ptr %i.q, align 8, !range !9, !alias.scope !968, !noalias !966, !noundef !5
  %i.fn = trunc nuw i64 %i.fm to i1
  br i1 %i.fn, label %bb.r, label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.fo = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val.i.i.i.i.i = load i64, ptr %i.fo, align 8, !alias.scope !969, !noalias !966, !noundef !5 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val5.i.i.i.i.i = load i64, ptr %i.fp, align 8, !alias.scope !969, !noalias !966, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %.val.i.i.i.i.i, %.val5.i.i.i.i.i
  %3 = sub nuw i64 %.val5.i.i.i.i.i, %.val.i.i.i.i.i
  %i.fq = sub nuw i64 %.val.i.i.i.i.i, %.val5.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 %i.fq, i64 %3
  br label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i.i.i

_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %bb.r ], [ 0, %bb.q ]
  %i.fr = add i64 %.sroa.02.0.i.i.i.i.i, %i.fl
  %i.fs = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fi, i64 %i.ds) ; 2 uses
  %i.ft = extractvalue { i64, i1 } %i.fs, 0
  %i.fu = extractvalue { i64, i1 } %i.fs, 1
  br i1 %i.fu, label %bb.s, label %bb.t, !prof !8

bb.s:                                             ; preds = %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i.i.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i.i.i
  %.sroa.013.0.i.i.i = phi i64 [ -1, %bb.s ], [ %i.ft, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i.i.i ]
  %i.fv = icmp ult i64 %i.fr, %.sroa.013.0.i.i.i
  br i1 %i.fv, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread.i.i, label %bb.n

_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.i.i: ; preds = %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit_crit_edge.i.i, %bb.l
  %i.fw = phi i64 [ %.pre.i.i, %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit_crit_edge.i.i ], [ %i.do, %bb.l ] ; 3 uses
  %i.fx = icmp ult i64 %i.fw, 2305843009213693952
  call void @llvm.assume(i1 %i.fx)
  %i.fy = icmp samesign ugt i64 %i.fw, 134217727
  br i1 %i.fy, label %bb.u, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i.i.i"

bb.u:                                             ; preds = %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.ga = load i64, ptr %i.fz, align 16, !range !15, !noalias !970, !noundef !5
  %i.gb = icmp eq i64 %i.ga, 1
  br i1 %i.gb, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.gc = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.gd = load i64, ptr %i.gc, align 8, !noalias !970
  %i.ge = getelementptr inbounds nuw i8, ptr %i.q, i64 336
  %i.gf = load i64, ptr %i.ge, align 8, !noalias !970, !noundef !5
  %.not14.i.i.i.i = icmp ult i64 %i.gf, %i.gd
  br i1 %.not14.i.i.i.i, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gg = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.gh = load i64, ptr %i.gg, align 16, !range !15, !noalias !970, !noundef !5
  %i.gi = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.gj = load i64, ptr %i.gi, align 8, !noalias !970
  %i.gk = icmp eq i64 %i.gh, 1
  br i1 %i.gk, label %bb.x, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread.i.i

bb.x:                                             ; preds = %bb.w
  %i.gl = getelementptr inbounds nuw i8, ptr %i.q, i64 344
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !971, !noalias !970, !noundef !5
  %i.gn = load i64, ptr %i.q, align 8, !range !9, !alias.scope !971, !noalias !970, !noundef !5
  %i.go = trunc nuw i64 %i.gn to i1
  br i1 %i.go, label %bb.y, label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i30.i.i

bb.y:                                             ; preds = %bb.x
  %i.gp = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val.i.i.i32.i.i = load i64, ptr %i.gp, align 8, !alias.scope !972, !noalias !970, !noundef !5 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.val5.i.i.i33.i.i = load i64, ptr %i.gq, align 8, !alias.scope !972, !noalias !970, !noundef !5 ; 3 uses
  %.not.i.i.i.i34.i.i = icmp ugt i64 %.val.i.i.i32.i.i, %.val5.i.i.i33.i.i
  %4 = sub nuw i64 %.val5.i.i.i33.i.i, %.val.i.i.i32.i.i
  %i.gr = sub nuw i64 %.val.i.i.i32.i.i, %.val5.i.i.i33.i.i
  %.sroa.0.0.i.i.i.i35.i.i = select i1 %.not.i.i.i.i34.i.i, i64 %i.gr, i64 %4
  br label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i30.i.i

_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i30.i.i: ; preds = %bb.y, %bb.x
  %.sroa.02.0.i.i.i31.i.i = phi i64 [ %.sroa.0.0.i.i.i.i35.i.i, %bb.y ], [ 0, %bb.x ]
  %i.gs = add i64 %.sroa.02.0.i.i.i31.i.i, %i.gm
  %i.gt = load i64, ptr %i.w, align 8, !noalias !970, !noundef !5 ; 2 uses
  %i.gu = icmp ult i64 %i.gt, 576460752303423488
  call void @llvm.assume(i1 %i.gu)
  %i.gv = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gj, i64 %i.gt) ; 2 uses
  %i.gw = extractvalue { i64, i1 } %i.gv, 0
  %i.gx = extractvalue { i64, i1 } %i.gv, 1
  br i1 %i.gx, label %bb.z, label %bb.aa, !prof !8

bb.z:                                             ; preds = %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i30.i.i
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i30.i.i
  %.sroa.013.0.i.i.i.i = phi i64 [ -1, %bb.z ], [ %i.gw, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i30.i.i ]
  %i.gy = icmp ult i64 %i.gs, %.sroa.013.0.i.i.i.i
  br i1 %i.gy, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.v, %bb.u
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy11clear_cache17hb279f51be876bc4aE(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %.noexc36.i.i unwind label %.body.thread57.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1

.noexc36.i.i:                                     ; preds = %bb.ab
  %i.gz = load i64, ptr %i.ah, align 8, !noalias !967, !noundef !5 ; 4 uses
  %i.ha = icmp ult i64 %i.gz, 2305843009213693952
  call void @llvm.assume(i1 %i.ha)
  %i.hb = icmp samesign ugt i64 %i.gz, 134217727
  br i1 %i.hb, label %bb.ac, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i.i.i"

bb.ac:                                            ; preds = %.noexc36.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !973
  store i64 %i.gz, ptr %i.f, align 8, !noalias !973
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.ah, %bb.ag, %bb.ac
  %i.hc = phi ptr [ %i.f, %bb.ac ], [ %i.e, %bb.ag ], [ %i.d, %bb.ah ]
  %i.hd = phi ptr [ @45, %bb.ac ], [ @71, %bb.ag ], [ @72, %bb.ah ]
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @78, i64 noundef 43, ptr noundef nonnull align 1 %i.hc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hd) #27
          to label %.cont.i.i unwind label %.body.thread57.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !965, !inline_history !1

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i.i.i": ; preds = %.noexc36.i.i, %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.i.i
  %.sroa.3.0.i.in.i.i = phi i64 [ %i.fw, %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.i.i ], [ %i.gz, %.noexc36.i.i ]
  %i.he = invoke noundef zeroext i1 @_ZN14regex_automata4util11determinize5state5State8is_match17hd3f2f536a5195b03E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %bb.ad unwind label %.body.thread57.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !965

bb.ad:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i.i.i"
  %.sroa.3.0.i.i.i = trunc nuw nsw i64 %.sroa.3.0.i.in.i.i to i32 ; 2 uses
  %i.hf = or disjoint i32 %.sroa.3.0.i.i.i, 134217728
  %spec.select.i.i = select i1 %i.he, i32 %i.hf, i32 %.sroa.3.0.i.i.i ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.hh = load i64, ptr %i.n, align 8, !noalias !965, !noundef !5
  %i.hi = and i64 %i.hh, 63
  %i.hj = shl nuw i64 1, %i.hi
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h41b73a1e93305a60E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hg, i64 noundef %i.hj, i32 noundef -2147483648)
          to label %bb.ae unwind label %.body.thread57.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !965

bb.ae:                                            ; preds = %bb.ad
  %i.hk = getelementptr inbounds nuw i8, ptr %i.m, i64 656 ; 3 uses
  %i.hl = load i128, ptr %i.hk, align 1
  %i.hm = getelementptr i8, ptr %i.hk, i64 16
  %i.hn = load i128, ptr %i.hm, align 1
  %i.ho = or i128 %i.hl, %i.hn
  %i.hp = icmp ne i128 %i.ho, 0
  %i.hq = zext i1 %i.hp to i32
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hs = load i64, ptr %i.n, align 8, !noalias !974, !noundef !5
  %i.ht = and i64 %i.hs, 63                       ; 4 uses
  %i.hu = icmp samesign ugt i64 %i.ht, 26
  br i1 %i.hu, label %bb.ag, label %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.hv = shl nuw i64 1, %i.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !975
  store i64 %i.hv, ptr %i.e, align 8, !noalias !975
  br label %.invoke.i.i

_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i.i.i: ; preds = %bb.af
  %i.hw = icmp eq i64 %i.ht, 26
  br i1 %i.hw, label %bb.ah, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.i.i

bb.ah:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !976
  store i64 134217728, ptr %i.d, align 8, !noalias !976
  br label %.invoke.i.i

_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread.i.i: ; preds = %bb.ak, %bb.ai, %bb.aj, %bb.ae
  %i.hx = load i64, ptr %i.dn, align 8, !noalias !963, !noundef !5
  %i.hy = load i64, ptr %i.bh, align 8, !noalias !965, !noundef !5
  %i.hz = add i64 %i.hy, %i.hx
  store i64 %i.hz, ptr %i.bh, align 8, !noalias !965
  %i.ia = load ptr, ptr %i.g, align 8, !noalias !963, !nonnull !5, !noundef !5
  %i.ib = atomicrmw add ptr %i.ia, i64 1 monotonic, align 8, !noalias !965
  %i.ic = icmp slt i64 %i.ib, 0
  br i1 %i.ic, label %bb.ar, label %bb.am

_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.i.i: ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i.i.i
  %i.id = shl nuw nsw i64 2, %i.ht
  %i.ie = trunc nuw nsw i64 %i.id to i32
  %i.if = or disjoint i32 %i.ie, 536870912
  br label %bb.ai

bb.ai:                                            ; preds = %bb.al, %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.i.i
  %.sroa.452.0.i.i = phi i64 [ 0, %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.i.i ], [ %i.ih, %bb.al ] ; 2 uses
  %exitcond.not.i.i.i102 = icmp eq i64 %.sroa.452.0.i.i, 256
  br i1 %exitcond.not.i.i.i102, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread.i.i, label %.lr.ph

bb.aj:                                            ; preds = %.lr.ph
  %exitcond.not.i.i.i = icmp eq i64 %i.ih, 256
  br i1 %exitcond.not.i.i.i, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ai, %bb.aj
  %.sroa.452.1.i.i103 = phi i64 [ %i.ih, %bb.aj ], [ %.sroa.452.0.i.i, %bb.ai ] ; 5 uses
  %i.ig = trunc nuw i64 %.sroa.452.1.i.i103 to i8
  %i.ih = add nuw nsw i64 %.sroa.452.1.i.i103, 1  ; 3 uses
  %.lobit.i.i.i.i = lshr i64 %.sroa.452.1.i.i103, 7
  %i.ii = and i8 %i.ig, 127
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %.lobit.i.i.i.i
  %i.ik = load i128, ptr %i.ij, align 16, !alias.scope !977, !noalias !978, !noundef !5
  %i.il = zext nneg i8 %i.ii to i128
  %i.im = shl nuw i128 1, %i.il
  %i.in = and i128 %i.ik, %i.im
  %.not.i.i.i = icmp eq i128 %i.in, 0
  br i1 %.not.i.i.i, label %bb.aj, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph
  %i.io = icmp ult i64 %.sroa.452.1.i.i103, 256
  br i1 %i.io, label %bb.al, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread.i.i

bb.al:                                            ; preds = %bb.ak
  %i.ip = trunc nuw nsw i64 %.sroa.452.1.i.i103 to i32
  %.sroa.417.0.insert.shift.i.i = shl nuw nsw i32 %i.ip, 8
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy14set_transition17hc3806a8fe9907783E(ptr nonnull %i.m, ptr nonnull %i.q, i32 noundef %spec.select.i.i, i32 %.sroa.417.0.insert.shift.i.i, i32 noundef %i.if)
          to label %bb.ai unwind label %.body.thread57.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !965

bb.am:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 2 uses
  %i.ir = load ptr, ptr %i.g, align 8, !noalias !963, !nonnull !5, !noundef !5 ; 3 uses
  %i.is = load i64, ptr %i.dn, align 8, !noalias !963, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !979)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !963
  store ptr %i.ir, ptr %i.c, align 8, !noalias !980
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.is, ptr %i.it, align 8, !noalias !980
  %i.iu = load i64, ptr %i.w, align 8, !alias.scope !979, !noalias !965, !noundef !5 ; 3 uses
  %i.iv = load i64, ptr %i.iq, align 8, !range !14, !alias.scope !979, !noalias !965, !noundef !5
  %i.iw = icmp eq i64 %i.iu, %i.iv
  br i1 %i.iw, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5991c16c81e0b063E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iq)
          to label %bb.as unwind label %bb.ao, !noalias !965

bb.ao:                                            ; preds = %bb.an
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iy = atomicrmw add ptr %i.ir, i64 -1 release, align 8, !noalias !981
  %i.iz = icmp eq i64 %i.iy, 1
  br i1 %i.iz, label %bb.ap, label %.body.thread.i.i

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.body.thread.i.i unwind label %bb.aq, !noalias !965

bb.aq:                                            ; preds = %bb.ap
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !965
  unreachable

bb.ar:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread.i.i
  call void @llvm.trap()
  unreachable

bb.as:                                            ; preds = %bb.an, %bb.am
  %i.jb = load ptr, ptr %i.ab, align 8, !alias.scope !979, !noalias !965, !nonnull !5, !noundef !5
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.jb, i64 %i.iu ; 2 uses
  store ptr %i.ir, ptr %i.jc, align 8, !noalias !965
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store i64 %i.is, ptr %i.jd, align 8, !noalias !965
  %i.je = add i64 %i.iu, 1
  store i64 %i.je, ptr %i.w, align 8, !alias.scope !979, !noalias !965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !963
  %i.jf = load ptr, ptr %i.g, align 8, !noalias !963, !nonnull !5, !noundef !5
  %i.jg = load i64, ptr %i.dn, align 8, !noalias !963, !noundef !5
  %i.jh = invoke { i32, i32 } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2d1fa52a1f342d3dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef nonnull %i.jf, i64 noundef %i.jg, i32 noundef %spec.select.i.i)
          to label %bb.aw unwind label %.body.thread33.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !955 ; 0 uses

_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread.i.i: ; preds = %bb.aa, %bb.w, %bb.t, %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  call void @llvm.experimental.noalias.scope.decl(metadata !984)
  %i.ji = load ptr, ptr %i.g, align 8, !alias.scope !985, !noalias !963, !nonnull !5, !noundef !5
  %i.jj = atomicrmw add ptr %i.ji, i64 -1 release, align 8, !noalias !986
  %i.jk = icmp eq i64 %i.jj, 1
end_hunk_2
begin_hunk_3_@_ZN14regex_automata6hybrid3dfa4Lazy17cache_start_group17hf1db2c9e9fafa034E:bb.a
  %i.au = trunc nuw nsw i64 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 288
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !1091, !noalias !1088, !noundef !5 ; 2 uses
  %i.ax = load ptr, ptr %i.an, align 8, !alias.scope !1091, !noalias !1088, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.au, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.noexc.i.i
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %.noexc.i.i ], [ %i.bo, %bb.m ]
  %.pn.i.i.i.i = phi i64 [ %i.as, %.noexc.i.i ], [ %i.bp, %bb.m ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.aw ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i = load <16 x i8>, ptr %i.ay, align 1, !noalias !1092 ; 2 uses
  %i.az = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i
  %i.ba = bitcast <16 x i1> %i.az to i16          ; 2 uses
  %.not.i.not32.i.i.i.i = icmp eq i16 %i.ba, 0
  br i1 %.not.i.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %bb.l
  %.sroa.06.0.i33.i.i.i.i = phi i16 [ %i.bn, %bb.l ], [ %i.ba, %bb.k ] ; 3 uses
  %i.bb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i, i1 true)
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = add i64 %.sroa.01.0.i.i.i.i.i, %i.bc
  %i.be = and i64 %i.bd, %i.aw
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = getelementptr inbounds [24 x i8], ptr %i.ax, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -24
  %i.bi = invoke noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hc5f9b252535ba185E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ak, i64 noundef %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh)
          to label %.noexc8.i.i unwind label %.body.thread9.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1088

.noexc8.i.i:                                      ; preds = %.lr.ph.i.i.i.i
  br i1 %i.bi, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6b08816dcab288c2E.exit.i.i", label %bb.l, !prof !13

._crit_edge.i.i.i.i:                              ; preds = %bb.l, %bb.k
  %i.bj = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, splat (i8 -1)
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %i.bl = icmp eq i16 %i.bk, 0
  br i1 %i.bl, label %bb.m, label %select.unfold.i.i, !prof !8

bb.l:                                             ; preds = %.noexc8.i.i
  %i.bm = add i16 %.sroa.06.0.i33.i.i.i.i, -1
  %i.bn = and i16 %i.bm, %.sroa.06.0.i33.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.bn, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bo = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.bp = add i64 %.sroa.01.0.i.i.i.i.i, %i.bo
  br label %bb.k

.body.thread9.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i, %bb.ax, %bb.aw, %select.unfold.i.i, %bb.j
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread4.i.i

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6b08816dcab288c2E.exit.i.i": ; preds = %.noexc8.i.i
  %i.bq = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.br = load i32, ptr %i.bq, align 4, !noalias !1088, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1093
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !1094
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 16, i1 false), !noalias !1088
  store i64 0, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !1094
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h64d9003bd4dd77e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_ZN14regex_automata6hybrid3dfa4Lazy15cache_start_one17h73fa352594111a7cE.exit.thread unwind label %bb.n, !noalias !1094

bb.n:                                             ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6b08816dcab288c2E.exit.i.i"
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3b98a42065343f1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread.i unwind label %bb.o, !noalias !1094

bb.o:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !1094
  unreachable

_ZN14regex_automata6hybrid3dfa4Lazy15cache_start_one17h73fa352594111a7cE.exit.thread: ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6b08816dcab288c2E.exit.i.i"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3b98a42065343f1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !1084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bl

select.unfold.i.i:                                ; preds = %._crit_edge.i.i.i.i, %bb.i
  %i.bu = invoke { ptr, i64 } @_ZN14regex_automata4util11determinize5state15StateBuilderNFA8to_state17hdb18552d9dec39bfE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.p unwind label %.body.thread9.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1088 ; 2 uses

bb.p:                                             ; preds = %select.unfold.i.i
  %i.bv = extractvalue { ptr, i64 } %i.bu, 0
  %i.bw = extractvalue { ptr, i64 } %i.bu, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1087
  store ptr %i.bv, ptr %i.h, align 8, !noalias !1095
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store i64 %i.bw, ptr %i.bx, align 8, !noalias !1095
  %i.by = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !1096, !noalias !1097, !noundef !5 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 2305843009213693952
  call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !1096, !noalias !1097, !noundef !5 ; 2 uses
  %i.cd = icmp ult i64 %i.cc, 2305843009213693952
  call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aa, i64 88 ; 4 uses
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !1096, !noalias !1097, !noundef !5 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 576460752303423488
  call void @llvm.assume(i1 %i.cg)
  %i.ch = shl nuw nsw i64 %i.cf, 4
  %i.ci = load i64, ptr %i.ao, align 8, !alias.scope !1096, !noalias !1097, !noundef !5
  %i.cj = mul i64 %i.ci, 20
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !1096, !noalias !1097, !noundef !5 ; 2 uses
  %i.cm = icmp ult i64 %i.cl, 2305843009213693952
  call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !1096, !noalias !1097, !noundef !5 ; 2 uses
  %i.cp = icmp ult i64 %i.co, 2305843009213693952
  call void @llvm.assume(i1 %i.cp)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !1096, !noalias !1097, !noundef !5 ; 2 uses
  %i.cs = icmp ult i64 %i.cr, 2305843009213693952
  call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !1096, !noalias !1097, !noundef !5 ; 2 uses
  %i.cv = icmp ult i64 %i.cu, 2305843009213693952
  call void @llvm.assume(i1 %i.cv)
  %i.cw = load i64, ptr %i.af, align 8, !range !14, !alias.scope !1096, !noalias !1097, !noundef !5
  %i.cx = load i64, ptr %i.ab, align 8, !range !14, !alias.scope !1096, !noalias !1097, !noundef !5
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aa, i64 328 ; 3 uses
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !1096, !noalias !1097, !noundef !5
  %i.da = add nuw nsw i64 %i.cc, %i.bz
  %i.db = add nuw nsw i64 %i.da, %i.cl
  %i.dc = add nuw nsw i64 %i.db, %i.co
  %i.dd = add nuw i64 %i.dc, %i.cr
  %i.de = add nuw i64 %i.dd, %i.cu
  %reass.add.i.i.i.i.i = add i64 %i.de, %i.cw
  %reass.mul.i.i.i.i.i = shl i64 %reass.add.i.i.i.i.i, 2
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 696 ; 3 uses
  %i.dg = load i64, ptr %i.df, align 8, !noalias !1097, !noundef !5
  %i.dh = and i64 %i.dg, 63
  %i.di = shl i64 4, %i.dh
  %i.dj = add i64 %i.bw, 36
  %i.dk = add i64 %i.dj, %i.ch
  %i.dl = add i64 %i.dk, %i.cj
  %i.dm = add i64 %i.dl, %i.cx
  %i.dn = add i64 %i.dm, %i.cz
  %i.do = add i64 %i.dn, %reass.mul.i.i.i.i.i
  %i.dp = add i64 %i.do, %i.di
  %i.dq = getelementptr inbounds nuw i8, ptr %i.p, i64 704
  %i.dr = load i64, ptr %i.dq, align 16, !noalias !1097, !noundef !5
  %.not.i10.i.i = icmp ugt i64 %i.dp, %i.dr
  br i1 %.not.i10.i.i, label %bb.q, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.i.i.i

.body.thread60.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ap, %bb.ah, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i.i.i.i", %.invoke.i.i.i, %bb.af, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.dt = load i64, ptr %i.ds, align 16, !range !15, !noalias !1098, !noundef !5
  %i.du = icmp eq i64 %i.dt, 1
  br i1 %i.du, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.x, %bb.s, %bb.q
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy11clear_cache17hb279f51be876bc4aE(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit_crit_edge.i.i.i unwind label %.body.thread60.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1099, !inline_history !0

._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit_crit_edge.i.i.i: ; preds = %bb.r
  %.pre.i.i.i = load i64, ptr %i.by, align 8, !noalias !1100
  br label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.dv = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !1098
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aa, i64 336
  %i.dy = load i64, ptr %i.dx, align 8, !noalias !1098, !noundef !5
  %.not14.i.i.i.i = icmp ult i64 %i.dy, %i.dw
  br i1 %.not14.i.i.i.i, label %bb.r, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dz = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.ea = load i64, ptr %i.dz, align 16, !range !15, !noalias !1098, !noundef !5
  %i.eb = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !1098
  %i.ed = icmp eq i64 %i.ea, 1
  br i1 %i.ed, label %bb.u, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.ee = getelementptr inbounds nuw i8, ptr %i.aa, i64 344
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !1101, !noalias !1098, !noundef !5
  %i.eg = load i64, ptr %i.aa, align 8, !range !9, !alias.scope !1101, !noalias !1098, !noundef !5
  %i.eh = trunc nuw i64 %i.eg to i1
  br i1 %i.eh, label %bb.v, label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.val.i.i.i.i.i.i = load i64, ptr %i.ei, align 8, !alias.scope !1102, !noalias !1098, !noundef !5 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.val5.i.i.i.i.i.i = load i64, ptr %i.ej, align 8, !alias.scope !1102, !noalias !1098, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %.val.i.i.i.i.i.i, %.val5.i.i.i.i.i.i
  %4 = sub nuw i64 %.val5.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %i.ek = sub nuw i64 %.val.i.i.i.i.i.i, %.val5.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %i.ek, i64 %4
  br label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i.i.i.i

_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.v ], [ 0, %bb.u ]
  %i.el = add i64 %.sroa.02.0.i.i.i.i.i.i, %i.ef
  %i.em = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ec, i64 %i.cf) ; 2 uses
  %i.en = extractvalue { i64, i1 } %i.em, 0
  %i.eo = extractvalue { i64, i1 } %i.em, 1
  br i1 %i.eo, label %bb.w, label %bb.x, !prof !8

bb.w:                                             ; preds = %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i.i.i.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i.i.i.i
  %.sroa.013.0.i.i.i.i = phi i64 [ -1, %bb.w ], [ %i.en, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i.i.i.i ]
  %i.ep = icmp ult i64 %i.el, %.sroa.013.0.i.i.i.i
  br i1 %i.ep, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread.i.i.i, label %bb.r

_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.i.i.i: ; preds = %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit_crit_edge.i.i.i, %bb.p
  %i.eq = phi i64 [ %.pre.i.i.i, %._ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit_crit_edge.i.i.i ], [ %i.bz, %bb.p ] ; 3 uses
  %i.er = icmp ult i64 %i.eq, 2305843009213693952
  call void @llvm.assume(i1 %i.er)
  %i.es = icmp samesign ugt i64 %i.eq, 134217727
  br i1 %i.es, label %bb.y, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i.i.i.i"

bb.y:                                             ; preds = %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.eu = load i64, ptr %i.et, align 16, !range !15, !noalias !1103, !noundef !5
  %i.ev = icmp eq i64 %i.eu, 1
  br i1 %i.ev, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.ew = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !1103
  %i.ey = getelementptr inbounds nuw i8, ptr %i.aa, i64 336
  %i.ez = load i64, ptr %i.ey, align 8, !noalias !1103, !noundef !5
  %.not14.i.i.i.i.i = icmp ult i64 %i.ez, %i.ex
  br i1 %.not14.i.i.i.i.i, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fa = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.fb = load i64, ptr %i.fa, align 16, !range !15, !noalias !1103, !noundef !5
  %i.fc = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.fd = load i64, ptr %i.fc, align 8, !noalias !1103
  %i.fe = icmp eq i64 %i.fb, 1
  br i1 %i.fe, label %bb.ab, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.ff = getelementptr inbounds nuw i8, ptr %i.aa, i64 344
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !1104, !noalias !1103, !noundef !5
  %i.fh = load i64, ptr %i.aa, align 8, !range !9, !alias.scope !1104, !noalias !1103, !noundef !5
  %i.fi = trunc nuw i64 %i.fh to i1
  br i1 %i.fi, label %bb.ac, label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i31.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.fj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.val.i.i.i33.i.i.i = load i64, ptr %i.fj, align 8, !alias.scope !1105, !noalias !1103, !noundef !5 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.val5.i.i.i34.i.i.i = load i64, ptr %i.fk, align 8, !alias.scope !1105, !noalias !1103, !noundef !5 ; 3 uses
  %.not.i.i.i.i35.i.i.i = icmp ugt i64 %.val.i.i.i33.i.i.i, %.val5.i.i.i34.i.i.i
  %5 = sub nuw i64 %.val5.i.i.i34.i.i.i, %.val.i.i.i33.i.i.i
  %i.fl = sub nuw i64 %.val.i.i.i33.i.i.i, %.val5.i.i.i34.i.i.i
  %.sroa.0.0.i.i.i.i36.i.i.i = select i1 %.not.i.i.i.i35.i.i.i, i64 %i.fl, i64 %5
  br label %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i31.i.i.i

_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i31.i.i.i: ; preds = %bb.ac, %bb.ab
  %.sroa.02.0.i.i.i32.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i36.i.i.i, %bb.ac ], [ 0, %bb.ab ]
  %i.fm = add i64 %.sroa.02.0.i.i.i32.i.i.i, %i.fg
  %i.fn = load i64, ptr %i.ce, align 8, !noalias !1103, !noundef !5 ; 2 uses
  %i.fo = icmp ult i64 %i.fn, 576460752303423488
  call void @llvm.assume(i1 %i.fo)
  %i.fp = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fd, i64 %i.fn) ; 2 uses
  %i.fq = extractvalue { i64, i1 } %i.fp, 0
  %i.fr = extractvalue { i64, i1 } %i.fp, 1
  br i1 %i.fr, label %bb.ad, label %bb.ae, !prof !8

bb.ad:                                            ; preds = %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i31.i.i.i
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i31.i.i.i
  %.sroa.013.0.i.i.i.i.i = phi i64 [ -1, %bb.ad ], [ %i.fq, %_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE.exit.i31.i.i.i ]
  %i.fs = icmp ult i64 %i.fm, %.sroa.013.0.i.i.i.i.i
  br i1 %i.fs, label %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.z, %bb.y
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy11clear_cache17hb279f51be876bc4aE(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %0)
          to label %.noexc37.i.i.i unwind label %.body.thread60.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1099, !inline_history !1

.noexc37.i.i.i:                                   ; preds = %bb.af
  %i.ft = load i64, ptr %i.by, align 8, !noalias !1100, !noundef !5 ; 4 uses
  %i.fu = icmp ult i64 %i.ft, 2305843009213693952
  call void @llvm.assume(i1 %i.fu)
  %i.fv = icmp samesign ugt i64 %i.ft, 134217727
  br i1 %i.fv, label %bb.ag, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i.i.i.i"

bb.ag:                                            ; preds = %.noexc37.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1106
  store i64 %i.ft, ptr %i.g, align 8, !noalias !1106
  br label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.al, %bb.ak, %bb.ag
  %i.fw = phi ptr [ %i.g, %bb.ag ], [ %i.f, %bb.ak ], [ %i.e, %bb.al ]
  %i.fx = phi ptr [ @45, %bb.ag ], [ @71, %bb.ak ], [ @72, %bb.al ]
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @78, i64 noundef 43, ptr noundef nonnull align 1 %i.fw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fx) #27
          to label %.cont.i.i.i unwind label %.body.thread60.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1097, !inline_history !1

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i.i.i.i": ; preds = %.noexc37.i.i.i, %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.i.i.i
  %.sroa.3.0.i.in.i.i.i = phi i64 [ %i.eq, %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.i.i.i ], [ %i.ft, %.noexc37.i.i.i ]
  %i.fy = invoke noundef zeroext i1 @_ZN14regex_automata4util11determinize5state5State8is_match17hd3f2f536a5195b03E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.ah unwind label %.body.thread60.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1097

bb.ah:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h02d00930a7fe1dadE.exit.i.i.i.i"
  %i.fz = zext nneg i8 %..i to i32
  %i.ga = shl nuw nsw i32 %i.fz, 28
  %.sroa.3.0.i.i.i.i = trunc nuw nsw i64 %.sroa.3.0.i.in.i.i.i to i32
  %.sroa.0.0.i39.i.i.i = or disjoint i32 %i.ga, %.sroa.3.0.i.i.i.i ; 2 uses
  %i.gb = or disjoint i32 %.sroa.0.0.i39.i.i.i, 134217728
  %spec.select.i.i.i = select i1 %i.fy, i32 %i.gb, i32 %.sroa.0.0.i39.i.i.i ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.gd = load i64, ptr %i.df, align 8, !noalias !1097, !noundef !5
  %i.ge = and i64 %i.gd, 63
  %i.gf = shl nuw i64 1, %i.ge
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h41b73a1e93305a60E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gc, i64 noundef %i.gf, i32 noundef -2147483648)
          to label %bb.ai unwind label %.body.thread60.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1097

bb.ai:                                            ; preds = %bb.ah
  %i.gg = getelementptr inbounds nuw i8, ptr %i.p, i64 656 ; 3 uses
  %i.gh = load i128, ptr %i.gg, align 1
  %i.gi = getelementptr i8, ptr %i.gg, i64 16
  %i.gj = load i128, ptr %i.gi, align 1
  %i.gk = or i128 %i.gh, %i.gj
  %i.gl = icmp ne i128 %i.gk, 0
  %i.gm = zext i1 %i.gl to i32
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.go = load i64, ptr %i.df, align 8, !noalias !1107, !noundef !5
  %i.gp = and i64 %i.go, 63                       ; 4 uses
  %i.gq = icmp samesign ugt i64 %i.gp, 26
  br i1 %i.gq, label %bb.ak, label %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.gr = shl nuw i64 1, %i.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1108
  store i64 %i.gr, ptr %i.f, align 8, !noalias !1108
  br label %.invoke.i.i.i

_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i.i.i.i: ; preds = %bb.aj
  %i.gs = icmp eq i64 %i.gp, 26
  br i1 %i.gs, label %bb.al, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.i.i.i

bb.al:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1109
  store i64 134217728, ptr %i.e, align 8, !noalias !1109
  br label %.invoke.i.i.i

_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread.i.i.i: ; preds = %bb.ao, %bb.am, %bb.an, %bb.ai
  %i.gt = load i64, ptr %i.bx, align 8, !noalias !1095, !noundef !5
  %i.gu = load i64, ptr %i.cy, align 8, !noalias !1097, !noundef !5
  %i.gv = add i64 %i.gu, %i.gt
  store i64 %i.gv, ptr %i.cy, align 8, !noalias !1097
  %i.gw = load ptr, ptr %i.h, align 8, !noalias !1095, !nonnull !5, !noundef !5
  %i.gx = atomicrmw add ptr %i.gw, i64 1 monotonic, align 8, !noalias !1097
  %i.gy = icmp slt i64 %i.gx, 0
  br i1 %i.gy, label %bb.av, label %bb.aq

_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.i.i.i: ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit.i.i.i.i
  %i.gz = shl nuw nsw i64 2, %i.gp
  %i.ha = trunc nuw nsw i64 %i.gz to i32
  %i.hb = or disjoint i32 %i.ha, 536870912
  br label %bb.am

bb.am:                                            ; preds = %bb.ap, %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.i.i.i
  %.sroa.455.0.i.i.i = phi i64 [ 0, %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.i.i.i ], [ %i.hd, %bb.ap ] ; 2 uses
  %exitcond.not.i.i.i.i81 = icmp eq i64 %.sroa.455.0.i.i.i, 256
  br i1 %exitcond.not.i.i.i.i81, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread.i.i.i, label %.lr.ph

bb.an:                                            ; preds = %.lr.ph
  %exitcond.not.i.i.i.i = icmp eq i64 %i.hd, 256
  br i1 %exitcond.not.i.i.i.i, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.am, %bb.an
  %.sroa.455.1.i.i.i82 = phi i64 [ %i.hd, %bb.an ], [ %.sroa.455.0.i.i.i, %bb.am ] ; 5 uses
  %i.hc = trunc nuw i64 %.sroa.455.1.i.i.i82 to i8
  %i.hd = add nuw nsw i64 %.sroa.455.1.i.i.i82, 1 ; 3 uses
  %.lobit.i.i.i.i.i = lshr i64 %.sroa.455.1.i.i.i82, 7
  %i.he = and i8 %i.hc, 127
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %.lobit.i.i.i.i.i
  %i.hg = load i128, ptr %i.hf, align 16, !alias.scope !1110, !noalias !1111, !noundef !5
  %i.hh = zext nneg i8 %i.he to i128
  %i.hi = shl nuw i128 1, %i.hh
  %i.hj = and i128 %i.hg, %i.hi
  %.not.i.i.i.i = icmp eq i128 %i.hj, 0
  br i1 %.not.i.i.i.i, label %bb.an, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph
  %i.hk = icmp ult i64 %.sroa.455.1.i.i.i82, 256
  br i1 %i.hk, label %bb.ap, label %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.hl = trunc nuw nsw i64 %.sroa.455.1.i.i.i82 to i32
  %.sroa.417.0.insert.shift.i.i.i = shl nuw nsw i32 %i.hl, 8
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy14set_transition17hc3806a8fe9907783E(ptr nonnull %i.p, ptr nonnull %i.aa, i32 noundef %spec.select.i.i.i, i32 %.sroa.417.0.insert.shift.i.i.i, i32 noundef %i.hb)
          to label %bb.am unwind label %.body.thread60.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1097

bb.aq:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.aa, i64 72 ; 2 uses
  %i.hn = load ptr, ptr %i.h, align 8, !noalias !1095, !nonnull !5, !noundef !5 ; 3 uses
  %i.ho = load i64, ptr %i.bx, align 8, !noalias !1095, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1095
  store ptr %i.hn, ptr %i.d, align 8, !noalias !1113
  %i.hp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ho, ptr %i.hp, align 8, !noalias !1113
  %i.hq = load i64, ptr %i.ce, align 8, !alias.scope !1112, !noalias !1097, !noundef !5 ; 3 uses
  %i.hr = load i64, ptr %i.hm, align 8, !range !14, !alias.scope !1112, !noalias !1097, !noundef !5
  %i.hs = icmp eq i64 %i.hq, %i.hr
  br i1 %i.hs, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5991c16c81e0b063E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hm)
          to label %bb.aw unwind label %bb.as, !noalias !1097

bb.as:                                            ; preds = %bb.ar
  %i.ht = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hu = atomicrmw add ptr %i.hn, i64 -1 release, align 8, !noalias !1114
  %i.hv = icmp eq i64 %i.hu, 1
  br i1 %i.hv, label %bb.at, label %.body.thread.i.i.i

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.body.thread.i.i.i unwind label %bb.au, !noalias !1097

bb.au:                                            ; preds = %bb.at
  %i.hw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !1097
  unreachable

bb.av:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef11is_sentinel17hd5c013ad7821a2c8E.exit.thread.i.i.i
  call void @llvm.trap()
  unreachable

bb.aw:                                            ; preds = %bb.ar, %bb.aq
  %i.hx = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.hy = load ptr, ptr %i.hx, align 8, !alias.scope !1112, !noalias !1097, !nonnull !5, !noundef !5
  %i.hz = getelementptr inbounds nuw [16 x i8], ptr %i.hy, i64 %i.hq ; 2 uses
  store ptr %i.hn, ptr %i.hz, align 8, !noalias !1097
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store i64 %i.ho, ptr %i.ia, align 8, !noalias !1097
  %i.ib = add i64 %i.hq, 1
  store i64 %i.ib, ptr %i.ce, align 8, !alias.scope !1112, !noalias !1097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1095
  %i.ic = load ptr, ptr %i.h, align 8, !noalias !1095, !nonnull !5, !noundef !5
  %i.id = load i64, ptr %i.bx, align 8, !noalias !1095, !noundef !5
  %i.ie = invoke { i32, i32 } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h2d1fa52a1f342d3dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull %i.ic, i64 noundef %i.id, i32 noundef %spec.select.i.i.i)
          to label %bb.ba unwind label %.body.thread9.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1088 ; 0 uses

_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread.i.i.i: ; preds = %bb.ae, %bb.aa, %bb.x, %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  call void @llvm.experimental.noalias.scope.decl(metadata !1116)
end_hunk_3
begin_hunk_4_@_ZN14regex_automata6hybrid3dfa4Lazy17cache_start_group17hf1db2c9e9fafa034E:bb.a
  %.sroa.4.0.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.aw ], [ undef, %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread.i.i.i ], [ undef, %bb.ax ]
  %.sroa.0.0.i11.i.i = phi i1 [ false, %bb.aw ], [ true, %_ZN14regex_automata6hybrid3dfa4Lazy15try_clear_cache17h194d588650ab5ba3E.exit.thread.i.i.i ], [ true, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !1126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 16, i1 false), !noalias !1088
  store i64 0, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !1126
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h64d9003bd4dd77e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZN14regex_automata6hybrid3dfa4Lazy15cache_start_one17h73fa352594111a7cE.exit unwind label %bb.bb, !noalias !1126

bb.bb:                                            ; preds = %bb.ba
  %i.im = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3b98a42065343f1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread.i unwind label %bb.bc, !noalias !1126

bb.bc:                                            ; preds = %bb.bb
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !1126
  unreachable

.body.thread4.i.i:                                ; preds = %.body.thread9.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ay, %.body.thread.i.i.i
  %eh.lpad-body7.i.i = phi { ptr, i32 } [ %eh.lpad-body59.i.i.i, %bb.ay ], [ %eh.lpad-body59.i.i.i, %.body.thread.i.i.i ], [ %lpad.loopexit.split-lp88, %.body.thread9.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr78drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderNFA$GT$17h57b9f018b25accc3E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j) #29
          to label %.thread.i unwind label %bb.bd, !noalias !1088

bb.bd:                                            ; preds = %.body.thread4.i.i
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !1088
  unreachable

bb.be:                                            ; preds = %bb.h
  %lpad.thr_comm.split-lp23.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr78drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderNFA$GT$17h57b9f018b25accc3E"(ptr noalias noundef align 8 dereferenceable(32) %i.l) #29
          to label %.thread.i unwind label %bb.bf, !noalias !1084

bb.bf:                                            ; preds = %bb.bg, %bb.be
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !1084
  unreachable

.thread.i:                                        ; preds = %bb.bg, %bb.be, %.body.thread4.i.i, %bb.bb, %bb.n
  %.pn13.i = phi { ptr, i32 } [ %i.bs, %bb.n ], [ %lpad.thr_comm.i, %bb.bg ], [ %lpad.thr_comm.split-lp23.i, %bb.be ], [ %eh.lpad-body7.i.i, %.body.thread4.i.i ], [ %i.im, %bb.bb ]
  resume { ptr, i32 } %.pn13.i

bb.bg:                                            ; preds = %bb.g, %bb.f, %bb.e
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr82drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderMatches$GT$17h2438c0565855cd43E"(ptr noalias noundef align 8 dereferenceable(24) %i.n) #29
          to label %.thread.i unwind label %bb.bf, !noalias !1084

_ZN14regex_automata6hybrid3dfa4Lazy15cache_start_one17h73fa352594111a7cE.exit: ; preds = %bb.ba
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3b98a42065343f1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !1084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %.sroa.0.0.i11.i.i, label %bb.bt, label %bb.bl

bb.bh:                                            ; preds = %bb.d
  %i.iq = getelementptr inbounds nuw i8, ptr %i.p, i64 688
  %i.ir = load ptr, ptr %i.iq, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 360
  %i.it = load i64, ptr %i.is, align 8, !noundef !5
  %i.iu = zext i32 %2 to i64                      ; 2 uses
  %i.iv = icmp ugt i64 %i.it, %i.iu
  br i1 %i.iv, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.iw = getelementptr inbounds nuw i8, ptr %i.p, i64 696
  %i.ix = load i64, ptr %i.iw, align 8, !noalias !1127, !noundef !5
  %i.iy = and i64 %i.ix, 63                       ; 2 uses
  %i.iz = shl nuw i64 1, %i.iy                    ; 2 uses
  %i.ja = icmp samesign ugt i64 %i.iy, 26
  br i1 %i.ja, label %bb.bj, label %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1128
  store i64 %i.iz, ptr %i.b, align 8, !noalias !1128
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @78, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #27, !noalias !1129
  unreachable

_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit: ; preds = %bb.bi
  %i.jb = trunc nuw nsw i64 %i.iz to i32
  %i.jc = or i32 %i.jb, 1073741824
  br label %bb.bt

bb.bk:                                            ; preds = %bb.bh
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ir, i64 352
  %i.je = load ptr, ptr %i.jd, align 8, !nonnull !5, !noundef !5
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.iu
  br label %bb.e

bb.bl:                                            ; preds = %_ZN14regex_automata6hybrid3dfa4Lazy15cache_start_one17h73fa352594111a7cE.exit.thread, %_ZN14regex_automata6hybrid3dfa4Lazy15cache_start_one17h73fa352594111a7cE.exit
  %.pn15.i.i66 = phi i32 [ %i.br, %_ZN14regex_automata6hybrid3dfa4Lazy15cache_start_one17h73fa352594111a7cE.exit.thread ], [ %.sroa.4.0.i.i.i, %_ZN14regex_automata6hybrid3dfa4Lazy15cache_start_one17h73fa352594111a7cE.exit ] ; 3 uses
  %i.jg = and i32 %.pn15.i.i66, 134217727
  %i.jh = zext nneg i32 %i.jg to i64              ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.jj = load i64, ptr %i.ji, align 8, !noundef !5 ; 2 uses
  %i.jk = icmp ult i64 %i.jj, 2305843009213693952
  call void @llvm.assume(i1 %i.jk)
  %i.jl = icmp samesign ugt i64 %i.jj, %i.jh
  br i1 %i.jl, label %_ZN14regex_automata6hybrid3dfa7LazyRef8is_valid17h82fff4ebe70f5662E.exit.i, label %_ZN14regex_automata6hybrid3dfa7LazyRef8is_valid17h82fff4ebe70f5662E.exit.thread.i, !prof !21

_ZN14regex_automata6hybrid3dfa7LazyRef8is_valid17h82fff4ebe70f5662E.exit.i: ; preds = %bb.bl
  %i.jm = getelementptr inbounds nuw i8, ptr %i.p, i64 696
  %i.jn = load i64, ptr %i.jm, align 8, !noundef !5
  %i.jo = and i64 %i.jn, 63
  %notmask.i.i = shl nsw i64 -1, %i.jo
  %i.jp = xor i64 %notmask.i.i, -1
  %i.jq = and i64 %i.jp, %i.jh
  %i.jr = icmp eq i64 %i.jq, 0
  br i1 %i.jr, label %bb.bm, label %_ZN14regex_automata6hybrid3dfa7LazyRef8is_valid17h82fff4ebe70f5662E.exit.thread.i, !prof !22

_ZN14regex_automata6hybrid3dfa7LazyRef8is_valid17h82fff4ebe70f5662E.exit.thread.i: ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef8is_valid17h82fff4ebe70f5662E.exit.i, %bb.bl
  call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @55, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27
  unreachable

bb.bm:                                            ; preds = %_ZN14regex_automata6hybrid3dfa7LazyRef8is_valid17h82fff4ebe70f5662E.exit.i
  %i.js = zext nneg i8 %3 to i64                  ; 3 uses
  switch i32 %1, label %default.unreachable63 [
    i32 0, label %bb.bp
    i32 1, label %bb.bn
    i32 2, label %bb.bo
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.jt = add nuw nsw i64 %i.js, 6
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.ju = getelementptr inbounds nuw i8, ptr %i.p, i64 129
  %i.jv = load i8, ptr %i.ju, align 1, !range !16, !noundef !5
  %i.jw = icmp eq i8 %i.jv, 1
  br i1 %i.jw, label %bb.br, label %bb.bq, !prof !1130

bb.bp:                                            ; preds = %bb.br, %bb.bn, %bb.bm
  %.sroa.02.0.i = phi i64 [ %i.kh, %bb.br ], [ %i.jt, %bb.bn ], [ %i.js, %bb.bm ] ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.jy = load i64, ptr %i.jx, align 8, !noundef !5 ; 2 uses
  %i.jz = icmp ult i64 %.sroa.02.0.i, %i.jy
  br i1 %i.jz, label %_ZN14regex_automata6hybrid3dfa4Lazy15set_start_state17h07e49416ab397d21E.exit, label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @58, ptr %i.a, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ka, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.kb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.kd, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #27
  unreachable

bb.br:                                            ; preds = %bb.bo
  %i.ke = zext i32 %2 to i64
  %i.kf = mul nuw nsw i64 %i.ke, 6
  %i.kg = add nuw nsw i64 %i.kf, 12
  %i.kh = add nuw nsw i64 %i.kg, %i.js
  br label %bb.bp

bb.bs:                                            ; preds = %bb.bp
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.02.0.i, i64 noundef %i.jy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #27
  unreachable

_ZN14regex_automata6hybrid3dfa4Lazy15set_start_state17h07e49416ab397d21E.exit: ; preds = %bb.bp
  %i.ki = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.kj = load ptr, ptr %i.ki, align 8, !nonnull !5, !noundef !5
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %.sroa.02.0.i
  store i32 %.pn15.i.i66, ptr %i.kk, align 4
  br label %bb.bt

bb.bt:                                            ; preds = %bb.d, %_ZN14regex_automata6hybrid3dfa4Lazy15cache_start_one17h73fa352594111a7cE.exit, %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit, %_ZN14regex_automata6hybrid3dfa4Lazy15set_start_state17h07e49416ab397d21E.exit
  %.sroa.5.0 = phi i32 [ undef, %_ZN14regex_automata6hybrid3dfa4Lazy15cache_start_one17h73fa352594111a7cE.exit ], [ %.pn15.i.i66, %_ZN14regex_automata6hybrid3dfa4Lazy15set_start_state17h07e49416ab397d21E.exit ], [ %i.jc, %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit ], [ %2, %bb.d ]
  %.sroa.06.0 = phi i64 [ 3, %_ZN14regex_automata6hybrid3dfa4Lazy15cache_start_one17h73fa352594111a7cE.exit ], [ 5, %_ZN14regex_automata6hybrid3dfa4Lazy15set_start_state17h07e49416ab397d21E.exit ], [ 5, %_ZN14regex_automata6hybrid3dfa7LazyRef7dead_id17h5cf5af11180be523E.exit ], [ 2, %bb.d ]
  %.sroa.5.0.insert.ext = zext i32 %.sroa.5.0 to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.06.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.06.0
  ret i64 %.sroa.06.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN14regex_automata6hybrid3dfa5Cache16search_total_len17h4d503457a09b232aE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(352) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = load i64, ptr %0, align 8, !range !9, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h625e344813c5ec46E.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !1133, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5.i = load i64, ptr %i.f, align 8, !alias.scope !1133, !noundef !5 ; 3 uses
  %.not.i.i = icmp ugt i64 %.val.i, %.val5.i
  %1 = sub nuw i64 %.val5.i, %.val.i
  %i.g = sub nuw i64 %.val.i, %.val5.i
  %.sroa.0.0.i.i = select i1 %.not.i.i, i64 %i.g, i64 %1
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h625e344813c5ec46E.exit"

"_ZN4core6option15Option$LT$T$GT$6map_or17h625e344813c5ec46E.exit": ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0.i.i, %bb.b ], [ 0, %bb.a ]
  %i.h = add i64 %.sroa.02.0.i, %i.b
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata6hybrid3dfa5Cache3new17h398249a6158dd31cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([352 x i8]) align 8 captures(none) dereferenceable(352) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 8               ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [352 x i8], align 8               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.n = invoke { i64, i64 } @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h4c69380d22621e2aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @62)
          to label %bb.c unwind label %bb.b       ; 2 uses

"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h99cb913586289192E.exit": ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.b ], [ %i.v, %bb.d ]
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..determinize..state..State$GT$$GT$17hacb1f28938c6cec3E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
          to label %bb.j unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h99cb913586289192E.exit"

bb.c:                                             ; preds = %bb.a
  %i.p = extractvalue { i64, i64 } %i.n, 0
  %i.q = extractvalue { i64, i64 } %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @64, i64 32, i1 false)
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.p, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.q, ptr %.sroa.57.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.s = load ptr, ptr %i.r, align 16, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 336
  %i.u = load i64, ptr %i.t, align 16, !noundef !5
  invoke void @_ZN14regex_automata4util10sparse_set10SparseSets3new17h0b49be39fc97afd5E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, i64 noundef %i.u)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0b94e28770ea07e4E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h99cb913586289192E.exit" unwind label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.aa, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  store i64 0, ptr %i.ab, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  store i64 0, ptr %.sroa.513.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  store i32 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  store i64 0, ptr %i.g, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.ae, align 8
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy10init_cache17h6ba1ae51ca18670dE(ptr noalias noundef align 8 dereferenceable(16) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..hybrid..dfa..Cache$GT$17h4b5e83fd4d3f782dE"(ptr noalias noundef align 8 dereferenceable(352) %i.g) #29
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(352) %i.g, i64 352, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.h:                                             ; preds = %bb.d, %bb.k, %bb.j, %bb.f, %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h99cb913586289192E.exit"
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable

bb.i:                                             ; preds = %bb.k, %bb.f
  %.pn16 = phi { ptr, i32 } [ %i.af, %bb.f ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %.pn16

bb.j:                                             ; preds = %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h99cb913586289192E.exit"
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17hfc4f8f5840e3d94cE"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #29
          to label %bb.k unwind label %bb.h

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17hfc4f8f5840e3d94cE"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #29
          to label %bb.i unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata6hybrid3dfa5Cache5reset17he81a21c87a05554bE(ptr noalias noundef align 8 dereferenceable(352) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(720) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8
  call fastcc void @_ZN14regex_automata6hybrid3dfa4Lazy11reset_cache17h0b58761852e6fd14E(ptr noalias noundef align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14regex_automata6hybrid3dfa6Config21byte_classes_from_nfa17he9a3a44425ade353E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 1 captures(none) dereferenceable(256) %0, i8 %.130.val, ptr nofree readonly captures(none) %.0.val, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %cond = icmp eq i8 %.130.val, 0
  br i1 %cond, label %vector.ph, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.c = load i128, ptr %1, align 16
  %i.d = getelementptr i8, ptr %1, i64 16
  %i.e = load i128, ptr %i.d, align 16
  %i.f = or i128 %i.c, %i.e
  %i.g = icmp ne i128 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN14regex_automata4util8alphabet12ByteClassSet7add_set17h3afaeba9ec52048bE.exit, label %bb.c

vector.ph:                                        ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %0, i8 0, i64 256, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %0, align 1
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.k, align 1
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.m, align 1
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.o, align 1
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.q, align 1
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.s, align 1
end_hunk_4
begin_hunk_5_@"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h43d73346677cbc44E"
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h43d73346677cbc44E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha778ba63b656fad9E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e4b3dcc07ce89a9E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h24d35245379a1247E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab6d0aef346d059cE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2a3a52602c675cc4E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5cf6cde9b26f3815E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5991c16c81e0b063E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_ZN4core5slice4sort6stable14driftsort_main17he9aeaf4733698ea7E(ptr noalias noundef nonnull align 1, i64 noundef, ptr noalias noundef nonnull align 1) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17he398109b986b42cbE(ptr noalias noundef nonnull align 1, i64 noundef, i64 noundef, ptr noalias noundef nonnull align 1) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_ZN4core5slice4sort6stable14driftsort_main17had5a861972051a97E(ptr noalias noundef nonnull align 4, i64 noundef, ptr noalias noundef nonnull align 1) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h01378cf883b9cd3eE(ptr noalias noundef nonnull align 4, i64 noundef, i64 noundef, ptr noalias noundef nonnull align 1) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h38ca191f4b30c911E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9ac7d9776c962473E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he3e51260b2ca02d1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17habe3d2eb02ca6ddeE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h50fb8cf56a22faa1E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN76_$LT$regex_automata..nfa..thompson..nfa..NFA$u20$as$u20$core..fmt..Debug$GT$3fmt17h3df600ba47f0f655E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN78_$LT$regex_automata..util..start..StartByteMap$u20$as$u20$core..fmt..Debug$GT$3fmt17hd941f15b4da11d67E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(256), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_fields_finish17ha509067079bc2e31E(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h4d593ceb2c0bc2d6E"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc3d03fd32fecc603E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h29dc02581c11adfcE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN76_$LT$regex_automata..util..escape..DebugByte$u20$as$u20$core..fmt..Debug$GT$3fmt17h94caa00428537c73E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter9debug_set17hab3600c5d5c9eb35E(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt8builders8DebugSet6finish17h9302e2ff6a1683afE(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders8DebugSet5entry17h861b15a61498341aE(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN77_$LT$regex_automata..dfa..dense..DFA$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h61958c5321ead2afE"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(800), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0003ac2d5ffdbe22E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h0f0d7b38e10a9334E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter11debug_tuple17h56f4f7e7cf4db9ecE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hab4c26f4d3de0439E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef align 8 dereferenceable(24) ptr @_ZN4core3fmt8builders10DebugTuple5field17h6bec910804d66a80E(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt8builders10DebugTuple6finish17h19c0455a7e2f40cfE(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdedfdb12ced3dab1E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hfda75f7c6c80c594E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17haed57c3e73db3e7eE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h03e63f6c82a1f5a2E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb769572cbddef5f0E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha0d023687f43725eE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcca35babb79d3163E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hcdea791b7af71feeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb33bee71d25921f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h07276f5f26e1a331E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0c4bb1993da832d4E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc4193e1366d5942cE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h745a0641b263c60cE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h8ad7a566ed79551cE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h709b02f957565b74E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17hf2c9f842e52c473fE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17hfbe38155d7a629c1E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17hc4c706eb27245916E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hc5f9b252535ba185E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hb99f759386e1d3daE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { noreturn }
attributes #28 = { nounwind }
attributes #29 = { cold }
attributes #30 = { cold noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{!"rustc version 1.92.0 (ded5c06cf 2025-12-08)"}
!5 = !{}
!6 = !{i64 16}
!7 = !{i64 1}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{i64 0, i64 2}
!10 = !{i8 0, i8 2}
!11 = !{i8 0, i8 4}
!12 = !{!"branch_weights", i32 4000, i32 3}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{i64 0, i64 -9223372036854775808}
!15 = !{i64 0, i64 3}
!16 = !{i8 0, i8 3}
!17 = !{i64 8}
!18 = !{i128 0, i128 2}
!19 = !{ptr @_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE}
!20 = !{i32 0, i32 3}
!21 = !{!"branch_weights", i32 2146410443, i32 1073205}
!22 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!23 = !{i64 4}
!24 = !{i64 0, i64 -9223372036854775800}
!25 = distinct !{!25, i1 true, !"_ZN14regex_automata4util8alphabet7ByteSet8contains17h7a515dc7cedb2e12E"}
!26 = distinct !{!26, !25, !"_ZN14regex_automata4util8alphabet7ByteSet8contains17h7a515dc7cedb2e12E: argument 0"}
!27 = !{!26}
!28 = distinct !{!28, i1 true, !"_ZN14regex_automata4util8alphabet7ByteSet8contains17h7a515dc7cedb2e12E"}
!29 = distinct !{!29, !28, !"_ZN14regex_automata4util8alphabet7ByteSet8contains17h7a515dc7cedb2e12E: argument 0"}
!30 = distinct !{!30, i1 true, !"_ZN14regex_automata4util8alphabet7ByteSet8contains17h7a515dc7cedb2e12E"}
!31 = distinct !{!31, !30, !"_ZN14regex_automata4util8alphabet7ByteSet8contains17h7a515dc7cedb2e12E: argument 0"}
!32 = !{!29}
!33 = !{!31}
!34 = distinct !{!34, i1 true, !"_ZN108_$LT$regex_automata..util..alphabet..ByteClassElements$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7e38fe575aa09f1E"}
!35 = distinct !{!35, !34, !"_ZN108_$LT$regex_automata..util..alphabet..ByteClassElements$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7e38fe575aa09f1E: argument 0"}
!36 = distinct !{!36, i1 true, !"_ZN108_$LT$regex_automata..util..alphabet..ByteClassElements$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7e38fe575aa09f1E"}
!37 = distinct !{!37, !36, !"_ZN108_$LT$regex_automata..util..alphabet..ByteClassElements$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7e38fe575aa09f1E: argument 0:Peel0"}
!38 = !{!35}
!39 = !{!37}
!40 = distinct !{!40, i1 true, !"_ZN131_$LT$regex_automata..meta..error..RetryFailError$u20$as$u20$core..convert..From$LT$regex_automata..util..search..MatchError$GT$$GT$4from17hda954083bc3c728aE"}
!41 = distinct !{!41, !40, !"_ZN131_$LT$regex_automata..meta..error..RetryFailError$u20$as$u20$core..convert..From$LT$regex_automata..util..search..MatchError$GT$$GT$4from17hda954083bc3c728aE: argument 0"}
!42 = !{!41}
!43 = distinct !{!43, i1 true, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h27b1eed70b5f15cbE"}
!44 = distinct !{!44, !43, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h27b1eed70b5f15cbE: argument 0"}
!45 = !{!44}
!46 = distinct !{!46, i1 true, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0ddff285969384f6E"}
!47 = distinct !{!47, !46, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0ddff285969384f6E: argument 0"}
!48 = !{i32 0, i32 1114112}
!49 = !{!47}
!50 = distinct !{!50, i1 true, !"_ZN4core4iter6traits8iterator8Iterator7collect17hd6cf12db7ded556bE"}
!51 = distinct !{!51, !50, !"_ZN4core4iter6traits8iterator8Iterator7collect17hd6cf12db7ded556bE: argument 1"}
!52 = distinct !{!52, !50, !"_ZN4core4iter6traits8iterator8Iterator7collect17hd6cf12db7ded556bE: argument 0"}
!53 = distinct !{!53, i1 true, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h6e014c1ea320d1d6E"}
!54 = distinct !{!54, !53, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h6e014c1ea320d1d6E: argument 1"}
!55 = distinct !{!55, !53, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h6e014c1ea320d1d6E: argument 0"}
!56 = distinct !{!56, i1 true, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0eb91d4dbcbad20eE"}
!57 = distinct !{!57, !56, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0eb91d4dbcbad20eE: argument 1"}
!58 = distinct !{!58, !56, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0eb91d4dbcbad20eE: argument 0"}
!59 = !{!55, !54, !52, !51}
!60 = !{!58, !57}
!61 = !{!55, !52}
!62 = !{!54, !51}
!63 = distinct !{!63, i1 true, !"_ZN4core4iter6traits8iterator8Iterator7collect17h265340a6f505cc7aE"}
!64 = distinct !{!64, !63, !"_ZN4core4iter6traits8iterator8Iterator7collect17h265340a6f505cc7aE: argument 1"}
!65 = distinct !{!65, !63, !"_ZN4core4iter6traits8iterator8Iterator7collect17h265340a6f505cc7aE: argument 0"}
!66 = distinct !{!66, i1 true, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h29f129b9fe1f0e6cE"}
!67 = distinct !{!67, !66, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h29f129b9fe1f0e6cE: argument 1"}
!68 = distinct !{!68, !66, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h29f129b9fe1f0e6cE: argument 0"}
!69 = distinct !{!69, i1 true, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbadcc38313ec0a22E"}
!70 = distinct !{!70, !69, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbadcc38313ec0a22E: argument 1"}
!71 = distinct !{!71, !69, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbadcc38313ec0a22E: argument 0"}
!72 = !{!68, !67, !65, !64}
!73 = !{!71, !70}
!74 = !{!68, !65}
!75 = !{!67, !64}
!76 = distinct !{!76, i1 true, !"_ZN4core4iter6traits8iterator8Iterator7collect17h6d4dab4dd3473570E"}
!77 = distinct !{!77, !76, !"_ZN4core4iter6traits8iterator8Iterator7collect17h6d4dab4dd3473570E: argument 1"}
!78 = distinct !{!78, !76, !"_ZN4core4iter6traits8iterator8Iterator7collect17h6d4dab4dd3473570E: argument 0"}
!79 = distinct !{!79, i1 true, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hcba3cb23617a692fE"}
!80 = distinct !{!80, !79, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hcba3cb23617a692fE: argument 1"}
!81 = distinct !{!81, !79, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hcba3cb23617a692fE: argument 0"}
!82 = distinct !{!82, i1 true, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4d7a074a9d302063E"}
!83 = distinct !{!83, !82, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4d7a074a9d302063E: argument 1"}
!84 = distinct !{!84, !82, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4d7a074a9d302063E: argument 0"}
!85 = !{!81, !80, !78, !77}
!86 = !{!84, !83}
!87 = !{!81, !78}
!88 = !{!80, !77}
!89 = distinct !{!89, i1 true, !"_ZN4core4iter6traits8iterator8Iterator7collect17he878a80e829472e3E"}
!90 = distinct !{!90, !89, !"_ZN4core4iter6traits8iterator8Iterator7collect17he878a80e829472e3E: argument 1"}
!91 = distinct !{!91, !89, !"_ZN4core4iter6traits8iterator8Iterator7collect17he878a80e829472e3E: argument 0"}
!92 = distinct !{!92, i1 true, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hdeb633cb18c0778aE"}
!93 = distinct !{!93, !92, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hdeb633cb18c0778aE: argument 1"}
!94 = distinct !{!94, !92, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hdeb633cb18c0778aE: argument 0"}
!95 = distinct !{!95, i1 true, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9b21b9225cf56bc3E"}
!96 = distinct !{!96, !95, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9b21b9225cf56bc3E: argument 1"}
!97 = distinct !{!97, !95, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9b21b9225cf56bc3E: argument 0"}
!98 = !{!94, !93, !91, !90}
!99 = !{!97, !96}
!100 = !{!94, !91}
!101 = !{!93, !90}
!102 = distinct !{!102, i1 true, !"_ZN4core4iter6traits8iterator8Iterator7collect17h7a0e0371e435ef70E"}
!103 = distinct !{!103, !102, !"_ZN4core4iter6traits8iterator8Iterator7collect17h7a0e0371e435ef70E: argument 1"}
!104 = distinct !{!104, !102, !"_ZN4core4iter6traits8iterator8Iterator7collect17h7a0e0371e435ef70E: argument 0"}
!105 = distinct !{!105, i1 true, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h05d8cf465c120f1dE"}
!106 = distinct !{!106, !105, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h05d8cf465c120f1dE: argument 1"}
!107 = distinct !{!107, !105, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h05d8cf465c120f1dE: argument 0"}
!108 = distinct !{!108, i1 true, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf47b653ed4b6c3d3E"}
!109 = distinct !{!109, !108, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf47b653ed4b6c3d3E: argument 1"}
!110 = distinct !{!110, !108, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf47b653ed4b6c3d3E: argument 0"}
!111 = !{!107, !106, !104, !103}
!112 = !{!110, !109}
!113 = !{!107, !104}
!114 = !{!106, !103}
!115 = distinct !{!115, i1 true, !"_ZN4core4iter6traits8iterator8Iterator7collect17hc13fc51554b7e450E"}
!116 = distinct !{!116, !115, !"_ZN4core4iter6traits8iterator8Iterator7collect17hc13fc51554b7e450E: argument 1"}
!117 = distinct !{!117, !115, !"_ZN4core4iter6traits8iterator8Iterator7collect17hc13fc51554b7e450E: argument 0"}
!118 = distinct !{!118, i1 true, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h96b1e1afe00e135eE"}
!119 = distinct !{!119, !118, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h96b1e1afe00e135eE: argument 1"}
!120 = distinct !{!120, !118, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h96b1e1afe00e135eE: argument 0"}
!121 = distinct !{!121, i1 true, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd56982d01da39625E"}
!122 = distinct !{!122, !121, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd56982d01da39625E: argument 1"}
!123 = distinct !{!123, !121, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd56982d01da39625E: argument 0"}
!124 = !{!120, !119, !117, !116}
!125 = !{!123, !122}
!126 = !{!120, !117}
!127 = !{!119, !116}
!128 = distinct !{!128, i1 true, !"_ZN14regex_automata3dfa5regex7Builder5build17h85844ff12b114f61E"}
!129 = distinct !{!129, !128, !"_ZN14regex_automata3dfa5regex7Builder5build17h85844ff12b114f61E: argument 1"}
!130 = distinct !{!130, !128, !"_ZN14regex_automata3dfa5regex7Builder5build17h85844ff12b114f61E: argument 0"}
!131 = distinct !{!131, i1 true, !"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..regex..Builder$GT$17h146bd6e8fe4abc4aE"}
!132 = distinct !{!132, !131, !"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..regex..Builder$GT$17h146bd6e8fe4abc4aE: argument 0"}
!133 = distinct !{!133, i1 true, !"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE"}
!134 = distinct !{!134, !133, !"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE: argument 0"}
!135 = distinct !{!135, i1 true, !"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E"}
!136 = distinct !{!136, !135, !"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E: argument 0"}
!137 = distinct !{!137, i1 true, !"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17h1da963db7e9a5195E"}
!138 = distinct !{!138, !137, !"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17h1da963db7e9a5195E: argument 0"}
!139 = distinct !{!139, i1 true, !"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$17h1d8ba25e66afd254E"}
!140 = distinct !{!140, !139, !"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$17h1d8ba25e66afd254E: argument 0"}
!141 = distinct !{!141, i1 true, !"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE"}
!142 = distinct !{!142, !141, !"_ZN4core3ptr63drop_in_place$LT$regex_automata..util..prefilter..Prefilter$GT$17h173a298fa4368a7bE: argument 0"}
!143 = distinct !{!143, i1 true, !"_ZN4core3ptr96drop_in_place$LT$alloc..sync..Arc$LT$dyn$u20$regex_automata..util..prefilter..PrefilterI$GT$$GT$17h818d09fccd81ab0eE"}
!144 = distinct !{!144, !143, !"_ZN4core3ptr96drop_in_place$LT$alloc..sync..Arc$LT$dyn$u20$regex_automata..util..prefilter..PrefilterI$GT$$GT$17h818d09fccd81ab0eE: argument 0"}
!145 = distinct !{!145, i1 true, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf046f16d101dc91fE"}
!146 = distinct !{!146, !145, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf046f16d101dc91fE: argument 0"}
!147 = !{!130, !129}
!148 = !{!132}
!149 = !{!134}
!150 = !{!136}
!151 = !{!138}
!152 = !{!138, !136, !134, !132}
!153 = !{!140}
!154 = !{!142}
!155 = !{!144}
!156 = !{!146}
!157 = !{!146, !144, !142, !140, !138, !136, !134, !132}
!158 = distinct !{!158, i1 true, !"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..regex..Builder$GT$17h146bd6e8fe4abc4aE"}
!159 = distinct !{!159, !158, !"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..regex..Builder$GT$17h146bd6e8fe4abc4aE: argument 0"}
!160 = distinct !{!160, i1 true, !"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE"}
!161 = distinct !{!161, !160, !"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE: argument 0"}
!162 = distinct !{!162, i1 true, !"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E"}
!163 = distinct !{!163, !162, !"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E: argument 0"}
!164 = distinct !{!164, i1 true, !"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17h1da963db7e9a5195E"}
end_hunk_5
