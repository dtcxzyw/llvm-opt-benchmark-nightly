Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs_reader-20725db9c81728ed.glyphs_reader.109226b79a13bccd-cgu.03?download=true
inline.NumInlined: 392
inline.NumDeleted: 198
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs0_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_14ProductionNameNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.o, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1q_NtCsf3Ta7LF998c_4core3fmtRmNtB6_8UpperHex3fmtCs1qcNTItuk7F_13glyphs_reader, ptr %.sroa.47.0..sroa_idx, align 8
  %i.p = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !align !25, !noundef !5
  %i.s = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, ptr noundef nonnull @43, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtCs9NoVXegZYB5_8smol_str7SmolStrNtB6_7Display3fmtCs1qcNTItuk7F_13glyphs_reader, ptr %.sroa.43.0..sroa_idx, align 8
  %i.t = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !align !25, !noundef !5
  %i.w = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v, ptr noundef nonnull @44, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.1.in = phi i1 [ %i.n, %bb.c ], [ %i.s, %bb.d ], [ %i.w, %bb.e ]
  ret i1 %.sroa.0.1.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_8CategoryNtNtNtCsf3Ta7LF998c_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %2, label %bb.q [
    i64 4, label %bb.b
    i64 5, label %bb.d
    i64 9, label %bb.f
    i64 6, label %bb.h
    i64 11, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 1
  %i.b = icmp ne i32 %i.a, 1802658125
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.e, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.s

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 1
  %i.g = xor i32 %i.f, 1667330131
  %i.h = getelementptr i8, ptr %1, i64 4
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = xor i32 %i.j, 101
  %i.l = or i32 %i.g, %i.k
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.p, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  %i.q = load i64, ptr %1, align 1
  %i.r = xor i64 %i.q, 8031151179397358931
  %i.s = getelementptr i8, ptr %1, i64 8
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64
  %i.v = xor i64 %i.u, 114
  %i.w = or i64 %i.r, %i.v
  %i.x = icmp ne i64 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.aa, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.s

bb.h:                                             ; preds = %bb.a
  %i.ab = load i32, ptr %1, align 1
  %i.ac = xor i32 %i.ab, 1953785164
  %i.ad = getelementptr i8, ptr %1, i64 4
  %i.ae = load i16, ptr %i.ad, align 1
  %i.af = zext i16 %i.ae to i32
  %i.ag = xor i32 %i.af, 29285
  %i.ah = or i32 %i.ac, %i.ag
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.al, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.am = load i32, ptr %1, align 1
  %i.an = xor i32 %i.am, 1651340622
  %i.ao = getelementptr i8, ptr %1, i64 4
  %i.ap = load i16, ptr %i.ao, align 1
  %i.aq = zext i16 %i.ap to i32
  %i.ar = xor i32 %i.aq, 29285
  %i.as = or i32 %i.an, %i.ar
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.aw, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  %i.ax = load i32, ptr %1, align 1
  %i.ay = xor i32 %i.ax, 1651341651
  %i.az = getelementptr i8, ptr %1, i64 4
  %i.ba = load i16, ptr %i.az, align 1
  %i.bb = zext i16 %i.ba to i32
  %i.bc = xor i32 %i.bb, 27759
  %i.bd = or i32 %i.ay, %i.bc
  %i.be = icmp ne i32 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.bh, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.s

bb.n:                                             ; preds = %bb.a
  %i.bi = load i64, ptr %1, align 1
  %i.bj = xor i64 %i.bi, 8386113123885413712
  %i.bk = getelementptr i8, ptr %1, i64 3
  %i.bl = load i64, ptr %i.bk, align 1
  %i.bm = xor i64 %i.bl, 7957695015159166051
  %i.bn = or i64 %i.bj, %i.bm
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 6, ptr %i.br, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.s

bb.p:                                             ; preds = %bb.d
  %i.bs = load i32, ptr %1, align 1
  %i.bt = xor i32 %i.bs, 1701344335
  %i.bu = getelementptr i8, ptr %1, i64 4
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i32
  %i.bx = xor i32 %i.bw, 114
  %i.by = or i32 %i.bt, %i.bx
  %i.bz = icmp ne i32 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.f, %bb.l, %bb.b, %bb.a, %bb.p
  tail call void @_RNvMsB_Cs9NoVXegZYB5_8smol_strNtB5_4Repr3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 7, ptr %i.cc, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_11SubcategoryNtNtNtCsf3Ta7LF998c_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 2)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %3 = alloca [24 x i8], align 8                  ; 4 uses
  switch i64 %2, label %bb.bq [
    i64 7, label %bb.b
    i64 4, label %bb.f
    i64 11, label %bb.h
    i64 8, label %bb.j
    i64 13, label %bb.n
    i64 5, label %bb.v
    i64 6, label %bb.x
    i64 10, label %bb.ap
    i64 17, label %bb.az
    i64 9, label %bb.bd
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 1
  %i.b = xor i32 %i.a, 1667330131
  %i.c = getelementptr i8, ptr %1, i64 3
  %i.d = load i32, ptr %i.c, align 1
  %i.e = xor i32 %i.d, 1735289187
  %i.f = or i32 %i.b, %i.e
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.j, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.d:                                             ; preds = %bb.b
  %i.k = load i32, ptr %1, align 1
  %i.l = xor i32 %i.k, 1768186194
  %i.m = getelementptr i8, ptr %1, i64 3
  %i.n = load i32, ptr %i.m, align 1
  %i.o = xor i32 %i.n, 1818321769
  %i.p = or i32 %i.l, %i.o
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.bq

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.t, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.f:                                             ; preds = %bb.a
  %i.u = load i32, ptr %1, align 1
  %i.v = icmp ne i32 %i.u, 1752457549
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.y, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.h:                                             ; preds = %bb.a
  %i.z = load i64, ptr %1, align 1
  %i.aa = xor i64 %i.z, 8242558678183474515
  %i.ab = getelementptr i8, ptr %1, i64 3
  %i.ac = load i64, ptr %i.ab, align 1
  %i.ad = xor i64 %i.ac, 8390322045806932581
  %i.ae = or i64 %i.aa, %i.ad
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %bb.aj

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.ai, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.j:                                             ; preds = %bb.a
  %i.aj = load i64, ptr %1, align 1
  %i.ak = icmp ne i64 %i.aj, 8751185004910830919
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.an, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.l:                                             ; preds = %bb.f
  %i.ao = load i32, ptr %1, align 1
  %i.ap = icmp ne i32 %i.ao, 1752392004
  %i.aq = zext i1 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %bb.af

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.as, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.n:                                             ; preds = %bb.a
  %i.at = load i64, ptr %1, align 1
  %i.au = xor i64 %i.at, 2336349429245896004
  %i.av = getelementptr i8, ptr %1, i64 5
  %i.aw = load i64, ptr %i.av, align 1
  %i.ax = xor i64 %i.aw, 8388349482766462049
  %i.ay = or i64 %i.au, %i.ax
  %i.az = icmp ne i64 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.o, label %bb.ar

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 6, ptr %i.bc, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.p:                                             ; preds = %bb.j
  %i.bd = load i64, ptr %1, align 1
  %i.be = icmp ne i64 %i.bd, 8746956283274491203
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 7, ptr %i.bh, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.r:                                             ; preds = %bb.p
  %i.bi = load i64, ptr %1, align 1
  %i.bj = icmp ne i64 %i.bi, 7957695015191409222
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 8, ptr %i.bm, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.t:                                             ; preds = %bb.r
  %i.bn = load i64, ptr %1, align 1
  %i.bo = icmp ne i64 %i.bn, 7886488383074885960
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.u, label %bb.at

bb.u:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 9, ptr %i.br, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.v:                                             ; preds = %bb.a
  %i.bs = load i32, ptr %1, align 1
  %i.bt = xor i32 %i.bs, 1818324307
  %i.bu = getelementptr i8, ptr %1, i64 4
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i32
  %i.bx = xor i32 %i.bw, 108
  %i.by = or i32 %i.bt, %i.bx
  %i.bz = icmp ne i32 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 10, ptr %i.cc, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.x:                                             ; preds = %bb.a
  %i.cd = load i32, ptr %1, align 1
  %i.ce = xor i32 %i.cd, 1651340622
  %i.cf = getelementptr i8, ptr %1, i64 4
  %i.cg = load i16, ptr %i.cf, align 1
  %i.ch = zext i16 %i.cg to i32
  %i.ci = xor i32 %i.ch, 29285
  %i.cj = or i32 %i.ce, %i.ci
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 11, ptr %i.cn, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs
end_hunk_0
begin_hunk_1_@_RNvXs6_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_11SubcategoryNtNtNtCsf3Ta7LF998c_4core3str6traits7FromStr8from_str:bb.a
  br label %bb.bs

bb.at:                                            ; preds = %bb.t
  %i.gm = load i64, ptr %1, align 1
  %i.gn = icmp ne i64 %i.gm, 7308324465885870419
  %i.go = zext i1 %i.gn to i32
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 22, ptr %i.gq, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.av:                                            ; preds = %bb.at
  %i.gr = load i64, ptr %1, align 1
  %i.gs = icmp ne i64 %i.gr, 7310034287886559564
  %i.gt = zext i1 %i.gs to i32
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 23, ptr %i.gv, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.ax:                                            ; preds = %bb.av
  %i.gw = load i64, ptr %1, align 1
  %i.gx = icmp ne i64 %i.gw, 8243110581547331405
  %i.gy = zext i1 %i.gx to i32
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.ay, label %bb.bp

bb.ay:                                            ; preds = %bb.ax
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 24, ptr %i.ha, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.az:                                            ; preds = %bb.a
  %i.hb = load i128, ptr %1, align 1
  %i.hc = xor i128 %i.hb, 146762510120962197899692779380125298771
  %i.hd = getelementptr i8, ptr %1, i64 16
  %i.he = load i8, ptr %i.hd, align 1
  %i.hf = zext i8 %i.he to i128
  %i.hg = xor i128 %i.hf, 103
  %i.hh = or i128 %i.hc, %i.hg
  %i.hi = icmp ne i128 %i.hh, 0
  %i.hj = zext i1 %i.hi to i32
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.ba, label %bb.bq

bb.ba:                                            ; preds = %bb.az
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 25, ptr %i.hl, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.bb:                                            ; preds = %bb.an
  %i.hm = load i32, ptr %1, align 1
  %i.hn = xor i32 %i.hm, 1785687365
  %i.ho = getelementptr i8, ptr %1, i64 4
  %i.hp = load i8, ptr %i.ho, align 1
  %i.hq = zext i8 %i.hp to i32
  %i.hr = xor i32 %i.hq, 105
  %i.hs = or i32 %i.hn, %i.hr
  %i.ht = icmp ne i32 %i.hs, 0
  %i.hu = zext i1 %i.ht to i32
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 26, ptr %i.hw, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.bd:                                            ; preds = %bb.a
  %i.hx = load i64, ptr %1, align 1
  %i.hy = xor i64 %i.hx, 7956017139123711557
  %i.hz = getelementptr i8, ptr %1, i64 8
  %i.ia = load i8, ptr %i.hz, align 1
  %i.ib = zext i8 %i.ia to i64
  %i.ic = xor i64 %i.ib, 103
  %i.id = or i64 %i.hy, %i.ic
  %i.ie = icmp ne i64 %i.id, 0
  %i.if = zext i1 %i.ie to i32
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %bb.bd
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 27, ptr %i.ih, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.bf:                                            ; preds = %bb.aj
  %i.ii = load i64, ptr %1, align 1
  %i.ij = xor i64 %i.ii, 8388362703419043651
  %i.ik = getelementptr i8, ptr %1, i64 3
  %i.il = load i64, ptr %i.ik, align 1
  %i.im = xor i64 %i.il, 7957695015293251440
  %i.in = or i64 %i.ij, %i.im
  %i.io = icmp ne i64 %i.in, 0
  %i.ip = zext i1 %i.io to i32
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %bb.bg, label %bb.bq

bb.bg:                                            ; preds = %bb.bf
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 28, ptr %i.ir, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.bh:                                            ; preds = %bb.bb
  %i.is = load i32, ptr %1, align 1
  %i.it = xor i32 %i.is, 1701344335
  %i.iu = getelementptr i8, ptr %1, i64 4
  %i.iv = load i8, ptr %i.iu, align 1
  %i.iw = zext i8 %i.iv to i32
  %i.ix = xor i32 %i.iw, 114
  %i.iy = or i32 %i.it, %i.ix
  %i.iz = icmp ne i32 %i.iy, 0
  %i.ja = zext i1 %i.iz to i32
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.bi, label %bb.bq

bb.bi:                                            ; preds = %bb.bh
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 33, ptr %i.jc, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.bj:                                            ; preds = %bb.bd
  %i.jd = load i64, ptr %1, align 1
  %i.je = xor i64 %i.jd, 8314035730082393932
  %i.jf = getelementptr i8, ptr %1, i64 8
  %i.jg = load i8, ptr %i.jf, align 1
  %i.jh = zext i8 %i.jg to i64
  %i.ji = xor i64 %i.jh, 101
  %i.jj = or i64 %i.je, %i.ji
  %i.jk = icmp ne i64 %i.jj, 0
  %i.jl = zext i1 %i.jk to i32
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 29, ptr %i.jn, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.bl:                                            ; preds = %bb.bj
  %i.jo = load i64, ptr %1, align 1
  %i.jp = xor i64 %i.jo, 8314035730081935445
  %i.jq = getelementptr i8, ptr %1, i64 8
  %i.jr = load i8, ptr %i.jq, align 1
  %i.js = zext i8 %i.jr to i64
  %i.jt = xor i64 %i.js, 101
  %i.ju = or i64 %i.jp, %i.jt
  %i.jv = icmp ne i64 %i.ju, 0
  %i.jw = zext i1 %i.jv to i32
  %i.jx = icmp eq i32 %i.jw, 0
  br i1 %i.jx, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 30, ptr %i.jy, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.bn:                                            ; preds = %bb.bl
  %i.jz = load i64, ptr %1, align 1
  %i.ka = xor i64 %i.jz, 8097862922314804563
  %i.kb = getelementptr i8, ptr %1, i64 8
  %i.kc = load i8, ptr %i.kb, align 1
  %i.kd = zext i8 %i.kc to i64
  %i.ke = xor i64 %i.kd, 115
  %i.kf = or i64 %i.ka, %i.ke
  %i.kg = icmp ne i64 %i.kf, 0
  %i.kh = zext i1 %i.kg to i32
  %i.ki = icmp eq i32 %i.kh, 0
  br i1 %i.ki, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 31, ptr %i.kj, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.bp:                                            ; preds = %bb.ax
  %i.kk = load i64, ptr %1, align 1
  %i.kl = icmp ne i64 %i.kk, 8386668381669846851
  %i.km = zext i1 %i.kl to i32
  %i.kn = icmp eq i32 %i.km, 0
  br i1 %i.kn, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bh, %bb.bf, %bb.az, %bb.ar, %bb.ap, %bb.ah, %bb.af, %bb.bn, %bb.d, %bb.a, %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_RNvMsB_Cs9NoVXegZYB5_8smol_strNtB5_4Repr3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 32, ptr %i.ko, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_6ScriptNtNtNtCsf3Ta7LF998c_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 2)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  switch i64 %2, label %bb.fg [
    i64 5, label %bb.b
    i64 10, label %bb.d
    i64 6, label %bb.f
    i64 8, label %bb.h
    i64 7, label %bb.j
    i64 11, label %bb.t
    i64 4, label %bb.ah
    i64 9, label %bb.ar
    i64 3, label %bb.br
    i64 22, label %bb.dj
    i64 12, label %bb.dn
    i64 13, label %bb.fb
    i64 2, label %bb.ff
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 1
  %i.c = xor i32 %i.b, 1634493537
  %i.d = getelementptr i8, ptr %1, i64 4
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i32
  %i.g = xor i32 %i.f, 109
  %i.h = or i32 %i.c, %i.g
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.l, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.d:                                             ; preds = %bb.a
  %i.m = load i64, ptr %1, align 1
  %i.n = xor i64 %i.m, 7163376964619955297
  %i.o = getelementptr i8, ptr %1, i64 8
  %i.p = load i16, ptr %i.o, align 1
  %i.q = zext i16 %i.p to i64
  %i.r = xor i64 %i.q, 27745
  %i.s = or i64 %i.n, %i.r
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.al

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.w, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.f:                                             ; preds = %bb.a
  %i.x = load i32, ptr %1, align 1
  %i.y = xor i32 %i.x, 1650553441
  %i.z = getelementptr i8, ptr %1, i64 4
  %i.aa = load i16, ptr %i.z, align 1
  %i.ab = zext i16 %i.aa to i32
  %i.ac = xor i32 %i.ab, 25449
  %i.ad = or i32 %i.y, %i.ac
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.x

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.ah, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.h:                                             ; preds = %bb.a
  %i.ai = load i64, ptr %1, align 1
  %i.aj = icmp ne i64 %i.ai, 7953754339781997153
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.am, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.j:                                             ; preds = %bb.a
  %i.an = load i32, ptr %1, align 1
  %i.ao = xor i32 %i.an, 1936029281
  %i.ap = getelementptr i8, ptr %1, i64 3
  %i.aq = load i32, ptr %i.ap, align 1
  %i.ar = xor i32 %i.aq, 1851880563
  %i.as = or i32 %i.ao, %i.ar
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.aw, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.l:                                             ; preds = %bb.h
  %i.ax = load i64, ptr %1, align 1
  %i.ay = icmp ne i64 %i.ax, 7310298145041965410
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.bb, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.n:                                             ; preds = %bb.b
  %i.bc = load i32, ptr %1, align 1
  %i.bd = xor i32 %i.bc, 1970102626
  %i.be = getelementptr i8, ptr %1, i64 4
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i32
  %i.bh = xor i32 %i.bg, 109
  %i.bi = or i32 %i.bd, %i.bh
  %i.bj = icmp ne i32 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 6, ptr %i.bm, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.p:                                             ; preds = %bb.n
  %i.bn = load i32, ptr %1, align 1
  %i.bo = xor i32 %i.bn, 1635017058
  %i.bp = getelementptr i8, ptr %1, i64 4
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i32
  %i.bs = xor i32 %i.br, 107
  %i.bt = or i32 %i.bo, %i.bs
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.q, label %bb.bl

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 7, ptr %i.bx, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.r:                                             ; preds = %bb.j
  %i.by = load i32, ptr %1, align 1
  %i.bz = xor i32 %i.by, 1735288162
  %i.ca = getelementptr i8, ptr %1, i64 3
  %i.cb = load i32, ptr %i.ca, align 1
  %i.cc = xor i32 %i.cb, 1768710503
  %i.cd = or i32 %i.bz, %i.cc
  %i.ce = icmp ne i32 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 8, ptr %i.ch, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.t:                                             ; preds = %bb.a
  %i.ci = load i64, ptr %1, align 1
  %i.cj = xor i64 %i.ci, 8387193905159957602
  %i.ck = getelementptr i8, ptr %1, i64 3
  %i.cl = load i64, ptr %i.ck, align 1
  %i.cm = xor i64 %i.cl, 8243122736236096355
  %i.cn = or i64 %i.cj, %i.cm
  %i.co = icmp ne i64 %i.cn, 0
  %i.cp = zext i1 %i.co to i32
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.u, label %bb.fg
end_hunk_1
