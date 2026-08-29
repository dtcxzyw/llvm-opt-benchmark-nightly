Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/server_acceptor.server_acceptor.b28df2b4becf09d8-cgu.01?download=true
inline.NumInlined: 822
inline.NumDeleted: 333
begin_hunk_0_@_RNvCsfkrmtM4W2FM_15server_acceptor4main:bb.a
bb.nl:                                            ; preds = %bb.na
  %.not.i78 = icmp eq ptr %i.xj, null
  br i1 %.not.i78, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsfkrmtM4W2FM_15server_acceptor.exit81, label %bb.nm, !prof !841

bb.nm:                                            ; preds = %bb.nl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !1210
  store ptr %i.xj, ptr %i.cr, align 8, !noalias !1210
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 43, ptr noundef nonnull %i.cr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #23
          to label %bb.no unwind label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.xx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cr) #19
          to label %.body79 unwind label %bb.np

bb.no:                                            ; preds = %bb.nm
  unreachable

bb.np:                                            ; preds = %bb.nn
  %i.xy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsfkrmtM4W2FM_15server_acceptor.exit81: ; preds = %bb.nl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  store ptr %i.de, ptr %i.dc, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr @_RNvXsc_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.457.0..sroa_idx, align 8
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #23
          to label %bb.nq unwind label %bb.nk

bb.nq:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsfkrmtM4W2FM_15server_acceptor.exit, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsfkrmtM4W2FM_15server_acceptor.exit81
  unreachable

bb.nr:                                            ; preds = %.body79
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.de) #19
          to label %.body74 unwind label %bb.nj

.thread167:                                       ; preds = %.thread.i133, %bb.kr, %.thread172
  %eh.lpad-body144170 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread172 ], [ %.pn32.pn.pn4.i, %.thread.i133 ], [ %i.tq, %bb.kr ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn8AcceptedECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef align 8 dereferenceable(1360) %i.dn) #19
          to label %.body74 unwind label %bb.nj

bb.ns:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsfkrmtM4W2FM_15server_acceptor.exit, %bb.kl
  %i.xz = landingpad { ptr, i32 }
          cleanup
  br label %.body76

.body76:                                          ; preds = %bb.nv, %bb.ns
  %eh.lpad-body77 = phi { ptr, i32 } [ %i.xz, %bb.ns ], [ %i.ya, %bb.nv ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13AcceptedAlertECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef align 8 dereferenceable(56) %i.dk) #19
          to label %bb.ny unwind label %bb.nj

bb.nt:                                            ; preds = %bb.kl
  %.not.i = icmp eq ptr %i.ti, null
  br i1 %.not.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsfkrmtM4W2FM_15server_acceptor.exit, label %bb.nu, !prof !841

bb.nu:                                            ; preds = %bb.nt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !1213
  store ptr %i.ti, ptr %i.cs, align 8, !noalias !1213
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 43, ptr noundef nonnull %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #23
          to label %bb.nw unwind label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.ya = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cs) #19
          to label %.body76 unwind label %bb.nx

bb.nw:                                            ; preds = %bb.nu
  unreachable

bb.nx:                                            ; preds = %bb.nv
  %i.yb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsfkrmtM4W2FM_15server_acceptor.exit: ; preds = %bb.nt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  store ptr %i.dl, ptr %i.dj, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr @_RNvXsc_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.453.0..sroa_idx, align 8
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.dj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #23
          to label %bb.nq unwind label %bb.ns

bb.ny:                                            ; preds = %.body76
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.dl) #19
          to label %.body74 unwind label %bb.nj
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMCsfkrmtM4W2FM_15server_acceptorNtB2_7TestPki3crl(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5 = alloca [3 x i8], align 4             ; 4 uses
  %i.d = alloca [136 x i8], align 8               ; 13 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvNtCs3GsnHLZgB3f_5rcgen11certificate13date_time_ymd(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.g, i32 noundef 2023, i8 noundef 1, i8 noundef 1)
          to label %bb.b unwind label %bb.ah

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.sroa.01.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.42.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !nonnull !29, !noundef !29 ; 3 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 8 ; 2 uses
  %i.h = icmp ult i64 %.sroa.53.0.copyload, 384307168202282326
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.sroa.42.0.copyload, i64 %.sroa.53.0.copyload
  %i.j = icmp sgt i64 %.sroa.01.0.copyload, -1
  tail call void @llvm.assume(i1 %i.j)
  store ptr %.sroa.42.0.copyload, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.42.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.01.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.i, ptr %.sroa.6.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.g, ptr %i.k, align 8
  call void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3GsnHLZgB3f_5rcgen3crl17RevokedCertParamsEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtB17_12SerialNumberENCNvMCsfkrmtM4W2FM_15server_acceptorNtB3Y_7TestPki3crl0EE9from_iterB3Y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.018.0.copyload = load i64, ptr %i.g, align 8 ; 5 uses
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.419.0.copyload = load i32, ptr %.sroa.419.0..sroa_idx, align 8 ; 8 uses
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.01.0.extract.trunc.i.i = trunc i64 %.sroa.018.0.copyload to i32
  %.sroa.42.0.extract.shift.i.i = lshr i64 %.sroa.018.0.copyload, 32
  %.sroa.42.0.extract.trunc.i.i = trunc i64 %.sroa.42.0.extract.shift.i.i to i8 ; 2 uses
  %.sroa.53.0.extract.shift.i.i = lshr i64 %.sroa.018.0.copyload, 40
  %.sroa.53.0.extract.trunc.i.i = trunc i64 %.sroa.53.0.extract.shift.i.i to i8 ; 2 uses
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.018.0.copyload, 48
  %.sroa.6.0.extract.trunc.i.i = trunc i64 %.sroa.6.0.extract.shift.i.i to i8 ; 2 uses
  %i.l = icmp ult i32 %.sroa.01.0.extract.trunc.i.i, 1000000000
  call void @llvm.assume(i1 %i.l)
  %i.m = icmp ult i8 %.sroa.42.0.extract.trunc.i.i, 60
  call void @llvm.assume(i1 %i.m)
  %i.n = urem i64 %3, 60
  %i.o = trunc nuw nsw i64 %i.n to i8
  %i.p = add nuw nsw i8 %.sroa.42.0.extract.trunc.i.i, %i.o ; 3 uses
  %i.q = icmp ult i8 %.sroa.53.0.extract.trunc.i.i, 60
  call void @llvm.assume(i1 %i.q)
  %i.r = udiv i64 %3, 60
  %i.s = urem i64 %i.r, 60
  %i.t = trunc nuw nsw i64 %i.s to i8
  %i.u = add nuw nsw i8 %.sroa.53.0.extract.trunc.i.i, %i.t ; 2 uses
  %i.v = icmp ult i8 %.sroa.6.0.extract.trunc.i.i, 24
  call void @llvm.assume(i1 %i.v)
  %i.w = udiv i64 %3, 3600
  %i.x = urem i64 %i.w, 24
  %i.y = trunc nuw nsw i64 %i.x to i8
  %i.z = add nuw nsw i8 %.sroa.6.0.extract.trunc.i.i, %i.y ; 2 uses
  %i.aa = icmp samesign ugt i8 %i.p, 59
  br i1 %i.aa, label %bb.c, label %bb.d, !prof !839

bb.c:                                             ; preds = %bb.b
  %i.ab = add nsw i8 %i.p, -60
  %i.ac = add nuw nsw i8 %i.u, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.09.1.i.i = phi i8 [ %i.ab, %bb.c ], [ %i.p, %bb.b ]
  %.sroa.016.0.i.i = phi i8 [ %i.ac, %bb.c ], [ %i.u, %bb.b ] ; 3 uses
  %i.ad = icmp samesign ugt i8 %.sroa.016.0.i.i, 59
  br i1 %i.ad, label %bb.e, label %_RNvMs2_NtCsf4CGChoNMwa_4time4timeNtB5_4Time17adjusting_add_std.exit.i, !prof !839

bb.e:                                             ; preds = %bb.d
  %i.ae = add nsw i8 %.sroa.016.0.i.i, -60
  %i.af = add nuw nsw i8 %i.z, 1
  br label %_RNvMs2_NtCsf4CGChoNMwa_4time4timeNtB5_4Time17adjusting_add_std.exit.i

_RNvMs2_NtCsf4CGChoNMwa_4time4timeNtB5_4Time17adjusting_add_std.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.016.1.i.i = phi i8 [ %i.ae, %bb.e ], [ %.sroa.016.0.i.i, %bb.d ]
  %.sroa.023.0.i.i = phi i8 [ %i.af, %bb.e ], [ %i.z, %bb.d ] ; 3 uses
  %i.ag = icmp samesign ugt i8 %.sroa.023.0.i.i, 23 ; 2 uses
  %i.ah = add nsw i8 %.sroa.023.0.i.i, -24
  %spec.select.i.i = select i1 %i.ag, i8 %i.ah, i8 %.sroa.023.0.i.i ; 2 uses
  %i.ai = icmp samesign ult i8 %spec.select.i.i, 24
  call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp ugt i64 %3, 185542587187199        ; 2 uses
  br i1 %i.ag, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_RNvMs2_NtCsf4CGChoNMwa_4time4timeNtB5_4Time17adjusting_add_std.exit.i
  br i1 %i.aj, label %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date8next_day.exit.i.invoke, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = udiv i64 %3, 86400
  %i.al = ashr i32 %.sroa.419.0.copyload, 10
  %i.am = and i32 %.sroa.419.0.copyload, 511      ; 3 uses
  %i.an = trunc nuw nsw i64 %i.ak to i32          ; 4 uses
  %i.ao = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.am, i32 %i.an)
  %4 = add nuw nsw i32 %i.am, %i.an               ; 2 uses
  %i.ap = extractvalue { i32, i1 } %i.ao, 1
  br i1 %i.ap, label %bb.j, label %bb.h, !prof !839

bb.h:                                             ; preds = %bb.g
  %i.aq = and i32 %.sroa.419.0.copyload, 512
  %.not.i.i = icmp eq i32 %i.aq, 0
  %..i.i = select i1 %.not.i.i, i32 365, i32 366
  %5 = add nsw i32 %4, -1
  %or.cond.i.i = icmp ult i32 %5, %..i.i
  br i1 %or.cond.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = and i32 %.sroa.419.0.copyload, -512
  %i.as = or i32 %4, %i.ar
  br label %bb.w

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.at = add nsw i32 %i.al, 999999               ; 3 uses
  %.neg.i.i = sdiv i32 %i.at, -100
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.au, 1461
  %i.aw = sdiv i64 %i.av, 4
  %i.ax = trunc nsw i64 %i.aw to i32
  %i.ay = sdiv i32 %i.at, 400
  %i.az = add nuw nsw i32 %i.am, -363521075
  %i.ba = add nsw i32 %i.az, %.neg.i.i
  %i.bb = add nsw i32 %i.ba, %i.ay
  %i.bc = add nsw i32 %i.bb, %i.ax                ; 2 uses
  %i.bd = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bc, i32 %i.an)
  %i.be = extractvalue { i32, i1 } %i.bd, 1
  br i1 %i.be, label %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date8next_day.exit.i.invoke, label %bb.k, !prof !839

bb.k:                                             ; preds = %bb.j
  %6 = add nsw i32 %i.bc, %i.an                   ; 2 uses
  %i.bf = add nsw i32 %6, -5373485
  %or.cond.i.i.i = icmp ult i32 %i.bf, -7304484
  br i1 %or.cond.i.i.i, label %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date8next_day.exit.i.invoke, label %bb.l, !prof !1216

bb.l:                                             ; preds = %bb.k
  %i.bg = add nsw i32 %6, 867409993               ; 2 uses
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = mul nuw nsw i64 %i.bh, 3853261555       ; 2 uses
  %i.bj = lshr i64 %i.bi, 15
  %i.bk = lshr i64 %i.bi, 47
  %i.bl = trunc nuw nsw i64 %i.bk to i32          ; 3 uses
  %i.bm = trunc i64 %i.bj to i32
  %i.bn = icmp ugt i32 %i.bm, 42920275
  %i.bo = and i32 %i.bl, 3
  %i.bp = icmp eq i32 %i.bo, 0
  %.sroa.0.0.i.i.i.i = or i1 %i.bn, %i.bp         ; 2 uses
  %i.bq = lshr i32 %i.bl, 2
  %i.br = add nuw nsw i32 %i.bg, %i.bl
  %i.bs = sub nuw nsw i32 %i.br, %i.bq
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = mul nuw nsw i64 %i.bt, 3010298776       ; 2 uses
  %i.bv = lshr i64 %i.bu, 8
  %i.bw = lshr i64 %i.bu, 40
  %i.bx = trunc nuw nsw i64 %i.bw to i32          ; 2 uses
  %i.by = and i64 %i.bv, 4294967295
  %i.bz = mul nuw nsw i64 %i.by, 1461
  %i.ca = lshr i64 %i.bz, 34
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = zext i1 %.sroa.0.0.i.i.i.i to i32
  %i.cd = add nuw nsw i32 %i.cb, %i.cc
  %i.ce = and i32 %i.bx, 3
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = and i1 %.sroa.0.0.i.i.i.i, %i.cf
  %i.ch = shl nuw i32 %i.bx, 10
  %i.ci = add nsw i32 %i.ch, 1858256896
  %i.cj = select i1 %i.cg, i32 512, i32 0
  %i.ck = or disjoint i32 %i.cj, %i.ci
  %i.cl = or i32 %i.ck, %i.cd                     ; 2 uses
  %i.cm = icmp ne i32 %i.cl, 0
  call void @llvm.assume(i1 %i.cm)
  br label %bb.w

bb.m:                                             ; preds = %_RNvMs2_NtCsf4CGChoNMwa_4time4timeNtB5_4Time17adjusting_add_std.exit.i
  br i1 %i.aj, label %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date8next_day.exit.i.invoke, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = udiv i64 %3, 86400
  %i.co = ashr i32 %.sroa.419.0.copyload, 10
  %i.cp = and i32 %.sroa.419.0.copyload, 511      ; 3 uses
  %i.cq = trunc nuw nsw i64 %i.cn to i32          ; 4 uses
  %i.cr = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.cp, i32 %i.cq)
  %7 = add nuw nsw i32 %i.cp, %i.cq               ; 2 uses
  %i.cs = extractvalue { i32, i1 } %i.cr, 1
  br i1 %i.cs, label %bb.q, label %bb.o, !prof !839

bb.o:                                             ; preds = %bb.n
  %i.ct = and i32 %.sroa.419.0.copyload, 512
  %.not.i15.i = icmp eq i32 %i.ct, 0
  %..i16.i = select i1 %.not.i15.i, i32 365, i32 366
  %8 = add nsw i32 %7, -1
  %or.cond.i17.i = icmp ult i32 %8, %..i16.i
  br i1 %or.cond.i17.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cu = and i32 %.sroa.419.0.copyload, -512
  %i.cv = or i32 %7, %i.cu
  br label %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date15checked_add_std.exit22.i

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.cw = add nsw i32 %i.co, 999999               ; 3 uses
  %.neg.i18.i = sdiv i32 %i.cw, -100
  %i.cx = sext i32 %i.cw to i64
  %i.cy = mul nsw i64 %i.cx, 1461
  %i.cz = sdiv i64 %i.cy, 4
  %i.da = trunc nsw i64 %i.cz to i32
  %i.db = sdiv i32 %i.cw, 400
  %i.dc = add nuw nsw i32 %i.cp, -363521075
  %i.dd = add nsw i32 %i.dc, %.neg.i18.i
  %i.de = add nsw i32 %i.dd, %i.db
  %i.df = add nsw i32 %i.de, %i.da                ; 2 uses
  %i.dg = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.df, i32 %i.cq)
  %i.dh = extractvalue { i32, i1 } %i.dg, 1
  br i1 %i.dh, label %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date8next_day.exit.i.invoke, label %bb.r, !prof !839

bb.r:                                             ; preds = %bb.q
  %9 = add nsw i32 %i.df, %i.cq                   ; 2 uses
  %i.di = add nsw i32 %9, -5373485
  %or.cond.i.i19.i = icmp ult i32 %i.di, -7304484
  br i1 %or.cond.i.i19.i, label %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date8next_day.exit.i.invoke, label %bb.s, !prof !1216

bb.s:                                             ; preds = %bb.r
  %i.dj = add nsw i32 %9, 867409993               ; 2 uses
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = mul nuw nsw i64 %i.dk, 3853261555       ; 2 uses
  %i.dm = lshr i64 %i.dl, 15
  %i.dn = lshr i64 %i.dl, 47
  %i.do = trunc nuw nsw i64 %i.dn to i32          ; 3 uses
  %i.dp = trunc i64 %i.dm to i32
  %i.dq = icmp ugt i32 %i.dp, 42920275
  %i.dr = and i32 %i.do, 3
  %i.ds = icmp eq i32 %i.dr, 0
  %.sroa.0.0.i.i.i20.i = or i1 %i.dq, %i.ds       ; 2 uses
  %i.dt = lshr i32 %i.do, 2
  %i.du = add nuw nsw i32 %i.dj, %i.do
  %i.dv = sub nuw nsw i32 %i.du, %i.dt
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = mul nuw nsw i64 %i.dw, 3010298776       ; 2 uses
  %i.dy = lshr i64 %i.dx, 8
  %i.dz = lshr i64 %i.dx, 40
  %i.ea = trunc nuw nsw i64 %i.dz to i32          ; 2 uses
  %i.eb = and i64 %i.dy, 4294967295
  %i.ec = mul nuw nsw i64 %i.eb, 1461
  %i.ed = lshr i64 %i.ec, 34
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %i.ef = zext i1 %.sroa.0.0.i.i.i20.i to i32
  %i.eg = add nuw nsw i32 %i.ee, %i.ef
  %i.eh = and i32 %i.ea, 3
  %i.ei = icmp eq i32 %i.eh, 0
  %i.ej = and i1 %.sroa.0.0.i.i.i20.i, %i.ei
  %i.ek = shl nuw i32 %i.ea, 10
  %i.el = add nsw i32 %i.ek, 1858256896
  %i.em = select i1 %i.ej, i32 512, i32 0
  %i.en = or disjoint i32 %i.em, %i.el
  %i.eo = or i32 %i.en, %i.eg                     ; 2 uses
  %i.ep = icmp ne i32 %i.eo, 0
  call void @llvm.assume(i1 %i.ep)
  br label %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date15checked_add_std.exit22.i

_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date15checked_add_std.exit22.i: ; preds = %bb.s, %bb.p
  %.sroa.0.0.i21.i = phi i32 [ %i.cv, %bb.p ], [ %i.eo, %bb.s ] ; 4 uses
  %i.eq = and i32 %.sroa.0.0.i21.i, 1023
  switch i32 %i.eq, label %bb.t [
    i32 365, label %bb.u
    i32 878, label %bb.u
  ], !prof !1217

bb.t:                                             ; preds = %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date15checked_add_std.exit22.i
  %i.er = add i32 %.sroa.0.0.i21.i, 1             ; 2 uses
  %i.es = icmp ne i32 %i.er, 0
  call void @llvm.assume(i1 %i.es)
  br label %bb.w

bb.u:                                             ; preds = %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date15checked_add_std.exit22.i, %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date15checked_add_std.exit22.i
  %i.et = icmp eq i32 %.sroa.0.0.i21.i, 10239341
  br i1 %i.et, label %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date8next_day.exit.i.invoke, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eu = ashr i32 %.sroa.0.0.i21.i, 10           ; 3 uses
  %i.ev = add nsw i32 %i.eu, 1                    ; 2 uses
  %i.ew = icmp slt i32 %i.eu, -1
  %i.ex = xor i32 %i.eu, -1
  %.sroa.05.0.i.i = select i1 %i.ew, i32 %i.ex, i32 %i.ev
  %i.ey = mul i32 %.sroa.05.0.i.i, 33555415
  %i.ez = and i32 %i.ey, 100695055
  %i.fa = icmp samesign ult i32 %i.ez, 31745
  %i.fb = shl i32 %i.ev, 10
  %i.fc = select i1 %i.fa, i32 512, i32 0
  %i.fd = or disjoint i32 %i.fc, %i.fb
  %i.fe = or disjoint i32 %i.fd, 1
  br label %bb.w

_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date8next_day.exit.i.invoke: ; preds = %bb.u, %bb.m, %bb.q, %bb.r, %bb.f, %bb.j, %bb.k
  %i.ff = phi ptr [ @118, %bb.m ], [ @118, %bb.f ], [ @118, %bb.k ], [ @118, %bb.j ], [ @118, %bb.r ], [ @118, %bb.q ], [ @119, %bb.u ]
  %i.fg = phi i64 [ 32, %bb.m ], [ 32, %bb.f ], [ 32, %bb.k ], [ 32, %bb.j ], [ 32, %bb.r ], [ 32, %bb.q ], [ 31, %bb.u ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ff, i64 noundef %i.fg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #24
          to label %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date8next_day.exit.i.cont unwind label %bb.ag

_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date8next_day.exit.i.cont: ; preds = %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date8next_day.exit.i.invoke
  unreachable

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.l, %bb.i
  %.sroa.02.0.i = phi i32 [ %i.cl, %bb.l ], [ %i.as, %bb.i ], [ %i.fe, %bb.v ], [ %i.er, %bb.t ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(3) %.sroa.520.0..sroa_idx, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXsf_Cs3GsnHLZgB3f_5rcgenNtB5_12SerialNumberINtNtCsj6eKBz9Db1c_4core7convert4FromyE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 1234)
          to label %bb.x unwind label %bb.ag

bb.x:                                             ; preds = %bb.w
  %.sroa.4.0.insert.ext.i.i.i = zext nneg i8 %spec.select.i.i to i64
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i, 48
  %.sroa.3.0.insert.ext.i.i.i = zext nneg i8 %.sroa.016.1.i.i to i64
  %.sroa.3.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i.i, 40
  %.sroa.3.0.insert.insert.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i, %.sroa.3.0.insert.shift.i.i.i
  %.sroa.2.0.insert.ext.i.i.i = zext nneg i8 %.sroa.09.1.i.i to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.2.0.insert.insert.i.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i.i, %.sroa.2.0.insert.shift.i.i.i
  %.sroa.0.0.insert.ext.i.i.i = and i64 %.sroa.018.0.copyload, 1073741823
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.insert.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fh, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.fj, align 8
  %.sroa.4.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store i32 %.sroa.02.0.i, ptr %.sroa.4.0..sroa_idx15, align 8
  %.sroa.5.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.5.0..sroa_idx16, ptr noundef nonnull align 4 dereferenceable(3) %.sroa.5, i64 3, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 -1, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i64 -9223372036854775808, ptr %i.fl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvMs1_NtCs3GsnHLZgB3f_5rcgen3crlNtB6_31CertificateRevocationListParams9signed_byNtNtB8_8key_pair7KeyPairECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %1)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ab, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.fm, %bb.y ], [ %i.fo, %bb.ab ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3GsnHLZgB3f_5rcgen3crl31CertificateRevocationListParamsECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef align 8 dereferenceable(136) %i.d) #19
          to label %.thread unwind label %bb.af

bb.z:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %i.fn = load i64, ptr %i.b, align 8, !range !889, !alias.scope !1218, !noalias !1221, !noundef !29
  %.not.i = icmp eq i64 %i.fn, -1
  br i1 %.not.i, label %bb.ae, label %bb.aa, !prof !841

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1221
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #23
          to label %bb.ac unwind label %bb.ab, !noalias !1223

bb.ab:                                            ; preds = %bb.aa
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3GsnHLZgB3f_5rcgen5error5ErrorECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #19
          to label %.body unwind label %bb.ad, !noalias !1223

bb.ac:                                            ; preds = %bb.aa
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !noalias !1223
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.fq, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3GsnHLZgB3f_5rcgen3crl31CertificateRevocationListParamsECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef align 8 dereferenceable(136) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.af:                                            ; preds = %bb.ah, %bb.ag, %.body
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ag:                                            ; preds = %_RNvMNtCsf4CGChoNMwa_4time4dateNtB2_4Date8next_day.exit.i.invoke, %bb.w
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3GsnHLZgB3f_5rcgen3crl17RevokedCertParamsEECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #19
          to label %.thread unwind label %bb.af

.thread:                                          ; preds = %.body, %bb.ag, %bb.ah
  %.pn.pn24 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.fs, %bb.ah ], [ %lpad.thr_comm, %bb.ag ]
  resume { ptr, i32 } %.pn.pn24

bb.ah:                                            ; preds = %bb.a
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCs3GsnHLZgB3f_5rcgen12SerialNumberEECsfkrmtM4W2FM_15server_acceptor(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #19
          to label %.thread unwind label %bb.af
}

; Function Attrs: noreturn nonlazybind uwtable
define hidden void @_RNvMs_CsfkrmtM4W2FM_15server_acceptorNtB4_10CrlUpdater3run(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
end_hunk_0
