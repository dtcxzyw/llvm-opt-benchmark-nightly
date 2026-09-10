Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.011?download=true
inline.NumInlined: 4847
inline.NumDeleted: 2086
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12VectorParamsEE9fold_implNCINvXsG_NtB8_3mapINtB2G_4IterBV_B1x_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB3f_8adapters3map8map_foldTRBV_RB1x_EjjNCINvNtNtCs4J2qyOfMFpM_5prost8encoding8hash_map24encoded_len_with_defaultBV_B1x_NvNtB53_6string11encoded_lenINvNtB53_7message11encoded_lenB1x_EE0NCINvXsK_NtB3d_5accumjNtB7q_3Sum3sumINtB4f_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterBV_B1x_EB4W_EE0E0E0jECsl8OoimOLbh_6qdrant:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  %i.aq = getelementptr inbounds i8, ptr %i.l, i64 -160
  %i.ar = trunc nuw i64 %i.an to i1
  %i.as = trunc nuw i64 %i.ao to i1               ; 2 uses
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.as, label %.split.i.i.i.i.i, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.o:                                             ; preds = %bb.m
  br i1 %i.as, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.p

.split.i.i.i.i.i:                                 ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.au = load i64, ptr %i.aq, align 8, !alias.scope !2502, !noalias !2503, !noundef !17
  %i.av = load i64, ptr %i.at, align 8, !alias.scope !2503, !noalias !2504, !noundef !17
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %bb.p, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.p:                                             ; preds = %.split.i.i.i.i.i, %bb.o
  %i.ax = getelementptr inbounds i8, ptr %i.l, i64 -152
  %i.ay = load i64, ptr %i.ax, align 8, !range !30, !alias.scope !2502, !noalias !2503, !noundef !17
  %i.az = getelementptr inbounds i8, ptr %i.l, i64 -144
  %i.ba = trunc nuw i64 %i.ay to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !30, !alias.scope !2503, !noalias !2504, !noundef !17
  %i.bd = trunc nuw i64 %i.bc to i1               ; 2 uses
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  br i1 %i.bd, label %.split11.i.i.i.i.i, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.r:                                             ; preds = %bb.p
  br i1 %i.bd, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.s

.split11.i.i.i.i.i:                               ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.bf = load i64, ptr %i.az, align 8, !alias.scope !2502, !noalias !2503, !noundef !17
  %i.bg = load i64, ptr %i.be, align 8, !alias.scope !2503, !noalias !2504, !noundef !17
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.s, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.s:                                             ; preds = %.split11.i.i.i.i.i, %bb.r
  %i.bi = getelementptr inbounds i8, ptr %i.l, i64 -136
  %i.bj = load i64, ptr %i.bi, align 8, !range !30, !alias.scope !2502, !noalias !2503, !noundef !17
  %i.bk = getelementptr inbounds i8, ptr %i.l, i64 -128
  %i.bl = trunc nuw i64 %i.bj to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !range !30, !alias.scope !2503, !noalias !2504, !noundef !17
  %i.bo = trunc nuw i64 %i.bn to i1               ; 2 uses
  br i1 %i.bl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  br i1 %i.bo, label %.split12.i.i.i.i.i, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.u:                                             ; preds = %bb.s
  br i1 %i.bo, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.v

.split12.i.i.i.i.i:                               ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.bq = load i64, ptr %i.bk, align 8, !alias.scope !2502, !noalias !2503, !noundef !17
  %i.br = load i64, ptr %i.bp, align 8, !alias.scope !2503, !noalias !2504, !noundef !17
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.v, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.v:                                             ; preds = %.split12.i.i.i.i.i, %bb.u
  %i.bt = getelementptr inbounds i8, ptr %i.l, i64 -120
  %i.bu = load i64, ptr %i.bt, align 8, !range !30, !alias.scope !2502, !noalias !2503, !noundef !17
  %i.bv = getelementptr inbounds i8, ptr %i.l, i64 -112
  %i.bw = trunc nuw i64 %i.bu to i1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.by = load i64, ptr %i.bx, align 8, !range !30, !alias.scope !2503, !noalias !2504, !noundef !17
  %i.bz = trunc nuw i64 %i.by to i1               ; 2 uses
  br i1 %i.bw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  br i1 %i.bz, label %.split13.i.i.i.i.i, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.x:                                             ; preds = %bb.v
  br i1 %i.bz, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.y

.split13.i.i.i.i.i:                               ; preds = %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.cb = load i64, ptr %i.bv, align 8, !alias.scope !2502, !noalias !2503, !noundef !17
  %i.cc = load i64, ptr %i.ca, align 8, !alias.scope !2503, !noalias !2504, !noundef !17
  %i.cd = icmp eq i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.y, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.y:                                             ; preds = %.split13.i.i.i.i.i, %bb.x
  %i.ce = getelementptr inbounds i8, ptr %i.l, i64 -80
  %i.cf = load i8, ptr %i.ce, align 8, !range !31, !alias.scope !2502, !noalias !2503, !noundef !17 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.cf, 2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ch = load i8, ptr %i.cg, align 8, !range !31, !alias.scope !2503, !noalias !2504, !noundef !17 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = icmp eq i8 %i.cf, %i.ch
  br i1 %i.ci, label %bb.ab, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cj = icmp eq i8 %i.ch, 2
  br i1 %i.cj, label %bb.ab, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ck = getelementptr inbounds i8, ptr %i.l, i64 -104
  %i.cl = load i64, ptr %i.ck, align 8, !range !30, !alias.scope !2502, !noalias !2503, !noundef !17
  %i.cm = getelementptr inbounds i8, ptr %i.l, i64 -96
  %i.cn = trunc nuw i64 %i.cl to i1
  %i.co = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.cp = load i64, ptr %i.co, align 8, !range !30, !alias.scope !2503, !noalias !2504, !noundef !17
  %i.cq = trunc nuw i64 %i.cp to i1               ; 2 uses
  br i1 %i.cn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.cq, label %.split15.i.i.i.i.i, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.ad:                                            ; preds = %bb.ab
  br i1 %i.cq, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.ae

.split15.i.i.i.i.i:                               ; preds = %bb.ac
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.cs = load i64, ptr %i.cm, align 8, !alias.scope !2502, !noalias !2503, !noundef !17
  %i.ct = load i64, ptr %i.cr, align 8, !alias.scope !2503, !noalias !2504, !noundef !17
  %i.cu = icmp eq i64 %i.cs, %i.ct
  br i1 %i.cu, label %bb.ae, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.ae:                                            ; preds = %.split15.i.i.i.i.i, %bb.ad
  %i.cv = getelementptr inbounds i8, ptr %i.l, i64 -79
  %i.cw = load i8, ptr %i.cv, align 1, !range !31, !alias.scope !2502, !noalias !2503, !noundef !17 ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i8 %i.cw, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ac, i64 89
  %i.cy = load i8, ptr %i.cx, align 1, !range !31, !alias.scope !2503, !noalias !2504, !noundef !17 ; 2 uses
  br i1 %.not9.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cz = icmp eq i8 %i.cw, %i.cy
  br i1 %i.cz, label %bb.ah, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.da = icmp eq i8 %i.cy, 2
  br i1 %i.da, label %bb.ah, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.db = getelementptr inbounds i8, ptr %i.l, i64 -88
  %i.dc = load i32, ptr %i.db, align 8, !range !27, !alias.scope !2502, !noalias !2503, !noundef !17
  %i.dd = getelementptr inbounds i8, ptr %i.l, i64 -84
  %i.de = trunc nuw i32 %i.dc to i1
  %i.df = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.dg = load i32, ptr %i.df, align 8, !range !27, !alias.scope !2503, !noalias !2504, !noundef !17
  %i.dh = trunc nuw i32 %i.dg to i1               ; 2 uses
  br i1 %i.de, label %bb.ai, label %_RNvXs6Z_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_14HnswConfigDiffNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.dh, label %.split.i.i.i.i, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.ai
  %i.di = getelementptr inbounds nuw i8, ptr %i.ac, i64 84
  %i.dj = load i32, ptr %i.dd, align 4, !alias.scope !2502, !noalias !2503, !noundef !17
  %i.dk = load i32, ptr %i.di, align 4, !alias.scope !2503, !noalias !2504, !noundef !17
  %i.dl = icmp eq i32 %i.dj, %i.dk
  br i1 %i.dl, label %bb.aj, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXs6Z_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_14HnswConfigDiffNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %bb.ah
  br i1 %i.dh, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %_RNvXs6Z_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_14HnswConfigDiffNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i.i, %.split.i.i.i.i, %bb.l
  %i.dm = getelementptr inbounds i8, ptr %i.l, i64 -40
  %i.dn = load i32, ptr %i.dm, align 8, !range !2505, !alias.scope !2499, !noalias !2498, !noundef !17 ; 7 uses
  %.not7.i.i.i.i = icmp eq i32 %i.dn, -2
  %i.do = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %i.dp = load i32, ptr %i.do, align 8, !range !2505, !alias.scope !2498, !noalias !2497, !noundef !17 ; 7 uses
  %i.dq = icmp eq i32 %i.dp, -2                   ; 2 uses
  br i1 %.not7.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.dq, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.am

bb.al:                                            ; preds = %bb.aj
  br i1 %i.dq, label %bb.bz, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.am:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !2506)
  call void @llvm.experimental.noalias.scope.decl(metadata !2507)
  %.not.i11.i.i.i.i = icmp eq i32 %i.dn, -1
  %i.dr = icmp eq i32 %i.dp, -1
  %brmerge.i.i.i.i.i = or i1 %.not.i11.i.i.i.i, %i.dr
  br i1 %brmerge.i.i.i.i.i, label %_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19quantization_config12QuantizationENtNtB7_3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !2508)
  call void @llvm.experimental.noalias.scope.decl(metadata !2509)
  %i.ds = icmp ne i32 %i.dn, 4
  call void @llvm.assume(i1 %i.ds)
  %i.dt = add nsw i32 %i.dn, -2
  %.inv.i.i.i.i.i.i = icmp samesign ult i32 %i.dn, 2
  %narrow.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i, i32 2, i32 %i.dt ; 2 uses
  %i.du = icmp ne i32 %i.dp, 4
  call void @llvm.assume(i1 %i.du)
  %i.dv = add nsw i32 %i.dp, -2
  %.inv3.i.i.i.i.i.i = icmp samesign ult i32 %i.dp, 2 ; 2 uses
  %narrow2.i.i.i.i.i.i = select i1 %.inv3.i.i.i.i.i.i, i32 2, i32 %i.dv
  %i.dw = icmp eq i32 %narrow.i.i.i.i.i.i, %narrow2.i.i.i.i.i.i
  br i1 %i.dw, label %bb.ao, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.ao:                                            ; preds = %bb.an
  switch i32 %narrow.i.i.i.i.i.i, label %bb.ap [
    i32 0, label %bb.aq
    i32 1, label %bb.az
    i32 2, label %bb.bf
    i32 3, label %bb.br
  ]

bb.ap:                                            ; preds = %bb.ao
  unreachable

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !2510)
  call void @llvm.experimental.noalias.scope.decl(metadata !2511)
  %i.dx = getelementptr inbounds i8, ptr %i.l, i64 -20
  %i.dy = load i32, ptr %i.dx, align 4, !alias.scope !2512, !noalias !2513, !noundef !17
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ac, i64 148
  %i.ea = load i32, ptr %i.dz, align 4, !alias.scope !2513, !noalias !2514, !noundef !17
  %i.eb = icmp eq i32 %i.dy, %i.ea
  br i1 %i.eb, label %bb.ar, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ac, i64 132
  %i.ed = getelementptr inbounds i8, ptr %i.l, i64 -36
  %i.ee = load i32, ptr %i.ed, align 4, !range !27, !alias.scope !2512, !noalias !2513, !noundef !17
  %i.ef = getelementptr inbounds i8, ptr %i.l, i64 -32
  %i.eg = trunc nuw i32 %i.ee to i1
  %i.eh = load i32, ptr %i.ec, align 4, !range !27, !alias.scope !2513, !noalias !2514, !noundef !17
  %i.ei = trunc nuw i32 %i.eh to i1               ; 2 uses
  br i1 %i.eg, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  br i1 %i.ei, label %.split.i.i.i.i.i.i.i, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.at:                                            ; preds = %bb.ar
  br i1 %i.ei, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.au

.split.i.i.i.i.i.i.i:                             ; preds = %bb.as
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  %i.ek = load float, ptr %i.ef, align 8, !alias.scope !2512, !noalias !2513, !noundef !17
  %i.el = load float, ptr %i.ej, align 8, !alias.scope !2513, !noalias !2514, !noundef !17
  %i.em = fcmp oeq float %i.ek, %i.el
  br i1 %i.em, label %bb.au, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.au:                                            ; preds = %.split.i.i.i.i.i.i.i, %bb.at
  %i.en = getelementptr inbounds i8, ptr %i.l, i64 -16
  %i.eo = load i8, ptr %i.en, align 8, !range !31, !alias.scope !2512, !noalias !2513, !noundef !17 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.eo, 2
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ac, i64 152
  %i.eq = load i8, ptr %i.ep, align 8, !range !31, !alias.scope !2513, !noalias !2514, !noundef !17 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.er = icmp eq i8 %i.eo, %i.eq
  br i1 %i.er, label %bb.ax, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.es = icmp eq i8 %i.eq, 2
  br i1 %i.es, label %bb.ax, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.et = getelementptr inbounds i8, ptr %i.l, i64 -28
  %i.eu = load i32, ptr %i.et, align 4, !range !27, !alias.scope !2512, !noalias !2513, !noundef !17
  %i.ev = getelementptr inbounds i8, ptr %i.l, i64 -24
  %i.ew = trunc nuw i32 %i.eu to i1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ac, i64 140
  %i.ey = load i32, ptr %i.ex, align 4, !range !27, !alias.scope !2513, !noalias !2514, !noundef !17
  %i.ez = trunc nuw i32 %i.ey to i1               ; 2 uses
  br i1 %i.ew, label %bb.ay, label %.split15.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.ez, label %.split17.i.i.i.i, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

.split15.i.i.i.i:                                 ; preds = %bb.ax
  br i1 %i.ez, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.bz

.split17.i.i.i.i:                                 ; preds = %bb.ay
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.fb = load i32, ptr %i.ev, align 8, !alias.scope !2512, !noalias !2513, !noundef !17
  %i.fc = load i32, ptr %i.fa, align 8, !alias.scope !2513, !noalias !2514, !noundef !17
  %i.fd = icmp eq i32 %i.fb, %i.fc
  br i1 %i.fd, label %bb.bz, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.az:                                            ; preds = %bb.ao
  %i.fe = getelementptr inbounds i8, ptr %i.l, i64 -36
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ac, i64 132
  call void @llvm.experimental.noalias.scope.decl(metadata !2515)
  call void @llvm.experimental.noalias.scope.decl(metadata !2516)
  %i.fg = getelementptr inbounds i8, ptr %i.l, i64 -28
  %i.fh = load i32, ptr %i.fg, align 4, !alias.scope !2517, !noalias !2518, !noundef !17
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ac, i64 140
  %i.fj = load i32, ptr %i.fi, align 4, !alias.scope !2518, !noalias !2519, !noundef !17
  %i.fk = icmp eq i32 %i.fh, %i.fj
  br i1 %i.fk, label %bb.ba, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.fl = getelementptr inbounds i8, ptr %i.l, i64 -24
  %i.fm = load i8, ptr %i.fl, align 8, !range !31, !alias.scope !2517, !noalias !2518, !noundef !17 ; 2 uses
  %.not.i5.i.i.i.i.i.i = icmp eq i8 %i.fm, 2
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.fo = load i8, ptr %i.fn, align 8, !range !31, !alias.scope !2518, !noalias !2519, !noundef !17 ; 2 uses
  br i1 %.not.i5.i.i.i.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fp = icmp eq i8 %i.fm, %i.fo
  br i1 %i.fp, label %bb.bd, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.fq = icmp eq i8 %i.fo, 2
  br i1 %i.fq, label %bb.bd, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.fr = load i32, ptr %i.fe, align 4, !range !27, !alias.scope !2517, !noalias !2518, !noundef !17
  %i.fs = getelementptr inbounds i8, ptr %i.l, i64 -32
  %i.ft = trunc nuw i32 %i.fr to i1
  %i.fu = load i32, ptr %i.ff, align 4, !range !27, !alias.scope !2518, !noalias !2519, !noundef !17
  %i.fv = trunc nuw i32 %i.fu to i1               ; 2 uses
  br i1 %i.ft, label %bb.be, label %.split21.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  br i1 %i.fv, label %.split16.i.i.i.i, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

.split21.i.i.i.i:                                 ; preds = %bb.bd
  br i1 %i.fv, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.bz

.split16.i.i.i.i:                                 ; preds = %bb.be
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  %i.fx = load i32, ptr %i.fs, align 8, !alias.scope !2517, !noalias !2518, !noundef !17
  %i.fy = load i32, ptr %i.fw, align 8, !alias.scope !2518, !noalias !2519, !noundef !17
  %i.fz = icmp eq i32 %i.fx, %i.fy
  br i1 %i.fz, label %bb.bz, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.bf:                                            ; preds = %bb.ao
  call void @llvm.assume(i1 %.inv3.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2520)
  call void @llvm.experimental.noalias.scope.decl(metadata !2521)
  %i.ga = getelementptr inbounds i8, ptr %i.l, i64 -16
  %i.gb = load i8, ptr %i.ga, align 8, !range !31, !alias.scope !2522, !noalias !2523, !noundef !17 ; 2 uses
  %.not.i6.i.i.i.i.i.i = icmp eq i8 %i.gb, 2
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ac, i64 152
  %i.gd = load i8, ptr %i.gc, align 8, !range !31, !alias.scope !2523, !noalias !2524, !noundef !17 ; 2 uses
  br i1 %.not.i6.i.i.i.i.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ge = icmp eq i8 %i.gb, %i.gd
  br i1 %i.ge, label %bb.bi, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.gf = icmp eq i8 %i.gd, 2
  br i1 %i.gf, label %bb.bi, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.gg = getelementptr inbounds i8, ptr %i.l, i64 -36
  %i.gh = trunc nuw i32 %i.dn to i1
  %i.gi = trunc nuw i32 %i.dp to i1               ; 2 uses
  br i1 %i.gh, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.gi, label %.split10.i.i.i.i.i.i.i, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.bk:                                            ; preds = %bb.bi
  br i1 %i.gi, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.bl

.split10.i.i.i.i.i.i.i:                           ; preds = %bb.bj
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ac, i64 132
  %i.gk = load i32, ptr %i.gg, align 4, !alias.scope !2522, !noalias !2523, !noundef !17
  %i.gl = load i32, ptr %i.gj, align 4, !alias.scope !2523, !noalias !2524, !noundef !17
  %i.gm = icmp eq i32 %i.gk, %i.gl
  br i1 %i.gm, label %bb.bl, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.bl:                                            ; preds = %.split10.i.i.i.i.i.i.i, %bb.bk
  %i.gn = getelementptr inbounds i8, ptr %i.l, i64 -24
  %i.go = load i32, ptr %i.gn, align 8, !range !2525, !alias.scope !2522, !noalias !2523, !noundef !17 ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq i32 %i.go, 2
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.gq = load i32, ptr %i.gp, align 8, !range !2525, !alias.scope !2523, !noalias !2524, !noundef !17 ; 2 uses
  %i.gr = icmp eq i32 %i.gq, 2                    ; 2 uses
  br i1 %.not5.i.i.i.i.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.gr, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  br i1 %i.gr, label %bb.bp, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.gs = trunc nuw i32 %i.go to i1
  %i.gt = trunc nuw i32 %i.gq to i1               ; 2 uses
  br i1 %i.gs, label %.split11.i.i.i.i.i.i.i, label %_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant34binary_quantization_query_encoding7VariantENtNtB7_3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i

.split11.i.i.i.i.i.i.i:                           ; preds = %bb.bo
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ac, i64 148
  %.val9.i.i.i.i.i.i.i = load i32, ptr %i.gu, align 4, !alias.scope !2523, !noalias !2524
  %i.gv = getelementptr inbounds i8, ptr %i.l, i64 -20
  %.val7.i.i.i.i.i.i.i = load i32, ptr %i.gv, align 4, !alias.scope !2522, !noalias !2523
  %i.gw = icmp eq i32 %.val7.i.i.i.i.i.i.i, %.val9.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.gt, i1 %i.gw, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.bp, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant34binary_quantization_query_encoding7VariantENtNtB7_3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i: ; preds = %bb.bo
  br i1 %i.gt, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant34binary_quantization_query_encoding7VariantENtNtB7_3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i, %.split11.i.i.i.i.i.i.i, %bb.bn
  %i.gx = getelementptr inbounds i8, ptr %i.l, i64 -32
  %i.gy = load i32, ptr %i.gx, align 8, !range !27, !alias.scope !2522, !noalias !2523, !noundef !17
  %i.gz = getelementptr inbounds i8, ptr %i.l, i64 -28
  %i.ha = trunc nuw i32 %i.gy to i1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  %i.hc = load i32, ptr %i.hb, align 8, !range !27, !alias.scope !2523, !noalias !2524, !noundef !17
  %i.hd = trunc nuw i32 %i.hc to i1               ; 2 uses
  br i1 %i.ha, label %bb.bq, label %.split20.i.i.i.i

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.hd, label %.split18.i.i.i.i, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

.split20.i.i.i.i:                                 ; preds = %bb.bp
  br i1 %i.hd, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.bz

.split18.i.i.i.i:                                 ; preds = %bb.bq
  %i.he = getelementptr inbounds nuw i8, ptr %i.ac, i64 140
  %i.hf = load i32, ptr %i.gz, align 4, !alias.scope !2522, !noalias !2523, !noundef !17
  %i.hg = load i32, ptr %i.he, align 4, !alias.scope !2523, !noalias !2524, !noundef !17
  %i.hh = icmp eq i32 %i.hf, %i.hg
  br i1 %i.hh, label %bb.bz, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.br:                                            ; preds = %bb.ao
  %i.hi = getelementptr inbounds i8, ptr %i.l, i64 -36
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ac, i64 132
  call void @llvm.experimental.noalias.scope.decl(metadata !2526)
  call void @llvm.experimental.noalias.scope.decl(metadata !2527)
  %i.hk = getelementptr inbounds i8, ptr %i.l, i64 -20
  %i.hl = load i8, ptr %i.hk, align 4, !range !31, !alias.scope !2528, !noalias !2529, !noundef !17 ; 2 uses
  %.not.i8.i.i.i.i.i.i = icmp eq i8 %i.hl, 2
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ac, i64 148
  %i.hn = load i8, ptr %i.hm, align 4, !range !31, !alias.scope !2529, !noalias !2530, !noundef !17 ; 2 uses
  br i1 %.not.i8.i.i.i.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ho = icmp eq i8 %i.hl, %i.hn
  br i1 %i.ho, label %bb.bu, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.hp = icmp eq i8 %i.hn, 2
  br i1 %i.hp, label %bb.bu, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.hq = load i32, ptr %i.hi, align 4, !range !27, !alias.scope !2528, !noalias !2529, !noundef !17
  %i.hr = getelementptr inbounds i8, ptr %i.l, i64 -32
  %i.hs = trunc nuw i32 %i.hq to i1
  %i.ht = load i32, ptr %i.hj, align 4, !range !27, !alias.scope !2529, !noalias !2530, !noundef !17
  %i.hu = trunc nuw i32 %i.ht to i1               ; 2 uses
  br i1 %i.hs, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.hu, label %.split4.i.i.i.i.i.i.i, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.bw:                                            ; preds = %bb.bu
  br i1 %i.hu, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.bx

.split4.i.i.i.i.i.i.i:                            ; preds = %bb.bv
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  %i.hw = load i32, ptr %i.hr, align 8, !alias.scope !2528, !noalias !2529, !noundef !17
  %i.hx = load i32, ptr %i.hv, align 8, !alias.scope !2529, !noalias !2530, !noundef !17
  %i.hy = icmp eq i32 %i.hw, %i.hx
  br i1 %i.hy, label %bb.bx, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.bx:                                            ; preds = %.split4.i.i.i.i.i.i.i, %bb.bw
  %i.hz = getelementptr inbounds i8, ptr %i.l, i64 -28
  %i.ia = load i32, ptr %i.hz, align 4, !range !27, !alias.scope !2528, !noalias !2529, !noundef !17
  %i.ib = getelementptr inbounds i8, ptr %i.l, i64 -24
  %i.ic = trunc nuw i32 %i.ia to i1
  %i.id = getelementptr inbounds nuw i8, ptr %i.ac, i64 140
  %i.ie = load i32, ptr %i.id, align 4, !range !27, !alias.scope !2529, !noalias !2530, !noundef !17
  %i.if = trunc nuw i32 %i.ie to i1               ; 2 uses
  br i1 %i.ic, label %bb.by, label %.split14.i.i.i.i

bb.by:                                            ; preds = %bb.bx
  br i1 %i.if, label %.split19.i.i.i.i, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

.split14.i.i.i.i:                                 ; preds = %bb.bx
  br i1 %i.if, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.bz

.split19.i.i.i.i:                                 ; preds = %bb.by
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ih = load i32, ptr %i.ib, align 8, !alias.scope !2528, !noalias !2529, !noundef !17
  %i.ii = load i32, ptr %i.ig, align 8, !alias.scope !2529, !noalias !2530, !noundef !17
  %i.ij = icmp eq i32 %i.ih, %i.ii
  br i1 %i.ij, label %bb.bz, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19quantization_config12QuantizationENtNtB7_3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.am
  %i.ik = and i32 %i.dp, %i.dn
  %.mux.i.i.i.i.i = icmp eq i32 %i.ik, -1
  br i1 %.mux.i.i.i.i.i, label %bb.bz, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.bz:                                            ; preds = %_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19quantization_config12QuantizationENtNtB7_3cmp9PartialEq2eqCsl8OoimOLbh_6qdrant.exit.i.i.i.i, %.split19.i.i.i.i, %.split14.i.i.i.i, %.split18.i.i.i.i, %.split20.i.i.i.i, %.split16.i.i.i.i, %.split21.i.i.i.i, %.split17.i.i.i.i, %.split15.i.i.i.i, %bb.al
  %i.il = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.im = load i8, ptr %i.il, align 8, !range !31, !alias.scope !2499, !noalias !2498, !noundef !17 ; 2 uses
  %.not9.i.i.i.i = icmp eq i8 %i.im, 2
  %i.in = getelementptr inbounds nuw i8, ptr %i.ac, i64 160
  %i.io = load i8, ptr %i.in, align 8, !range !31, !alias.scope !2498, !noalias !2497, !noundef !17 ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ip = icmp eq i8 %i.im, %i.io
  br i1 %i.ip, label %bb.cc, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.cb:                                            ; preds = %bb.bz
  %i.iq = icmp eq i8 %i.io, 2
  br i1 %i.iq, label %bb.cc, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.ir = getelementptr inbounds i8, ptr %i.l, i64 -72
  %i.is = load i32, ptr %i.ir, align 8, !range !27, !alias.scope !2499, !noalias !2498, !noundef !17
  %i.it = getelementptr inbounds i8, ptr %i.l, i64 -68
  %i.iu = trunc nuw i32 %i.is to i1
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.iw = load i32, ptr %i.iv, align 8, !range !27, !alias.scope !2498, !noalias !2497, !noundef !17
  %i.ix = trunc nuw i32 %i.iw to i1               ; 2 uses
  br i1 %i.iu, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.ix, label %.split23.i.i.i.i, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.ce:                                            ; preds = %bb.cc
  br i1 %i.ix, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, label %bb.cf

.split23.i.i.i.i:                                 ; preds = %bb.cd
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ac, i64 100
  %i.iz = load i32, ptr %i.it, align 4, !alias.scope !2499, !noalias !2498, !noundef !17
  %i.ja = load i32, ptr %i.iy, align 4, !alias.scope !2498, !noalias !2497, !noundef !17
  %i.jb = icmp eq i32 %i.iz, %i.ja
  br i1 %i.jb, label %bb.cf, label %_RNvXs47_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_12VectorParamsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.cf:                                            ; preds = %.split23.i.i.i.i, %bb.ce
end_hunk_0
