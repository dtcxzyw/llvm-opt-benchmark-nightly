Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.09?download=true
inline.NumInlined: 433
inline.NumDeleted: 217
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNCINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handleNtB7_12MDBShardFile9scan_implRNtNtCsG258MDvU3F_3std4path7PathBufNCINvB4_17clean_shard_cacheB1M_E0E0Bb_:bb.a
  store ptr %i.q, ptr %i.da, align 8
  store ptr %i.r, ptr %i.s, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @13, ptr %i.db, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 1, ptr %i.j, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.s, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.cy, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.au unwind label %bb.ac

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.as

bb.av:                                            ; preds = %bb.ac
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1e_8LazyLockNtNtNtCscB05JMcjp6X_5regex5regex6string5RegexE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs31YAwBA1AlL_19xet_core_structures(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !20, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !386, !noalias !387, !align !20, !noundef !4 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !386, !noalias !387
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !15, !noalias !388, !noundef !4
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1c_8LazyLockNtNtNtCscB05JMcjp6X_5regex5regex6string5RegexE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs31YAwBA1AlL_19xet_core_structures.exit, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() #27, !noalias !388
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27, !noalias !388
  unreachable

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1c_8LazyLockNtNtNtCscB05JMcjp6X_5regex5regex6string5RegexE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !388, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !388
  call void %i.f(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a), !noalias !388, !inline_history !385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !388
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor13add_data_swar(ptr noalias nofree noundef align 4 captures(none) dereferenceable(144) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RINvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB3_12BG4Predictor13add_data_implNvB2_16popcnt_u128_swarEB9_(ptr noalias nofree noundef align 4 dereferenceable(144) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor15bg4_recommended(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(144) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
.loopexit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load <4 x i32>, ptr %i.a, align 4        ; 5 uses
  %i.c = add <4 x i32> %i.b, splat (i32 1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load <4 x i32>, ptr %i.d, align 4        ; 5 uses
  %i.f = add <4 x i32> %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.h = load <4 x i32>, ptr %i.g, align 4        ; 5 uses
  %i.i = add <4 x i32> %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load <4 x i32>, ptr %i.j, align 4        ; 5 uses
  %i.l = add <4 x i32> %i.i, %i.k
  %i.m = uitofp <4 x i32> %i.l to <4 x double>
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.o = load i32, ptr %i.n, align 4, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load <4 x i32>, ptr %i.p, align 4        ; 5 uses
  %i.r = extractelement <4 x i32> %i.q, i64 0
  %i.s = add i32 %i.o, %i.r
  %i.t = extractelement <4 x i32> %i.q, i64 1
  %i.u = add i32 %i.s, %i.t
  %i.v = extractelement <4 x i32> %i.q, i64 2
  %i.w = add i32 %i.u, %i.v
  %i.x = extractelement <4 x i32> %i.q, i64 3
  %i.y = add i32 %i.w, %i.x
  %i.z = extractelement <4 x i32> %i.k, i64 0
  %i.aa = add i32 %i.y, %i.z
  %i.ab = extractelement <4 x i32> %i.k, i64 1
  %i.ac = add i32 %i.aa, %i.ab
  %i.ad = extractelement <4 x i32> %i.k, i64 2
  %i.ae = add i32 %i.ac, %i.ad
  %i.af = extractelement <4 x i32> %i.k, i64 3
  %i.ag = add i32 %i.ae, %i.af                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load i32, ptr %i.ah, align 4, !noundef !4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ak = load <4 x i32>, ptr %i.aj, align 4      ; 5 uses
  %i.al = extractelement <4 x i32> %i.ak, i64 0
  %i.am = add i32 %i.ai, %i.al
  %i.an = extractelement <4 x i32> %i.ak, i64 1
  %i.ao = add i32 %i.am, %i.an
  %i.ap = extractelement <4 x i32> %i.ak, i64 2
  %i.aq = add i32 %i.ao, %i.ap
  %i.ar = extractelement <4 x i32> %i.ak, i64 3
  %i.as = add i32 %i.aq, %i.ar
  %i.at = extractelement <4 x i32> %i.h, i64 0
  %i.au = add i32 %i.as, %i.at
  %i.av = extractelement <4 x i32> %i.h, i64 1
  %i.aw = add i32 %i.au, %i.av
  %i.ax = extractelement <4 x i32> %i.h, i64 2
  %i.ay = add i32 %i.aw, %i.ax
  %i.az = extractelement <4 x i32> %i.h, i64 3
  %i.ba = add i32 %i.ay, %i.az                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bc = load i32, ptr %i.bb, align 4, !noundef !4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = load <4 x i32>, ptr %i.bd, align 4      ; 5 uses
  %i.bf = extractelement <4 x i32> %i.be, i64 0
  %i.bg = add i32 %i.bc, %i.bf
  %i.bh = extractelement <4 x i32> %i.be, i64 1
  %i.bi = add i32 %i.bg, %i.bh
  %i.bj = extractelement <4 x i32> %i.be, i64 2
  %i.bk = add i32 %i.bi, %i.bj
  %i.bl = extractelement <4 x i32> %i.be, i64 3
  %i.bm = add i32 %i.bk, %i.bl
  %i.bn = extractelement <4 x i32> %i.e, i64 0
  %i.bo = add i32 %i.bm, %i.bn
  %i.bp = extractelement <4 x i32> %i.e, i64 1
  %i.bq = add i32 %i.bo, %i.bp
  %i.br = extractelement <4 x i32> %i.e, i64 2
  %i.bs = add i32 %i.bq, %i.br
  %i.bt = extractelement <4 x i32> %i.e, i64 3
  %i.bu = add i32 %i.bs, %i.bt                    ; 2 uses
  %i.bv = load i32, ptr %0, align 4, !noundef !4  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bx = load <4 x i32>, ptr %i.bw, align 4      ; 5 uses
  %i.by = extractelement <4 x i32> %i.bx, i64 0
  %i.bz = add i32 %i.bv, %i.by
  %i.ca = extractelement <4 x i32> %i.bx, i64 1
  %i.cb = add i32 %i.bz, %i.ca
  %i.cc = extractelement <4 x i32> %i.bx, i64 2
  %i.cd = add i32 %i.cb, %i.cc
  %i.ce = extractelement <4 x i32> %i.bx, i64 3
  %i.cf = add i32 %i.cd, %i.ce
  %i.cg = extractelement <4 x i32> %i.b, i64 0
  %i.ch = add i32 %i.cf, %i.cg
  %i.ci = extractelement <4 x i32> %i.b, i64 1
  %i.cj = add i32 %i.ch, %i.ci
  %i.ck = extractelement <4 x i32> %i.b, i64 2
  %i.cl = add i32 %i.cj, %i.ck
  %i.cm = extractelement <4 x i32> %i.b, i64 3
  %i.cn = add i32 %i.cl, %i.cm                    ; 2 uses
  %i.co = add i32 %i.bu, %i.cn
  %i.cp = add i32 %i.ba, %i.co
  %i.cq = add i32 %i.ag, %i.cp
  %i.cr = uitofp i32 %i.cq to double              ; 2 uses
  %i.cs = insertelement <4 x double> poison, double %i.cr, i64 0
  %i.ct = shufflevector <4 x double> %i.cs, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cu = fdiv <4 x double> %i.m, %i.ct           ; 4 uses
  %broadcast.splat80 = shufflevector <4 x double> %i.cu, <4 x double> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %broadcast.splat78 = shufflevector <4 x double> %i.cu, <4 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %broadcast.splat76 = shufflevector <4 x double> %i.cu, <4 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %broadcast.splat74 = shufflevector <4 x double> %i.cu, <4 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cv = add <4 x i32> %i.bx, splat (i32 1)
  %i.cw = add <4 x i32> %i.cv, %i.be
  %i.cx = add <4 x i32> %i.cw, %i.ak
  %i.cy = add <4 x i32> %i.cx, %i.q
  %i.cz = uitofp <4 x i32> %i.cy to <4 x double>
  %i.da = fdiv <4 x double> %i.cz, %i.ct          ; 4 uses
  %broadcast.splat72 = shufflevector <4 x double> %i.da, <4 x double> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %broadcast.splat70 = shufflevector <4 x double> %i.da, <4 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %broadcast.splat68 = shufflevector <4 x double> %i.da, <4 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %broadcast.splat66 = shufflevector <4 x double> %i.da, <4 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.db = add i32 %i.bv, 1
  %i.dc = add i32 %i.db, %i.bc
  %i.dd = add i32 %i.dc, %i.ai
  %i.de = add i32 %i.dd, %i.o
  %i.df = uitofp i32 %i.de to double
  %i.dg = fdiv double %i.df, %i.cr
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.dg, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.vec.insert = insertelement <2 x i32> poison, i32 %i.cn, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x i32> %.sroa.0.0.vec.insert, i32 %i.bu, i64 1
  %.sroa.6.8.vec.insert = insertelement <2 x i32> poison, i32 %i.ba, i64 0
  %.sroa.6.12.vec.insert = insertelement <2 x i32> %.sroa.6.8.vec.insert, i32 %i.ag, i64 1
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.di = uitofp <2 x i32> %.sroa.0.4.vec.insert to <2 x double> ; 9 uses
  %i.dj = load i32, ptr %0, align 4
  %i.dk = load i32, ptr %i.dh, align 4
  %i.dl = insertelement <2 x i32> poison, i32 %i.dj, i64 0
  %i.dm = insertelement <2 x i32> %i.dl, i32 %i.dk, i64 1
  %i.dn = uitofp <2 x i32> %i.dm to <2 x double>
  %i.do = fdiv <2 x double> %i.dn, %i.di          ; 2 uses
  %i.dp = fdiv <2 x double> %i.do, %broadcast.splat
  %i.dq = tail call <2 x double> @llvm.log.v2f64(<2 x double> %i.dp)
  %i.dr = fmul <2 x double> %i.do, %i.dq
  %i.ds = fadd <2 x double> %i.dr, zeroinitializer
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dv = load i32, ptr %i.dt, align 4
  %i.dw = load i32, ptr %i.du, align 4
  %i.dx = insertelement <2 x i32> poison, i32 %i.dv, i64 0
  %i.dy = insertelement <2 x i32> %i.dx, i32 %i.dw, i64 1
  %i.dz = uitofp <2 x i32> %i.dy to <2 x double>
  %i.ea = fdiv <2 x double> %i.dz, %i.di          ; 2 uses
  %i.eb = fdiv <2 x double> %i.ea, %broadcast.splat66
  %i.ec = tail call <2 x double> @llvm.log.v2f64(<2 x double> %i.eb)
  %i.ed = fmul <2 x double> %i.ea, %i.ec
  %i.ee = fadd <2 x double> %i.ds, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.eh = load i32, ptr %i.ef, align 4
  %i.ei = load i32, ptr %i.eg, align 4
  %i.ej = insertelement <2 x i32> poison, i32 %i.eh, i64 0
  %i.ek = insertelement <2 x i32> %i.ej, i32 %i.ei, i64 1
  %i.el = uitofp <2 x i32> %i.ek to <2 x double>
  %i.em = fdiv <2 x double> %i.el, %i.di          ; 2 uses
  %i.en = fdiv <2 x double> %i.em, %broadcast.splat68
  %i.eo = tail call <2 x double> @llvm.log.v2f64(<2 x double> %i.en)
  %i.ep = fmul <2 x double> %i.em, %i.eo
  %i.eq = fadd <2 x double> %i.ee, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.et = load i32, ptr %i.er, align 4
  %i.eu = load i32, ptr %i.es, align 4
  %i.ev = insertelement <2 x i32> poison, i32 %i.et, i64 0
  %i.ew = insertelement <2 x i32> %i.ev, i32 %i.eu, i64 1
  %i.ex = uitofp <2 x i32> %i.ew to <2 x double>
  %i.ey = fdiv <2 x double> %i.ex, %i.di          ; 2 uses
  %i.ez = fdiv <2 x double> %i.ey, %broadcast.splat70
  %i.fa = tail call <2 x double> @llvm.log.v2f64(<2 x double> %i.ez)
  %i.fb = fmul <2 x double> %i.ey, %i.fa
  %i.fc = fadd <2 x double> %i.eq, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ff = load i32, ptr %i.fd, align 4
  %i.fg = load i32, ptr %i.fe, align 4
  %i.fh = insertelement <2 x i32> poison, i32 %i.ff, i64 0
  %i.fi = insertelement <2 x i32> %i.fh, i32 %i.fg, i64 1
  %i.fj = uitofp <2 x i32> %i.fi to <2 x double>
  %i.fk = fdiv <2 x double> %i.fj, %i.di          ; 2 uses
  %i.fl = fdiv <2 x double> %i.fk, %broadcast.splat72
  %i.fm = tail call <2 x double> @llvm.log.v2f64(<2 x double> %i.fl)
  %i.fn = fmul <2 x double> %i.fk, %i.fm
  %i.fo = fadd <2 x double> %i.fc, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fr = load i32, ptr %i.fp, align 4
  %i.fs = load i32, ptr %i.fq, align 4
  %i.ft = insertelement <2 x i32> poison, i32 %i.fr, i64 0
  %i.fu = insertelement <2 x i32> %i.ft, i32 %i.fs, i64 1
  %i.fv = uitofp <2 x i32> %i.fu to <2 x double>
  %i.fw = fdiv <2 x double> %i.fv, %i.di          ; 2 uses
  %i.fx = fdiv <2 x double> %i.fw, %broadcast.splat74
  %i.fy = tail call <2 x double> @llvm.log.v2f64(<2 x double> %i.fx)
  %i.fz = fmul <2 x double> %i.fw, %i.fy
  %i.ga = fadd <2 x double> %i.fo, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.gd = load i32, ptr %i.gb, align 4
  %i.ge = load i32, ptr %i.gc, align 4
  %i.gf = insertelement <2 x i32> poison, i32 %i.gd, i64 0
  %i.gg = insertelement <2 x i32> %i.gf, i32 %i.ge, i64 1
  %i.gh = uitofp <2 x i32> %i.gg to <2 x double>
  %i.gi = fdiv <2 x double> %i.gh, %i.di          ; 2 uses
  %i.gj = fdiv <2 x double> %i.gi, %broadcast.splat76
  %i.gk = tail call <2 x double> @llvm.log.v2f64(<2 x double> %i.gj)
  %i.gl = fmul <2 x double> %i.gi, %i.gk
  %i.gm = fadd <2 x double> %i.ga, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gp = load i32, ptr %i.gn, align 4
  %i.gq = load i32, ptr %i.go, align 4
  %i.gr = insertelement <2 x i32> poison, i32 %i.gp, i64 0
  %i.gs = insertelement <2 x i32> %i.gr, i32 %i.gq, i64 1
  %i.gt = uitofp <2 x i32> %i.gs to <2 x double>
  %i.gu = fdiv <2 x double> %i.gt, %i.di          ; 2 uses
  %i.gv = fdiv <2 x double> %i.gu, %broadcast.splat78
  %i.gw = tail call <2 x double> @llvm.log.v2f64(<2 x double> %i.gv)
  %i.gx = fmul <2 x double> %i.gu, %i.gw
  %i.gy = fadd <2 x double> %i.gm, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.hb = load i32, ptr %i.gz, align 4
  %i.hc = load i32, ptr %i.ha, align 4
  %i.hd = insertelement <2 x i32> poison, i32 %i.hb, i64 0
  %i.he = insertelement <2 x i32> %i.hd, i32 %i.hc, i64 1
  %i.hf = uitofp <2 x i32> %i.he to <2 x double>
  %i.hg = fdiv <2 x double> %i.hf, %i.di          ; 2 uses
  %i.hh = fdiv <2 x double> %i.hg, %broadcast.splat80
  %i.hi = tail call <2 x double> @llvm.log.v2f64(<2 x double> %i.hh)
  %i.hj = fmul <2 x double> %i.hg, %i.hi
  %i.hk = fadd <2 x double> %i.gy, %i.hj
  %i.hl = tail call nsz <2 x double> @llvm.maximumnum.v2f64(<2 x double> %i.hk, <2 x double> zeroinitializer)
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ho = uitofp <2 x i32> %.sroa.6.12.vec.insert to <2 x double> ; 9 uses
  %i.hp = load i32, ptr %i.hm, align 4
  %i.hq = load i32, ptr %i.hn, align 4
  %i.hr = insertelement <2 x i32> poison, i32 %i.hp, i64 0
  %i.hs = insertelement <2 x i32> %i.hr, i32 %i.hq, i64 1
  %i.ht = uitofp <2 x i32> %i.hs to <2 x double>
  %i.hu = fdiv <2 x double> %i.ht, %i.ho          ; 2 uses
  %i.hv = fdiv <2 x double> %i.hu, %broadcast.splat
  %i.hw = tail call <2 x double> @llvm.log.v2f64(<2 x double> %i.hv)
  %i.hx = fmul <2 x double> %i.hu, %i.hw
  %i.hy = fadd <2 x double> %i.hx, zeroinitializer
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ib = load i32, ptr %i.hz, align 4
  %i.ic = load i32, ptr %i.ia, align 4
  %i.id = insertelement <2 x i32> poison, i32 %i.ib, i64 0
  %i.ie = insertelement <2 x i32> %i.id, i32 %i.ic, i64 1
  %i.if = uitofp <2 x i32> %i.ie to <2 x double>
  %i.ig = fdiv <2 x double> %i.if, %i.ho          ; 2 uses
  %i.ih = fdiv <2 x double> %i.ig, %broadcast.splat66
  %i.ii = tail call <2 x double> @llvm.log.v2f64(<2 x double> %i.ih)
  %i.ij = fmul <2 x double> %i.ig, %i.ii
  %i.ik = fadd <2 x double> %i.hy, %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.in = load i32, ptr %i.il, align 4
  %i.io = load i32, ptr %i.im, align 4
  %i.ip = insertelement <2 x i32> poison, i32 %i.in, i64 0
  %i.iq = insertelement <2 x i32> %i.ip, i32 %i.io, i64 1
  %i.ir = uitofp <2 x i32> %i.iq to <2 x double>
  %i.is = fdiv <2 x double> %i.ir, %i.ho          ; 2 uses
  %i.it = fdiv <2 x double> %i.is, %broadcast.splat68
  %i.iu = tail call <2 x double> @llvm.log.v2f64(<2 x double> %i.it)
  %i.iv = fmul <2 x double> %i.is, %i.iu
  %i.iw = fadd <2 x double> %i.ik, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.iz = load i32, ptr %i.ix, align 4
  %i.ja = load i32, ptr %i.iy, align 4
  %i.jb = insertelement <2 x i32> poison, i32 %i.iz, i64 0
  %i.jc = insertelement <2 x i32> %i.jb, i32 %i.ja, i64 1
  %i.jd = uitofp <2 x i32> %i.jc to <2 x double>
  %i.je = fdiv <2 x double> %i.jd, %i.ho          ; 2 uses
  %i.jf = fdiv <2 x double> %i.je, %broadcast.splat70
  %i.jg = tail call <2 x double> @llvm.log.v2f64(<2 x double> %i.jf)
  %i.jh = fmul <2 x double> %i.je, %i.jg
  %i.ji = fadd <2 x double> %i.iw, %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.jl = load i32, ptr %i.jj, align 4
  %i.jm = load i32, ptr %i.jk, align 4
  %i.jn = insertelement <2 x i32> poison, i32 %i.jl, i64 0
  %i.jo = insertelement <2 x i32> %i.jn, i32 %i.jm, i64 1
  %i.jp = uitofp <2 x i32> %i.jo to <2 x double>
  %i.jq = fdiv <2 x double> %i.jp, %i.ho          ; 2 uses
  %i.jr = fdiv <2 x double> %i.jq, %broadcast.splat72
  %i.js = tail call <2 x double> @llvm.log.v2f64(<2 x double> %i.jr)
  %i.jt = fmul <2 x double> %i.jq, %i.js
  %i.ju = fadd <2 x double> %i.ji, %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.jx = load i32, ptr %i.jv, align 4
  %i.jy = load i32, ptr %i.jw, align 4
  %i.jz = insertelement <2 x i32> poison, i32 %i.jx, i64 0
  %i.ka = insertelement <2 x i32> %i.jz, i32 %i.jy, i64 1
  %i.kb = uitofp <2 x i32> %i.ka to <2 x double>
  %i.kc = fdiv <2 x double> %i.kb, %i.ho          ; 2 uses
  %i.kd = fdiv <2 x double> %i.kc, %broadcast.splat74
  %i.ke = tail call <2 x double> @llvm.log.v2f64(<2 x double> %i.kd)
  %i.kf = fmul <2 x double> %i.kc, %i.ke
  %i.kg = fadd <2 x double> %i.ju, %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.kj = load i32, ptr %i.kh, align 4
  %i.kk = load i32, ptr %i.ki, align 4
  %i.kl = insertelement <2 x i32> poison, i32 %i.kj, i64 0
  %i.km = insertelement <2 x i32> %i.kl, i32 %i.kk, i64 1
  %i.kn = uitofp <2 x i32> %i.km to <2 x double>
  %i.ko = fdiv <2 x double> %i.kn, %i.ho          ; 2 uses
  %i.kp = fdiv <2 x double> %i.ko, %broadcast.splat76
  %i.kq = tail call <2 x double> @llvm.log.v2f64(<2 x double> %i.kp)
  %i.kr = fmul <2 x double> %i.ko, %i.kq
  %i.ks = fadd <2 x double> %i.kg, %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.kv = load i32, ptr %i.kt, align 4
  %i.kw = load i32, ptr %i.ku, align 4
  %i.kx = insertelement <2 x i32> poison, i32 %i.kv, i64 0
  %i.ky = insertelement <2 x i32> %i.kx, i32 %i.kw, i64 1
  %i.kz = uitofp <2 x i32> %i.ky to <2 x double>
  %i.la = fdiv <2 x double> %i.kz, %i.ho          ; 2 uses
  %i.lb = fdiv <2 x double> %i.la, %broadcast.splat78
  %i.lc = tail call <2 x double> @llvm.log.v2f64(<2 x double> %i.lb)
  %i.ld = fmul <2 x double> %i.la, %i.lc
  %i.le = fadd <2 x double> %i.ks, %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.lh = load i32, ptr %i.lf, align 4
  %i.li = load i32, ptr %i.lg, align 4
  %i.lj = insertelement <2 x i32> poison, i32 %i.lh, i64 0
  %i.lk = insertelement <2 x i32> %i.lj, i32 %i.li, i64 1
  %i.ll = uitofp <2 x i32> %i.lk to <2 x double>
  %i.lm = fdiv <2 x double> %i.ll, %i.ho          ; 2 uses
  %i.ln = fdiv <2 x double> %i.lm, %broadcast.splat80
  %i.lo = tail call <2 x double> @llvm.log.v2f64(<2 x double> %i.ln)
  %i.lp = fmul <2 x double> %i.lm, %i.lo
  %i.lq = fadd <2 x double> %i.le, %i.lp
  %i.lr = tail call nsz <2 x double> @llvm.maximumnum.v2f64(<2 x double> %i.hl, <2 x double> %i.lq)
  %i.ls = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %i.lr)
  %i.lt = fcmp ogt double %i.ls, 2.000000e-02
  ret i1 %i.lt
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor18add_data_reference(ptr noalias nofree noundef align 4 captures(none) dereferenceable(144) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.b = icmp samesign eq i64 %3, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.010 = phi ptr [ %i.c, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.sroa.7.09 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 1 ; 2 uses
  %i.d = add nuw nsw i64 %.sroa.7.09, 1
  %i.e = add i64 %.sroa.7.09, %1
  %i.f = and i64 %i.e, 3
  %i.g = load i8, ptr %.sroa.0.010, align 1, !noundef !4
  %i.h = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.g)
  %i.i = zext nneg i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [36 x i8], ptr %0, i64 %i.f
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !noundef !4
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4
  %i.n = icmp eq ptr %i.c, %i.a
  br i1 %i.n, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB2_12BG4Predictor8add_data(ptr noalias nofree noundef align 4 captures(none) dereferenceable(144) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RINvMNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object13byte_grouping14bg4_predictionNtB3_12BG4Predictor13add_data_implNvB2_16popcnt_u128_swarEB9_(ptr noalias nofree noundef align 4 dereferenceable(144) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtNtCs8rVFV1hdcx_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB15_NtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtNtB2c_6marker4SendNtB3J_4SyncNtB31_10UnwindSafeEL_EE9put_valueCs31YAwBA1AlL_19xet_core_structures(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 43 uses
  %i.b = invoke noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs8rVFV1hdcx_14regex_automata4util4pool5innerINtB18_4PoolNtNtNtB1e_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB29_NtNtNtB3h_5panic11unwind_safe13RefUnwindSafeNtNtB3h_6marker4SendNtB4O_4SyncNtB46_10UnwindSafeEL_EE9put_value0jECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @29)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = icmp ult i64 %i.d, 144115188075855872
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #28
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.g, %bb.c
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp, %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.w, %.body ], [ %lpad.loopexit.split-lp36, %.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs31YAwBA1AlL_19xet_core_structures.exit26.9
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 1400, i64 noundef 8) #32
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs31YAwBA1AlL_19xet_core_structures.exit26.9
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 1400, i64 noundef 8) #32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs31YAwBA1AlL_19xet_core_structures.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.p, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECs31YAwBA1AlL_19xet_core_structures.exit
  ret void

bb.f:                                             ; preds = %bb.b
  %i.h = urem i64 %i.b, %i.d                      ; 20 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.h
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEE8try_lockCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.m)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs31YAwBA1AlL_19xet_core_structures.exit26.8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs31YAwBA1AlL_19xet_core_structures.exit26.7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs31YAwBA1AlL_19xet_core_structures.exit26.6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs31YAwBA1AlL_19xet_core_structures.exit26.5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs31YAwBA1AlL_19xet_core_structures.exit26.4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs31YAwBA1AlL_19xet_core_structures.exit26.3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs31YAwBA1AlL_19xet_core_structures.exit26.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs31YAwBA1AlL_19xet_core_structures.exit26.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs31YAwBA1AlL_19xet_core_structures.exit26
  %.lcssa = phi i64 [ %i.fb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs31YAwBA1AlL_19xet_core_structures.exit26.8 ], [ %i.at, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs31YAwBA1AlL_19xet_core_structures.exit26 ], [ %i.bh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs31YAwBA1AlL_19xet_core_structures.exit26.1 ], [ %i.bv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs31YAwBA1AlL_19xet_core_structures.exit26.2 ], [ %i.cj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs31YAwBA1AlL_19xet_core_structures.exit26.3 ], [ %i.cx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs31YAwBA1AlL_19xet_core_structures.exit26.4 ], [ %i.dl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs31YAwBA1AlL_19xet_core_structures.exit26.5 ], [ %i.dz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs31YAwBA1AlL_19xet_core_structures.exit26.6 ], [ %i.en, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs31YAwBA1AlL_19xet_core_structures.exit26.7 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #28
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.f
  %i.n = load i64, ptr %i.a, align 8, !range !6, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.cb, %bb.bu, %bb.bn, %bb.bg, %bb.az, %bb.as, %bb.al, %bb.ae, %bb.x, %bb.h
  %i.p = load ptr, ptr %i.j, align 8, !nonnull !4, !align !20, !noundef !4 ; 7 uses
  %i.q = load i8, ptr %i.k, align 8, !range !15, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !412, !noundef !4 ; 3 uses
  %i.u = load i64, ptr %i.r, align 8, !range !17, !alias.scope !412, !noundef !4
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEE8grow_oneCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.m unwind label %bb.k, !noalias !413

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEECs31YAwBA1AlL_19xet_core_structures(ptr nonnull align 8 %1) #29
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

.body:                                            ; preds = %bb.k
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs31YAwBA1AlL_19xet_core_structures(ptr nonnull %i.p, i8 %i.q) #29
          to label %common.resume unwind label %bb.q

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !412, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.t
  store ptr %1, ptr %i.aa, align 8, !noalias !413
  %i.ab = add i64 %i.t, 1
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !412
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ad = trunc nuw i8 %i.q to i1
  br i1 %i.ad, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.af = and i64 %i.ae, 9223372036854775807
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc14, !prof !8

.noexc14:                                         ; preds = %bb.n
  %i.ah = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.ah, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc14
  store atomic i8 1, ptr %i.ac monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.o, %.noexc14, %bb.n, %bb.m
  %i.ai = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs31YAwBA1AlL_19xet_core_structures.exit, !prof !13

bb.p:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1A_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEECs31YAwBA1AlL_19xet_core_structures.exit

bb.q:                                             ; preds = %.body, %.loopexit.split-lp.loopexit.split-lp
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.r:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %.val.i16 = load ptr, ptr %i.j, align 8, !alias.scope !414 ; 4 uses
  %.val3.i17 = load i8, ptr %i.k, align 8, !range !7, !alias.scope !414, !noundef !4 ; 2 uses
  %.not.i.i18 = icmp eq i8 %.val3.i17, 2
  br i1 %.not.i.i18, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1W_5boxed3BoxNtNtNtCs8rVFV1hdcx_14regex_automata4meta5regex5CacheEEEINtB12_12TryLockErrorBX_EEECs31YAwBA1AlL_19xet_core_structures.exit26, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i16) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i16, i64 4
  %i.am = trunc nuw i8 %.val3.i17 to i1
  br i1 %i.am, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !414
  %i.ao = and i64 %i.an, 9223372036854775807
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i19, label %bb.u, !prof !8

end_hunk_0
