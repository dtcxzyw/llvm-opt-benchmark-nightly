Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/miniz_oxide-4bb6cbd72a4a2a9a.miniz_oxide.e11ffb1e97ec6fa2-cgu.1?download=true
inline.NumInlined: 150
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core8transfer:bb.a
  %i.cx = icmp ult i64 %i.cw, %1
  br i1 %i.cx, label %bb.as, label %bb.at

bb.ar:                                            ; preds = %bb.ao
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.025.0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #10
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.cy = add nuw nsw i64 %.sroa.025.0, 1         ; 3 uses
  %i.cz = icmp ult i64 %i.cy, %1
  br i1 %i.cz, label %.sink.split.sink.split, label %bb.au

bb.at:                                            ; preds = %bb.aq
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.cw, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #10
  unreachable

bb.au:                                            ; preds = %bb.as
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.cy, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #10
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i8, i8 } @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9init_tree(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(10504) %0, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.027 = alloca [48 x i8], align 8          ; 2 uses
  %i.b = alloca [68 x i8], align 4                ; 10 uses
  %i.c = alloca [32 x i8], align 2                ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10479 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10481
  %.ptr84 = getelementptr inbounds nuw i8, ptr %0, i64 6912
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10400
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10112
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10472
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre = load i8, ptr %i.d, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 6912
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6928
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6944
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6960
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6976
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 6992
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 7008
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 7024
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 7040
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 7056
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 7072
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 7088
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 7104
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 7120
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 7136
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 7152
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 7168
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 7184
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 7200
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 7216
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 7232
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 7248
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 7264
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 7280
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 7296
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7312
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 7328
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 7344
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 7360
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 7376
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 7392
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 7408
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 7424
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 7440
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 7456
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 7472
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 7488
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 7504
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 7520
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 7536
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 7552
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 7568
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 7584
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 7600
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 7616
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 7632
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 7648
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 7664
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 7680
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 7696
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 7712
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 7728
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 7744
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 7760
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 7776
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 7792
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 7808
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 7824
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 7840
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 7856
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 7872
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 7888
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 7904
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 7920
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 7936
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 7952
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 7968
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 7984
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8000
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8016
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8032
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8048
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8064
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8080
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8096
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8112
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8128
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8144
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8160
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8176
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8192
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8208
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8224
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8240
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8256
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8272
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8288
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8304
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8320
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8336
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8352
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8368
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8384
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8400
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8416
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8432
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8448
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8464
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8480
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8496
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8512
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8528
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8544
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8560
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8576
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8592
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8608
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8624
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8640
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8656
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8672
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8688
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8704
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8720
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8736
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8752
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8768
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8784
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8800
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8816
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8832
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8848
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8864
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8880
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8896
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8912
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8928
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8944
  br label %bb.b

bb.b:                                             ; preds = %bb.q, %bb.a
  %i.en = phi i8 [ %i.gt, %bb.q ], [ %.pre, %bb.a ] ; 3 uses
  %i.eo = zext i8 %i.en to i64                    ; 2 uses
  switch i8 %i.en, label %.loopexit88 [
    i8 0, label %vector.ph
    i8 1, label %bb.c
    i8 2, label %vector.ph171
  ]

bb.c:                                             ; preds = %bb.b
  br label %vector.ph

vector.ph:                                        ; preds = %bb.b, %bb.c
  %.sroa.758.0 = phi i64 [ 32, %bb.c ], [ 288, %bb.b ]
  %.sroa.054.0 = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.b ]
  %i.ep = getelementptr inbounds nuw [3200 x i8], ptr %i.h, i64 %i.eo ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.b, i8 0, i64 68, i1 false)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.eq = shl nuw nsw i64 %index, 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eq ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <8 x i16> splat (i16 798), ptr %i.er, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.es, align 8, !alias.scope !731
  %index.next = shl nuw i64 %index, 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index.next ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  store <8 x i16> splat (i16 798), ptr %i.eu, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ev, align 8, !alias.scope !731
  %index.next.1 = shl nuw i64 %index, 1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index.next.1 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  store <8 x i16> splat (i16 798), ptr %i.ex, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.ey, align 8, !alias.scope !731
  %index.next.2 = shl nuw i64 %index, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index.next.2 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 96
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 112
  store <8 x i16> splat (i16 798), ptr %i.fa, align 8, !alias.scope !731
  store <8 x i16> splat (i16 798), ptr %i.fb, align 8, !alias.scope !731
  %index.next.3 = add nuw nsw i64 %index, 64      ; 2 uses
  %i.fc = icmp eq i64 %index.next.3, 1024
  br i1 %i.fc, label %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit, label %vector.body, !llvm.loop !724

_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit: ; preds = %vector.body
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ep, i64 2048
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1152) %i.fd, i8 0, i64 1152, i1 false), !alias.scope !734
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit83

vector.ph171:                                     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.b, i8 0, i64 68, i1 false)
  store <8 x i16> splat (i16 798), ptr %i.p, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.q, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.r, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.s, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.t, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.u, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.v, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.w, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.x, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.y, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.z, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.aa, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ab, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ac, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ad, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ae, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.af, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ag, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ah, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ai, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.aj, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ak, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.al, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.am, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.an, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ao, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ap, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.aq, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ar, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.as, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.at, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.au, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.av, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.aw, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ax, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ay, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.az, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ba, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bb, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bc, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bd, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.be, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bf, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bg, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bh, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bi, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bj, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bk, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bl, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bm, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bn, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bo, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bp, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bq, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.br, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bs, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bt, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bu, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bv, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bw, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bx, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.by, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.bz, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ca, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.cb, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.cc, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.cd, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ce, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.cf, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.cg, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ch, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ci, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.cj, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ck, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.cl, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.cm, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.cn, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.co, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.cp, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.cq, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.cr, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.cs, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ct, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.cu, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.cv, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.cw, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.cx, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.cy, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.cz, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.da, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.db, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.dc, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.dd, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.de, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.df, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.dg, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.dh, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.di, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.dj, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.dk, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.dl, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.dm, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.dn, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.do, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.dp, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.dq, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.dr, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ds, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.dt, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.du, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.dv, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.dw, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.dx, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.dy, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.dz, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ea, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.eb, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ec, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ed, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ee, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ef, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.eg, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.eh, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ei, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ej, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.ek, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.el, align 8, !alias.scope !735
  store <8 x i16> splat (i16 798), ptr %i.em, align 8, !alias.scope !735
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit83

_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit83: ; preds = %vector.ph171, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit
  %.sroa.758.1 = phi i64 [ %.sroa.758.0, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit ], [ 19, %vector.ph171 ]
  %.sroa.054.1 = phi ptr [ %.sroa.054.0, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit ], [ %i.e, %vector.ph171 ] ; 3 uses
  %.sroa.01.0 = phi ptr [ %i.ep, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit ], [ %.ptr84, %vector.ph171 ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.eo
  %i.ff = load i16, ptr %i.fe, align 2, !noundef !4 ; 3 uses
  %i.fg = zext i16 %i.ff to i64                   ; 4 uses
  %i.fh = icmp samesign ult i64 %.sroa.758.1, %i.fg
  br i1 %i.fh, label %.loopexit85, label %bb.d

bb.d:                                             ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit83
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.054.1, i64 %i.fg
  %i.fj = icmp eq i16 %i.ff, 0
  br i1 %i.fj, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.019.0104 = phi ptr [ %i.fn, %bb.e ], [ %.sroa.054.1, %bb.d ] ; 2 uses
  %i.fk = load i8, ptr %.sroa.019.0104, align 1, !noundef !4 ; 2 uses
  %i.fl = icmp ugt i8 %i.fk, 15
  br i1 %i.fl, label %.loopexit85, label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E3newCsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.027, ptr noundef nonnull %i.c, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.027, i64 48, i1 false)
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.fm = zext nneg i8 %i.fk to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.019.0104, i64 1 ; 2 uses
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fm ; 2 uses
  %i.fp = load i16, ptr %i.fo, align 2, !noundef !4
  %i.fq = add i16 %i.fp, 1
  store i16 %i.fq, ptr %i.fo, align 2
  %i.fr = icmp eq ptr %i.fn, %i.fi
  br i1 %i.fr, label %._crit_edge, label %.lr.ph

.loopexit85:                                      ; preds = %bb.m, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit83, %.lr.ph, %._crit_edge117, %.lr.ph116, %bb.o
  %.sroa.9.0 = phi i8 [ 10, %.lr.ph116 ], [ undef, %.lr.ph ], [ 10, %._crit_edge117 ], [ 10, %bb.o ], [ 28, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit83 ], [ 28, %bb.m ]
  %.sroa.0.0 = phi i8 [ -1, %.lr.ph116 ], [ -1, %.lr.ph ], [ -1, %._crit_edge117 ], [ 1, %bb.o ], [ -1, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit83 ], [ 1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit88

bb.f:                                             ; preds = %bb.k, %._crit_edge
  %i.fs = phi i64 [ %.pr, %bb.k ], [ 1, %._crit_edge ] ; 2 uses
  %.sroa.023.0 = phi i32 [ %i.gg, %bb.k ], [ 0, %._crit_edge ] ; 2 uses
  %.sroa.021.0 = phi i16 [ %i.gd, %bb.k ], [ 0, %._crit_edge ] ; 2 uses
  %.not = icmp eq i64 %i.fs, 0
  br i1 %.not, label %bb.g, label %bb.i, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.ft = load i64, ptr %i.m, align 8, !alias.scope !736, !noundef !4 ; 4 uses
  %i.fu = load i64, ptr %i.n, align 8, !alias.scope !736, !noundef !4
  %i.fv = icmp ult i64 %i.ft, %i.fu
  br i1 %i.fv, label %bb.h, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E4nextCsjkkKzr5dxZe_11miniz_oxide.exit

bb.h:                                             ; preds = %bb.g
  %i.fw = add nuw i64 %i.ft, 1
  store i64 %i.fw, ptr %i.m, align 8, !alias.scope !736
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !736, !nonnull !4, !noundef !4
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.ft
  %.val1.i = load ptr, ptr %i.o, align 8, !alias.scope !736, !nonnull !4, !noundef !4
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.val1.i, i64 %i.ft
  br label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E4nextCsjkkKzr5dxZe_11miniz_oxide.exit

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E4nextCsjkkKzr5dxZe_11miniz_oxide.exit: ; preds = %bb.g, %bb.h
  %.sroa.3.0.i = phi ptr [ %i.fy, %bb.h ], [ undef, %bb.g ]
  %.sroa.0.0.i = phi ptr [ %i.fx, %bb.h ], [ null, %bb.g ]
  %i.fz = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ga = insertvalue { ptr, ptr } %i.fz, ptr %.sroa.3.0.i, 1
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.gb = call fastcc { ptr, ptr } @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E3nthCsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a, i64 noundef %i.fs) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E4nextCsjkkKzr5dxZe_11miniz_oxide.exit
  %.pn = phi { ptr, ptr } [ %i.gb, %bb.i ], [ %i.ga, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E4nextCsjkkKzr5dxZe_11miniz_oxide.exit ] ; 2 uses
  %.sroa.028.0 = extractvalue { ptr, ptr } %.pn, 0 ; 2 uses
  %.not78 = icmp eq ptr %.sroa.028.0, null
  br i1 %.not78, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.7.0 = extractvalue { ptr, ptr } %.pn, 1  ; 2 uses
  %i.gc = load i16, ptr %.sroa.028.0, align 2, !noundef !4 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0) ]
  %i.gd = add i16 %i.gc, %.sroa.021.0
  %i.ge = zext i16 %i.gc to i32
  %i.gf = add i32 %.sroa.023.0, %i.ge
  %i.gg = shl i32 %i.gf, 1                        ; 2 uses
  store i32 %i.gg, ptr %.sroa.7.0, align 4
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.f

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gh = icmp eq i32 %.sroa.023.0, 65536
  br i1 %i.gh, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gi = icmp ugt i16 %.sroa.021.0, 1
  %i.gj = icmp eq i8 %i.en, 2
  %or.cond = or i1 %i.gj, %i.gi
  br i1 %or.cond, label %.loopexit85, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 2048 ; 2 uses
  %.not176 = icmp eq i16 %i.ff, 0
  br i1 %.not176, label %.outer.split._crit_edge, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %bb.n, %.outer
  %.sroa.062.0.ph170 = phi i64 [ %i.gm, %.outer ], [ 0, %bb.n ]
  %.sroa.031.0.ph169 = phi i16 [ %.sroa.031.2.lcssa, %.outer ], [ -1, %bb.n ] ; 4 uses
  br label %.lr.ph109

.outer.split._crit_edge:                          ; preds = %.outer, %.loopexit, %bb.n
  %i.gl = load i8, ptr %i.d, align 1, !noundef !4 ; 2 uses
  switch i8 %i.gl, label %bb.q [
    i8 2, label %bb.o
    i8 0, label %bb.p
  ]

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %.loopexit
  %.sroa.062.0108 = phi i64 [ %i.gm, %.loopexit ], [ %.sroa.062.0.ph170, %.lr.ph109.preheader ] ; 4 uses
  %i.gm = add i64 %.sroa.062.0108, 1              ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.054.1, i64 %.sroa.062.0108
  %i.go = load i8, ptr %i.gn, align 1, !noundef !4
  %i.gp = and i8 %i.go, 15                        ; 8 uses
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %.loopexit, label %bb.r

bb.o:                                             ; preds = %.outer.split._crit_edge
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.gr, align 8
  br label %.loopexit85

bb.p:                                             ; preds = %.outer.split._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.gs, align 8
  br label %.loopexit88

bb.q:                                             ; preds = %.outer.split._crit_edge
  %i.gt = add i8 %i.gl, -1                        ; 2 uses
  store i8 %i.gt, ptr %i.d, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.b

.loopexit88:                                      ; preds = %bb.b, %.loopexit85, %bb.p
  %.sroa.9.2 = phi i8 [ 12, %bb.p ], [ %.sroa.9.0, %.loopexit85 ], [ undef, %bb.b ]
  %.sroa.0.2 = phi i8 [ 1, %bb.p ], [ %.sroa.0.0, %.loopexit85 ], [ -1, %bb.b ]
  %i.gu = insertvalue { i8, i8 } poison, i8 %.sroa.0.2, 0
  %i.gv = insertvalue { i8, i8 } %i.gu, i8 %.sroa.9.2, 1
  ret { i8, i8 } %i.gv

.loopexit:                                        ; preds = %bb.ac, %bb.v, %.lr.ph109
  %exitcond.not = icmp eq i64 %i.gm, %i.fg
  br i1 %exitcond.not, label %.outer.split._crit_edge, label %.lr.ph109

bb.r:                                             ; preds = %.lr.ph109
  %i.gw = zext nneg i8 %i.gp to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gw ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !noundef !4 ; 2 uses
  %i.gz = add i32 %i.gy, 1
  store i32 %i.gz, ptr %i.gx, align 4
  %i.ha = sub nuw nsw i8 32, %i.gp
  %i.hb = zext nneg i8 %i.ha to i32
  %i.hc = lshr i32 -1, %i.hb
  %i.hd = and i32 %i.gy, %i.hc                    ; 3 uses
  %i.he = icmp samesign ult i32 %i.hd, 512
  br i1 %i.he, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hf = trunc nuw nsw i32 %i.hd to i16
  %i.hg = call i16 @llvm.bitreverse.i16(i16 %i.hf)
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.sroa.048.0 = phi i16 [ %i.hn, %bb.u ], [ %i.hg, %bb.s ]
  %i.hh = sub nuw nsw i8 16, %i.gp
  %i.hi = zext nneg i8 %i.hh to i16
  %i.hj = lshr i16 %.sroa.048.0, %i.hi            ; 4 uses
  %i.hk = icmp samesign ult i8 %i.gp, 11
  br i1 %i.hk, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.r
  %i.hl = zext nneg i32 %i.hd to i64
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr @_RNvNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core12reverse_bits20REVERSED_BITS_LOOKUP, i64 %i.hl
  %i.hn = load i16, ptr %i.hm, align 2, !noundef !4
  br label %bb.t

bb.v:                                             ; preds = %bb.t
  %i.ho = zext nneg i8 %i.gp to i16               ; 2 uses
  %i.hp = shl nuw nsw i16 %i.ho, 9
  %i.hq = trunc nuw nsw i64 %.sroa.062.0108 to i16
  %i.hr = or i16 %i.hp, %i.hq
  %i.hs = icmp samesign ult i16 %i.hj, 1024
  br i1 %i.hs, label %.lr.ph107, label %.loopexit

.lr.ph107:                                        ; preds = %bb.v
  %i.ht = shl nuw nsw i16 1, %i.ho
  %i.hu = zext nneg i16 %i.hj to i64
  %i.hv = zext nneg i16 %i.ht to i64
  br label %bb.ac

bb.w:                                             ; preds = %bb.t
  %i.hw = and i16 %i.hj, 1023
  %i.hx = zext nneg i16 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0, i64 %i.hx ; 2 uses
  %i.hz = load i16, ptr %i.hy, align 2, !noundef !4 ; 2 uses
  %i.ia = icmp eq i16 %i.hz, 798
  br i1 %i.ia, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i16 %.sroa.031.0.ph169, ptr %i.hy, align 2
  %i.ib = add i16 %.sroa.031.0.ph169, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.sroa.049.0 = phi i16 [ %.sroa.031.0.ph169, %bb.x ], [ %i.hz, %bb.w ] ; 2 uses
  %.sroa.031.1 = phi i16 [ %i.ib, %bb.x ], [ %.sroa.031.0.ph169, %bb.w ] ; 2 uses
  %i.ic = lshr i16 %i.hj, 9                       ; 2 uses
  %.not120 = icmp eq i8 %i.gp, 11
  br i1 %.not120, label %._crit_edge117, label %.lr.ph116

._crit_edge117:                                   ; preds = %bb.ab, %bb.y
  %.sroa.049.1.lcssa = phi i16 [ %.sroa.049.0, %bb.y ], [ %.sroa.049.2, %bb.ab ]
  %.sroa.038.0.lcssa = phi i16 [ %i.ic, %bb.y ], [ %i.ii, %bb.ab ]
  %.sroa.031.2.lcssa = phi i16 [ %.sroa.031.1, %bb.y ], [ %.sroa.031.3, %bb.ab ]
  %i.id = lshr i16 %.sroa.038.0.lcssa, 1
  %.neg = and i16 %i.id, 1
  %i.ie = xor i16 %.sroa.049.1.lcssa, -1
  %i.if = add i16 %.neg, %i.ie                    ; 2 uses
  %i.ig = icmp ugt i16 %i.if, 575
  br i1 %i.ig, label %.loopexit85, label %.outer

.lr.ph116:                                        ; preds = %bb.y, %bb.ab
  %.sroa.064.0114 = phi i8 [ %i.ih, %bb.ab ], [ 11, %bb.y ]
  %.sroa.031.2113 = phi i16 [ %.sroa.031.3, %bb.ab ], [ %.sroa.031.1, %bb.y ] ; 4 uses
  %.sroa.038.0112 = phi i16 [ %i.ii, %bb.ab ], [ %i.ic, %bb.y ]
  %.sroa.049.1111 = phi i16 [ %.sroa.049.2, %bb.ab ], [ %.sroa.049.0, %bb.y ]
  %i.ih = add nuw nsw i8 %.sroa.064.0114, 1       ; 2 uses
  %i.ii = lshr i16 %.sroa.038.0112, 1             ; 3 uses
  %i.ij = and i16 %i.ii, 1
  %i.ik = xor i16 %.sroa.049.1111, -1
  %i.il = add i16 %i.ij, %i.ik                    ; 2 uses
  %i.im = icmp ugt i16 %i.il, 575
  br i1 %i.im, label %.loopexit85, label %bb.z

.outer:                                           ; preds = %._crit_edge117
  %i.in = zext nneg i16 %i.if to i64
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.in
  %i.ip = trunc nuw nsw i64 %.sroa.062.0108 to i16
  store i16 %i.ip, ptr %i.io, align 2
  %i.iq = icmp ult i64 %i.gm, %i.fg
  br i1 %i.iq, label %.lr.ph109.preheader, label %.outer.split._crit_edge

bb.z:                                             ; preds = %.lr.ph116
  %i.ir = zext nneg i16 %i.il to i64
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.ir ; 2 uses
  %i.it = load i16, ptr %i.is, align 2, !noundef !4 ; 2 uses
  %i.iu = icmp eq i16 %i.it, 0
  br i1 %i.iu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i16 %.sroa.031.2113, ptr %i.is, align 2
  %i.iv = add i16 %.sroa.031.2113, -2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.sroa.049.2 = phi i16 [ %.sroa.031.2113, %bb.aa ], [ %i.it, %bb.z ] ; 2 uses
  %.sroa.031.3 = phi i16 [ %i.iv, %bb.aa ], [ %.sroa.031.2113, %bb.z ] ; 2 uses
  %exitcond133.not = icmp eq i8 %i.ih, %i.gp
  br i1 %exitcond133.not, label %._crit_edge117, label %.lr.ph116

bb.ac:                                            ; preds = %.lr.ph107, %bb.ac
  %indvars.iv = phi i64 [ %i.hu, %.lr.ph107 ], [ %indvars.iv.next, %bb.ac ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0, i64 %indvars.iv
  store i16 %i.hr, ptr %i.iw, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.hv ; 2 uses
  %i.ix = icmp samesign ult i64 %indvars.iv.next, 1024
  br i1 %i.ix, label %bb.ac, label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E3nthCsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %1) ; 2 uses
  %i.f = add i64 %..i, %i.d                       ; 2 uses
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %.lr.ph.preheader, label %bb.b

.lr.ph.preheader:                                 ; preds = %bb.a
  store i64 %i.f, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader, %bb.a
  %i.h = sub nuw i64 %1, %..i
  %i.i = tail call { ptr, ptr } @_RNvMNtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB2_3ZipINtNtNtB8_5slice4iter4ItertEINtBW_7IterMutmEE9super_nthCsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.h)
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtNtCshzWfHUSfYae_4core5slice5index5rangeINtNtNtB6_3ops5range14RangeInclusivejEECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind
declare i32 @rust_eh_personality(...) unnamed_addr #5

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E3newCsjkkKzr5dxZe_11miniz_oxide(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtCsjkkKzr5dxZe_11miniz_oxide6shared14update_adler32(i32 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtB5_4cell4CellhEE3zipBI_ECsjkkKzr5dxZe_11miniz_oxide(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTRINtNtB5_4cell4CellhEBJ_EE3zipBJ_ECsjkkKzr5dxZe_11miniz_oxide(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #8

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMNtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB2_3ZipINtNtNtB8_5slice4iter4ItertEINtBW_7IterMutmEE9super_nthCsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef align 8 dereferenceable(48), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nonlazybind "target-cpu"="x86-64" }
attributes #6 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { noinline noreturn }
attributes #11 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{}
!5 = !{!"address", !"read_provenance"}
!6 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!"branch_weights", i32 4001, i32 4000000}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = distinct !{!10, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer18from_slice_and_pos"}
!11 = distinct !{!11, !10, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer18from_slice_and_pos: argument 0"}
!12 = distinct !{!12, !10, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer18from_slice_and_pos: argument 1"}
!13 = distinct !{!13, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper10bytes_left"}
!14 = distinct !{!14, !13, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper10bytes_left: argument 0"}
!15 = distinct !{!15, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompress0EB6_"}
!16 = distinct !{!16, !15, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompress0EB6_: argument 0"}
!17 = distinct !{!17, !15, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompress0EB6_: argument 1"}
!18 = distinct !{!18, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!19 = distinct !{!19, !18, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!20 = distinct !{!20, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss_0EB6_"}
!21 = distinct !{!21, !20, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss_0EB6_: argument 0"}
!22 = distinct !{!22, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!23 = distinct !{!23, !22, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!24 = distinct !{!24, !20, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss_0EB6_: argument 1"}
!25 = distinct !{!25, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss_0B7_"}
!26 = distinct !{!26, !25, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss_0B7_: argument 0"}
!27 = distinct !{!27, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_"}
!28 = distinct !{!28, !27, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_: argument 0"}
!29 = distinct !{!29, !27, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_: argument 1"}
!30 = distinct !{!30, !27, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_: argument 2"}
!31 = distinct !{!31, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_"}
!32 = distinct !{!32, !31, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_: argument 0"}
!33 = distinct !{!33, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!34 = distinct !{!34, !33, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!35 = distinct !{!35, !31, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_: argument 2"}
!36 = distinct !{!36, !31, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_: argument 1"}
!37 = distinct !{!37, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss0_0B7_"}
!38 = distinct !{!38, !37, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss0_0B7_: argument 0"}
!39 = distinct !{!39, !37, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss0_0B7_: argument 1"}
!40 = distinct !{!40, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core18start_static_table"}
!41 = distinct !{!41, !40, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core18start_static_table: argument 0"}
!42 = distinct !{!42, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper10bytes_left"}
!43 = distinct !{!43, !42, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper10bytes_left: argument 0"}
!44 = distinct !{!44, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_"}
!45 = distinct !{!45, !44, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_: argument 0"}
!46 = distinct !{!46, !44, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_: argument 1"}
!47 = distinct !{!47, !44, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_: argument 2"}
!48 = distinct !{!48, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss8_0EB6_"}
!49 = distinct !{!49, !48, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss8_0EB6_: argument 0"}
!50 = distinct !{!50, !48, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss8_0EB6_: argument 1"}
!51 = distinct !{!51, !48, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss8_0EB6_: argument 2"}
!52 = distinct !{!52, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_"}
!53 = distinct !{!53, !52, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_: argument 0"}
!54 = distinct !{!54, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!55 = distinct !{!55, !54, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!56 = distinct !{!56, !52, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_: argument 2"}
!57 = distinct !{!57, !52, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_: argument 1"}
!58 = distinct !{!58, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss8_0B7_"}
!59 = distinct !{!59, !58, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss8_0B7_: argument 0"}
!60 = distinct !{!60, !58, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss8_0B7_: argument 1"}
!61 = distinct !{!61, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresss8_0E0B8_"}
!62 = distinct !{!62, !61, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresss8_0E0B8_: argument 0"}
!63 = distinct !{!63, !61, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresss8_0E0B8_: argument 1"}
!64 = distinct !{!64, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresssa_0EB6_"}
!65 = distinct !{!65, !64, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresssa_0EB6_: argument 0"}
!66 = distinct !{!66, !64, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresssa_0EB6_: argument 1"}
!67 = distinct !{!67, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_"}
!68 = distinct !{!68, !67, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_: argument 0"}
!69 = distinct !{!69, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!70 = distinct !{!70, !69, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!71 = distinct !{!71, !67, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_: argument 2"}
!72 = distinct !{!72, !67, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_: argument 1"}
!73 = distinct !{!73, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresssa_0E0B8_"}
!74 = distinct !{!74, !73, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresssa_0E0B8_: argument 0"}
!75 = distinct !{!75, !73, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresssa_0E0B8_: argument 1"}
!76 = distinct !{!76, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresssb_0EB6_"}
!77 = distinct !{!77, !76, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresssb_0EB6_: argument 0"}
!78 = distinct !{!78, !76, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresssb_0EB6_: argument 1"}
!79 = distinct !{!79, !76, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresssb_0EB6_: argument 2"}
!80 = distinct !{!80, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le"}
!81 = distinct !{!81, !80, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le: argument 0"}
!82 = distinct !{!82, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_19decode_huffman_codeNCNvB2_10decompresssb_0E0EB6_"}
!83 = distinct !{!83, !82, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_19decode_huffman_codeNCNvB2_10decompresssb_0E0EB6_: argument 1"}
!84 = distinct !{!84, !82, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_19decode_huffman_codeNCNvB2_10decompresssb_0E0EB6_: argument 0"}
!85 = distinct !{!85, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!86 = distinct !{!86, !85, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
end_hunk_0
begin_hunk_1_@llvm.umin.i32
!524 = !{!170, !192}
!525 = !{!171, !190, !191}
!526 = !{!195}
!527 = !{!196}
!528 = !{!197}
!529 = !{!197, !195}
!530 = !{!196, !157}
!531 = !{!197, !195, !196, !157}
!532 = !{!159, !196}
!533 = !{!160, !195, !157}
!534 = !{!199}
!535 = !{!201}
!536 = !{!201, !202}
!537 = !{!202}
!538 = !{!204}
!539 = !{!117}
!540 = !{!121}
!541 = !{!120}
!542 = !{!119}
!543 = !{!119, !117, !121, !120, !45, !46, !47}
!544 = !{!123}
!545 = !{!124}
!546 = !{!46, !47}
!547 = !{!206}
!548 = !{!207}
!549 = !{!206, !207, !45, !46, !47}
!550 = !{!206, !47}
!551 = !{!207, !45, !46}
!552 = !{!207, !45}
!553 = !{!206, !46, !47}
!554 = !{!129}
!555 = !{!125}
!556 = !{!128}
!557 = !{!126}
!558 = !{!131}
!559 = !{!130}
!560 = !{!127}
!561 = !{!127, !126, !131, !130, !129, !125, !128}
!562 = !{!132}
!563 = !{!133}
!564 = !{!125, !128}
!565 = !{!208}
!566 = !{!209}
!567 = !{!208, !209, !129, !125, !128}
!568 = !{!208, !128}
!569 = !{!209, !129, !125}
!570 = !{!209, !129}
!571 = !{!208, !125, !128}
!572 = !{!138}
!573 = !{!134}
!574 = !{!137}
!575 = !{!135}
!576 = !{!140}
!577 = !{!139}
!578 = !{!136}
!579 = !{!136, !135, !140, !139, !138, !134, !137}
!580 = !{!141}
!581 = !{!142}
!582 = !{!134, !137}
!583 = !{!210}
!584 = !{!211}
!585 = !{!210, !211, !138, !134, !137}
!586 = !{!210, !137}
!587 = !{!211, !138, !134}
!588 = !{!211, !138}
!589 = !{!210, !134, !137}
!590 = !{!213}
!591 = !{!214}
!592 = !{!215}
!593 = !{!214, !215}
!594 = !{!213, !215}
!595 = !{!219, !217, !214}
!596 = !{!221, !220, !213, !215}
!597 = !{!217}
!598 = !{!219}
!599 = !{!223}
!600 = !{!224}
!601 = !{!223, !224, !213, !214, !215}
!602 = !{!223, !215}
!603 = !{!224, !213, !214}
!604 = !{!224, !213}
!605 = !{!223, !214, !215}
!606 = !{!219, !217, !221, !220, !213, !214, !215}
!607 = !{!226}
!608 = !{!227}
!609 = !{!228}
!610 = !{!226, !228}
!611 = !{!226, !227}
!612 = !{!227, !228}
!613 = !{!230}
!614 = !{!230, !228}
!615 = !{!230, !226, !227, !228}
!616 = !{!226, !227, !228}
!617 = !{!232}
!618 = !{!234}
!619 = !{!234, !232, !228}
!620 = !{!235, !226, !227}
!621 = !{!234, !232, !235, !226, !227, !228}
!622 = !{!237, !226}
!623 = !{!239}
!624 = !{!240}
!625 = !{!240, !227}
!626 = !{!239, !226, !228}
!627 = !{!239, !240, !226, !227, !228}
!628 = !{!239, !226}
!629 = !{!240, !227, !228}
!630 = !{!"branch_weights", i32 4000000, i32 4001}
!631 = !{!242}
!632 = !{!243}
!633 = !{!245, !242}
!634 = !{!247}
!635 = !{!249, !247}
!636 = !{!251}
!637 = !{!253, !251}
!638 = !{!255}
!639 = !{!257}
!640 = !{!259}
!641 = !{!260}
!642 = !{!261}
!643 = !{!259, !261}
!644 = !{!259, !260}
!645 = !{!260, !261}
!646 = !{!263}
!647 = !{!263, !261}
!648 = !{!263, !259, !260, !261}
!649 = !{!259, !260, !261}
!650 = !{!265}
!651 = !{!267}
!652 = !{!267, !265, !261}
!653 = !{!268, !259, !260}
!654 = !{!267, !265, !268, !259, !260, !261}
!655 = !{!270, !259}
!656 = !{!272, !260}
!657 = !{!274}
!658 = !{!276, !65}
!659 = !{!278, !92}
!660 = !{!101, !99, !92}
!661 = !{!102, !95, !98, !93}
!662 = !{!102, !98, !92}
!663 = !{!101, !95, !99, !93}
!664 = !{!280, !104}
!665 = !{!282}
!666 = !{!284}
!667 = !{!286, !284}
!668 = !{!287}
!669 = !{!289}
!670 = !{!291}
!671 = !{!293}
!672 = !{!295}
!673 = !{!301, !299, !298, !297}
!674 = !{!303}
!675 = !{!305, !304}
!676 = !{!311, !309, !308, !307, !303, !305, !304}
!677 = !{!312}
!678 = !{!311, !309, !308, !307, !312, !305, !304}
!679 = !{!313}
!680 = !{!311, !309, !308, !307, !313, !305, !304}
!681 = !{!314}
!682 = !{!311, !309, !308, !307, !314, !305, !304}
!683 = !{!316}
!684 = !{!318}
!685 = !{!320}
!686 = !{!322}
!687 = !{!324}
!688 = distinct !{!688, !"_RNvMNtCshzWfHUSfYae_4core5sliceSh12split_at_mutCsjkkKzr5dxZe_11miniz_oxide"}
!689 = distinct !{!689, !688, !"_RNvMNtCshzWfHUSfYae_4core5sliceSh12split_at_mutCsjkkKzr5dxZe_11miniz_oxide: argument 1"}
!690 = distinct !{!690, !688, !"_RNvMNtCshzWfHUSfYae_4core5sliceSh12split_at_mutCsjkkKzr5dxZe_11miniz_oxide: argument 0"}
!691 = distinct !{!691, !"_RNvMNtCshzWfHUSfYae_4core5sliceSh12split_at_mutCsjkkKzr5dxZe_11miniz_oxide"}
!692 = distinct !{!692, !691, !"_RNvMNtCshzWfHUSfYae_4core5sliceSh12split_at_mutCsjkkKzr5dxZe_11miniz_oxide: argument 1"}
!693 = distinct !{!693, !691, !"_RNvMNtCshzWfHUSfYae_4core5sliceSh12split_at_mutCsjkkKzr5dxZe_11miniz_oxide: argument 0"}
!694 = !{!690, !689}
!695 = !{!693, !692}
!696 = distinct !{!696, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le"}
!697 = distinct !{!697, !696, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le: argument 0"}
!698 = distinct !{!698, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup"}
!699 = distinct !{!699, !698, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup: argument 0"}
!700 = distinct !{!700, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup"}
!701 = distinct !{!701, !700, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup: argument 0"}
!702 = distinct !{!702, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le"}
!703 = distinct !{!703, !702, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le: argument 0"}
!704 = distinct !{!704, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup"}
!705 = distinct !{!705, !704, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup: argument 0"}
!706 = distinct !{!706, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le"}
!707 = distinct !{!707, !706, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le: argument 0"}
!708 = !{!697}
!709 = !{!699}
!710 = !{!701}
!711 = !{!703}
!712 = !{!705}
!713 = !{!707}
!714 = distinct !{!714, !"_RINvMNtCshzWfHUSfYae_4core5sliceSh11copy_withinINtNtNtB5_3ops5range14RangeInclusivejEECsjkkKzr5dxZe_11miniz_oxide"}
!715 = distinct !{!715, !714, !"_RINvMNtCshzWfHUSfYae_4core5sliceSh11copy_withinINtNtNtB5_3ops5range14RangeInclusivejEECsjkkKzr5dxZe_11miniz_oxide: argument 0"}
!716 = distinct !{!716, !714, !"_RINvMNtCshzWfHUSfYae_4core5sliceSh11copy_withinINtNtNtB5_3ops5range14RangeInclusivejEECsjkkKzr5dxZe_11miniz_oxide: argument 1"}
!717 = !{!"branch_weights", i32 127, i32 1}
!718 = !{!"branch_weights", i32 255873, i32 127}
!719 = !{!715}
!720 = !{!715, !716}
!721 = !{!716}
!722 = distinct !{!722, !"_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill"}
!723 = distinct !{!723, !722, !"_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill: argument 0"}
!724 = distinct !{!724, !732, !733}
!725 = distinct !{!725, !"_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill"}
!726 = distinct !{!726, !725, !"_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill: argument 0"}
!727 = distinct !{!727, !"_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill"}
!728 = distinct !{!728, !727, !"_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill: argument 0"}
!729 = distinct !{!729, !"_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E4nextCsjkkKzr5dxZe_11miniz_oxide"}
!730 = distinct !{!730, !729, !"_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E4nextCsjkkKzr5dxZe_11miniz_oxide: argument 0"}
!731 = !{!723}
!732 = !{!"llvm.loop.isvectorized", i32 1}
!733 = !{!"llvm.loop.unroll.runtime.disable"}
!734 = !{!726}
!735 = !{!728}
!736 = !{!730}
end_hunk_1
