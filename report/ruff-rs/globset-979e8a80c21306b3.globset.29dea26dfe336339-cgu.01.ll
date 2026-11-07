Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/globset-979e8a80c21306b3.globset.29dea26dfe336339-cgu.01?download=true
inline.NumInlined: 262
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs9_NtCs3AS159VDs7t_7globset4globNtB5_4Glob6suffix:bb.a
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3AS159VDs7t_7globset(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3AS159VDs7t_7globset.exit28: ; preds = %bb.y
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3AS159VDs7t_7globset(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.ad

bb.ab:                                            ; preds = %._crit_edge
  %i.by = load ptr, ptr %.sroa.413.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %lhsc = load i8, ptr %i.by, align 1
  %i.bz = icmp eq i8 %lhsc, 47
  br i1 %i.bz, label %bb.y, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.019.0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3AS159VDs7t_7globset.exit28, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.x

bb.ae:                                            ; preds = %bb.p
  unreachable

bb.af:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsa_NtCs3AS159VDs7t_7globset4globNtB5_11GlobBuilder5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !494 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 14 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 15 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [48 x i8], align 8                ; 9 uses
  %i.q = alloca [40 x i8], align 8                ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %i.aa = alloca [48 x i8], align 8               ; 8 uses
  %i.ab = alloca [32 x i8], align 8               ; 4 uses
  %i.ac = alloca [48 x i8], align 8               ; 8 uses
  %i.ad = alloca [32 x i8], align 8               ; 4 uses
  %i.ae = alloca [48 x i8], align 8               ; 8 uses
  %i.af = alloca [32 x i8], align 8               ; 4 uses
  %i.ag = alloca [48 x i8], align 8               ; 8 uses
  %i.ah = alloca [32 x i8], align 8               ; 9 uses
  %i.ai = alloca [48 x i8], align 8               ; 8 uses
  %i.aj = alloca [32 x i8], align 8               ; 6 uses
  %i.ak = alloca [48 x i8], align 8               ; 8 uses
  %i.al = alloca [48 x i8], align 8               ; 8 uses
  %i.am = alloca [32 x i8], align 8               ; 6 uses
  %i.an = alloca [48 x i8], align 8               ; 8 uses
  %i.ao = alloca [32 x i8], align 8               ; 4 uses
  %i.ap = alloca [48 x i8], align 8               ; 8 uses
  %i.aq = alloca [48 x i8], align 8               ; 8 uses
  %i.ar = alloca [32 x i8], align 8               ; 6 uses
  %i.as = alloca [48 x i8], align 8               ; 8 uses
  %i.at = alloca [32 x i8], align 8               ; 4 uses
  %i.au = alloca [48 x i8], align 8               ; 8 uses
  %.sroa.10.i.sroa.0 = alloca [16 x i8], align 8  ; 9 uses
  %.sroa.28.i = alloca [16 x i8], align 8         ; 17 uses
  %i.av = alloca [32 x i8], align 8               ; 5 uses
  %i.aw = alloca [48 x i8], align 8               ; 8 uses
  %i.ax = alloca [48 x i8], align 8               ; 10 uses
  %i.ay = alloca [48 x i8], align 8               ; 8 uses
  %i.az = alloca [48 x i8], align 8               ; 15 uses
  %i.ba = alloca [32 x i8], align 8               ; 4 uses
  %i.bb = alloca [48 x i8], align 8               ; 8 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [24 x i8], align 8               ; 6 uses
  %i.be = alloca [24 x i8], align 8               ; 7 uses
  %i.bf = alloca [80 x i8], align 8               ; 7 uses
  %i.bg = alloca [24 x i8], align 8               ; 7 uses
  %i.bh = alloca [24 x i8], align 8               ; 7 uses
  %i.bi = alloca [112 x i8], align 8              ; 42 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.bj = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !5 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store i64 0, ptr %i.bh, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 0, ptr %i.bn, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.bo = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #18 ; 5 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.b, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #20
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECs3AS159VDs7t_7globset(ptr noalias noundef align 8 dereferenceable(24) %i.bh) #19
          to label %bb.gx unwind label %bb.gq

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 0, ptr %i.bo, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 72 ; 7 uses
  store ptr %i.bj, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 80 ; 7 uses
  store i64 %i.bl, ptr %i.bu, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 6 uses
  store i64 1, ptr %i.bv, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 5 uses
  store ptr %i.bo, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 40 ; 10 uses
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 48 ; 38 uses
  store ptr %i.bj, ptr %i.bw, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 56 ; 6 uses
  store ptr %i.br, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 64 ; 15 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 96 ; 12 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 100 ; 19 uses
  store i32 -1, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bi, i64 104 ; 3 uses
  store i8 0, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 88 ; 3 uses
  store ptr %i.bs, ptr %i.ca, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.28.i)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 5 uses
  %.sroa.4.0..sroa_idx.i14.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5.0..sroa_idx.i15.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.493.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %.sroa.594.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 3 uses
  %.sroa.695.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 4 uses
  %.sroa.796.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %.sroa.897.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 36 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5133.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.4132.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.dn, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  %i.cs = phi i32 [ %.pre250, %bb.dn ], [ -2, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit ] ; 2 uses
  %i.ct = phi i32 [ %.pre, %bb.dn ], [ -1, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  store i32 %i.ct, ptr %i.bx, align 8, !alias.scope !497
  store i32 -2, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !497
  %.not.i.i = icmp eq i32 %i.cs, -2
  br i1 %.not.i.i, label %bb.e, label %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4bump.exit.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.cu = load ptr, ptr %i.bw, align 8, !alias.scope !499, !nonnull !5, !noundef !5 ; 6 uses
  %i.cv = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !499, !nonnull !5, !noundef !5 ; 4 uses
  %.not5.i.i = icmp eq ptr %i.cu, %i.cv
  br i1 %.not5.i.i, label %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4bump.exit.thread.i, label %bb.f

_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4bump.exit.thread.i: ; preds = %bb.e
  store i32 -1, ptr %i.by, align 4, !alias.scope !497
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 1 ; 3 uses
  store ptr %i.cw, ptr %i.bw, align 8, !alias.scope !499
  %i.cx = load i8, ptr %i.cu, align 1, !noalias !500, !noundef !5 ; 5 uses
  %i.cy = icmp sgt i8 %i.cx, -1
  br i1 %i.cy, label %bb.g, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit12.i.i.i: ; preds = %bb.f
  %i.cz = and i8 %i.cx, 31
  %i.da = zext nneg i8 %i.cz to i32               ; 3 uses
  %i.db = icmp ne ptr %i.cw, %i.cv
  call void @llvm.assume(i1 %i.db)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 2 ; 3 uses
  store ptr %i.dc, ptr %i.bw, align 8, !alias.scope !501
  %i.dd = load i8, ptr %i.cw, align 1, !noalias !500, !noundef !5
  %i.de = shl nuw nsw i32 %i.da, 6
  %i.df = and i8 %i.dd, 63
  %i.dg = zext nneg i8 %i.df to i32               ; 2 uses
  %i.dh = or disjoint i32 %i.de, %i.dg
  %i.di = icmp samesign ugt i8 %i.cx, -33
  br i1 %i.di, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit14.i.i.i, label %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4bump.exit.i

bb.g:                                             ; preds = %bb.f
  %i.dj = zext nneg i8 %i.cx to i32
  br label %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4bump.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit12.i.i.i
  %i.dk = icmp ne ptr %i.dc, %i.cv
  call void @llvm.assume(i1 %i.dk)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cu, i64 3 ; 3 uses
  store ptr %i.dl, ptr %i.bw, align 8, !alias.scope !502
  %i.dm = load i8, ptr %i.dc, align 1, !noalias !500, !noundef !5
  %i.dn = shl nuw nsw i32 %i.dg, 6
  %i.do = and i8 %i.dm, 63
  %i.dp = zext nneg i8 %i.do to i32
  %i.dq = or disjoint i32 %i.dn, %i.dp            ; 2 uses
  %i.dr = shl nuw nsw i32 %i.da, 12
  %i.ds = or disjoint i32 %i.dq, %i.dr
  %i.dt = icmp samesign ugt i8 %i.cx, -17
  br i1 %i.dt, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit16.i.i.i, label %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4bump.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit14.i.i.i
  %i.du = icmp ne ptr %i.dl, %i.cv
  call void @llvm.assume(i1 %i.du)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store ptr %i.dv, ptr %i.bw, align 8, !alias.scope !503
  %i.dw = load i8, ptr %i.dl, align 1, !noalias !500, !noundef !5
  %i.dx = shl nuw nsw i32 %i.da, 18
  %i.dy = and i32 %i.dx, 1835008
  %i.dz = shl nuw nsw i32 %i.dq, 6
  %i.ea = and i8 %i.dw, 63
  %i.eb = zext nneg i8 %i.ea to i32
  %i.ec = or disjoint i32 %i.dz, %i.eb
  %i.ed = or disjoint i32 %i.ec, %i.dy
  br label %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4bump.exit.i

_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4bump.exit.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit16.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit14.i.i.i, %bb.g, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit12.i.i.i, %bb.d
  %.sroa.0.1.i.i = phi i32 [ %i.cs, %bb.d ], [ %i.dj, %bb.g ], [ %i.dh, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit12.i.i.i ], [ %i.ed, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit16.i.i.i ], [ %i.ds, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit14.i.i.i ] ; 3 uses
  store i32 %.sroa.0.1.i.i, ptr %i.by, align 4, !alias.scope !497
  switch i32 %.sroa.0.1.i.i, label %bb.h [
    i32 -1, label %.loopexit
    i32 63, label %bb.i
    i32 42, label %bb.j
    i32 91, label %bb.ca
    i32 123, label %bb.cb
    i32 125, label %bb.cg
    i32 44, label %bb.cs
    i32 92, label %bb.cx
  ]

bb.h:                                             ; preds = %bb.ca, %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4bump.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !504
  store i32 %.sroa.0.1.i.i, ptr %i.cr, align 8, !noalias !504
  store i64 -9223372036854775808, ptr %i.av, align 8, !noalias !504
  invoke fastcc void @_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser10push_token(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bi, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.av)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc38:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !504
  %i.ee = load i64, ptr %i.aw, align 8, !range !19, !noalias !504, !noundef !5 ; 2 uses
  %.not9.i = icmp eq i64 %i.ee, -2
  br i1 %.not9.i, label %bb.fr, label %bb.fq

bb.i:                                             ; preds = %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4bump.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !504
  store i64 -9223372036854775807, ptr %i.ba, align 8, !noalias !504
  invoke fastcc void @_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser10push_token(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bi, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ba)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc39:                                         ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !504
  %i.ef = load i64, ptr %i.bb, align 8, !range !19, !noalias !504, !noundef !5 ; 2 uses
  %.not8.i = icmp eq i64 %i.ef, -2
  br i1 %.not8.i, label %bb.dm, label %bb.dl

bb.j:                                             ; preds = %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4bump.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !504
  call void @llvm.experimental.noalias.scope.decl(metadata !506)
  call void @llvm.experimental.noalias.scope.decl(metadata !507)
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.eg = load ptr, ptr %i.bw, align 8, !alias.scope !512, !nonnull !5, !noundef !5 ; 6 uses
  %i.eh = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !512, !nonnull !5, !noundef !5 ; 12 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.eg, %i.eh
  br i1 %.not.i.i.i.i.i.i, label %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit.i.thread.i, label %bb.k

_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit.i.thread.i: ; preds = %bb.j
  store i32 -1, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !513
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 1 ; 4 uses
  store ptr %i.ei, ptr %i.bw, align 8, !alias.scope !512
  %i.ej = load i8, ptr %i.eg, align 1, !noalias !514, !noundef !5 ; 5 uses
  %i.ek = icmp sgt i8 %i.ej, -1
  br i1 %i.ek, label %bb.l, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit12.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.el = and i8 %i.ej, 31
  %i.em = zext nneg i8 %i.el to i32               ; 3 uses
  %i.en = icmp ne ptr %i.ei, %i.eh
  call void @llvm.assume(i1 %i.en)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 2 ; 4 uses
  store ptr %i.eo, ptr %i.bw, align 8, !alias.scope !515
  %i.ep = load i8, ptr %i.ei, align 1, !noalias !514, !noundef !5
  %i.eq = shl nuw nsw i32 %i.em, 6
  %i.er = and i8 %i.ep, 63
  %i.es = zext nneg i8 %i.er to i32               ; 2 uses
  %i.et = or disjoint i32 %i.eq, %i.es
  %i.eu = icmp samesign ugt i8 %i.ej, -33
  br i1 %i.eu, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit14.i.i.i.i.i.i.i, label %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.ev = zext nneg i8 %i.ej to i32
  br label %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit12.i.i.i.i.i.i.i
  %i.ew = icmp ne ptr %i.eo, %i.eh
  call void @llvm.assume(i1 %i.ew)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eg, i64 3 ; 4 uses
  store ptr %i.ex, ptr %i.bw, align 8, !alias.scope !516
  %i.ey = load i8, ptr %i.eo, align 1, !noalias !514, !noundef !5
  %i.ez = shl nuw nsw i32 %i.es, 6
  %i.fa = and i8 %i.ey, 63
  %i.fb = zext nneg i8 %i.fa to i32
  %i.fc = or disjoint i32 %i.ez, %i.fb            ; 2 uses
  %i.fd = shl nuw nsw i32 %i.em, 12
  %i.fe = or disjoint i32 %i.fc, %i.fd
  %i.ff = icmp samesign ugt i8 %i.ej, -17
  br i1 %i.ff, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit16.i.i.i.i.i.i.i, label %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit14.i.i.i.i.i.i.i
  %i.fg = icmp ne ptr %i.ex, %i.eh
  call void @llvm.assume(i1 %i.fg)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4 ; 2 uses
  store ptr %i.fh, ptr %i.bw, align 8, !alias.scope !517
  %i.fi = load i8, ptr %i.ex, align 1, !noalias !514, !noundef !5
  %i.fj = shl nuw nsw i32 %i.em, 18
  %i.fk = and i32 %i.fj, 1835008
  %i.fl = shl nuw nsw i32 %i.fc, 6
  %i.fm = and i8 %i.fi, 63
  %i.fn = zext nneg i8 %i.fm to i32
  %i.fo = or disjoint i32 %i.fl, %i.fn
  %i.fp = or disjoint i32 %i.fo, %i.fk
  br label %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit.i.i

_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit14.i.i.i.i.i.i.i, %bb.l, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit12.i.i.i.i.i.i.i
  %i.fq = phi ptr [ %i.ei, %bb.l ], [ %i.eo, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit12.i.i.i.i.i.i.i ], [ %i.fh, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit16.i.i.i.i.i.i.i ], [ %i.ex, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit14.i.i.i.i.i.i.i ] ; 12 uses
  %spec.select.i.i.i.i.i.i = phi i32 [ %i.ev, %bb.l ], [ %i.et, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit12.i.i.i.i.i.i.i ], [ %i.fp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit16.i.i.i.i.i.i.i ], [ %i.fe, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit14.i.i.i.i.i.i.i ] ; 2 uses
  store i32 %spec.select.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !513
  %cond.i.i = icmp eq i32 %spec.select.i.i.i.i.i.i, 42
  br i1 %cond.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit.i.i, %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit.i.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !518
end_hunk_0
begin_hunk_1_@_RNvMsa_NtCs3AS159VDs7t_7globset4globNtB5_11GlobBuilder5build:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ga, ptr nonnull readonly align 1 %.val.i.i.i, i64 %.val1.i.i.i, i1 false), !noalias !524
  br label %bb.w

bb.u:                                             ; preds = %bb.r
  unreachable

bb.v:                                             ; preds = %bb.p
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !525
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.i, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !noalias !504
  %.sroa.30.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.30.24.copyload.i = load i64, ptr %.sroa.30.24..sroa_idx.i, align 8, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !522
  %i.gd = ptrtoint ptr %i.ga to i64
  %i.ge = insertelement <2 x i64> poison, i64 %i.gd, i64 0
  %i.gf = insertelement <2 x i64> %i.ge, i64 %.val1.i.i.i, i64 1
  br label %bb.do

bb.x:                                             ; preds = %bb.n
  %i.gg = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !521, !nonnull !5, !noundef !5
  %i.gh = getelementptr [24 x i8], ptr %i.gg, i64 %i.fs ; 3 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 -8     ; 3 uses
  %i.gj = load i64, ptr %i.gi, align 8, !noalias !527, !noundef !5 ; 2 uses
  %i.gk = icmp ult i64 %i.gj, 288230376151711744
  call void @llvm.assume(i1 %i.gk)
  %.not.i10.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i10.i, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  call void @llvm.experimental.noalias.scope.decl(metadata !529)
  call void @llvm.experimental.noalias.scope.decl(metadata !530)
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %.not.i.i.i.i80.i.i = icmp eq ptr %i.fq, %i.eh
  br i1 %.not.i.i.i.i80.i.i, label %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit86.thread.i.i, label %bb.z

_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit86.thread.i.i: ; preds = %bb.y
  store i32 -1, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !534
  br label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fq, i64 1 ; 3 uses
  store ptr %i.gl, ptr %i.bw, align 8, !alias.scope !535
  %i.gm = load i8, ptr %i.fq, align 1, !noalias !536, !noundef !5 ; 5 uses
  %i.gn = icmp sgt i8 %i.gm, -1
  br i1 %i.gn, label %bb.aa, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit12.i.i.i.i.i81.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit12.i.i.i.i.i81.i.i: ; preds = %bb.z
  %i.go = and i8 %i.gm, 31
  %i.gp = zext nneg i8 %i.go to i32               ; 3 uses
  %i.gq = icmp ne ptr %i.gl, %i.eh
  call void @llvm.assume(i1 %i.gq)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fq, i64 2 ; 3 uses
  store ptr %i.gr, ptr %i.bw, align 8, !alias.scope !537
  %i.gs = load i8, ptr %i.gl, align 1, !noalias !536, !noundef !5
  %i.gt = shl nuw nsw i32 %i.gp, 6
  %i.gu = and i8 %i.gs, 63
  %i.gv = zext nneg i8 %i.gu to i32               ; 2 uses
  %i.gw = or disjoint i32 %i.gt, %i.gv
  %i.gx = icmp samesign ugt i8 %i.gm, -33
  br i1 %i.gx, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit14.i.i.i.i.i84.i.i, label %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit86.i.i

bb.aa:                                            ; preds = %bb.z
  %i.gy = zext nneg i8 %i.gm to i32
  br label %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit86.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit14.i.i.i.i.i84.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit12.i.i.i.i.i81.i.i
  %i.gz = icmp ne ptr %i.gr, %i.eh
  call void @llvm.assume(i1 %i.gz)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fq, i64 3 ; 3 uses
  store ptr %i.ha, ptr %i.bw, align 8, !alias.scope !538
  %i.hb = load i8, ptr %i.gr, align 1, !noalias !536, !noundef !5
  %i.hc = shl nuw nsw i32 %i.gv, 6
  %i.hd = and i8 %i.hb, 63
  %i.he = zext nneg i8 %i.hd to i32
  %i.hf = or disjoint i32 %i.hc, %i.he            ; 2 uses
  %i.hg = shl nuw nsw i32 %i.gp, 12
  %i.hh = or disjoint i32 %i.hf, %i.hg
  %i.hi = icmp samesign ugt i8 %i.gm, -17
  br i1 %i.hi, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit16.i.i.i.i.i85.i.i, label %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit86.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit16.i.i.i.i.i85.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit14.i.i.i.i.i84.i.i
  %i.hj = icmp ne ptr %i.ha, %i.eh
  call void @llvm.assume(i1 %i.hj)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store ptr %i.hk, ptr %i.bw, align 8, !alias.scope !539
  %i.hl = load i8, ptr %i.ha, align 1, !noalias !536, !noundef !5
  %i.hm = shl nuw nsw i32 %i.gp, 18
  %i.hn = and i32 %i.hm, 1835008
  %i.ho = shl nuw nsw i32 %i.hf, 6
  %i.hp = and i8 %i.hl, 63
  %i.hq = zext nneg i8 %i.hp to i32
  %i.hr = or disjoint i32 %i.ho, %i.hq
  %i.hs = or disjoint i32 %i.hr, %i.hn
  br label %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit86.i.i

_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit86.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit16.i.i.i.i.i85.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit14.i.i.i.i.i84.i.i, %bb.aa, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit12.i.i.i.i.i81.i.i
  %spec.select.i.i.i.i83.i.i = phi i32 [ %i.gy, %bb.aa ], [ %i.gw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit12.i.i.i.i.i81.i.i ], [ %i.hs, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit16.i.i.i.i.i85.i.i ], [ %i.hh, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit14.i.i.i.i.i84.i.i ] ; 2 uses
  store i32 %spec.select.i.i.i.i83.i.i, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !534
  %i.ht = icmp eq i32 %spec.select.i.i.i.i83.i.i, 47
  br i1 %i.ht, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.x
  switch i32 %i.ct, label %bb.aj [
    i32 -1, label %.thread.i.i
    i32 47, label %bb.am
  ]

.thread.i.i:                                      ; preds = %bb.ab
  %i.hu = icmp ult i64 %i.fs, 384307168202282326
  call void @llvm.assume(i1 %i.hu)
  br label %bb.al

bb.ac:                                            ; preds = %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit86.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !518
  store i64 -9223372036854775806, ptr %i.ar, align 8, !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 32, i1 false), !noalias !518
  invoke fastcc void @_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser10push_token(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.as, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bi, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.y)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !518
  %i.hv = load i64, ptr %i.as, align 8, !range !19, !noalias !518, !noundef !5 ; 2 uses
  %.not57.i.i = icmp eq i64 %i.hv, -2
  br i1 %.not57.i.i, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit86.i.i, %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit86.thread.i.i
  %i.hw = phi i32 [ -1, %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit86.thread.i.i ], [ 47, %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit86.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !518
  store i64 -9223372036854775805, ptr %i.ao, align 8, !noalias !518
  invoke fastcc void @_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser10push_token(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bi, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ao)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !518
  %i.hx = load i64, ptr %i.ap, align 8, !range !19, !noalias !518, !noundef !5 ; 2 uses
  %.not59.i.i = icmp eq i64 %i.hx, -2
  br i1 %.not59.i.i, label %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4bump.exit94.i.i, label %bb.ai

bb.ae:                                            ; preds = %.noexc41
  %.sroa.24.0..sroa_idx74.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.hy = load <2 x i64>, ptr %.sroa.24.0..sroa_idx74.i, align 8, !noalias !526
  %.sroa.28.0..sroa_idx113.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.0..sroa_idx113.i, i64 16, i1 false), !noalias !504
  %.sroa.30.0..sroa_idx134.i = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %.sroa.30.0.copyload135.i = load i64, ptr %.sroa.30.0..sroa_idx134.i, align 8, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !518
  br label %bb.do

bb.af:                                            ; preds = %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !518
  invoke fastcc void @_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser10push_token(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.aq, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bi, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ar)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc43:                                         ; preds = %bb.af
  %i.hz = load i64, ptr %i.aq, align 8, !range !19, !noalias !518, !noundef !5 ; 2 uses
  %.not58.i.i = icmp eq i64 %i.hz, -2
  br i1 %.not58.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.noexc43
  %.sroa.24.0..sroa_idx76.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ia = load <2 x i64>, ptr %.sroa.24.0..sroa_idx76.i, align 8, !noalias !526
  %.sroa.28.0..sroa_idx114.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.0..sroa_idx114.i, i64 16, i1 false), !noalias !504
  %.sroa.30.0..sroa_idx136.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %.sroa.30.0.copyload137.i = load i64, ptr %.sroa.30.0..sroa_idx136.i, align 8, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !518
  br label %bb.do

bb.ah:                                            ; preds = %.noexc43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !518
  br label %bb.dp

bb.ai:                                            ; preds = %.noexc42
  %.sroa.24.0..sroa_idx78.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ib = load <2 x i64>, ptr %.sroa.24.0..sroa_idx78.i, align 8, !noalias !526
  %.sroa.28.0..sroa_idx115.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.0..sroa_idx115.i, i64 16, i1 false), !noalias !504
  %.sroa.30.0..sroa_idx138.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.sroa.30.0.copyload139.i = load i64, ptr %.sroa.30.0..sroa_idx138.i, align 8, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !518
  br label %bb.do

_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4bump.exit94.i.i: ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !518
  store i32 42, ptr %i.bx, align 8, !alias.scope !540
  store i32 -2, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !540
  store i32 %i.hw, ptr %i.by, align 4, !alias.scope !540
  br label %bb.dp

bb.aj:                                            ; preds = %bb.ab
  %i.ic = icmp ult i64 %i.fs, 384307168202282326
  call void @llvm.assume(i1 %i.ic)
  %.not157.i.i = icmp eq i64 %i.fs, 1
  br i1 %.not157.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  switch i32 %i.ct, label %bb.al [
    i32 44, label %bb.am
    i32 123, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak, %bb.aj, %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !518
  store i64 -9223372036854775806, ptr %i.am, align 8, !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false), !noalias !518
  invoke fastcc void @_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser10push_token(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bi, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.x)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44:                                         ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !518
  %i.id = load i64, ptr %i.an, align 8, !range !19, !noalias !518, !noundef !5 ; 2 uses
  %.not62.i.i = icmp eq i64 %i.id, -2
  br i1 %.not62.i.i, label %bb.aq, label %bb.ap

bb.am:                                            ; preds = %bb.ak, %bb.ak, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !541)
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %.not.i.i.i.i98.i.i = icmp eq ptr %i.fq, %i.eh  ; 2 uses
  br i1 %.not.i.i.i.i98.i.i, label %.sink.split.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ie = getelementptr inbounds nuw i8, ptr %i.fq, i64 1 ; 3 uses
  store ptr %i.ie, ptr %i.bw, align 8, !alias.scope !547
  %i.if = load i8, ptr %i.fq, align 1, !noalias !548, !noundef !5 ; 5 uses
  %i.ig = icmp sgt i8 %i.if, -1
  br i1 %i.ig, label %bb.ao, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit12.i.i.i.i.i99.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit12.i.i.i.i.i99.i.i: ; preds = %bb.an
  %i.ih = and i8 %i.if, 31
  %i.ii = zext nneg i8 %i.ih to i32               ; 3 uses
  %i.ij = icmp ne ptr %i.ie, %i.eh
  call void @llvm.assume(i1 %i.ij)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.fq, i64 2 ; 3 uses
  store ptr %i.ik, ptr %i.bw, align 8, !alias.scope !549
  %i.il = load i8, ptr %i.ie, align 1, !noalias !548, !noundef !5
  %i.im = shl nuw nsw i32 %i.ii, 6
  %i.in = and i8 %i.il, 63
  %i.io = zext nneg i8 %i.in to i32               ; 2 uses
  %i.ip = or disjoint i32 %i.im, %i.io
  %i.iq = icmp samesign ugt i8 %i.if, -33
  br i1 %i.iq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit14.i.i.i.i.i102.i.i, label %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit104.i.i

bb.ao:                                            ; preds = %bb.an
  %i.ir = zext nneg i8 %i.if to i32
  br label %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit104.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit14.i.i.i.i.i102.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit12.i.i.i.i.i99.i.i
  %i.is = icmp ne ptr %i.ik, %i.eh
  call void @llvm.assume(i1 %i.is)
  %i.it = getelementptr inbounds nuw i8, ptr %i.fq, i64 3 ; 3 uses
  store ptr %i.it, ptr %i.bw, align 8, !alias.scope !550
  %i.iu = load i8, ptr %i.ik, align 1, !noalias !548, !noundef !5
  %i.iv = shl nuw nsw i32 %i.io, 6
  %i.iw = and i8 %i.iu, 63
  %i.ix = zext nneg i8 %i.iw to i32
  %i.iy = or disjoint i32 %i.iv, %i.ix            ; 2 uses
  %i.iz = shl nuw nsw i32 %i.ii, 12
  %i.ja = or disjoint i32 %i.iy, %i.iz
  %i.jb = icmp samesign ugt i8 %i.if, -17
  br i1 %i.jb, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit16.i.i.i.i.i103.i.i, label %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit104.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit16.i.i.i.i.i103.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit14.i.i.i.i.i102.i.i
  %i.jc = icmp ne ptr %i.it, %i.eh
  call void @llvm.assume(i1 %i.jc)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store ptr %i.jd, ptr %i.bw, align 8, !alias.scope !551
  %i.je = load i8, ptr %i.it, align 1, !noalias !548, !noundef !5
  %i.jf = shl nuw nsw i32 %i.ii, 18
  %i.jg = and i32 %i.jf, 1835008
  %i.jh = shl nuw nsw i32 %i.iy, 6
  %i.ji = and i8 %i.je, 63
  %i.jj = zext nneg i8 %i.ji to i32
  %i.jk = or disjoint i32 %i.jh, %i.jj
  %i.jl = or disjoint i32 %i.jk, %i.jg
  br label %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit104.i.i

_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit104.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit16.i.i.i.i.i103.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit14.i.i.i.i.i102.i.i, %bb.ao, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit12.i.i.i.i.i99.i.i
  %spec.select.i.i.i.i101.i.i = phi i32 [ %i.ir, %bb.ao ], [ %i.ip, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit12.i.i.i.i.i99.i.i ], [ %i.jl, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit16.i.i.i.i.i103.i.i ], [ %i.ja, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset.exit14.i.i.i.i.i102.i.i ] ; 5 uses
  store i32 %spec.select.i.i.i.i101.i.i, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !552
  switch i32 %spec.select.i.i.i.i101.i.i, label %2 [
    i32 125, label %bb.aw
    i32 44, label %bb.av
  ]

bb.ap:                                            ; preds = %.noexc44
  %.sroa.24.0..sroa_idx70.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.jm = load <2 x i64>, ptr %.sroa.24.0..sroa_idx70.i, align 8, !noalias !526
  %.sroa.28.0..sroa_idx111.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.0..sroa_idx111.i, i64 16, i1 false), !noalias !504
  %.sroa.30.0..sroa_idx130.i = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %.sroa.30.0.copyload131.i = load i64, ptr %.sroa.30.0..sroa_idx130.i, align 8, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !518
  br label %bb.do

bb.aq:                                            ; preds = %.noexc44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !518
  invoke fastcc void @_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser10push_token(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bi, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.am)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.aq
  %i.jn = load i64, ptr %i.al, align 8, !range !19, !noalias !518, !noundef !5 ; 2 uses
  %.not63.i.i = icmp eq i64 %i.jn, -2
  br i1 %.not63.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.noexc45
  %.sroa.24.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.jo = load <2 x i64>, ptr %.sroa.24.0..sroa_idx72.i, align 8, !noalias !526
  %.sroa.28.0..sroa_idx112.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.0..sroa_idx112.i, i64 16, i1 false), !noalias !504
  %.sroa.30.0..sroa_idx132.i = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %.sroa.30.0.copyload133.i = load i64, ptr %.sroa.30.0..sroa_idx132.i, align 8, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !518
  br label %bb.do

bb.as:                                            ; preds = %.noexc45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !518
  br label %bb.dp

.sink.split.i:                                    ; preds = %2, %bb.am
  %.sink.i = phi i32 [ 47, %2 ], [ -1, %bb.am ]
  store i32 42, ptr %i.bx, align 8, !alias.scope !495, !noalias !553
  store i32 -2, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !495, !noalias !553
  store i32 %.sink.i, ptr %i.by, align 4, !alias.scope !495, !noalias !553
  br label %bb.at

bb.at:                                            ; preds = %bb.aw, %bb.av, %.sink.split.i
  %.sroa.017.0.i.i = phi i1 [ true, %bb.av ], [ true, %bb.aw ], [ %.not.i.i.i.i98.i.i, %.sink.split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !518
  %i.jp = load i64, ptr %i.gi, align 8, !noalias !554, !noundef !5 ; 3 uses
  %i.jq = icmp eq i64 %i.jp, 0
  br i1 %i.jq, label %bb.au, label %bb.bc, !prof !10

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #20
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.au
  unreachable

.thread155.i.i:                                   ; preds = %bb.aw, %bb.av
  %i.jr = icmp samesign ult i32 %spec.select.i.i.i.i101.i.i, 1114112
  call void @llvm.assume(i1 %i.jr)
  br label %bb.ax

2:                                                ; preds = %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit104.i.i
  %3 = icmp samesign ult i32 %spec.select.i.i.i.i101.i.i, 1114112
  call void @llvm.assume(i1 %3)
  %4 = icmp eq i32 %spec.select.i.i.i.i101.i.i, 47
  br i1 %4, label %.sink.split.i, label %bb.ax

bb.av:                                            ; preds = %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit104.i.i
  %i.js = icmp ult i64 %i.fs, 384307168202282326
  call void @llvm.assume(i1 %i.js)
  %.not158.i.i = icmp eq i64 %i.fs, 1
  br i1 %.not158.i.i, label %.thread155.i.i, label %bb.at

bb.aw:                                            ; preds = %_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser4peek.exit104.i.i
  %i.jt = icmp ult i64 %i.fs, 384307168202282326
  call void @llvm.assume(i1 %i.jt)
  %.not159.i.i = icmp eq i64 %i.fs, 1
  br i1 %.not159.i.i, label %.thread155.i.i, label %bb.at

bb.ax:                                            ; preds = %2, %.thread155.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !518
  store i64 -9223372036854775806, ptr %i.aj, align 8, !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false), !noalias !518
  invoke fastcc void @_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser10push_token(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bi, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.w)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !518
  %i.ju = load i64, ptr %i.ak, align 8, !range !19, !noalias !518, !noundef !5 ; 2 uses
  %.not66.i.i = icmp eq i64 %i.ju, -2
  br i1 %.not66.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.noexc47
  %.sroa.24.0..sroa_idx66.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.jv = load <2 x i64>, ptr %.sroa.24.0..sroa_idx66.i, align 8, !noalias !526
  %.sroa.28.0..sroa_idx109.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.0..sroa_idx109.i, i64 16, i1 false), !noalias !504
  %.sroa.30.0..sroa_idx126.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %.sroa.30.0.copyload127.i = load i64, ptr %.sroa.30.0..sroa_idx126.i, align 8, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !518
  br label %bb.do

bb.az:                                            ; preds = %.noexc47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !518
  invoke fastcc void @_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser10push_token(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bi, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.aj)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc48:                                         ; preds = %bb.az
  %i.jw = load i64, ptr %i.ai, align 8, !range !19, !noalias !518, !noundef !5 ; 2 uses
  %.not67.i.i = icmp eq i64 %i.jw, -2
  br i1 %.not67.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.noexc48
  %.sroa.24.0..sroa_idx68.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.jx = load <2 x i64>, ptr %.sroa.24.0..sroa_idx68.i, align 8, !noalias !526
  %.sroa.28.0..sroa_idx110.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.0..sroa_idx110.i, i64 16, i1 false), !noalias !504
  %.sroa.30.0..sroa_idx128.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %.sroa.30.0.copyload129.i = load i64, ptr %.sroa.30.0..sroa_idx128.i, align 8, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !518
  br label %bb.do

bb.bb:                                            ; preds = %.noexc48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !518
  br label %bb.dp

bb.bc:                                            ; preds = %bb.at
  %i.jy = getelementptr i8, ptr %i.gh, i64 -24
  %i.jz = add nsw i64 %i.jp, -1                   ; 3 uses
  store i64 %i.jz, ptr %i.gi, align 8, !noalias !554
  %i.ka = load i64, ptr %i.jy, align 8, !range !7, !noalias !554, !noundef !5
  %i.kb = icmp samesign ult i64 %i.jz, %i.ka
  call void @llvm.assume(i1 %i.kb)
  %i.kc = getelementptr i8, ptr %i.gh, i64 -16
  %i.kd = load ptr, ptr %i.kc, align 8, !noalias !554, !nonnull !5, !noundef !5
  %i.ke = icmp ult i64 %i.jp, 288230376151711745
  call void @llvm.assume(i1 %i.ke)
  %i.kf = getelementptr inbounds nuw [32 x i8], ptr %i.kd, i64 %i.jz ; 3 uses
  %.sroa.7117.8.copyload119.i.i = load ptr, ptr %i.kf, align 8, !noalias !555 ; 4 uses
  %.sroa.11.8..sroa_idx121.i.i = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %.sroa.11.8.copyload122.i.i = load i64, ptr %.sroa.11.8..sroa_idx121.i.i, align 8, !noalias !555
  %.sroa.12123.8..sroa_idx124.i.i = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5133.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12123.8..sroa_idx124.i.i, i64 16, i1 false), !noalias !556
  store ptr %.sroa.7117.8.copyload119.i.i, ptr %i.ah, align 8, !noalias !518
  store i64 %.sroa.11.8.copyload122.i.i, ptr %.sroa.4132.0..sroa_idx.i.i, align 8, !noalias !518
  %.cast.i.i = ptrtoint ptr %.sroa.7117.8.copyload119.i.i to i64
  %i.kg = icmp ne ptr %.sroa.7117.8.copyload119.i.i, inttoptr (i64 -9223372036854775802 to ptr)
  call void @llvm.assume(i1 %i.kg)
  %i.kh = xor i64 %.cast.i.i, -9223372036854775808
  %i.ki = icmp slt ptr %.sroa.7117.8.copyload119.i.i, null
  %i.kj = select i1 %i.ki, i64 %i.kh, i64 6
  switch i64 %i.kj, label %bb.bd [
    i64 3, label %bb.be
    i64 4, label %bb.bf
  ]

bb.bd:                                            ; preds = %bb.bc
  br i1 %.sroa.017.0.i.i, label %bb.bp, label %bb.bo

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !518
  store i64 -9223372036854775805, ptr %i.af, align 8, !noalias !518
  invoke fastcc void @_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser10push_token(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bi, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.af)
          to label %bb.bh unwind label %bb.bg, !noalias !557

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !518
  store i64 -9223372036854775804, ptr %i.ad, align 8, !noalias !518
  invoke fastcc void @_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser10push_token(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bi, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ad)
          to label %bb.bl unwind label %bb.bg, !noalias !557

bb.bg:                                            ; preds = %bb.bp, %bb.bo, %bb.bf, %bb.be
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3AS159VDs7t_7globset4glob5TokenEBF_(ptr noalias noundef align 8 dereferenceable(32) %i.ah) #19
          to label %.body unwind label %bb.bx, !noalias !556

bb.bh:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !518
  %i.kl = load i64, ptr %i.ag, align 8, !range !19, !noalias !518, !noundef !5 ; 2 uses
  %.not71.i.i = icmp eq i64 %i.kl, -2
  br i1 %.not71.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.sroa.24.0..sroa_idx60.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.km = load <2 x i64>, ptr %.sroa.24.0..sroa_idx60.i, align 8, !noalias !526
  %.sroa.28.0..sroa_idx106.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.0..sroa_idx106.i, i64 16, i1 false), !noalias !504
  %.sroa.30.0..sroa_idx120.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.30.0.copyload121.i = load i64, ptr %.sroa.30.0..sroa_idx120.i, align 8, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !518
  br label %bb.bw

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !518
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bv, %bb.bs, %bb.bn, %bb.bj
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3AS159VDs7t_7globset4glob5TokenEBF_(ptr noalias noundef align 8 dereferenceable(32) %i.ah)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc49:                                         ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !518
  br label %bb.dp

bb.bl:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !518
  %i.kn = load i64, ptr %i.ae, align 8, !range !19, !noalias !518, !noundef !5 ; 2 uses
  %.not70.i.i = icmp eq i64 %i.kn, -2
  br i1 %.not70.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.sroa.24.0..sroa_idx58.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ko = load <2 x i64>, ptr %.sroa.24.0..sroa_idx58.i, align 8, !noalias !526
  %.sroa.28.0..sroa_idx105.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.0..sroa_idx105.i, i64 16, i1 false), !noalias !504
  %.sroa.30.0..sroa_idx118.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %.sroa.30.0.copyload119.i = load i64, ptr %.sroa.30.0..sroa_idx118.i, align 8, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !518
  br label %bb.bw

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !518
  br label %bb.bk

bb.bo:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !518
  store i64 -9223372036854775803, ptr %i.z, align 8, !noalias !518
  invoke fastcc void @_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser10push_token(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bi, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.z)
          to label %bb.bq unwind label %bb.bg, !noalias !557

bb.bp:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !518
  store i64 -9223372036854775804, ptr %i.ab, align 8, !noalias !518
  invoke fastcc void @_RNvMsc_NtCs3AS159VDs7t_7globset4globNtB5_6Parser10push_token(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bi, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ab)
          to label %bb.bt unwind label %bb.bg, !noalias !557

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !518
  %i.kp = load i64, ptr %i.aa, align 8, !range !19, !noalias !518, !noundef !5 ; 2 uses
  %.not72.i.i = icmp eq i64 %i.kp, -2
  br i1 %.not72.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.sroa.24.0..sroa_idx62.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.kq = load <2 x i64>, ptr %.sroa.24.0..sroa_idx62.i, align 8, !noalias !526
  %.sroa.28.0..sroa_idx107.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.0..sroa_idx107.i, i64 16, i1 false), !noalias !504
  %.sroa.30.0..sroa_idx122.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %.sroa.30.0.copyload123.i = load i64, ptr %.sroa.30.0..sroa_idx122.i, align 8, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !518
  br label %bb.bw

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !518
  br label %bb.bk

bb.bt:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !518
  %i.kr = load i64, ptr %i.ac, align 8, !range !19, !noalias !518, !noundef !5 ; 2 uses
  %.not73.i.i = icmp eq i64 %i.kr, -2
  br i1 %.not73.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.sroa.24.0..sroa_idx64.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ks = load <2 x i64>, ptr %.sroa.24.0..sroa_idx64.i, align 8, !noalias !526
  %.sroa.28.0..sroa_idx108.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28.0..sroa_idx108.i, i64 16, i1 false), !noalias !504
  %.sroa.30.0..sroa_idx124.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.sroa.30.0.copyload125.i = load i64, ptr %.sroa.30.0..sroa_idx124.i, align 8, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !518
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
end_hunk_1
