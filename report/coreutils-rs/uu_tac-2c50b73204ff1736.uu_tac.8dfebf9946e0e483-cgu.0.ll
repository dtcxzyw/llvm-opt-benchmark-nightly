inline.NumInlined: 668
inline.NumDeleted: 434
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvCscbPS3L0JI5z_6uu_tac3tac:bb.a
  unreachable

default.unreachable:                              ; preds = %bb.an, %bb.jh, %bb.jd, %bb.is, %bb.io, %bb.eh, %bb.di, %bb.cs, %bb.co, %bb.cd, %bb.bu, %bb.bq, %.lr.ph.i.i.i.i.i125, %bb.dr
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.gn = icmp ult ptr %i.gk, inttoptr (i64 188978561024 to ptr)
  %i.go = and i64 %i.gl, 1095216660480
  %i.gp = icmp ne i64 %i.go, 1095216660480
  call void @llvm.assume(i1 %i.gn)
  call void @llvm.assume(i1 %i.gp)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscbPS3L0JI5z_6uu_tac.exit.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.gq = getelementptr i8, ptr %i.gk, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gq) ]
  store ptr %i.gq, ptr %i.cb, align 8, !alias.scope !481, !noalias !476
  store i8 3, ptr %i.aq, align 8, !alias.scope !481, !noalias !476
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cb) #22, !noalias !428
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscbPS3L0JI5z_6uu_tac.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscbPS3L0JI5z_6uu_tac.exit.i.i.i.i: ; preds = %bb.al, %bb.ak, %bb.aj, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !476
  br label %_RNvYINtNtCs7tKScEop1B6_5alloc3vec3VechENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCscbPS3L0JI5z_6uu_tac.exit.thread89.i

bb.am:                                            ; preds = %bb.ah
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #23, !noalias !428
  unreachable

_RNvYINtNtCs7tKScEop1B6_5alloc3vec3VechENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCscbPS3L0JI5z_6uu_tac.exit.thread89.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscbPS3L0JI5z_6uu_tac.exit.i.i.i.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !476
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECscbPS3L0JI5z_6uu_tac.exit.i

bb.an:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !425
  %i.gr = ptrtoint ptr %i.gk to i64               ; 2 uses
  %i.gs = and i64 %i.gr, 3
  switch i64 %i.gs, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscbPS3L0JI5z_6uu_tac.exit.i.i
    i64 3, label %bb.ao
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscbPS3L0JI5z_6uu_tac.exit.i.i
    i64 1, label %bb.ap
  ], !prof !188

bb.ao:                                            ; preds = %bb.an
  %i.gt = icmp ult ptr %i.gk, inttoptr (i64 188978561024 to ptr)
  %i.gu = and i64 %i.gr, 1095216660480
  %i.gv = icmp ne i64 %i.gu, 1095216660480
  call void @llvm.assume(i1 %i.gt)
  call void @llvm.assume(i1 %i.gv)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscbPS3L0JI5z_6uu_tac.exit.i.i

bb.ap:                                            ; preds = %bb.an
  %i.gw = getelementptr i8, ptr %i.gk, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gw) ]
  store ptr %i.gw, ptr %i.cc, align 8, !alias.scope !484, !noalias !425
  store i8 3, ptr %i.ap, align 8, !alias.scope !484, !noalias !425
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cc) #22, !noalias !428
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscbPS3L0JI5z_6uu_tac.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscbPS3L0JI5z_6uu_tac.exit.i.i: ; preds = %bb.ap, %bb.ao, %bb.an, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !425
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECscbPS3L0JI5z_6uu_tac.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECscbPS3L0JI5z_6uu_tac.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscbPS3L0JI5z_6uu_tac.exit.i.i, %_RNvYINtNtCs7tKScEop1B6_5alloc3vec3VechENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCscbPS3L0JI5z_6uu_tac.exit.thread89.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !425
  br label %.outer.i

.thread.i:                                        ; preds = %.loopexit.i, %.split197.us.i, %.split190.us.i, %.split185.us.i, %.split180.us.i, %.split175.us.i, %.split170.us.i, %.split165.us.i, %.split.us.i, %bb.d
  %i.gx = phi i8 [ %.us-phi.i, %.split.us.i ], [ 40, %.split165.us.i ], [ 41, %.split170.us.i ], [ 124, %.split175.us.i ], [ 123, %.split180.us.i ], [ 125, %.split185.us.i ], [ 94, %.split190.us.i ], [ 36, %.split197.us.i ], [ %.ph.i, %.loopexit.i ], [ 92, %bb.d ] ; 2 uses
  %.sroa.0.0104.i = phi i64 [ %.us-phi157.i, %.split.us.i ], [ %.us-phi168.i, %.split165.us.i ], [ %.us-phi173.i, %.split170.us.i ], [ %.us-phi178.i, %.split175.us.i ], [ %.us-phi183.i, %.split180.us.i ], [ %.us-phi188.i, %.split185.us.i ], [ %.us-phi195.i, %.split190.us.i ], [ %.us-phi200.i, %.split197.us.i ], [ %.sroa.0.0156.us.lcssa212.ph.i, %.loopexit.i ], [ %.sroa.0.0.ph227.i, %bb.d ]
  %i.gy = load i64, ptr %i.bz, align 8, !alias.scope !487, !noalias !425, !noundef !4 ; 3 uses
  %i.gz = load i64, ptr %i.aw, align 8, !range !40, !alias.scope !487, !noalias !425, !noundef !4
  %i.ha = icmp eq i64 %i.gy, %i.gz
  br i1 %i.ha, label %bb.aq, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscbPS3L0JI5z_6uu_tac.exit53.i

bb.aq:                                            ; preds = %.thread.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw) #21, !noalias !428
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscbPS3L0JI5z_6uu_tac.exit53.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCscbPS3L0JI5z_6uu_tac.exit53.i: ; preds = %bb.aq, %.thread.i
  %i.hb = load ptr, ptr %i.by, align 8, !alias.scope !487, !noalias !425, !nonnull !4, !noundef !4
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gy
  store i8 %i.gx, ptr %i.hc, align 1, !noalias !428
  %i.hd = add i64 %i.gy, 1
  store i64 %i.hd, ptr %i.bz, align 8, !alias.scope !487, !noalias !425
  br label %.outer.i

_RNvCscbPS3L0JI5z_6uu_tac22translate_regex_flavor.exit: ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread.i, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.i
  %.sroa.6.sroa.7.085.i = phi i64 [ %.sroa.665.0.copyload.i, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread.i ], [ %.sroa.876.24.copyload.i, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.i ]
  %.sroa.6.sroa.6.084.i = phi ptr [ %.sroa.5.0.copyload.i, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread.i ], [ %i.de, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.i ] ; 4 uses
  %.sroa.6.sroa.0.083.i = phi i64 [ %.sroa.059.0.copyload.i, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread.i ], [ %i.dd, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.6.084.i) ]
  call void @_RNvMNtNtCsipSpXIjCLRi_5regex8builders5bytesNtB2_12RegexBuilder3new(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.bw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.sroa.6.084.i, i64 noundef %.sroa.6.sroa.7.085.i) #22
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 158
  store i8 1, ptr %.sroa.415.0..sroa_idx, align 2
  call void @_RNvMNtNtCsipSpXIjCLRi_5regex8builders5bytesNtB2_12RegexBuilder5build(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.bw) #22
  %i.he = load ptr, ptr %i.bv, align 8, !noundef !4
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.as, label %bb.ba

bb.ar:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscbPS3L0JI5z_6uu_tac.exit101, %bb.b
  %.idx = mul nuw nsw i64 %1, 24
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.hh = icmp eq i64 %1, 0
  br i1 %i.hh, label %.outer._crit_edge, label %.lr.ph580.lr.ph

.lr.ph580.lr.ph:                                  ; preds = %bb.ar
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.4250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.sroa.5251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.ho = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.4241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %.sroa.5242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.hw = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.hz = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ih = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ik = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.iv = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.jb = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.jf = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.jh = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 7 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.jj = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.6.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.78.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.99.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.jl = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %.sroa.53.0..sroa_idx.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.4.0..sroa_idx.i.i139 = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i140 = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 7 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.jr = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.js = icmp samesign ult i64 %5, 2
  %i.jt = getelementptr i8, ptr %4, i64 %5        ; 2 uses
  %i.ju = add i64 %5, -1                          ; 3 uses
  %i.jv = getelementptr i8, ptr %i.jt, i64 -1
  %i.jw = getelementptr i8, ptr %i.jt, i64 -2     ; 3 uses
  %i.jx = icmp eq i64 %5, 2
  %i.jy = icmp eq i64 %5, 0
  %.sroa.017.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.017.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %.sroa.017.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.017.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.017.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 33
  %.sroa.017.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.017.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.017.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.017.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %.sroa.4.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.jz = add i64 %5, -2                          ; 2 uses
  %i.ka = add i64 %5, -3
  %xtraiter = and i64 %5, 3                       ; 3 uses
  %i.kb = icmp ult i64 %i.ju, 3
  %unroll_iter = and i64 %5, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1732 = icmp ne i64 %xtraiter, 0
  %xtraiter1733 = and i64 %i.jz, 3                ; 3 uses
  %i.kc = icmp ult i64 %i.ka, 3
  %unroll_iter1739 = and i64 %i.jz, -4
  %lcmp.mod1735.not = icmp eq i64 %xtraiter1733, 0
  %lcmp.mod1738 = icmp ne i64 %xtraiter1733, 0
  br label %.lr.ph580

bb.as:                                            ; preds = %_RNvCscbPS3L0JI5z_6uu_tac22translate_regex_flavor.exit
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !490
  %i.kd = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef 8) #22, !noalias !490 ; 4 uses
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %bb.at, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !195

bb.at:                                            ; preds = %bb.as
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #25, !noalias !490
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.as
  %i.kf = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 0, ptr %i.kd, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.kf, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !493)
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  %i.kg = getelementptr inbounds nuw i8, ptr %i.bw, i64 128
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.kh = getelementptr inbounds nuw i8, ptr %i.bw, i64 136
  %.val.i.i.i = load ptr, ptr %i.kh, align 8, !alias.scope !502, !nonnull !4, !noundef !4 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.bw, i64 144
  %.val1.i.i.i = load i64, ptr %i.ki, align 8, !alias.scope !502, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %i.kj = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.kj, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCscbPS3L0JI5z_6uu_tac.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscbPS3L0JI5z_6uu_tac.exit.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i = phi i64 [ %i.kl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscbPS3L0JI5z_6uu_tac.exit.i.i.i.i.i ], [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ] ; 2 uses
  %i.kk = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i, i64 %.sroa.0.03.i.i.i.i.i ; 2 uses
  %i.kl = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !506)
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.kk, align 8, !range !40, !alias.scope !512, !noalias !502, !noundef !4 ; 2 uses
  %i.km = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.km, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscbPS3L0JI5z_6uu_tac.exit.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.kn, align 8, !alias.scope !512, !noalias !502, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !513
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscbPS3L0JI5z_6uu_tac.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscbPS3L0JI5z_6uu_tac.exit.i.i.i.i.i: ; preds = %bb.au, %.lr.ph.i.i.i.i.i
  %i.ko = icmp eq i64 %i.kl, %.val1.i.i.i
  br i1 %i.ko, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCscbPS3L0JI5z_6uu_tac.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCscbPS3L0JI5z_6uu_tac.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscbPS3L0JI5z_6uu_tac.exit.i.i.i.i.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %.val2.i.i.i = load i64, ptr %i.kg, align 8, !range !40, !alias.scope !502, !noundef !4 ; 2 uses
  %i.kp = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.kp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECscbPS3L0JI5z_6uu_tac.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCscbPS3L0JI5z_6uu_tac.exit.i.i.i
  %i.kq = mul nuw i64 %.val2.i.i.i, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.kq, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !502
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECscbPS3L0JI5z_6uu_tac.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECscbPS3L0JI5z_6uu_tac.exit.i.i: ; preds = %bb.av, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCscbPS3L0JI5z_6uu_tac.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.kr = getelementptr inbounds nuw i8, ptr %i.bw, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.ks = getelementptr inbounds nuw i8, ptr %i.bw, i64 104
  %i.kt = load i8, ptr %i.ks, align 8, !range !520, !alias.scope !521, !noundef !4 ; 2 uses
  %i.ku = icmp eq i8 %i.kt, -1
  br i1 %i.ku, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex8builders5bytes12RegexBuilderECscbPS3L0JI5z_6uu_tac.exit, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECscbPS3L0JI5z_6uu_tac.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.kv = icmp eq i8 %i.kt, 2
  br i1 %i.kv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex8builders5bytes12RegexBuilderECscbPS3L0JI5z_6uu_tac.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.kw = load ptr, ptr %i.kr, align 8, !alias.scope !534, !nonnull !4, !noundef !4
  %i.kx = atomicrmw sub ptr %i.kw, i64 1 release, align 8, !noalias !534
  %i.ky = icmp eq i64 %i.kx, 1
  br i1 %i.ky, label %bb.ay, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex8builders5bytes12RegexBuilderECscbPS3L0JI5z_6uu_tac.exit

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcDNtNtNtCs5skpMncfVhl_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.kr) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex8builders5bytes12RegexBuilderECscbPS3L0JI5z_6uu_tac.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex8builders5bytes12RegexBuilderECscbPS3L0JI5z_6uu_tac.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECscbPS3L0JI5z_6uu_tac.exit.i.i, %bb.aw, %bb.ax, %bb.ay
  %i.kz = icmp eq i64 %.sroa.6.sroa.0.083.i, 0
  br i1 %i.kz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscbPS3L0JI5z_6uu_tac.exit, label %bb.az

bb.az:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex8builders5bytes12RegexBuilderECscbPS3L0JI5z_6uu_tac.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.6.084.i, i64 noundef %.sroa.6.sroa.0.083.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !535
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscbPS3L0JI5z_6uu_tac.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscbPS3L0JI5z_6uu_tac.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex8builders5bytes12RegexBuilderECscbPS3L0JI5z_6uu_tac.exit, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %bb.jo

bb.ba:                                            ; preds = %_RNvCscbPS3L0JI5z_6uu_tac22translate_regex_flavor.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.la = getelementptr inbounds nuw i8, ptr %i.bw, i64 128
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.lb = getelementptr inbounds nuw i8, ptr %i.bw, i64 136
  %.val.i.i.i88 = load ptr, ptr %i.lb, align 8, !alias.scope !549, !nonnull !4, !noundef !4 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.bw, i64 144
  %.val1.i.i.i89 = load i64, ptr %i.lc, align 8, !alias.scope !549, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.ld = icmp eq i64 %.val1.i.i.i89, 0
  br i1 %i.ld, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCscbPS3L0JI5z_6uu_tac.exit.i.i.i95, label %.lr.ph.i.i.i.i.i90

.lr.ph.i.i.i.i.i90:                               ; preds = %bb.ba, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscbPS3L0JI5z_6uu_tac.exit.i.i.i.i.i94
  %.sroa.0.03.i.i.i.i.i91 = phi i64 [ %i.lf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscbPS3L0JI5z_6uu_tac.exit.i.i.i.i.i94 ], [ 0, %bb.ba ] ; 2 uses
  %i.le = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i88, i64 %.sroa.0.03.i.i.i.i.i91 ; 2 uses
  %i.lf = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i91, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  call void @llvm.experimental.noalias.scope.decl(metadata !556)
  %.val.i.i.i.i.i.i.i92 = load i64, ptr %i.le, align 8, !range !40, !alias.scope !559, !noalias !549, !noundef !4 ; 2 uses
  %i.lg = icmp eq i64 %.val.i.i.i.i.i.i.i92, 0
  br i1 %i.lg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscbPS3L0JI5z_6uu_tac.exit.i.i.i.i.i94, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i.i90
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %.val1.i.i.i.i.i.i.i93 = load ptr, ptr %i.lh, align 8, !alias.scope !559, !noalias !549, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i93, i64 noundef %.val.i.i.i.i.i.i.i92, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !560
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscbPS3L0JI5z_6uu_tac.exit.i.i.i.i.i94

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscbPS3L0JI5z_6uu_tac.exit.i.i.i.i.i94: ; preds = %bb.bb, %.lr.ph.i.i.i.i.i90
  %i.li = icmp eq i64 %i.lf, %.val1.i.i.i89
  br i1 %i.li, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCscbPS3L0JI5z_6uu_tac.exit.i.i.i95, label %.lr.ph.i.i.i.i.i90

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCscbPS3L0JI5z_6uu_tac.exit.i.i.i95: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscbPS3L0JI5z_6uu_tac.exit.i.i.i.i.i94, %bb.ba
  %.val2.i.i.i96 = load i64, ptr %i.la, align 8, !range !40, !alias.scope !549, !noundef !4 ; 2 uses
  %i.lj = icmp eq i64 %.val2.i.i.i96, 0
  br i1 %i.lj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECscbPS3L0JI5z_6uu_tac.exit.i.i97, label %bb.bc

bb.bc:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCscbPS3L0JI5z_6uu_tac.exit.i.i.i95
  %i.lk = mul nuw i64 %.val2.i.i.i96, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i88, i64 noundef %i.lk, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !549
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECscbPS3L0JI5z_6uu_tac.exit.i.i97

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECscbPS3L0JI5z_6uu_tac.exit.i.i97: ; preds = %bb.bc, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCscbPS3L0JI5z_6uu_tac.exit.i.i.i95
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %i.ll = getelementptr inbounds nuw i8, ptr %i.bw, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.lm = getelementptr inbounds nuw i8, ptr %i.bw, i64 104
  %i.ln = load i8, ptr %i.lm, align 8, !range !520, !alias.scope !567, !noundef !4 ; 2 uses
  %i.lo = icmp eq i8 %i.ln, -1
  br i1 %i.lo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex8builders5bytes12RegexBuilderECscbPS3L0JI5z_6uu_tac.exit98, label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECscbPS3L0JI5z_6uu_tac.exit.i.i97
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.lp = icmp eq i8 %i.ln, 2
  br i1 %i.lp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex8builders5bytes12RegexBuilderECscbPS3L0JI5z_6uu_tac.exit98, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  call void @llvm.experimental.noalias.scope.decl(metadata !574)
  call void @llvm.experimental.noalias.scope.decl(metadata !577)
  %i.lq = load ptr, ptr %i.ll, align 8, !alias.scope !580, !nonnull !4, !noundef !4
  %i.lr = atomicrmw sub ptr %i.lq, i64 1 release, align 8, !noalias !580
  %i.ls = icmp eq i64 %i.lr, 1
  br i1 %i.ls, label %bb.bf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex8builders5bytes12RegexBuilderECscbPS3L0JI5z_6uu_tac.exit98

bb.bf:                                            ; preds = %bb.be
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcDNtNtNtCs5skpMncfVhl_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ll) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex8builders5bytes12RegexBuilderECscbPS3L0JI5z_6uu_tac.exit98

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex8builders5bytes12RegexBuilderECscbPS3L0JI5z_6uu_tac.exit98: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECscbPS3L0JI5z_6uu_tac.exit.i.i97, %bb.bd, %bb.be, %bb.bf
  %i.lt = icmp eq i64 %.sroa.6.sroa.0.083.i, 0
  br i1 %i.lt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscbPS3L0JI5z_6uu_tac.exit101, label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex8builders5bytes12RegexBuilderECscbPS3L0JI5z_6uu_tac.exit98
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.6.084.i, i64 noundef %.sroa.6.sroa.0.083.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !581
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscbPS3L0JI5z_6uu_tac.exit101

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscbPS3L0JI5z_6uu_tac.exit101: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex8builders5bytes12RegexBuilderECscbPS3L0JI5z_6uu_tac.exit98, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %bb.ar

bb.bh:                                            ; preds = %.lr.ph580, %bb.db
  %.sroa.01.0579 = phi ptr [ %.sroa.01.0.ph583, %.lr.ph580 ], [ %i.lu, %bb.db ] ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.01.0579, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  %i.lv = getelementptr i8, ptr %.sroa.01.0579, i64 8
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.01.0579, i64 16
  %i.lx = load i64, ptr %i.lw, align 8, !noundef !4 ; 14 uses
  %i.ly = icmp eq i64 %i.lx, 1
  %.pre = load ptr, ptr %i.lv, align 8            ; 4 uses
end_hunk_0
