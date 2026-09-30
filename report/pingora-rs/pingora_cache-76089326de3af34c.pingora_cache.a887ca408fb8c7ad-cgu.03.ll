Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_cache-76089326de3af34c.pingora_cache.a887ca408fb8c7ad-cgu.03?download=true
inline.NumInlined: 444
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader5buildtECset5b41vfmiv_13pingora_cache:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i16 %i.l, ptr %i.m, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %i.c, i64 232, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsq_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_7HdrName10from_bytesNCINvXs4_NtNtB8_3map14as_header_nameReNtB1d_6Sealed4findNtNtB8_5value11HeaderValueE0INtNtCskKLDkoKarTP_4core6option6OptionTjjEEECset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [72 x i8], align 16               ; 14 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [64 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvNtNtCs84JG9zk80ZV_4http6header4name9parse_hdr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull dereferenceable(64) %i.h, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(256) @10)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = load i8, ptr %i.i, align 8, !range !21, !noundef !11 ; 7 uses
  %i.k = icmp eq i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 2, ptr %0, align 8
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %.sroa.015.0.copyload = load ptr, ptr %i.g, align 8 ; 17 uses
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.416.0.copyload = load i64, ptr %.sroa.416.0..sroa_idx, align 8 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1323, !noalias !1324, !noundef !11 ; 4 uses
  %i.n = icmp ult i64 %i.m, 88686269585142076
  call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %_RNCINvXs4_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameReNtB8_6Sealed4findNtNtBc_5value11HeaderValueE0Cset5b41vfmiv_13pingora_cache.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  %i.p = load i64, ptr %3, align 8, !range !16, !alias.scope !1326, !noalias !1327, !noundef !11
  %i.q = icmp eq i64 %i.p, 2
  br i1 %i.q, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1328
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.614.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.s = load <2 x i64>, ptr %i.r, align 8, !alias.scope !1326, !noalias !1327 ; 3 uses
  %i.t = shufflevector <2 x i64> %i.s, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.u = xor <2 x i64> %i.t, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.u, ptr %i.f, align 16, !noalias !1328
  %i.v = shufflevector <2 x i64> %i.s, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.w = xor <2 x i64> %i.v, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.w, ptr %.sroa.513.0..sroa_idx.i.i.i, align 16, !noalias !1328
  store <2 x i64> %i.s, ptr %.sroa.7.0..sroa_idx.i.i.i, align 16, !noalias !1328
  %.sroa.915.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.915.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !noalias !1328
  %i.x = icmp ne i8 %i.j, 2                       ; 2 uses
  %i.y = zext i1 %i.x to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1329
  store i64 %i.y, ptr %i.e, align 8, !noalias !1329
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #30, !noalias !1330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1329
  br i1 %i.x, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.z = trunc nuw i8 %i.j to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0.copyload) ]
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload, i64 %.sroa.416.0.copyload
  %i.ab = icmp samesign eq i64 %.sroa.416.0.copyload, 0
  br i1 %i.ab, label %_RINvXsB_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_7HdrNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECset5b41vfmiv_13pingora_cache.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.015.0.copyload, i64 noundef %.sroa.416.0.copyload) #30, !noalias !1331
  br label %_RINvXsB_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_7HdrNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECset5b41vfmiv_13pingora_cache.exit.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.015.0.copyload, %bb.g ] ; 2 uses
  %i.ac = load i8, ptr %.sroa.0.02.i.i.i.i.i.i, align 1, !noalias !1332, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1332
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr @10, i64 %i.ad
  %i.ag = load i8, ptr %i.af, align 1, !noalias !1332, !noundef !11
  store i8 %i.ag, ptr %i.d, align 1, !noalias !1332
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1) #30, !noalias !1331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1332
  %i.ah = icmp eq ptr %i.ae, %i.aa
  br i1 %i.ah, label %_RINvXsB_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_7HdrNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECset5b41vfmiv_13pingora_cache.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.ai = ptrtoint ptr %.sroa.015.0.copyload to i64
  %i.aj = and i64 %i.ai, 255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1333
  store i64 %i.aj, ptr %i.c, align 8, !noalias !1333
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #30, !noalias !1330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1333
  br label %_RINvXsB_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_7HdrNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECset5b41vfmiv_13pingora_cache.exit.i.i.i

_RINvXsB_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_7HdrNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECset5b41vfmiv_13pingora_cache.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.i, %bb.h, %bb.g
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.f, align 16, !alias.scope !1334, !noalias !1328
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !alias.scope !1334, !noalias !1328
  %.sroa.17.0.copyload.i.i.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i.i.i, align 16, !alias.scope !1334, !noalias !1328 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.614.0..sroa_idx.i.i.i, align 8, !alias.scope !1334, !noalias !1328
  %i.ak = load i64, ptr %.sroa.915.0..sroa_idx.i.i.i, align 16, !alias.scope !1334, !noalias !1328, !noundef !11
  %i.al = shl i64 %i.ak, 56
  %i.am = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !alias.scope !1334, !noalias !1328, !noundef !11
  %i.an = or i64 %i.al, %i.am                     ; 2 uses
  %i.ao = xor i64 %i.an, %.sroa.22.0.copyload.i.i.i.i ; 3 uses
  %i.ap = add i64 %.sroa.17.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i ; 3 uses
  %i.aq = add i64 %i.ao, %.sroa.10.0.copyload.i.i.i.i ; 2 uses
  %i.ar = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i, i64 13)
  %i.as = xor i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.au = xor i64 %i.at, %i.aq                    ; 3 uses
  %i.av = call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 32)
  %i.aw = add i64 %i.aq, %i.as                    ; 3 uses
  %i.ax = add i64 %i.au, %i.av                    ; 2 uses
  %i.ay = call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 17)
  %i.az = xor i64 %i.aw, %i.ay                    ; 3 uses
  %i.ba = call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 21)
  %i.bb = xor i64 %i.ba, %i.ax                    ; 3 uses
  %i.bc = call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 32)
  %i.bd = xor i64 %i.ax, %i.an
  %i.be = xor i64 %i.bc, 255
  %i.bf = add i64 %i.bd, %i.az                    ; 3 uses
  %i.bg = add i64 %i.bb, %i.be                    ; 2 uses
  %i.bh = call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 13)
  %i.bi = xor i64 %i.bf, %i.bh                    ; 3 uses
  %i.bj = call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 16)
  %i.bk = xor i64 %i.bj, %i.bg                    ; 3 uses
  %i.bl = call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 32)
  %i.bm = add i64 %i.bi, %i.bg                    ; 3 uses
  %i.bn = add i64 %i.bk, %i.bl                    ; 2 uses
  %i.bo = call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 17)
  %i.bp = xor i64 %i.bm, %i.bo                    ; 3 uses
  %i.bq = call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 21)
  %i.br = xor i64 %i.bq, %i.bn                    ; 3 uses
  %i.bs = call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 32)
  %i.bt = add i64 %i.bp, %i.bn                    ; 3 uses
  %i.bu = add i64 %i.br, %i.bs                    ; 2 uses
  %i.bv = call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 13)
  %i.bw = xor i64 %i.bv, %i.bt                    ; 3 uses
  %i.bx = call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 16)
  %i.by = xor i64 %i.bx, %i.bu                    ; 3 uses
  %i.bz = call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 32)
  %i.ca = add i64 %i.bw, %i.bu                    ; 3 uses
  %i.cb = add i64 %i.by, %i.bz                    ; 2 uses
  %i.cc = call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 17)
  %i.cd = xor i64 %i.cc, %i.ca                    ; 3 uses
  %i.ce = call noundef i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 21)
  %i.cf = xor i64 %i.ce, %i.cb                    ; 2 uses
  %i.cg = call noundef i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 32)
  %i.ch = add i64 %i.cd, %i.cb
  %i.ci = add i64 %i.cf, %i.cg                    ; 2 uses
  %i.cj = call noundef i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 13)
  %i.ck = xor i64 %i.cj, %i.ch                    ; 2 uses
  %i.cl = shl i64 %i.cf, 16
  %i.cm = xor i64 %i.cl, %i.ci
  %i.cn = add i64 %i.ck, %i.ci                    ; 2 uses
  %i.co = lshr i64 %i.ck, 47
  %i.cp = lshr i64 %i.cm, 43
  %i.cq = lshr i64 %i.cn, 32
  %i.cr = xor i64 %i.cp, %i.co
  %i.cs = xor i64 %i.cr, %i.cq
  %i.ct = xor i64 %i.cs, %i.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1328
  br label %_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECset5b41vfmiv_13pingora_cache.exit.i.i

bb.j:                                             ; preds = %bb.d
  %i.cu = icmp ne i8 %i.j, 2                      ; 2 uses
  %i.cv = zext i1 %i.cu to i64
  %i.cw = xor i64 %i.cv, -3750763034362895579
  %i.cx = mul i64 %i.cw, 2232315406967589409      ; 6 uses
  br i1 %i.cu, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0.copyload) ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload, i64 %.sroa.416.0.copyload ; 2 uses
  %i.cz = icmp samesign eq i64 %.sroa.416.0.copyload, 0
  br i1 %i.cz, label %_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECset5b41vfmiv_13pingora_cache.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %4 = trunc nuw i8 %i.j to i1
  br i1 %4, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.i.i20.i.i.i.preheader

.lr.ph.i.i.i20.i.i.i.preheader:                   ; preds = %bb.l
  %xtraiter = and i64 %.sroa.416.0.copyload, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i20.i.i.i.prol.loopexit, label %.lr.ph.i.i.i20.i.i.i.prol

.lr.ph.i.i.i20.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i20.i.i.i.preheader, %.lr.ph.i.i.i20.i.i.i.prol
  %.sroa.0.010.i.i.i.i.i.i.prol = phi ptr [ %i.dh, %.lr.ph.i.i.i20.i.i.i.prol ], [ %.sroa.015.0.copyload, %.lr.ph.i.i.i20.i.i.i.preheader ] ; 2 uses
  %.lcssa789.i.i.i.i.i.i.prol = phi i64 [ %i.dg, %.lr.ph.i.i.i20.i.i.i.prol ], [ %i.cx, %.lr.ph.i.i.i20.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i20.i.i.i.prol ], [ 0, %.lr.ph.i.i.i20.i.i.i.preheader ]
  %i.da = load i8, ptr %.sroa.0.010.i.i.i.i.i.i.prol, align 1, !noalias !1335, !noundef !11
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @10, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !noalias !1335, !noundef !11
  %i.de = zext i8 %i.dd to i64
  %i.df = xor i64 %.lcssa789.i.i.i.i.i.i.prol, %i.de
  %i.dg = mul i64 %i.df, 1099511628211            ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i20.i.i.i.prol.loopexit, label %.lr.ph.i.i.i20.i.i.i.prol, !llvm.loop !1304

.lr.ph.i.i.i20.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i20.i.i.i.prol, %.lr.ph.i.i.i20.i.i.i.preheader
  %.lcssa62.unr = phi i64 [ poison, %.lr.ph.i.i.i20.i.i.i.preheader ], [ %i.dg, %.lr.ph.i.i.i20.i.i.i.prol ]
  %.sroa.0.010.i.i.i.i.i.i.unr = phi ptr [ %.sroa.015.0.copyload, %.lr.ph.i.i.i20.i.i.i.preheader ], [ %i.dh, %.lr.ph.i.i.i20.i.i.i.prol ]
  %.lcssa789.i.i.i.i.i.i.unr = phi i64 [ %i.cx, %.lr.ph.i.i.i20.i.i.i.preheader ], [ %i.dg, %.lr.ph.i.i.i20.i.i.i.prol ]
  %i.di = icmp ult i64 %.sroa.416.0.copyload, 4
  br i1 %i.di, label %_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECset5b41vfmiv_13pingora_cache.exit.i.i, label %.lr.ph.i.i.i20.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.l
  %xtraiter63 = and i64 %.sroa.416.0.copyload, 7  ; 2 uses
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.prol = phi i64 [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.i.i.i.prol = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.sroa.015.0.copyload, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter65 = phi i64 [ %prol.iter65.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.dk = load i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.prol, align 1, !alias.scope !1336, !noalias !1337, !noundef !11
  %i.dl = zext i8 %i.dk to i64
  %i.dm = xor i64 %.sroa.0.06.i.i.i.i.i.i.i.prol, %i.dl
  %i.dn = mul i64 %i.dm, 1099511628211            ; 3 uses
  %prol.iter65.next = add i64 %prol.iter65, 1     ; 2 uses
  %prol.iter65.cmp.not = icmp eq i64 %prol.iter65.next, %xtraiter63
  br i1 %prol.iter65.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !1308

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.lcssa60.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.i.i.i.unr = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.015.0.copyload, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.do = icmp ult i64 %.sroa.416.0.copyload, 8
  br i1 %i.do, label %_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECset5b41vfmiv_13pingora_cache.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i = phi i64 [ %i.fc, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 1
  %i.dq = load i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, align 1, !alias.scope !1336, !noalias !1337, !noundef !11
  %i.dr = zext i8 %i.dq to i64
  %i.ds = xor i64 %.sroa.0.06.i.i.i.i.i.i.i, %i.dr
  %i.dt = mul i64 %i.ds, 1099511628211
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 2
  %i.dv = load i8, ptr %i.dp, align 1, !alias.scope !1336, !noalias !1337, !noundef !11
  %i.dw = zext i8 %i.dv to i64
  %i.dx = xor i64 %i.dt, %i.dw
  %i.dy = mul i64 %i.dx, 1099511628211
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 3
  %i.ea = load i8, ptr %i.du, align 1, !alias.scope !1336, !noalias !1337, !noundef !11
  %i.eb = zext i8 %i.ea to i64
  %i.ec = xor i64 %i.dy, %i.eb
  %i.ed = mul i64 %i.ec, 1099511628211
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 4
  %i.ef = load i8, ptr %i.dz, align 1, !alias.scope !1336, !noalias !1337, !noundef !11
  %i.eg = zext i8 %i.ef to i64
  %i.eh = xor i64 %i.ed, %i.eg
  %i.ei = mul i64 %i.eh, 1099511628211
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 5
  %i.ek = load i8, ptr %i.ee, align 1, !alias.scope !1336, !noalias !1337, !noundef !11
  %i.el = zext i8 %i.ek to i64
  %i.em = xor i64 %i.ei, %i.el
  %i.en = mul i64 %i.em, 1099511628211
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 6
  %i.ep = load i8, ptr %i.ej, align 1, !alias.scope !1336, !noalias !1337, !noundef !11
  %i.eq = zext i8 %i.ep to i64
  %i.er = xor i64 %i.en, %i.eq
  %i.es = mul i64 %i.er, 1099511628211
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 7
  %i.eu = load i8, ptr %i.eo, align 1, !alias.scope !1336, !noalias !1337, !noundef !11
  %i.ev = zext i8 %i.eu to i64
  %i.ew = xor i64 %i.es, %i.ev
  %i.ex = mul i64 %i.ew, 1099511628211
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ez = load i8, ptr %i.et, align 1, !alias.scope !1336, !noalias !1337, !noundef !11
  %i.fa = zext i8 %i.ez to i64
  %i.fb = xor i64 %i.ex, %i.fa
  %i.fc = mul i64 %i.fb, 1099511628211            ; 2 uses
  %i.fd = icmp eq ptr %i.ey, %i.cy
  br i1 %i.fd, label %_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECset5b41vfmiv_13pingora_cache.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i20.i.i.i:                             ; preds = %.lr.ph.i.i.i20.i.i.i.prol.loopexit, %.lr.ph.i.i.i20.i.i.i
  %.sroa.0.010.i.i.i.i.i.i = phi ptr [ %i.gj, %.lr.ph.i.i.i20.i.i.i ], [ %.sroa.0.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i20.i.i.i.prol.loopexit ] ; 5 uses
  %.lcssa789.i.i.i.i.i.i = phi i64 [ %i.gi, %.lr.ph.i.i.i20.i.i.i ], [ %.lcssa789.i.i.i.i.i.i.unr, %.lr.ph.i.i.i20.i.i.i.prol.loopexit ]
  %i.fe = load i8, ptr %.sroa.0.010.i.i.i.i.i.i, align 1, !noalias !1335, !noundef !11
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @10, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !1335, !noundef !11
  %i.fi = zext i8 %i.fh to i64
  %i.fj = xor i64 %.lcssa789.i.i.i.i.i.i, %i.fi
  %i.fk = mul i64 %i.fj, 1099511628211
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !noalias !1335, !noundef !11
  %i.fn = zext i8 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr @10, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !noalias !1335, !noundef !11
  %i.fq = zext i8 %i.fp to i64
  %i.fr = xor i64 %i.fk, %i.fq
  %i.fs = mul i64 %i.fr, 1099511628211
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 2
  %i.fu = load i8, ptr %i.ft, align 1, !noalias !1335, !noundef !11
  %i.fv = zext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr @10, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !noalias !1335, !noundef !11
  %i.fy = zext i8 %i.fx to i64
  %i.fz = xor i64 %i.fs, %i.fy
  %i.ga = mul i64 %i.fz, 1099511628211
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 3
  %i.gc = load i8, ptr %i.gb, align 1, !noalias !1335, !noundef !11
  %i.gd = zext i8 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr @10, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !noalias !1335, !noundef !11
  %i.gg = zext i8 %i.gf to i64
  %i.gh = xor i64 %i.ga, %i.gg
  %i.gi = mul i64 %i.gh, 1099511628211            ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.cy
  br i1 %i.gk, label %_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECset5b41vfmiv_13pingora_cache.exit.i.i, label %.lr.ph.i.i.i20.i.i.i

bb.m:                                             ; preds = %bb.j
  %i.gl = ptrtoint ptr %.sroa.015.0.copyload to i64
  %i.gm = and i64 %i.gl, 255
  %i.gn = xor i64 %i.gm, %i.cx
  %i.go = mul i64 %i.gn, 2232315406967589409
  br label %_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECset5b41vfmiv_13pingora_cache.exit.i.i

_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECset5b41vfmiv_13pingora_cache.exit.i.i: ; preds = %.lr.ph.i.i.i20.i.i.i.prol.loopexit, %.lr.ph.i.i.i20.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.m, %bb.k, %_RINvXsB_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_7HdrNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECset5b41vfmiv_13pingora_cache.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.ct, %_RINvXsB_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_7HdrNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECset5b41vfmiv_13pingora_cache.exit.i.i.i ], [ %i.fc, %.lr.ph.i.i.i.i.i.i.i ], [ %i.go, %bb.m ], [ %i.cx, %bb.k ], [ %.lcssa60.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.lcssa62.unr, %.lr.ph.i.i.i20.i.i.i.prol.loopexit ], [ %i.gi, %.lr.ph.i.i.i20.i.i.i ]
  %i.gp = trunc i64 %.sroa.0.0.i.i.i to i16
  %i.gq = and i16 %i.gp, 32767                    ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.gs = load i16, ptr %i.gr, align 8, !alias.scope !1323, !noalias !1324, !noundef !11 ; 3 uses
  %i.gt = and i16 %i.gq, %i.gs
  %i.gu = zext nneg i16 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !1323, !noalias !1324, !noundef !11 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !1323, !noalias !1324, !nonnull !11
  %i.gz = zext i16 %i.gs to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8, !alias.scope !1323, !noalias !1324, !nonnull !11
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.not1.i.i.i = icmp eq i8 %i.j, 2
  %i.he = ptrtoint ptr %.sroa.015.0.copyload to i64
  %i.hf = trunc i64 %i.he to i8
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload, i64 %.sroa.416.0.copyload
  %.not = icmp eq i64 %i.gw, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXss_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i, %_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECset5b41vfmiv_13pingora_cache.exit.i.i
  %.sroa.05.0.i.i.ph = phi i64 [ %i.ht, %_RNvXss_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i ], [ 0, %_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECset5b41vfmiv_13pingora_cache.exit.i.i ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.hu, %_RNvXss_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i ], [ %i.gu, %_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECset5b41vfmiv_13pingora_cache.exit.i.i ] ; 2 uses
  %i.hh = icmp ult i64 %.sroa.0.0.i.i.ph, %i.gw   ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.hh, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.hh, i64 %.sroa.0.0.i.i.ph, i64 0 ; 9 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.hj = load i16, ptr %i.hi, align 2, !noalias !1338, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq i16 %i.hj, -1
  br i1 %.not.i.i, label %_RNCINvXs4_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameReNtB8_6Sealed4findNtNtBc_5value11HeaderValueE0Cset5b41vfmiv_13pingora_cache.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.hk = zext i16 %i.hj to i64                   ; 7 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  %i.hm = load i16, ptr %i.hl, align 2, !noalias !1338, !noundef !11 ; 2 uses
  %i.hn = and i16 %i.hm, %i.gs
  %i.ho = zext i16 %i.hn to i64
  %i.hp = sub i64 %.sroa.0.0.i.i.ph.mux, %i.ho
  %i.hq = and i64 %i.hp, %i.gz
  %i.hr = icmp samesign ugt i64 %.sroa.05.0.i.i.ph, %i.hq
  br i1 %i.hr, label %_RNCINvXs4_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameReNtB8_6Sealed4findNtNtBc_5value11HeaderValueE0Cset5b41vfmiv_13pingora_cache.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hs = icmp eq i16 %i.hm, %i.gq
  br i1 %i.hs, label %bb.p, label %_RNvXss_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i

_RNvXss_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i: ; preds = %.lr.ph, %.split.i.i, %bb.w, %bb.t, %.split11.i.i, %bb.s, %bb.r, %bb.o
  %i.ht = add nuw nsw i64 %.sroa.05.0.i.i.ph, 1
  %i.hu = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer

bb.p:                                             ; preds = %bb.o
  %i.hv = icmp samesign ugt i64 %i.m, %i.hk
  br i1 %i.hv, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.hw = getelementptr inbounds nuw [104 x i8], ptr %i.hb, i64 %i.hk ; 6 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 64
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !1339, !noundef !11
  %.not.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  switch i8 %i.j, label %bb.w [
    i8 2, label %_RNvXss_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i
    i8 0, label %bb.t
  ]

bb.s:                                             ; preds = %bb.q
  br i1 %.not1.i.i.i, label %.split11.i.i, label %_RNvXss_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i

.split11.i.i:                                     ; preds = %bb.s
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 72
  %i.ia = load i8, ptr %i.hz, align 8, !range !13, !noalias !1339, !noundef !11
  %i.ib = icmp eq i8 %i.ia, %i.hf
  br i1 %i.ib, label %_RNCINvXs4_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameReNtB8_6Sealed4findNtNtBc_5value11HeaderValueE0Cset5b41vfmiv_13pingora_cache.exit, label %_RNvXss_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i

bb.t:                                             ; preds = %bb.r
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 72
  %i.id = load ptr, ptr %i.ic, align 8, !noalias !1339, !noundef !11 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hw, i64 80
  %i.if = load i64, ptr %i.ie, align 8, !noalias !1339, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  %.not.i.i.i.i = icmp eq i64 %i.if, %.sroa.416.0.copyload
  br i1 %.not.i.i.i.i, label %bb.u, label %_RNvXss_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i

bb.u:                                             ; preds = %bb.t
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 %.sroa.416.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1342
  store ptr %i.id, ptr %i.b, align 8, !noalias !1343
  store ptr %i.ig, ptr %i.hc, align 8, !noalias !1343
  store ptr %.sroa.015.0.copyload, ptr %i.a, align 8, !noalias !1343
  store ptr %i.hg, ptr %i.hd, align 8, !noalias !1343
  %i.ih = call noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !noalias !1344
  %i.ii = call noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !1344
  %..i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ii, i64 %i.ih) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1342
  %exitcond.not.i.i.i.i.i51 = icmp eq i64 %..i.i.i.i.i.i.i, 0
  br i1 %exitcond.not.i.i.i.i.i51, label %_RNCINvXs4_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameReNtB8_6Sealed4findNtNtBc_5value11HeaderValueE0Cset5b41vfmiv_13pingora_cache.exit, label %.lr.ph

bb.v:                                             ; preds = %.lr.ph
  %i.ij = add i64 %i.ik, 1                        ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ij, %..i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_RNCINvXs4_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameReNtB8_6Sealed4findNtNtBc_5value11HeaderValueE0Cset5b41vfmiv_13pingora_cache.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u, %bb.v
  %i.ik = phi i64 [ %i.ij, %bb.v ], [ 0, %bb.u ]  ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload, i64 %i.ik
  %.val.i.i.i.i.i = load i8, ptr %i.il, align 1, !alias.scope !1340, !noalias !1345, !noundef !11
  %.val6.i.i.i.i.i = load i8, ptr %i.im, align 1, !alias.scope !1341, !noalias !1346, !noundef !11
  %i.in = zext i8 %.val6.i.i.i.i.i to i64
  %i.io = getelementptr inbounds nuw i8, ptr @10, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !noalias !1347, !noundef !11
  %.not.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i, %i.ip
  br i1 %.not.i.i.i.i.i, label %bb.v, label %_RNvXss_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i

bb.w:                                             ; preds = %bb.r
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hw, i64 80
  %i.ir = load i64, ptr %i.iq, align 8, !noalias !1339, !noundef !11
  %i.is = icmp eq i64 %i.ir, %.sroa.416.0.copyload
  br i1 %i.is, label %.split.i.i, label %_RNvXss_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.w
  %i.it = getelementptr inbounds nuw i8, ptr %i.hw, i64 72
  %i.iu = load ptr, ptr %i.it, align 8, !noalias !1339, !noundef !11
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.iu, ptr nonnull %.sroa.015.0.copyload, i64 %.sroa.416.0.copyload), !noalias !1339
  %i.iv = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.iv, label %_RNCINvXs4_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameReNtB8_6Sealed4findNtNtBc_5value11HeaderValueE0Cset5b41vfmiv_13pingora_cache.exit, label %_RNvXss_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i

bb.x:                                             ; preds = %bb.p
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.hk, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #28, !noalias !1338
  unreachable

_RNCINvXs4_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameReNtB8_6Sealed4findNtNtBc_5value11HeaderValueE0Cset5b41vfmiv_13pingora_cache.exit: ; preds = %.split11.i.i, %.split.i.i, %.loopexit, %bb.n, %bb.u, %bb.v, %bb.c
  %.sroa.5.0 = phi i64 [ undef, %bb.c ], [ %i.hk, %bb.v ], [ %i.hk, %.split11.i.i ], [ %i.hk, %.split.i.i ], [ undef, %bb.n ], [ undef, %.loopexit ], [ %i.hk, %bb.u ]
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %.sroa.0.0.i.i.ph.mux, %bb.v ], [ %.sroa.0.0.i.i.ph.mux, %bb.u ], [ %.sroa.0.0.i.i.ph.mux, %bb.n ], [ %.sroa.0.0.i.i.ph.mux, %.loopexit ], [ %.sroa.0.0.i.i.ph.mux, %.split.i.i ], [ %.sroa.0.0.i.i.ph.mux, %.split11.i.i ]
  %.sink.i.i = phi i64 [ 0, %bb.c ], [ 1, %bb.v ], [ 1, %.split11.i.i ], [ 1, %.split.i.i ], [ 0, %bb.n ], [ 0, %.loopexit ], [ 1, %bb.u ]
  store i64 %.sink.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.y

bb.y:                                             ; preds = %_RNCINvXs4_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameReNtB8_6Sealed4findNtNtBc_5value11HeaderValueE0Cset5b41vfmiv_13pingora_cache.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCse0v0U5LqnG1_12thread_local5EntryINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !17, !alias.scope !1362, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_RNvXs_Cse0v0U5LqnG1_12thread_localINtB4_5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEENtNtNtBN_3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !1363 ; 2 uses
  %i.f = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECset5b41vfmiv_13pingora_cache.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1364, !nonnull !11, !noundef !11
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1365
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECset5b41vfmiv_13pingora_cache.exit.i.i.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !1363 ; 2 uses
  %i.h = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.h, label %_RNvXs_Cse0v0U5LqnG1_12thread_localINtB4_5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEENtNtNtBN_3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1364, !nonnull !11, !noundef !11
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1366
  br label %_RNvXs_Cse0v0U5LqnG1_12thread_localINtB4_5EntryINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEENtNtNtBN_3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECset5b41vfmiv_13pingora_cache.exit.i.i.i.i: ; preds = %bb.d, %bb.c
end_hunk_0
