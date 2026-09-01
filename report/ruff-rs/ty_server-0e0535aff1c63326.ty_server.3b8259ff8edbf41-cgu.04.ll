Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_server-0e0535aff1c63326.ty_server.3b8259ff8edbf41-cgu.04?download=true
inline.NumInlined: 2094
inline.NumDeleted: 964
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvMNtCsfCaL8mGBm0d_17crossbeam_channel5wakerNtB2_5Waker6notify:bb.a
bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryECsjNt1Wzngcv_9ty_server.exit, %bb.c
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryEECsjNt1Wzngcv_9ty_server.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel5waker5EntryECsjNt1Wzngcv_9ty_server.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsjNt1Wzngcv_9ty_server6serverNtB2_6Server3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([848 x i8]) align 8 captures(none) dereferenceable(848) %0, i64 noundef range(i64 1, 0) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %4, i1 noundef zeroext %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [88 x i8], align 8                ; 6 uses
  %i.e = alloca [88 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 5 uses
  %i.v = alloca [192 x i8], align 8               ; 7 uses
  %i.w = alloca [192 x i8], align 8               ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [192 x i8], align 8               ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.517.i.i = alloca [192 x i8], align 8     ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [1520 x i8], align 8             ; 43 uses
  %i.aq = alloca [224 x i8], align 8              ; 6 uses
  %.sroa.0127.sroa.0.i = alloca [192 x i8], align 8 ; 5 uses
  %i.ar = alloca [224 x i8], align 8              ; 12 uses
  %i.as = alloca [32 x i8], align 8               ; 6 uses
  %i.at = alloca [56 x i8], align 8               ; 6 uses
  %i.au = alloca [56 x i8], align 8               ; 6 uses
  %i.av = alloca [56 x i8], align 8               ; 12 uses
  %i.aw = alloca [24 x i8], align 8               ; 7 uses
  %i.ax = alloca [24 x i8], align 8               ; 7 uses
  %i.ay = alloca [56 x i8], align 8               ; 11 uses
  %i.az = alloca [24 x i8], align 8               ; 9 uses
  %i.ba = alloca [24 x i8], align 8               ; 4 uses
  %i.bb = alloca [15 x i8], align 8               ; 9 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [48 x i8], align 8               ; 5 uses
  %i.be = alloca [136 x i8], align 8              ; 11 uses
  %i.bf = alloca [56 x i8], align 8               ; 7 uses
  %i.bg = alloca [24 x i8], align 8               ; 7 uses
  %i.bh = alloca [24 x i8], align 8               ; 7 uses
  %i.bi = alloca [56 x i8], align 8               ; 9 uses
  %i.bj = alloca [56 x i8], align 8               ; 6 uses
  %i.bk = alloca [56 x i8], align 8               ; 6 uses
  %i.bl = alloca [56 x i8], align 8               ; 6 uses
  %i.bm = alloca [80 x i8], align 8               ; 5 uses
  %i.bn = alloca [24 x i8], align 8               ; 8 uses
  %i.bo = alloca [32 x i8], align 8               ; 6 uses
  %i.bp = alloca [56 x i8], align 8               ; 11 uses
  %i.bq = alloca [56 x i8], align 8               ; 10 uses
  %i.br = alloca [24 x i8], align 8               ; 5 uses
  %i.bs = alloca [80 x i8], align 8               ; 12 uses
  %i.bt = alloca [1 x i8], align 1                ; 4 uses
  %i.bu = alloca [1 x i8], align 1                ; 4 uses
  %i.bv = alloca [24 x i8], align 8               ; 7 uses
  %i.bw = alloca [24 x i8], align 8               ; 7 uses
  %i.bx = alloca [24 x i8], align 8               ; 7 uses
  %i.by = alloca [24 x i8], align 8               ; 7 uses
  %i.bz = alloca [8 x i8], align 8                ; 4 uses
  %i.ca = alloca [8 x i8], align 8                ; 4 uses
  %i.cb = alloca [8 x i8], align 8                ; 4 uses
  %i.cc = alloca [24 x i8], align 8               ; 4 uses
  %i.cd = alloca [24 x i8], align 8               ; 4 uses
  %i.ce = alloca [24 x i8], align 8               ; 4 uses
  %i.cf = alloca [24 x i8], align 8               ; 4 uses
  %i.cg = alloca [24 x i8], align 8               ; 4 uses
  %i.ch = alloca [32 x i8], align 8               ; 2 uses
  %i.ci = alloca [24 x i8], align 8               ; 4 uses
  %i.cj = alloca [32 x i8], align 8               ; 4 uses
  %i.ck = alloca [24 x i8], align 8               ; 6 uses
  %i.cl = alloca [24 x i8], align 8               ; 6 uses
  %i.cm = alloca [24 x i8], align 8               ; 6 uses
  %i.cn = alloca [24 x i8], align 8               ; 6 uses
  %i.co = alloca [32 x i8], align 8               ; 4 uses
  %i.cp = alloca [48 x i8], align 8               ; 4 uses
  %i.cq = alloca [16 x i8], align 8               ; 5 uses
  %i.cr = alloca [456 x i8], align 8              ; 5 uses
  %i.cs = alloca [24 x i8], align 8               ; 7 uses
  %i.ct = alloca [776 x i8], align 8              ; 7 uses
  %i.cu = alloca [16 x i8], align 8               ; 8 uses
  %i.cv = alloca [16 x i8], align 8               ; 11 uses
  %i.cw = alloca [32 x i8], align 8               ; 8 uses
  %i.cx = alloca [24 x i8], align 8               ; 10 uses
  %i.cy = alloca [16 x i8], align 8               ; 5 uses
  %i.cz = alloca [32 x i8], align 8               ; 13 uses
  %i.da = alloca [32 x i8], align 8               ; 7 uses
  %i.db = alloca [16 x i8], align 8               ; 11 uses
  %i.dc = alloca [16 x i8], align 8               ; 9 uses
  %i.dd = alloca [32 x i8], align 8               ; 6 uses
  %i.de = alloca [32 x i8], align 8               ; 4 uses
  %i.df = alloca [24 x i8], align 8               ; 7 uses
  %i.dg = alloca [32 x i8], align 8               ; 5 uses
  %i.dh = alloca [32 x i8], align 8               ; 6 uses
  %i.di = alloca [32 x i8], align 8               ; 4 uses
  %i.dj = alloca [24 x i8], align 8               ; 7 uses
  %i.dk = alloca [32 x i8], align 8               ; 5 uses
  %i.dl = alloca [24 x i8], align 8               ; 8 uses
  %i.dm = alloca [32 x i8], align 8               ; 5 uses
  %i.dn = alloca [24 x i8], align 8               ; 7 uses
  %i.do = alloca [32 x i8], align 8               ; 5 uses
  %i.dp = alloca [32 x i8], align 8               ; 6 uses
  %i.dq = alloca [32 x i8], align 8               ; 4 uses
  %i.dr = alloca [24 x i8], align 8               ; 7 uses
  %i.ds = alloca [32 x i8], align 8               ; 5 uses
  %i.dt = alloca [24 x i8], align 8               ; 8 uses
  %i.du = alloca [32 x i8], align 8               ; 5 uses
  %i.dv = alloca [24 x i8], align 8               ; 5 uses
  %i.dw = alloca [32 x i8], align 8               ; 6 uses
  %i.dx = alloca [16 x i8], align 8               ; 5 uses
  %i.dy = alloca [16 x i8], align 8               ; 5 uses
  %i.dz = alloca [16 x i8], align 8               ; 5 uses
  %i.ea = alloca [32 x i8], align 8               ; 7 uses
  %i.eb = alloca [24 x i8], align 8               ; 7 uses
  %i.ec = alloca [16 x i8], align 8               ; 5 uses
  %i.ed = alloca [16 x i8], align 8               ; 5 uses
  %i.ee = alloca [16 x i8], align 8               ; 5 uses
  %i.ef = alloca [32 x i8], align 8               ; 8 uses
  %i.eg = alloca [16 x i8], align 8               ; 9 uses
  %i.eh = alloca [1520 x i8], align 8             ; 55 uses
  %i.ei = alloca [16 x i8], align 8               ; 5 uses
  %i.ej = alloca [16 x i8], align 8               ; 5 uses
  %i.ek = alloca [16 x i8], align 8               ; 5 uses
  %i.el = alloca [32 x i8], align 8               ; 7 uses
  %i.em = alloca [24 x i8], align 8               ; 7 uses
  %i.en = alloca [16 x i8], align 8               ; 5 uses
  %i.eo = alloca [16 x i8], align 8               ; 5 uses
  %i.ep = alloca [16 x i8], align 8               ; 5 uses
  %i.eq = alloca [32 x i8], align 8               ; 8 uses
  %i.er = alloca [4 x i8], align 4                ; 9 uses
  %i.es = alloca [16 x i8], align 8               ; 5 uses
  %i.et = alloca [16 x i8], align 8               ; 5 uses
  %i.eu = alloca [16 x i8], align 8               ; 5 uses
  %i.ev = alloca [32 x i8], align 8               ; 7 uses
  %i.ew = alloca [24 x i8], align 8               ; 7 uses
  %i.ex = alloca [16 x i8], align 8               ; 5 uses
  %i.ey = alloca [16 x i8], align 8               ; 5 uses
  %i.ez = alloca [16 x i8], align 8               ; 5 uses
  %i.fa = alloca [32 x i8], align 8               ; 8 uses
  %i.fb = alloca [16 x i8], align 8               ; 5 uses
  %i.fc = alloca [16 x i8], align 8               ; 5 uses
  %i.fd = alloca [16 x i8], align 8               ; 5 uses
  %i.fe = alloca [32 x i8], align 8               ; 7 uses
  %i.ff = alloca [24 x i8], align 8               ; 7 uses
  %i.fg = alloca [16 x i8], align 8               ; 5 uses
  %i.fh = alloca [16 x i8], align 8               ; 5 uses
  %i.fi = alloca [16 x i8], align 8               ; 5 uses
  %i.fj = alloca [32 x i8], align 8               ; 8 uses
  %i.fk = alloca [16 x i8], align 8               ; 5 uses
  %i.fl = alloca [16 x i8], align 8               ; 5 uses
  %i.fm = alloca [16 x i8], align 8               ; 5 uses
  %i.fn = alloca [32 x i8], align 8               ; 7 uses
  %i.fo = alloca [24 x i8], align 8               ; 7 uses
  %i.fp = alloca [16 x i8], align 8               ; 5 uses
  %i.fq = alloca [16 x i8], align 8               ; 5 uses
  %i.fr = alloca [16 x i8], align 8               ; 5 uses
  %i.fs = alloca [32 x i8], align 8               ; 8 uses
  %i.ft = alloca [8 x i8], align 8                ; 7 uses
  %i.fu = alloca [464 x i8], align 8              ; 5 uses
  %i.fv = alloca [8 x i8], align 8                ; 6 uses
  %i.fw = alloca [456 x i8], align 8              ; 16 uses
  %i.fx = alloca [1408 x i8], align 8             ; 4 uses
  %i.fy = alloca [1408 x i8], align 8             ; 7 uses
  %i.fz = alloca [1408 x i8], align 8             ; 19 uses
  %i.ga = alloca [48 x i8], align 8               ; 10 uses
  %i.gb = alloca [24 x i8], align 8               ; 12 uses
  %i.gc = alloca [1112 x i8], align 8             ; 40 uses
  %i.gd = alloca [32 x i8], align 8               ; 7 uses
  %i.ge = alloca [56 x i8], align 8               ; 6 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 8 uses
  %i.gf = alloca [24 x i8], align 8               ; 12 uses
  %i.gg = alloca [16 x i8], align 8               ; 10 uses
  store ptr %3, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 4 uses
  store ptr %4, ptr %i.gh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ge)
  invoke void @_RNvMCshzDG46PUpLf_10lsp_serverNtB2_10Connection16initialize_start(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ge, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.thread607, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECsjNt1Wzngcv_9ty_server.exit460, %bb.rd, %bb.g
  %.sroa.0114.0 = phi i8 [ %.sroa.0114.19, %bb.g ], [ %.sroa.0114.1489, %bb.rd ], [ %.sroa.0114.19, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECsjNt1Wzngcv_9ty_server.exit460 ], [ %.sroa.0114.15, %.thread607 ]
  %.pn296 = phi { ptr, i32 } [ %.pn286.pn.pn.pn.pn.pn.pn, %bb.g ], [ %.pn286.pn.pn.pn.pn.pn.pn.pn.pn490, %bb.rd ], [ %.pn286.pn.pn.pn.pn.pn.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECsjNt1Wzngcv_9ty_server.exit460 ], [ %i.arr, %.thread607 ] ; 2 uses
  %i.gi = trunc nuw i8 %.sroa.0114.0 to i1
  br i1 %i.gi, label %.thread, label %.thread602

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i.i, %bb.e, %bb.a
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %i.gk = load i64, ptr %i.ge, align 8, !range !51, !noundef !11 ; 2 uses
  %i.gl = icmp eq i64 %i.gk, -2
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  br i1 %i.gl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.gm, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  %i.gn = invoke noundef nonnull ptr @_RNvXs_NtCsiXichZnxgbf_6anyhow5errorNtB6_5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCshzDG46PUpLf_10lsp_server5error13ProtocolErrorE4fromCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.co)
          to label %bb.re unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %i.gm, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge)
  %.sroa.2261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2261.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.24..sroa_idx, i64 32, i1 false)
  store i64 %i.gk, ptr %i.gf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx)
  invoke void @_RINvXs2_NtNtCscvBHLZPbXnS_10serde_json5value2deNtB8_5ValueNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structuress2D_1__NtB23_16InitializeParamsNtBW_11Deserialize11deserialize9___VisitorECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([1408 x i8]) align 8 captures(address) dereferenceable(1408) %i.fx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ch)
          to label %bb.h unwind label %.thread485

bb.g:                                             ; preds = %bb.pk
  br i1 %.sroa.0113.9, label %bb.rd, label %bb.b

.thread485:                                       ; preds = %bb.f, %bb.h
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.rd

bb.h:                                             ; preds = %bb.f
  invoke void @_RINvXNtCsiXichZnxgbf_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures16InitializeParamsNtNtCscvBHLZPbXnS_10serde_json5error5ErrorEINtB5_7ContextB1a_B2n_E7contextReECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([1408 x i8]) align 8 captures(none) dereferenceable(1408) %i.fy, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(1408) %i.fx, ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 47)
          to label %bb.i unwind label %.thread485

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx)
  %i.gp = load i64, ptr %i.fy, align 8, !range !51, !noundef !11 ; 2 uses
  %i.gq = icmp eq i64 %i.gp, -2
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8            ; 2 uses
  br i1 %i.gq, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy)
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gs, ptr %i.gt, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz)
  %i.gu = load i64, ptr %i.gf, align 8, !range !19, !alias.scope !2830, !noundef !11
  %i.gv = icmp eq i64 %i.gu, -1
  br i1 %i.gv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshzDG46PUpLf_10lsp_server3msg9RequestIdECsjNt1Wzngcv_9ty_server.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gf)
          to label %.thread unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshzDG46PUpLf_10lsp_server3msg9RequestIdECsjNt1Wzngcv_9ty_server.exit unwind label %bb.c

bb.n:                                             ; preds = %bb.i
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1392) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1392) %.sroa.5133.0..sroa_idx, i64 1392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy)
  store i64 %i.gp, ptr %i.fz, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %i.gs, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd)
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fz, i64 1376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gd, ptr noundef nonnull align 8 dereferenceable(32) %i.gy, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fz, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1112) %i.gc, ptr noundef nonnull align 8 dereferenceable(1112) %i.gz, i64 1112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fz, i64 1320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, ptr noundef nonnull align 8 dereferenceable(24) %i.ha, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ga, ptr noundef nonnull align 8 dereferenceable(48) %i.fz, i64 48, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fz, i64 48 ; 4 uses
  %i.hc = load i64, ptr %i.hb, align 8, !range !19, !alias.scope !2835, !noundef !11
  %i.hd = icmp eq i64 %i.hc, -1
  br i1 %i.hd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %.body310 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server.exit unwind label %bb.r

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %.body310

.body310:                                         ; preds = %bb.p, %bb.r
  %eh.lpad-body311 = phi { ptr, i32 } [ %i.hg, %bb.r ], [ %i.he, %bb.p ]
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fz, i64 160
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8RootPathEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24) %i.hh) #43
          to label %.body315 unwind label %bb.bj

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fz, i64 160 ; 4 uses
  %i.hj = load i64, ptr %i.hi, align 8, !range !51, !alias.scope !2838, !noundef !11
  %switch.i = icmp ugt i64 %i.hj, -3
  br i1 %switch.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8RootPathEECsjNt1Wzngcv_9ty_server.exit, label %bb.s

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hi)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i.i314 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hi)
          to label %.body315 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i.i314: ; preds = %bb.s
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hi)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8RootPathEECsjNt1Wzngcv_9ty_server.exit unwind label %bb.v

.body315:                                         ; preds = %bb.v, %bb.t, %.body310
  %.pn = phi { ptr, i32 } [ %eh.lpad-body311, %.body310 ], [ %i.hn, %bb.v ], [ %i.hk, %bb.t ]
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fz, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsl4BgoAJVhPh_3url3UrlEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(88) %i.hm) #43
          to label %.body319 unwind label %bb.bj

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i.i314
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.body315

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8RootPathEECsjNt1Wzngcv_9ty_server.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsjNt1Wzngcv_9ty_server.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i.i314
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fz, i64 72 ; 4 uses
  %i.hp = load i64, ptr %i.ho, align 8, !range !19, !alias.scope !2841, !noundef !11
  %i.hq = icmp eq i64 %i.hp, -1
end_hunk_0
begin_hunk_1_@_RNvMNtCsjNt1Wzngcv_9ty_server6serverNtB2_6Server3new:bb.a
  %i.nm = extractvalue { ptr, ptr } %i.nk, 1      ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.no = load ptr, ptr %i.nn, align 8, !invariant.load !11, !nonnull !11
  %i.np = invoke noundef zeroext i1 %i.no(ptr noundef %i.nl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bw)
          to label %.noexc346 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !2875

.noexc346:                                        ; preds = %.noexc345
  br i1 %i.np, label %bb.cl, label %.noexc347

bb.cl:                                            ; preds = %.noexc346
  invoke void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.nf, ptr noundef nonnull %i.nl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nm, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fa)
          to label %.noexc347 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc347:                                        ; preds = %bb.cl, %.noexc346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !2872
  br label %_RNCNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news4_0B6_.exit

_RNCNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news4_0B6_.exit: ; preds = %.noexc347, %bb.cj, %.noexc344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez)
  br label %bb.cm

bb.cm:                                            ; preds = %bb.di, %bb.dd, %bb.dc, %_RNCNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news4_0B6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  %i.nq = getelementptr inbounds nuw i8, ptr %i.gc, i64 912
  %i.nr = load i64, ptr %i.nq, align 8, !range !90, !alias.scope !2876, !noundef !11
  %.not.i348 = icmp eq i64 %i.nr, -3
  %i.ns = load i64, ptr %i.gc, align 8, !range !51, !alias.scope !2876, !noundef !11 ; 2 uses
  %.not139.i = icmp eq i64 %i.ns, -2              ; 3 uses
  br i1 %.not.i348, label %.critedge163.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.cm
  %i.nt = getelementptr inbounds nuw i8, ptr %i.gc, i64 1066
  %..val.i = load i8, ptr %i.nt, align 2, !range !2879, !alias.scope !2876, !noundef !11 ; 2 uses
  %.not.i.i = icmp ne i8 %..val.i, -1
  %or.cond.not282.i = trunc i8 %..val.i to i1
  %or.cond.not.not.i = and i1 %.not.i.i, %or.cond.not282.i
  %spec.select.i = zext i1 %or.cond.not.not.i to i32
  %i.nu = getelementptr inbounds nuw i8, ptr %i.gc, i64 1052
  %..val180.i = load i8, ptr %i.nu, align 4, !range !10, !alias.scope !2876, !noundef !11
  %i.nv = and i8 %..val180.i, 1
  %i.nw = zext nneg i8 %i.nv to i32
  %i.nx = shl nuw nsw i32 %i.nw, 15
  %.sroa.0.1.i = or disjoint i32 %i.nx, %spec.select.i ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.gc, i64 1065
  %..val181.i = load i8, ptr %i.ny, align 1, !range !2879, !alias.scope !2876, !noundef !11 ; 2 uses
  %.not.i201.i = icmp eq i8 %..val181.i, -1
  %i.nz = and i8 %..val181.i, 1
  %or.cond5.not283.i = icmp eq i8 %i.nz, 0
  %or.cond5.not.i = or i1 %.not.i201.i, %or.cond5.not283.i
  %i.oa = or disjoint i32 %.sroa.0.1.i, 2
  %.sroa.0.2.i = select i1 %or.cond5.not.i, i32 %.sroa.0.1.i, i32 %i.oa ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.gc, i64 1048
  %i.oc = load i8, ptr %i.ob, align 8, !range !2879, !alias.scope !2880, !noundef !11 ; 2 uses
  %.not.i203.i = icmp eq i8 %i.oc, -1
  br i1 %.not.i203.i, label %.critedge163.i, label %bb.cn

bb.cn:                                            ; preds = %.critedge.i
  %i.od = icmp eq i8 %i.oc, 1
  %i.oe = or disjoint i32 %.sroa.0.2.i, 4096
  %spec.select292.i = select i1 %i.od, i32 %i.oe, i32 %.sroa.0.2.i ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.gc, i64 1049
  %i.og = load i8, ptr %i.of, align 1, !range !10, !alias.scope !2876, !noundef !11
  %i.oh = icmp eq i8 %i.og, 1
  %i.oi = or i32 %spec.select292.i, 8192
  %spec.select304.i = select i1 %i.oh, i32 %i.oi, i32 %spec.select292.i
  br label %.critedge163.i

.critedge163.i:                                   ; preds = %bb.cn, %.critedge.i, %bb.cm
  %.sroa.0.4.i = phi i32 [ 0, %bb.cm ], [ %spec.select304.i, %bb.cn ], [ %.sroa.0.2.i, %.critedge.i ] ; 2 uses
  br i1 %.not139.i, label %.critedge165.i, label %bb.co

bb.co:                                            ; preds = %.critedge163.i
  %i.oj = getelementptr inbounds nuw i8, ptr %i.gc, i64 392
  %i.ok = load i64, ptr %i.oj, align 8, !range !51, !alias.scope !2883, !noundef !11
  %.not.i205.i = icmp eq i64 %i.ok, -2
  %i.ol = getelementptr inbounds nuw i8, ptr %i.gc, i64 424
  %i.om = load i8, ptr %i.ol, align 8, !range !10, !alias.scope !2876
  %i.on = icmp eq i8 %i.om, 1
  %spec.select293.v.i = select i1 %i.on, i32 16388, i32 4
  %spec.select293.i = select i1 %.not.i205.i, i32 0, i32 %spec.select293.v.i
  %.sroa.0.5.i = or i32 %spec.select293.i, %.sroa.0.4.i ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.gc, i64 320
  %i.op = load i64, ptr %i.oo, align 8, !range !51, !alias.scope !2886, !noundef !11
  %.not.i207.i = icmp ne i64 %i.op, -2
  %i.oq = getelementptr inbounds nuw i8, ptr %i.gc, i64 344
  %i.or = load i8, ptr %i.oq, align 8, !range !10, !alias.scope !2876
  %i.os = icmp eq i8 %i.or, 1
  %or.cond.i = select i1 %.not.i207.i, i1 %i.os, i1 false
  %i.ot = or i32 %.sroa.0.5.i, 131072
  %spec.select294.i = select i1 %or.cond.i, i32 %i.ot, i32 %.sroa.0.5.i
  br label %.critedge165.i

.critedge165.i:                                   ; preds = %bb.co, %.critedge163.i
  %.sroa.0.6.i = phi i32 [ %.sroa.0.4.i, %.critedge163.i ], [ %spec.select294.i, %bb.co ] ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.gc, i64 1072 ; 3 uses
  %i.ov = load i8, ptr %i.ou, align 8, !range !387, !alias.scope !2876, !noundef !11
  %.not149.i = icmp eq i8 %i.ov, -1
  br i1 %.not149.i, label %.critedge167.i, label %bb.cp

bb.cp:                                            ; preds = %.critedge165.i
  %i.ow = invoke noundef align 8 ptr @_RINvMs0_NtCscvBHLZPbXnS_10serde_json5valueNtB6_5Value3getReECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ou, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 20)
          to label %.noexc351 unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc351:                                        ; preds = %bb.cp
  %.not150.i = icmp eq ptr %i.ow, null
  br i1 %.not150.i, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %.noexc351
  %i.ox = load i8, ptr %i.ow, align 8, !range !895, !noundef !11
  %i.oy = icmp eq i8 %i.ox, 1
  br i1 %i.oy, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 1
  %i.pa = load i8, ptr %i.oz, align 1, !range !643, !noundef !11
  %i.pb = zext nneg i8 %i.pa to i32
  %i.pc = shl nuw nsw i32 %i.pb, 20
  %spec.select295.i = or i32 %i.pc, %.sroa.0.6.i
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %.noexc351
  %.sroa.0.7.i = phi i32 [ %.sroa.0.6.i, %.noexc351 ], [ %.sroa.0.6.i, %bb.cq ], [ %spec.select295.i, %bb.cr ] ; 6 uses
  %i.pd = invoke noundef align 8 ptr @_RINvMs0_NtCscvBHLZPbXnS_10serde_json5valueNtB6_5Value3getReECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ou, ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 8)
          to label %.noexc352 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc352:                                        ; preds = %bb.cs
  %.not.i209.i = icmp eq ptr %i.pd, null
  br i1 %.not.i209.i, label %.critedge167.i, label %bb.ct

bb.ct:                                            ; preds = %.noexc352
  %i.pe = invoke noundef align 8 ptr @_RINvMs0_NtCscvBHLZPbXnS_10serde_json5valueNtB6_5Value3getReECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.pd, ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 8)
          to label %.noexc353 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc353:                                        ; preds = %bb.ct
  %.not7.i.i = icmp eq ptr %i.pe, null
  br i1 %.not7.i.i, label %.critedge167.i, label %bb.cu

bb.cu:                                            ; preds = %.noexc353
  %i.pf = load i8, ptr %i.pe, align 8, !range !895, !noundef !11
  %i.pg = icmp eq i8 %i.pf, 4
  br i1 %i.pg, label %_RNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB7_26ResolvedClientCapabilities3news5_0B9_.exit.i, label %.critedge167.i

_RNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB7_26ResolvedClientCapabilities3news5_0B9_.exit.i: ; preds = %bb.cu
  %i.ph = getelementptr i8, ptr %i.pe, i64 16
  %.val.i350 = load ptr, ptr %i.ph, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.pi = getelementptr i8, ptr %i.pe, i64 24
  %.val182.i = load i64, ptr %i.pi, align 8, !noundef !11 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %.val182.i, 5
  %i.pj = getelementptr inbounds nuw i8, ptr %.val.i350, i64 %.idx.i.i
  %.not.i.i.i = icmp eq i64 %.val182.i, 0
  br i1 %.not.i.i.i, label %.critedge167.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB7_26ResolvedClientCapabilities3news5_0B9_.exit.i, %_RNCNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB9_26ResolvedClientCapabilities3news6_00Bb_.exit.backedge.i.i.i
  %i.pk = phi ptr [ %i.pl, %_RNCNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB9_26ResolvedClientCapabilities3news6_00Bb_.exit.backedge.i.i.i ], [ %.val.i350, %_RNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB7_26ResolvedClientCapabilities3news5_0B9_.exit.i ] ; 4 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2889)
  %i.pm = load i8, ptr %i.pk, align 8, !range !895, !alias.scope !2889, !noalias !2892, !noundef !11
  %i.pn = icmp eq i8 %i.pm, 3
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  %i.pp = load i64, ptr %i.po, align 8, !alias.scope !2889, !noalias !2892
  %i.pq = icmp eq i64 %i.pp, 24
  %or.cond.i.i.i.i = select i1 %i.pn, i1 %i.pq, i1 false
  br i1 %or.cond.i.i.i.i, label %.split.i.i.i, label %_RNCNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB9_26ResolvedClientCapabilities3news6_00Bb_.exit.backedge.i.i.i

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  %i.ps = load ptr, ptr %i.pr, align 8, !alias.scope !2889, !noalias !2892, !nonnull !11, !noundef !11 ; 2 uses
  %i.pt = load i128, ptr %i.ps, align 1
  %i.pu = xor i128 %i.pt, 134819964387716180451550826368888371572
  %i.pv = getelementptr i8, ptr %i.ps, i64 16
  %i.pw = load i64, ptr %i.pv, align 1
  %i.px = zext i64 %i.pw to i128
  %i.py = xor i128 %i.px, 8319395810126226804
  %i.pz = or i128 %i.pu, %i.py
  %i.qa = icmp ne i128 %i.pz, 0
  %i.qb = zext i1 %i.qa to i32
  %i.qc = icmp eq i32 %i.qb, 0
  br i1 %i.qc, label %_RNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB7_26ResolvedClientCapabilities3news6_0B9_.exit.i, label %_RNCNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB9_26ResolvedClientCapabilities3news6_00Bb_.exit.backedge.i.i.i

_RNCNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB9_26ResolvedClientCapabilities3news6_00Bb_.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %.lr.ph.i.i.i
  %.not6.i.i.i = icmp eq ptr %i.pl, %i.pj
  br i1 %.not6.i.i.i, label %.critedge167.i, label %.lr.ph.i.i.i

_RNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB7_26ResolvedClientCapabilities3news6_0B9_.exit.i: ; preds = %.split.i.i.i
  %i.qd = or i32 %.sroa.0.7.i, 4194304
  br label %.critedge167.i

.critedge167.i:                                   ; preds = %_RNCNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB9_26ResolvedClientCapabilities3news6_00Bb_.exit.backedge.i.i.i, %_RNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB7_26ResolvedClientCapabilities3news6_0B9_.exit.i, %_RNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB7_26ResolvedClientCapabilities3news5_0B9_.exit.i, %bb.cu, %.noexc353, %.noexc352, %.critedge165.i
  %.sroa.0.8.i = phi i32 [ %.sroa.0.6.i, %.critedge165.i ], [ %.sroa.0.7.i, %.noexc353 ], [ %i.qd, %_RNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB7_26ResolvedClientCapabilities3news6_0B9_.exit.i ], [ %.sroa.0.7.i, %bb.cu ], [ %.sroa.0.7.i, %.noexc352 ], [ %.sroa.0.7.i, %_RNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB7_26ResolvedClientCapabilities3news5_0B9_.exit.i ], [ %.sroa.0.7.i, %_RNCNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB9_26ResolvedClientCapabilities3news6_00Bb_.exit.backedge.i.i.i ] ; 3 uses
  br i1 %.not139.i, label %.critedge167.i..critedge177.i_crit_edge, label %.critedge169.i

.critedge167.i..critedge177.i_crit_edge:          ; preds = %.critedge167.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gc, i64 432
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !range !90, !alias.scope !2876
  br label %.critedge177.i

.critedge169.i:                                   ; preds = %.critedge167.i
  %i.qe = or i32 %.sroa.0.8.i, 8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.gc, i64 704
  %6 = load <8 x i8>, ptr %i.qf, align 8, !alias.scope !2876 ; 2 uses
  %7 = shufflevector <8 x i8> %6, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %8 = icmp eq <4 x i8> %7, splat (i8 -1)
  %9 = shufflevector <8 x i8> %6, <8 x i8> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %10 = and <4 x i8> %9, splat (i8 1)
  %11 = icmp eq <4 x i8> %10, zeroinitializer
  %12 = select <4 x i1> %8, <4 x i1> splat (i1 true), <4 x i1> %11 ; 4 uses
  %13 = extractelement <4 x i1> %12, i64 2
  %.sroa.0.11.i.a = select i1 %13, i32 %.sroa.0.8.i, i32 %i.qe ; 2 uses
  %14 = or i32 %.sroa.0.11.i.a, 16
  %15 = extractelement <4 x i1> %12, i64 1
  %.sroa.0.10.i = select i1 %15, i32 %.sroa.0.11.i.a, i32 %14 ; 2 uses
  %16 = or i32 %.sroa.0.10.i, 32
  %17 = extractelement <4 x i1> %12, i64 0
  %.sroa.0.11.i = select i1 %17, i32 %.sroa.0.10.i, i32 %16 ; 2 uses
  %18 = or i32 %.sroa.0.11.i, 2097152
  %19 = extractelement <4 x i1> %12, i64 3
  %.sroa.0.12.i = select i1 %19, i32 %.sroa.0.11.i, i32 %18 ; 6 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.gc, i64 120
  %i.qh = load i64, ptr %i.qg, align 8, !range !51, !alias.scope !2895, !noundef !11 ; 2 uses
  %.not.i217.i = icmp eq i64 %i.qh, -2
  br i1 %.not.i217.i, label %.critedge172.i, label %bb.cv

bb.cv:                                            ; preds = %.critedge169.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2898)
  %.not.i219.i = icmp eq i64 %i.qh, -1
  br i1 %.not.i219.i, label %.critedge172.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qi = getelementptr inbounds nuw i8, ptr %i.gc, i64 128
  %i.qj = load ptr, ptr %i.qi, align 8, !alias.scope !2901, !nonnull !11, !noundef !11 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.gc, i64 136
  %i.ql = load i64, ptr %i.qk, align 8, !alias.scope !2901, !noundef !11 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ql, 24
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 %.idx
  %i.qn = icmp eq i64 %i.ql, 0
  br i1 %i.qn, label %.critedge172.i, label %.lr.ph

bb.cx:                                            ; preds = %.lr.ph
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qq, i64 24 ; 2 uses
  %i.qp = icmp eq ptr %i.qo, %i.qm
  br i1 %i.qp, label %.critedge172.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cw, %bb.cx
  %i.qq = phi ptr [ %i.qo, %bb.cx ], [ %i.qj, %bb.cw ] ; 2 uses
  %i.qr = load i64, ptr %i.qq, align 8, !range !2902, !alias.scope !2903, !noalias !2906, !noundef !11 ; 2 uses
  %i.qs = icmp slt i64 %i.qr, -9223372036854775806
  br i1 %i.qs, label %_RNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB7_26ResolvedClientCapabilities3newsc_0B9_.exit.i, label %bb.cx

_RNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB7_26ResolvedClientCapabilities3newsc_0B9_.exit.i: ; preds = %.lr.ph
  %i.qt = icmp eq i64 %i.qr, -9223372036854775807
  %i.qu = or i32 %.sroa.0.12.i, 64
  %spec.select297.i = select i1 %i.qt, i32 %i.qu, i32 %.sroa.0.12.i
  br label %.critedge172.i

.critedge172.i:                                   ; preds = %bb.cx, %bb.cw, %_RNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB7_26ResolvedClientCapabilities3newsc_0B9_.exit.i, %bb.cv, %.critedge169.i
  %.sroa.0.13.i = phi i32 [ %.sroa.0.12.i, %.critedge169.i ], [ %spec.select297.i, %_RNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB7_26ResolvedClientCapabilities3newsc_0B9_.exit.i ], [ %.sroa.0.12.i, %bb.cv ], [ %.sroa.0.12.i, %bb.cw ], [ %.sroa.0.12.i, %bb.cx ] ; 6 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.gc, i64 432
  %i.qw = load i64, ptr %i.qv, align 8, !range !90, !alias.scope !2909, !noundef !11 ; 3 uses
  %i.qx = icmp slt i64 %i.qw, -1
  br i1 %i.qx, label %.critedge173.i, label %bb.cy

bb.cy:                                            ; preds = %.critedge172.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2912)
  %.not.i225.i = icmp eq i64 %i.qw, -1
  br i1 %.not.i225.i, label %.critedge173.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qy = getelementptr inbounds nuw i8, ptr %i.gc, i64 440
  %i.qz = load ptr, ptr %i.qy, align 8, !alias.scope !2915, !nonnull !11, !noundef !11 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.gc, i64 448
  %i.rb = load i64, ptr %i.ra, align 8, !alias.scope !2915, !noundef !11 ; 2 uses
  %.idx700 = mul nuw nsw i64 %i.rb, 24
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 %.idx700
  %i.rd = icmp eq i64 %i.rb, 0
  br i1 %i.rd, label %.critedge173.i, label %.lr.ph698

bb.da:                                            ; preds = %.lr.ph698
  %i.re = getelementptr inbounds nuw i8, ptr %i.rg, i64 24 ; 2 uses
  %i.rf = icmp eq ptr %i.re, %i.rc
  br i1 %i.rf, label %.critedge173.i, label %.lr.ph698

.lr.ph698:                                        ; preds = %bb.cz, %bb.da
  %i.rg = phi ptr [ %i.re, %bb.da ], [ %i.qz, %bb.cz ] ; 2 uses
  %i.rh = load i64, ptr %i.rg, align 8, !range !2902, !alias.scope !2916, !noalias !2919, !noundef !11 ; 2 uses
  %i.ri = icmp slt i64 %i.rh, -9223372036854775806
  br i1 %i.ri, label %_RNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB7_26ResolvedClientCapabilities3newsf_0B9_.exit.i, label %bb.da

_RNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB7_26ResolvedClientCapabilities3newsf_0B9_.exit.i: ; preds = %.lr.ph698
  %i.rj = icmp eq i64 %i.rh, -9223372036854775807
  %i.rk = or i32 %.sroa.0.13.i, 262144
  %spec.select298.i = select i1 %i.rj, i32 %i.rk, i32 %.sroa.0.13.i
  br label %.critedge173.i

.critedge173.i:                                   ; preds = %bb.da, %bb.cz, %_RNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB7_26ResolvedClientCapabilities3newsf_0B9_.exit.i, %bb.cy, %.critedge172.i
  %.sroa.0.14.i = phi i32 [ %.sroa.0.13.i, %bb.cy ], [ %.sroa.0.13.i, %.critedge172.i ], [ %spec.select298.i, %_RNCNvMs1_NtCsjNt1Wzngcv_9ty_server12capabilitiesNtB7_26ResolvedClientCapabilities3newsf_0B9_.exit.i ], [ %.sroa.0.13.i, %bb.cz ], [ %.sroa.0.13.i, %bb.da ] ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.gc, i64 114
  %.sroa.032.0.val191.i = load i8, ptr %i.rl, align 2, !alias.scope !2876
  %.not.i227.i = icmp eq i64 %i.ns, -1
  %i.rm = and i8 %.sroa.032.0.val191.i, 1
  %or.cond15.not288.i = icmp eq i8 %i.rm, 0
  %or.cond15.not.i = select i1 %.not.i227.i, i1 true, i1 %or.cond15.not288.i
  %i.rn = or i32 %.sroa.0.14.i, 128
  %spec.select299.i = select i1 %or.cond15.not.i, i32 %.sroa.0.14.i, i32 %i.rn ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.gc, i64 608
  %.sroa.032.0.val192.i = load i64, ptr %i.ro, align 8, !range !90, !alias.scope !2876, !noundef !11
  %i.rp = getelementptr inbounds nuw i8, ptr %i.gc, i64 634
  %.sroa.032.0.val193.i = load i8, ptr %i.rp, align 2, !alias.scope !2876 ; 2 uses
  %i.rq = icmp slt i64 %.sroa.032.0.val192.i, -1  ; 2 uses
  %.not8.i.i = icmp eq i8 %.sroa.032.0.val193.i, -1
  %i.rr = and i8 %.sroa.032.0.val193.i, 1
  %or.cond17.not289.i = icmp eq i8 %i.rr, 0
  %i.rs = or i1 %.not8.i.i, %or.cond17.not289.i
  %or.cond17.not.i = select i1 %i.rq, i1 true, i1 %i.rs
  %i.rt = or i32 %spec.select299.i, 256
  %.sroa.0.16.i = select i1 %or.cond17.not.i, i32 %spec.select299.i, i32 %i.rt ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.gc, i64 632
  %.sroa.032.0.val195.i = load i8, ptr %i.ru, align 8, !alias.scope !2876
  %i.rv = and i8 %.sroa.032.0.val195.i, 1
  %or.cond19.not290.i = icmp eq i8 %i.rv, 0
  %or.cond19.not.i = select i1 %i.rq, i1 true, i1 %or.cond19.not290.i
  %i.rw = or i32 %.sroa.0.16.i, 512
  %.sroa.0.17.i = select i1 %or.cond19.not.i, i32 %.sroa.0.16.i, i32 %i.rw ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.gc, i64 152
  %.sroa.032.0.val196.i = load i64, ptr %i.rx, align 8, !range !51, !alias.scope !2876, !noundef !11
  %i.ry = getelementptr inbounds nuw i8, ptr %i.gc, i64 201
  %.sroa.032.0.val197.i = load i8, ptr %i.ry, align 1, !alias.scope !2876
  %.not.i233.i = icmp eq i64 %.sroa.032.0.val196.i, -2
  %i.rz = and i8 %.sroa.032.0.val197.i, 1
  %or.cond21.not291.i = icmp eq i8 %i.rz, 0
  %or.cond21.not.i = select i1 %.not.i233.i, i1 true, i1 %or.cond21.not291.i
  %i.sa = or i32 %.sroa.0.17.i, 1024
  %spec.select305.i = select i1 %or.cond21.not.i, i32 %.sroa.0.17.i, i32 %i.sa
  br label %.critedge177.i

.critedge177.i:                                   ; preds = %.critedge167.i..critedge177.i_crit_edge, %.critedge173.i
  %i.sb = phi i64 [ %.pre, %.critedge167.i..critedge177.i_crit_edge ], [ %i.qw, %.critedge173.i ]
  %.sroa.0.18.i = phi i32 [ %.sroa.0.8.i, %.critedge167.i..critedge177.i_crit_edge ], [ %spec.select305.i, %.critedge173.i ] ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.gc, i64 1106
  %i.sd = load i8, ptr %i.sc, align 2, !range !2879, !alias.scope !2876, !noundef !11 ; 2 uses
  %.not157.i = icmp eq i8 %i.sd, -1
  %i.se = and i8 %i.sd, 1
  %or.cond23.not.i = icmp eq i8 %i.se, 0
  %or.cond281.i = or i1 %.not157.i, %or.cond23.not.i
  %i.sf = or i32 %.sroa.0.18.i, 2048
  %spec.select300.i = select i1 %or.cond281.i, i32 %.sroa.0.18.i, i32 %i.sf ; 2 uses
  %i.sg = icmp slt i64 %i.sb, -1
  %or.cond324.i = select i1 %.not139.i, i1 true, i1 %i.sg
  br i1 %or.cond324.i, label %bb.dk, label %bb.db

bb.db:                                            ; preds = %.critedge177.i
  %i.sh = getelementptr inbounds nuw i8, ptr %i.gc, i64 533
  %.val199.i = load i8, ptr %i.sh, align 1, !range !10, !alias.scope !2876, !noundef !11
  %i.si = and i8 %.val199.i, 1
  %i.sj = zext nneg i8 %i.si to i32
  %i.sk = shl nuw nsw i32 %i.sj, 16
  %i.sl = getelementptr inbounds nuw i8, ptr %i.gc, i64 528
  %.val200.i = load i8, ptr %i.sl, align 8, !range !10, !alias.scope !2876, !noundef !11
  %i.sm = and i8 %.val200.i, 1
  %i.sn = zext nneg i8 %i.sm to i32
  %i.so = shl nuw nsw i32 %i.sn, 19
  %i.sp = or disjoint i32 %i.so, %i.sk
  %spec.select302.i = or i32 %i.sp, %spec.select300.i
  br label %bb.dk

bb.dc:                                            ; preds = %bb.cg, %bb.cd, %bb.cc, %bb.ch
  %i.sq = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.sr = icmp eq i8 %i.sq, 0
  br i1 %i.sr, label %bb.dd, label %bb.cm

bb.dd:                                            ; preds = %bb.dc
  %i.ss = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.st = icmp ult i64 %i.ss, 6
  call void @llvm.assume(i1 %i.st)
  %i.su = icmp samesign ugt i64 %i.ss, 3
  br i1 %i.su, label %bb.de, label %bb.cm

bb.de:                                            ; preds = %bb.dd
  %i.sv = load ptr, ptr @_RNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news0_10___CALLSITE, align 8, !nonnull !11, !align !495, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew)
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 32
  %i.sx = load ptr, ptr %i.sw, align 8, !nonnull !11, !noundef !11
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 40
  %i.sz = load i64, ptr %i.sy, align 8, !noundef !11
  store i64 4, ptr %i.ew, align 8
  %.sroa.3179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %i.sx, ptr %.sroa.3179.0..sroa_idx, align 8
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store i64 %i.sz, ptr %.sroa.5180.0..sroa_idx, align 8
  %i.ta = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.df:                                            ; preds = %bb.de
  %i.tb = extractvalue { ptr, ptr } %i.ta, 0      ; 2 uses
  %i.tc = extractvalue { ptr, ptr } %i.ta, 1      ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 24
  %i.te = load ptr, ptr %i.td, align 8, !invariant.load !11, !nonnull !11
  %i.tf = invoke noundef zeroext i1 %i.te(ptr noundef %i.tb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ew)
          to label %bb.dg unwind label %.loopexit.split-lp.loopexit.split-lp

bb.dg:                                            ; preds = %bb.df
  br i1 %i.tf, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  %i.tg = load ptr, ptr @_RNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news0_10___CALLSITE, align 8, !nonnull !11, !align !495, !noundef !11
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  store ptr %i.fw, ptr %i.es, align 8
  %.sroa.4184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr @_RNvXsb_NtNtCsjNt1Wzngcv_9ty_server7session7optionsNtB5_21InitializationOptionsNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.4184.0..sroa_idx, align 8
  store ptr @70, ptr %i.et, align 8
  %i.ti = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %i.es, ptr %i.ti, align 8
  store ptr %i.et, ptr %i.eu, align 8
  %i.tj = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
end_hunk_1
