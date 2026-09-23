Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_lock_free_tests_common-ae5541f89ce4c96e.iceoryx2_bb_lock_free_tests_common.1eb666c4024a11a4-cgu.00?download=true
inline.NumInlined: 345
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread12thread_scopeNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_tests26concurrent_acquire_release0EB12_:bb.a
  store i32 %.sroa.4.0.i.ph.i, ptr %i.gk, align 4, !noalias !368
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 22, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @103, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #10, !noalias !355
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !357
  %exitcond.not.i = icmp eq i64 %i.cv, %i.by
  br i1 %exitcond.not.i, label %_RNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_tests26concurrent_acquire_release0B5_.exit, label %bb.b

_RNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common27mpmc_unique_index_set_tests26concurrent_acquire_release0B5_.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %i.bv, ptr noundef nonnull align 8 dereferenceable(4104) %i.bw, i64 4104, i1 false)
  call void @_RNvXs0_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB5_9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(4104) %i.bv) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  ret { i32, i32 } { i32 -1, i32 undef }
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i32, i32 } @_RINvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread12thread_scopeNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common30spmc_unrestricted_atomic_tests29load_store_works_concurrentlys_0EB12_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 9 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.7.i = alloca [24 x i8], align 8          ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [4 x i8], align 4                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 8 uses
  %i.v = alloca [128 x i8], align 1               ; 9 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [4 x i8], align 4                ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 8 uses
  %i.aj = alloca [4 x i8], align 4                ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [4 x i8], align 4                ; 4 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 9 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [4 x i8], align 4                ; 4 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [16 x i8], align 8               ; 9 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [4 x i8], align 4                ; 4 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [16 x i8], align 8               ; 8 uses
  %i.bg = alloca [72 x i8], align 8               ; 8 uses
  %i.bh = alloca [72 x i8], align 8               ; 8 uses
  %i.bi = alloca [64 x i8], align 8               ; 15 uses
  %i.bj = alloca [32 x i8], align 8               ; 7 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [8 x i8], align 8                ; 5 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [16 x i8], align 8               ; 5 uses
  %i.bp = alloca [32 x i8], align 8               ; 6 uses
  %i.bq = alloca [1080 x i8], align 8             ; 39 uses
  %i.br = alloca [16 x i8], align 8               ; 5 uses
  %i.bs = alloca [8 x i8], align 8                ; 4 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [8 x i8], align 4                ; 4 uses
  %i.bv = alloca [1 x i8], align 1                ; 3 uses
  %i.bw = alloca [32 x i8], align 8               ; 7 uses
  %i.bx = alloca [16 x i8], align 8               ; 5 uses
  %i.by = alloca [4 x i8], align 4                ; 4 uses
  %i.bz = alloca [16 x i8], align 8               ; 5 uses
  %i.ca = alloca [16 x i8], align 8               ; 5 uses
  %i.cb = alloca [16 x i8], align 8               ; 5 uses
  %i.cc = alloca [16 x i8], align 8               ; 5 uses
  %i.cd = alloca [16 x i8], align 8               ; 5 uses
  %i.ce = alloca [16 x i8], align 8               ; 5 uses
  %i.cf = alloca [16 x i8], align 8               ; 9 uses
  %i.cg = alloca [8 x i8], align 8                ; 6 uses
  %.sroa.6133.i = alloca [24 x i8], align 8       ; 4 uses
  %i.ch = alloca [32 x i8], align 8               ; 7 uses
  %i.ci = alloca [16 x i8], align 8               ; 5 uses
  %i.cj = alloca [4 x i8], align 4                ; 4 uses
  %i.ck = alloca [16 x i8], align 8               ; 5 uses
  %i.cl = alloca [16 x i8], align 8               ; 5 uses
  %i.cm = alloca [16 x i8], align 8               ; 5 uses
  %i.cn = alloca [16 x i8], align 8               ; 5 uses
  %i.co = alloca [16 x i8], align 8               ; 8 uses
  %i.cp = alloca [128 x i8], align 1              ; 9 uses
  %i.cq = alloca [32 x i8], align 8               ; 7 uses
  %i.cr = alloca [16 x i8], align 8               ; 5 uses
  %i.cs = alloca [4 x i8], align 4                ; 4 uses
  %i.ct = alloca [32 x i8], align 8               ; 7 uses
  %i.cu = alloca [16 x i8], align 8               ; 5 uses
  %i.cv = alloca [8 x i8], align 8                ; 5 uses
  %i.cw = alloca [16 x i8], align 8               ; 7 uses
  %i.cx = alloca [32 x i8], align 8               ; 7 uses
  %i.cy = alloca [16 x i8], align 8               ; 5 uses
  %i.cz = alloca [4 x i8], align 4                ; 4 uses
  %i.da = alloca [16 x i8], align 8               ; 5 uses
  %i.db = alloca [16 x i8], align 8               ; 5 uses
  %i.dc = alloca [16 x i8], align 8               ; 8 uses
  %i.dd = alloca [4 x i8], align 4                ; 6 uses
  %i.de = alloca [32 x i8], align 8               ; 7 uses
  %i.df = alloca [16 x i8], align 8               ; 5 uses
  %i.dg = alloca [4 x i8], align 4                ; 4 uses
  %i.dh = alloca [16 x i8], align 8               ; 5 uses
  %i.di = alloca [16 x i8], align 8               ; 5 uses
  %i.dj = alloca [16 x i8], align 8               ; 5 uses
  %i.dk = alloca [16 x i8], align 8               ; 5 uses
  %i.dl = alloca [16 x i8], align 8               ; 9 uses
  %i.dm = alloca [32 x i8], align 8               ; 7 uses
  %i.dn = alloca [16 x i8], align 8               ; 5 uses
  %i.do = alloca [4 x i8], align 4                ; 4 uses
  %i.dp = alloca [16 x i8], align 8               ; 5 uses
  %i.dq = alloca [16 x i8], align 8               ; 5 uses
  %i.dr = alloca [16 x i8], align 8               ; 5 uses
  %i.ds = alloca [16 x i8], align 8               ; 5 uses
  %i.dt = alloca [16 x i8], align 8               ; 9 uses
  %i.du = alloca [32 x i8], align 8               ; 7 uses
  %i.dv = alloca [16 x i8], align 8               ; 5 uses
  %i.dw = alloca [4 x i8], align 4                ; 4 uses
  %i.dx = alloca [16 x i8], align 8               ; 5 uses
  %i.dy = alloca [16 x i8], align 8               ; 5 uses
  %i.dz = alloca [16 x i8], align 8               ; 8 uses
  %i.ea = alloca [72 x i8], align 8               ; 8 uses
  %i.eb = alloca [72 x i8], align 8               ; 9 uses
  %i.ec = alloca [64 x i8], align 8               ; 15 uses
  %i.ed = alloca [32 x i8], align 8               ; 7 uses
  %i.ee = alloca [8 x i8], align 8                ; 4 uses
  %i.ef = alloca [16 x i8], align 8               ; 5 uses
  %i.eg = alloca [8 x i8], align 8                ; 5 uses
  %i.eh = alloca [16 x i8], align 8               ; 5 uses
  %i.ei = alloca [16 x i8], align 8               ; 5 uses
  %i.ej = alloca [32 x i8], align 8               ; 6 uses
  %i.ek = alloca [1080 x i8], align 8             ; 39 uses
  %i.el = alloca [16 x i8], align 8               ; 5 uses
  %i.em = alloca [8 x i8], align 8                ; 4 uses
  %i.en = alloca [16 x i8], align 8               ; 5 uses
  %i.eo = alloca [1088 x i8], align 8             ; 14 uses
  %i.ep = alloca [1088 x i8], align 8             ; 14 uses
  %i.eq = alloca [4104 x i8], align 8             ; 4 uses
  %i.er = alloca [4104 x i8], align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 4096 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.es = load ptr, ptr %0, align 8, !alias.scope !390, !noalias !391, !nonnull !5, !align !6, !noundef !5
  %i.et = load i64, ptr %i.es, align 8, !noalias !392, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.et, 0
  br i1 %.not.i, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !390, !noalias !391
  %.phi.trans.insert319.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre320.i = load ptr, ptr %.phi.trans.insert319.i, align 8, !alias.scope !390, !noalias !391
  %.phi.trans.insert321.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre322.i = load ptr, ptr %.phi.trans.insert321.i, align 8, !alias.scope !390, !noalias !391
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 1080
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 1040
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 1048
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 1063
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 1064
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 1072
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 1076
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1 = load ptr, ptr %i.ev, align 8, !alias.scope !390, !noalias !391, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %3 = load <2 x ptr>, ptr %2, align 8, !alias.scope !390, !noalias !391
  %4 = load ptr, ptr %2, align 8, !alias.scope !390, !noalias !391, !nonnull !5, !noundef !5
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ew = load ptr, ptr %5, align 8, !alias.scope !390, !noalias !391, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bq, i64 1078
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bq, i64 1077
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %.sroa.438.0..sroa_idx.i.i33.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %.sroa.4.0..sroa_idx.i.i34.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bq, i64 1040
  %i.fe = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bq, i64 1076
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bq, i64 1072 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bq, i64 1079
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bq, i64 1048 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.11.sroa.5.0..sroa.11.8..sroa_idx3.sroa_idx.i81.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  br label %bb.bi

._crit_edge.i.loopexit:                           ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultuNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread22ScopedThreadSpawnErrorE6expectCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit124.i
  %.pre = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !391, !noalias !393
  %i.fq = icmp eq i64 %.pre, 128
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %.._crit_edge_crit_edge.i
  %i.fr = phi i1 [ false, %.._crit_edge_crit_edge.i ], [ %i.fq, %._crit_edge.i.loopexit ]
  %i.fs = phi ptr [ %.pre322.i, %.._crit_edge_crit_edge.i ], [ %4, %._crit_edge.i.loopexit ]
  %i.ft = phi ptr [ %.pre320.i, %.._crit_edge_crit_edge.i ], [ %i.ew, %._crit_edge.i.loopexit ]
  %i.fu = phi ptr [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %1, %._crit_edge.i.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo), !noalias !392
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %.sroa.510.0..sroa_idx.i, i8 1, i64 1024, i1 false), !noalias !392
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eo, i64 1080
  store ptr %i.er, ptr %i.fv, align 8, !noalias !392
  store i64 0, ptr %i.eo, align 8, !noalias !392
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 1040
  store i64 0, ptr %.sroa.611.0..sroa_idx.i, align 8, !noalias !392
  %.sroa.7.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 1048
  store i8 0, ptr %.sroa.7.0..sroa_idx12.i, align 8, !noalias !392
  %.sroa.7.sroa.525.0..sroa.7.0..sroa_idx12.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 1063
  store i8 0, ptr %.sroa.7.sroa.525.0..sroa.7.0..sroa_idx12.sroa_idx.i, align 1, !noalias !392
  %.sroa.7.sroa.626.0..sroa.7.0..sroa_idx12.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 1064
  store i64 0, ptr %.sroa.7.sroa.626.0..sroa.7.0..sroa_idx12.sroa_idx.i, align 8, !noalias !392
  %.sroa.813.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 1072
  store i32 0, ptr %.sroa.813.0..sroa_idx.i, align 8, !noalias !392
  %.sroa.914.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 1076
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %.sroa.914.0..sroa_idx.i, align 4, !noalias !392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej), !noalias !392
  br i1 %i.fr, label %bb.ba, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek), !noalias !394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.ek, ptr noundef nonnull readonly align 8 dereferenceable(1088) %i.eo, i64 1080, i1 false), !noalias !395
  call void @llvm.experimental.noalias.scope.decl(metadata !396)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !noalias !394
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ek, i64 1078
  %i.fx = load i8, ptr %i.fw, align 2, !range !7, !alias.scope !396, !noalias !397, !noundef !5
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ek, i64 1077
  %i.ga = load i8, ptr %i.fz, align 1, !range !7, !alias.scope !396, !noalias !397, !noundef !5
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.e, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei), !noalias !398
  store ptr %i.ek, ptr %i.ei, align 8, !noalias !398
  %.sroa.420.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.420.0..sroa_idx.i.i.i, align 8, !noalias !398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh), !noalias !398
  store ptr @22, ptr %i.eh, align 8, !noalias !398
  %.sroa.424.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx.i.i.i, align 8, !noalias !398
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ei, ptr noundef nonnull @23, ptr noundef nonnull %i.eh) #9, !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !noalias !398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !noalias !398
  br label %.thread.i.i

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i: ; preds = %bb.ay, %bb.f, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !noalias !398
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ea, i8 0, i64 56, i1 false), !noalias !398
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  store ptr %i.ek, ptr %i.gd, align 8, !noalias !398
  store ptr %i.ek, ptr %i.gc, align 8, !noalias !398
  call void @_RNvMNtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB2_17ScopeGuardBuilderNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread16ThreadSpawnErrorNCINvMs0_B2J_NtB2J_13ThreadBuilder10spawn_impluNCNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common30spmc_unrestricted_atomic_tests29load_store_works_concurrentlys_0s_0E0NCB3J_s_0E6createB4A_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.eb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.ea) #9, !noalias !399
  %i.ge = load i32, ptr %i.eb, align 8, !range !8, !noalias !398, !noundef !5
  %i.gf = trunc nuw i32 %i.ge to i1
  br i1 %i.gf, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.gg = call noundef i64 @_RNvMNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20system_configurationNtB2_10SystemInfo5value(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @0) #9, !noalias !399 ; 4 uses
  %i.gh = icmp ugt i64 %i.gg, 1024
  br i1 %i.gh, label %bb.g, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  %.add.i.i.i = add nuw nsw i64 %i.gg, 16         ; 2 uses
  %i.gi = icmp eq i64 %.add.i.i.i, 1040
  br i1 %i.gi, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef %i.gg, i64 noundef 1024, i64 noundef 1024, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #10, !noalias !399
  unreachable

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i: ; preds = %bb.f, %bb.ay
  %.sroa.0.0.idx243.i.i.i = phi i64 [ %.sroa.0.0.add.i.i.i, %bb.ay ], [ %.add.i.i.i, %bb.f ] ; 2 uses
  %.sroa.8.0242.i.i.i = phi i64 [ %i.jw, %bb.ay ], [ 0, %bb.f ] ; 2 uses
  %.sroa.0.0.ptr244.i.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.0.0.idx243.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg), !noalias !398
  store i64 %.sroa.8.0242.i.i.i, ptr %i.eg, align 8, !noalias !398
  %i.gj = load i8, ptr %.sroa.0.0.ptr244.i.i.i, align 1, !range !7, !alias.scope !396, !noalias !397, !noundef !5
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.az, label %bb.ay

bb.h:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.gm = load i32, ptr %i.gl, align 4, !range !10, !noalias !398, !noundef !5
  %i.gn = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.go = load i32, ptr %i.gn, align 8, !noalias !398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !398
  br label %bb.bb

bb.i:                                             ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.sroa.037.0.copyload.i.i.i = load i32, ptr %i.gp, align 8, !noalias !398
  %.sroa.438.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.438.0..sroa_idx.i.i.i, i64 60, i1 false), !noalias !398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !398
  store i32 %.sroa.037.0.copyload.i.i.i, ptr %i.ec, align 8, !noalias !398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !398
  store ptr @1, ptr %i.dz, align 8, !noalias !398, !captures !11
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i64 24, ptr %i.gq, align 8, !noalias !398
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ek, i64 1040
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !396, !noalias !397, !noundef !5
  %i.gt = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread25pthread_attr_setguardsize(ptr noundef nonnull %i.ec, i64 noundef %i.gs) #9, !noalias !399
  %i.gu = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.gt) #9, !noalias !399 ; 3 uses
  switch i32 %i.gu, label %bb.j [
    i32 0, label %bb.k
    i32 22, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !noalias !398
  store i32 %i.gu, ptr %i.dw, align 4, !noalias !398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv), !noalias !398
  store ptr %i.ek, ptr %i.dv, align 8, !noalias !398
  %.sroa.442.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.442.0..sroa_idx.i.i.i, align 8, !noalias !398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du), !noalias !398
  store ptr %i.dz, ptr %i.du, align 8, !noalias !398
  %.sroa.454.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.454.0..sroa_idx.i.i.i, align 8, !noalias !398
  %i.gv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store ptr %i.dw, ptr %i.gv, align 8, !noalias !398
  %.sroa.458.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.458.0..sroa_idx.i.i.i, align 8, !noalias !398
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.dv, ptr noundef nonnull @13, ptr noundef nonnull %i.du) #9, !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !398
  br label %bb.ax

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !noalias !398
  store ptr @2, ptr %i.dt, align 8, !noalias !398, !captures !11
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i64 53, ptr %i.gw, align 8, !noalias !398
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ek, i64 1076
  %i.gy = load i8, ptr %i.gx, align 4, !range !7, !alias.scope !396, !noalias !397, !noundef !5
  %i.gz = xor i8 %i.gy, 1
  %not..i.i.i = zext nneg i8 %i.gz to i32
  %i.ha = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread28pthread_attr_setinheritsched(ptr noundef nonnull %i.ec, i32 noundef %not..i.i.i) #9, !noalias !399
  %i.hb = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.ha) #9, !noalias !399 ; 3 uses
  switch i32 %i.hb, label %bb.m [
    i32 0, label %bb.n
    i32 38, label %bb.o
    i32 95, label %bb.p
  ]

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !398
  store ptr %i.ek, ptr %i.dy, align 8, !noalias !398
  %.sroa.446.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.446.0..sroa_idx.i.i.i, align 8, !noalias !398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !398
  store ptr %i.dz, ptr %i.dx, align 8, !noalias !398
  %.sroa.450.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.450.0..sroa_idx.i.i.i, align 8, !noalias !398
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.dy, ptr noundef nonnull @19, ptr noundef nonnull %i.dx) #9, !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !398
  br label %bb.ax

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !398
  store i32 %i.hb, ptr %i.do, align 4, !noalias !398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !398
  store ptr %i.ek, ptr %i.dn, align 8, !noalias !398
  %.sroa.462.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.462.0..sroa_idx.i.i.i, align 8, !noalias !398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !398
  store ptr %i.dt, ptr %i.dm, align 8, !noalias !398
  %.sroa.482.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.482.0..sroa_idx.i.i.i, align 8, !noalias !398
  %i.hc = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store ptr %i.do, ptr %i.hc, align 8, !noalias !398
  %.sroa.486.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.486.0..sroa_idx.i.i.i, align 8, !noalias !398
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.dn, ptr noundef nonnull @13, ptr noundef nonnull %i.dm) #9, !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !398
  br label %bb.aw

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !398
  store ptr @3, ptr %i.dl, align 8, !noalias !398, !captures !11
  %i.hd = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 30, ptr %i.hd, align 8, !noalias !398
  %i.he = getelementptr inbounds nuw i8, ptr %i.ek, i64 1072 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 8, !range !12, !alias.scope !396, !noalias !397, !noundef !5
  %i.hg = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread27pthread_attr_setschedpolicy(ptr noundef nonnull %i.ec, i32 noundef %i.hf) #9, !noalias !399
  %i.hh = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.hg) #9, !noalias !399 ; 3 uses
  switch i32 %i.hh, label %bb.q [
end_hunk_0
begin_hunk_1_@_RINvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread12thread_scopeNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common30spmc_unrestricted_atomic_tests29load_store_works_concurrentlys_0EB12_:bb.a
bb.cb:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !407
  store ptr %i.bq, ptr %i.ao, align 8, !noalias !407
  %.sroa.494.0..sroa_idx.i.i54.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.494.0..sroa_idx.i.i54.i, align 8, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !407
  store ptr %i.ar, ptr %i.an, align 8, !noalias !407
  %.sroa.4109.0..sroa_idx.i.i55.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4109.0..sroa_idx.i.i55.i, align 8, !noalias !407
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ao, ptr noundef nonnull @18, ptr noundef nonnull %i.an) #9, !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !407
  br label %bb.db

bb.cc:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !407
  store i32 %i.lk, ptr %i.af, align 4, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !407
  store ptr %i.bq, ptr %i.ae, align 8, !noalias !407
  %.sroa.4121.0..sroa_idx.i.i97.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4121.0..sroa_idx.i.i97.i, align 8, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !407
  store ptr %i.ai, ptr %i.ad, align 8, !noalias !407
  %.sroa.4133.0..sroa_idx.i.i98.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4133.0..sroa_idx.i.i98.i, align 8, !noalias !407
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.af, ptr %i.ll, align 8, !noalias !407
  %.sroa.4137.0..sroa_idx.i.i99.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4137.0..sroa_idx.i.i99.i, align 8, !noalias !407
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ae, ptr noundef nonnull @13, ptr noundef nonnull %i.ad) #9, !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !407
  br label %bb.cw

bb.cd:                                            ; preds = %bb.bz
  %i.lm = load i64, ptr %i.bq, align 8, !range !13, !alias.scope !405, !noalias !406, !noundef !5
  %i.ln = trunc nuw i64 %i.lm to i1
  br i1 %i.ln, label %bb.cf, label %bb.cg

bb.ce:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !407
  store ptr %i.bq, ptr %i.ah, align 8, !noalias !407
  %.sroa.4125.0..sroa_idx.i.i60.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4125.0..sroa_idx.i.i60.i, align 8, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !407
  store ptr %i.ai, ptr %i.ag, align 8, !noalias !407
  %.sroa.4129.0..sroa_idx.i.i61.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4129.0..sroa_idx.i.i61.i, align 8, !noalias !407
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.ah, ptr noundef nonnull @18, ptr noundef nonnull %i.ag) #9, !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !407
  br label %bb.cw

bb.cf:                                            ; preds = %bb.cd
  %i.lo = load i64, ptr %i.fk, align 8, !alias.scope !405, !noalias !406, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !407
  store ptr @5, ptr %i.ac, align 8, !noalias !407, !captures !11
  store i64 36, ptr %i.fl, align 8, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !407
  %i.lp = call noundef i64 @_RNvMs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix20system_configurationNtB4_5Limit5value(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @6) #9, !noalias !408 ; 2 uses
  store i64 %i.lp, ptr %i.ab, align 8, !noalias !407
  %i.lq = icmp ult i64 %i.lo, %i.lp
  br i1 %i.lq, label %bb.ci, label %bb.ch

bb.cg:                                            ; preds = %bb.cj, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !407
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.v, i8 0, i64 128, i1 false), !noalias !407
  %i.lr = call noundef i64 @_RNvMNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20system_configurationNtB2_10SystemInfo5value(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @0) #9, !noalias !408 ; 3 uses
  %i.ls = call i64 @llvm.umin.i64(i64 %i.lr, i64 1024) ; 3 uses
  %.not.i.i64.i = icmp eq i64 %i.lr, 0
  br i1 %.not.i.i64.i, label %._crit_edge.i.i68.i, label %.lr.ph.i.i65.i.preheader

.lr.ph.i.i65.i.preheader:                         ; preds = %bb.cg
  %xtraiter = and i64 %i.ls, 1
  %i.lt = icmp eq i64 %i.lr, 1
  br i1 %i.lt, label %.lr.ph.i.i65.i.epil.preheader, label %.lr.ph.i.i65.i.preheader.new

.lr.ph.i.i65.i.preheader.new:                     ; preds = %.lr.ph.i.i65.i.preheader
  %unroll_iter = and i64 %i.ls, 2046
  br label %.lr.ph.i.i65.i

bb.ch:                                            ; preds = %bb.cf
  %i.lu = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread25pthread_attr_setstacksize(ptr noundef nonnull %i.bi, i64 noundef %i.lo) #9, !noalias !408
  %i.lv = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.lu) #9, !noalias !408 ; 3 uses
  %i.lw = icmp eq i32 %i.lv, 0
  br i1 %i.lw, label %bb.cj, label %bb.ck

bb.ci:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !407
  store ptr %i.bq, ptr %i.aa, align 8, !noalias !407
  %.sroa.4141.0..sroa_idx.i.i94.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4141.0..sroa_idx.i.i94.i, align 8, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !407
  store ptr %i.ac, ptr %i.z, align 8, !noalias !407
  %.sroa.4145.0..sroa_idx.i.i95.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4145.0..sroa_idx.i.i95.i, align 8, !noalias !407
  %i.lx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.ab, ptr %i.lx, align 8, !noalias !407
  %.sroa.4149.0..sroa_idx.i.i96.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @_RNvXsd_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4149.0..sroa_idx.i.i96.i, align 8, !noalias !407
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.aa, ptr noundef nonnull @17, ptr noundef nonnull %i.z) #9, !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !407
  br label %bb.da

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !407
  br label %bb.cg

bb.ck:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !407
  store i32 %i.lv, ptr %i.y, align 4, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !407
  store ptr %i.bq, ptr %i.x, align 8, !noalias !407
  %.sroa.4153.0..sroa_idx.i.i89.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4153.0..sroa_idx.i.i89.i, align 8, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !407
  store ptr %i.ac, ptr %i.w, align 8, !noalias !407
  %.sroa.4157.0..sroa_idx.i.i90.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4157.0..sroa_idx.i.i90.i, align 8, !noalias !407
  %i.ly = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.y, ptr %i.ly, align 8, !noalias !407
  %.sroa.4161.0..sroa_idx.i.i91.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4161.0..sroa_idx.i.i91.i, align 8, !noalias !407
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.x, ptr noundef nonnull @13, ptr noundef nonnull %i.w) #9, !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !407
  br label %bb.da

._crit_edge.i.i68.i.loopexit.unr-lcssa:           ; preds = %bb.cy
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i68.i, label %.lr.ph.i.i65.i.epil.preheader

.lr.ph.i.i65.i.epil.preheader:                    ; preds = %._crit_edge.i.i68.i.loopexit.unr-lcssa, %.lr.ph.i.i65.i.preheader
  %.sroa.0162.0245.i.i66.i.epil.init = phi i64 [ 0, %.lr.ph.i.i65.i.preheader ], [ %i.mu, %._crit_edge.i.i68.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod458 = trunc i64 %i.ls to i1
  call void @llvm.assume(i1 %lcmp.mod458)
  %i.lz = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.sroa.0162.0245.i.i66.i.epil.init
  %i.ma = load i8, ptr %i.lz, align 1, !range !7, !alias.scope !405, !noalias !406, !noundef !5
  %i.mb = trunc nuw i8 %i.ma to i1
  br i1 %i.mb, label %bb.cl, label %._crit_edge.i.i68.i

bb.cl:                                            ; preds = %.lr.ph.i.i65.i.epil.preheader
  %i.mc = trunc i64 %.sroa.0162.0245.i.i66.i.epil.init to i8
  %i.md = and i8 %i.mc, 7
  %i.me = shl nuw i8 1, %i.md
  %i.mf = lshr i64 %.sroa.0162.0245.i.i66.i.epil.init, 3
  %i.mg = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.mf ; 2 uses
  %i.mh = load i8, ptr %i.mg, align 1, !noalias !407, !noundef !5
  %i.mi = or i8 %i.mh, %i.me
  store i8 %i.mi, ptr %i.mg, align 1, !noalias !407
  br label %._crit_edge.i.i68.i

._crit_edge.i.i68.i:                              ; preds = %._crit_edge.i.i68.i.loopexit.unr-lcssa, %bb.cl, %.lr.ph.i.i65.i.epil.preheader, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !407
  store ptr @7, ptr %i.u, align 8, !noalias !407, !captures !11
  store i64 37, ptr %i.fn, align 8, !noalias !407
  %i.mj = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread27pthread_attr_setaffinity_np(ptr noundef nonnull %i.bi, i64 noundef 128, ptr noundef nonnull %i.v) #9, !noalias !408
  %i.mk = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.mj) #9, !noalias !408 ; 3 uses
  switch i32 %i.mk, label %bb.cm [
    i32 0, label %bb.cn
    i32 12, label %bb.co
    i32 22, label %bb.cp
  ]

.lr.ph.i.i65.i:                                   ; preds = %bb.cy, %.lr.ph.i.i65.i.preheader.new
  %.sroa.0162.0245.i.i66.i = phi i64 [ 0, %.lr.ph.i.i65.i.preheader.new ], [ %i.mu, %bb.cy ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i65.i.preheader.new ], [ %niter.next.1, %bb.cy ]
  %i.ml = or disjoint i64 %.sroa.0162.0245.i.i66.i, 1 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.sroa.0162.0245.i.i66.i
  %i.mn = load i8, ptr %i.mm, align 2, !range !7, !alias.scope !405, !noalias !406, !noundef !5
  %i.mo = trunc nuw i8 %i.mn to i1
  br i1 %i.mo, label %bb.cz, label %.lr.ph.i.i65.i.1

bb.cm:                                            ; preds = %._crit_edge.i.i68.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !407
  store i32 %i.mk, ptr %i.p, align 4, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !407
  store ptr %i.bq, ptr %i.o, align 8, !noalias !407
  %.sroa.4167.0..sroa_idx.i.i86.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4167.0..sroa_idx.i.i86.i, align 8, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !407
  store ptr %i.u, ptr %i.n, align 8, !noalias !407
  %.sroa.4187.0..sroa_idx.i.i87.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4187.0..sroa_idx.i.i87.i, align 8, !noalias !407
  %i.mp = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.p, ptr %i.mp, align 8, !noalias !407
  %.sroa.4191.0..sroa_idx.i.i88.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4191.0..sroa_idx.i.i88.i, align 8, !noalias !407
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.o, ptr noundef nonnull @13, ptr noundef nonnull %i.n) #9, !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !407
  br label %bb.cv

bb.cn:                                            ; preds = %._crit_edge.i.i68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !407
  %i.mq = call noundef ptr @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6stdlib6malloc(i64 noundef 56) #9, !noalias !408 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %i.fo, i64 24, i1 false), !noalias !406
  store ptr %1, ptr %i.mq, align 8, !noalias !408
  %.sroa.4135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store <2 x ptr> %3, ptr %.sroa.4135.0..sroa_idx.i, align 8, !noalias !408
  %.sroa.6137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  store ptr %i.ew, ptr %.sroa.6137.0..sroa_idx.i, align 8, !noalias !408
  %.sroa.7.0..sroa_idx138.i = getelementptr inbounds nuw i8, ptr %i.mq, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx138.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !407
  store i64 0, ptr %i.m, align 8, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !407
  store ptr @8, ptr %i.l, align 8, !noalias !407, !captures !11
  store i64 23, ptr %i.fp, align 8, !noalias !407
  %i.mr = call noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix7pthread14pthread_create(ptr noundef nonnull %i.m, ptr noundef nonnull %i.bi, ptr noundef nonnull @_RINvNvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB8_13ThreadBuilder10spawn_impl13start_routineNCNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common30spmc_unrestricted_atomic_tests29load_store_works_concurrentlys_00uEB1H_, ptr noundef nonnull %i.mq) #9, !noalias !408
  %i.ms = call noundef i32 @_RNvXs0_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnolINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_5ErrnoE4into(i32 noundef %i.mr) #9, !noalias !408 ; 3 uses
  switch i32 %i.ms, label %bb.cq [
    i32 0, label %bb.dl
    i32 1, label %bb.cr
    i32 11, label %bb.cs
    i32 22, label %bb.ct
  ]

bb.co:                                            ; preds = %._crit_edge.i.i68.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !407
  store ptr %i.bq, ptr %i.r, align 8, !noalias !407
  %.sroa.4171.0..sroa_idx.i.i72.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4171.0..sroa_idx.i.i72.i, align 8, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !407
  store ptr %i.u, ptr %i.q, align 8, !noalias !407
  %.sroa.4183.0..sroa_idx.i.i73.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4183.0..sroa_idx.i.i73.i, align 8, !noalias !407
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.r, ptr noundef nonnull @14, ptr noundef nonnull %i.q) #9, !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !407
  br label %bb.cv

bb.cp:                                            ; preds = %._crit_edge.i.i68.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !407
  store ptr %i.bq, ptr %i.t, align 8, !noalias !407
  %.sroa.4175.0..sroa_idx.i.i69.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4175.0..sroa_idx.i.i69.i, align 8, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !407
  store ptr %i.u, ptr %i.s, align 8, !noalias !407
  %.sroa.4179.0..sroa_idx.i.i70.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4179.0..sroa_idx.i.i70.i, align 8, !noalias !407
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.t, ptr noundef nonnull @15, ptr noundef nonnull %i.s) #9, !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !407
  br label %bb.cv

bb.cq:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !407
  store i32 %i.ms, ptr %i.e, align 4, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !407
  store ptr %i.bq, ptr %i.d, align 8, !noalias !407
  %.sroa.4196.0..sroa_idx.i.i83.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4196.0..sroa_idx.i.i83.i, align 8, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !407
  store ptr %i.l, ptr %i.c, align 8, !noalias !407
  %.sroa.4224.0..sroa_idx.i.i84.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4224.0..sroa_idx.i.i84.i, align 8, !noalias !407
  %i.mt = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.mt, align 8, !noalias !407
  %.sroa.4228.0..sroa_idx.i.i85.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1_NtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix5errnoNtB5_5ErrnoNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.4228.0..sroa_idx.i.i85.i, align 8, !noalias !407
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.d, ptr noundef nonnull @13, ptr noundef nonnull %i.c) #9, !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !407
  br label %bb.cu

bb.cr:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !407
  store ptr %i.bq, ptr %i.g, align 8, !noalias !407
  %.sroa.4200.0..sroa_idx.i.i79.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4200.0..sroa_idx.i.i79.i, align 8, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !407
  store ptr %i.l, ptr %i.f, align 8, !noalias !407
  %.sroa.4220.0..sroa_idx.i.i80.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4220.0..sroa_idx.i.i80.i, align 8, !noalias !407
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.g, ptr noundef nonnull @10, ptr noundef nonnull %i.f) #9, !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !407
  br label %bb.cu

bb.cs:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !407
  store ptr %i.bq, ptr %i.k, align 8, !noalias !407
  %.sroa.4208.0..sroa_idx.i.i77.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4208.0..sroa_idx.i.i77.i, align 8, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !407
  store ptr %i.l, ptr %i.j, align 8, !noalias !407
  %.sroa.4212.0..sroa_idx.i.i78.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4212.0..sroa_idx.i.i78.i, align 8, !noalias !407
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.k, ptr noundef nonnull @11, ptr noundef nonnull %i.j) #9, !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !407
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !407
  store ptr %i.bq, ptr %i.i, align 8, !noalias !407
  %.sroa.4204.0..sroa_idx.i.i74.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1p_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB6_13ThreadBuilderNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.4204.0..sroa_idx.i.i74.i, align 8, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !407
  store ptr %i.l, ptr %i.h, align 8, !noalias !407
  %.sroa.4216.0..sroa_idx.i.i75.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common, ptr %.sroa.4216.0..sroa_idx.i.i75.i, align 8, !noalias !407
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.i, ptr noundef nonnull @12, ptr noundef nonnull %i.h) #9, !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !407
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cq
  %.sroa.27.6.i76.i = phi i32 [ 13, %bb.cq ], [ 3, %bb.cr ], [ 1, %bb.cs ], [ 2, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !407
  call void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNCINvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB2M_13ThreadBuilder10spawn_impluNCNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common30spmc_unrestricted_atomic_tests29load_store_works_concurrentlys_00Es_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB48_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bi) #9, !noalias !408
  br label %bb.dh

bb.cv:                                            ; preds = %bb.cp, %bb.co, %bb.cm
  %.sroa.27.5.i71.i = phi i32 [ 13, %bb.cm ], [ 0, %bb.co ], [ 12, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !407
  br label %bb.cw

bb.cw:                                            ; preds = %bb.da, %bb.cv, %bb.ce, %bb.cc
  %.sroa.50.sroa.0.4.i62.i = phi i32 [ %i.lk, %bb.cc ], [ %.sroa.50.sroa.0.7.i92.i, %bb.da ], [ %i.mk, %bb.cv ], [ undef, %bb.ce ]
  %.sroa.27.4.i63.i = phi i32 [ 13, %bb.cc ], [ %.sroa.27.7.i93.i, %bb.da ], [ %.sroa.27.5.i71.i, %bb.cv ], [ 11, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !407
  br label %bb.db

.lr.ph.i.i65.i.1:                                 ; preds = %bb.cz, %.lr.ph.i.i65.i
  %i.mu = add nuw nsw i64 %.sroa.0162.0245.i.i66.i, 2 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.ml
  %i.mw = load i8, ptr %i.mv, align 1, !range !7, !alias.scope !405, !noalias !406, !noundef !5
  %i.mx = trunc nuw i8 %i.mw to i1
  br i1 %i.mx, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.lr.ph.i.i65.i.1
  %i.my = trunc i64 %i.ml to i8
  %i.mz = and i8 %i.my, 7
  %i.na = shl nuw i8 1, %i.mz
  %i.nb = lshr i64 %.sroa.0162.0245.i.i66.i, 3
  %i.nc = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.nb ; 2 uses
  %i.nd = load i8, ptr %i.nc, align 1, !noalias !407, !noundef !5
  %i.ne = or i8 %i.nd, %i.na
  store i8 %i.ne, ptr %i.nc, align 1, !noalias !407
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.lr.ph.i.i65.i.1
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i68.i.loopexit.unr-lcssa, label %.lr.ph.i.i65.i

bb.cz:                                            ; preds = %.lr.ph.i.i65.i
  %i.nf = trunc i64 %.sroa.0162.0245.i.i66.i to i8
  %i.ng = and i8 %i.nf, 6
  %i.nh = shl nuw nsw i8 1, %i.ng
  %i.ni = lshr i64 %.sroa.0162.0245.i.i66.i, 3
  %i.nj = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ni ; 2 uses
  %i.nk = load i8, ptr %i.nj, align 1, !noalias !407, !noundef !5
  %i.nl = or i8 %i.nk, %i.nh
  store i8 %i.nl, ptr %i.nj, align 1, !noalias !407
  br label %.lr.ph.i.i65.i.1

bb.da:                                            ; preds = %bb.ck, %bb.ci
  %.sroa.50.sroa.0.7.i92.i = phi i32 [ undef, %bb.ci ], [ %i.lv, %bb.ck ]
  %.sroa.27.7.i93.i = phi i32 [ 7, %bb.ci ], [ 13, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !407
  br label %bb.cw

bb.db:                                            ; preds = %bb.cw, %bb.cb, %bb.ca, %bb.by
  %.sroa.50.sroa.0.3.i56.i = phi i32 [ %i.lf, %bb.by ], [ %.sroa.50.sroa.0.4.i62.i, %bb.cw ], [ undef, %bb.ca ], [ undef, %bb.cb ]
  %.sroa.27.3.i57.i = phi i32 [ 13, %bb.by ], [ %.sroa.27.4.i63.i, %bb.cw ], [ 6, %bb.ca ], [ 6, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !407
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.bx, %bb.bw, %bb.bu
  %.sroa.50.sroa.0.2.i50.i = phi i32 [ %i.lb, %bb.bu ], [ %.sroa.50.sroa.0.3.i56.i, %bb.db ], [ undef, %bb.bw ], [ undef, %bb.bx ]
  %.sroa.27.2.i51.i = phi i32 [ 13, %bb.bu ], [ %.sroa.27.3.i57.i, %bb.db ], [ 10, %bb.bw ], [ 10, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !407
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.bt, %bb.br
  %.sroa.50.sroa.0.0.i37.i = phi i32 [ %i.kw, %bb.br ], [ %.sroa.50.sroa.0.2.i50.i, %bb.dc ], [ undef, %bb.bt ]
  %.sroa.27.0.i38.i = phi i32 [ 13, %bb.br ], [ %.sroa.27.2.i51.i, %bb.dc ], [ 4, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !407
  call void @_RNvXs0_NtCs3stRo7scs5B_22iceoryx2_bb_elementary11scope_guardINtB5_10ScopeGuardNtNtNtNtNtNtNtCsaKu43HoI3Ih_4libc4unix10linux_like5linux3gnu3b646x86_6414pthread_attr_tNCINvMs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB2M_13ThreadBuilder10spawn_impluNCNCNvNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common30spmc_unrestricted_atomic_tests29load_store_works_concurrentlys_00Es_0ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB48_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bi) #9, !noalias !408
  br label %bb.dh

bb.de:                                            ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i110.i
  %i.nm = add nuw nsw i64 %.sroa.8.0242.i.i112.i, 1
  %.sroa.0.0.add.i.i114.i = add nuw nsw i64 %.sroa.0.0.idx243.i.i111.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !407
  %i.nn = icmp eq i64 %.sroa.0.0.add.i.i114.i, 1040
  br i1 %i.nn, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.thread.i.i31.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterbEENtNtNtB8_6traits8iterator8Iterator4nextCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i110.i
end_hunk_1
