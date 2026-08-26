Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/unbuffered_async_client.unbuffered_async_client.8bc8a3765dce2620-cgu.00?download=true
inline.NumInlined: 454
inline.NumDeleted: 236
begin_hunk_0_@_RINvMs2_NtNtCskruEhpekJ3V_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0EB1h_:bb.a
  %.sroa.915.i.i.i.i.i = alloca [16 x i8], align 8 ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 4                ; 8 uses
  %.sroa.958.i.i.i.i = alloca [16 x i8], align 8  ; 7 uses
  %.sroa.955.i.i.i.i = alloca [16 x i8], align 8  ; 11 uses
  %i.k = alloca [32 x i8], align 4                ; 10 uses
  %.sroa.6.i.i.i.i = alloca [24 x i8], align 8    ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 9 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [40 x i8], align 8                ; 13 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [64 x i8], align 8                ; 4 uses
  %i.q = alloca [64 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 15 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [64 x i8], align 8               ; 11 uses
  %i.ai = alloca [48 x i8], align 8               ; 15 uses
  %i.aj = alloca [16 x i8], align 8               ; 6 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 6 uses
  %i.am = alloca [56 x i8], align 8               ; 7 uses
  %i.an = alloca [72 x i8], align 8               ; 6 uses
  %i.ao = alloca [64 x i8], align 8               ; 23 uses
  %.sroa.6258.i.i.i = alloca [16 x i8], align 8   ; 6 uses
  %i.ap = alloca [32 x i8], align 16              ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.8.i.i.i = alloca [64 x i8], align 8      ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [8 x i8], align 8                ; 13 uses
  %i.au = alloca [976 x i8], align 8              ; 10 uses
  %i.av = alloca [360 x i8], align 8              ; 7 uses
  %i.aw = alloca [24 x i8], align 8               ; 5 uses
  %i.ax = alloca [8 x i8], align 8                ; 5 uses
  %i.ay = alloca [168 x i8], align 8              ; 5 uses
  %i.az = alloca [184 x i8], align 8              ; 5 uses
  %i.ba = alloca [344 x i8], align 8              ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 5 uses
  %i.bc = alloca [24 x i8], align 8               ; 10 uses
  %i.bd = alloca [2 x i8], align 1                ; 8 uses
  %i.be = alloca [1400 x i8], align 8             ; 69 uses
  %i.bf = alloca [32 x i8], align 8               ; 14 uses
  %i.bg = alloca [16 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.bh = invoke { ptr, ptr } @_RNvMs2_NtNtCskruEhpekJ3V_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1)
          to label %bb.b unwind label %bb.nq      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.bi = extractvalue { ptr, ptr } %i.bh, 0      ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvCsc044841uM34_23unbuffered_async_client4main0EBF_(ptr noundef nonnull align 8 %2)
  br label %bb.no

bb.d:                                             ; preds = %bb.b
  %i.bk = extractvalue { ptr, ptr } %i.bh, 1
  store ptr %i.bi, ptr %i.bg, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  store ptr %i.bk, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store ptr %i.bg, ptr %i.bf, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr null, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.be, ptr noundef nonnull align 8 dereferenceable(1400) %2, i64 1400, i1 false)
  %i.bo = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 1393 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1221 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 56 ; 19 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1248 ; 12 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 1224 ; 18 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1384 ; 7 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1380 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 1336 ; 11 uses
  %.phi.trans.insert75.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1376 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1200 ; 2 uses
  %.phi.trans.insert77.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1080 ; 2 uses
  %.phi.trans.insert79.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1088 ; 2 uses
  %.phi.trans.insert81.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1208 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 1392 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 10 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 12 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.be, i64 1220 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.be, i64 88 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.be, i64 96 ; 7 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 1096 ; 8 uses
  %.sroa.8236.0..sroa_idx237.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %.sroa.8236.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.10.0..sroa_idx233.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 104 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 176
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 1250 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.be, i64 1249 ; 9 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 1256 ; 12 uses
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.4.0..sroa_idx.i166.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.be, i64 1264 ; 7 uses
  %.sroa.648.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.447.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.be, i64 1304 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.10.0..sroa_idx18.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1344 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1352 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.be, i64 1368 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.cs = getelementptr inbounds nuw i8, ptr %i.be, i64 1360 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.be, i64 1272 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.4260.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %.sroa.5261.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.cx = getelementptr inbounds nuw i8, ptr %i.be, i64 1104 ; 11 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.be, i64 1216 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.be, i64 1217 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.be, i64 1128 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.5267.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.be, i64 1136 ; 8 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.be, i64 1192 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.be, i64 1144 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.be, i64 1218 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.be, i64 1112 ; 9 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.be, i64 1219 ; 3 uses
  %.sroa.8360.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1232 ; 8 uses
  %.sroa.9361.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1240 ; 7 uses
  %.sroa.12364.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1288 ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.12308.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1296
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.8271.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.5293.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.5279.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.9283.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.6280.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.0..sroa_idx281.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.8282.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.5291.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.be, i64 80 ; 4 uses
  %.sroa.5397.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.be, i64 1120 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.nk, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !50
  %i.ef = load i8, ptr %i.bp, align 8, !range !10, !noundef !11
  %i.eg = icmp eq i8 %i.ef, 0
  br i1 %i.eg, label %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.thread.i, label %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.i, !prof !12

_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.e
  %i.eh = invoke noundef ptr @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskruEhpekJ3V_5tokio7runtime7context7ContextE16get_or_init_slowCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.bo)
          to label %.noexc16 unwind label %bb.ni  ; 2 uses

.noexc16:                                         ; preds = %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.i
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %.noexc, label %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.thread.i

_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.thread.i: ; preds = %.noexc16, %bb.e
  %.sroa.0.0.i.i2.i = phi ptr [ %i.eh, %.noexc16 ], [ %i.bo, %bb.e ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 68 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !range !13, !noundef !11
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.em = load i8, ptr %i.el, align 1
  store i8 1, ptr %i.ej, align 1
  store i8 -128, ptr %i.el, align 1
  br label %.noexc

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.thread.i, %.noexc16
  %.sroa.3.0.i = phi i8 [ %i.em, %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.thread.i ], [ undef, %.noexc16 ]
  %.sroa.0.0.i = phi i8 [ %i.ek, %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.thread.i ], [ 2, %.noexc16 ]
  store i8 %.sroa.0.0.i, ptr %i.bd, align 1, !noalias !50
  store i8 %.sroa.3.0.i, ptr %i.bq, align 1, !noalias !50
  %i.en = load i8, ptr %i.br, align 1, !range !55, !noalias !56, !noundef !11
  switch i8 %i.en, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.af
    i8 2, label %bb.ag
    i8 3, label %bb.ah
  ]

default.unreachable:                              ; preds = %bb.gh, %bb.dz, %bb.dt, %bb.ck, %bb.ce, %bb.bl, %bb.ah, %.noexc
  unreachable

bb.f:                                             ; preds = %.noexc
  store i8 0, ptr %i.bv, align 8, !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !56
  invoke void @_RNvXsw_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorEINtNtCsj6eKBz9Db1c_4core7convert4FromRSBF_E4fromCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @247, i64 noundef 121)
          to label %_RNvXs1_NtCsj6eKBz9Db1c_4core7convertRSNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc3vec3VecBA_EE4intoCsc044841uM34_23unbuffered_async_client.exit.i.i unwind label %bb.g, !noalias !63

bb.g:                                             ; preds = %bb.f
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !56
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6webpki7anchors13RootCertStoreECsc044841uM34_23unbuffered_async_client.exit

_RNvXs1_NtCsj6eKBz9Db1c_4core7convertRSNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc3vec3VecBA_EE4intoCsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %bb.f
  store i8 1, ptr %i.bv, align 8, !noalias !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !56
  store ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13, ptr %i.ax, align 8, !noalias !56
  invoke void @_RNvMNtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB2_12ClientConfig30builder_with_protocol_versions(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ax, i64 noundef 1)
          to label %bb.i unwind label %bb.h, !noalias !63

bb.h:                                             ; preds = %_RNvXs1_NtCsj6eKBz9Db1c_4core7convertRSNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc3vec3VecBA_EE4intoCsc044841uM34_23unbuffered_async_client.exit.i.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.i:                                             ; preds = %_RNvXs1_NtCsj6eKBz9Db1c_4core7convertRSNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorINtB5_4IntoINtNtCs4wP2HXfJTCR_5alloc3vec3VecBA_EE4intoCsc044841uM34_23unbuffered_async_client.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !56
  store i8 0, ptr %i.bv, align 8, !noalias !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !noalias !56
  invoke void @_RINvMs_NtNtCs7ZUl82OSlxp_6rustls6client7builderINtNtB9_7builder13ConfigBuilderNtNtB7_11client_conn12ClientConfigNtBM_13WantsVerifierE22with_root_certificatesNtNtNtB9_6webpki7anchors13RootCertStoreECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.ay, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aw)
          to label %bb.k unwind label %bb.j, !noalias !63

bb.j:                                             ; preds = %bb.i
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !56
  br label %bb.ae

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !56
  invoke void @_RNvMs0_NtNtCs7ZUl82OSlxp_6rustls6client7builderINtNtB9_7builder13ConfigBuilderNtNtB7_11client_conn12ClientConfigNtB5_15WantsClientCertE19with_no_client_auth(ptr noalias nofree noundef nonnull sret([344 x i8]) align 8 captures(address) dereferenceable(344) %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.az)
          to label %bb.n unwind label %bb.m, !noalias !63

bb.l:                                             ; preds = %bb.ae, %bb.m
  %.pn6.i.i = phi { ptr, i32 } [ %i.er, %bb.m ], [ %.pn.i.i, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !56
  br label %.body.i.i

bb.m:                                             ; preds = %bb.k
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !64
  store i64 1, ptr %i.av, align 8, !noalias !64
  store i64 1, ptr %i.bw, align 8, !noalias !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.bx, ptr noundef nonnull readonly align 8 dereferenceable(344) %i.ba, i64 344, i1 false), !noalias !56
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !67
  %i.es = call noundef align 8 dereferenceable_or_null(360) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 360, i64 noundef 8) #17, !noalias !67 ; 3 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.o, label %bb.s, !prof !70

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 360) #20
          to label %.noexc.i.i.i unwind label %bb.p, !noalias !71

.noexc.i.i.i:                                     ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %i.av) #19
          to label %.body.i.i unwind label %bb.q, !noalias !71

bb.q:                                             ; preds = %bb.p
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !71
  unreachable

.body.i.i:                                        ; preds = %bb.t, %.body29.i.i, %bb.r, %bb.p, %bb.l
  %.pn16.i.i = phi { ptr, i32 } [ %.pn6.i.i, %bb.l ], [ %i.eu, %bb.p ], [ %i.ey, %bb.r ], [ %.pn14.i.i, %bb.t ], [ %.pn14.i.i, %.body29.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !56
  %i.ew = load i8, ptr %i.bv, align 8, !range !13, !noalias !56, !noundef !11
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.na, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6webpki7anchors13RootCertStoreECsc044841uM34_23unbuffered_async_client.exit

bb.r:                                             ; preds = %bb.my, %bb.mq
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.s:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.es, ptr noundef nonnull align 8 dereferenceable(360) %i.av, i64 360, i1 false), !noalias !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !64
  store ptr %i.es, ptr %i.be, align 8, !noalias !56
  invoke void @_RINvNtCs4wP2HXfJTCR_5alloc3vec9from_elemhECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.by, i8 noundef 0, i64 noundef 16384)
          to label %bb.v unwind label %bb.u, !noalias !63

.body29.i.i:                                      ; preds = %bb.x, %bb.mv, %bb.mn, %bb.u
  %.pn14.i.i = phi { ptr, i32 } [ %i.ti, %bb.mv ], [ %i.tb, %bb.mn ], [ %i.fc, %bb.u ], [ %.pn12.i.i, %bb.x ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.ez = load ptr, ptr %i.be, align 8, !alias.scope !78, !noalias !56, !nonnull !11, !noundef !11
  %i.fa = atomicrmw sub ptr %i.ez, i64 1 release, align 8, !noalias !79
  %i.fb = icmp eq i64 %i.fa, 1
  br i1 %i.fb, label %bb.t, label %.body.i.i

bb.t:                                             ; preds = %.body29.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.be) #21
          to label %.body.i.i unwind label %bb.mz, !noalias !63

bb.u:                                             ; preds = %bb.mw, %bb.mo, %bb.s
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %.body29.i.i

bb.v:                                             ; preds = %bb.s
  invoke void @_RINvNtCs4wP2HXfJTCR_5alloc3vec9from_elemhECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bz, i8 noundef 0, i64 noundef 1024)
          to label %.thread.i.i unwind label %bb.z, !noalias !63

.body25.i.i:                                      ; preds = %bb.ac, %bb.ms, %bb.mk, %bb.z
  %.pn12.i.i = phi { ptr, i32 } [ %i.tg, %bb.ms ], [ %i.sz, %bb.mk ], [ %i.ff, %bb.z ], [ %.pn10.i.i, %bb.ac ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %bb.x unwind label %bb.w, !noalias !63

bb.w:                                             ; preds = %.body25.i.i
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %.body28 unwind label %bb.y, !noalias !63

bb.x:                                             ; preds = %.body25.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %.body29.i.i unwind label %bb.mz

bb.y:                                             ; preds = %bb.w
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !63
  unreachable

bb.z:                                             ; preds = %bb.mt, %bb.ml, %bb.v
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body25.i.i

.thread.i.i:                                      ; preds = %bb.v
  %.val.i.i = load ptr, ptr %i.ca, align 8, !noalias !56, !nonnull !11, !noundef !11 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCskruEhpekJ3V_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0EB1h_:bb.a
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i

bb.la:                                            ; preds = %bb.kx
  %i.rw = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %.val.i.i31 = load i32, ptr %i.rw, align 8, !alias.scope !270, !noalias !85, !noundef !11 ; 2 uses
  %i.rx = icmp eq i32 %.val.i.i31, -1
  br i1 %i.rx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.ry = call noundef i32 @close(i32 noundef %.val.i.i31) #17, !noalias !85 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %bb.kz, %bb.ky
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs) #19
          to label %.body32 unwind label %bb.lc, !noalias !85

bb.lc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i
  %i.rz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !85
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.lb, %bb.la
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %.body219.i.i.i unwind label %bb.bh

bb.ld:                                            ; preds = %bb.kv
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @272, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @273) #20
          to label %bb.fm unwind label %bb.lf, !noalias !85

bb.le:                                            ; preds = %bb.kv
  %i.sa = load i64, ptr %i.cx, align 8, !noalias !81, !noundef !11
  %i.sb = icmp eq i64 %i.sa, 0
  br i1 %i.sb, label %bb.lh, label %bb.lg, !prof !12

bb.lf:                                            ; preds = %bb.ld
  %i.sc = landingpad { ptr, i32 }
          cleanup
  br label %bb.kx

bb.lg:                                            ; preds = %bb.le
  invoke void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @274, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cx, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #20
          to label %bb.fm unwind label %bb.li, !noalias !85

bb.lh:                                            ; preds = %bb.le
  %i.sd = load i64, ptr %i.di, align 8, !noalias !81, !noundef !11
  %i.se = icmp eq i64 %i.sd, 0
  br i1 %i.se, label %bb.lk, label %bb.lj, !prof !12

bb.li:                                            ; preds = %bb.lg
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %bb.kx

bb.lj:                                            ; preds = %bb.lh
  invoke void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @274, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.di, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #20
          to label %bb.fm unwind label %bb.lq, !noalias !85

bb.lk:                                            ; preds = %bb.lh
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %bb.ln unwind label %bb.ll, !noalias !85

bb.ll:                                            ; preds = %bb.lk
  %i.sg = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i = load i32, ptr %i.ed, align 8, !alias.scope !275, !noalias !81, !noundef !11 ; 2 uses
  %i.sh = icmp eq i32 %.val2.i.i.i.i.i, -1
  br i1 %i.sh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.si = call noundef i32 @close(i32 noundef %.val2.i.i.i.i.i) #17, !noalias !85 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i

bb.ln:                                            ; preds = %bb.lk
  %.val.i.i.i.i.i = load i32, ptr %i.ed, align 8, !alias.scope !275, !noalias !81, !noundef !11 ; 2 uses
  %i.sj = icmp eq i32 %.val.i.i.i.i.i, -1
  br i1 %i.sj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.sk = call noundef i32 @close(i32 noundef %.val.i.i.i.i.i) #17, !noalias !85 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i: ; preds = %bb.lm, %bb.ll
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs) #19
          to label %.body219.i.i.i unwind label %bb.lp, !noalias !85

bb.lp:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i
  %i.sl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !85
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %bb.lo, %bb.ln
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i unwind label %bb.lr, !noalias !85

bb.lq:                                            ; preds = %bb.lj
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %bb.kx

bb.lr:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %.body219.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(976) %i.ch)
          to label %bb.mg unwind label %bb.ls, !noalias !85

bb.ls:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i.i.i
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.lt:                                            ; preds = %bb.fd
  %i.sp = insertvalue { ptr, ptr } poison, ptr %i.kb, 0
  %i.sq = insertvalue { ptr, ptr } %i.sp, ptr %i.kc, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kc) ]
  br label %bb.hx

bb.lu:                                            ; preds = %bb.hx
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.de)
          to label %bb.lv unwind label %bb.fg, !noalias !85

bb.lv:                                            ; preds = %bb.lu, %bb.hx, %bb.hx, %bb.hx, %bb.hx
  store i8 0, ptr %i.cc, align 4, !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !81
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %bb.ly unwind label %bb.lw, !noalias !85

bb.lw:                                            ; preds = %bb.lv
  %i.sr = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i222.i.i.i = load i32, ptr %i.ed, align 8, !alias.scope !280, !noalias !81, !noundef !11 ; 2 uses
  %i.ss = icmp eq i32 %.val2.i.i222.i.i.i, -1
  br i1 %i.ss, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i223.i.i.i, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.st = call noundef i32 @close(i32 noundef %.val2.i.i222.i.i.i) #17, !noalias !85 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i223.i.i.i

bb.ly:                                            ; preds = %bb.lv
  %.val.i.i224.i.i.i = load i32, ptr %i.ed, align 8, !alias.scope !280, !noalias !81, !noundef !11 ; 2 uses
  %i.su = icmp eq i32 %.val.i.i224.i.i.i, -1
  br i1 %i.su, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225.i.i.i, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.sv = call noundef i32 @close(i32 noundef %.val.i.i224.i.i.i) #17, !noalias !85 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i223.i.i.i: ; preds = %bb.lx, %bb.lw
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs) #19
          to label %.body219.i.i.i unwind label %bb.ma, !noalias !85

bb.ma:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i223.i.i.i
  %i.sw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !85
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225.i.i.i: ; preds = %bb.lz, %bb.ly
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229_crit_edge.i.i.i unwind label %bb.lr, !noalias !85

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229_crit_edge.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i225.i.i.i
  %.pre496.i.i.i = extractvalue { ptr, ptr } %.pn117.pn.i.i.i, 1
  %.pre497.i.i.i = extractvalue { ptr, ptr } %.pn117.pn.i.i.i, 0
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i.i.i

bb.mb:                                            ; preds = %bb.hz
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.de) #19
          to label %.body.i.i.i unwind label %bb.bh, !noalias !85

bb.mc:                                            ; preds = %bb.md, %.body.i.i.i
  store i8 0, ptr %i.cc, align 4, !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !81
  br label %bb.kx

bb.md:                                            ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtB14_6client11client_conn20ClientConnectionDataENtNtB14_5error5ErrorEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ao) #19
          to label %bb.mc unwind label %bb.bh, !noalias !85

bb.me:                                            ; preds = %bb.bk, %bb.bj
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i.i

bb.mf:                                            ; preds = %bb.kn, %bb.kh, %bb.jx, %bb.jn, %bb.jb, %bb.it, %bb.fc, %bb.eq
  %.sink.i.ph.i.i = phi i8 [ 10, %bb.fc ], [ 4, %bb.it ], [ 5, %bb.jb ], [ 8, %bb.jn ], [ 9, %bb.jx ], [ 6, %bb.kh ], [ 7, %bb.kn ], [ 3, %bb.eq ]
  store i8 %.sink.i.ph.i.i, ptr %.phi.trans.insert.i.i, align 1, !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6258.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !56
  br label %bb.nf

bb.mg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i, %bb.bb
  %.sroa.16.0.i.i.a = phi ptr [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i ], [ %.sroa.16.1.pre-phi.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i.i.i ], [ %i.gf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i ], [ %i.gd, %bb.bb ] ; 3 uses
  %.sroa.1456.0.i.i = phi ptr [ null, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i ], [ %.sroa.031.1.pre-phi.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit229.i.i.i ], [ %i.ge, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i ], [ %i.gc, %bb.bb ] ; 2 uses
  store i8 1, ptr %.phi.trans.insert.i.i, align 1, !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6258.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !56
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvCsc044841uM34_23unbuffered_async_client8converse0EBF_(ptr noundef nonnull align 8 %i.bs)
          to label %bb.mi unwind label %bb.mh, !noalias !63

bb.mh:                                            ; preds = %bb.mg
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.mi:                                            ; preds = %bb.mg
  %.not.i.i.i = icmp eq ptr %.sroa.1456.0.i.i, null
  br i1 %.not.i.i.i, label %bb.mj, label %bb.mr

bb.mj:                                            ; preds = %bb.mi
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %bb.ml unwind label %bb.mk, !noalias !63

bb.mk:                                            ; preds = %bb.mj
  %i.sz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %.body25.i.i unwind label %bb.mm, !noalias !63

bb.ml:                                            ; preds = %bb.mj
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i unwind label %bb.z, !noalias !63

bb.mm:                                            ; preds = %bb.mk
  %i.ta = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !63
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %bb.ml
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %bb.mo unwind label %bb.mn, !noalias !63

bb.mn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i
  %i.tb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %.body29.i.i unwind label %bb.mp, !noalias !63

bb.mo:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31.i.i unwind label %bb.u, !noalias !63

bb.mp:                                            ; preds = %bb.mn
  %i.tc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !63
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31.i.i: ; preds = %bb.mo
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.td = load ptr, ptr %i.be, align 8, !alias.scope !291, !noalias !56, !nonnull !11, !noundef !11
  %i.te = atomicrmw sub ptr %i.td, i64 1 release, align 8, !noalias !292
  %i.tf = icmp eq i64 %i.te, 1
  br i1 %i.tf, label %bb.mq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit45.i.i

bb.mq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.be) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit45.i.i unwind label %bb.r, !noalias !63

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit45.i.i: ; preds = %bb.my, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit43.i.i, %bb.mq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31.i.i
  %.sroa.3.0.i.i = phi ptr [ %.sroa.16.0.i.i.a, %bb.my ], [ %.sroa.16.0.i.i.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit43.i.i ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31.i.i ], [ undef, %bb.mq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !56
  store i8 0, ptr %i.bv, align 8, !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !56
  br label %bb.nf

bb.mr:                                            ; preds = %bb.mi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.0.i.i.a) ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %bb.mt unwind label %bb.ms, !noalias !63

bb.ms:                                            ; preds = %bb.mr
  %i.tg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %.body25.i.i unwind label %bb.mu, !noalias !63

bb.mt:                                            ; preds = %bb.mr
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit38.i.i unwind label %bb.z, !noalias !63

bb.mu:                                            ; preds = %bb.ms
  %i.th = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !63
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit38.i.i: ; preds = %bb.mt
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %bb.mw unwind label %bb.mv, !noalias !63

bb.mv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit38.i.i
  %i.ti = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %.body29.i.i unwind label %bb.mx, !noalias !63

bb.mw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit38.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit43.i.i unwind label %bb.u, !noalias !63

bb.mx:                                            ; preds = %bb.mv
  %i.tj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !63
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit43.i.i: ; preds = %bb.mw
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.tk = load ptr, ptr %i.be, align 8, !alias.scope !299, !noalias !56, !nonnull !11, !noundef !11
  %i.tl = atomicrmw sub ptr %i.tk, i64 1 release, align 8, !noalias !300
  %i.tm = icmp eq i64 %i.tl, 1
  br i1 %i.tm, label %bb.my, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit45.i.i

bb.my:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit43.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.be) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit45.i.i unwind label %bb.r, !noalias !63

.body20.i.i:                                      ; preds = %bb.me, %bb.bi
  %.pn8.i.i = phi { ptr, i32 } [ %.pn135.pn.pn.pn.pn.i.i.i, %bb.bi ], [ %i.sx, %bb.me ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvCsc044841uM34_23unbuffered_async_client8converse0EBF_(ptr noundef nonnull align 8 %i.bs) #19
          to label %bb.aa unwind label %bb.mz, !noalias !63

bb.mz:                                            ; preds = %bb.x, %bb.ac, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorEECsc044841uM34_23unbuffered_async_client.exit.i, %.body20.i.i, %bb.t
  %i.tn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body28

.body28:                                          ; preds = %bb.nb, %bb.ab, %bb.w, %bb.mz
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !63
  unreachable

bb.na:                                            ; preds = %.body.i.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorEECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.nb, !noalias !63

bb.nb:                                            ; preds = %bb.na
  %i.to = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %.body28 unwind label %bb.nc, !noalias !63

bb.nc:                                            ; preds = %bb.nb
  %i.tp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !63
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.na
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6webpki7anchors13RootCertStoreECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.mz

bb.nd:                                            ; preds = %bb.ag, %bb.af
  %i.tq = landingpad { ptr, i32 }
          cleanup
  br label %.body17

.body17:                                          ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6webpki7anchors13RootCertStoreECsc044841uM34_23unbuffered_async_client.exit, %bb.nd
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.tq, %bb.nd ], [ %.pn16.pn.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6webpki7anchors13RootCertStoreECsc044841uM34_23unbuffered_async_client.exit ] ; 2 uses
  %i.tr = load i8, ptr %i.bd, align 1, !range !10, !alias.scope !301, !noalias !304, !noundef !11
  %.not.i = icmp eq i8 %i.tr, 2
  br i1 %.not.i, label %.body, label %bb.ne

bb.ne:                                            ; preds = %.body17
  invoke void @_RNvXNvNtNtCskruEhpekJ3V_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.bd)
          to label %.body unwind label %bb.nh

bb.nf:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit45.i.i, %bb.mf
  %.sroa.8.0.a = phi ptr [ %.sroa.3.0.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit45.i.i ], [ undef, %bb.mf ]
  %.sroa.6.0 = phi ptr [ %.sroa.1456.0.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit45.i.i ], [ undef, %bb.mf ]
  %.sroa.043.0 = phi i1 [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit45.i.i ], [ true, %bb.mf ]
  %storemerge.i.i = phi i8 [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit45.i.i ], [ 3, %bb.mf ]
  store i8 %storemerge.i.i, ptr %i.br, align 1, !noalias !56
  %i.ts = load i8, ptr %i.bd, align 1, !range !10, !alias.scope !305, !noundef !11
  %.not.i22 = icmp eq i8 %i.ts, 2
  br i1 %.not.i22, label %bb.nj, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  invoke void @_RNvXNvNtNtCskruEhpekJ3V_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.bd)
          to label %bb.nj unwind label %bb.ni

bb.nh:                                            ; preds = %bb.ne
  %i.tt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !304
  unreachable

bb.ni:                                            ; preds = %bb.ng, %_RNvYNCNKNvNtNtCskruEhpekJ3V_5tokio7runtime7context7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCsc044841uM34_23unbuffered_async_client.exit.i, %bb.nk
  %i.tu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ne, %.body17, %bb.ni
  %eh.lpad-body = phi { ptr, i32 } [ %i.tu, %bb.ni ], [ %eh.lpad-body18, %.body17 ], [ %eh.lpad-body18, %bb.ne ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvCsc044841uM34_23unbuffered_async_client4main0EBF_(ptr noundef nonnull align 8 %i.be) #19
          to label %bb.nm unwind label %bb.np

bb.nj:                                            ; preds = %bb.ng, %bb.nf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !50
  br i1 %.sroa.043.0, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %bb.nj
  invoke void @_RNvMs2_NtNtCskruEhpekJ3V_5tokio7runtime4parkNtB5_16CachedParkThread4park(ptr noalias nofree noundef nonnull %1)
          to label %bb.e unwind label %bb.ni

bb.nl:                                            ; preds = %bb.nj
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %i.tv, align 8
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.0.a, ptr %i.tw, align 8
  store i64 0, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvCsc044841uM34_23unbuffered_async_client4main0EBF_(ptr noundef nonnull align 8 %i.be)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsc044841uM34_23unbuffered_async_client.exit27 unwind label %bb.nn

bb.nm:                                            ; preds = %bb.nn, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.tz, %bb.nn ]
  %.val11 = load ptr, ptr %i.bg, align 8, !nonnull !11, !align !22, !noundef !11
  %.val12 = load ptr, ptr %i.bl, align 8, !noundef !11
  %i.tx = getelementptr inbounds nuw i8, ptr %.val11, i64 24
  %i.ty = load ptr, ptr %i.tx, align 8, !nonnull !11, !noundef !11
  invoke void %i.ty(ptr noundef %.val12)
          to label %.thread unwind label %bb.np, !inline_history !23

bb.nn:                                            ; preds = %bb.nl
  %i.tz = landingpad { ptr, i32 }
          cleanup
  br label %bb.nm

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsc044841uM34_23unbuffered_async_client.exit27: ; preds = %bb.nl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %.val = load ptr, ptr %i.bg, align 8, !nonnull !11, !align !22, !noundef !11
  %.val10 = load ptr, ptr %i.bl, align 8, !noundef !11
  %i.ua = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ub = load ptr, ptr %i.ua, align 8, !nonnull !11, !noundef !11
  call void %i.ub(ptr noundef %.val10), !inline_history !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %bb.no

bb.no:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECsc044841uM34_23unbuffered_async_client.exit27, %bb.c
  ret void

bb.np:                                            ; preds = %bb.nm, %bb.nq, %.body
  %i.uc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

.thread:                                          ; preds = %bb.nm, %bb.nq
  %.pn.pn47 = phi { ptr, i32 } [ %.pn, %bb.nm ], [ %i.ud, %bb.nq ]
  resume { ptr, i32 } %.pn.pn47

bb.nq:                                            ; preds = %bb.a
  %i.ud = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvCsc044841uM34_23unbuffered_async_client4main0EBF_(ptr noundef nonnull align 8 %2) #19
          to label %.thread unwind label %bb.np
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EEEB1u_(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvCsc044841uM34_23unbuffered_async_client4main0EBF_(ptr noundef nonnull align 8 %.0.val)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EEB1e_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1400, i64 noundef 8) #17
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNCNvCsc044841uM34_23unbuffered_async_client4main0EEB1e_.exit: ; preds = %bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1400, i64 noundef 8) #17
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !202, !noundef !11
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7ZUl82OSlxp_6rustls4quic7SecretsEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.b = load i8, ptr %i.a, align 1, !range !10, !noundef !11
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls4quic7SecretsECsc044841uM34_23unbuffered_async_client.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls4quic7SecretsECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockECsc044841uM34_23unbuffered_async_client.exit1.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6crypto5tls138OkmBlockECsc044841uM34_23unbuffered_async_client.exit1.i: ; preds = %bb.d
  resume { ptr, i32 } %i.e

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls4quic7SecretsECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp eq ptr %.0.val, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit
    i64 1, label %bb.e
  ], !prof !173

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !308
  store i8 3, ptr %i.a, align 8, !alias.scope !308
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !202, !noundef !11
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameECsc044841uM34_23unbuffered_async_client.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client:bb.a
bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.e = load ptr, ptr %i.c, align 8, !alias.scope !628, !nonnull !11, !noundef !11
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !628
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.j

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !635, !nonnull !11, !noundef !11
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !635
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.j

bb.h:                                             ; preds = %bb.j, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.j ], [ %i.a, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !642, !nonnull !11, !noundef !11
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !642
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.l

bb.j:                                             ; preds = %bb.g, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.f, %bb.d, %bb.e, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !649, !nonnull !11, !noundef !11
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !649
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit4

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #21
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit4: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit, %bb.k
  ret void

bb.l:                                             ; preds = %bb.i, %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8recv_tls0B3_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !55, !noundef !11
  switch i8 %i.d, label %default.unreachable22 [
    i8 0, label %bb.b
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.d
  ]

default.unreachable22:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !11, !align !22, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !11 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !11, !align !22, !noundef !11 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = load i64, ptr %i.l, align 8, !noundef !11 ; 4 uses
  %i.n = icmp ugt i64 %i.m, %i.i
  br i1 %i.n, label %bb.c, label %bb.f, !prof !70

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.m, i64 noundef range(i64 0, -9223372036854775808) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @277) #22
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.f:                                             ; preds = %bb.b
  %i.p = sub nuw nsw i64 %i.i, %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.e, ptr %i.r, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.q, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.p, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #22
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #22
  unreachable

bb.i:                                             ; preds = %bb.d, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = invoke { i64, ptr } @_RNvXNtNtNtCskruEhpekJ3V_5tokio2io4util4readINtB2_4ReadNtNtNtNtB8_3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.j       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  %i.v = extractvalue { i64, ptr } %i.t, 0        ; 2 uses
  %i.w = icmp eq i64 %i.v, 2
  br i1 %i.w, label %bb.l, label %bb.m

common.ret:                                       ; preds = %bb.r, %bb.l
  %storemerge = phi i8 [ 1, %bb.r ], [ 3, %bb.l ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.l:                                             ; preds = %bb.k
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %common.ret

bb.m:                                             ; preds = %bb.k
  %i.x = extractvalue { i64, ptr } %i.t, 1        ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = trunc nuw i64 %i.v to i1
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aa = invoke { ptr, ptr } @_RNvXsd_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtNtBW_2io5error5ErrorE4fromCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull %i.x)
          to label %bb.u unwind label %bb.t       ; 2 uses

bb.o:                                             ; preds = %bb.m
  store i64 %i.y, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.518.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio7__eprint(ptr noundef nonnull @279, ptr noundef nonnull %i.a)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !11, !align !22, !noundef !11 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !11
  %i.af = add i64 %i.ae, %i.y
  store i64 %i.af, ptr %i.ad, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %bb.q
  %.sroa.3.0.a = phi ptr [ %i.ak, %bb.u ], [ undef, %bb.q ]
  %.sroa.05.0 = phi ptr [ %i.aj, %bb.u ], [ null, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.05.0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0.a, ptr %i.ah, align 8
  store i64 0, ptr %0, align 8
  br label %common.ret

bb.s:                                             ; preds = %bb.t, %bb.j, %bb.e, %bb.p
  %.pn12.pn = phi { ptr, i32 } [ %i.ab, %bb.p ], [ %i.ai, %bb.t ], [ %i.u, %bb.j ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn12.pn

bb.t:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.n
  %i.aj = extractvalue { ptr, ptr } %i.aa, 0      ; 2 uses
  %i.ak = extractvalue { ptr, ptr } %i.aa, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  br label %bb.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8send_tls0B3_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !55, !noundef !11
  switch i8 %i.c, label %default.unreachable21 [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

default.unreachable21:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = load <2 x ptr>, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !11, !align !22, !noundef !11 ; 2 uses
  store ptr %i.i, ptr %i.g, align 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !11 ; 3 uses
  %.not.i.i = icmp ugt i64 %i.j, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.e, !prof !70

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @280) #22
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x ptr> %i.d, ptr %i.l, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.j, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @281) #22
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @281) #22
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = invoke { i64, ptr } @_RNvXNtNtNtCskruEhpekJ3V_5tokio2io4util9write_allINtB2_8WriteAllNtNtNtNtB8_3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.p = extractvalue { i64, ptr } %i.n, 0
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %common.ret, label %bb.k

common.ret:                                       ; preds = %bb.j, %bb.p
  %storemerge18 = phi i64 [ 0, %bb.p ], [ 1, %bb.j ]
  %storemerge = phi i8 [ 1, %bb.p ], [ 3, %bb.j ]
  store i64 %storemerge18, ptr %0, align 8
  store i8 %storemerge, ptr %i.b, align 8
  ret void

bb.k:                                             ; preds = %bb.j
  %i.r = extractvalue { i64, ptr } %i.n, 1        ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = invoke { ptr, ptr } @_RNvXsd_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtNtBW_2io5error5ErrorE4fromCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull %i.r)
          to label %bb.s unwind label %bb.r       ; 2 uses

bb.m:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.t, ptr %i.a, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1j_NtCsj6eKBz9Db1c_4core3fmtQjNtB6_7Display3fmtCsc044841uM34_23unbuffered_async_client, ptr %.sroa.517.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio7__eprint(ptr noundef nonnull @282, ptr noundef nonnull %i.a)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.v = load ptr, ptr %i.t, align 8, !nonnull !11, !align !22, !noundef !11
  store i64 0, ptr %i.v, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  %.sroa.3.0.a = phi ptr [ %i.aa, %bb.s ], [ undef, %bb.o ]
  %.sroa.04.0 = phi ptr [ %i.z, %bb.s ], [ null, %bb.o ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.04.0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0.a, ptr %i.x, align 8
  br label %common.ret

bb.q:                                             ; preds = %bb.r, %bb.i, %bb.d, %bb.n
  %.pn11.pn = phi { ptr, i32 } [ %i.u, %bb.n ], [ %i.y, %bb.r ], [ %i.o, %bb.i ], [ %i.k, %bb.d ]
  store i8 2, ptr %i.b, align 8
  resume { ptr, i32 } %.pn11.pn

bb.r:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.l
  %i.z = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.s, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  br label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsg_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = load i8, ptr %0, align 8, !range !534, !noundef !11
  switch i8 %i.m, label %default.unreachable1 [
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
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.o, ptr %i.l, align 8
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @289, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 12, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @287, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @291, i64 noundef 8, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @288)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.r, ptr %i.k, align 8
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @294, i64 noundef 29, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 12, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @292, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @291, i64 noundef 8, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @293)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.x

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.t, ptr %i.j, align 8
  %i.u = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @296, i64 noundef 27, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @295)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.x

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.i, align 8
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @298, i64 noundef 14, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.x

bb.f:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @299, i64 noundef 23)
  br label %bb.x

bb.g:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @300, i64 noundef 19)
  br label %bb.x

bb.h:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @301, i64 noundef 12)
  br label %bb.x

bb.i:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @302, i64 noundef 12)
  br label %bb.x

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.h, align 8
  %i.ac = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @304, i64 noundef 16, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @303)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.x

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.ad, ptr %i.g, align 8
  %i.ae = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @306, i64 noundef 14, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @305)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.x

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.af, ptr %i.f, align 8
  %i.ag = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @308, i64 noundef 13, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @307)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.e, align 8
  %i.ai = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @310, i64 noundef 18, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @309)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.d, align 8
  %i.ak = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @312, i64 noundef 25, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @311)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.x

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.c, align 8
  %i.am = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @314, i64 noundef 7, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.x

bb.p:                                             ; preds = %bb.a
  %i.an = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @315, i64 noundef 22)
  br label %bb.x

bb.q:                                             ; preds = %bb.a
  %i.ao = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @316, i64 noundef 22)
  br label %bb.x

bb.r:                                             ; preds = %bb.a
  %i.ap = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 20)
  br label %bb.x

bb.s:                                             ; preds = %bb.a
  %i.aq = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @318, i64 noundef 23)
  br label %bb.x

bb.t:                                             ; preds = %bb.a
  %i.ar = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @319, i64 noundef 21)
  br label %bb.x

bb.u:                                             ; preds = %bb.a
  %i.as = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @320, i64 noundef 18)
  br label %bb.x

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.at, ptr %i.b, align 8
  %i.au = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 16, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.a, align 8
  %i.aw = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @324, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @323)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_2
