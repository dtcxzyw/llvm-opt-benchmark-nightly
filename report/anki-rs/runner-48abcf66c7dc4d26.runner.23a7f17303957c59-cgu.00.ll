Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/runner-48abcf66c7dc4d26.runner.23a7f17303957c59-cgu.00?download=true
inline.NumInlined: 525
inline.NumDeleted: 290
begin_hunk_0_@_ZN6runner7archive15extract_archive17h1c9482adf27d196bE:bb.a
  %i.ap = alloca [72 x i8], align 8               ; 17 uses
  %i.aq = tail call { ptr, i64 } @_ZN3std4path4Path9file_name17hce417f450fb6c4b1E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) ; 2 uses
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0      ; 2 uses
  %.not.a = icmp eq ptr %i.ar, null
  br i1 %.not.a, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.as = extractvalue { ptr, i64 } %i.aq, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i64 0, ptr %i.ap, align 8
  %.sroa.4150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %i.as, ptr %.sroa.4150.0..sroa_idx, align 8
  %.sroa.5151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.ar, ptr %.sroa.5151.0..sroa_idx, align 8
  %.sroa.5151.sroa.4.0..sroa.5151.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 %i.as, ptr %.sroa.5151.sroa.4.0..sroa.5151.0..sroa_idx.sroa_idx, align 8
  %.sroa.5151.sroa.5.0..sroa.5151.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i64 0, ptr %.sroa.5151.sroa.5.0..sroa.5151.0..sroa_idx.sroa_idx, align 8
  %.sroa.5151.sroa.6.0..sroa.5151.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i64 %i.as, ptr %.sroa.5151.sroa.6.0..sroa.5151.0..sroa_idx.sroa_idx, align 8
  %.sroa.5151.sroa.7.0..sroa.5151.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store i32 46, ptr %.sroa.5151.sroa.7.0..sroa.5151.0..sroa_idx.sroa_idx, align 8
  %.sroa.5151.sroa.8.0..sroa.5151.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 52
  store i32 46, ptr %.sroa.5151.sroa.8.0..sroa.5151.0..sroa_idx.sroa_idx, align 4
  %.sroa.5151.sroa.9.0..sroa.5151.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  store i8 1, ptr %.sroa.5151.sroa.9.0..sroa.5151.0..sroa_idx.sroa_idx, align 8
  %.sroa.6152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store i8 1, ptr %.sroa.6152.0..sroa_idx, align 8
  %.sroa.7153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 65
  store i8 0, ptr %.sroa.7153.0..sroa_idx, align 1
  %i.at = call fastcc { ptr, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$9next_back17h477a5eabfa79d0eeE"(ptr noalias noundef align 8 dereferenceable(72) %i.ap) ; 2 uses
  %i.au = extractvalue { ptr, i64 } %i.at, 0      ; 13 uses
  %i.av = extractvalue { ptr, i64 } %i.at, 1      ; 2 uses
  %.not255 = icmp eq ptr %i.au, null
  br i1 %.not255, label %bb.e, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  switch i64 %i.av, label %bb.s [
    i64 3, label %bb.f
    i64 4, label %bb.h
    i64 2, label %bb.k
  ], !prof !978

bb.e:                                             ; preds = %bb.b
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aw = load i16, ptr %i.au, align 1
  %i.ax = xor i16 %i.aw, 29562
  %i.ay = getelementptr i8, ptr %i.au, i64 2
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i16
  %i.bb = xor i16 %i.ba, 116
  %i.bc = or i16 %i.ax, %i.bb
  %i.bd = icmp ne i16 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.bg = call fastcc { ptr, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$9next_back17h477a5eabfa79d0eeE"(ptr noalias noundef align 8 dereferenceable(72) %i.ap) ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.bg, 0      ; 2 uses
  %.not264 = icmp eq ptr %i.bh, null
  br i1 %.not264, label %bb.i, label %bb.j, !prof !18

bb.h:                                             ; preds = %bb.d
  %i.bi = load i32, ptr %i.au, align 1
  %i.bj = icmp ne i32 %i.bi, 1685353338
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.g, label %bb.s

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17
  unreachable

bb.j:                                             ; preds = %bb.o, %bb.l, %bb.g
  %.sroa.0229.0 = phi i64 [ 1, %bb.l ], [ 0, %bb.g ], [ 2, %bb.o ]
  %.pn = phi { ptr, i64 } [ %i.bq, %bb.l ], [ %i.bg, %bb.g ], [ %i.bw, %bb.o ]
  %.sroa.017.0 = phi ptr [ %i.br, %bb.l ], [ %i.bh, %bb.g ], [ %i.bx, %bb.o ] ; 2 uses
  %.sroa.8.0 = extractvalue { ptr, i64 } %.pn, 1  ; 2 uses
  %cond = icmp eq i64 %.sroa.8.0, 3
  br i1 %cond, label %.thread, label %bb.w, !prof !979

bb.k:                                             ; preds = %bb.d
  %i.bm = load i16, ptr %i.au, align 1
  %i.bn = icmp ne i16 %i.bm, 31335
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bq = call fastcc { ptr, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$9next_back17h477a5eabfa79d0eeE"(ptr noalias noundef align 8 dereferenceable(72) %i.ap) ; 2 uses
  %i.br = extractvalue { ptr, i64 } %i.bq, 0      ; 2 uses
  %.not259 = icmp eq ptr %i.br, null
  br i1 %.not259, label %bb.m, label %bb.j, !prof !18

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #17
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.bs = load i16, ptr %i.au, align 1
  %i.bt = icmp ne i16 %i.bs, 31352
  %i.bu = zext i1 %i.bt to i32
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bw = call fastcc { ptr, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$9next_back17h477a5eabfa79d0eeE"(ptr noalias noundef align 8 dereferenceable(72) %i.ap) ; 2 uses
  %i.bx = extractvalue { ptr, i64 } %i.bw, 0      ; 2 uses
  %.not258 = icmp eq ptr %i.bx, null
  br i1 %.not258, label %bb.p, label %bb.j, !prof !18

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #17
  unreachable

bb.q:                                             ; preds = %bb.f
  %i.by = load i16, ptr %i.au, align 1
  %i.bz = xor i16 %i.by, 26484
  %i.ca = getelementptr i8, ptr %i.au, i64 2
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i16
  %i.cd = xor i16 %i.cc, 122
  %i.ce = or i16 %i.bz, %i.cd
  %i.cf = icmp ne i16 %i.ce, 0
  %i.cg = zext i1 %i.cf to i32
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = load i16, ptr %i.au, align 1
  %i.cj = xor i16 %i.ci, 27002
  %i.ck = getelementptr i8, ptr %i.au, i64 2
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i16
  %i.cn = xor i16 %i.cm, 112
  %i.co = or i16 %i.cj, %i.cn
  %i.cp = icmp ne i16 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %.thread, label %bb.s, !prof !19

bb.s:                                             ; preds = %bb.h, %bb.n, %bb.d, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %i.au, ptr %i.ao, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.av, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr %i.ao, ptr %i.am, align 8
  %.sroa.4158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h119398b619542a0dE", ptr %.sroa.4158.0..sroa_idx, align 8
  store ptr @19, ptr %i.an, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 1, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr null, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.am, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 1, ptr %i.cw, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #17
  unreachable

.thread:                                          ; preds = %bb.r, %bb.q, %bb.j
  %.sroa.017.0361 = phi ptr [ %.sroa.017.0, %bb.j ], [ %i.au, %bb.q ], [ %i.au, %bb.r ] ; 7 uses
  %.sroa.0229.0357 = phi i64 [ %.sroa.0229.0, %bb.j ], [ 1, %bb.q ], [ 3, %bb.r ]
  %i.cx = load i16, ptr %.sroa.017.0361, align 1
  %i.cy = xor i16 %i.cx, 24948
  %i.cz = getelementptr i8, ptr %.sroa.017.0361, i64 2
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = zext i8 %i.da to i16
  %i.dc = xor i16 %i.db, 114
  %i.dd = or i16 %i.cy, %i.dc
  %i.de = icmp ne i16 %i.dd, 0
  %i.df = zext i1 %i.de to i32
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread
  %i.dh = load i16, ptr %.sroa.017.0361, align 1
  %i.di = xor i16 %i.dh, 26484
  %i.dj = getelementptr i8, ptr %.sroa.017.0361, i64 2
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = zext i8 %i.dk to i16
  %i.dm = xor i16 %i.dl, 122
  %i.dn = or i16 %i.di, %i.dm
  %i.do = icmp ne i16 %i.dn, 0
  %i.dp = zext i1 %i.do to i32
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.v, %.thread, %bb.t
  %.sroa.028.0 = phi i1 [ true, %.thread ], [ true, %bb.t ], [ false, %bb.v ]
  %.sroa.028.0.a = phi i1 [ false, %.thread ], [ false, %bb.t ], [ true, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @_ZN3std2fs4File4open17h559e2d2e4539114bE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
  %i.dr = load i32, ptr %i.ah, align 8, !range !980, !noundef !4
  %i.ds = trunc nuw i32 %i.dr to i1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !range !16 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br i1 %i.ds, label %bb.x, label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.dx = load i16, ptr %.sroa.017.0361, align 1
  %i.dy = xor i16 %i.dx, 27002
  %i.dz = getelementptr i8, ptr %.sroa.017.0361, i64 2
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = zext i8 %i.ea to i16
  %i.ec = xor i16 %i.eb, 112
  %i.ed = or i16 %i.dy, %i.ec
  %i.ee = icmp ne i16 %i.ed, 0
  %i.ef = zext i1 %i.ee to i32
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.u, label %bb.w, !prof !19

bb.w:                                             ; preds = %bb.j, %bb.v
  %.sroa.017.0360 = phi ptr [ %.sroa.017.0, %bb.j ], [ %.sroa.017.0361, %bb.v ]
  %.sroa.8.0358 = phi i64 [ %.sroa.8.0, %bb.j ], [ 3, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %.sroa.017.0360, ptr %i.al, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.sroa.8.0358, ptr %i.eh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %i.al, ptr %i.aj, align 8
  %.sroa.4162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h119398b619542a0dE", ptr %.sroa.4162.0..sroa_idx, align 8
  store ptr @16, ptr %i.ak, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 1, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr null, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.aj, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 1, ptr %i.el, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #17
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.em = call noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hccafdeb1e397fd61E"(ptr noundef nonnull %i.du)
  br label %bb.du

bb.y:                                             ; preds = %bb.u
  store i32 %i.dw, ptr %i.ai, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  switch i64 %.sroa.0229.0357, label %default.unreachable457 [
    i64 0, label %bb.z
    i64 1, label %bb.aa
    i64 2, label %bb.ab
    i64 3, label %bb.ac
  ]

default.unreachable457:                           ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_ZN4zstd6stream9functions10decode_all17h0301b4e1aa46ea5bE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ai)
          to label %bb.ae unwind label %bb.ad

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 0, ptr %i.ae, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 0, ptr %i.eo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @"_ZN6flate29bufreader18BufReader$LT$R$GT$3new17he1d65912329a223dE"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ai)
          to label %bb.aj unwind label %.thread382

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 0, ptr %i.ac, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 0, ptr %i.eq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @"_ZN3std2io8buffered9bufreader18BufReader$LT$R$GT$13with_capacity17h5dcaa829e621edc3E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.h, i64 noundef 8192, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ai)
          to label %bb.ax unwind label %.thread393

bb.ac:                                            ; preds = %bb.y
  store i64 0, ptr %i.ag, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 0, ptr %i.es, align 8
  br label %bb.ah

.body:                                            ; preds = %bb.ee, %bb.ad, %.body316
  %.sroa.0138.0 = phi i8 [ %.sroa.0138.3, %.body316 ], [ %.sroa.0138.1, %bb.ad ], [ %.sroa.0138.9.a, %bb.ee ]
  %.pn297 = phi { ptr, i32 } [ %.pn295, %.body316 ], [ %i.eu, %bb.ad ], [ %i.iy, %bb.ee ] ; 2 uses
  %i.et = trunc nuw i8 %.sroa.0138.0 to i1
  br i1 %i.et, label %.thread363, label %bb.ei

bb.ad:                                            ; preds = %bb.ef, %bb.bh, %bb.at, %bb.dr, %bb.af, %bb.z
  %.sroa.0138.1 = phi i8 [ 1, %bb.af ], [ %.sroa.0138.9.a, %bb.ef ], [ %.sroa.0138.7, %bb.dr ], [ 1, %bb.z ], [ 1, %bb.at ], [ 1, %bb.bh ]
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %bb.z
  %i.ev = load i64, ptr %i.af, align 8, !range !13, !noundef !4 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, -9223372036854775808
  %i.ex = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8            ; 2 uses
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.5165.0.copyload = load i64, ptr %.sroa.5165.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br i1 %i.ew, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ez = invoke noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hccafdeb1e397fd61E"(ptr noundef nonnull %i.ey)
          to label %.thread371.a unwind label %bb.ad

bb.ag:                                            ; preds = %bb.ae
  store i64 %i.ev, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ey, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %.sroa.5165.0.copyload, ptr %.sroa.539.0..sroa_idx, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %"_ZN4core3ptr66drop_in_place$LT$xz2..read..XzDecoder$LT$$RF$std..fs..File$GT$$GT$17h9671f04c661724a0E.exit", %bb.ap, %bb.ag, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_ZN3std2fs8metadata17hdd952ddc7d999df8E(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.bk unwind label %bb.bj

.thread371.a:                                     ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit314", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit", %bb.af
  %.sroa.0.0.ph = phi ptr [ %i.ez, %bb.af ], [ %i.ff, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit" ], [ %i.fo, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit314" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.eh

bb.ai:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br i1 %.sroa.0138.9, label %bb.eh, label %bb.du

.thread382:                                       ; preds = %bb.aq, %bb.aj, %bb.aa
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread377

bb.aj:                                            ; preds = %bb.aa
  invoke void @"_ZN6flate22gz7bufread18GzDecoder$LT$R$GT$3new17h8ab3f97a0e1f2b6fE"(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.j)
          to label %bb.ak unwind label %.thread382

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ad, ptr noundef nonnull align 8 dereferenceable(200) %i.k, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fa = invoke { i64, ptr } @_ZN3std2io19default_read_to_end17hf59c13b41cfab51fE(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef 0, i64 undef)
          to label %bb.am unwind label %bb.al     ; 2 uses

bb.al:                                            ; preds = %bb.an, %bb.ak
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$flate2..gz..read..GzDecoder$LT$$RF$std..fs..File$GT$$GT$17h941c8e12e2e7ecf9E"(ptr noalias noundef align 8 dereferenceable(200) %i.ad) #15
          to label %.thread377 unwind label %bb.av

bb.am:                                            ; preds = %bb.ak
  %i.fc = extractvalue { i64, ptr } %i.fa, 0
  %i.fd = trunc nuw i64 %i.fc to i1
  br i1 %i.fd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fe = extractvalue { i64, ptr } %i.fa, 1
  %i.ff = invoke noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hccafdeb1e397fd61E"(ptr noundef nonnull %i.fe)
          to label %bb.aq unwind label %bb.al

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$flate2..gz..read..GzDecoder$LT$$RF$std..fs..File$GT$$GT$17h941c8e12e2e7ecf9E"(ptr noalias noundef align 8 dereferenceable(200) %i.ad)
          to label %bb.ap unwind label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.ah

bb.aq:                                            ; preds = %bb.an
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$flate2..gz..read..GzDecoder$LT$$RF$std..fs..File$GT$$GT$17h941c8e12e2e7ecf9E"(ptr noalias noundef align 8 dereferenceable(200) %i.ad)
          to label %bb.ar unwind label %.thread382

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.thread363 unwind label %bb.au

bb.at:                                            ; preds = %bb.ar
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit" unwind label %bb.ad

bb.au:                                            ; preds = %bb.as
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit": ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %.thread371.a

bb.av:                                            ; preds = %.thread396, %bb.dc, %bb.cx, %bb.cn, %.body316, %.thread385, %bb.az, %.thread377, %bb.al
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14
  unreachable

.thread377:                                       ; preds = %bb.al, %.thread382
  %.pn269380 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread382 ], [ %i.fb, %bb.al ]
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE"(ptr noalias noundef align 8 dereferenceable(24) %i.ae) #15
          to label %.thread363 unwind label %bb.av

.thread393:                                       ; preds = %"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE.exit.i308", %bb.ax, %bb.ab
  %lpad.thr_comm391 = landingpad { ptr, i32 }
          cleanup
  br label %.thread385

bb.aw:                                            ; preds = %bb.ao, %"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE.exit.i"
  %lpad.thr_comm.split-lp392 = landingpad { ptr, i32 }
          cleanup
  br label %.thread363

bb.ax:                                            ; preds = %bb.ab
  invoke void @"_ZN3xz27bufread18XzDecoder$LT$R$GT$3new17hf312d6c6cceb205fE"(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(address) dereferenceable(184) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.ay unwind label %.thread393

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ab, ptr noundef nonnull align 8 dereferenceable(184) %i.i, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.fj = invoke { i64, ptr } @_ZN3std2io19default_read_to_end17hb1c4e00def073a5eE(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef 0, i64 undef)
          to label %bb.ba unwind label %bb.az     ; 2 uses

bb.az:                                            ; preds = %bb.bb, %bb.ay
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$xz2..read..XzDecoder$LT$$RF$std..fs..File$GT$$GT$17h9671f04c661724a0E"(ptr noalias noundef align 8 dereferenceable(184) %i.ab) #15
          to label %.thread385 unwind label %bb.av

bb.ba:                                            ; preds = %bb.ay
  %i.fl = extractvalue { i64, ptr } %i.fj, 0
  %i.fm = trunc nuw i64 %i.fl to i1
  br i1 %i.fm, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fn = extractvalue { i64, ptr } %i.fj, 1
  %i.fo = invoke noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hccafdeb1e397fd61E"(ptr noundef nonnull %i.fn)
          to label %bb.be unwind label %bb.az

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !981)
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val1.i.i = load i64, ptr %i.fp, align 8, !alias.scope !983, !noundef !4 ; 2 uses
  %i.fq = icmp eq i64 %.val1.i.i, 0
  br i1 %i.fq, label %"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE.exit.i", label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.val.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !983, !nonnull !4, !noundef !4
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #16, !noalias !983
  br label %"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE.exit.i"

"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE.exit.i": ; preds = %bb.bd, %bb.bc
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  invoke void @"_ZN61_$LT$xz2..stream..Stream$u20$as$u20$core..ops..drop..Drop$GT$4drop17h71a39eaf8c74dd2eE"(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.fr)
          to label %"_ZN4core3ptr66drop_in_place$LT$xz2..read..XzDecoder$LT$$RF$std..fs..File$GT$$GT$17h9671f04c661724a0E.exit" unwind label %bb.aw

"_ZN4core3ptr66drop_in_place$LT$xz2..read..XzDecoder$LT$$RF$std..fs..File$GT$$GT$17h9671f04c661724a0E.exit": ; preds = %"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.ah

bb.be:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !984)
  call void @llvm.experimental.noalias.scope.decl(metadata !985)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val1.i.i306 = load i64, ptr %i.fs, align 8, !alias.scope !986, !noundef !4 ; 2 uses
  %i.ft = icmp eq i64 %.val1.i.i306, 0
  br i1 %i.ft, label %"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE.exit.i308", label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.val.i.i307 = load ptr, ptr %i.ab, align 8, !alias.scope !986, !nonnull !4, !noundef !4
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i307, i64 noundef range(i64 1, 0) %.val1.i.i306, i64 noundef 1) #16, !noalias !986
  br label %"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE.exit.i308"

"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE.exit.i308": ; preds = %bb.bf, %bb.be
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  invoke void @"_ZN61_$LT$xz2..stream..Stream$u20$as$u20$core..ops..drop..Drop$GT$4drop17h71a39eaf8c74dd2eE"(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.fu)
          to label %"_ZN4core3ptr66drop_in_place$LT$xz2..read..XzDecoder$LT$$RF$std..fs..File$GT$$GT$17h9671f04c661724a0E.exit309" unwind label %.thread393

"_ZN4core3ptr66drop_in_place$LT$xz2..read..XzDecoder$LT$$RF$std..fs..File$GT$$GT$17h9671f04c661724a0E.exit309": ; preds = %"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE.exit.i308"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %"_ZN4core3ptr66drop_in_place$LT$xz2..read..XzDecoder$LT$$RF$std..fs..File$GT$$GT$17h9671f04c661724a0E.exit309"
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.thread363 unwind label %bb.bi

bb.bh:                                            ; preds = %"_ZN4core3ptr66drop_in_place$LT$xz2..read..XzDecoder$LT$$RF$std..fs..File$GT$$GT$17h9671f04c661724a0E.exit309"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit314" unwind label %bb.ad

bb.bi:                                            ; preds = %bb.bg
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit314": ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %.thread371.a

.thread385:                                       ; preds = %bb.az, %.thread393
  %.pn388 = phi { ptr, i32 } [ %lpad.thr_comm391, %.thread393 ], [ %i.fk, %bb.az ]
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE"(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #15
          to label %.thread363 unwind label %bb.av

.body316:                                         ; preds = %bb.eb, %bb.bv, %bb.bx, %bb.bj, %.thread396, %bb.cc
  %.sroa.0138.3 = phi i8 [ %.sroa.0138.5, %bb.cc ], [ %.sroa.0138.5400, %.thread396 ], [ 1, %bb.bv ], [ %.sroa.0138.4, %bb.bj ], [ 1, %bb.bx ], [ %.sroa.0138.8408, %bb.eb ]
  %.pn295 = phi { ptr, i32 } [ %.pn293, %bb.cc ], [ %.pn293401, %.thread396 ], [ %i.gi, %bb.bv ], [ %i.fx, %bb.bj ], [ %i.gj, %bb.bx ], [ %i.iw, %bb.eb ]
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE"(ptr noalias noundef align 8 dereferenceable(24) %i.ag) #15
          to label %.body unwind label %bb.av

bb.bj:                                            ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit.i", %bb.br, %bb.bl, %bb.bs, %bb.bp, %bb.bn, %bb.bm, %bb.ah
  %.sroa.0138.4 = phi i8 [ 1, %bb.bp ], [ %.sroa.0138.8408, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i" ], [ 1, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit.i" ], [ 1, %bb.br ], [ 1, %bb.bs ], [ 1, %bb.bm ], [ 1, %bb.bn ], [ 1, %bb.bl ], [ 1, %bb.ah ]
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body316

bb.bk:                                            ; preds = %bb.ah
  %i.fy = load i64, ptr %i.g, align 8, !range !10, !noundef !4
  %.not.i = icmp eq i64 %i.fy, 2
  br i1 %.not.i, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.fz = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h86d6ffc4b9a315b5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fz)
          to label %"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$std..fs..Metadata$C$std..io..error..Error$GT$$GT$17h4d051340b7179227E.exit.thread" unwind label %bb.bj

"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$std..fs..Metadata$C$std..io..error..Error$GT$$GT$17h4d051340b7179227E.exit.thread": ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bm

bb.bm:                                            ; preds = %"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$std..fs..Metadata$C$std..io..error..Error$GT$$GT$17h4d051340b7179227E.exit.thread", %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ga = invoke { ptr, i64 } @_ZN3std4path4Path9file_name17hce417f450fb6c4b1E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.bq unwind label %bb.bj     ; 2 uses

bb.bn:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.gb = invoke noundef ptr @_ZN3std2fs14remove_dir_all17h2f28371e8f88a87dE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.bo unwind label %bb.bj     ; 2 uses

bb.bo:                                            ; preds = %bb.bn
  %.not272 = icmp eq ptr %i.gb, null
  br i1 %.not272, label %bb.bm, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gc = invoke noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hccafdeb1e397fd61E"(ptr noundef nonnull %i.gb)
          to label %bb.ed unwind label %bb.bj

bb.bq:                                            ; preds = %bb.bm
  %i.gd = extractvalue { ptr, i64 } %i.ga, 0      ; 2 uses
  %.not274 = icmp eq ptr %i.gd, null
  br i1 %.not274, label %bb.bs, label %bb.br, !prof !18

bb.br:                                            ; preds = %bb.bq
  %i.ge = extractvalue { ptr, i64 } %i.ga, 1
  store ptr %i.gd, ptr %i.y, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.ge, ptr %i.gf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.y, ptr %i.x, align 8
  %.sroa.4173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h119398b619542a0dE", ptr %.sroa.4173.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !987
  store ptr @12, ptr %i.b, align 8, !noalias !988
  %.sroa.4.0..sroa_idx346 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx346, align 8, !noalias !988
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.x, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !988
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !988
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !988
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.bu unwind label %bb.bj

bb.bs:                                            ; preds = %bb.bq
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #17
          to label %bb.bt unwind label %bb.bj

bb.bt:                                            ; preds = %.thread425, %bb.bs
  unreachable

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.experimental.noalias.scope.decl(metadata !989)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !990
  %i.gg = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val.i = load ptr, ptr %i.gg, align 8, !alias.scope !989, !nonnull !4, !noundef !4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.val1.i = load i64, ptr %i.gh, align 8, !alias.scope !989, !noundef !4
  invoke void @_ZN3std4path4Path14with_file_name17h7c7dee29871f4dfdE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
          to label %bb.bw unwind label %bb.bv, !noalias !991

bb.bv:                                            ; preds = %bb.bu
  %i.gi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z) #15
          to label %.body316 unwind label %bb.bz, !noalias !992

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !990
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit.i" unwind label %bb.bx, !noalias !992

bb.bx:                                            ; preds = %bb.bw
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body316 unwind label %bb.by, !noalias !992

bb.by:                                            ; preds = %bb.bx
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14, !noalias !992
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit.i": ; preds = %bb.bw
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_ZN6camino8Utf8Path14with_file_name17h0008994f9bedf937E.exit unwind label %bb.bj

bb.bz:                                            ; preds = %bb.bv
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14, !noalias !992
  unreachable

_ZN6camino8Utf8Path14with_file_name17h0008994f9bedf937E.exit: ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit.i"
  br i1 %.sroa.028.0.a, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_ZN6camino8Utf8Path14with_file_name17h0008994f9bedf937E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$11with_config17hc7255c0442325acbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, i64 noundef 0, i64 undef, i32 noundef %i.dw)
          to label %bb.ck unwind label %bb.cd

bb.cb:                                            ; preds = %_ZN6camino8Utf8Path14with_file_name17h0008994f9bedf937E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !nonnull !4, !noundef !4
  %i.go = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !noundef !4
  %.sroa.8179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.w, i8 0, i64 15, i1 false)
  %.sroa.9180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i8 1, ptr %.sroa.9180.0..sroa_idx, align 8
  %.sroa.10181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 17
  store i8 0, ptr %.sroa.10181.0..sroa_idx, align 1
  %.sroa.11182.sroa.3.0..sroa.11182.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 0, ptr %.sroa.11182.sroa.3.0..sroa.11182.0..sroa_idx.sroa_idx, align 8
  %.sroa.11182.sroa.4.0..sroa.11182.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.gn, ptr %.sroa.11182.sroa.4.0..sroa.11182.0..sroa_idx.sroa_idx, align 8
  %.sroa.11182.sroa.5.0..sroa.11182.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i64 %i.gp, ptr %.sroa.11182.sroa.5.0..sroa.11182.0..sroa_idx.sroa_idx, align 8
  store i8 0, ptr %.sroa.8179.0..sroa_idx, align 1
  %i.gq = invoke noundef ptr @"_ZN3tar7archive16Archive$LT$R$GT$6unpack17hd4b51000c082443aE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %bb.ce unwind label %bb.cd     ; 2 uses

bb.cc:                                            ; preds = %bb.cx, %bb.cd
  %.sroa.0141.0 = phi i8 [ %.sroa.0141.1, %bb.cd ], [ %.sroa.0141.3, %bb.cx ]
  %.sroa.0138.5 = phi i8 [ %.sroa.0138.6, %bb.cd ], [ %.sroa.0138.7, %bb.cx ] ; 2 uses
  %.pn293 = phi { ptr, i32 } [ %i.gs, %bb.cd ], [ %.pn291, %bb.cx ] ; 2 uses
  %i.gr = trunc nuw i8 %.sroa.0141.0 to i1
  br i1 %i.gr, label %.thread396, label %.body316

bb.cd:                                            ; preds = %bb.dy, %bb.dx, %bb.dq, %bb.cu, %bb.ct, %bb.cq, %bb.cl, %bb.ch, %bb.cf, %bb.cb, %bb.ca
  %.sroa.0141.1 = phi i8 [ 1, %bb.cl ], [ 1, %bb.dy ], [ 1, %bb.ct ], [ %.sroa.0141.8, %bb.dx ], [ 0, %bb.dq ], [ 1, %bb.cu ], [ 1, %bb.ch ], [ 1, %bb.cq ], [ 1, %bb.ca ], [ 1, %bb.cf ], [ 1, %bb.cb ]
  %.sroa.0138.6 = phi i8 [ 0, %bb.cl ], [ 0, %bb.dy ], [ %.sroa.0138.7, %bb.ct ], [ %.sroa.0138.7, %bb.dx ], [ %.sroa.0138.7, %bb.dq ], [ %.sroa.0138.7, %bb.cu ], [ %.sroa.0138.7, %bb.ch ], [ 0, %bb.cq ], [ 0, %bb.ca ], [ 1, %bb.cf ], [ 1, %bb.cb ]
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ce:                                            ; preds = %bb.cb
  %.not276 = icmp eq ptr %i.gq, null
  br i1 %.not276, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gt = invoke noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hccafdeb1e397fd61E"(ptr noundef nonnull %i.gq)
          to label %bb.ci unwind label %bb.cd

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cr, %bb.cg
  %.sroa.0138.7 = phi i8 [ 0, %bb.cr ], [ 1, %bb.cg ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !nonnull !4, !noundef !4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.gx = load i64, ptr %i.gw, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_ZN3std2fs8read_dir17h7f2a6da3d754b1e8E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gv, i64 noundef %i.gx)
          to label %bb.cs unwind label %bb.cd

bb.ci:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.thread403

bb.cj:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.gy = trunc nuw i8 %.sroa.0141.8 to i1
  br i1 %i.gy, label %.thread403, label %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h442765fba03a3515E.exit"

bb.ck:                                            ; preds = %bb.ca
  %i.gz = load i64, ptr %i.u, align 8, !range !994, !noundef !4 ; 2 uses
  %.not278 = icmp eq i64 %i.gz, -9223372036854775802
  %i.ha = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8            ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.hd = load i32, ptr %i.hc, align 8            ; 2 uses
  br i1 %.not278, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.sroa.6193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %.sroa.6193.0.copyload = load i32, ptr %.sroa.6193.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.gz, ptr %i.f, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.hb, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %i.hd, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %.sroa.6193.0.copyload, ptr %.sroa.475.0..sroa_idx, align 4
  %i.he = invoke noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h959eb18da6454eabE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.ea unwind label %bb.cd

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store ptr %i.hb, ptr %i.v, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.hd, ptr %i.hf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$16extract_internal17h3fcb0492b33b7401E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noundef null)
          to label %bb.co unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cp, %bb.cm
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr76drop_in_place$LT$zip..read..zip_archive..ZipArchive$LT$std..fs..File$GT$$GT$17h7024c990940cdd7aE"(ptr noalias noundef align 8 dereferenceable(16) %i.v) #15
          to label %.thread396 unwind label %bb.av

bb.co:                                            ; preds = %bb.cm
  %i.hh = load i64, ptr %i.t, align 8, !range !994, !noundef !4 ; 2 uses
  %.not280 = icmp eq i64 %i.hh, -9223372036854775802
  br i1 %.not280, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.sroa.4197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.281.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4197.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %i.hh, ptr %i.e, align 8
  %i.hi = invoke noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h959eb18da6454eabE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.dy unwind label %bb.cn

bb.cq:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  invoke fastcc void @"_ZN4core3ptr76drop_in_place$LT$zip..read..zip_archive..ZipArchive$LT$std..fs..File$GT$$GT$17h7024c990940cdd7aE"(ptr noalias noundef align 8 dereferenceable(16) %i.v)
          to label %bb.cr unwind label %bb.cd

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ch

bb.cs:                                            ; preds = %bb.ch
  %i.hj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hk = load i8, ptr %i.hj, align 8, !range !12, !noundef !4 ; 2 uses
  %i.hl = icmp eq i8 %i.hk, 2
  %.sroa.087.0 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.hl, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.hm = invoke noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hccafdeb1e397fd61E"(ptr noundef nonnull %.sroa.087.0)
          to label %.thread411 unwind label %bb.cd

.thread411:                                       ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.thread403

bb.cu:                                            ; preds = %bb.cs
  %i.hn = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.sroa.087.0, ptr %i.hn, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i8 %i.hk, ptr %i.ho, align 8
  store i64 2, ptr %i.r, align 8
  invoke void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h388a45418cd3f9ecE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.cv unwind label %bb.cd

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !noundef !4 ; 3 uses
  %i.hr = icmp eq i64 %i.hq, 0
  br i1 %i.hr, label %.thread425, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.hs = add nsw i64 %i.hq, -1                   ; 4 uses
  store i64 %i.hs, ptr %i.hp, align 8
  %i.ht = load i64, ptr %i.s, align 8, !range !8, !noundef !4
  %i.hu = icmp samesign ult i64 %i.hs, %i.ht
  call void @llvm.assume(i1 %i.hu)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !nonnull !4, !noundef !4
  %i.hx = icmp ult i64 %i.hq, 144115188075855873
  call void @llvm.assume(i1 %i.hx)
  %i.hy = getelementptr inbounds nuw [64 x i8], ptr %i.hw, i64 %i.hs ; 3 uses
  %.sroa.0198.0.copyload = load i64, ptr %i.hy, align 8 ; 2 uses
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %.sroa.4199.0.copyload = load ptr, ptr %.sroa.4199.0..sroa_idx, align 8 ; 3 uses
  switch i64 %.sroa.0198.0.copyload, label %bb.da [
    i64 -9223372036854775807, label %.thread425
    i64 -9223372036854775808, label %bb.cz
  ], !prof !995

.thread425:                                       ; preds = %bb.cw, %bb.cv
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #17
          to label %bb.bt unwind label %bb.cy

bb.cx:                                            ; preds = %bb.dc, %bb.cy
  %.sroa.0141.3 = phi i8 [ %.sroa.0141.4, %bb.cy ], [ %.sroa.0141.5, %bb.dc ]
  %.pn291 = phi { ptr, i32 } [ %i.hz, %bb.cy ], [ %i.id, %bb.dc ]
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$core..result..Result$LT$camino..Utf8DirEntry$C$std..io..error..Error$GT$$GT$$GT$17ha040e533c6c33ad0E"(ptr noalias noundef align 8 dereferenceable(24) %i.s) #15
          to label %bb.cc unwind label %bb.av

bb.cy:                                            ; preds = %bb.dw, %bb.dp, %bb.cz, %.thread425
  %.sroa.0141.4 = phi i8 [ 1, %bb.cz ], [ %.sroa.0141.7, %bb.dw ], [ 0, %bb.dp ], [ 1, %.thread425 ]
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cz:                                            ; preds = %bb.cw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4199.0.copyload) ]
  %i.ia = invoke noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hccafdeb1e397fd61E"(ptr noundef nonnull %.sroa.4199.0.copyload)
          to label %bb.dx unwind label %bb.cy

bb.da:                                            ; preds = %bb.cw
  %.sroa.5200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5110)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5110, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5200.0..sroa_idx, i64 48, i1 false)
  store i64 %.sroa.0198.0.copyload, ptr %i.q, align 8
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %.sroa.4199.0.copyload, ptr %.sroa.4109.0..sroa_idx, align 8
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5110.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5110, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5110)
  %i.ib = icmp eq i64 %i.hs, 0
  br i1 %i.ib, label %bb.db, label %bb.dl

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ic = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  invoke void @_ZN3std2fs8DirEntry8metadata17ha83a0c86808cfcc1E(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ic)
          to label %bb.dd unwind label %bb.dc

bb.dc:                                            ; preds = %.invoke458, %.invoke, %bb.dk, %bb.do, %_ZN6camino8Utf8Path14with_extension17h77879fa7d396841aE.exit, %bb.dl, %bb.di, %bb.dg, %bb.db
  %.sroa.0141.5 = phi i8 [ 0, %bb.dl ], [ 1, %.invoke458 ], [ 1, %bb.db ], [ 0, %bb.do ], [ 0, %_ZN6camino8Utf8Path14with_extension17h77879fa7d396841aE.exit ], [ 0, %bb.dk ], [ 0, %bb.di ], [ 1, %bb.dg ], [ 0, %.invoke ]
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$camino..Utf8DirEntry$GT$17he106d15f674b9c72E"(ptr noalias noundef align 8 dereferenceable(64) %i.q) #15
          to label %bb.cx unwind label %bb.av

bb.dd:                                            ; preds = %bb.db
  %i.ie = load i64, ptr %i.p, align 8, !range !10, !noundef !4
  %i.if = icmp eq i64 %i.ie, 2
  br i1 %i.if, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.ig = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.invoke458

bb.df:                                            ; preds = %bb.dd
  %.sroa.9210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %.sroa.9210.0.copyload = load i32, ptr %.sroa.9210.0..sroa_idx, align 8
  %i.ii = and i32 %.sroa.9210.0.copyload, 61440
  %i.ij = icmp eq i32 %i.ii, 16384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %i.ij, label %bb.dg, label %bb.dl

bb.dg:                                            ; preds = %bb.df
  %i.ik = load ptr, ptr %.sroa.4109.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.il = load i64, ptr %.sroa.5110.0..sroa_idx, align 8, !noundef !4
  %i.im = invoke noundef ptr @_ZN3std2fs6rename17he78b1d002abadc05E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ik, i64 noundef %i.il, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.dh unwind label %bb.dc     ; 2 uses

bb.dh:                                            ; preds = %bb.dg
  %.not285 = icmp eq ptr %i.im, null
  br i1 %.not285, label %bb.di, label %.invoke458

.invoke458:                                       ; preds = %bb.dh, %bb.de
  %i.in = phi ptr [ %i.ih, %bb.de ], [ %i.im, %bb.dh ]
  %i.io = invoke noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hccafdeb1e397fd61E"(ptr noundef nonnull %i.in)
          to label %bb.dw unwind label %bb.dc

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  %i.ip = invoke noundef ptr @_ZN3std2fs14remove_dir_all17h9dc648b00013eb3fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.dj unwind label %bb.dc     ; 2 uses

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.not287 = icmp eq ptr %i.ip, null
  br i1 %.not287, label %bb.dk, label %.invoke

bb.dk:                                            ; preds = %bb.dm, %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_ZN3std4path4Path14with_extension17h8a4a3c6f98e42befE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @14, i64 noundef 6)
          to label %_ZN6camino8Utf8Path14with_extension17h77879fa7d396841aE.exit unwind label %bb.dc

bb.dl:                                            ; preds = %bb.df, %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  %i.iq = invoke noundef ptr @_ZN3std2fs6rename17h88af4d5b4495eff3E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.dm unwind label %bb.dc     ; 2 uses

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not283 = icmp eq ptr %i.iq, null
  br i1 %.not283, label %bb.dk, label %.invoke

.invoke:                                          ; preds = %bb.dm, %bb.dj
  %i.ir = phi ptr [ %i.ip, %bb.dj ], [ %i.iq, %bb.dm ]
  %i.is = invoke noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hccafdeb1e397fd61E"(ptr noundef nonnull %i.ir)
          to label %bb.dw unwind label %bb.dc

_ZN6camino8Utf8Path14with_extension17h77879fa7d396841aE.exit: ; preds = %bb.dk
  invoke void @_ZN7anki_io10write_file17hda7839c8dfefd618E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.dn unwind label %bb.dc

bb.dn:                                            ; preds = %_ZN6camino8Utf8Path14with_extension17h77879fa7d396841aE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.it = load i64, ptr %i.m, align 8, !range !13, !noundef !4 ; 2 uses
  %.not289 = icmp eq i64 %i.it, -9223372036854775808
  br i1 %.not289, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %.sroa.4228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.2137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2137.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4228.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.it, ptr %i.c, align 8
  %i.iu = invoke noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hea326f767360609aE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c)
          to label %bb.dv unwind label %bb.dc

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$camino..Utf8DirEntry$GT$17he106d15f674b9c72E"(ptr noalias noundef align 8 dereferenceable(64) %i.q)
          to label %bb.dq unwind label %bb.cy

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$core..result..Result$LT$camino..Utf8DirEntry$C$std..io..error..Error$GT$$GT$$GT$17ha040e533c6c33ad0E"(ptr noalias noundef align 8 dereferenceable(24) %i.s)
          to label %bb.dr unwind label %bb.cd

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE"(ptr noalias noundef align 8 dereferenceable(24) %i.ag)
          to label %bb.ds unwind label %bb.ad

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br i1 %.sroa.028.0, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.iv = call noundef i32 @close(i32 noundef %i.dw) #16 ; 0 uses
  br label %bb.du

bb.du:                                            ; preds = %bb.ds, %bb.dt, %bb.x, %bb.ai, %bb.eh
  %.sroa.0.2 = phi ptr [ %.sroa.0.7, %bb.ai ], [ %i.em, %bb.x ], [ %.sroa.0.0376, %bb.eh ], [ null, %bb.dt ], [ null, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  ret ptr %.sroa.0.2

bb.dv:                                            ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.dw

bb.dw:                                            ; preds = %.invoke458, %.invoke, %bb.dv
  %.sroa.0141.7 = phi i8 [ 1, %.invoke458 ], [ 0, %.invoke ], [ 0, %bb.dv ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %i.io, %.invoke458 ], [ %i.is, %.invoke ], [ %i.iu, %bb.dv ]
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$camino..Utf8DirEntry$GT$17he106d15f674b9c72E"(ptr noalias noundef align 8 dereferenceable(64) %i.q)
          to label %bb.dx unwind label %bb.cy

bb.dx:                                            ; preds = %bb.cz, %bb.dw
  %.sroa.0141.8 = phi i8 [ %.sroa.0141.7, %bb.dw ], [ 1, %bb.cz ] ; 2 uses
  %.sroa.0.4 = phi ptr [ %.sroa.0.3, %bb.dw ], [ %i.ia, %bb.cz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$core..result..Result$LT$camino..Utf8DirEntry$C$std..io..error..Error$GT$$GT$$GT$17ha040e533c6c33ad0E"(ptr noalias noundef align 8 dereferenceable(24) %i.s)
          to label %bb.cj unwind label %bb.cd

bb.dy:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @"_ZN4core3ptr76drop_in_place$LT$zip..read..zip_archive..ZipArchive$LT$std..fs..File$GT$$GT$17h7024c990940cdd7aE"(ptr noalias noundef align 8 dereferenceable(16) %i.v)
          to label %bb.dz unwind label %bb.cd

bb.dz:                                            ; preds = %bb.ea, %bb.dy
  %.sroa.0.6 = phi ptr [ %i.he, %bb.ea ], [ %i.hi, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %.thread403

bb.ea:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.dz

"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h442765fba03a3515E.exit": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i", %bb.cj
  %.sroa.0.1409 = phi ptr [ %.sroa.0.4, %bb.cj ], [ %.sroa.0.1410, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i" ]
  %.sroa.0138.8407 = phi i8 [ %.sroa.0138.7, %bb.cj ], [ %.sroa.0138.8408, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %4 = trunc nuw i8 %.sroa.0138.8407 to i1
  br label %bb.ed

.thread403:                                       ; preds = %bb.ci, %bb.dz, %.thread411, %bb.cj
  %.sroa.0.1410 = phi ptr [ %i.hm, %.thread411 ], [ %.sroa.0.4, %bb.cj ], [ %i.gt, %bb.ci ], [ %.sroa.0.6, %bb.dz ]
  %.sroa.0138.8408 = phi i8 [ %.sroa.0138.7, %.thread411 ], [ %.sroa.0138.7, %bb.cj ], [ 1, %bb.ci ], [ 0, %bb.dz ] ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i" unwind label %bb.eb

bb.eb:                                            ; preds = %.thread403
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body316 unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14
  unreachable

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i": ; preds = %.thread403
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h442765fba03a3515E.exit" unwind label %bb.bj

bb.ed:                                            ; preds = %bb.bp, %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h442765fba03a3515E.exit"
  %.sroa.0138.9 = phi i1 [ %4, %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h442765fba03a3515E.exit" ], [ true, %bb.bp ]
  %.sroa.0138.9.a = phi i8 [ %.sroa.0138.8407, %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h442765fba03a3515E.exit" ], [ 1, %bb.bp ] ; 2 uses
  %.sroa.0.7 = phi ptr [ %.sroa.0.1409, %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h442765fba03a3515E.exit" ], [ %i.gc, %bb.bp ] ; 2 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.ef unwind label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.iy = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body unwind label %bb.eg

bb.ef:                                            ; preds = %bb.ed
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.ai unwind label %bb.ad

bb.eg:                                            ; preds = %bb.ee
  %i.iz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #14
  unreachable

.thread396:                                       ; preds = %bb.cn, %bb.cc
  %.pn293401 = phi { ptr, i32 } [ %.pn293, %bb.cc ], [ %i.hg, %bb.cn ]
  %.sroa.0138.5400 = phi i8 [ %.sroa.0138.5, %bb.cc ], [ 0, %bb.cn ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h442765fba03a3515E"(ptr noalias noundef align 8 dereferenceable(24) %i.aa) #15
          to label %.body316 unwind label %bb.av

bb.eh:                                            ; preds = %.thread371.a, %bb.ai
  %.sroa.0.0376 = phi ptr [ %.sroa.0.0.ph, %.thread371.a ], [ %.sroa.0.7, %bb.ai ]
  %i.ja = call noundef i32 @close(i32 noundef %i.dw) #16 ; 0 uses
  br label %bb.du

bb.ei:                                            ; preds = %.thread363, %.body
  %.pn297368 = phi { ptr, i32 } [ %.pn297369, %.thread363 ], [ %.pn297, %.body ]
  resume { ptr, i32 } %.pn297368

.thread363:                                       ; preds = %bb.as, %bb.bg, %bb.aw, %.thread385, %.thread377, %.body
  %.pn297369 = phi { ptr, i32 } [ %.pn297, %.body ], [ %lpad.thr_comm.split-lp392, %bb.aw ], [ %.pn388, %.thread385 ], [ %i.fv, %bb.bg ], [ %.pn269380, %.thread377 ], [ %i.fg, %bb.as ]
  %i.jb = call noundef i32 @close(i32 noundef %i.dw) #16 ; 0 uses
  br label %bb.ei
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN6runner7archive9sha2_data17h283052357f550143E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 1                ; 4 uses
  %i.d = alloca [64 x i8], align 1                ; 4 uses
  %i.e = alloca [64 x i8], align 1                ; 4 uses
  %i.f = alloca [64 x i8], align 1                ; 11 uses
  %i.g = alloca [72 x i8], align 8                ; 7 uses
  %i.h = alloca [72 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 1                ; 6 uses
  %i.j = alloca [104 x i8], align 8               ; 7 uses
  %i.k = alloca [32 x i8], align 1                ; 5 uses
  %i.l = alloca [32 x i8], align 1                ; 4 uses
  %i.m = alloca [104 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 2 uses
  store i64 0, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !1049
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 63 ; 3 uses
  store i8 0, ptr %.sroa.3.0..sroa_idx.i, align 1, !alias.scope !1049
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  %i.o = icmp ult i64 %2, 64
  br i1 %i.o, label %bb.b, label %.noexc2

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !alias.scope !1055
  %i.p = trunc nuw nsw i64 %2 to i8
  store i8 %i.p, ptr %.sroa.3.0..sroa_idx.i, align 1, !alias.scope !1056
  br label %"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6update17h5af15433bbb7a7deE.exit"

.noexc2:                                          ; preds = %bb.a
  %i.q = lshr i64 %2, 6                           ; 2 uses
  %i.r = and i64 %2, -64
  %i.s = and i64 %2, 63                           ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  store i64 %i.q, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !1057, !noalias !1058
  call void @_ZN4sha26sha25611compress25617h03df460404b700e2E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 1, 0) %i.q)
  %i.u = trunc nuw nsw i64 %i.s to i8
  store i8 %i.u, ptr %.sroa.3.0..sroa_idx.i, align 1, !alias.scope !1059
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(104) %i.m, ptr nonnull align 1 %i.t, i64 %i.s, i1 false), !alias.scope !1055
  br label %"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6update17h5af15433bbb7a7deE.exit"

"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6update17h5af15433bbb7a7deE.exit": ; preds = %.noexc2, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull align 8 dereferenceable(104) %i.m, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1060
  call void @"_ZN12hybrid_array7from_fn50_$LT$impl$u20$hybrid_array..Array$LT$T$C$U$GT$$GT$11try_from_fn17hf0f6bf7c7d14cd67E"(ptr noalias noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull align 1 %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1064
  call void @"_ZN12hybrid_array7from_fn50_$LT$impl$u20$hybrid_array..Array$LT$T$C$U$GT$$GT$11try_from_fn17hf0f6bf7c7d14cd67E"(ptr noalias noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 1 %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1064
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 63 ; 3 uses
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !1067, !noalias !1060, !noundef !4 ; 2 uses
  %i.y = zext nneg i8 %i.x to i64                 ; 4 uses
  %i.z = icmp ult i8 %i.x, 64
  call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !1068, !noalias !1060, !noundef !4
  %i.ac = shl i64 %i.ab, 9
  %i.ad = shl nuw nsw i64 %i.y, 3
  %i.ae = or disjoint i64 %i.ac, %i.ad
  %i.af = call i64 @llvm.bswap.i64(i64 %i.ae)     ; 2 uses
  call void @"_ZN12hybrid_array7from_fn50_$LT$impl$u20$hybrid_array..Array$LT$T$C$U$GT$$GT$11try_from_fn17h1d33065e6223ce92E"(ptr noalias noundef nonnull sret([64 x i8]) align 1 captures(address) dereferenceable(64) %i.f, ptr noalias noundef nonnull align 1 %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 8 dereferenceable(104) %i.j, i64 %i.y, i1 false), !noalias !1069
  store i8 0, ptr %i.w, align 1, !alias.scope !1070, !noalias !1060
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.y
  store i8 -128, ptr %i.ag, align 1, !noalias !1071
  %i.ah = xor i64 %i.y, 56
  %i.ai = icmp samesign ult i64 %i.ah, 8
  br i1 %i.ai, label %.noexc2.i.i, label %.noexc4.i.i

.noexc2.i.i:                                      ; preds = %"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6update17h5af15433bbb7a7deE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !1071
  call void @_ZN4sha26sha25611compress25617h03df460404b700e2E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.e, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.f, i8 0, i64 56, i1 false), !noalias !1071
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %i.af, ptr %i.aj, align 1, !noalias !1071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !1071
  call void @_ZN4sha26sha25611compress25617h03df460404b700e2E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1073
  br label %"_ZN12block_buffer43BlockBuffer$LT$BS$C$block_buffer..Eager$GT$10digest_pad17h742e680777370f09E.exit.i.i.i.i"

.noexc4.i.i:                                      ; preds = %"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6update17h5af15433bbb7a7deE.exit"
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %i.af, ptr %i.ak, align 1, !noalias !1071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !1071
  call void @_ZN4sha26sha25611compress25617h03df460404b700e2E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1074
  br label %"_ZN12block_buffer43BlockBuffer$LT$BS$C$block_buffer..Eager$GT$10digest_pad17h742e680777370f09E.exit.i.i.i.i"

"_ZN12block_buffer43BlockBuffer$LT$BS$C$block_buffer..Eager$GT$10digest_pad17h742e680777370f09E.exit.i.i.i.i": ; preds = %.noexc4.i.i, %.noexc2.i.i
  store i8 0, ptr %i.w, align 1, !alias.scope !1075, !noalias !1060
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1076
  store ptr %i.al, ptr %i.b, align 8, !noalias !1077
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1077
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1077
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 32, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !1077
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 4, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !1077
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17hccf2ed8172e77885E"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1076
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !noalias !1071
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.ao = load i64, ptr %i.am, align 8, !alias.scope !1078, !noalias !1071, !noundef !4 ; 2 uses
  %i.ap = load i64, ptr %i.an, align 8, !alias.scope !1078, !noalias !1071, !noundef !4
  %i.aq = icmp ult i64 %i.ao, %i.ap
  br i1 %i.aq, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17he46ff9d0a5e9e08eE.exit.lr.ph.i.i.i.i", label %.loopexit

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17he46ff9d0a5e9e08eE.exit.lr.ph.i.i.i.i": ; preds = %"_ZN12block_buffer43BlockBuffer$LT$BS$C$block_buffer..Eager$GT$10digest_pad17h742e680777370f09E.exit.i.i.i.i"
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17he46ff9d0a5e9e08eE.exit.i.i.i.i"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17he46ff9d0a5e9e08eE.exit.i.i.i.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h36d451a4d9db22c0E.exit.i.i.i.i", %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17he46ff9d0a5e9e08eE.exit.lr.ph.i.i.i.i"
  %i.as = phi i64 [ %i.ao, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17he46ff9d0a5e9e08eE.exit.lr.ph.i.i.i.i" ], [ %i.ba, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h36d451a4d9db22c0E.exit.i.i.i.i" ] ; 3 uses
  %i.at = add nuw i64 %i.as, 1
  store i64 %i.at, ptr %i.am, align 8, !alias.scope !1078, !noalias !1071
  %i.au = call { ptr, i64 } @"_ZN101_$LT$core..slice..iter..ChunksExactMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$24__iterator_get_unchecked17h5f6806b4ced8a3c7E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g, i64 noundef %i.as) ; 2 uses
  %i.av = extractvalue { ptr, i64 } %i.au, 0      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17he46ff9d0a5e9e08eE.exit.i.i.i.i"
  %i.aw = extractvalue { ptr, i64 } %i.au, 1      ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.aw, 4
  br i1 %.not.i.i.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h36d451a4d9db22c0E.exit.i.i.i.i", label %.noexc7.i.i, !prof !19

.noexc7.i.i:                                      ; preds = %bb.c
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17hb23ab9e23fc1a789E"(i64 noundef %i.aw, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #17
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h36d451a4d9db22c0E.exit.i.i.i.i": ; preds = %bb.c
  %.val.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !1078, !noalias !1071, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.as
  %i.ay = load i32, ptr %i.ax, align 4, !noalias !1079, !noundef !4
  %i.az = call i32 @llvm.bswap.i32(i32 %i.ay)
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!795 = !{i64 0, i64 -9223372036854775806}
!796 = !{!778}
!797 = !{i8 0, i8 7}
!798 = !{!778, !776, !774}
!799 = !{!782, !780}
!800 = !{!784, !780}
!801 = !{!786, !780}
!802 = !{!788}
!803 = !{!790}
!804 = !{!790, !788, !774}
!805 = !{!790, !788}
!806 = distinct !{!806, i1 true, !"_ZN4core3ptr128drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$clap_builder..parser..matches..arg_matches..SubCommand$GT$$GT$$GT$17heab3f5de9fa6394eE"}
!807 = distinct !{!807, !806, !"_ZN4core3ptr128drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$clap_builder..parser..matches..arg_matches..SubCommand$GT$$GT$$GT$17heab3f5de9fa6394eE: argument 0"}
!808 = distinct !{null}
!809 = distinct !{!809, i1 true, !"_ZN4core3ptr128drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$clap_builder..parser..matches..arg_matches..SubCommand$GT$$GT$$GT$17heab3f5de9fa6394eE"}
!810 = distinct !{!810, !809, !"_ZN4core3ptr128drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$clap_builder..parser..matches..arg_matches..SubCommand$GT$$GT$$GT$17heab3f5de9fa6394eE: argument 0"}
!811 = distinct !{!811, i1 true, !"_ZN4core3ptr100drop_in_place$LT$alloc..boxed..Box$LT$clap_builder..parser..matches..arg_matches..SubCommand$GT$$GT$17h1cbb4acb34eee771E"}
!812 = distinct !{!812, !811, !"_ZN4core3ptr100drop_in_place$LT$alloc..boxed..Box$LT$clap_builder..parser..matches..arg_matches..SubCommand$GT$$GT$17h1cbb4acb34eee771E: argument 0"}
!813 = distinct !{ptr @"_ZN4core3ptr100drop_in_place$LT$alloc..boxed..Box$LT$clap_builder..parser..matches..arg_matches..SubCommand$GT$$GT$17h1cbb4acb34eee771E", null, null}
!814 = distinct !{ptr @"_ZN4core3ptr100drop_in_place$LT$alloc..boxed..Box$LT$clap_builder..parser..matches..arg_matches..SubCommand$GT$$GT$17h1cbb4acb34eee771E", null}
!815 = !{!807}
!816 = !{!810}
!817 = !{!812}
!818 = distinct !{!818, i1 true, !"_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$zip..read..zip_archive..Shared$GT$$GT$17h6ad857b8bba348a8E"}
!819 = distinct !{!819, !818, !"_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$zip..read..zip_archive..Shared$GT$$GT$17h6ad857b8bba348a8E: argument 0"}
!820 = distinct !{!820, i1 true, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddca543bf3bb63e4E"}
!821 = distinct !{!821, !820, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hddca543bf3bb63e4E: argument 0"}
!822 = !{!819}
!823 = !{!821}
!824 = !{!821, !819}
!825 = distinct !{!825, i1 true, !"_ZN4core3ptr49drop_in_place$LT$runner..archive..ArchiveArgs$GT$17h97003381da6c07b9E"}
!826 = distinct !{!826, !825, !"_ZN4core3ptr49drop_in_place$LT$runner..archive..ArchiveArgs$GT$17h97003381da6c07b9E: argument 0"}
!827 = distinct !{!827, i1 true, !"_ZN4core3ptr64drop_in_place$LT$reqwest..async_impl..client..PendingRequest$GT$17ha0afaf6ad7a2624eE"}
!828 = distinct !{!828, !827, !"_ZN4core3ptr64drop_in_place$LT$reqwest..async_impl..client..PendingRequest$GT$17ha0afaf6ad7a2624eE: argument 0"}
!829 = distinct !{!829, i1 true, !"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17hbb878bb1b4be5334E"}
!830 = distinct !{!830, !829, !"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17hbb878bb1b4be5334E: argument 0"}
!831 = distinct !{!831, i1 true, !"_ZN4core3ptr40drop_in_place$LT$http..method..Inner$GT$17h686cb44f794a8063E"}
!832 = distinct !{!832, !831, !"_ZN4core3ptr40drop_in_place$LT$http..method..Inner$GT$17h686cb44f794a8063E: argument 0"}
!833 = distinct !{!833, i1 true, !"_ZN4core3ptr83drop_in_place$LT$alloc..sync..Arc$LT$reqwest..async_impl..client..ClientRef$GT$$GT$17hc65f6684dc8400dbE"}
!834 = distinct !{!834, !833, !"_ZN4core3ptr83drop_in_place$LT$alloc..sync..Arc$LT$reqwest..async_impl..client..ClientRef$GT$$GT$17hc65f6684dc8400dbE: argument 0"}
!835 = distinct !{!835, i1 true, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8002aef6f412eb9E"}
!836 = distinct !{!836, !835, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8002aef6f412eb9E: argument 0"}
!837 = distinct !{!837, i1 true, !"_ZN4core3ptr83drop_in_place$LT$alloc..sync..Arc$LT$reqwest..async_impl..client..ClientRef$GT$$GT$17hc65f6684dc8400dbE"}
!838 = distinct !{!838, !837, !"_ZN4core3ptr83drop_in_place$LT$alloc..sync..Arc$LT$reqwest..async_impl..client..ClientRef$GT$$GT$17hc65f6684dc8400dbE: argument 0"}
!839 = distinct !{!839, i1 true, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8002aef6f412eb9E"}
!840 = distinct !{!840, !839, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8002aef6f412eb9E: argument 0"}
!841 = distinct !{!841, i1 true, !"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E"}
!842 = distinct !{!842, !841, !"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E: argument 0"}
!843 = distinct !{!843, i1 true, !"_ZN4core3ptr83drop_in_place$LT$alloc..sync..Arc$LT$reqwest..async_impl..client..ClientRef$GT$$GT$17hc65f6684dc8400dbE"}
!844 = distinct !{!844, !843, !"_ZN4core3ptr83drop_in_place$LT$alloc..sync..Arc$LT$reqwest..async_impl..client..ClientRef$GT$$GT$17hc65f6684dc8400dbE: argument 0"}
!845 = distinct !{!845, i1 true, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8002aef6f412eb9E"}
!846 = distinct !{!846, !845, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8002aef6f412eb9E: argument 0"}
!847 = distinct !{!847, i1 true, !"_ZN4core3ptr42drop_in_place$LT$reqwest..error..Inner$GT$17h3680309c4335bc67E"}
!848 = distinct !{!848, !847, !"_ZN4core3ptr42drop_in_place$LT$reqwest..error..Inner$GT$17h3680309c4335bc67E: argument 0"}
!849 = distinct !{!849, i1 true, !"_ZN4core3ptr41drop_in_place$LT$reqwest..error..Kind$GT$17h0561dabc315aed6eE"}
!850 = distinct !{!850, !849, !"_ZN4core3ptr41drop_in_place$LT$reqwest..error..Kind$GT$17h0561dabc315aed6eE: argument 0"}
!851 = distinct !{!851, i1 true, !"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$hyper..ext..h1_reason_phrase..ReasonPhrase$GT$$GT$17h026ad9e6648d1c2cE"}
!852 = distinct !{!852, !851, !"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$hyper..ext..h1_reason_phrase..ReasonPhrase$GT$$GT$17h026ad9e6648d1c2cE: argument 0"}
!853 = distinct !{!853, i1 true, !"_ZN4core3ptr63drop_in_place$LT$hyper..ext..h1_reason_phrase..ReasonPhrase$GT$17h906e7420496bb871E"}
!854 = distinct !{!854, !853, !"_ZN4core3ptr63drop_in_place$LT$hyper..ext..h1_reason_phrase..ReasonPhrase$GT$17h906e7420496bb871E: argument 0"}
!855 = distinct !{!855, i1 true, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE"}
!856 = distinct !{!856, !855, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE: argument 0"}
!857 = distinct !{!857, i1 true, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE"}
!858 = distinct !{!858, !857, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE: argument 0"}
!859 = distinct !{null}
!860 = distinct !{!860, i1 true, !"_ZN4core3ptr57drop_in_place$LT$core..option..Option$LT$url..Url$GT$$GT$17ha7784a0e33fee1bfE"}
!861 = distinct !{!861, !860, !"_ZN4core3ptr57drop_in_place$LT$core..option..Option$LT$url..Url$GT$$GT$17ha7784a0e33fee1bfE: argument 0"}
!862 = distinct !{!862, i1 true, !"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E"}
!863 = distinct !{!863, !862, !"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17h56f78543f00826f1E: argument 0"}
!864 = distinct !{!864, i1 true, !"_ZN4core3ptr83drop_in_place$LT$alloc..sync..Arc$LT$reqwest..async_impl..client..ClientRef$GT$$GT$17hc65f6684dc8400dbE"}
!865 = distinct !{!865, !864, !"_ZN4core3ptr83drop_in_place$LT$alloc..sync..Arc$LT$reqwest..async_impl..client..ClientRef$GT$$GT$17hc65f6684dc8400dbE: argument 0"}
!866 = distinct !{!866, i1 true, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8002aef6f412eb9E"}
!867 = distinct !{!867, !866, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8002aef6f412eb9E: argument 0"}
!868 = distinct !{!868, i1 true, !"_ZN4core3ptr60drop_in_place$LT$reqwest..async_impl..response..Response$GT$17h30134b2fe10fbe0fE"}
!869 = distinct !{!869, !868, !"_ZN4core3ptr60drop_in_place$LT$reqwest..async_impl..response..Response$GT$17h30134b2fe10fbe0fE: argument 0"}
!870 = distinct !{!870, i1 true, !"_ZN4core3ptr90drop_in_place$LT$http..response..Response$LT$reqwest..async_impl..decoder..Decoder$GT$$GT$17hef79f38ea1b78ec0E"}
!871 = distinct !{!871, !870, !"_ZN4core3ptr90drop_in_place$LT$http..response..Response$LT$reqwest..async_impl..decoder..Decoder$GT$$GT$17hef79f38ea1b78ec0E: argument 0"}
!872 = distinct !{!872, i1 true, !"_ZN4core3ptr42drop_in_place$LT$http..response..Parts$GT$17ha60777213028cdacE"}
!873 = distinct !{!873, !872, !"_ZN4core3ptr42drop_in_place$LT$http..response..Parts$GT$17ha60777213028cdacE: argument 0"}
!874 = distinct !{!874, i1 true, !"_ZN4core3ptr111drop_in_place$LT$http_body_util..combinators..collect..Collect$LT$reqwest..async_impl..decoder..Decoder$GT$$GT$17h05e65232907777e3E"}
!875 = distinct !{!875, !874, !"_ZN4core3ptr111drop_in_place$LT$http_body_util..combinators..collect..Collect$LT$reqwest..async_impl..decoder..Decoder$GT$$GT$17h05e65232907777e3E: argument 0"}
!876 = distinct !{!876, i1 true, !"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$http_body_util..collected..Collected$LT$bytes..bytes..Bytes$GT$$GT$$GT$17he94ce6d3002cc065E"}
!877 = distinct !{!877, !876, !"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$http_body_util..collected..Collected$LT$bytes..bytes..Bytes$GT$$GT$$GT$17he94ce6d3002cc065E: argument 0"}
!878 = distinct !{!878, i1 true, !"_ZN4core3ptr84drop_in_place$LT$http_body_util..collected..Collected$LT$bytes..bytes..Bytes$GT$$GT$17hed661bc7dc30108bE"}
!879 = distinct !{!879, !878, !"_ZN4core3ptr84drop_in_place$LT$http_body_util..collected..Collected$LT$bytes..bytes..Bytes$GT$$GT$17hed661bc7dc30108bE: argument 0"}
!880 = distinct !{!880, i1 true, !"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$http..header..map..HeaderMap$GT$$GT$17h7f53391897b6e590E"}
!881 = distinct !{!881, !880, !"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$http..header..map..HeaderMap$GT$$GT$17h7f53391897b6e590E: argument 0"}
!882 = distinct !{!882, i1 true, !"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$http..header..map..HeaderMap$GT$$GT$17h7f53391897b6e590E"}
!883 = distinct !{!883, !882, !"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$http..header..map..HeaderMap$GT$$GT$17h7f53391897b6e590E: argument 0"}
!884 = !{i8 0, i8 4}
!885 = !{!826}
!886 = !{i8 0, i8 5}
!887 = !{!828}
!888 = !{!830}
!889 = !{!832}
!890 = !{!832, !830, !828}
!891 = !{!834}
!892 = !{!836}
!893 = !{!836, !834, !828}
!894 = !{!836, !834}
!895 = !{!838}
!896 = !{!840}
!897 = !{!840, !838, !828}
!898 = !{!840, !838}
!899 = !{!842}
!900 = !{!844}
!901 = !{!846}
!902 = !{!846, !844, !842}
!903 = !{!848}
!904 = !{!850}
!905 = !{i16 0, i16 7}
!906 = !{!850, !848}
!907 = !{!852}
!908 = !{!852, !850, !848}
!909 = !{!854}
!910 = !{!856}
!911 = !{!858}
!912 = !{!858, !856, !854, !852, !850, !848}
!913 = !{!861, !848}
!914 = !{!863}
!915 = !{!865}
!916 = !{!867}
!917 = !{!867, !865, !863}
!918 = !{!873, !871, !869}
!919 = !{!871, !869}
!920 = !{!869}
!921 = !{!877, !875}
!922 = !{!881, !879, !877, !875}
!923 = !{!883, !879, !877, !875}
!924 = !{!875}
!925 = distinct !{!925, i1 true, !"_ZN4core3ptr69drop_in_place$LT$clap_builder..builder..value_parser..ValueParser$GT$17he7424f073a0735abE"}
!926 = distinct !{!926, !925, !"_ZN4core3ptr69drop_in_place$LT$clap_builder..builder..value_parser..ValueParser$GT$17he7424f073a0735abE: argument 0"}
!927 = distinct !{!927, i1 true, !"_ZN4core3ptr74drop_in_place$LT$clap_builder..builder..value_parser..ValueParserInner$GT$17hb321ce0494a2a9a8E"}
!928 = distinct !{!928, !927, !"_ZN4core3ptr74drop_in_place$LT$clap_builder..builder..value_parser..ValueParserInner$GT$17hb321ce0494a2a9a8E: argument 0"}
!929 = !{!926}
!930 = !{!928}
!931 = !{!928, !926}
!932 = distinct !{!932, i1 true, !"_ZN4core3ptr52drop_in_place$LT$reqwest..async_impl..body..Body$GT$17h0d085b0819b614c8E"}
!933 = distinct !{!933, !932, !"_ZN4core3ptr52drop_in_place$LT$reqwest..async_impl..body..Body$GT$17h0d085b0819b614c8E: argument 0"}
!934 = distinct !{!934, i1 true, !"_ZN4core3ptr53drop_in_place$LT$reqwest..async_impl..body..Inner$GT$17he8929ec7e36f89adE"}
!935 = distinct !{!935, !934, !"_ZN4core3ptr53drop_in_place$LT$reqwest..async_impl..body..Inner$GT$17he8929ec7e36f89adE: argument 0"}
!936 = distinct !{!936, i1 true, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE"}
!937 = distinct !{!937, !936, !"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17he028c1366d1e77ebE: argument 0"}
!938 = distinct !{!938, i1 true, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE"}
!939 = distinct !{!939, !938, !"_ZN61_$LT$bytes..bytes..Bytes$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4178665aa0cb36adE: argument 0"}
!940 = distinct !{ptr @"_ZN4core3ptr52drop_in_place$LT$reqwest..async_impl..body..Body$GT$17h0d085b0819b614c8E", null, null, null}
!941 = !{!933}
!942 = !{!935}
!943 = !{!935, !933}
!944 = !{!937}
!945 = !{!939}
!946 = !{!939, !937, !935, !933}
!947 = distinct !{!947, i1 true, !"_ZN88_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$15next_match_back17h78e137c82f3c82a1E"}
!948 = distinct !{!948, !947, !"_ZN88_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$15next_match_back17h78e137c82f3c82a1E: argument 1"}
!949 = distinct !{!949, !947, !"_ZN88_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$15next_match_back17h78e137c82f3c82a1E: argument 0"}
!950 = !{i8 0, i8 2}
!951 = !{!948}
!952 = !{!949, !948}
!953 = !{!949}
!954 = distinct !{!954, i1 true, !"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hc51d908b855c9666E"}
!955 = distinct !{!955, !954, !"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hc51d908b855c9666E: argument 0"}
!956 = distinct !{!956, !954, !"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hc51d908b855c9666E: argument 1"}
!957 = !{!955}
!958 = !{!956}
!959 = !{!955, !956}
!960 = distinct !{!960, i1 true, !"_ZN4core3ptr66drop_in_place$LT$xz2..read..XzDecoder$LT$$RF$std..fs..File$GT$$GT$17h9671f04c661724a0E"}
!961 = distinct !{!961, !960, !"_ZN4core3ptr66drop_in_place$LT$xz2..read..XzDecoder$LT$$RF$std..fs..File$GT$$GT$17h9671f04c661724a0E: argument 0"}
!962 = distinct !{!962, i1 true, !"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE"}
!963 = distinct !{!963, !962, !"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE: argument 0"}
!964 = distinct !{!964, i1 true, !"_ZN4core3ptr66drop_in_place$LT$xz2..read..XzDecoder$LT$$RF$std..fs..File$GT$$GT$17h9671f04c661724a0E"}
!965 = distinct !{!965, !964, !"_ZN4core3ptr66drop_in_place$LT$xz2..read..XzDecoder$LT$$RF$std..fs..File$GT$$GT$17h9671f04c661724a0E: argument 0"}
!966 = distinct !{!966, i1 true, !"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE"}
!967 = distinct !{!967, !966, !"_ZN4core3ptr116drop_in_place$LT$xz2..bufread..XzDecoder$LT$std..io..buffered..bufreader..BufReader$LT$$RF$std..fs..File$GT$$GT$$GT$17h889296361e9e6dedE: argument 0"}
!968 = distinct !{!968, i1 true, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h91545262036220e4E"}
!969 = distinct !{!969, !968, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h91545262036220e4E: argument 1"}
!970 = distinct !{!970, !968, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h91545262036220e4E: argument 0"}
!971 = distinct !{!971, i1 true, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h2e8d5cf6d8e24336E"}
!972 = distinct !{!972, !971, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h2e8d5cf6d8e24336E: argument 1"}
!973 = distinct !{!973, !971, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h2e8d5cf6d8e24336E: argument 0"}
!974 = distinct !{!974, i1 true, !"_ZN6camino8Utf8Path14with_file_name17h0008994f9bedf937E"}
!975 = distinct !{!975, !974, !"_ZN6camino8Utf8Path14with_file_name17h0008994f9bedf937E: argument 2"}
!976 = distinct !{!976, !974, !"_ZN6camino8Utf8Path14with_file_name17h0008994f9bedf937E: argument 1"}
!977 = distinct !{!977, !974, !"_ZN6camino8Utf8Path14with_file_name17h0008994f9bedf937E: argument 0"}
!978 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1}
!979 = !{!"branch_weights", i32 616887183, i32 1530596465}
!980 = !{i32 0, i32 2}
!981 = !{!961}
!982 = !{!963}
!983 = !{!963, !961}
!984 = !{!965}
!985 = !{!967}
!986 = !{!967, !965}
!987 = !{!973, !972, !970, !969}
!988 = !{!973, !970}
!989 = !{!975}
!990 = !{!977, !976, !975}
!991 = !{!977, !975}
!992 = !{!977}
!993 = !{!976, !975}
!994 = !{i64 0, i64 -9223372036854775801}
!995 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!996 = distinct !{!996, i1 true, !"_ZN55_$LT$sha2..Sha256$u20$as$u20$core..default..Default$GT$7default17h126ccb7e67b83e45E"}
!997 = distinct !{!997, !996, !"_ZN55_$LT$sha2..Sha256$u20$as$u20$core..default..Default$GT$7default17h126ccb7e67b83e45E: argument 0"}
!998 = distinct !{!998, i1 true, !"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6update17h5af15433bbb7a7deE"}
!999 = distinct !{!999, !998, !"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6update17h5af15433bbb7a7deE: argument 1"}
!1000 = distinct !{!1000, i1 true, !"_ZN47_$LT$sha2..Sha256$u20$as$u20$digest..Update$GT$6update17hdc1e3a320b1cf054E"}
!1001 = distinct !{!1001, !1000, !"_ZN47_$LT$sha2..Sha256$u20$as$u20$digest..Update$GT$6update17hdc1e3a320b1cf054E: argument 1"}
!1002 = distinct !{!1002, i1 true, !"_ZN12block_buffer25BlockBuffer$LT$BS$C$K$GT$13digest_blocks17h3a782c9a1562b111E"}
!1003 = distinct !{!1003, !1002, !"_ZN12block_buffer25BlockBuffer$LT$BS$C$K$GT$13digest_blocks17h3a782c9a1562b111E: argument 0"}
!1004 = distinct !{!1004, !1002, !"_ZN12block_buffer25BlockBuffer$LT$BS$C$K$GT$13digest_blocks17h3a782c9a1562b111E: argument 1"}
!1005 = distinct !{!1005, !1002, !"_ZN12block_buffer25BlockBuffer$LT$BS$C$K$GT$13digest_blocks17h3a782c9a1562b111E: argument 2"}
!1006 = distinct !{!1006, !998, !"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6update17h5af15433bbb7a7deE: argument 0"}
!1007 = distinct !{!1007, !1000, !"_ZN47_$LT$sha2..Sha256$u20$as$u20$digest..Update$GT$6update17hdc1e3a320b1cf054E: argument 0"}
!1008 = distinct !{!1008, i1 true, !"_ZN68_$LT$block_buffer..Eager$u20$as$u20$block_buffer..sealed..Sealed$GT$7set_pos17he1e14c2fa2c193adE"}
!1009 = distinct !{!1009, !1008, !"_ZN68_$LT$block_buffer..Eager$u20$as$u20$block_buffer..sealed..Sealed$GT$7set_pos17he1e14c2fa2c193adE: argument 0"}
!1010 = distinct !{!1010, i1 true, !"_ZN47_$LT$sha2..Sha256$u20$as$u20$digest..Update$GT$6update28_$u7b$$u7b$closure$u7d$$u7d$17hb889a7f74f220524E"}
!1011 = distinct !{!1011, !1010, !"_ZN47_$LT$sha2..Sha256$u20$as$u20$digest..Update$GT$6update28_$u7b$$u7b$closure$u7d$$u7d$17hb889a7f74f220524E: argument 0"}
!1012 = distinct !{!1012, i1 true, !"_ZN68_$LT$block_buffer..Eager$u20$as$u20$block_buffer..sealed..Sealed$GT$7set_pos17he1e14c2fa2c193adE"}
!1013 = distinct !{!1013, !1012, !"_ZN68_$LT$block_buffer..Eager$u20$as$u20$block_buffer..sealed..Sealed$GT$7set_pos17he1e14c2fa2c193adE: argument 0"}
!1014 = distinct !{!1014, i1 true, !"_ZN6digest11FixedOutput14finalize_fixed17h684f31f9d4479f7eE"}
!1015 = distinct !{!1015, !1014, !"_ZN6digest11FixedOutput14finalize_fixed17h684f31f9d4479f7eE: argument 1"}
!1016 = distinct !{!1016, !1014, !"_ZN6digest11FixedOutput14finalize_fixed17h684f31f9d4479f7eE: argument 0"}
!1017 = distinct !{!1017, i1 true, !"_ZN52_$LT$sha2..Sha256$u20$as$u20$digest..FixedOutput$GT$13finalize_into17h68ec33452a5a3051E"}
!1018 = distinct !{!1018, !1017, !"_ZN52_$LT$sha2..Sha256$u20$as$u20$digest..FixedOutput$GT$13finalize_into17h68ec33452a5a3051E: argument 0"}
!1019 = distinct !{!1019, i1 true, !"_ZN118_$LT$digest..block_api..ct_variable..CtOutWrapper$LT$T$C$OutSize$GT$$u20$as$u20$digest..block_api..FixedOutputCore$GT$19finalize_fixed_core17h3cdc3f774da908a6E"}
!1020 = distinct !{!1020, !1019, !"_ZN118_$LT$digest..block_api..ct_variable..CtOutWrapper$LT$T$C$OutSize$GT$$u20$as$u20$digest..block_api..FixedOutputCore$GT$19finalize_fixed_core17h3cdc3f774da908a6E: argument 0"}
!1021 = distinct !{!1021, !1019, !"_ZN118_$LT$digest..block_api..ct_variable..CtOutWrapper$LT$T$C$OutSize$GT$$u20$as$u20$digest..block_api..FixedOutputCore$GT$19finalize_fixed_core17h3cdc3f774da908a6E: argument 1"}
!1022 = distinct !{!1022, !1017, !"_ZN52_$LT$sha2..Sha256$u20$as$u20$digest..FixedOutput$GT$13finalize_into17h68ec33452a5a3051E: argument 1"}
!1023 = distinct !{!1023, !1019, !"_ZN118_$LT$digest..block_api..ct_variable..CtOutWrapper$LT$T$C$OutSize$GT$$u20$as$u20$digest..block_api..FixedOutputCore$GT$19finalize_fixed_core17h3cdc3f774da908a6E: argument 2"}
!1024 = distinct !{!1024, i1 true, !"_ZN88_$LT$sha2..block_api..Sha256VarCore$u20$as$u20$digest..block_api..VariableOutputCore$GT$22finalize_variable_core17h9d466eafd183bfebE"}
!1025 = distinct !{!1025, !1024, !"_ZN88_$LT$sha2..block_api..Sha256VarCore$u20$as$u20$digest..block_api..VariableOutputCore$GT$22finalize_variable_core17h9d466eafd183bfebE: argument 0"}
!1026 = distinct !{!1026, !1024, !"_ZN88_$LT$sha2..block_api..Sha256VarCore$u20$as$u20$digest..block_api..VariableOutputCore$GT$22finalize_variable_core17h9d466eafd183bfebE: argument 1"}
!1027 = distinct !{!1027, !1024, !"_ZN88_$LT$sha2..block_api..Sha256VarCore$u20$as$u20$digest..block_api..VariableOutputCore$GT$22finalize_variable_core17h9d466eafd183bfebE: argument 2"}
!1028 = distinct !{!1028, i1 true, !"_ZN68_$LT$block_buffer..Eager$u20$as$u20$block_buffer..sealed..Sealed$GT$7set_pos17he1e14c2fa2c193adE"}
!1029 = distinct !{!1029, !1028, !"_ZN68_$LT$block_buffer..Eager$u20$as$u20$block_buffer..sealed..Sealed$GT$7set_pos17he1e14c2fa2c193adE: argument 0"}
!1030 = distinct !{!1030, i1 true, !"_ZN88_$LT$sha2..block_api..Sha256VarCore$u20$as$u20$digest..block_api..VariableOutputCore$GT$22finalize_variable_core28_$u7b$$u7b$closure$u7d$$u7d$17h16e8200c2308df5cE"}
!1031 = distinct !{!1031, !1030, !"_ZN88_$LT$sha2..block_api..Sha256VarCore$u20$as$u20$digest..block_api..VariableOutputCore$GT$22finalize_variable_core28_$u7b$$u7b$closure$u7d$$u7d$17h16e8200c2308df5cE: argument 0"}
!1032 = distinct !{!1032, i1 true, !"_ZN88_$LT$sha2..block_api..Sha256VarCore$u20$as$u20$digest..block_api..VariableOutputCore$GT$22finalize_variable_core28_$u7b$$u7b$closure$u7d$$u7d$17h16e8200c2308df5cE"}
!1033 = distinct !{!1033, !1032, !"_ZN88_$LT$sha2..block_api..Sha256VarCore$u20$as$u20$digest..block_api..VariableOutputCore$GT$22finalize_variable_core28_$u7b$$u7b$closure$u7d$$u7d$17h16e8200c2308df5cE: argument 0"}
!1034 = distinct !{!1034, i1 true, !"_ZN88_$LT$sha2..block_api..Sha256VarCore$u20$as$u20$digest..block_api..VariableOutputCore$GT$22finalize_variable_core28_$u7b$$u7b$closure$u7d$$u7d$17h16e8200c2308df5cE"}
!1035 = distinct !{!1035, !1034, !"_ZN88_$LT$sha2..block_api..Sha256VarCore$u20$as$u20$digest..block_api..VariableOutputCore$GT$22finalize_variable_core28_$u7b$$u7b$closure$u7d$$u7d$17h16e8200c2308df5cE: argument 0"}
!1036 = distinct !{!1036, i1 true, !"_ZN12block_buffer43BlockBuffer$LT$BS$C$block_buffer..Eager$GT$10digest_pad17h742e680777370f09E"}
!1037 = distinct !{!1037, !1036, !"_ZN12block_buffer43BlockBuffer$LT$BS$C$block_buffer..Eager$GT$10digest_pad17h742e680777370f09E: argument 0"}
!1038 = distinct !{!1038, i1 true, !"_ZN4core4iter6traits8iterator8Iterator3zip17h58eb98d4fb33aa1fE"}
!1039 = distinct !{!1039, !1038, !"_ZN4core4iter6traits8iterator8Iterator3zip17h58eb98d4fb33aa1fE: argument 1"}
!1040 = distinct !{!1040, !1038, !"_ZN4core4iter6traits8iterator8Iterator3zip17h58eb98d4fb33aa1fE: argument 0"}
!1041 = distinct !{!1041, i1 true, !"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17he46ff9d0a5e9e08eE"}
!1042 = distinct !{!1042, !1041, !"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17he46ff9d0a5e9e08eE: argument 1"}
!1043 = distinct !{!1043, i1 true, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h36d451a4d9db22c0E"}
!1044 = distinct !{!1044, !1043, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h36d451a4d9db22c0E: argument 1"}
!1045 = distinct !{!1045, !1043, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h36d451a4d9db22c0E: argument 0"}
!1046 = distinct !{!1046, i1 true, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h36d451a4d9db22c0E"}
!1047 = distinct !{!1047, !1046, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h36d451a4d9db22c0E: argument 1"}
!1048 = distinct !{!1048, !1046, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h36d451a4d9db22c0E: argument 0"}
!1049 = !{!997}
!1050 = !{!999}
!1051 = !{!1001}
!1052 = !{!1003}
!1053 = !{!1004}
!1054 = !{!1005}
!1055 = !{!1003, !1004, !1007, !1001, !1006, !999}
!1056 = !{!1009, !1003, !1007, !1006}
!1057 = !{!1005, !1007, !1006}
!1058 = !{!1011}
!1059 = !{!1013, !1003, !1007, !1006}
!1060 = !{!1016, !1015}
!1061 = !{!1018}
!1062 = !{!1020}
!1063 = !{!1021}
!1064 = !{!1020, !1021, !1023, !1018, !1022, !1016, !1015}
!1065 = !{!1025}
!1066 = !{!1026}
!1067 = !{!1026, !1021, !1018}
!1068 = !{!1025, !1020, !1018}
!1069 = !{!1025, !1027, !1020, !1023, !1022, !1016, !1015}
!1070 = !{!1029, !1026, !1021, !1018}
!1071 = !{!1025, !1026, !1027, !1020, !1021, !1023, !1018, !1022, !1016, !1015}
!1072 = !{!1031, !1025, !1026, !1027, !1020, !1021, !1023, !1018, !1022, !1016, !1015}
!1073 = !{!1033, !1025, !1026, !1027, !1020, !1021, !1023, !1018, !1022, !1016, !1015}
!1074 = !{!1035, !1025, !1026, !1027, !1020, !1021, !1023, !1018, !1022, !1016, !1015}
!1075 = !{!1037, !1026, !1021, !1018}
!1076 = !{!1040, !1039, !1025, !1026, !1027, !1020, !1021, !1023, !1018, !1022, !1016, !1015}
!1077 = !{!1040, !1025, !1026, !1027, !1020, !1021, !1023, !1018, !1022, !1016, !1015}
!1078 = !{!1042}
!1079 = !{!1026, !1021, !1023, !1022, !1016, !1015}
!1080 = !{!1045, !1044}
!1081 = !{!1048, !1047}
!1082 = !{!1020, !1021, !1018, !1016, !1015}
!1083 = !{!1015}
!1084 = distinct !{!1084, i1 true, !"_ZN76_$LT$runner..archive..DownloadArgs$u20$as$u20$clap_builder..derive..Args$GT$12augment_args17h8341edced3834968E"}
!1085 = distinct !{!1085, !1084, !"_ZN76_$LT$runner..archive..DownloadArgs$u20$as$u20$clap_builder..derive..Args$GT$12augment_args17h8341edced3834968E: argument 1"}
!1086 = distinct !{!1086, !1084, !"_ZN76_$LT$runner..archive..DownloadArgs$u20$as$u20$clap_builder..derive..Args$GT$12augment_args17h8341edced3834968E: argument 0"}
!1087 = distinct !{!1087, i1 true, !"_ZN12clap_builder7builder7command7Command5group17h33ca77674eab30c5E"}
!1088 = distinct !{!1088, !1087, !"_ZN12clap_builder7builder7command7Command5group17h33ca77674eab30c5E: argument 1"}
!1089 = distinct !{!1089, !1087, !"_ZN12clap_builder7builder7command7Command5group17h33ca77674eab30c5E: argument 2"}
!1090 = distinct !{!1090, !1087, !"_ZN12clap_builder7builder7command7Command5group17h33ca77674eab30c5E: argument 0"}
!1091 = distinct !{!1091, i1 true, !"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h6f19829758645730E"}
!1092 = distinct !{!1092, !1091, !"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h6f19829758645730E: argument 1"}
!1093 = distinct !{!1093, !1091, !"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h6f19829758645730E: argument 0"}
!1094 = distinct !{!1094, i1 true, !"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hd4bf9fd6ce9b66feE"}
!1095 = distinct !{!1095, !1094, !"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hd4bf9fd6ce9b66feE: argument 1"}
!1096 = distinct !{!1096, !1094, !"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hd4bf9fd6ce9b66feE: argument 0"}
!1097 = distinct !{!1097, i1 true, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hd2e502e4a3ac4d2bE"}
!1098 = distinct !{!1098, !1097, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hd2e502e4a3ac4d2bE: argument 0"}
!1099 = distinct !{!1099, !1097, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hd2e502e4a3ac4d2bE: argument 1"}
!1100 = distinct !{!1100, i1 true, !"_ZN12clap_builder7builder3arg3Arg10value_name17hdc55e28348dd68ffE"}
!1101 = distinct !{!1101, !1100, !"_ZN12clap_builder7builder3arg3Arg10value_name17hdc55e28348dd68ffE: argument 0"}
!1102 = distinct !{!1102, !1100, !"_ZN12clap_builder7builder3arg3Arg10value_name17hdc55e28348dd68ffE: argument 1"}
!1103 = distinct !{!1103, !1100, !"_ZN12clap_builder7builder3arg3Arg10value_name17hdc55e28348dd68ffE: argument 2"}
!1104 = distinct !{!1104, i1 true, !"_ZN12clap_builder7builder3arg3Arg6action17hcde1b472518cf724E"}
!1105 = distinct !{!1105, !1104, !"_ZN12clap_builder7builder3arg3Arg6action17hcde1b472518cf724E: argument 0"}
!1106 = distinct !{!1106, !1104, !"_ZN12clap_builder7builder3arg3Arg6action17hcde1b472518cf724E: argument 1"}
!1107 = distinct !{!1107, i1 true, !"_ZN12clap_builder7builder3arg3Arg10value_name17hdc55e28348dd68ffE"}
!1108 = distinct !{!1108, !1107, !"_ZN12clap_builder7builder3arg3Arg10value_name17hdc55e28348dd68ffE: argument 0"}
!1109 = distinct !{!1109, !1107, !"_ZN12clap_builder7builder3arg3Arg10value_name17hdc55e28348dd68ffE: argument 1"}
!1110 = distinct !{!1110, !1107, !"_ZN12clap_builder7builder3arg3Arg10value_name17hdc55e28348dd68ffE: argument 2"}
!1111 = distinct !{!1111, i1 true, !"_ZN12clap_builder7builder3arg3Arg6action17hcde1b472518cf724E"}
!1112 = distinct !{!1112, !1111, !"_ZN12clap_builder7builder3arg3Arg6action17hcde1b472518cf724E: argument 0"}
!1113 = distinct !{!1113, !1111, !"_ZN12clap_builder7builder3arg3Arg6action17hcde1b472518cf724E: argument 1"}
!1114 = distinct !{!1114, i1 true, !"_ZN12clap_builder7builder3arg3Arg10value_name17hdc55e28348dd68ffE"}
!1115 = distinct !{!1115, !1114, !"_ZN12clap_builder7builder3arg3Arg10value_name17hdc55e28348dd68ffE: argument 0"}
!1116 = distinct !{!1116, !1114, !"_ZN12clap_builder7builder3arg3Arg10value_name17hdc55e28348dd68ffE: argument 1"}
!1117 = distinct !{!1117, !1114, !"_ZN12clap_builder7builder3arg3Arg10value_name17hdc55e28348dd68ffE: argument 2"}
!1118 = distinct !{!1118, i1 true, !"_ZN12clap_builder7builder3arg3Arg6action17hcde1b472518cf724E"}
!1119 = distinct !{!1119, !1118, !"_ZN12clap_builder7builder3arg3Arg6action17hcde1b472518cf724E: argument 0"}
!1120 = distinct !{!1120, !1118, !"_ZN12clap_builder7builder3arg3Arg6action17hcde1b472518cf724E: argument 1"}
!1121 = distinct !{!1121, i1 true, !"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hcc0c75235c9166d9E"}
!1122 = distinct !{!1122, !1121, !"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hcc0c75235c9166d9E: argument 1"}
!1123 = distinct !{!1123, !1121, !"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hcc0c75235c9166d9E: argument 0"}
!1124 = distinct !{!1124, i1 true, !"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h077f5186a4f83782E"}
!1125 = distinct !{!1125, !1124, !"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h077f5186a4f83782E: argument 1"}
!1126 = distinct !{!1126, !1124, !"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h077f5186a4f83782E: argument 0"}
!1127 = distinct !{!1127, i1 true, !"_ZN12clap_builder7builder7command7Command10subcommand17ha092ab9e6cd22bd9E"}
!1128 = distinct !{!1128, !1127, !"_ZN12clap_builder7builder7command7Command10subcommand17ha092ab9e6cd22bd9E: argument 1"}
!1129 = distinct !{!1129, !1127, !"_ZN12clap_builder7builder7command7Command10subcommand17ha092ab9e6cd22bd9E: argument 0"}
!1130 = distinct !{!1130, !1127, !"_ZN12clap_builder7builder7command7Command10subcommand17ha092ab9e6cd22bd9E: argument 2"}
!1131 = distinct !{!1131, i1 true, !"_ZN75_$LT$runner..archive..ExtractArgs$u20$as$u20$clap_builder..derive..Args$GT$12augment_args17h27736021b28ca743E"}
!1132 = distinct !{!1132, !1131, !"_ZN75_$LT$runner..archive..ExtractArgs$u20$as$u20$clap_builder..derive..Args$GT$12augment_args17h27736021b28ca743E: argument 1"}
!1133 = distinct !{!1133, !1131, !"_ZN75_$LT$runner..archive..ExtractArgs$u20$as$u20$clap_builder..derive..Args$GT$12augment_args17h27736021b28ca743E: argument 0"}
!1134 = distinct !{!1134, i1 true, !"_ZN12clap_builder7builder7command7Command5group17h33ca77674eab30c5E"}
!1135 = distinct !{!1135, !1134, !"_ZN12clap_builder7builder7command7Command5group17h33ca77674eab30c5E: argument 1"}
!1136 = distinct !{!1136, !1134, !"_ZN12clap_builder7builder7command7Command5group17h33ca77674eab30c5E: argument 2"}
!1137 = distinct !{!1137, !1134, !"_ZN12clap_builder7builder7command7Command5group17h33ca77674eab30c5E: argument 0"}
!1138 = distinct !{!1138, i1 true, !"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h6f19829758645730E"}
!1139 = distinct !{!1139, !1138, !"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h6f19829758645730E: argument 1"}
!1140 = distinct !{!1140, !1138, !"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h6f19829758645730E: argument 0"}
!1141 = distinct !{!1141, i1 true, !"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hd4bf9fd6ce9b66feE"}
!1142 = distinct !{!1142, !1141, !"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hd4bf9fd6ce9b66feE: argument 1"}
!1143 = distinct !{!1143, !1141, !"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hd4bf9fd6ce9b66feE: argument 0"}
!1144 = distinct !{!1144, i1 true, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hd2e502e4a3ac4d2bE"}
!1145 = distinct !{!1145, !1144, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hd2e502e4a3ac4d2bE: argument 0"}
!1146 = distinct !{!1146, !1144, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hd2e502e4a3ac4d2bE: argument 1"}
!1147 = distinct !{!1147, i1 true, !"_ZN12clap_builder7builder3arg3Arg10value_name17hdc55e28348dd68ffE"}
!1148 = distinct !{!1148, !1147, !"_ZN12clap_builder7builder3arg3Arg10value_name17hdc55e28348dd68ffE: argument 0"}
!1149 = distinct !{!1149, !1147, !"_ZN12clap_builder7builder3arg3Arg10value_name17hdc55e28348dd68ffE: argument 1"}
!1150 = distinct !{!1150, !1147, !"_ZN12clap_builder7builder3arg3Arg10value_name17hdc55e28348dd68ffE: argument 2"}
!1151 = distinct !{!1151, i1 true, !"_ZN12clap_builder7builder3arg3Arg6action17hcde1b472518cf724E"}
!1152 = distinct !{!1152, !1151, !"_ZN12clap_builder7builder3arg3Arg6action17hcde1b472518cf724E: argument 0"}
!1153 = distinct !{!1153, !1151, !"_ZN12clap_builder7builder3arg3Arg6action17hcde1b472518cf724E: argument 1"}
!1154 = distinct !{!1154, i1 true, !"_ZN12clap_builder7builder3arg3Arg10value_name17hdc55e28348dd68ffE"}
!1155 = distinct !{!1155, !1154, !"_ZN12clap_builder7builder3arg3Arg10value_name17hdc55e28348dd68ffE: argument 0"}
!1156 = distinct !{!1156, !1154, !"_ZN12clap_builder7builder3arg3Arg10value_name17hdc55e28348dd68ffE: argument 1"}
!1157 = distinct !{!1157, !1154, !"_ZN12clap_builder7builder3arg3Arg10value_name17hdc55e28348dd68ffE: argument 2"}
!1158 = distinct !{!1158, i1 true, !"_ZN12clap_builder7builder3arg3Arg6action17hcde1b472518cf724E"}
!1159 = distinct !{!1159, !1158, !"_ZN12clap_builder7builder3arg3Arg6action17hcde1b472518cf724E: argument 0"}
!1160 = distinct !{!1160, !1158, !"_ZN12clap_builder7builder3arg3Arg6action17hcde1b472518cf724E: argument 1"}
!1161 = distinct !{!1161, i1 true, !"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hcc0c75235c9166d9E"}
!1162 = distinct !{!1162, !1161, !"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hcc0c75235c9166d9E: argument 1"}
!1163 = distinct !{!1163, !1161, !"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hcc0c75235c9166d9E: argument 0"}
!1164 = distinct !{!1164, i1 true, !"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h077f5186a4f83782E"}
!1165 = distinct !{!1165, !1164, !"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h077f5186a4f83782E: argument 1"}
!1166 = distinct !{!1166, !1164, !"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h077f5186a4f83782E: argument 0"}
!1167 = distinct !{!1167, i1 true, !"_ZN12clap_builder7builder7command7Command10subcommand17ha092ab9e6cd22bd9E"}
!1168 = distinct !{!1168, !1167, !"_ZN12clap_builder7builder7command7Command10subcommand17ha092ab9e6cd22bd9E: argument 1"}
!1169 = distinct !{!1169, !1167, !"_ZN12clap_builder7builder7command7Command10subcommand17ha092ab9e6cd22bd9E: argument 0"}
!1170 = distinct !{!1170, !1167, !"_ZN12clap_builder7builder7command7Command10subcommand17ha092ab9e6cd22bd9E: argument 2"}
!1171 = !{!1086, !1085}
!1172 = !{!1086}
!1173 = !{!1088}
!1174 = !{!1090, !1088, !1089, !1086, !1085}
!1175 = !{!1096, !1095, !1093, !1092}
!1176 = !{!1090, !1088, !1086, !1085}
!1177 = !{!1098, !1088}
!1178 = !{!1090, !1089, !1086, !1085}
!1179 = !{!1099, !1090, !1089, !1086, !1085}
!1180 = !{!1090, !1086, !1085}
!1181 = !{!1101}
!1182 = !{!1102}
!1183 = !{!1101, !1102, !1086, !1085}
!1184 = !{!1101, !1102}
!1185 = !{!1101, !1102, !1103, !1086, !1085}
!1186 = !{!1101, !1103, !1086, !1085}
!1187 = !{!1101, !1086, !1085}
!1188 = !{!1105}
!1189 = !{!1106}
!1190 = !{!1105, !1106}
!1191 = !{!1108}
!1192 = !{!1109}
!1193 = !{!1108, !1109, !1086, !1085}
!1194 = !{!1108, !1109}
!1195 = !{!1108, !1109, !1110, !1086, !1085}
end_hunk_1
