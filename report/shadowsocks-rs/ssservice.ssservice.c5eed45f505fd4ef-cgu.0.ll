Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40157
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RINvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB6_9HeaderMap6insertReECsgZAIVb0XKpv_9ssservice:bb.a
  store ptr %.sroa.12.0.copyload.i.i, ptr %.sroa.4.i.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i.i, align 8, !noalias !2958
  %.sroa.4.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  store i64 %.sroa.15.0.copyload.i.i, ptr %.sroa.4.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i.i, align 8, !noalias !2958
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !2972
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  store i16 %i.p, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2958
  %i.bq = add nuw nsw i64 %i.aw, 1
  store i64 %i.bq, ptr %i.z, align 8, !alias.scope !2959, !noalias !2960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2954
  %i.br = load i64, ptr %i.v, align 8, !alias.scope !2951, !noalias !2948, !noundef !178 ; 2 uses
  %i.bs = icmp ult i64 %.sroa.0.0.i.i.i.i.ph.mux, %i.br
  br i1 %i.bs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bt = load ptr, ptr %i.u, align 8, !alias.scope !2951, !noalias !2948, !nonnull !178, !noundef !178
  %i.bu = trunc i64 %i.aa to i16
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.sroa.0.0.i.i.i.i.ph.mux ; 2 uses
  store i16 %i.bu, ptr %i.bv, align 2, !noalias !2948
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  store i16 %i.p, ptr %i.bw, align 2, !noalias !2948
  br label %_RINvXs2_NtNtNtCs7ewmRfXve8r_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsgZAIVb0XKpv_9ssservice.exit.thread3

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i.i.i.i.ph.mux, i64 noundef %i.br, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #63, !noalias !2948
  unreachable

bb.o:                                             ; preds = %bb.e
  %i.bx = icmp eq i16 %i.ap, %i.p
  br i1 %i.bx, label %bb.y, label %_RNvXss_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i

bb.p:                                             ; preds = %bb.e
  %i.by = icmp samesign ugt i64 %.sroa.08.0.i.i.i.i.ph, 511
  %i.bz = load i64, ptr %1, align 8, !range !191, !alias.scope !2951, !noalias !2948
  %i.ca = icmp ne i64 %i.bz, 2
  %.sroa.013.0.i.i.i.i = select i1 %i.by, i1 %i.ca, i1 false
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2954
  call void @_RNvXsr_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core7convert4FromNtB5_7HdrNameE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e) #53, !noalias !2950
  call void @llvm.experimental.noalias.scope.decl(metadata !2973)
  call void @llvm.experimental.noalias.scope.decl(metadata !2974)
  %i.cb = load i64, ptr %i.z, align 8, !alias.scope !2975, !noalias !2976, !noundef !178 ; 6 uses
  %i.cc = icmp ult i64 %i.cb, 88686269585142076
  call void @llvm.assume(i1 %i.cc)
  call void @llvm.experimental.noalias.scope.decl(metadata !2977)
  call void @llvm.experimental.noalias.scope.decl(metadata !2978)
  %i.cd = icmp samesign ugt i64 %i.cb, 32767
  br i1 %i.cd, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !range !180, !alias.scope !2979, !noalias !2980, !noundef !178
  %i.cg = icmp eq i64 %i.cb, %i.cf
  br i1 %i.cg, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtCs7ewmRfXve8r_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCs2dlyTE5y14r_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce) #60, !noalias !2980
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !2981, !nonnull !178, !noundef !178
  call void %i.ci(ptr noundef %.sroa.12.0.copyload.i.i, ptr noundef %.sroa.6.0.copyload.i.i, i64 noundef %.sroa.9.0.copyload.i.i) #53, !noalias !2981, !inline_history !2911
  call void @llvm.experimental.noalias.scope.decl(metadata !2982)
  call void @llvm.experimental.noalias.scope.decl(metadata !2983)
  %i.cj = load ptr, ptr %i.d, align 8, !alias.scope !2984, !noalias !2985, !noundef !178 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.af, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !2986)
  call void @llvm.experimental.noalias.scope.decl(metadata !2987)
  call void @llvm.experimental.noalias.scope.decl(metadata !2988)
  call void @llvm.experimental.noalias.scope.decl(metadata !2989)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !2990, !noalias !2985, !noundef !178
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !2991, !nonnull !178, !noundef !178
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !2990, !noalias !2985, !noundef !178
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !2990, !noalias !2985, !noundef !178
  call void %i.co(ptr noundef %i.cm, ptr noundef %i.cq, i64 noundef %i.cs) #53, !noalias !2991, !inline_history !2924
  br label %bb.af

bb.u:                                             ; preds = %bb.r, %bb.q
  %i.ct = load ptr, ptr %i.ab, align 8, !alias.scope !2979, !noalias !2980, !nonnull !178, !noundef !178
  %i.cu = getelementptr inbounds nuw [104 x i8], ptr %i.ct, i64 %i.cb ; 8 uses
  store i64 0, ptr %i.cu, align 8, !noalias !2992
  %.sroa.4.i.i.sroa.3.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.4.i.i.sroa.3.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !2992
  %.sroa.4.i.i.sroa.4.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store ptr %.sroa.6.0.copyload.i.i, ptr %.sroa.4.i.i.sroa.4.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !2992
  %.sroa.4.i.i.sroa.5.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  store i64 %.sroa.9.0.copyload.i.i, ptr %.sroa.4.i.i.sroa.5.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !2992
  %.sroa.4.i.i.sroa.6.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  store ptr %.sroa.12.0.copyload.i.i, ptr %.sroa.4.i.i.sroa.6.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !2992
  %.sroa.4.i.i.sroa.7.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  store i64 %.sroa.15.0.copyload.i.i, ptr %.sroa.4.i.i.sroa.7.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !2992
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !2993
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 96
  store i16 %i.p, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2992
  %i.cv = add nuw nsw i64 %i.cb, 1
  store i64 %i.cv, ptr %i.z, align 8, !alias.scope !2979, !noalias !2980
  %i.cw = load ptr, ptr %i.u, align 8, !alias.scope !2975, !noalias !2976, !nonnull !178, !noundef !178
  %i.cx = load i64, ptr %i.v, align 8, !alias.scope !2975, !noalias !2976, !noundef !178 ; 2 uses
  %i.cy = trunc nuw nsw i64 %i.cb to i16
  %.not36 = icmp eq i64 %i.cx, 0
  br label %.outer

.outer:                                           ; preds = %bb.v, %bb.u
  %.sroa.6.0.i.i.i.i.i.ph = phi i16 [ %i.df, %bb.v ], [ %i.p, %bb.u ] ; 2 uses
  %.sroa.09.0.i.i.i.i.i.ph = phi i16 [ %i.db, %bb.v ], [ %i.cy, %bb.u ] ; 2 uses
  %.sroa.07.0.i.i.i.i.i.ph = phi i64 [ %i.de, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.ph = phi i64 [ %i.dg, %bb.v ], [ %.sroa.0.0.i.i.i.i.ph.mux, %bb.u ] ; 2 uses
  %i.cz = icmp ult i64 %.sroa.0.0.i.i.i.i.i.ph, %i.cx ; 2 uses
  %.not36.not = xor i1 %.not36, true
  %brmerge51 = or i1 %i.cz, %.not36.not
  %.sroa.0.0.i.i.i.i.i.ph.mux = select i1 %i.cz, i64 %.sroa.0.0.i.i.i.i.i.ph, i64 0 ; 2 uses
  br i1 %brmerge51, label %.loopexit35, label %infloop50

.loopexit35:                                      ; preds = %.outer
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %.sroa.0.0.i.i.i.i.i.ph.mux ; 4 uses
  %i.db = load i16, ptr %i.da, align 2, !noalias !2976, !noundef !178 ; 2 uses
  %i.dc = icmp eq i16 %i.db, -1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 2 ; 3 uses
  br i1 %i.dc, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit35
  %i.de = add i64 %.sroa.07.0.i.i.i.i.i.ph, 1
  %i.df = load i16, ptr %i.dd, align 2, !noalias !2976, !noundef !178
  store i16 %.sroa.09.0.i.i.i.i.i.ph, ptr %i.da, align 2, !noalias !2976
  store i16 %.sroa.6.0.i.i.i.i.i.ph, ptr %i.dd, align 2, !noalias !2976
  %i.dg = add nuw i64 %.sroa.0.0.i.i.i.i.i.ph.mux, 1
  br label %.outer

bb.w:                                             ; preds = %.loopexit35
  store i16 %.sroa.09.0.i.i.i.i.i.ph, ptr %i.da, align 2, !noalias !2976
  store i16 %.sroa.6.0.i.i.i.i.i.ph, ptr %i.dd, align 2, !noalias !2976
  %i.dh = icmp ugt i64 %.sroa.07.0.i.i.i.i.i.ph, 127
  %or.cond.i.i.i.i.i = select i1 %.sroa.013.0.i.i.i.i, i1 true, i1 %i.dh
  %i.di = load i64, ptr %1, align 8, !range !191, !alias.scope !2975, !noalias !2976
  %i.dj = icmp eq i64 %i.di, 0
  %or.cond3.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i1 %i.dj, i1 false
  br i1 %or.cond3.i.i.i.i.i, label %bb.x, label %_RNvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB5_9HeaderMap20try_insert_phase_twoCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

bb.x:                                             ; preds = %bb.w
  store i64 1, ptr %1, align 8, !alias.scope !2975, !noalias !2976
  br label %_RNvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB5_9HeaderMap20try_insert_phase_twoCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RNvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB5_9HeaderMap20try_insert_phase_twoCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2954
  br label %_RINvXs2_NtNtNtCs7ewmRfXve8r_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsgZAIVb0XKpv_9ssservice.exit.thread3

_RNvXss_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i: ; preds = %.lr.ph, %.split.i.i.i.i, %bb.ad, %bb.ac, %.split47.i.i.i.i, %bb.ab, %bb.aa, %bb.o
  %i.dk = add nuw nsw i64 %.sroa.08.0.i.i.i.i.ph, 1
  %i.dl = add i64 %.sroa.0.0.i.i.i.i.ph.mux, 1
  br label %.outer18

bb.y:                                             ; preds = %bb.o
  %i.dm = icmp ugt i64 %i.aa, %i.an
  br i1 %i.dm, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.dn = getelementptr inbounds nuw [104 x i8], ptr %i.ac, i64 %i.an ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 64
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !2994, !noundef !178
  %.not.i.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  switch i8 %i.ae, label %bb.ad [
    i8 2, label %_RNvXss_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i
    i8 0, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.z
  br i1 %.not1.i.i.i.i.i, label %.split47.i.i.i.i, label %_RNvXss_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i

.split47.i.i.i.i:                                 ; preds = %bb.ab
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.dr = load i8, ptr %i.dq, align 8, !range !202, !noalias !2994, !noundef !178
  %i.ds = icmp eq i8 %i.dr, %i.aj
  br i1 %i.ds, label %_RINvXs2_NtNtNtCs7ewmRfXve8r_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsgZAIVb0XKpv_9ssservice.exit, label %_RNvXss_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !2994, !noundef !178
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 80
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !2994, !noundef !178
  call void @llvm.experimental.noalias.scope.decl(metadata !2995)
  call void @llvm.experimental.noalias.scope.decl(metadata !2996)
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dw, %i.ah
  br i1 %.not.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.preheader, label %_RNvXss_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %bb.ac
  br i1 %exitcond.not.i.i.i.i.i.i.i14, label %_RINvXs2_NtNtNtCs7ewmRfXve8r_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsgZAIVb0XKpv_9ssservice.exit, label %.lr.ph

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph
  %i.dx = add nuw i64 %i.dy, 1                    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.dx, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_RINvXs2_NtNtNtCs7ewmRfXve8r_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsgZAIVb0XKpv_9ssservice.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.i
  %i.dy = phi i64 [ %i.dx, %.preheader.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.dy
  %.val.i.i.i.i.i.i.i = load i8, ptr %i.dz, align 1, !alias.scope !2995, !noalias !2997, !noundef !178
  %.val6.i.i.i.i.i.i.i = load i8, ptr %i.ea, align 1, !alias.scope !2996, !noalias !2998, !noundef !178
  %i.eb = zext i8 %.val6.i.i.i.i.i.i.i to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @341, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !noalias !2999, !noundef !178
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i, %i.ed
  br i1 %.not.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %_RNvXss_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i

bb.ad:                                            ; preds = %bb.aa
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 80
  %i.ef = load i64, ptr %i.ee, align 8, !noalias !2994, !noundef !178
  %i.eg = icmp eq i64 %i.ef, %i.ah
  br i1 %i.eg, label %.split.i.i.i.i, label %_RNvXss_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.ad
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !2994, !noundef !178
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ei, ptr nonnull %i.af, i64 %i.ah), !noalias !2994
  %i.ej = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ej, label %_RINvXs2_NtNtNtCs7ewmRfXve8r_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsgZAIVb0XKpv_9ssservice.exit, label %_RNvXss_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i

bb.ae:                                            ; preds = %bb.y
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #63, !noalias !2948
  unreachable

bb.af:                                            ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2954
  br label %_RINvXs2_NtNtNtCs7ewmRfXve8r_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsgZAIVb0XKpv_9ssservice.exit.thread

_RINvXs2_NtNtNtCs7ewmRfXve8r_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %bb.c, %bb.k, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2936
  br label %bb.ag

_RINvXs2_NtNtNtCs7ewmRfXve8r_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsgZAIVb0XKpv_9ssservice.exit.thread3: ; preds = %bb.m, %_RNvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB5_9HeaderMap20try_insert_phase_twoCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2936
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs7ewmRfXve8r_4http6header5value11HeaderValueENtNtB17_3map14MaxSizeReachedE6expectCsgZAIVb0XKpv_9ssservice.exit

_RINvXs2_NtNtNtCs7ewmRfXve8r_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsgZAIVb0XKpv_9ssservice.exit: ; preds = %.split47.i.i.i.i, %.split.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.i
  call fastcc void @_RNvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB5_9HeaderMap15insert_occupiedCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.i) #61
  %.sroa.3.0..sroa_idx15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.3.0.copyload16.i.i.i.i = load i8, ptr %.sroa.3.0..sroa_idx15.i.i.i.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2936
  call void @llvm.experimental.noalias.scope.decl(metadata !3000)
  call void @llvm.experimental.noalias.scope.decl(metadata !3001)
  %i.ek = icmp eq i8 %.sroa.3.0.copyload16.i.i.i.i, -1
  br i1 %i.ek, label %bb.ag, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs7ewmRfXve8r_4http6header5value11HeaderValueENtNtB17_3map14MaxSizeReachedE6expectCsgZAIVb0XKpv_9ssservice.exit, !prof !209

bb.ag:                                            ; preds = %_RINvXs2_NtNtNtCs7ewmRfXve8r_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsgZAIVb0XKpv_9ssservice.exit.thread, %_RINvXs2_NtNtNtCs7ewmRfXve8r_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsgZAIVb0XKpv_9ssservice.exit
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1965, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #63, !noalias !3002
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtB4_6option6OptionNtNtNtCs7ewmRfXve8r_4http6header5value11HeaderValueENtNtB17_3map14MaxSizeReachedE6expectCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvXs2_NtNtNtCs7ewmRfXve8r_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsgZAIVb0XKpv_9ssservice.exit.thread3, %_RINvXs2_NtNtNtCs7ewmRfXve8r_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsgZAIVb0XKpv_9ssservice.exit
  %.sroa.4.05 = phi i8 [ 2, %_RINvXs2_NtNtNtCs7ewmRfXve8r_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsgZAIVb0XKpv_9ssservice.exit.thread3 ], [ %.sroa.3.0.copyload16.i.i.i.i, %_RINvXs2_NtNtNtCs7ewmRfXve8r_4http6header3map16into_header_nameReNtB6_6Sealed10try_insertNtNtBa_5value11HeaderValueECsgZAIVb0XKpv_9ssservice.exit ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.4.05, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3002
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.el, i64 7, i1 false)
  ret void

infloop:                                          ; preds = %.outer18, %infloop
  br label %infloop

infloop50:                                        ; preds = %.outer, %infloop50
  br label %infloop50
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RINvMs0_NtNtNtCsczhfDQ1qNkX_5tokio7runtime2io6driverNtB6_6Handle17deregister_sourceNtNtNtNtCs1fubhH6hfWX_3mio3sys4unix8sourcefd8SourceFdECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3008 ; 2 uses
  %i.e = icmp ult i64 %i.d, 6
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ugt i64 %i.d, 4
  br i1 %i.f, label %bb.b, label %_RINvMs1_NtCs1fubhH6hfWX_3mio4pollNtB6_8Registry10deregisterNtNtNtNtB8_3sys4unix8sourcefd8SourceFdECsgZAIVb0XKpv_9ssservice.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3009
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 5, ptr %i.g, align 8, !noalias !3009
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @201, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !3009
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 9, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !3009
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @199, ptr %i.h, align 8, !noalias !3009
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr inttoptr (i64 77 to ptr), ptr %i.i, align 8, !noalias !3009
  store i64 0, ptr %i.b, align 8, !noalias !3009
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @201, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !3009
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 9, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !noalias !3009
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.j, align 8, !noalias !3009
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @200, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !noalias !3009
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 90, ptr %.sroa.535.0..sroa_idx.i.i, align 8, !noalias !3009
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.k, align 8, !noalias !3009
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 711, ptr %i.l, align 4, !noalias !3009
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #53, !noalias !3009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3009
  br label %_RINvMs1_NtCs1fubhH6hfWX_3mio4pollNtB6_8Registry10deregisterNtNtNtNtB8_3sys4unix8sourcefd8SourceFdECsgZAIVb0XKpv_9ssservice.exit

_RINvMs1_NtCs1fubhH6hfWX_3mio4pollNtB6_8Registry10deregisterNtNtNtNtB8_3sys4unix8sourcefd8SourceFdECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.a, %bb.b
  %i.m = call noundef ptr @_RNvXNtNtNtCs1fubhH6hfWX_3mio3sys4unix8sourcefdNtB2_8SourceFdNtNtNtB8_5event6source6Source10deregister(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c) #53
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.o = cmpxchg weak ptr %i.n, i8 0, i8 1 acquire monotonic, align 1
  %.sroa.18.0.in.i = extractvalue { i8, i1 } %i.o, 1
  br i1 %.sroa.18.0.in.i, label %bb.d, label %bb.c, !prof !192

bb.c:                                             ; preds = %_RINvMs1_NtCs1fubhH6hfWX_3mio4pollNtB6_8Registry10deregisterNtNtNtNtB8_3sys4unix8sourcefd8SourceFdECsgZAIVb0XKpv_9ssservice.exit
  %i.p = call noundef zeroext i1 @_RNvMs1_NtCs3ygRNE6uCSr_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.n, i64 undef, i32 noundef -1) #53 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %_RINvMs1_NtCs1fubhH6hfWX_3mio4pollNtB6_8Registry10deregisterNtNtNtNtB8_3sys4unix8sourcefd8SourceFdECsgZAIVb0XKpv_9ssservice.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = call noundef zeroext i1 @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime2io16registration_setNtB2_15RegistrationSet10deregister(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) #53
  %i.s = cmpxchg ptr %i.n, i8 1, i8 0 release monotonic, align 1
  %i.t = extractvalue { i8, i1 } %i.s, 1          ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEECsgZAIVb0XKpv_9ssservice.exit, label %bb.f, !prof !192

bb.f:                                             ; preds = %bb.e
  call void @_RNvMs1_NtCs3ygRNE6uCSr_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.n, i1 noundef zeroext false) #53
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEECsgZAIVb0XKpv_9ssservice.exit

bb.g:                                             ; preds = %bb.d
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEECsgZAIVb0XKpv_9ssservice.exit2, label %bb.h, !prof !192

bb.h:                                             ; preds = %bb.g
  call void @_RNvMs1_NtCs3ygRNE6uCSr_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.n, i1 noundef zeroext false) #53
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEECsgZAIVb0XKpv_9ssservice.exit2

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEECsgZAIVb0XKpv_9ssservice.exit2: ; preds = %bb.g, %bb.h
  call void @_RNvMs0_NtNtNtCsczhfDQ1qNkX_5tokio7runtime2io6driverNtB5_6Handle6unpark(ptr noundef nonnull align 8 %0) #53
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.f, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEECsgZAIVb0XKpv_9ssservice.exit2
  ret ptr %i.m
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_ioNtB6_15EncryptedWriter20poll_write_encryptedINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBc_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(1120) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [2 x i8], align 2                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [1 x i8], align 1                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [1 x i8], align 1                 ; 4 uses
  %i.n = alloca [2 x i8], align 2                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [1 x i8], align 1                 ; 4 uses
  %i.q = alloca [1 x i8], align 1                 ; 4 uses
  %i.r = alloca [1 x i8], align 1                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [2 x i8], align 2                 ; 4 uses
  %i.v = load i64, ptr %1, align 16, !range !210, !noundef !178
  switch i64 %i.v, label %default.unreachable214 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.v
    i64 3, label %bb.aa
  ]

default.unreachable214:                           ; preds = %bb.aa, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RINvMs9_NtCsiwebgwkgVmN_10etherparse14packet_builderINtB6_17PacketBuilderStepNtNtNtB8_9transport10udp_header9UdpHeaderE5writeINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB26_9bytes_mut8BytesMutEECsgZAIVb0XKpv_9ssservice:bb.a
  store ptr @3944, ptr %0, align 8, !alias.scope !3817, !noalias !3828
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 17, ptr %.sroa.5109.0..sroa_idx.i, align 8, !alias.scope !3817, !noalias !3828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3820
  br label %_RINvNtCsiwebgwkgVmN_10etherparse14packet_builder20final_write_with_netINtNtB4_6writer8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB1B_9bytes_mut8BytesMutEENtNtNtB4_9transport10udp_header9UdpHeaderNtNtNtNtB4_3err6packet17build_write_error15BuildWriteErrorECsgZAIVb0XKpv_9ssservice.exit

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3820
  br label %bb.n

_RNvXs0_NtCsiwebgwkgVmN_10etherparse6writerINtB5_8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB10_9bytes_mut8BytesMutEENtB5_9CoreWrite9write_allCsgZAIVb0XKpv_9ssservice.exit203.i: ; preds = %.lr.ph.i.i198.i
  store ptr @3944, ptr %0, align 8, !alias.scope !3817, !noalias !3828
  %.sroa.5137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 17, ptr %.sroa.5137.0..sroa_idx.i, align 8, !alias.scope !3817, !noalias !3828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3820
  br label %_RINvNtCsiwebgwkgVmN_10etherparse14packet_builder20final_write_with_netINtNtB4_6writer8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB1B_9bytes_mut8BytesMutEENtNtNtB4_9transport10udp_header9UdpHeaderNtNtNtNtB4_3err6packet17build_write_error15BuildWriteErrorECsgZAIVb0XKpv_9ssservice.exit

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3820
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3820
  %i.dd = call i16 @llvm.bswap.i16(i16 %.sroa.12.0.copyload.i) ; 2 uses
  %.sroa.084.0.extract.trunc.i = trunc i16 %i.dd to i8
  %.sroa.586.0.extract.shift.i = lshr i16 %i.dd, 8
  %.sroa.586.0.extract.trunc.i = trunc nuw i16 %.sroa.586.0.extract.shift.i to i8
  %i.de = call i16 @llvm.bswap.i16(i16 %switch.masked)
  %i.df = shl i8 %.sroa.15.0.copyload.i, 4
  %i.dg = shl i8 %.sroa.14.0.copyload.i, 5
  %.sroa.089.0.i = or i8 %i.dg, %.sroa.084.0.extract.trunc.i
  %i.dh = or i8 %.sroa.089.0.i, %i.df
  store i8 %i.dh, ptr %i.ab, align 1, !noalias !3820
  %i.di = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i8 %.sroa.586.0.extract.trunc.i, ptr %i.di, align 1, !noalias !3820
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i16 %i.de, ptr %i.dj, align 1, !noalias !3820
  br label %.lr.ph.i.i210.i

.lr.ph.i.i210.i:                                  ; preds = %bb.u, %bb.t
  %.sroa.0.010.i.i211.i = phi ptr [ %i.do, %bb.u ], [ %i.ab, %bb.t ] ; 2 uses
  %.sroa.6.09.i.i212.i = phi i64 [ %i.dn, %bb.u ], [ 4, %bb.t ] ; 2 uses
  %.val.i.i.i213.i = load i64, ptr %i.ci, align 8, !alias.scope !3836, !noalias !3837, !noundef !178 ; 2 uses
  %i.dk = sub i64 9223372036854775807, %.val.i.i.i213.i
  %i.dl = call i64 @llvm.umin.i64(i64 %i.dk, i64 range(i64 1, -9223372036854775808) %.sroa.6.09.i.i212.i) ; 3 uses
  call void @_RNvXs2_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.010.i.i211.i, i64 noundef %i.dl) #53, !noalias !3821
  %i.dm = icmp eq i64 %.val.i.i.i213.i, 9223372036854775807
  br i1 %i.dm, label %_RNvXs0_NtCsiwebgwkgVmN_10etherparse6writerINtB5_8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB10_9bytes_mut8BytesMutEENtB5_9CoreWrite9write_allCsgZAIVb0XKpv_9ssservice.exit215.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i210.i
  %i.dn = sub nuw nsw i64 %.sroa.6.09.i.i212.i, %i.dl ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i211.i, i64 %i.dl
  %i.dp = icmp eq i64 %i.dn, 0
  br i1 %i.dp, label %bb.v, label %.lr.ph.i.i210.i

_RNvXs0_NtCsiwebgwkgVmN_10etherparse6writerINtB5_8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB10_9bytes_mut8BytesMutEENtB5_9CoreWrite9write_allCsgZAIVb0XKpv_9ssservice.exit215.i: ; preds = %.lr.ph.i.i210.i
  store ptr @3944, ptr %0, align 8, !alias.scope !3817, !noalias !3828
  %.sroa.5165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 17, ptr %.sroa.5165.0..sroa_idx.i, align 8, !alias.scope !3817, !noalias !3828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3820
  br label %_RINvNtCsiwebgwkgVmN_10etherparse14packet_builder20final_write_with_netINtNtB4_6writer8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB1B_9bytes_mut8BytesMutEENtNtNtB4_9transport10udp_header9UdpHeaderNtNtNtNtB4_3err6packet17build_write_error15BuildWriteErrorECsgZAIVb0XKpv_9ssservice.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3820
  br label %bb.n

bb.w:                                             ; preds = %bb.n
  %i.dq = icmp ne i8 %i.ca, 3
  call void @llvm.assume(i1 %i.dq)
  %i.dr = icmp eq i8 %i.ca, 2
  br i1 %i.dr, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w, %bb.n
  switch i32 %narrow.i, label %bb.c [
    i32 0, label %bb.z
    i32 1, label %bb.aa
    i32 2, label %bb.ad
  ]

bb.y:                                             ; preds = %bb.w
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.dt = trunc i64 %4 to i16
  %i.du = add i16 %i.dt, 8
  store i16 %i.du, ptr %i.ds, align 4, !noalias !3820
  br label %bb.x

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !3820
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %i.aa, ptr noundef nonnull readonly align 4 dereferenceable(64) %.sroa.9.0..sroa_idx.i, i64 64, i1 false), !noalias !3819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3820
  store i16 %.sroa.7.sroa.0.0.copyload.i, ptr %i.z, align 4, !noalias !3820
  %.sroa.7.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  store i16 %.sroa.7.sroa.7.0.copyload.i, ptr %.sroa.7.sroa.7.0..sroa_idx.i, align 2, !noalias !3820
  %.sroa.7.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  store i16 %.sroa.7.sroa.8.0.copyload.i, ptr %.sroa.7.sroa.8.0..sroa_idx.i, align 4, !noalias !3820
  %.sroa.7.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  store i8 %.sroa.7.sroa.9.0.copyload.i, ptr %.sroa.7.sroa.9.0..sroa_idx.i, align 2, !noalias !3820
  %.sroa.7.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 7
  store i8 %.sroa.7.sroa.10.0.copyload.i, ptr %.sroa.7.sroa.10.0..sroa_idx.i, align 1, !noalias !3820
  %.sroa.7.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1020) %.sroa.7.sroa.11.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(1020) %.sroa.7.sroa.11.i, i64 1020, i1 false), !noalias !3820
  %.sroa.7.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 1028 ; 2 uses
  store i32 %.sroa.7.sroa.12.0.copyload.i, ptr %.sroa.7.sroa.12.0..sroa_idx.i, align 4, !noalias !3820
  %i.dv = load i32, ptr %i.z, align 4, !range !196, !noalias !3820, !noundef !178
  %i.dw = trunc nuw i32 %i.dv to i1               ; 3 uses
  %i.dx = lshr i32 %.sroa.7.sroa.12.0.copyload.i, 6
  %i.dy = and i32 %i.dx, 1020
  %narrow627.i = add nuw nsw i32 %i.dy, 12
  %narrow628.i = select i1 %i.dw, i32 %narrow627.i, i32 0
  %.sroa.039.0.i = zext nneg i32 %narrow628.i to i64
  br i1 %.not152.i, label %_RNvMNtNtCsiwebgwkgVmN_10etherparse9transport16transport_headerNtB2_15TransportHeader10header_len.exit.i, label %bb.af

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3820
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 9236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.x, ptr noundef nonnull readonly align 4 dereferenceable(44) %i.dz, i64 44, i1 false), !noalias !3819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3820
  store i32 %.sroa.013.0.copyload.i, ptr %i.w, align 4, !noalias !3820
  %.sroa.7.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  store i16 %.sroa.7.sroa.0.0.copyload.i, ptr %.sroa.7.0..sroa_idx16.i, align 4, !noalias !3820
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx16.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  store i16 %.sroa.7.sroa.7.0.copyload.i, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx16.sroa_idx.i, align 2, !noalias !3820
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx16.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i16 %.sroa.7.sroa.8.0.copyload.i, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx16.sroa_idx.i, align 4, !noalias !3820
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx16.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  store i8 %.sroa.7.sroa.9.0.copyload.i, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx16.sroa_idx.i, align 2, !noalias !3820
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx16.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 11
  store i8 %.sroa.7.sroa.10.0.copyload.i, ptr %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx16.sroa_idx.i, align 1, !noalias !3820
  %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx16.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1020) %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx16.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(1020) %.sroa.7.sroa.11.i, i64 1020, i1 false), !noalias !3820
  %.sroa.7.sroa.12.0..sroa.7.0..sroa_idx16.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 1032
  store i32 %.sroa.7.sroa.12.0.copyload.i, ptr %.sroa.7.sroa.12.0..sroa.7.0..sroa_idx16.sroa_idx.i, align 4, !noalias !3820
  %.sroa.9.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.w, i64 1036 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.9.0..sroa_idx17.i, ptr noundef nonnull align 4 dereferenceable(64) %.sroa.9.i, i64 64, i1 false), !noalias !3820
  %.sroa.1018.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.w, i64 1100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8136) %.sroa.1018.0..sroa_idx19.i, ptr noundef nonnull align 4 dereferenceable(8136) %.sroa.1018.i, i64 8136, i1 false), !noalias !3820
  %i.ea = getelementptr inbounds nuw i8, ptr %i.w, i64 1040
  %i.eb = load i8, ptr %i.ea, align 4, !range !181, !alias.scope !3838, !noalias !3820, !noundef !178 ; 2 uses
  %i.ec = trunc nuw i8 %i.eb to i1                ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.w, i64 3088
  %i.ee = load i8, ptr %i.ed, align 4, !alias.scope !3838, !noalias !3820
  %i.ef = zext i8 %i.ee to i64
  %i.eg = shl nuw nsw i64 %i.ef, 3
  %i.eh = add nuw nsw i64 %i.eg, 8
  %.sroa.0.0.i.i = select i1 %i.ec, i64 %i.eh, i64 0
  %i.ei = getelementptr inbounds nuw i8, ptr %i.w, i64 3089
  %i.ej = load i8, ptr %i.ei, align 1, !range !181, !alias.scope !3838, !noalias !3820, !noundef !178 ; 2 uses
  %i.ek = trunc nuw i8 %i.ej to i1                ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.w, i64 5137
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !3838, !noalias !3820
  %i.en = zext i8 %i.em to i64
  %i.eo = shl nuw nsw i64 %i.en, 3
  %i.ep = add nuw nsw i64 %i.eo, 8
  %i.eq = select i1 %i.ek, i64 %i.ep, i64 0
  %.sroa.0.1.i.i = add nuw nsw i64 %i.eq, %.sroa.0.0.i.i ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.w, i64 5138
  %i.es = load i8, ptr %i.er, align 2, !range !199, !alias.scope !3838, !noalias !3820, !noundef !178 ; 6 uses
  %.not.i.i = icmp eq i8 %i.es, 2                 ; 2 uses
  br i1 %.not.i.i, label %_RNvMNtNtCsiwebgwkgVmN_10etherparse3net9ipv6_extsNtB2_14Ipv6Extensions10header_len.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.et = getelementptr inbounds nuw i8, ptr %i.w, i64 9234
  %i.eu = load i8, ptr %i.et, align 2, !alias.scope !3838, !noalias !3820, !noundef !178
  %i.ev = zext i8 %i.eu to i64
  %i.ew = shl nuw nsw i64 %i.ev, 3
  %i.ex = add nuw nsw i64 %.sroa.0.1.i.i, 8
  %i.ey = add nuw nsw i64 %i.ex, %i.ew            ; 2 uses
  %i.ez = trunc nuw i8 %i.es to i1
  br i1 %i.ez, label %bb.ac, label %_RNvMNtNtCsiwebgwkgVmN_10etherparse3net9ipv6_extsNtB2_14Ipv6Extensions10header_len.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.fa = getelementptr inbounds nuw i8, ptr %i.w, i64 7186
  %i.fb = load i8, ptr %i.fa, align 2, !alias.scope !3838, !noalias !3820, !noundef !178
  %i.fc = zext i8 %i.fb to i64
  %i.fd = shl nuw nsw i64 %i.fc, 3
  %i.fe = add nuw nsw i64 %i.ey, 8
  %i.ff = add nuw nsw i64 %i.fe, %i.fd
  br label %_RNvMNtNtCsiwebgwkgVmN_10etherparse3net9ipv6_extsNtB2_14Ipv6Extensions10header_len.exit.i

_RNvMNtNtCsiwebgwkgVmN_10etherparse3net9ipv6_extsNtB2_14Ipv6Extensions10header_len.exit.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  %.sroa.0.2.i.i = phi i64 [ %i.ff, %bb.ac ], [ %i.ey, %bb.ab ], [ %.sroa.0.1.i.i, %bb.aa ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.w, i64 1039
  %i.fh = load i8, ptr %i.fg, align 1, !range !199, !alias.scope !3838, !noalias !3820, !noundef !178 ; 3 uses
  %.not7.i.i = icmp eq i8 %i.fh, 2                ; 2 uses
  %i.fi = add nuw nsw i64 %.sroa.0.2.i.i, 8
  %spec.select.i.i = select i1 %.not7.i.i, i64 %.sroa.0.2.i.i, i64 %i.fi
  %i.fj = trunc nuw i32 %.sroa.013.0.copyload.i to i1 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.w, i64 1029
  %i.fl = load i8, ptr %i.fk, align 1, !alias.scope !3838, !noalias !3820
  %i.fm = zext i8 %i.fl to i64
  %i.fn = shl nuw nsw i64 %i.fm, 2
  %i.fo = add nuw nsw i64 %i.fn, 12
  %i.fp = select i1 %i.fj, i64 %i.fo, i64 0
  %.sroa.0.4.i.i = add nuw nsw i64 %i.fp, %spec.select.i.i ; 2 uses
  br i1 %.not152.i, label %_RNvMNtNtCsiwebgwkgVmN_10etherparse9transport16transport_headerNtB2_15TransportHeader10header_len.exit239.thread.i, label %bb.az

bb.ad:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.94.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1020) %.sroa.94.i, ptr noundef nonnull readonly align 4 dereferenceable(1020) %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx.i, i64 1020, i1 false), !noalias !3819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3820
  %i.fq = call i16 @llvm.bswap.i16(i16 %.sroa.7.sroa.0.0.copyload.i)
  %i.fr = call i16 @llvm.bswap.i16(i16 %.sroa.7.sroa.7.0.copyload.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3839
  %.sroa.812.0.insert.ext.i.i = zext i8 %.sroa.7.sroa.10.0.copyload.i to i64 ; 2 uses
  %.sroa.711.0.insert.ext.i.i = zext i8 %.sroa.7.sroa.9.0.copyload.i to i64 ; 2 uses
  %.sroa.03.0.ptr7.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 4 uses
  store i16 %i.fq, ptr %.sroa.03.0.ptr7.i.i.i, align 4, !alias.scope !3840, !noalias !3839
  %.sroa.03.0.ptr7.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  store i16 %i.fr, ptr %.sroa.03.0.ptr7.2.i.i.i, align 2, !alias.scope !3840, !noalias !3839
  %.sroa.03.0.ptr7.4.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 %.sroa.7.sroa.9.0.copyload.i, ptr %.sroa.03.0.ptr7.4.i.i.i, align 4, !alias.scope !3840, !noalias !3839
  %.sroa.03.0.ptr7.5.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  store i8 %.sroa.7.sroa.10.0.copyload.i, ptr %.sroa.03.0.ptr7.5.i.i.i, align 1, !alias.scope !3840, !noalias !3839
  %.sroa.03.0.ptr7.6.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.fs = call i16 @llvm.bswap.i16(i16 %.sroa.7.sroa.8.0.copyload.i)
  store i16 %i.fs, ptr %.sroa.03.0.ptr7.6.i.i.i, align 2, !alias.scope !3840, !noalias !3839
  %i.ft = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ft, ptr nonnull readonly align 2 %.sroa.94.i, i64 range(i64 0, 256) %.sroa.711.0.insert.ext.i.i, i1 false), !alias.scope !3841, !noalias !3842
  %i.fu = zext i8 %.sroa.7.sroa.9.0.copyload.i to i32 ; 2 uses
  %i.fv = add nuw nsw i32 %i.fu, 8                ; 2 uses
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.03.0.ptr7.i.i.i, i64 %i.fw
  %.sroa.94.i.255.i.255.i.255..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.94.i, i64 255
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fx, ptr nonnull readonly align 1 %.sroa.94.i.255.i.255.i.255..sroa_idx, i64 range(i64 0, 256) %.sroa.812.0.insert.ext.i.i, i1 false), !alias.scope !3843, !noalias !3842
  %i.fy = zext i8 %.sroa.7.sroa.10.0.copyload.i to i32 ; 2 uses
  %i.fz = add nuw nsw i32 %i.fv, %i.fy            ; 2 uses
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.03.0.ptr7.i.i.i, i64 %i.ga
  %.sroa.94.i.510.i.510.i.510..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.94.i, i64 510
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gb, ptr nonnull readonly align 2 %.sroa.94.i.510.i.510.i.510..sroa_idx, i64 range(i64 0, 256) %.sroa.711.0.insert.ext.i.i, i1 false), !alias.scope !3844, !noalias !3842
  %i.gc = add nuw nsw i32 %i.fz, %i.fu            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3845)
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.03.0.ptr7.i.i.i, i64 %i.gd
  %.sroa.94.i.765.i.765.i.765..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.94.i, i64 765
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ge, ptr nonnull readonly align 1 %.sroa.94.i.765.i.765.i.765..sroa_idx, i64 range(i64 0, 256) %.sroa.812.0.insert.ext.i.i, i1 false), !alias.scope !3846, !noalias !3842
  %i.gf = add nuw nsw i32 %i.gc, %i.fy
  store i32 %i.gf, ptr %i.h, align 4, !alias.scope !3847, !noalias !3848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.t, ptr noundef nonnull align 4 dereferenceable(1032) %i.h, i64 1032, i1 false), !noalias !3849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3839
  %i.gg = load i32, ptr %i.t, align 4, !noalias !3820, !noundef !178 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %cond.i = icmp eq i32 %i.gg, 0
  br i1 %cond.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs1YhOlszHi7n_8arrayvec8arrayvec8ArrayVechKj404_EECsgZAIVb0XKpv_9ssservice.exit258.i, label %.lr.ph.i.i216.preheader.i

.lr.ph.i.i216.preheader.i:                        ; preds = %bb.ad
  %i.gi = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.gj = zext i32 %i.gg to i64
  br label %.lr.ph.i.i216.i

.lr.ph.i.i216.i:                                  ; preds = %bb.ae, %.lr.ph.i.i216.preheader.i
  %.sroa.0.010.i.i217.i = phi ptr [ %i.go, %bb.ae ], [ %i.gi, %.lr.ph.i.i216.preheader.i ] ; 2 uses
  %.sroa.6.09.i.i218.i = phi i64 [ %i.gn, %bb.ae ], [ %i.gj, %.lr.ph.i.i216.preheader.i ] ; 2 uses
  %.val.i.i.i219.i = load i64, ptr %i.gh, align 8, !alias.scope !3850, !noalias !3851, !noundef !178 ; 2 uses
  %i.gk = sub i64 9223372036854775807, %.val.i.i.i219.i
  %i.gl = call i64 @llvm.umin.i64(i64 %i.gk, i64 range(i64 1, -9223372036854775808) %.sroa.6.09.i.i218.i) ; 3 uses
  call void @_RNvXs2_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.010.i.i217.i, i64 noundef %i.gl) #53, !noalias !3821
  %i.gm = icmp eq i64 %.val.i.i.i219.i, 9223372036854775807
  br i1 %i.gm, label %_RNvXs0_NtCsiwebgwkgVmN_10etherparse6writerINtB5_8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB10_9bytes_mut8BytesMutEENtB5_9CoreWrite9write_allCsgZAIVb0XKpv_9ssservice.exit221.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i216.i
  %i.gn = sub nuw nsw i64 %.sroa.6.09.i.i218.i, %i.gl ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i217.i, i64 %i.gl
  %i.gp = icmp eq i64 %i.gn, 0
  br i1 %i.gp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs1YhOlszHi7n_8arrayvec8arrayvec8ArrayVechKj404_EECsgZAIVb0XKpv_9ssservice.exit258.i, label %.lr.ph.i.i216.i

bb.af:                                            ; preds = %bb.z
  %i.gq = icmp ne i8 %i.ca, 3
  call void @llvm.assume(i1 %i.gq)
  %i.gr = add nsw i8 %i.ca, -2
  %i.gs = icmp samesign ugt i8 %i.ca, 1
  %narrow.i.i = select i1 %i.gs, i8 %i.gr, i8 1
  switch i8 %narrow.i.i, label %bb.ag [
    i8 0, label %_RNvMNtNtCsiwebgwkgVmN_10etherparse9transport16transport_headerNtB2_15TransportHeader10header_len.exit.i
    i8 1, label %bb.ah
    i8 2, label %bb.ai
    i8 3, label %_RNvMNtNtCsiwebgwkgVmN_10etherparse9transport16transport_headerNtB2_15TransportHeader10header_len.exit.i
    i8 4, label %bb.aj
  ]

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ah, i64 58
  %i.gu = load i8, ptr %i.gt, align 2, !alias.scope !3852, !noalias !3820, !noundef !178
  %i.gv = zext i8 %i.gu to i64
  %i.gw = add nuw nsw i64 %i.gv, 20
  br label %_RNvMNtNtCsiwebgwkgVmN_10etherparse9transport16transport_headerNtB2_15TransportHeader10header_len.exit.i

bb.ai:                                            ; preds = %bb.af
  %i.gx = load i8, ptr %i.ah, align 8, !range !219, !alias.scope !3852, !noalias !3820, !noundef !178
  %switch.i.i = icmp samesign ult i8 %i.gx, 7
  %..i.i = select i1 %switch.i.i, i64 8, i64 20
  br label %_RNvMNtNtCsiwebgwkgVmN_10etherparse9transport16transport_headerNtB2_15TransportHeader10header_len.exit.i

bb.aj:                                            ; preds = %bb.af
  %i.gy = load i8, ptr %i.ah, align 8, !range !220, !alias.scope !3852, !noalias !3820, !noundef !178
  %i.gz = icmp eq i8 %i.gy, 1
  %.1.i.i = select i1 %i.gz, i64 12, i64 8
  br label %_RNvMNtNtCsiwebgwkgVmN_10etherparse9transport16transport_headerNtB2_15TransportHeader10header_len.exit.i

_RNvMNtNtCsiwebgwkgVmN_10etherparse9transport16transport_headerNtB2_15TransportHeader10header_len.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.af, %bb.z
  %.sroa.040.0.i = phi i64 [ 0, %bb.z ], [ 8, %bb.af ], [ %i.gw, %bb.ah ], [ %.1.i.i, %bb.aj ], [ %..i.i, %bb.ai ], [ 8, %bb.af ]
  %i.ha = add nuw i64 %4, %.sroa.039.0.i
  %i.hb = add nuw i64 %i.ha, %.sroa.040.0.i       ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.aa, i64 59
  %i.hd = load i8, ptr %i.hc, align 1, !noalias !3820, !noundef !178
  %i.he = zext i8 %i.hd to i64                    ; 2 uses
  %i.hf = sub nuw nsw i64 65515, %i.he            ; 2 uses
  %i.hg = icmp ugt i64 %i.hb, %i.hf
  br i1 %i.hg, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_RNvMNtNtCsiwebgwkgVmN_10etherparse9transport16transport_headerNtB2_15TransportHeader10header_len.exit.i
  %i.hh = add nuw nsw i64 %i.hb, 20
  %i.hi = add nuw nsw i64 %i.hh, %i.he
  %i.hj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.hk = trunc i64 %i.hi to i16
  store i16 %i.hk, ptr %i.hj, align 2, !noalias !3820
  br i1 %.not152.i, label %bb.am, label %switch.lookup842

bb.al:                                            ; preds = %_RNvMNtNtCsiwebgwkgVmN_10etherparse9transport16transport_headerNtB2_15TransportHeader10header_len.exit.i
  store i64 %i.hb, ptr %0, align 8, !alias.scope !3817, !noalias !3828
  %.sroa.4196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hf, ptr %.sroa.4196.0..sroa_idx.i, align 8, !alias.scope !3817, !noalias !3828
  %.sroa.5197.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 8, ptr %.sroa.5197.0..sroa_idx.i, align 8, !alias.scope !3817, !noalias !3828
  br label %bb.ax

switch.lookup842:                                 ; preds = %bb.ak
  %i.hl = icmp ne i8 %i.ca, 3
  call void @llvm.assume(i1 %i.hl)
  %i.hm = add nsw i8 %i.ca, -2
  %i.hn = icmp samesign ugt i8 %i.ca, 1
  %narrow164.i = select i1 %i.hn, i8 %i.hm, i8 1
  %switch.cast843 = zext i8 %narrow164.i to i40
  %switch.shiftamt844 = shl nuw nsw i40 %switch.cast843, 3
  %switch.downshift845 = lshr i40 9563080209, %switch.shiftamt844
  %switch.masked846 = trunc i40 %switch.downshift845 to i8 ; 2 uses
  br i1 %i.dw, label %bb.ao, label %bb.ap

bb.am:                                            ; preds = %bb.ap, %bb.ak
  %i.ho = call noundef i16 @_RNvMNtNtCsiwebgwkgVmN_10etherparse3net11ipv4_headerNtB2_10Ipv4Header20calc_header_checksum(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(64) %i.aa) #53, !noalias !3821
  %i.hp = getelementptr inbounds nuw i8, ptr %i.aa, i64 14
  store i16 %i.ho, ptr %i.hp, align 2, !noalias !3820
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3820
  call void @_RNvMNtNtCsiwebgwkgVmN_10etherparse3net11ipv4_headerNtB2_10Ipv4Header8to_bytes(ptr noalias nofree noundef nonnull sret([64 x i8]) align 4 captures(address) dereferenceable(64) %i.y, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(64) %i.aa) #53, !noalias !3821
  %i.hq = load i32, ptr %i.y, align 4, !noalias !3820, !noundef !178 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %cond596.i = icmp eq i32 %i.hq, 0
  br i1 %cond596.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs1YhOlszHi7n_8arrayvec8arrayvec8ArrayVechKj3c_EECsgZAIVb0XKpv_9ssservice.exit233.i, label %.lr.ph.i.i223.preheader.i

.lr.ph.i.i223.preheader.i:                        ; preds = %bb.am
  %i.hs = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ht = zext i32 %i.hq to i64
  br label %.lr.ph.i.i223.i

.lr.ph.i.i223.i:                                  ; preds = %bb.an, %.lr.ph.i.i223.preheader.i
  %.sroa.0.010.i.i224.i = phi ptr [ %i.hy, %bb.an ], [ %i.hs, %.lr.ph.i.i223.preheader.i ] ; 2 uses
  %.sroa.6.09.i.i225.i = phi i64 [ %i.hx, %bb.an ], [ %i.ht, %.lr.ph.i.i223.preheader.i ] ; 2 uses
  %.val.i.i.i226.i = load i64, ptr %i.hr, align 8, !alias.scope !3853, !noalias !3854, !noundef !178 ; 2 uses
  %i.hu = sub i64 9223372036854775807, %.val.i.i.i226.i
  %i.hv = call i64 @llvm.umin.i64(i64 %i.hu, i64 range(i64 1, -9223372036854775808) %.sroa.6.09.i.i225.i) ; 3 uses
  call void @_RNvXs2_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.010.i.i224.i, i64 noundef %i.hv) #53, !noalias !3821
  %i.hw = icmp eq i64 %.val.i.i.i226.i, 9223372036854775807
  br i1 %i.hw, label %_RNvXs0_NtCsiwebgwkgVmN_10etherparse6writerINtB5_8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB10_9bytes_mut8BytesMutEENtB5_9CoreWrite9write_allCsgZAIVb0XKpv_9ssservice.exit228.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i223.i
  %i.hx = sub nuw nsw i64 %.sroa.6.09.i.i225.i, %i.hv ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i224.i, i64 %i.hv
  %i.hz = icmp eq i64 %i.hx, 0
  br i1 %i.hz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs1YhOlszHi7n_8arrayvec8arrayvec8ArrayVechKj3c_EECsgZAIVb0XKpv_9ssservice.exit233.i, label %.lr.ph.i.i223.i

bb.ao:                                            ; preds = %switch.lookup842
  store i8 %switch.masked846, ptr %.sroa.7.sroa.12.0..sroa_idx.i, align 4, !noalias !3820
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %switch.lookup842
  %.sroa.043.1.i = phi i8 [ 51, %bb.ao ], [ %switch.masked846, %switch.lookup842 ]
  %i.ia = getelementptr inbounds nuw i8, ptr %i.aa, i64 18
  store i8 %.sroa.043.1.i, ptr %i.ia, align 2, !noalias !3820
  br label %bb.am

_RNvXs0_NtCsiwebgwkgVmN_10etherparse6writerINtB5_8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB10_9bytes_mut8BytesMutEENtB5_9CoreWrite9write_allCsgZAIVb0XKpv_9ssservice.exit228.i: ; preds = %.lr.ph.i.i223.i
  store ptr @3944, ptr %0, align 8, !alias.scope !3817, !noalias !3828
  %.sroa.5225.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 17, ptr %.sroa.5225.0..sroa_idx.i, align 8, !alias.scope !3817, !noalias !3828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3820
  br label %bb.ax

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs1YhOlszHi7n_8arrayvec8arrayvec8ArrayVechKj3c_EECsgZAIVb0XKpv_9ssservice.exit233.i: ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3820
  br i1 %i.dw, label %bb.aq, label %_RINvMNtNtCsiwebgwkgVmN_10etherparse3net9ipv4_extsNtB3_14Ipv4Extensions14write_internalINtNtB7_6writer8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB1R_9bytes_mut8BytesMutEEECsgZAIVb0XKpv_9ssservice.exit.thread54

bb.aq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs1YhOlszHi7n_8arrayvec8arrayvec8ArrayVechKj3c_EECsgZAIVb0XKpv_9ssservice.exit233.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.aa, i64 18
  %i.ic = load i8, ptr %i.ib, align 2, !noalias !3820, !noundef !178
  %i.id = icmp eq i8 %i.ic, 51
  br i1 %i.id, label %bb.ar, label %_RNvXs4_NtNtNtCsiwebgwkgVmN_10etherparse3err6packet17build_write_errorNtB5_15BuildWriteErrorINtNtCsf3Ta7LF998c_4core7convert4FromINtNtBb_6writer10WriteErrorNtNtNtB1w_2io5error5ErrorNtNtNtB9_9ipv4_exts15exts_walk_error13ExtsWalkErrorEE4from.exit.i

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3855
  call void @_RNvMs2_NtNtCsiwebgwkgVmN_10etherparse3net14ip_auth_headerNtB5_12IpAuthHeader8to_bytes(ptr noalias nofree noundef nonnull sret([1032 x i8]) align 4 captures(none) dereferenceable(1032) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(1028) %.sroa.7.sroa.8.0..sroa_idx.i) #53, !noalias !3856
  %i.ie = load i32, ptr %i.a, align 4, !noalias !3855, !noundef !178 ; 2 uses
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %_RINvMNtNtCsiwebgwkgVmN_10etherparse3net9ipv4_extsNtB3_14Ipv4Extensions14write_internalINtNtB7_6writer8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB1R_9bytes_mut8BytesMutEEECsgZAIVb0XKpv_9ssservice.exit.thread56, label %.lr.ph.i.i.preheader.i9

.lr.ph.i.i.preheader.i9:                          ; preds = %bb.ar
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ih = zext i32 %i.ie to i64
  br label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %bb.as, %.lr.ph.i.i.preheader.i9
  %.sroa.0.010.i.i.i11 = phi ptr [ %i.im, %bb.as ], [ %i.ig, %.lr.ph.i.i.preheader.i9 ] ; 2 uses
  %.sroa.6.09.i.i.i12 = phi i64 [ %i.il, %bb.as ], [ %i.ih, %.lr.ph.i.i.preheader.i9 ] ; 2 uses
  %.val.i.i.i.i13 = load i64, ptr %i.hr, align 8, !alias.scope !3857, !noalias !3858, !noundef !178 ; 2 uses
  %i.ii = sub i64 9223372036854775807, %.val.i.i.i.i13
  %i.ij = call i64 @llvm.umin.i64(i64 %i.ii, i64 range(i64 1, -9223372036854775808) %.sroa.6.09.i.i.i12) ; 3 uses
  call void @_RNvXs2_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.010.i.i.i11, i64 noundef %i.ij) #53, !noalias !3856
  %i.ik = icmp eq i64 %.val.i.i.i.i13, 9223372036854775807
  br i1 %i.ik, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i10
  %i.il = sub nuw nsw i64 %.sroa.6.09.i.i.i12, %i.ij ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i11, i64 %i.ij
  %i.in = icmp eq i64 %i.il, 0
  br i1 %i.in, label %_RINvMNtNtCsiwebgwkgVmN_10etherparse3net9ipv4_extsNtB3_14Ipv4Extensions14write_internalINtNtB7_6writer8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB1R_9bytes_mut8BytesMutEEECsgZAIVb0XKpv_9ssservice.exit.thread56, label %.lr.ph.i.i.i10

_RINvMNtNtCsiwebgwkgVmN_10etherparse3net9ipv4_extsNtB3_14Ipv4Extensions14write_internalINtNtB7_6writer8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB1R_9bytes_mut8BytesMutEEECsgZAIVb0XKpv_9ssservice.exit.thread56: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3855
  br label %_RINvMNtNtCsiwebgwkgVmN_10etherparse3net9ipv4_extsNtB3_14Ipv4Extensions14write_internalINtNtB7_6writer8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB1R_9bytes_mut8BytesMutEEECsgZAIVb0XKpv_9ssservice.exit.thread54

bb.at:                                            ; preds = %.lr.ph.i.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3855
  br label %_RNvXs4_NtNtNtCsiwebgwkgVmN_10etherparse3err6packet17build_write_errorNtB5_15BuildWriteErrorINtNtCsf3Ta7LF998c_4core7convert4FromINtNtBb_6writer10WriteErrorNtNtNtB1w_2io5error5ErrorNtNtNtB9_9ipv4_exts15exts_walk_error13ExtsWalkErrorEE4from.exit.i

end_hunk_1
begin_hunk_2_@_RINvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iterINtB6_4IterINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2M_8adapters3map8map_foldRB19_jjNCNvXs_NtNtB1i_6common3bufINtB4u_7BufListB19_ENtNtNtB28_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB2K_5accumjNtB5S_3Sum3sumINtB3M_3MapBY_B4n_EE0E0ECsgZAIVb0XKpv_9ssservice:bb.a
  %i.aq = getelementptr inbounds nuw [80 x i8], ptr %i.ai, i64 %.sroa.04.0.i1 ; 12 uses
  %i.ar = load i64, ptr %i.aq, align 8, !range !216, !noundef !178
  switch i64 %i.ar, label %default.unreachable [
    i64 0, label %bb.k
    i64 1, label %bb.l
    i64 2, label %bb.m
    i64 3, label %bb.n
    i64 4, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr i8, ptr %i.aq, i64 24
  %.val1.i.i.i.i.i14 = load i64, ptr %i.as, align 8, !noundef !178
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEjjNCNvXs_NtNtB1D_6common3bufINtB39_7BufListB1u_ENtNtNtB2t_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB4x_3Sum3sumINtBT_3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iter4IterB1u_EB32_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsgZAIVb0XKpv_9ssservice.exit.i6

bb.l:                                             ; preds = %bb.j
  %i.at = getelementptr i8, ptr %i.aq, i64 24
  %.val.i.i.i.i.i13 = load i64, ptr %i.at, align 8, !noundef !178
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.av = load i64, ptr %i.au, align 8, !noundef !178
  %i.aw = tail call i64 @llvm.umin.i64(i64 %.val.i.i.i.i.i13, i64 %i.av)
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEjjNCNvXs_NtNtB1D_6common3bufINtB39_7BufListB1u_ENtNtNtB2t_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB4x_3Sum3sumINtBT_3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iter4IterB1u_EB32_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsgZAIVb0XKpv_9ssservice.exit.i6

bb.m:                                             ; preds = %bb.j
  %i.ax = getelementptr i8, ptr %i.aq, i64 58
  %.val1.i.i.i.i.i.i.i9 = load i8, ptr %i.ax, align 2, !noundef !178
  %i.ay = getelementptr i8, ptr %i.aq, i64 59
  %.val2.i.i.i.i.i.i.i10 = load i8, ptr %i.ay, align 1, !noundef !178
  %i.az = sub i8 %.val2.i.i.i.i.i.i.i10, %.val1.i.i.i.i.i.i.i9
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr i8, ptr %i.aq, i64 24
  %.val.i.i.i.i.i.i.i11 = load i64, ptr %i.bb, align 8, !noundef !178
  %i.bc = tail call noundef i64 @llvm.uadd.sat.i64(i64 %i.ba, i64 %.val.i.i.i.i.i.i.i11)
  %i.bd = getelementptr i8, ptr %i.aq, i64 72
  %.val.i.i.i.i.i.i12 = load i64, ptr %i.bd, align 8, !noundef !178
  %i.be = tail call noundef i64 @llvm.uadd.sat.i64(i64 %i.bc, i64 %.val.i.i.i.i.i.i12)
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEjjNCNvXs_NtNtB1D_6common3bufINtB39_7BufListB1u_ENtNtNtB2t_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB4x_3Sum3sumINtBT_3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iter4IterB1u_EB32_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsgZAIVb0XKpv_9ssservice.exit.i6

bb.n:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !178
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEjjNCNvXs_NtNtB1D_6common3bufINtB39_7BufListB1u_ENtNtNtB2t_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB4x_3Sum3sumINtBT_3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iter4IterB1u_EB32_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsgZAIVb0XKpv_9ssservice.exit.i6

bb.o:                                             ; preds = %bb.j
  %i.bh = getelementptr i8, ptr %i.aq, i64 16
  %.val1.i.i.i.i.i.i3 = load i64, ptr %i.bh, align 8, !noundef !178
  %i.bi = getelementptr i8, ptr %i.aq, i64 40
  %.val2.i.i.i.i.i.i4 = load i64, ptr %i.bi, align 8, !noundef !178
  %i.bj = tail call noundef i64 @llvm.uadd.sat.i64(i64 %.val1.i.i.i.i.i.i3, i64 %.val2.i.i.i.i.i.i4)
  %i.bk = getelementptr i8, ptr %i.aq, i64 64
  %.val.i2.i.i.i.i.i5 = load i64, ptr %i.bk, align 8, !noundef !178
  %i.bl = tail call noundef i64 @llvm.uadd.sat.i64(i64 %i.bj, i64 %.val.i2.i.i.i.i.i5)
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEjjNCNvXs_NtNtB1D_6common3bufINtB39_7BufListB1u_ENtNtNtB2t_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB4x_3Sum3sumINtBT_3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iter4IterB1u_EB32_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsgZAIVb0XKpv_9ssservice.exit.i6

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEjjNCNvXs_NtNtB1D_6common3bufINtB39_7BufListB1u_ENtNtNtB2t_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB4x_3Sum3sumINtBT_3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iter4IterB1u_EB32_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsgZAIVb0XKpv_9ssservice.exit.i6: ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.sroa.0.0.i.i.i.i.i7 = phi i64 [ %.val1.i.i.i.i.i14, %bb.k ], [ %i.aw, %bb.l ], [ %i.be, %bb.m ], [ %i.bg, %bb.n ], [ %i.bl, %bb.o ]
  %i.bm = add i64 %.sroa.0.0.i.i.i.i.i7, %.sroa.02.0.i2 ; 2 uses
  %i.bn = add nuw i64 %.sroa.04.0.i1, 1           ; 2 uses
  %i.bo = icmp eq i64 %i.bn, %i.ap
  br i1 %i.bo, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB2t_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtBZ_6common3bufINtB3V_7BufListBQ_ENtNtNtB1P_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB2r_5accumjNtB5h_3Sum3sumINtB3e_3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iter4IterBQ_EB3O_EE0E0ECsgZAIVb0XKpv_9ssservice.exit16, label %bb.j

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB2t_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtBZ_6common3bufINtB3V_7BufListBQ_ENtNtNtB1P_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB2r_5accumjNtB5h_3Sum3sumINtB3e_3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iter4IterBQ_EB3O_EE0E0ECsgZAIVb0XKpv_9ssservice.exit16: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEjjNCNvXs_NtNtB1D_6common3bufINtB39_7BufListB1u_ENtNtNtB2t_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB4x_3Sum3sumINtBT_3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iter4IterB1u_EB32_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsgZAIVb0XKpv_9ssservice.exit.i6, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB2t_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtBZ_6common3bufINtB3V_7BufListBQ_ENtNtNtB1P_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB2r_5accumjNtB5h_3Sum3sumINtB3e_3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iter4IterBQ_EB3O_EE0E0ECsgZAIVb0XKpv_9ssservice.exit
  %.sroa.0.0.i8 = phi i64 [ %.sroa.0.0.i, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB2t_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtBZ_6common3bufINtB3V_7BufListBQ_ENtNtNtB1P_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB2r_5accumjNtB5h_3Sum3sumINtB3e_3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iter4IterBQ_EB3O_EE0E0ECsgZAIVb0XKpv_9ssservice.exit ], [ %i.bm, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEjjNCNvXs_NtNtB1D_6common3bufINtB39_7BufListB1u_ENtNtNtB2t_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB4x_3Sum3sumINtBT_3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque4iter4IterB1u_EB32_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsgZAIVb0XKpv_9ssservice.exit.i6 ]
  ret i64 %.sroa.0.0.i8
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvXs4_NtNtNtCs7ewmRfXve8r_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree nonnull readonly captures(address, read_provenance) %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !41304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !41304
  call void @_RNvNtNtCs7ewmRfXve8r_4http6header4name9parse_hdr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef range(i64 0, -9223372036854775808) %.8.val, ptr noalias nofree noundef nonnull dereferenceable(64) %i.c, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(256) @341) #53, !noalias !41305
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !208, !noalias !41304, !noundef !178
  %i.f = icmp eq i8 %i.e, -1
  br i1 %i.f, label %_RINvMsq_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_7HdrName10from_bytesNCINvXs4_NtNtB8_3map14as_header_nameReNtB1d_6Sealed4findNtNtB8_5value11HeaderValueE0INtNtCsf3Ta7LF998c_4core6option6OptionTjjEEECsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.b

_RINvMsq_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_7HdrName10from_bytesNCINvXs4_NtNtB8_3map14as_header_nameReNtB1d_6Sealed4findNtNtB8_5value11HeaderValueE0INtNtCsf3Ta7LF998c_4core6option6OptionTjjEEECsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !41304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !41304
  store i64 0, ptr %0, align 8
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !41304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !41304
  call void @llvm.experimental.noalias.scope.decl(metadata !41306)
  call void @llvm.experimental.noalias.scope.decl(metadata !41307)
  call void @llvm.experimental.noalias.scope.decl(metadata !41308)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !41307, !noalias !41309, !noundef !178 ; 4 uses
  %i.i = icmp ult i64 %i.h, 88686269585142076
  call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call fastcc noundef i16 @_RINvNtNtCs7ewmRfXve8r_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #61, !noalias !41310 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.m = load i16, ptr %i.l, align 8, !alias.scope !41307, !noalias !41309, !noundef !178 ; 3 uses
  %i.n = and i16 %i.m, %i.k
  %i.o = zext nneg i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !41307, !noalias !41309, !noundef !178 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !41307, !noalias !41309, !nonnull !178
  %i.t = zext i16 %i.m to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !41307, !noalias !41309, !nonnull !178
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !199, !alias.scope !41311, !noalias !41312 ; 2 uses
  %i.y = load ptr, ptr %i.a, align 8, !alias.scope !41311, !noalias !41312 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !41311, !noalias !41312 ; 5 uses
  %.not1.i.i.i.i = icmp eq i8 %i.x, 2
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = trunc i64 %i.ab to i8
  %.not = icmp eq i64 %i.q, 0
  %exitcond.not.i.i.i.i.i.i25 = icmp eq i64 %i.aa, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXss_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i, %bb.c
  %.sroa.05.0.i.i.i.ph = phi i64 [ %i.ap, %_RNvXss_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %.sroa.0.0.i.i.i.ph = phi i64 [ %i.aq, %_RNvXss_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.ad = icmp ult i64 %.sroa.0.0.i.i.i.ph, %i.q  ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.ad, %.not.not
  %.sroa.0.0.i.i.i.ph.mux = select i1 %i.ad, i64 %.sroa.0.0.i.i.i.ph, i64 0 ; 9 uses
  br i1 %brmerge, label %.loopexit34, label %infloop

.loopexit34:                                      ; preds = %.outer
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.0.0.i.i.i.ph.mux ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !noalias !41313, !noundef !178 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.af, -1
  br i1 %.not.i.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit34
  %i.ag = zext i16 %i.af to i64                   ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ai = load i16, ptr %i.ah, align 2, !noalias !41313, !noundef !178 ; 2 uses
  %i.aj = and i16 %i.ai, %i.m
  %i.ak = zext i16 %i.aj to i64
  %i.al = sub i64 %.sroa.0.0.i.i.i.ph.mux, %i.ak
  %i.am = and i64 %i.al, %i.t
  %i.an = icmp samesign ugt i64 %.sroa.05.0.i.i.i.ph, %i.am
  br i1 %i.an, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = icmp eq i16 %i.ai, %i.k
  br i1 %i.ao, label %bb.f, label %_RNvXss_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i

_RNvXss_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i: ; preds = %.lr.ph, %.split.i.i.i, %bb.k, %bb.j, %.split11.i.i.i, %bb.i, %bb.h, %bb.e
  %i.ap = add nuw nsw i64 %.sroa.05.0.i.i.i.ph, 1
  %i.aq = add i64 %.sroa.0.0.i.i.i.ph.mux, 1
  br label %.outer

bb.f:                                             ; preds = %bb.e
  %i.ar = icmp samesign ugt i64 %i.h, %i.ag
  br i1 %i.ar, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw [104 x i8], ptr %i.v, i64 %i.ag ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !noalias !41314, !noundef !178
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i8 %i.x, label %bb.k [
    i8 2, label %_RNvXss_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i
    i8 0, label %bb.j
  ]

bb.i:                                             ; preds = %bb.g
  br i1 %.not1.i.i.i.i, label %.split11.i.i.i, label %_RNvXss_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i

.split11.i.i.i:                                   ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.aw = load i8, ptr %i.av, align 8, !range !202, !noalias !41314, !noundef !178
  %i.ax = icmp eq i8 %i.aw, %i.ac
  br i1 %i.ax, label %.loopexit, label %_RNvXss_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !41314, !noundef !178
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !41314, !noundef !178
  call void @llvm.experimental.noalias.scope.decl(metadata !41315)
  call void @llvm.experimental.noalias.scope.decl(metadata !41316)
  %.not.i.i.i.i.i = icmp eq i64 %i.bb, %i.aa
  br i1 %.not.i.i.i.i.i, label %.preheader.i.i.i.i.i.preheader, label %_RNvXss_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i

.preheader.i.i.i.i.i.preheader:                   ; preds = %bb.j
  br i1 %exitcond.not.i.i.i.i.i.i25, label %.loopexit, label %.lr.ph

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph
  %i.bc = add nuw i64 %i.bd, 1                    ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bc, %i.aa
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i
  %i.bd = phi i64 [ %i.bc, %.preheader.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.preheader ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bd
  %.val.i.i.i.i.i.i = load i8, ptr %i.be, align 1, !alias.scope !41315, !noalias !41317, !noundef !178
  %.val6.i.i.i.i.i.i = load i8, ptr %i.bf, align 1, !alias.scope !41316, !noalias !41318, !noundef !178
  %i.bg = zext i8 %.val6.i.i.i.i.i.i to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @341, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !41319, !noundef !178
  %.not.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %_RNvXss_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i

bb.k:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !41314, !noundef !178
  %i.bl = icmp eq i64 %i.bk, %i.aa
  br i1 %i.bl, label %.split.i.i.i, label %_RNvXss_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i

.split.i.i.i:                                     ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !41314, !noundef !178
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.bn, ptr nonnull %i.y, i64 %i.aa), !noalias !41314
  %i.bo = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bo, label %.loopexit, label %_RNvXss_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameINtNtCsf3Ta7LF998c_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i

bb.l:                                             ; preds = %bb.f
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134) #63, !noalias !41313
  unreachable

.loopexit:                                        ; preds = %.split.i.i.i, %.split11.i.i.i, %bb.d, %.loopexit34, %.preheader.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i, %bb.b
  %.sroa.5.0.i = phi i64 [ undef, %bb.b ], [ %i.ag, %.preheader.i.i.i.i.i ], [ undef, %bb.d ], [ %i.ag, %.split.i.i.i ], [ %i.ag, %.split11.i.i.i ], [ undef, %.loopexit34 ], [ %i.ag, %.preheader.i.i.i.i.i.preheader ]
  %.sroa.4.0.i = phi i64 [ undef, %bb.b ], [ %.sroa.0.0.i.i.i.ph.mux, %.preheader.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.ph.mux, %.preheader.i.i.i.i.i.preheader ], [ %.sroa.0.0.i.i.i.ph.mux, %.loopexit34 ], [ %.sroa.0.0.i.i.i.ph.mux, %bb.d ], [ %.sroa.0.0.i.i.i.ph.mux, %.split11.i.i.i ], [ %.sroa.0.0.i.i.i.ph.mux, %.split.i.i.i ]
  %.sink.i.i.i = phi i64 [ 0, %bb.b ], [ 1, %.preheader.i.i.i.i.i ], [ 0, %bb.d ], [ 1, %.split.i.i.i ], [ 1, %.split11.i.i.i ], [ 0, %.loopexit34 ], [ 1, %.preheader.i.i.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !41304
  store i64 %.sink.i.i.i, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.i, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %_RINvMsq_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_7HdrName10from_bytesNCINvXs4_NtNtB8_3map14as_header_nameReNtB1d_6Sealed4findNtNtB8_5value11HeaderValueE0INtNtCsf3Ta7LF998c_4core6option6OptionTjjEEECsgZAIVb0XKpv_9ssservice.exit.thread, %.loopexit
  ret void

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvXsa_CsfRIMZ2Mh1DJ_3aesNtB6_6Aes128NtNtCs9x0VV5ereHe_6cipher5block18BlockCipherDecrypt20decrypt_with_backendINtNtBC_3ctx8BlockCtxINtNtCslT5NZwdYsTa_7typenum4uint4UIntIB27_IB27_IB27_IB27_NtB29_5UTermNtNtB2b_3bit2B1ENtB3f_2B0EB3t_EB3t_EB3t_EEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(704) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 33 uses
  %i.b = alloca [64 x i8], align 1                ; 2 uses
  %i.c = alloca [64 x i8], align 1                ; 5 uses
  %i.d = load atomic i8, ptr @_RNvNtCsfRIMZ2Mh1DJ_3aes12features_aes7STORAGE monotonic, align 1
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !41366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41367)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !alias.scope !41369, !noalias !41368
  call void @_RNvXs_NtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice4wordyNtB4_4Word8bitslice(ptr noalias nofree noundef nonnull align 8 %i.a, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.c) #53, !noalias !41370
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 640
  call void @llvm.experimental.noalias.scope.decl(metadata !41371)
  call void @llvm.experimental.noalias.scope.decl(metadata !41372)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.i = load <2 x i64>, ptr %i.g, align 16, !alias.scope !41373, !noalias !41374
  %i.j = load <2 x i64>, ptr %i.a, align 16, !alias.scope !41375, !noalias !41376
  %i.k = xor <2 x i64> %i.j, %i.i
  store <2 x i64> %i.k, ptr %i.a, align 16, !alias.scope !41375, !noalias !41376
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.o = load <2 x i64>, ptr %i.m, align 16, !alias.scope !41373, !noalias !41374
  %i.p = load <2 x i64>, ptr %i.l, align 16, !alias.scope !41375, !noalias !41376
  %i.q = xor <2 x i64> %i.p, %i.o
  store <2 x i64> %i.q, ptr %i.l, align 16, !alias.scope !41375, !noalias !41376
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.u = load <2 x i64>, ptr %i.s, align 16, !alias.scope !41373, !noalias !41374
  %i.v = load <2 x i64>, ptr %i.r, align 16, !alias.scope !41375, !noalias !41376
  %i.w = xor <2 x i64> %i.v, %i.u
  store <2 x i64> %i.w, ptr %i.r, align 16, !alias.scope !41375, !noalias !41376
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 13 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.aa = load <2 x i64>, ptr %i.y, align 16, !alias.scope !41373, !noalias !41374
  %i.ab = load <2 x i64>, ptr %i.x, align 16, !alias.scope !41375, !noalias !41376
  %i.ac = xor <2 x i64> %i.ab, %i.aa
  store <2 x i64> %i.ac, ptr %i.x, align 16, !alias.scope !41375, !noalias !41376
  call fastcc void @_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice4sbox13inv_sub_bytesyECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 %i.a) #53
  %i.ad = load <2 x i64>, ptr %i.a, align 16, !alias.scope !41377, !noalias !41368 ; 3 uses
  %i.ae = lshr <2 x i64> %i.ad, splat (i64 8)
  %i.af = xor <2 x i64> %i.ae, %i.ad
  %i.ag = and <2 x i64> %i.af, splat (i64 71776119077928960) ; 2 uses
  %i.ah = shl nuw <2 x i64> %i.ag, splat (i64 8)
  %i.ai = xor <2 x i64> %i.ad, %i.ah
  %i.aj = xor <2 x i64> %i.ai, %i.ag
  %i.ak = load <2 x i64>, ptr %i.l, align 16, !alias.scope !41377, !noalias !41368 ; 3 uses
  %i.al = lshr <2 x i64> %i.ak, splat (i64 8)
  %i.am = xor <2 x i64> %i.al, %i.ak
  %i.an = and <2 x i64> %i.am, splat (i64 71776119077928960) ; 2 uses
  %i.ao = shl nuw <2 x i64> %i.an, splat (i64 8)
  %i.ap = xor <2 x i64> %i.ak, %i.ao
  %i.aq = xor <2 x i64> %i.ap, %i.an
  %i.ar = load <2 x i64>, ptr %i.r, align 16, !alias.scope !41377, !noalias !41368 ; 3 uses
  %i.as = lshr <2 x i64> %i.ar, splat (i64 8)
  %i.at = xor <2 x i64> %i.as, %i.ar
  %i.au = and <2 x i64> %i.at, splat (i64 71776119077928960) ; 2 uses
  %i.av = shl nuw <2 x i64> %i.au, splat (i64 8)
  %i.aw = xor <2 x i64> %i.ar, %i.av
  %i.ax = xor <2 x i64> %i.aw, %i.au
  %i.ay = load <2 x i64>, ptr %i.x, align 16, !alias.scope !41377, !noalias !41368 ; 3 uses
  %i.az = lshr <2 x i64> %i.ay, splat (i64 8)
  %i.ba = xor <2 x i64> %i.az, %i.ay
  %i.bb = and <2 x i64> %i.ba, splat (i64 71776119077928960) ; 2 uses
  %i.bc = shl nuw <2 x i64> %i.bb, splat (i64 8)
  %i.bd = xor <2 x i64> %i.ay, %i.bc
  %i.be = xor <2 x i64> %i.bd, %i.bb
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.0.029.i = phi i64 [ 72, %bb.b ], [ %i.gx, %bb.f ] ; 5 uses
  %i.bf = phi <2 x i64> [ %i.aj, %bb.b ], [ %i.gy, %bb.f ]
  %i.bg = phi <2 x i64> [ %i.aq, %bb.b ], [ %i.gz, %bb.f ]
  %i.bh = phi <2 x i64> [ %i.ax, %bb.b ], [ %i.ha, %bb.f ]
  %i.bi = phi <2 x i64> [ %i.be, %bb.b ], [ %i.hb, %bb.f ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.029.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41378)
  call void @llvm.experimental.noalias.scope.decl(metadata !41379)
  %i.bk = load <2 x i64>, ptr %i.bj, align 16, !alias.scope !41380, !noalias !41381
  %i.bl = xor <2 x i64> %i.bf, %i.bk
  store <2 x i64> %i.bl, ptr %i.a, align 16, !alias.scope !41382, !noalias !41383
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bn = load <2 x i64>, ptr %i.bm, align 16, !alias.scope !41380, !noalias !41381
  %i.bo = xor <2 x i64> %i.bg, %i.bn
  store <2 x i64> %i.bo, ptr %i.l, align 16, !alias.scope !41382, !noalias !41383
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bq = load <2 x i64>, ptr %i.bp, align 16, !alias.scope !41380, !noalias !41381
  %i.br = xor <2 x i64> %i.bh, %i.bq
  store <2 x i64> %i.br, ptr %i.r, align 16, !alias.scope !41382, !noalias !41383
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bt = load <2 x i64>, ptr %i.bs, align 16, !alias.scope !41380, !noalias !41381
  %i.bu = xor <2 x i64> %i.bi, %i.bt
  store <2 x i64> %i.bu, ptr %i.x, align 16, !alias.scope !41382, !noalias !41383
  call fastcc void @_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice11mix_columns17inv_mix_columns_1yECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a) #53, !noalias !41368
  call fastcc void @_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice4sbox13inv_sub_bytesyECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 %i.a) #53
  %i.bv = add nsw i64 %.sroa.0.029.i, -8          ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice6aes1287decryptyECsgZAIVb0XKpv_9ssservice.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41384)
  call void @llvm.experimental.noalias.scope.decl(metadata !41385)
  %i.by = load i64, ptr %i.bx, align 16, !alias.scope !41386, !noalias !41387, !noundef !178
  %i.bz = load i64, ptr %i.a, align 16, !alias.scope !41388, !noalias !41389, !noundef !178
  %i.ca = xor i64 %i.bz, %i.by                    ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !41386, !noalias !41387, !noundef !178
  %i.cd = load i64, ptr %i.h, align 8, !alias.scope !41388, !noalias !41389, !noundef !178
  %i.ce = xor i64 %i.cd, %i.cc                    ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cg = load i64, ptr %i.cf, align 16, !alias.scope !41386, !noalias !41387, !noundef !178
  %i.ch = load i64, ptr %i.l, align 16, !alias.scope !41388, !noalias !41389, !noundef !178
  %i.ci = xor i64 %i.ch, %i.cg                    ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !41386, !noalias !41387, !noundef !178
  %i.cl = load i64, ptr %i.n, align 8, !alias.scope !41388, !noalias !41389, !noundef !178
  %i.cm = xor i64 %i.cl, %i.ck                    ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.co = load i64, ptr %i.cn, align 16, !alias.scope !41386, !noalias !41387, !noundef !178
  %i.cp = load i64, ptr %i.r, align 16, !alias.scope !41388, !noalias !41389, !noundef !178
  %i.cq = xor i64 %i.cp, %i.co                    ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !41386, !noalias !41387, !noundef !178
  %i.ct = load i64, ptr %i.t, align 8, !alias.scope !41388, !noalias !41389, !noundef !178
  %i.cu = xor i64 %i.ct, %i.cs                    ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.cw = load i64, ptr %i.cv, align 16, !alias.scope !41386, !noalias !41387, !noundef !178
  %i.cx = load i64, ptr %i.x, align 16, !alias.scope !41388, !noalias !41389, !noundef !178
  %i.cy = xor i64 %i.cx, %i.cw                    ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !41386, !noalias !41387, !noundef !178
  %i.db = load i64, ptr %i.z, align 8, !alias.scope !41388, !noalias !41389, !noundef !178
  %i.dc = xor i64 %i.db, %i.da                    ; 4 uses
  %i.dd = call i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 48)
  %i.de = call i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 48)
  %i.df = call i64 @llvm.fshl.i64(i64 %i.ci, i64 %i.ci, i64 48)
  %i.dg = call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 48)
end_hunk_2
begin_hunk_3_@_RNCINvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13online_config16content_encoding9read_bodyINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEE0CsgZAIVb0XKpv_9ssservice:bb.a
  store i8 7, ptr %i.og, align 1, !alias.scope !45143, !noalias !45145
  br label %bb.ec

bb.dg:                                            ; preds = %.loopexit91.i.i.i.i
  store i8 6, ptr %i.og, align 1, !alias.scope !45143, !noalias !45145
  br label %bb.dz

bb.dh:                                            ; preds = %.loopexit88.i.i.i.i
  store i8 3, ptr %i.og, align 1, !alias.scope !45143, !noalias !45145
  br label %bb.dt

bb.di:                                            ; preds = %.loopexit88.i.i.i.i
  store i8 1, ptr %i.ny, align 4, !alias.scope !45143, !noalias !45145
  store i8 5, ptr %i.og, align 1, !alias.scope !45143, !noalias !45145
  br label %bb.dw

bb.dj:                                            ; preds = %.loopexit84.i.i.i.i
  store i8 1, ptr %i.og, align 1, !alias.scope !45143, !noalias !45145
  br label %bb.dn

default.unreachable.i109.i.i.i:                   ; preds = %bb.de
  unreachable

bb.dk:                                            ; preds = %bb.de
  call void @llvm.experimental.noalias.scope.decl(metadata !45146), !noalias !45147
  call void @llvm.experimental.noalias.scope.decl(metadata !45148), !noalias !45147
  %.not.i.i107.i.i.i = icmp eq i32 %.promoted232.i.i.i.i, 64
  br i1 %.not.i.i107.i.i.i, label %.lr.ph.i.preheader.i.i.i.i, label %.loopexit84.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.dk
  %i.sq = zext i32 %.promoted235.i.i.i.i to i64   ; 2 uses
  %i.sr = icmp eq i32 %.promoted234.i.i.i.i, 0
  br i1 %i.sr, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph.i.preheader.i.i.i.i
  %i.ss = icmp ult i32 %.promoted235.i.i.i.i, %i.pp
  br i1 %i.ss, label %.loopexit84.loopexit.i.i.i.i, label %bb.dm

.loopexit84.loopexit.i.i.i.i:                     ; preds = %bb.dl
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.sq
  %i.su = load i8, ptr %i.st, align 1, !alias.scope !45149, !noalias !45150, !noundef !178
  %i.sv = zext i8 %i.su to i64
  %i.sw = call i64 @llvm.fshl.i64(i64 %i.sv, i64 %.promoted233.i.i.i.i, i64 56) ; 2 uses
  store i64 %i.sw, ptr %i.ni, align 8, !alias.scope !45151, !noalias !45152
  %i.sx = add i32 %.promoted234.i.i.i.i, -1       ; 2 uses
  store i32 %i.sx, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45151, !noalias !45152
  %indvars.iv.next474.i.i.i.i = add nuw nsw i32 %.promoted235.i.i.i.i, 1 ; 2 uses
  store i32 %indvars.iv.next474.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !45151, !noalias !45152
  br label %.loopexit84.i.i.i.i

bb.dm:                                            ; preds = %bb.dl
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.sq, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #63, !noalias !45153
  unreachable

bb.dn:                                            ; preds = %bb.dj, %bb.de
  %i.sy = phi i32 [ %i.yd, %bb.dj ], [ %.promoted232.i.i.i.i, %bb.de ] ; 2 uses
  %i.sz = phi i64 [ %i.xx, %bb.dj ], [ %.promoted233.i.i.i.i, %bb.de ] ; 2 uses
  %i.ta = phi i32 [ %i.xw, %bb.dj ], [ %.promoted234.i.i.i.i, %bb.de ] ; 3 uses
  %i.tb = phi i32 [ %i.xv, %bb.dj ], [ %.promoted235.i.i.i.i, %bb.de ] ; 4 uses
  %i.tc = phi i32 [ 0, %bb.dj ], [ %.promoted236.i.i.i.i, %bb.de ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45154), !noalias !45147
  call void @llvm.experimental.noalias.scope.decl(metadata !45155), !noalias !45147
  %.not.i24.i.i.i.i = icmp eq i32 %i.sy, 64
  br i1 %.not.i24.i.i.i.i, label %.lr.ph.i27.preheader.i.i.i.i, label %.loopexit86.i.i.i.i

.lr.ph.i27.preheader.i.i.i.i:                     ; preds = %bb.dn
  %i.td = zext i32 %i.tb to i64                   ; 2 uses
  %i.te = icmp eq i32 %i.ta, 0
  br i1 %i.te, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.do

bb.do:                                            ; preds = %.lr.ph.i27.preheader.i.i.i.i
  %i.tf = icmp ult i32 %i.tb, %i.pp
  br i1 %i.tf, label %.loopexit86.loopexit.i.i.i.i, label %bb.dp

.loopexit86.loopexit.i.i.i.i:                     ; preds = %bb.do
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.td
  %i.th = load i8, ptr %i.tg, align 1, !alias.scope !45156, !noalias !45157, !noundef !178
  %i.ti = zext i8 %i.th to i64
  %i.tj = call i64 @llvm.fshl.i64(i64 %i.ti, i64 %i.sz, i64 56) ; 2 uses
  store i64 %i.tj, ptr %i.ni, align 8, !alias.scope !45158, !noalias !45159
  %i.tk = add i32 %i.ta, -1                       ; 2 uses
  store i32 %i.tk, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45158, !noalias !45159
  %indvars.iv.next471.i.i.i.i = add nuw nsw i32 %i.tb, 1 ; 2 uses
  store i32 %indvars.iv.next471.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !45158, !noalias !45159
  br label %.loopexit86.i.i.i.i

bb.dp:                                            ; preds = %bb.do
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.td, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #63, !noalias !45160
  unreachable

.sink.split.i106.i.i.i:                           ; preds = %.loopexit86.i.i.i.i, %.loopexit84.i.i.i.i
  %.ph.i.i.i.i = phi i32 [ %i.yd, %.loopexit84.i.i.i.i ], [ %i.yl, %.loopexit86.i.i.i.i ]
  %.ph542.i.i.i.i = phi i64 [ %i.xx, %.loopexit84.i.i.i.i ], [ %i.yi, %.loopexit86.i.i.i.i ]
  %.ph543.i.i.i.i = phi i32 [ %i.xw, %.loopexit84.i.i.i.i ], [ %i.yh, %.loopexit86.i.i.i.i ]
  %.ph544.i.i.i.i = phi i32 [ %i.xv, %.loopexit84.i.i.i.i ], [ %i.yg, %.loopexit86.i.i.i.i ]
  %.ph545.i.i.i.i = phi i32 [ 0, %.loopexit84.i.i.i.i ], [ %i.tc, %.loopexit86.i.i.i.i ]
  store i8 2, ptr %i.og, align 1, !alias.scope !45143, !noalias !45145
  br label %bb.dq

bb.dq:                                            ; preds = %.sink.split.i106.i.i.i, %bb.de
  %i.tl = phi i32 [ %.promoted232.i.i.i.i, %bb.de ], [ %.ph.i.i.i.i, %.sink.split.i106.i.i.i ] ; 3 uses
  %i.tm = phi i64 [ %.promoted233.i.i.i.i, %bb.de ], [ %.ph542.i.i.i.i, %.sink.split.i106.i.i.i ] ; 2 uses
  %i.tn = phi i32 [ %.promoted234.i.i.i.i, %bb.de ], [ %.ph543.i.i.i.i, %.sink.split.i106.i.i.i ] ; 3 uses
  %i.to = phi i32 [ %.promoted235.i.i.i.i, %bb.de ], [ %.ph544.i.i.i.i, %.sink.split.i106.i.i.i ] ; 4 uses
  %i.tp = phi i32 [ %.promoted236.i.i.i.i, %bb.de ], [ %.ph545.i.i.i.i, %.sink.split.i106.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45161), !noalias !45147
  call void @llvm.experimental.noalias.scope.decl(metadata !45162), !noalias !45147
  %i.tq = add i32 %i.tl, -63
  %.not.i34.i.i.i.i = icmp ult i32 %i.tq, 2
  br i1 %.not.i34.i.i.i.i, label %.lr.ph.i37.preheader.i.i.i.i, label %.loopexit88.i.i.i.i

.lr.ph.i37.preheader.i.i.i.i:                     ; preds = %bb.dq
  %i.tr = zext i32 %i.to to i64                   ; 2 uses
  %i.ts = icmp eq i32 %i.tn, 0
  br i1 %i.ts, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph.i37.preheader.i.i.i.i
  %exitcond469.not.not.i.i.i.i = icmp ult i32 %i.to, %i.pp
  br i1 %exitcond469.not.not.i.i.i.i, label %.loopexit88.loopexit.i.i.i.i, label %bb.ds

.loopexit88.loopexit.i.i.i.i:                     ; preds = %bb.dr
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.tr
  %i.tu = load i8, ptr %i.tt, align 1, !alias.scope !45163, !noalias !45164, !noundef !178
  %i.tv = zext i8 %i.tu to i64
  %i.tw = call i64 @llvm.fshl.i64(i64 %i.tv, i64 %i.tm, i64 56) ; 2 uses
  store i64 %i.tw, ptr %i.ni, align 8, !alias.scope !45165, !noalias !45166
  %i.tx = add nsw i32 %i.tl, -8
  %i.ty = add i32 %i.tn, -1                       ; 2 uses
  store i32 %i.ty, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45165, !noalias !45166
  %indvars.iv.next465.i.i.i.i = add nuw nsw i32 %i.to, 1 ; 2 uses
  store i32 %indvars.iv.next465.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !45165, !noalias !45166
  br label %.loopexit88.i.i.i.i

bb.ds:                                            ; preds = %bb.dr
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.tr, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #63, !noalias !45167
  unreachable

bb.dt:                                            ; preds = %bb.dh, %bb.de
  %i.tz = phi i32 [ 0, %bb.dh ], [ %.promoted.i98.i.i.i, %bb.de ] ; 3 uses
  %i.ua = phi i8 [ %i.yz, %bb.dh ], [ %.promoted231.i.i.i.i, %bb.de ] ; 2 uses
  %i.ub = phi i32 [ %i.yx, %bb.dh ], [ %.promoted232.i.i.i.i, %bb.de ] ; 3 uses
  %i.uc = phi i64 [ %i.yr, %bb.dh ], [ %.promoted233.i.i.i.i, %bb.de ] ; 3 uses
  %i.ud = phi i32 [ %i.yq, %bb.dh ], [ %.promoted234.i.i.i.i, %bb.de ] ; 3 uses
  %i.ue = phi i32 [ %i.yp, %bb.dh ], [ %.promoted235.i.i.i.i, %bb.de ] ; 3 uses
  %i.uf = phi i32 [ %i.tp, %bb.dh ], [ %.promoted236.i.i.i.i, %bb.de ] ; 3 uses
  %i.ug = zext i8 %i.ua to i32                    ; 3 uses
  %i.uh = icmp slt i32 %i.tz, %i.ug
  br i1 %i.uh, label %.lr.ph179.i.i.i.i, label %.sink.split546.i.i.i.i

.lr.ph179.i.i.i.i:                                ; preds = %bb.dt
  %i.ui = icmp ugt i8 %i.ua, 4
  br i1 %i.ui, label %.lr.ph179.split.i.i.i.i, label %.lr.ph179.split.us.i.i.i.i

.lr.ph179.split.us.i.i.i.i:                       ; preds = %.lr.ph179.i.i.i.i, %.loopexit.us.i.i.i.i
  %i.uj = phi i32 [ %i.vf, %.loopexit.us.i.i.i.i ], [ %i.uf, %.lr.ph179.i.i.i.i ]
  %.promoted18.i70190.us.i.i.i.i = phi i32 [ %.promoted18.i70189.us.i.i.i.i, %.loopexit.us.i.i.i.i ], [ %i.ue, %.lr.ph179.i.i.i.i ] ; 4 uses
  %.promoted17.i69187.us.i.i.i.i = phi i32 [ %.promoted17.i69186.us.i.i.i.i, %.loopexit.us.i.i.i.i ], [ %i.ud, %.lr.ph179.i.i.i.i ] ; 3 uses
  %i.uk = phi i64 [ %i.uu, %.loopexit.us.i.i.i.i ], [ %i.uc, %.lr.ph179.i.i.i.i ] ; 2 uses
  %.promoted.i63183.us.i.i.i.i = phi i32 [ %i.va, %.loopexit.us.i.i.i.i ], [ %i.ub, %.lr.ph179.i.i.i.i ] ; 3 uses
  %.sroa.013.0177.us.i.i.i.i = phi i32 [ %i.vb, %.loopexit.us.i.i.i.i ], [ %i.tz, %.lr.ph179.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45168), !noalias !45147
  call void @llvm.experimental.noalias.scope.decl(metadata !45169), !noalias !45147
  %i.ul = add i32 %.promoted.i63183.us.i.i.i.i, -61
  %.not.i64.us.i.i.i.i = icmp ult i32 %i.ul, 4
  br i1 %.not.i64.us.i.i.i.i, label %.lr.ph.i67.us.preheader.i.i.i.i, label %.loopexit.us.i.i.i.i

.lr.ph.i67.us.preheader.i.i.i.i:                  ; preds = %.lr.ph179.split.us.i.i.i.i
  %i.um = zext i32 %.promoted18.i70190.us.i.i.i.i to i64 ; 2 uses
  %i.un = icmp eq i32 %.promoted17.i69187.us.i.i.i.i, 0
  br i1 %i.un, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i, label %bb.du

bb.du:                                            ; preds = %.lr.ph.i67.us.preheader.i.i.i.i
  %exitcond455.not.not.i.i.i.i = icmp ult i32 %.promoted18.i70190.us.i.i.i.i, %i.pp
  br i1 %exitcond455.not.not.i.i.i.i, label %.loopexit.us.loopexit.i.i.i.i, label %.split199.us.i.i.i.i

.loopexit.us.loopexit.i.i.i.i:                    ; preds = %bb.du
  %i.uo = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.um
  %i.up = load i8, ptr %i.uo, align 1, !alias.scope !45170, !noalias !45171, !noundef !178
  %i.uq = zext i8 %i.up to i64
  %i.ur = call i64 @llvm.fshl.i64(i64 %i.uq, i64 %i.uk, i64 56) ; 2 uses
  store i64 %i.ur, ptr %i.ni, align 8, !alias.scope !45172, !noalias !45173
  %i.us = add nsw i32 %.promoted.i63183.us.i.i.i.i, -8
  %i.ut = add i32 %.promoted17.i69187.us.i.i.i.i, -1 ; 2 uses
  store i32 %i.ut, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45172, !noalias !45173
  %indvars.iv.next451.i.i.i.i = add nuw nsw i32 %.promoted18.i70190.us.i.i.i.i, 1 ; 2 uses
  store i32 %indvars.iv.next451.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !45172, !noalias !45173
  br label %.loopexit.us.i.i.i.i

.loopexit.us.i.i.i.i:                             ; preds = %.loopexit.us.loopexit.i.i.i.i, %.lr.ph179.split.us.i.i.i.i
  %.promoted18.i70189.us.i.i.i.i = phi i32 [ %.promoted18.i70190.us.i.i.i.i, %.lr.ph179.split.us.i.i.i.i ], [ %indvars.iv.next451.i.i.i.i, %.loopexit.us.loopexit.i.i.i.i ] ; 2 uses
  %.promoted17.i69186.us.i.i.i.i = phi i32 [ %.promoted17.i69187.us.i.i.i.i, %.lr.ph179.split.us.i.i.i.i ], [ %i.ut, %.loopexit.us.loopexit.i.i.i.i ] ; 2 uses
  %i.uu = phi i64 [ %i.uk, %.lr.ph179.split.us.i.i.i.i ], [ %i.ur, %.loopexit.us.loopexit.i.i.i.i ] ; 3 uses
  %.lcssa7.i66.us.i.i.i.i = phi i32 [ %.promoted.i63183.us.i.i.i.i, %.lr.ph179.split.us.i.i.i.i ], [ %i.us, %.loopexit.us.loopexit.i.i.i.i ] ; 2 uses
  %i.uv = and i32 %.lcssa7.i66.us.i.i.i.i, 63
  %i.uw = zext nneg i32 %i.uv to i64
  %i.ux = lshr i64 %i.uu, %i.uw
  %i.uy = trunc i64 %i.ux to i32
  %i.uz = and i32 %i.uy, 15
  %i.va = add i32 %.lcssa7.i66.us.i.i.i.i, 4      ; 3 uses
  store i32 %i.va, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45172, !noalias !45173
  %i.vb = add i32 %.sroa.013.0177.us.i.i.i.i, 1   ; 2 uses
  %i.vc = shl i32 %.sroa.013.0177.us.i.i.i.i, 2
  %i.vd = and i32 %i.vc, 28
  %i.ve = shl nuw i32 %i.uz, %i.vd
  %i.vf = or i32 %i.ve, %i.uj                     ; 3 uses
  store i32 %i.vf, ptr %i.nm, align 8, !alias.scope !45143, !noalias !45145
  %exitcond456.not.i.i.i.i = icmp eq i32 %i.vb, %i.ug
  br i1 %exitcond456.not.i.i.i.i, label %.sink.split546.i.i.i.i, label %.lr.ph179.split.us.i.i.i.i

.sink.split546.i.i.i.i:                           ; preds = %.loopexit.us.i.i.i.i, %bb.ef, %.loopexit83.us.i.i.i.i, %bb.em, %bb.ec, %bb.dt
  %.promoted18.i.i1678.i = phi i32 [ %.promoted18.i70189.i.i.i.i, %bb.ef ], [ %i.ue, %bb.dt ], [ %.promoted18.i80161.us.i.i.i.i, %.loopexit83.us.i.i.i.i ], [ %i.wt, %bb.ec ], [ %.promoted18.i80161.i.i.i.i, %bb.em ], [ %.promoted18.i70189.us.i.i.i.i, %.loopexit.us.i.i.i.i ]
  %.promoted17.i.i1676.i = phi i32 [ %.promoted17.i69186.i.i.i.i, %bb.ef ], [ %i.ud, %bb.dt ], [ %.promoted17.i79158.us.i.i.i.i, %.loopexit83.us.i.i.i.i ], [ %i.ws, %bb.ec ], [ %.promoted17.i79158.i.i.i.i, %bb.em ], [ %.promoted17.i69186.us.i.i.i.i, %.loopexit.us.i.i.i.i ]
  %i.vg = phi i64 [ %i.zm, %bb.ef ], [ %i.uc, %bb.dt ], [ %i.xj, %.loopexit83.us.i.i.i.i ], [ %i.wr, %bb.ec ], [ %i.abw, %bb.em ], [ %i.uu, %.loopexit.us.i.i.i.i ]
  %.promoted.i81673.i.i = phi i32 [ %i.zs, %bb.ef ], [ %i.ub, %bb.dt ], [ %i.xp, %.loopexit83.us.i.i.i.i ], [ %i.wq, %bb.ec ], [ %i.acc, %bb.em ], [ %i.va, %.loopexit.us.i.i.i.i ]
  %.ph547.i.i.i.i = phi i32 [ %i.zz, %bb.ef ], [ %i.uf, %bb.dt ], [ %i.xu, %.loopexit83.us.i.i.i.i ], [ %i.wu, %bb.ec ], [ %i.acj, %bb.em ], [ %i.vf, %.loopexit.us.i.i.i.i ]
  store i8 4, ptr %i.og, align 1, !alias.scope !45143, !noalias !45145
  br label %bb.dv

bb.dv:                                            ; preds = %.sink.split546.i.i.i.i, %bb.de
  %.promoted18.i.i.i = phi i32 [ %.promoted235.i.i.i.i, %bb.de ], [ %.promoted18.i.i1678.i, %.sink.split546.i.i.i.i ] ; 3 uses
  %.promoted17.i.i.i = phi i32 [ %.promoted234.i.i.i.i, %bb.de ], [ %.promoted17.i.i1676.i, %.sink.split546.i.i.i.i ] ; 2 uses
  %.promoted14.i.i.i = phi i64 [ %.promoted233.i.i.i.i, %bb.de ], [ %i.vg, %.sink.split546.i.i.i.i ] ; 3 uses
  %.promoted.i8.i.i = phi i32 [ %.promoted232.i.i.i.i, %bb.de ], [ %.promoted.i81673.i.i, %.sink.split546.i.i.i.i ] ; 3 uses
  %.pre.i101.i.i.i = phi i32 [ %.promoted236.i.i.i.i, %bb.de ], [ %.ph547.i.i.i.i, %.sink.split546.i.i.i.i ]
  %i.vh = load i8, ptr %i.nk, align 2, !alias.scope !45143, !noalias !45145, !noundef !178
  %i.vi = icmp eq i8 %i.vh, 0
  %i.vj = load i8, ptr %i.ny, align 4, !alias.scope !45143, !noalias !45145
  %i.vk = icmp eq i8 %i.vj, 0
  %or.cond7.i.i.i.i = select i1 %i.vi, i1 %i.vk, i1 false
  br i1 %or.cond7.i.i.i.i, label %bb.eg, label %bb.ek

bb.dw:                                            ; preds = %bb.di, %bb.de
  %i.vl = phi i32 [ 0, %bb.di ], [ %.promoted.i98.i.i.i, %bb.de ]
  %i.vm = phi i32 [ %i.yx, %bb.di ], [ %.promoted232.i.i.i.i, %bb.de ] ; 2 uses
  %i.vn = phi i64 [ %i.yr, %bb.di ], [ %.promoted233.i.i.i.i, %bb.de ] ; 2 uses
  %i.vo = phi i32 [ %i.yq, %bb.di ], [ %.promoted234.i.i.i.i, %bb.de ] ; 3 uses
  %i.vp = phi i32 [ %i.yp, %bb.di ], [ %.promoted235.i.i.i.i, %bb.de ] ; 4 uses
  %i.vq = phi i32 [ %i.tp, %bb.di ], [ %.promoted236.i.i.i.i, %bb.de ]
  call void @llvm.experimental.noalias.scope.decl(metadata !45174), !noalias !45147
  call void @llvm.experimental.noalias.scope.decl(metadata !45175), !noalias !45147
  %.not.i44.i.i.i.i = icmp eq i32 %i.vm, 64
  br i1 %.not.i44.i.i.i.i, label %.lr.ph.i47.preheader.i.i.i.i, label %.loopexit91.i.i.i.i

.lr.ph.i47.preheader.i.i.i.i:                     ; preds = %bb.dw
  %i.vr = zext i32 %i.vp to i64                   ; 2 uses
  %i.vs = icmp eq i32 %i.vo, 0
  br i1 %i.vs, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph.i47.preheader.i.i.i.i
  %i.vt = icmp ult i32 %i.vp, %i.pp
  br i1 %i.vt, label %.loopexit91.loopexit.i.i.i.i, label %bb.dy

.loopexit91.loopexit.i.i.i.i:                     ; preds = %bb.dx
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.vr
  %i.vv = load i8, ptr %i.vu, align 1, !alias.scope !45176, !noalias !45177, !noundef !178
  %i.vw = zext i8 %i.vv to i64
  %i.vx = call i64 @llvm.fshl.i64(i64 %i.vw, i64 %i.vn, i64 56) ; 2 uses
  store i64 %i.vx, ptr %i.ni, align 8, !alias.scope !45178, !noalias !45179
  %i.vy = add i32 %i.vo, -1                       ; 2 uses
  store i32 %i.vy, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45178, !noalias !45179
  %indvars.iv.next448.i.i.i.i = add nuw nsw i32 %i.vp, 1 ; 2 uses
  store i32 %indvars.iv.next448.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !45178, !noalias !45179
  br label %.loopexit91.i.i.i.i

bb.dy:                                            ; preds = %bb.dx
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.vr, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #63, !noalias !45180
  unreachable

bb.dz:                                            ; preds = %bb.dg, %bb.de
  %i.vz = phi i32 [ %i.vl, %bb.dg ], [ %.promoted.i98.i.i.i, %bb.de ]
  %i.wa = phi i32 [ %i.aax, %bb.dg ], [ %.promoted232.i.i.i.i, %bb.de ] ; 3 uses
  %i.wb = phi i64 [ %i.aau, %bb.dg ], [ %.promoted233.i.i.i.i, %bb.de ] ; 2 uses
  %i.wc = phi i32 [ %i.aat, %bb.dg ], [ %.promoted234.i.i.i.i, %bb.de ] ; 3 uses
  %i.wd = phi i32 [ %i.aas, %bb.dg ], [ %.promoted235.i.i.i.i, %bb.de ] ; 4 uses
  %i.we = phi i32 [ %i.vq, %bb.dg ], [ %.promoted236.i.i.i.i, %bb.de ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45181), !noalias !45147
  call void @llvm.experimental.noalias.scope.decl(metadata !45182), !noalias !45147
  %i.wf = add i32 %i.wa, -63
  %.not.i54.i.i.i.i = icmp ult i32 %i.wf, 2
  br i1 %.not.i54.i.i.i.i, label %.lr.ph.i57.preheader.i.i.i.i, label %.loopexit93.i.i.i.i

.lr.ph.i57.preheader.i.i.i.i:                     ; preds = %bb.dz
  %i.wg = zext i32 %i.wd to i64                   ; 2 uses
  %i.wh = icmp eq i32 %i.wc, 0
  br i1 %i.wh, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph.i57.preheader.i.i.i.i
  %exitcond446.not.not.i.i.i.i = icmp ult i32 %i.wd, %i.pp
  br i1 %exitcond446.not.not.i.i.i.i, label %.loopexit93.loopexit.i.i.i.i, label %bb.eb

.loopexit93.loopexit.i.i.i.i:                     ; preds = %bb.ea
  %i.wi = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.wg
  %i.wj = load i8, ptr %i.wi, align 1, !alias.scope !45183, !noalias !45184, !noundef !178
  %i.wk = zext i8 %i.wj to i64
  %i.wl = call i64 @llvm.fshl.i64(i64 %i.wk, i64 %i.wb, i64 56) ; 2 uses
  store i64 %i.wl, ptr %i.ni, align 8, !alias.scope !45185, !noalias !45186
  %i.wm = add nsw i32 %i.wa, -8
  %i.wn = add i32 %i.wc, -1                       ; 2 uses
  store i32 %i.wn, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45185, !noalias !45186
  %indvars.iv.next442.i.i.i.i = add nuw nsw i32 %i.wd, 1 ; 2 uses
  store i32 %indvars.iv.next442.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !45185, !noalias !45186
  br label %.loopexit93.i.i.i.i

bb.eb:                                            ; preds = %bb.ea
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.wg, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #63, !noalias !45187
  unreachable

bb.ec:                                            ; preds = %bb.df, %bb.de
  %i.wo = phi i32 [ %i.vz, %bb.df ], [ %.promoted.i98.i.i.i, %bb.de ] ; 3 uses
  %i.wp = phi i8 [ %i.sp, %bb.df ], [ %.promoted231.i.i.i.i, %bb.de ] ; 2 uses
  %i.wq = phi i32 [ %i.abj, %bb.df ], [ %.promoted232.i.i.i.i, %bb.de ] ; 3 uses
  %i.wr = phi i64 [ %i.abd, %bb.df ], [ %.promoted233.i.i.i.i, %bb.de ] ; 3 uses
  %i.ws = phi i32 [ %i.abc, %bb.df ], [ %.promoted234.i.i.i.i, %bb.de ] ; 3 uses
  %i.wt = phi i32 [ %i.abb, %bb.df ], [ %.promoted235.i.i.i.i, %bb.de ] ; 3 uses
  %i.wu = phi i32 [ %i.we, %bb.df ], [ %.promoted236.i.i.i.i, %bb.de ] ; 3 uses
  %i.wv = zext i8 %i.wp to i32                    ; 3 uses
  %i.ww = icmp slt i32 %i.wo, %i.wv
  br i1 %i.ww, label %.lr.ph.i102.i.i.i, label %.sink.split546.i.i.i.i

.lr.ph.i102.i.i.i:                                ; preds = %bb.ec
  %i.wx = icmp ugt i8 %i.wp, 1
  br i1 %i.wx, label %.lr.ph.split.i.i.i.i, label %.lr.ph.split.us.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i102.i.i.i, %.loopexit83.us.i.i.i.i
  %i.wy = phi i32 [ %i.xu, %.loopexit83.us.i.i.i.i ], [ %i.wu, %.lr.ph.i102.i.i.i ]
  %.promoted18.i80162.us.i.i.i.i = phi i32 [ %.promoted18.i80161.us.i.i.i.i, %.loopexit83.us.i.i.i.i ], [ %i.wt, %.lr.ph.i102.i.i.i ] ; 4 uses
  %.promoted17.i79159.us.i.i.i.i = phi i32 [ %.promoted17.i79158.us.i.i.i.i, %.loopexit83.us.i.i.i.i ], [ %i.ws, %.lr.ph.i102.i.i.i ] ; 3 uses
  %i.wz = phi i64 [ %i.xj, %.loopexit83.us.i.i.i.i ], [ %i.wr, %.lr.ph.i102.i.i.i ] ; 2 uses
  %.promoted.i73155.us.i.i.i.i = phi i32 [ %i.xp, %.loopexit83.us.i.i.i.i ], [ %i.wq, %.lr.ph.i102.i.i.i ] ; 3 uses
  %.sroa.018.0153.us.i.i.i.i = phi i32 [ %i.xq, %.loopexit83.us.i.i.i.i ], [ %i.wo, %.lr.ph.i102.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45188), !noalias !45147
  call void @llvm.experimental.noalias.scope.decl(metadata !45189), !noalias !45147
  %i.xa = add i32 %.promoted.i73155.us.i.i.i.i, -57
  %.not.i74.us.i.i.i.i = icmp ult i32 %i.xa, 8
  br i1 %.not.i74.us.i.i.i.i, label %.lr.ph.i77.us.preheader.i.i.i.i, label %.loopexit83.us.i.i.i.i

.lr.ph.i77.us.preheader.i.i.i.i:                  ; preds = %.lr.ph.split.us.i.i.i.i
  %i.xb = zext i32 %.promoted18.i80162.us.i.i.i.i to i64 ; 2 uses
  %i.xc = icmp eq i32 %.promoted17.i79159.us.i.i.i.i, 0
  br i1 %i.xc, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph.i77.us.preheader.i.i.i.i
  %exitcond.not.not.i103.i.i.i = icmp ult i32 %.promoted18.i80162.us.i.i.i.i, %i.pp
  br i1 %exitcond.not.not.i103.i.i.i, label %.loopexit83.us.loopexit.i.i.i.i, label %.split.us.i.i.i.i

.loopexit83.us.loopexit.i.i.i.i:                  ; preds = %bb.ed
  %i.xd = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.xb
  %i.xe = load i8, ptr %i.xd, align 1, !alias.scope !45190, !noalias !45191, !noundef !178
  %i.xf = zext i8 %i.xe to i64
  %i.xg = call i64 @llvm.fshl.i64(i64 %i.xf, i64 %i.wz, i64 56) ; 2 uses
  store i64 %i.xg, ptr %i.ni, align 8, !alias.scope !45192, !noalias !45193
  %i.xh = add nsw i32 %.promoted.i73155.us.i.i.i.i, -8
  %i.xi = add i32 %.promoted17.i79159.us.i.i.i.i, -1 ; 2 uses
  store i32 %i.xi, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45192, !noalias !45193
  %indvars.iv.next.i104.i.i.i = add nuw nsw i32 %.promoted18.i80162.us.i.i.i.i, 1 ; 2 uses
  store i32 %indvars.iv.next.i104.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !45192, !noalias !45193
  br label %.loopexit83.us.i.i.i.i

.loopexit83.us.i.i.i.i:                           ; preds = %.loopexit83.us.loopexit.i.i.i.i, %.lr.ph.split.us.i.i.i.i
  %.promoted18.i80161.us.i.i.i.i = phi i32 [ %.promoted18.i80162.us.i.i.i.i, %.lr.ph.split.us.i.i.i.i ], [ %indvars.iv.next.i104.i.i.i, %.loopexit83.us.loopexit.i.i.i.i ] ; 2 uses
  %.promoted17.i79158.us.i.i.i.i = phi i32 [ %.promoted17.i79159.us.i.i.i.i, %.lr.ph.split.us.i.i.i.i ], [ %i.xi, %.loopexit83.us.loopexit.i.i.i.i ] ; 2 uses
  %i.xj = phi i64 [ %i.wz, %.lr.ph.split.us.i.i.i.i ], [ %i.xg, %.loopexit83.us.loopexit.i.i.i.i ] ; 3 uses
  %.lcssa7.i76.us.i.i.i.i = phi i32 [ %.promoted.i73155.us.i.i.i.i, %.lr.ph.split.us.i.i.i.i ], [ %i.xh, %.loopexit83.us.loopexit.i.i.i.i ] ; 2 uses
  %i.xk = and i32 %.lcssa7.i76.us.i.i.i.i, 63
  %i.xl = zext nneg i32 %i.xk to i64
  %i.xm = lshr i64 %i.xj, %i.xl
  %i.xn = trunc i64 %i.xm to i32
  %i.xo = and i32 %i.xn, 255
  %i.xp = add i32 %.lcssa7.i76.us.i.i.i.i, 8      ; 3 uses
  store i32 %i.xp, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45192, !noalias !45193
  %i.xq = add i32 %.sroa.018.0153.us.i.i.i.i, 1   ; 2 uses
  %i.xr = shl i32 %.sroa.018.0153.us.i.i.i.i, 3
  %i.xs = and i32 %i.xr, 24
  %i.xt = shl nuw i32 %i.xo, %i.xs
  %i.xu = or i32 %i.xt, %i.wy                     ; 3 uses
  store i32 %i.xu, ptr %i.nm, align 8, !alias.scope !45143, !noalias !45145
  %exitcond433.not.i.i.i.i = icmp eq i32 %i.xq, %i.wv
  br i1 %exitcond433.not.i.i.i.i, label %.sink.split546.i.i.i.i, label %.lr.ph.split.us.i.i.i.i

.loopexit84.i.i.i.i:                              ; preds = %.loopexit84.loopexit.i.i.i.i, %bb.dk
  %i.xv = phi i32 [ %.promoted235.i.i.i.i, %bb.dk ], [ %indvars.iv.next474.i.i.i.i, %.loopexit84.loopexit.i.i.i.i ] ; 2 uses
  %i.xw = phi i32 [ %.promoted234.i.i.i.i, %bb.dk ], [ %i.sx, %.loopexit84.loopexit.i.i.i.i ] ; 2 uses
  %i.xx = phi i64 [ %.promoted233.i.i.i.i, %bb.dk ], [ %i.sw, %.loopexit84.loopexit.i.i.i.i ] ; 3 uses
  %.lcssa7.i.i108.i.i.i = phi i32 [ %.promoted232.i.i.i.i, %bb.dk ], [ 56, %.loopexit84.loopexit.i.i.i.i ] ; 2 uses
  %i.xy = and i32 %.lcssa7.i.i108.i.i.i, 63
  %i.xz = zext nneg i32 %i.xy to i64
  %i.ya = lshr i64 %i.xx, %i.xz
  %i.yb = trunc i64 %i.ya to i32
  %i.yc = and i32 %i.yb, 1                        ; 2 uses
  %i.yd = add i32 %.lcssa7.i.i108.i.i.i, 1        ; 3 uses
  store i32 %i.yd, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45151, !noalias !45152
  %i.ye = trunc nuw nsw i32 %i.yc to i8
  store i8 %i.ye, ptr %i.nk, align 2, !alias.scope !45143, !noalias !45145
  store i32 0, ptr %i.nm, align 8, !alias.scope !45143, !noalias !45145
  store i8 0, ptr %i.nz, align 1, !alias.scope !45143, !noalias !45145
  store i8 0, ptr %i.ny, align 4, !alias.scope !45143, !noalias !45145
  %i.yf = icmp eq i32 %i.yc, 0
  br i1 %i.yf, label %.sink.split.i106.i.i.i, label %bb.dj

.loopexit86.i.i.i.i:                              ; preds = %.loopexit86.loopexit.i.i.i.i, %bb.dn
  %i.yg = phi i32 [ %i.tb, %bb.dn ], [ %indvars.iv.next471.i.i.i.i, %.loopexit86.loopexit.i.i.i.i ]
  %i.yh = phi i32 [ %i.ta, %bb.dn ], [ %i.tk, %.loopexit86.loopexit.i.i.i.i ]
  %i.yi = phi i64 [ %i.sz, %bb.dn ], [ %i.tj, %.loopexit86.loopexit.i.i.i.i ] ; 3 uses
  %.lcssa7.i26.i.i.i.i = phi i32 [ %i.sy, %bb.dn ], [ 56, %.loopexit86.loopexit.i.i.i.i ] ; 2 uses
  %i.yj = and i32 %.lcssa7.i26.i.i.i.i, 63
  %i.yk = zext nneg i32 %i.yj to i64
  %i.yl = add i32 %.lcssa7.i26.i.i.i.i, 1         ; 3 uses
  store i32 %i.yl, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45158, !noalias !45159
  %i.ym = shl nuw i64 1, %i.yk
  %i.yn = and i64 %i.ym, %i.yi
  %i.yo = icmp eq i64 %i.yn, 0
  br i1 %i.yo, label %.sink.split.i106.i.i.i, label %bb.hl

.loopexit88.i.i.i.i:                              ; preds = %.loopexit88.loopexit.i.i.i.i, %bb.dq
  %i.yp = phi i32 [ %i.to, %bb.dq ], [ %indvars.iv.next465.i.i.i.i, %.loopexit88.loopexit.i.i.i.i ] ; 2 uses
  %i.yq = phi i32 [ %i.tn, %bb.dq ], [ %i.ty, %.loopexit88.loopexit.i.i.i.i ] ; 2 uses
  %i.yr = phi i64 [ %i.tm, %bb.dq ], [ %i.tw, %.loopexit88.loopexit.i.i.i.i ] ; 3 uses
  %.lcssa7.i36.i.i.i.i = phi i32 [ %i.tl, %bb.dq ], [ %i.tx, %.loopexit88.loopexit.i.i.i.i ] ; 2 uses
  %i.ys = and i32 %.lcssa7.i36.i.i.i.i, 63
  %i.yt = zext nneg i32 %i.ys to i64
  %i.yu = lshr i64 %i.yr, %i.yt
  %i.yv = trunc i64 %i.yu to i32
  %i.yw = and i32 %i.yv, 3                        ; 2 uses
  %i.yx = add i32 %.lcssa7.i36.i.i.i.i, 2         ; 3 uses
  store i32 %i.yx, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45165, !noalias !45166
  %i.yy = trunc nuw nsw i32 %i.yw to i8
  %i.yz = or disjoint i8 %i.yy, 4                 ; 2 uses
  store i8 %i.yz, ptr %i.oh, align 1, !alias.scope !45143, !noalias !45145
  store i32 0, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45143, !noalias !45145
  %i.za = icmp eq i32 %i.yw, 3
  br i1 %i.za, label %bb.di, label %bb.dh

.lr.ph179.split.i.i.i.i:                          ; preds = %.lr.ph179.i.i.i.i, %bb.ef
  %i.zb = phi i32 [ %i.zz, %bb.ef ], [ %i.uf, %.lr.ph179.i.i.i.i ]
  %.promoted18.i70190.i.i.i.i = phi i32 [ %.promoted18.i70189.i.i.i.i, %bb.ef ], [ %i.ue, %.lr.ph179.i.i.i.i ] ; 4 uses
  %.promoted17.i69187.i.i.i.i = phi i32 [ %.promoted17.i69186.i.i.i.i, %bb.ef ], [ %i.ud, %.lr.ph179.i.i.i.i ] ; 3 uses
  %i.zc = phi i64 [ %i.zm, %bb.ef ], [ %i.uc, %.lr.ph179.i.i.i.i ] ; 2 uses
  %.promoted.i63183.i.i.i.i = phi i32 [ %i.zs, %bb.ef ], [ %i.ub, %.lr.ph179.i.i.i.i ] ; 3 uses
  %.sroa.013.0177.i.i.i.i = phi i32 [ %i.zt, %bb.ef ], [ %i.tz, %.lr.ph179.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45168), !noalias !45147
  call void @llvm.experimental.noalias.scope.decl(metadata !45169), !noalias !45147
  %i.zd = add i32 %.promoted.i63183.i.i.i.i, -61
  %.not.i64.i.i.i.i = icmp ult i32 %i.zd, 4
  br i1 %.not.i64.i.i.i.i, label %.lr.ph.i67.preheader.i.i.i.i, label %.loopexit.i105.i.i.i

.lr.ph.i67.preheader.i.i.i.i:                     ; preds = %.lr.ph179.split.i.i.i.i
  %i.ze = zext i32 %.promoted18.i70190.i.i.i.i to i64 ; 2 uses
  %i.zf = icmp eq i32 %.promoted17.i69187.i.i.i.i, 0
  br i1 %i.zf, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i, label %bb.ee

bb.ee:                                            ; preds = %.lr.ph.i67.preheader.i.i.i.i
  %exitcond462.not.not.i.i.i.i = icmp ult i32 %.promoted18.i70190.i.i.i.i, %i.pp
  br i1 %exitcond462.not.not.i.i.i.i, label %.loopexit.loopexit.i.i.i.i, label %.split199.us.i.i.i.i

.loopexit.loopexit.i.i.i.i:                       ; preds = %bb.ee
  %i.zg = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.ze
  %i.zh = load i8, ptr %i.zg, align 1, !alias.scope !45170, !noalias !45171, !noundef !178
  %i.zi = zext i8 %i.zh to i64
  %i.zj = call i64 @llvm.fshl.i64(i64 %i.zi, i64 %i.zc, i64 56) ; 2 uses
  store i64 %i.zj, ptr %i.ni, align 8, !alias.scope !45172, !noalias !45173
  %i.zk = add nsw i32 %.promoted.i63183.i.i.i.i, -8
  %i.zl = add i32 %.promoted17.i69187.i.i.i.i, -1 ; 2 uses
  store i32 %i.zl, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45172, !noalias !45173
  %indvars.iv.next458.i.i.i.i = add nuw nsw i32 %.promoted18.i70190.i.i.i.i, 1 ; 2 uses
  store i32 %indvars.iv.next458.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !45172, !noalias !45173
  br label %.loopexit.i105.i.i.i

.split199.us.i.i.i.i:                             ; preds = %bb.du, %bb.ee
  %.us-phi201.i.i.i.i = phi i64 [ %i.ze, %bb.ee ], [ %i.um, %bb.du ]
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi201.i.i.i.i, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #63, !noalias !45194
  unreachable

.loopexit.i105.i.i.i:                             ; preds = %.loopexit.loopexit.i.i.i.i, %.lr.ph179.split.i.i.i.i
  %.promoted18.i70189.i.i.i.i = phi i32 [ %.promoted18.i70190.i.i.i.i, %.lr.ph179.split.i.i.i.i ], [ %indvars.iv.next458.i.i.i.i, %.loopexit.loopexit.i.i.i.i ] ; 2 uses
  %.promoted17.i69186.i.i.i.i = phi i32 [ %.promoted17.i69187.i.i.i.i, %.lr.ph179.split.i.i.i.i ], [ %i.zl, %.loopexit.loopexit.i.i.i.i ] ; 2 uses
  %i.zm = phi i64 [ %i.zc, %.lr.ph179.split.i.i.i.i ], [ %i.zj, %.loopexit.loopexit.i.i.i.i ] ; 3 uses
  %.lcssa7.i66.i.i.i.i = phi i32 [ %.promoted.i63183.i.i.i.i, %.lr.ph179.split.i.i.i.i ], [ %i.zk, %.loopexit.loopexit.i.i.i.i ] ; 2 uses
  %i.zn = and i32 %.lcssa7.i66.i.i.i.i, 63
  %i.zo = zext nneg i32 %i.zn to i64
  %i.zp = lshr i64 %i.zm, %i.zo
  %i.zq = trunc i64 %i.zp to i32
  %i.zr = and i32 %i.zq, 15                       ; 2 uses
  %i.zs = add i32 %.lcssa7.i66.i.i.i.i, 4         ; 3 uses
  store i32 %i.zs, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45172, !noalias !45173
  %i.zt = add i32 %.sroa.013.0177.i.i.i.i, 1      ; 2 uses
  %i.zu = icmp eq i32 %i.zt, %i.ug                ; 2 uses
  %i.zv = icmp eq i32 %i.zr, 0
  %or.cond4.i.i.i.i = select i1 %i.zu, i1 %i.zv, i1 false
  br i1 %or.cond4.i.i.i.i, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.ef

bb.ef:                                            ; preds = %.loopexit.i105.i.i.i
  %i.zw = shl i32 %.sroa.013.0177.i.i.i.i, 2
  %i.zx = and i32 %i.zw, 28
  %i.zy = shl nuw i32 %i.zr, %i.zx
  %i.zz = or i32 %i.zy, %i.zb                     ; 3 uses
  store i32 %i.zz, ptr %i.nm, align 8, !alias.scope !45143, !noalias !45145
  br i1 %i.zu, label %.sink.split546.i.i.i.i, label %.lr.ph179.split.i.i.i.i

bb.eg:                                            ; preds = %bb.dv
  call void @llvm.experimental.noalias.scope.decl(metadata !45195)
  call void @llvm.experimental.noalias.scope.decl(metadata !45196)
  %.not.i9.i.i = icmp eq i32 %.promoted.i8.i.i, 64
  br i1 %.not.i9.i.i, label %bb.eh, label %.loopexit.i.i71

bb.eh:                                            ; preds = %bb.eg
  %i.aaa = zext i32 %.promoted18.i.i.i to i64     ; 2 uses
  %i.aab = icmp eq i32 %.promoted17.i.i.i, 0
  br i1 %i.aab, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.aac = icmp ult i32 %.promoted18.i.i.i, %i.pp
  br i1 %i.aac, label %.loopexit.loopexit.i.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aaa, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #63, !noalias !45197
  unreachable

.loopexit.loopexit.i.i:                           ; preds = %bb.ei
  %i.aad = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.aaa
  %i.aae = load i8, ptr %i.aad, align 1, !alias.scope !45196, !noalias !45198, !noundef !178
  %i.aaf = zext i8 %i.aae to i64
  %i.aag = call i64 @llvm.fshl.i64(i64 %i.aaf, i64 %.promoted14.i.i.i, i64 56) ; 2 uses
  store i64 %i.aag, ptr %i.ni, align 8, !alias.scope !45195, !noalias !45199
  %i.aah = add i32 %.promoted17.i.i.i, -1
  store i32 %i.aah, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45195, !noalias !45199
  %indvars.iv.next.i.i = add nuw nsw i32 %.promoted18.i.i.i, 1
  store i32 %indvars.iv.next.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !45195, !noalias !45199
  br label %.loopexit.i.i71

.loopexit.i.i71:                                  ; preds = %.loopexit.loopexit.i.i, %bb.eg
  %i.aai = phi i64 [ %i.aag, %.loopexit.loopexit.i.i ], [ %.promoted14.i.i.i, %bb.eg ] ; 2 uses
  %.lcssa7.i.i.i = phi i32 [ 56, %.loopexit.loopexit.i.i ], [ %.promoted.i8.i.i, %bb.eg ] ; 2 uses
  %i.aaj = and i32 %.lcssa7.i.i.i, 63
  %i.aak = zext nneg i32 %i.aaj to i64
  %i.aal = lshr i64 %i.aai, %i.aak
  %i.aam = trunc i64 %i.aal to i8
  %i.aan = and i8 %i.aam, 1
  %i.aao = add i32 %.lcssa7.i.i.i, 1              ; 2 uses
  store i32 %i.aao, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45195, !noalias !45199
  store i8 %i.aan, ptr %i.nz, align 1, !alias.scope !45143, !noalias !45145
  br label %bb.ek

bb.ek:                                            ; preds = %.loopexit.i.i71, %bb.dv
  %i.aap = phi i64 [ %.promoted14.i.i.i, %bb.dv ], [ %i.aai, %.loopexit.i.i71 ]
  %i.aaq = phi i32 [ %.promoted.i8.i.i, %bb.dv ], [ %i.aao, %.loopexit.i.i71 ]
  %i.aar = add i32 %.pre.i101.i.i.i, 1            ; 2 uses
  store i32 %i.aar, ptr %i.nm, align 8, !alias.scope !45143, !noalias !45145
  br label %bb.hl

.loopexit91.i.i.i.i:                              ; preds = %.loopexit91.loopexit.i.i.i.i, %bb.dw
  %i.aas = phi i32 [ %i.vp, %bb.dw ], [ %indvars.iv.next448.i.i.i.i, %.loopexit91.loopexit.i.i.i.i ]
  %i.aat = phi i32 [ %i.vo, %bb.dw ], [ %i.vy, %.loopexit91.loopexit.i.i.i.i ]
  %i.aau = phi i64 [ %i.vn, %bb.dw ], [ %i.vx, %.loopexit91.loopexit.i.i.i.i ] ; 2 uses
  %.lcssa7.i46.i.i.i.i = phi i32 [ %i.vm, %bb.dw ], [ 56, %.loopexit91.loopexit.i.i.i.i ] ; 2 uses
  %i.aav = and i32 %.lcssa7.i46.i.i.i.i, 63
  %i.aaw = zext nneg i32 %i.aav to i64
  %i.aax = add i32 %.lcssa7.i46.i.i.i.i, 1        ; 2 uses
  store i32 %i.aax, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45178, !noalias !45179
  %i.aay = shl nuw i64 1, %i.aaw
  %i.aaz = and i64 %i.aay, %i.aau
  %i.aba = icmp eq i64 %i.aaz, 0
  br i1 %i.aba, label %bb.dg, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

.loopexit93.i.i.i.i:                              ; preds = %.loopexit93.loopexit.i.i.i.i, %bb.dz
  %i.abb = phi i32 [ %i.wd, %bb.dz ], [ %indvars.iv.next442.i.i.i.i, %.loopexit93.loopexit.i.i.i.i ]
  %i.abc = phi i32 [ %i.wc, %bb.dz ], [ %i.wn, %.loopexit93.loopexit.i.i.i.i ]
  %i.abd = phi i64 [ %i.wb, %bb.dz ], [ %i.wl, %.loopexit93.loopexit.i.i.i.i ] ; 3 uses
  %.lcssa7.i56.i.i.i.i = phi i32 [ %i.wa, %bb.dz ], [ %i.wm, %.loopexit93.loopexit.i.i.i.i ] ; 2 uses
  %i.abe = and i32 %.lcssa7.i56.i.i.i.i, 63
  %i.abf = zext nneg i32 %i.abe to i64
  %i.abg = lshr i64 %i.abd, %i.abf
  %i.abh = trunc i64 %i.abg to i32
  %i.abi = and i32 %i.abh, 3                      ; 2 uses
  %i.abj = add i32 %.lcssa7.i56.i.i.i.i, 2        ; 3 uses
  store i32 %i.abj, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45185, !noalias !45186
  %i.abk = icmp eq i32 %i.abi, 0
  br i1 %i.abk, label %bb.hl, label %bb.df

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i102.i.i.i, %bb.em
  %i.abl = phi i32 [ %i.acj, %bb.em ], [ %i.wu, %.lr.ph.i102.i.i.i ]
  %.promoted18.i80162.i.i.i.i = phi i32 [ %.promoted18.i80161.i.i.i.i, %bb.em ], [ %i.wt, %.lr.ph.i102.i.i.i ] ; 4 uses
  %.promoted17.i79159.i.i.i.i = phi i32 [ %.promoted17.i79158.i.i.i.i, %bb.em ], [ %i.ws, %.lr.ph.i102.i.i.i ] ; 3 uses
  %i.abm = phi i64 [ %i.abw, %bb.em ], [ %i.wr, %.lr.ph.i102.i.i.i ] ; 2 uses
  %.promoted.i73155.i.i.i.i = phi i32 [ %i.acc, %bb.em ], [ %i.wq, %.lr.ph.i102.i.i.i ] ; 3 uses
  %.sroa.018.0153.i.i.i.i = phi i32 [ %i.acd, %bb.em ], [ %i.wo, %.lr.ph.i102.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45188), !noalias !45147
  call void @llvm.experimental.noalias.scope.decl(metadata !45189), !noalias !45147
  %i.abn = add i32 %.promoted.i73155.i.i.i.i, -57
  %.not.i74.i.i.i.i = icmp ult i32 %i.abn, 8
  br i1 %.not.i74.i.i.i.i, label %.lr.ph.i77.preheader.i.i.i.i, label %.loopexit83.i.i.i.i

.lr.ph.i77.preheader.i.i.i.i:                     ; preds = %.lr.ph.split.i.i.i.i
  %i.abo = zext i32 %.promoted18.i80162.i.i.i.i to i64 ; 2 uses
  %i.abp = icmp eq i32 %.promoted17.i79159.i.i.i.i, 0
  br i1 %i.abp, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i, label %bb.el

bb.el:                                            ; preds = %.lr.ph.i77.preheader.i.i.i.i
  %exitcond439.not.not.i.i.i.i = icmp ult i32 %.promoted18.i80162.i.i.i.i, %i.pp
  br i1 %exitcond439.not.not.i.i.i.i, label %.loopexit83.loopexit.i.i.i.i, label %.split.us.i.i.i.i

.loopexit83.loopexit.i.i.i.i:                     ; preds = %bb.el
  %i.abq = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.abo
  %i.abr = load i8, ptr %i.abq, align 1, !alias.scope !45190, !noalias !45191, !noundef !178
  %i.abs = zext i8 %i.abr to i64
  %i.abt = call i64 @llvm.fshl.i64(i64 %i.abs, i64 %i.abm, i64 56) ; 2 uses
  store i64 %i.abt, ptr %i.ni, align 8, !alias.scope !45192, !noalias !45193
  %i.abu = add nsw i32 %.promoted.i73155.i.i.i.i, -8
  %i.abv = add i32 %.promoted17.i79159.i.i.i.i, -1 ; 2 uses
  store i32 %i.abv, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45192, !noalias !45193
  %indvars.iv.next435.i.i.i.i = add nuw nsw i32 %.promoted18.i80162.i.i.i.i, 1 ; 2 uses
  store i32 %indvars.iv.next435.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !45192, !noalias !45193
  br label %.loopexit83.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.ed, %bb.el
  %.us-phi170.i.i.i.i = phi i64 [ %i.abo, %bb.el ], [ %i.xb, %bb.ed ]
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi170.i.i.i.i, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #63, !noalias !45200
  unreachable

.loopexit83.i.i.i.i:                              ; preds = %.loopexit83.loopexit.i.i.i.i, %.lr.ph.split.i.i.i.i
  %.promoted18.i80161.i.i.i.i = phi i32 [ %.promoted18.i80162.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %indvars.iv.next435.i.i.i.i, %.loopexit83.loopexit.i.i.i.i ] ; 2 uses
  %.promoted17.i79158.i.i.i.i = phi i32 [ %.promoted17.i79159.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %i.abv, %.loopexit83.loopexit.i.i.i.i ] ; 2 uses
  %i.abw = phi i64 [ %i.abm, %.lr.ph.split.i.i.i.i ], [ %i.abt, %.loopexit83.loopexit.i.i.i.i ] ; 3 uses
  %.lcssa7.i76.i.i.i.i = phi i32 [ %.promoted.i73155.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %i.abu, %.loopexit83.loopexit.i.i.i.i ] ; 2 uses
  %i.abx = and i32 %.lcssa7.i76.i.i.i.i, 63
  %i.aby = zext nneg i32 %i.abx to i64
  %i.abz = lshr i64 %i.abw, %i.aby
  %i.aca = trunc i64 %i.abz to i32
  %i.acb = and i32 %i.aca, 255                    ; 2 uses
  %i.acc = add i32 %.lcssa7.i76.i.i.i.i, 8        ; 3 uses
  store i32 %i.acc, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45192, !noalias !45193
  %i.acd = add i32 %.sroa.018.0153.i.i.i.i, 1     ; 2 uses
  %i.ace = icmp eq i32 %i.acd, %i.wv              ; 2 uses
  %i.acf = icmp eq i32 %i.acb, 0
  %or.cond12.i.i.i.i = select i1 %i.ace, i1 %i.acf, i1 false
  br i1 %or.cond12.i.i.i.i, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.em

bb.em:                                            ; preds = %.loopexit83.i.i.i.i
  %i.acg = shl i32 %.sroa.018.0153.i.i.i.i, 3
  %i.ach = and i32 %i.acg, 24
  %i.aci = shl nuw i32 %i.acb, %i.ach
  %i.acj = or i32 %i.aci, %i.abl                  ; 3 uses
  store i32 %i.acj, ptr %i.nm, align 8, !alias.scope !45143, !noalias !45145
  br i1 %i.ace, label %.sink.split546.i.i.i.i, label %.lr.ph.split.i.i.i.i

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode21DecodeMetaBlockLengthNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsgZAIVb0XKpv_9ssservice.exit.thread.sink.split.i.i.i: ; preds = %.lr.ph.i67.us.preheader.i.i.i.i, %.lr.ph.i67.preheader.i.i.i.i, %.lr.ph.i77.us.preheader.i.i.i.i, %.lr.ph.i77.preheader.i.i.i.i
  %.us-phi168.i.sink.i.i.i = phi i32 [ %.sroa.013.0177.i.i.i.i, %.lr.ph.i67.preheader.i.i.i.i ], [ %.sroa.018.0153.us.i.i.i.i, %.lr.ph.i77.us.preheader.i.i.i.i ], [ %.sroa.018.0153.i.i.i.i, %.lr.ph.i77.preheader.i.i.i.i ], [ %.sroa.013.0177.us.i.i.i.i, %.lr.ph.i67.us.preheader.i.i.i.i ]
  store i32 %.us-phi168.i.sink.i.i.i, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45143, !noalias !45145
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.en:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !45201)
  call void @llvm.experimental.noalias.scope.decl(metadata !45202)
  %.promoted.i143.i.i.i.i = load i32, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45203, !noalias !45204 ; 3 uses
  %i.ack = add i32 %.promoted.i143.i.i.i.i, -59
  %.not.i144.i.i.i.i = icmp ult i32 %i.ack, 6
  %.promoted14.i148.i.i.i.i = load i64, ptr %i.ni, align 8, !alias.scope !45203, !noalias !45204 ; 2 uses
  br i1 %.not.i144.i.i.i.i, label %.lr.ph.i147.i.i.i.i, label %.loopexit212.i.i.i.i

.lr.ph.i147.i.i.i.i:                              ; preds = %bb.en
  %.promoted17.i149.i.i.i.i = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45203, !noalias !45204 ; 2 uses
  %.promoted18.i150.i.i.i.i = load i32, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !45203, !noalias !45204 ; 3 uses
  %i.acl = zext i32 %.promoted18.i150.i.i.i.i to i64 ; 2 uses
  %i.acm = icmp eq i32 %.promoted17.i149.i.i.i.i, 0
  br i1 %i.acm, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.eo

bb.eo:                                            ; preds = %.lr.ph.i147.i.i.i.i
  %exitcond.not.not.i.i.i.i = icmp ult i32 %.promoted18.i150.i.i.i.i, %i.pp
  br i1 %exitcond.not.not.i.i.i.i, label %.loopexit212.loopexit.i.i.i.i, label %bb.ep

.loopexit212.loopexit.i.i.i.i:                    ; preds = %bb.eo
  %i.acn = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.acl
  %i.aco = load i8, ptr %i.acn, align 1, !alias.scope !45202, !noalias !45205, !noundef !178
  %i.acp = zext i8 %i.aco to i64
  %i.acq = call i64 @llvm.fshl.i64(i64 %i.acp, i64 %.promoted14.i148.i.i.i.i, i64 56) ; 2 uses
  store i64 %i.acq, ptr %i.ni, align 8, !alias.scope !45203, !noalias !45204
  %i.acr = add nsw i32 %.promoted.i143.i.i.i.i, -8
  %i.acs = add i32 %.promoted17.i149.i.i.i.i, -1
  store i32 %i.acs, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45203, !noalias !45204
  %indvars.iv.next.i.i.i.i = add nuw nsw i32 %.promoted18.i150.i.i.i.i, 1
  store i32 %indvars.iv.next.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !45203, !noalias !45204
  br label %.loopexit212.i.i.i.i

bb.ep:                                            ; preds = %bb.eo
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.acl, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #63, !noalias !45206
  unreachable

bb.eq:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !45207)
  call void @llvm.experimental.noalias.scope.decl(metadata !45208)
  %i.act = load i32, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45209, !noalias !45210, !noundef !178 ; 2 uses
  %.val7.i.i.i.i.i = load i64, ptr %.sroa.27.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45209, !noalias !45210, !noundef !178 ; 2 uses
  %i.acu = sext i32 %i.act to i64                 ; 4 uses
  %i.acv = load i32, ptr %.sroa.68.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45209, !noalias !45210, !noundef !178
  %i.acw = zext i32 %i.acv to i64                 ; 5 uses
  %i.acx = icmp ult i64 %i.acw, %i.acu
  %.not.i153.i.i.i.i = icmp ult i64 %.val7.i.i.i.i.i, %i.acw
  %or.cond.i.i.i.i.i = or i1 %i.acx, %.not.i153.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.es, label %bb.er, !prof !207

bb.er:                                            ; preds = %bb.eq
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.26.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45209, !noalias !45210, !nonnull !178, !noundef !178 ; 2 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.acw
  %i.acz = icmp samesign eq i64 %i.acu, %i.acw
  br i1 %i.acz, label %.backedge.i.i.i.i, label %.lr.ph.i154.i.i.i.i

.lr.ph.i154.i.i.i.i:                              ; preds = %bb.er
  %i.ada = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.acu
  %.promoted.i155.i.i.i.i = load i32, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45211, !noalias !45212
  %.promoted19.i.i.i.i.i = load i64, ptr %i.ni, align 8, !alias.scope !45209, !noalias !45210
  %.promoted20.i.i.i.i.i = load i32, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45209, !noalias !45210
  %.promoted23.i.i.i.i.i = load i32, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !45209, !noalias !45210
  br label %bb.et

bb.es:                                            ; preds = %bb.eq
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.acu, i64 noundef %i.acw, i64 noundef %.val7.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @373) #63, !noalias !45213
  unreachable

bb.et:                                            ; preds = %.loopexit.i.i.i.i.i, %.lr.ph.i154.i.i.i.i
  %.promoted18.i25.i.i.i.i.i = phi i32 [ %.promoted23.i.i.i.i.i, %.lr.ph.i154.i.i.i.i ], [ %.promoted18.i24.i.i.i.i.i, %.loopexit.i.i.i.i.i ] ; 4 uses
  %.promoted17.i22.i.i.i.i.i = phi i32 [ %.promoted20.i.i.i.i.i, %.lr.ph.i154.i.i.i.i ], [ %.promoted17.i21.i.i.i.i.i, %.loopexit.i.i.i.i.i ] ; 3 uses
  %i.adb = phi i64 [ %.promoted19.i.i.i.i.i, %.lr.ph.i154.i.i.i.i ], [ %i.adl, %.loopexit.i.i.i.i.i ] ; 2 uses
  %.promoted.i18.i.i.i.i.i = phi i32 [ %.promoted.i155.i.i.i.i, %.lr.ph.i154.i.i.i.i ], [ %i.adr, %.loopexit.i.i.i.i.i ] ; 3 uses
  %.sroa.01.017.i.i.i.i.i = phi i32 [ %i.act, %.lr.ph.i154.i.i.i.i ], [ %i.adt, %.loopexit.i.i.i.i.i ] ; 2 uses
  %.sroa.04.016.i.i.i.i.i = phi ptr [ %i.ada, %.lr.ph.i154.i.i.i.i ], [ %i.ads, %.loopexit.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45214)
  call void @llvm.experimental.noalias.scope.decl(metadata !45215)
  %i.adc = add i32 %.promoted.i18.i.i.i.i.i, -63
  %.not.i.i.i.i.i.i = icmp ult i32 %i.adc, 2
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %bb.et
  %i.add = zext i32 %.promoted18.i25.i.i.i.i.i to i64 ; 2 uses
  %i.ade = icmp eq i32 %.promoted17.i22.i.i.i.i.i, 0
  br i1 %i.ade, label %_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %bb.eu

bb.eu:                                            ; preds = %.lr.ph.i.preheader.i.i.i.i.i
  %exitcond.not.not.i.i.i.i.i = icmp ult i32 %.promoted18.i25.i.i.i.i.i, %i.pp
  br i1 %exitcond.not.not.i.i.i.i.i, label %.loopexit.loopexit.i.i.i.i.i, label %bb.ev

.loopexit.loopexit.i.i.i.i.i:                     ; preds = %bb.eu
  %i.adf = getelementptr inbounds nuw i8, ptr %.sroa.029.1.i.i.i.i, i64 %i.add
  %i.adg = load i8, ptr %i.adf, align 1, !alias.scope !45216, !noalias !45217, !noundef !178
  %i.adh = zext i8 %i.adg to i64
  %i.adi = call i64 @llvm.fshl.i64(i64 %i.adh, i64 %i.adb, i64 56) ; 2 uses
  store i64 %i.adi, ptr %i.ni, align 8, !alias.scope !45211, !noalias !45212
  %i.adj = add nsw i32 %.promoted.i18.i.i.i.i.i, -8
  %i.adk = add i32 %.promoted17.i22.i.i.i.i.i, -1 ; 2 uses
  store i32 %i.adk, ptr %.sroa.33.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45211, !noalias !45212
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i32 %.promoted18.i25.i.i.i.i.i, 1 ; 2 uses
  store i32 %indvars.iv.next.i.i.i.i.i, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 4, !alias.scope !45211, !noalias !45212
  br label %.loopexit.i.i.i.i.i

bb.ev:                                            ; preds = %bb.eu
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.add, i64 noundef range(i64 8, 4097) %.sroa.21.1.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #63, !noalias !45218
  unreachable

.loopexit.i.i.i.i.i:                              ; preds = %.loopexit.loopexit.i.i.i.i.i, %bb.et
  %.promoted18.i24.i.i.i.i.i = phi i32 [ %.promoted18.i25.i.i.i.i.i, %bb.et ], [ %indvars.iv.next.i.i.i.i.i, %.loopexit.loopexit.i.i.i.i.i ]
  %.promoted17.i21.i.i.i.i.i = phi i32 [ %.promoted17.i22.i.i.i.i.i, %bb.et ], [ %i.adk, %.loopexit.loopexit.i.i.i.i.i ]
  %i.adl = phi i64 [ %i.adb, %bb.et ], [ %i.adi, %.loopexit.loopexit.i.i.i.i.i ] ; 2 uses
  %.lcssa7.i.i.i.i.i.i = phi i32 [ %.promoted.i18.i.i.i.i.i, %bb.et ], [ %i.adj, %.loopexit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.adm = and i32 %.lcssa7.i.i.i.i.i.i, 63
  %i.adn = zext nneg i32 %i.adm to i64
  %i.ado = lshr i64 %i.adl, %i.adn
  %i.adp = trunc i64 %i.ado to i8
  %i.adq = and i8 %i.adp, 3
  %i.adr = add i32 %.lcssa7.i.i.i.i.i.i, 2        ; 2 uses
  store i32 %i.adr, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45211, !noalias !45212
  %i.ads = getelementptr inbounds nuw i8, ptr %.sroa.04.016.i.i.i.i.i, i64 1 ; 2 uses
  store i8 %i.adq, ptr %.sroa.04.016.i.i.i.i.i, align 1, !noalias !45213
  %i.adt = add i32 %.sroa.01.017.i.i.i.i.i, 1
  %i.adu = icmp eq ptr %i.ads, %i.acy
  br i1 %i.adu, label %.backedge.i.i.i.i, label %bb.et

_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode16ReadContextModesNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %.lr.ph.i.preheader.i.i.i.i.i
  store i32 %.sroa.01.017.i.i.i.i.i, ptr %.sroa.7254.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45209, !noalias !45210
  br label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.ew:                                            ; preds = %bb.cw, %bb.cw, %bb.cw, %bb.cw
  %i.adv = call fastcc noundef i32 @_RINvNtCsl4v216RJbSI_19brotli_decompressor6decode23ProcessCommandsInternalNtNtCs2D0wXkiOfwW_12alloc_stdlib9std_alloc13StandardAllocB19_B19_ECsgZAIVb0XKpv_9ssservice(i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 dereferenceable(2600) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.029.1.i.i.i.i, i64 noundef %.sroa.21.1.i.i.i.i) #53, !noalias !45109 ; 2 uses
  %i.adw = icmp eq i32 %i.adv, 2
  br i1 %i.adw, label %bb.iy, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge

bb.ex:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !45219)
  call void @llvm.experimental.noalias.scope.decl(metadata !45220)
  %.pre.i84.i.i.i = load i8, ptr %.sroa.125.0..sroa_idx.i.i.i.i, align 8, !range !181, !alias.scope !45219, !noalias !45221
  %i.adx = load i32, ptr %i.nw, align 8, !noalias !45083
  %.fr = freeze i32 %i.adx                        ; 3 uses
  %.val12.i.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !noalias !45083 ; 4 uses
  %.val.i86.i.i.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !noalias !45083, !nonnull !178
  %i.ady = load i64, ptr %i.ni, align 8, !noalias !45083 ; 2 uses
  %i.adz = load i32, ptr %.sroa.102.0..sroa_idx.i.i.i.i, align 8, !noalias !45083
  %i.aea = and i32 %i.adz, 31
  %i.aeb = shl nuw i32 1, %i.aea                  ; 2 uses
  %i.aec = load i32, ptr %i.nt, align 4, !noalias !45083
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ady, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.ey

bb.ey:                                            ; preds = %.backedge.i89.i.i.i, %bb.ex
  %.sroa.017.4.i.i.i = phi i64 [ %.sroa.017.2.i.i.i, %bb.ex ], [ %.sroa.017.6.i.i.i, %.backedge.i89.i.i.i ] ; 7 uses
  %.sroa.06.3.i.i.i = phi i64 [ %.sroa.06.1.i.i.i, %bb.ex ], [ %.sroa.06.5.i.i.i, %.backedge.i89.i.i.i ] ; 7 uses
  %i.aed = phi i8 [ %.pre.i84.i.i.i, %bb.ex ], [ %storemerge.i90.i.i.i, %.backedge.i89.i.i.i ]
  %i.aee = trunc nuw i8 %i.aed to i1
  br i1 %i.aee, label %bb.ez, label %bb.fi

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.experimental.noalias.scope.decl(metadata !45222)
  %i.aef = load i32, ptr %i.oa, align 8, !alias.scope !45222, !noalias !45223, !noundef !178 ; 4 uses
  %i.aeg = load i32, ptr %i.nw, align 8, !alias.scope !45222, !noalias !45223, !noundef !178 ; 8 uses
  %..i110.i.i.i = call i32 @llvm.smin.i32(i32 %i.aef, i32 %i.aeg)
  %.sroa.010.0.i111.i.i.i = sext i32 %..i110.i.i.i to i64
  %i.aeh = load i64, ptr %i.ob, align 8, !alias.scope !45222, !noalias !45223, !noundef !178 ; 2 uses
  %i.aei = sext i32 %i.aeg to i64
  %i.aej = mul i64 %i.aeh, %i.aei
  %i.aek = add i64 %i.aej, %.sroa.010.0.i111.i.i.i
  %i.ael = load i64, ptr %i.oc, align 8, !alias.scope !45222, !noalias !45223, !noundef !178 ; 3 uses
  %i.aem = sub i64 %i.aek, %i.ael                 ; 2 uses
  %spec.store.select.i112.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.06.3.i.i.i, i64 %i.aem) ; 5 uses
  %i.aen = load i32, ptr %i.nm, align 8, !alias.scope !45222, !noalias !45223, !noundef !178
  %i.aeo = icmp slt i32 %i.aen, 0
  br i1 %i.aeo, label %_RNvNtCsl4v216RJbSI_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i.i.i.i.backedge, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.aep = load i32, ptr %i.od, align 4, !alias.scope !45222, !noalias !45223, !noundef !178
  %i.aeq = sext i32 %i.aep to i64
  %i.aer = and i64 %i.ael, %i.aeq                 ; 4 uses
  %.val20.i113.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !alias.scope !45222, !noalias !45223, !noundef !178 ; 2 uses
  %i.aes = add i64 %i.aer, %spec.store.select.i112.i.i.i ; 3 uses
  %i.aet = icmp ult i64 %i.aes, %i.aer
end_hunk_3
