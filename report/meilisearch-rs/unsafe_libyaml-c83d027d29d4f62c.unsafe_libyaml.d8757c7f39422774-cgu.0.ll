Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/unsafe_libyaml-c83d027d29d4f62c.unsafe_libyaml.d8757c7f39422774-cgu.0?download=true
inline.NumInlined: 729
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE:bb.a
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.k, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #20
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN14unsafe_libyaml6dumper17yaml_emitter_dump17he05e385c6483dd13E(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 7 uses
  %i.b = alloca [96 x i8], align 8                ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4, i64 noundef 18, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @34, i64 noundef 104, i32 noundef 95) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @5, i64 noundef 19, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @34, i64 noundef 104, i32 noundef 96) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 4 uses
  %i.h = load i8, ptr %i.g, align 8, !range !10, !noundef !6
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, i8 0, i64 48, i1 false)
  store i32 1, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 0, i64 48, i1 false)
  %i.k = call noundef zeroext i1 @_ZN14unsafe_libyaml7emitter17yaml_emitter_emit17h18610a5412076d94E(ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  br i1 %i.k, label %bb.g, label %_ZN14unsafe_libyaml6dumper17yaml_emitter_open17hd5b11c9a89eb1244E.exit

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.g, align 8
  br label %_ZN14unsafe_libyaml6dumper17yaml_emitter_open17hd5b11c9a89eb1244E.exit

_ZN14unsafe_libyaml6dumper17yaml_emitter_open17hd5b11c9a89eb1244E.exit: ; preds = %bb.f, %bb.g
  %. = phi ptr [ @14, %bb.f ], [ @15, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = load i8, ptr %., align 1, !range !10, !noundef !6
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.al, label %bb.h

bb.h:                                             ; preds = %_ZN14unsafe_libyaml6dumper17yaml_emitter_open17hd5b11c9a89eb1244E.exit, %bb.e
  %i.n = load ptr, ptr %1, align 8, !noundef !6   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !noundef !6 ; 2 uses
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load i8, ptr %i.g, align 8, !range !10, !noundef !6
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = load i8, ptr %i.g, align 8, !range !10, !noundef !6
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @35, i64 noundef 17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @34, i64 noundef 104, i32 noundef 58) #20
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 377 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !range !10, !noundef !6
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.ak, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, i8 0, i64 48, i1 false)
  store i32 2, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, i8 0, i64 48, i1 false)
  %i.z = call noundef zeroext i1 @_ZN14unsafe_libyaml7emitter17yaml_emitter_emit17h18610a5412076d94E(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  br i1 %i.z, label %bb.n, label %_ZN14unsafe_libyaml6dumper18yaml_emitter_close17h362e0680f3d44946E.exit

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %i.v, align 1
  br label %bb.ak

_ZN14unsafe_libyaml6dumper18yaml_emitter_close17h362e0680f3d44946E.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.al

bb.o:                                             ; preds = %bb.i
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @35, i64 noundef 17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @34, i64 noundef 104, i32 noundef 116) #20
  unreachable

bb.p:                                             ; preds = %bb.i
  %i.aa = ptrtoint ptr %i.p to i64
  %i.ab = ptrtoint ptr %i.n to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv i64 %i.ac, 96
  %i.ae = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ad, i64 12) ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %bb.q, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h2b0fe3050e347818E.exit", !prof !4

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17hc4dd84d397823d12E()
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h2b0fe3050e347818E.exit": ; preds = %bb.p
  %i.ag = extractvalue { i64, i1 } %i.ae, 0
  %i.ah = add nuw nsw i64 %i.ag, 8                ; 4 uses
  %i.ai = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.ah, i64 noundef 8)
  br i1 %i.ai, label %bb.s, label %bb.r, !prof !5

bb.r:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h2b0fe3050e347818E.exit"
  tail call void @_ZN14unsafe_libyaml3ops3die6do_die17h7e91ebcb478cf97fE() #20
  unreachable

bb.s:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h2b0fe3050e347818E.exit"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.aj = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef 8) #21 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.t, label %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit, !prof !4

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.ah) #20
  unreachable

_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit: ; preds = %bb.s
  store i64 %i.ah, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 9 uses
  store ptr %i.al, ptr %i.am, align 8
  %i.an = load ptr, ptr %i.o, align 8, !noundef !6
  %i.ao = load ptr, ptr %1, align 8, !noundef !6
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = sdiv i64 %i.ar, 96
  %i.at = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.as, i64 12) ; 2 uses
  %i.au = extractvalue { i64, i1 } %i.at, 1
  br i1 %i.au, label %bb.u, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h2b0fe3050e347818E.exit20", !prof !4

bb.u:                                             ; preds = %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit
  tail call fastcc void @_ZN14unsafe_libyaml3ops3die17hc4dd84d397823d12E()
  unreachable

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h2b0fe3050e347818E.exit20": ; preds = %_ZN14unsafe_libyaml3api11yaml_malloc17hede18d1f2b9cdb2cE.exit
  %i.av = extractvalue { i64, i1 } %i.at, 0
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.al, i8 0, i64 %i.av, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, i8 0, i64 48, i1 false)
  store i32 3, ptr %i.c, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, i8 0, i64 48, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.az = load <2 x ptr>, ptr %i.ax, align 8
  store <2 x ptr> %i.az, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !noundef !6
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.bb, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.be = load i8, ptr %i.bd, align 8, !range !10, !noundef !6
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 %i.be, ptr %i.bf, align 8
  %i.bg = call noundef zeroext i1 @_ZN14unsafe_libyaml7emitter17yaml_emitter_emit17h18610a5412076d94E(ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  br i1 %i.bg, label %bb.v, label %bb.al

bb.v:                                             ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h2b0fe3050e347818E.exit20"
  %i.bh = load ptr, ptr %i.f, align 8, !noundef !6
  %i.bi = load ptr, ptr %i.bh, align 8, !noundef !6 ; 5 uses
  %i.bj = load ptr, ptr %i.am, align 8, !noundef !6 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !noundef !6
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4
  %i.bm = load ptr, ptr %i.am, align 8, !noundef !6 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 4, !noundef !6
  switch i32 %i.bn, label %_ZN14unsafe_libyaml6dumper24yaml_emitter_anchor_node17he922d79992a470a6E.exit [
    i32 1, label %bb.w
    i32 2, label %bb.ah
  ]

bb.w:                                             ; preds = %bb.v
  %i.bo = load i32, ptr %i.bi, align 8, !range !9, !noundef !6
  switch i32 %i.bo, label %_ZN14unsafe_libyaml6dumper24yaml_emitter_anchor_node17he922d79992a470a6E.exit [
    i32 2, label %bb.x
    i32 3, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !noundef !6 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !noundef !6
  %i.bt = icmp ult ptr %i.bq, %i.bs
  br i1 %i.bt, label %.lr.ph18.i, label %_ZN14unsafe_libyaml6dumper24yaml_emitter_anchor_node17he922d79992a470a6E.exit

.lr.ph18.i:                                       ; preds = %bb.x
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !noundef !6 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !noundef !6
  %i.bz = icmp ult ptr %i.bw, %i.by
  br i1 %i.bz, label %.lr.ph.i, label %_ZN14unsafe_libyaml6dumper24yaml_emitter_anchor_node17he922d79992a470a6E.exit

.lr.ph.i:                                         ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  br label %bb.ac

bb.z:                                             ; preds = %bb.ab, %.lr.ph18.i
  %.sroa.0.017.i.a = phi ptr [ %i.bm, %.lr.ph18.i ], [ %3, %bb.ab ]
  %.sroa.0.017.i = phi ptr [ %i.bq, %.lr.ph18.i ], [ %i.cn, %bb.ab ] ; 2 uses
  %2 = load i32, ptr %.sroa.0.017.i, align 4, !noundef !6
  %i.cb = add i32 %2, -1
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr inbounds [12 x i8], ptr %.sroa.0.017.i.a, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !noundef !6
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 4
  %i.cg = load ptr, ptr %i.am, align 8, !noundef !6 ; 2 uses
  %i.ch = getelementptr inbounds [12 x i8], ptr %i.cg, i64 %i.cc ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !noundef !6
  %i.cj = icmp eq i32 %i.ci, 2
  br i1 %i.cj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i32, ptr %i.bu, align 8, !noundef !6
  %i.cl = add i32 %i.ck, 1                        ; 2 uses
  store i32 %i.cl, ptr %i.bu, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 %i.cl, ptr %i.cm, align 4
  %.pre20.i = load ptr, ptr %i.am, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %3 = phi ptr [ %i.cg, %bb.z ], [ %.pre20.i, %bb.aa ]
  %i.cn = getelementptr i8, ptr %.sroa.0.017.i, i64 4 ; 2 uses
  %i.co = load ptr, ptr %i.br, align 8, !noundef !6
  %i.cp = icmp ult ptr %i.cn, %i.co
  br i1 %i.cp, label %bb.z, label %_ZN14unsafe_libyaml6dumper24yaml_emitter_anchor_node17he922d79992a470a6E.exit

bb.ac:                                            ; preds = %bb.ag, %.lr.ph.i
  %.sroa.03.016.i = phi ptr [ %i.bw, %.lr.ph.i ], [ %i.dt, %bb.ag ] ; 3 uses
  %i.cq = load i32, ptr %.sroa.03.016.i, align 4, !noundef !6
  %i.cr = load ptr, ptr %i.am, align 8, !noundef !6
  %i.cs = add i32 %i.cq, -1
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %i.cu = getelementptr inbounds [12 x i8], ptr %i.cr, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !noundef !6
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 4
  %i.cx = load ptr, ptr %i.am, align 8, !noundef !6 ; 2 uses
  %i.cy = getelementptr inbounds [12 x i8], ptr %i.cx, i64 %i.ct ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !noundef !6
  %i.da = icmp eq i32 %i.cz, 2
  br i1 %i.da, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.db = load i32, ptr %i.ca, align 8, !noundef !6
  %i.dc = add i32 %i.db, 1                        ; 2 uses
  store i32 %i.dc, ptr %i.ca, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 %i.dc, ptr %i.dd, align 4
  %.pre.i = load ptr, ptr %i.am, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.de = phi ptr [ %i.cx, %bb.ac ], [ %.pre.i, %bb.ad ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.03.016.i, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !noundef !6
  %i.dh = add i32 %i.dg, -1
  %i.di = sext i32 %i.dh to i64                   ; 2 uses
  %i.dj = getelementptr inbounds [12 x i8], ptr %i.de, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !noundef !6
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 4
  %i.dm = load ptr, ptr %i.am, align 8, !noundef !6
  %i.dn = getelementptr inbounds [12 x i8], ptr %i.dm, i64 %i.di ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !noundef !6
  %i.dp = icmp eq i32 %i.do, 2
  br i1 %i.dp, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dq = load i32, ptr %i.ca, align 8, !noundef !6
  %i.dr = add i32 %i.dq, 1                        ; 2 uses
  store i32 %i.dr, ptr %i.ca, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store i32 %i.dr, ptr %i.ds, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dt = getelementptr i8, ptr %.sroa.03.016.i, i64 8 ; 2 uses
  %i.du = load ptr, ptr %i.bx, align 8, !noundef !6
  %i.dv = icmp ult ptr %i.dt, %i.du
  br i1 %i.dv, label %bb.ac, label %_ZN14unsafe_libyaml6dumper24yaml_emitter_anchor_node17he922d79992a470a6E.exit

bb.ah:                                            ; preds = %bb.v
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8, !noundef !6
  %i.dy = add i32 %i.dx, 1                        ; 2 uses
  store i32 %i.dy, ptr %i.dw, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i32 %i.dy, ptr %i.dz, align 4
  br label %_ZN14unsafe_libyaml6dumper24yaml_emitter_anchor_node17he922d79992a470a6E.exit

_ZN14unsafe_libyaml6dumper24yaml_emitter_anchor_node17he922d79992a470a6E.exit: ; preds = %bb.ag, %bb.ab, %bb.v, %bb.w, %bb.x, %bb.y, %bb.ah
  %i.ea = tail call fastcc noundef zeroext i1 @_ZN14unsafe_libyaml6dumper22yaml_emitter_dump_node17haeabeaa28b8bc8baE(ptr noundef nonnull %0, i32 noundef 1)
  br i1 %i.ea, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %_ZN14unsafe_libyaml6dumper24yaml_emitter_anchor_node17he922d79992a470a6E.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, i8 0, i64 48, i1 false)
  store i32 4, ptr %i.c, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, i8 0, i64 48, i1 false)
  %i.ec = load i8, ptr %i.eb, align 1, !range !10, !noundef !6
  store i8 %i.ec, ptr %i.ay, align 8
  %i.ed = call noundef zeroext i1 @_ZN14unsafe_libyaml7emitter17yaml_emitter_emit17h18610a5412076d94E(ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  br i1 %i.ed, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai, %bb.ak
  br label %bb.al

bb.ak:                                            ; preds = %bb.n, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aj

bb.al:                                            ; preds = %bb.ai, %_ZN14unsafe_libyaml6dumper24yaml_emitter_anchor_node17he922d79992a470a6E.exit, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h2b0fe3050e347818E.exit20", %_ZN14unsafe_libyaml6dumper17yaml_emitter_open17hd5b11c9a89eb1244E.exit, %_ZN14unsafe_libyaml6dumper18yaml_emitter_close17h362e0680f3d44946E.exit, %bb.aj
  %.sroa.0.1 = phi i1 [ true, %bb.aj ], [ false, %_ZN14unsafe_libyaml6dumper18yaml_emitter_close17h362e0680f3d44946E.exit ], [ false, %_ZN14unsafe_libyaml6dumper17yaml_emitter_open17hd5b11c9a89eb1244E.exit ], [ false, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceMul$GT$9force_mul17h2b0fe3050e347818E.exit20" ], [ false, %_ZN14unsafe_libyaml6dumper24yaml_emitter_anchor_node17he922d79992a470a6E.exit ], [ false, %bb.ai ]
  tail call fastcc void @_ZN14unsafe_libyaml6dumper40yaml_emitter_delete_document_and_anchors17haafc6b4b53c04222E(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN14unsafe_libyaml6dumper17yaml_emitter_open17hd5b11c9a89eb1244E(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4, i64 noundef 18, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @34, i64 noundef 104, i32 noundef 28) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !10, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, i8 0, i64 48, i1 false)
  store i32 1, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  %i.g = call noundef zeroext i1 @_ZN14unsafe_libyaml7emitter17yaml_emitter_emit17h18610a5412076d94E(ptr noundef nonnull %0, ptr noundef nonnull %i.a) ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @36, i64 noundef 18, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @34, i64 noundef 104, i32 noundef 29) #20
  unreachable

bb.f:                                             ; preds = %bb.d
  store i8 1, ptr %i.c, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN14unsafe_libyaml6dumper18yaml_emitter_close17h362e0680f3d44946E(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @4, i64 noundef 18, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @34, i64 noundef 104, i32 noundef 57) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.d = load i8, ptr %i.c, align 8, !range !10, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN14unsafe_libyaml7externs13__assert_fail17h9509971b29e02ea8E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @35, i64 noundef 17, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @34, i64 noundef 104, i32 noundef 58) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 377 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !10, !noundef !6
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, i8 0, i64 48, i1 false)
  store i32 2, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i8 0, i64 48, i1 false)
  %i.j = call noundef zeroext i1 @_ZN14unsafe_libyaml7emitter17yaml_emitter_emit17h18610a5412076d94E(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.f, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0.0 = phi i1 [ true, %bb.g ], [ false, %bb.f ], [ true, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN14unsafe_libyaml6dumper22yaml_emitter_dump_node17haeabeaa28b8bc8baE(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 14 uses
  %i.b = alloca [96 x i8], align 8                ; 14 uses
  %i.c = alloca [96 x i8], align 8                ; 13 uses
  %i.d = alloca [96 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.j = load ptr, ptr %i.i, align 8, !noundef !6
  %i.k = load ptr, ptr %i.j, align 8, !noundef !6
  %i.l = sext i32 %1 to i64
  %i.m = getelementptr [96 x i8], ptr %i.k, i64 %i.l ; 13 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -96
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !noundef !6 ; 2 uses
end_hunk_0
