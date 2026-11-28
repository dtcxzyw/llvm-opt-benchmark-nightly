Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_macros-aac842550f2a5864.yara_x_macros.c4210d5f279e7fe8-cgu.02?download=true
inline.NumInlined: 719
inline.NumDeleted: 228
begin_hunk_0_@_RNvNtCsgPZq453g1IG_13yara_x_macros5error21impl_error_enum_macro:bb.a

bb.acg:                                           ; preds = %bb.abq
  unreachable

bb.ach:                                           ; preds = %.body
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val = load i32, ptr %i.ni, align 8, !range !14, !noundef !13
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.val97 = load ptr, ptr %i.nj, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbiVIOMxcYgN_3syn11restriction10VisibilityECsgPZq453g1IG_13yara_x_macros(i32 %.val, ptr %.val97) #13
          to label %bb.aci unwind label %bb.cx

bb.aci:                                           ; preds = %bb.ach
  br i1 %.sroa.022.0, label %bb.ack, label %bb.acj

bb.acj:                                           ; preds = %bb.ack, %bb.aci
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbiVIOMxcYgN_3syn8generics8GenericsECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef align 8 dereferenceable(88) %i.nk) #13
          to label %bb.acl unwind label %bb.cx

bb.ack:                                           ; preds = %bb.aci
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 216
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs4G72gg52fHF_11proc_macro25IdentECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.nl) #13
  br label %bb.acj

bb.acl:                                           ; preds = %bb.acj
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbiVIOMxcYgN_3syn6derive4DataECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef align 8 dereferenceable(72) %1) #13
          to label %common.resume unwind label %bb.cx
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsgPZq453g1IG_13yara_x_macros5error23impl_error_struct_macro(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(240) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 25 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 21 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 11 uses
  %i.i = alloca [32 x i8], align 8                ; 11 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 29 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [32 x i8], align 8                ; 11 uses
  %i.o = alloca [32 x i8], align 8                ; 11 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [32 x i8], align 8                ; 29 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [32 x i8], align 8                ; 11 uses
  %i.u = alloca [32 x i8], align 8                ; 15 uses
  %i.v = alloca [32 x i8], align 8                ; 10 uses
  %i.w = alloca [32 x i8], align 8                ; 10 uses
  %i.x = alloca [32 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [32 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [32 x i8], align 8               ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 4 uses
  %i.ae = alloca [32 x i8], align 8               ; 11 uses
  %i.af = alloca [32 x i8], align 8               ; 4 uses
  %i.ag = alloca [32 x i8], align 8               ; 11 uses
  %i.ah = alloca [32 x i8], align 8               ; 4 uses
  %i.ai = alloca [32 x i8], align 8               ; 30 uses
  %i.aj = alloca [32 x i8], align 8               ; 4 uses
  %i.ak = alloca [32 x i8], align 8               ; 6 uses
  %i.al = alloca [32 x i8], align 8               ; 4 uses
  %i.am = alloca [32 x i8], align 8               ; 12 uses
  %i.an = alloca [32 x i8], align 8               ; 4 uses
  %i.ao = alloca [32 x i8], align 8               ; 8 uses
  %i.ap = alloca [32 x i8], align 8               ; 4 uses
  %i.aq = alloca [32 x i8], align 8               ; 16 uses
  %i.ar = alloca [32 x i8], align 8               ; 4 uses
  %i.as = alloca [32 x i8], align 8               ; 15 uses
  %i.at = alloca [32 x i8], align 8               ; 4 uses
  %i.au = alloca [32 x i8], align 8               ; 6 uses
  %i.av = alloca [32 x i8], align 8               ; 4 uses
  %i.aw = alloca [32 x i8], align 8               ; 6 uses
  %i.ax = alloca [32 x i8], align 8               ; 4 uses
  %i.ay = alloca [32 x i8], align 8               ; 13 uses
  %i.az = alloca [32 x i8], align 8               ; 4 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [32 x i8], align 8               ; 4 uses
  %i.bc = alloca [32 x i8], align 8               ; 15 uses
  %i.bd = alloca [32 x i8], align 8               ; 4 uses
  %i.be = alloca [32 x i8], align 8               ; 6 uses
  %i.bf = alloca [32 x i8], align 8               ; 4 uses
  %i.bg = alloca [32 x i8], align 8               ; 4 uses
  %i.bh = alloca [32 x i8], align 8               ; 11 uses
  %i.bi = alloca [32 x i8], align 8               ; 4 uses
  %i.bj = alloca [32 x i8], align 8               ; 7 uses
  %i.bk = alloca [32 x i8], align 8               ; 4 uses
  %i.bl = alloca [32 x i8], align 8               ; 6 uses
  %i.bm = alloca [32 x i8], align 8               ; 4 uses
  %i.bn = alloca [32 x i8], align 8               ; 8 uses
  %i.bo = alloca [32 x i8], align 8               ; 4 uses
  %i.bp = alloca [32 x i8], align 8               ; 4 uses
  %i.bq = alloca [32 x i8], align 8               ; 11 uses
  %i.br = alloca [32 x i8], align 8               ; 4 uses
  %i.bs = alloca [32 x i8], align 8               ; 7 uses
  %i.bt = alloca [32 x i8], align 8               ; 4 uses
  %i.bu = alloca [32 x i8], align 8               ; 6 uses
  %i.bv = alloca [32 x i8], align 8               ; 4 uses
  %i.bw = alloca [32 x i8], align 8               ; 8 uses
  %i.bx = alloca [32 x i8], align 8               ; 4 uses
  %i.by = alloca [32 x i8], align 8               ; 4 uses
  %i.bz = alloca [32 x i8], align 8               ; 11 uses
  %i.ca = alloca [32 x i8], align 8               ; 4 uses
  %i.cb = alloca [32 x i8], align 8               ; 7 uses
  %i.cc = alloca [32 x i8], align 8               ; 4 uses
  %i.cd = alloca [32 x i8], align 8               ; 6 uses
  %i.ce = alloca [32 x i8], align 8               ; 4 uses
  %i.cf = alloca [32 x i8], align 8               ; 8 uses
  %i.cg = alloca [32 x i8], align 8               ; 4 uses
  %i.ch = alloca [32 x i8], align 8               ; 6 uses
  %i.ci = alloca [32 x i8], align 8               ; 4 uses
  %i.cj = alloca [32 x i8], align 8               ; 4 uses
  %i.ck = alloca [32 x i8], align 8               ; 6 uses
  %i.cl = alloca [32 x i8], align 8               ; 4 uses
  %i.cm = alloca [32 x i8], align 8               ; 8 uses
  %i.cn = alloca [32 x i8], align 8               ; 4 uses
  %i.co = alloca [32 x i8], align 8               ; 8 uses
  %i.cp = alloca [32 x i8], align 8               ; 4 uses
  %i.cq = alloca [32 x i8], align 8               ; 8 uses
  %i.cr = alloca [32 x i8], align 8               ; 4 uses
  %i.cs = alloca [32 x i8], align 8               ; 8 uses
  %i.ct = alloca [32 x i8], align 8               ; 4 uses
  %i.cu = alloca [32 x i8], align 8               ; 8 uses
  %i.cv = alloca [32 x i8], align 8               ; 4 uses
  %i.cw = alloca [32 x i8], align 8               ; 73 uses
  %i.cx = alloca [32 x i8], align 8               ; 4 uses
  %i.cy = alloca [32 x i8], align 8               ; 6 uses
  %i.cz = alloca [32 x i8], align 8               ; 4 uses
  %i.da = alloca [32 x i8], align 8               ; 10 uses
  %i.db = alloca [32 x i8], align 8               ; 13 uses
  %i.dc = alloca [32 x i8], align 8               ; 8 uses
  %i.dd = alloca [32 x i8], align 8               ; 4 uses
  %i.de = alloca [32 x i8], align 8               ; 10 uses
  %i.df = alloca [32 x i8], align 8               ; 13 uses
  %i.dg = alloca [32 x i8], align 8               ; 8 uses
  %i.dh = alloca [32 x i8], align 8               ; 4 uses
  %i.di = alloca [32 x i8], align 8               ; 6 uses
  %i.dj = alloca [32 x i8], align 8               ; 4 uses
  %i.dk = alloca [32 x i8], align 8               ; 21 uses
  %i.dl = alloca [32 x i8], align 8               ; 4 uses
  %i.dm = alloca [32 x i8], align 8               ; 15 uses
  %i.dn = alloca [32 x i8], align 8               ; 4 uses
  %i.do = alloca [32 x i8], align 8               ; 7 uses
  %i.dp = alloca [32 x i8], align 8               ; 4 uses
  %i.dq = alloca [32 x i8], align 8               ; 9 uses
  %i.dr = alloca [32 x i8], align 8               ; 4 uses
  %i.ds = alloca [32 x i8], align 8               ; 9 uses
  %i.dt = alloca [32 x i8], align 8               ; 4 uses
  %i.du = alloca [32 x i8], align 8               ; 10 uses
  %i.dv = alloca [32 x i8], align 8               ; 13 uses
  %i.dw = alloca [32 x i8], align 8               ; 13 uses
  %i.dx = alloca [32 x i8], align 8               ; 4 uses
  %i.dy = alloca [32 x i8], align 8               ; 6 uses
  %i.dz = alloca [32 x i8], align 8               ; 4 uses
  %i.ea = alloca [32 x i8], align 8               ; 13 uses
  %i.eb = alloca [32 x i8], align 8               ; 4 uses
  %i.ec = alloca [32 x i8], align 8               ; 6 uses
  %i.ed = alloca [32 x i8], align 8               ; 4 uses
  %i.ee = alloca [32 x i8], align 8               ; 57 uses
  %i.ef = alloca [24 x i8], align 8               ; 9 uses
  %i.eg = alloca [24 x i8], align 8               ; 6 uses
  %i.eh = alloca [8 x i8], align 8                ; 8 uses
  %i.ei = alloca [8 x i8], align 8                ; 8 uses
  %i.ej = alloca [24 x i8], align 8               ; 15 uses
  %i.ek = alloca [24 x i8], align 8               ; 6 uses
  %i.el = alloca [24 x i8], align 8               ; 4 uses
  %i.em = alloca [24 x i8], align 8               ; 9 uses
  %i.en = alloca [24 x i8], align 8               ; 6 uses
  %i.eo = alloca [24 x i8], align 8               ; 6 uses
  %i.ep = alloca [24 x i8], align 8               ; 4 uses
  %i.eq = alloca [32 x i8], align 8               ; 8 uses
  %i.er = alloca [32 x i8], align 8               ; 5 uses
  %i.es = alloca [32 x i8], align 8               ; 8 uses
  %i.et = alloca [32 x i8], align 8               ; 5 uses
  %i.eu = alloca [336 x i8], align 8              ; 5 uses
  %i.ev = alloca [336 x i8], align 8              ; 7 uses
  %.sroa.613 = alloca [24 x i8], align 8          ; 6 uses
  %i.ew = alloca [200 x i8], align 8              ; 5 uses
  %i.ex = alloca [200 x i8], align 8              ; 7 uses
  %.sroa.68 = alloca [24 x i8], align 8           ; 6 uses
  %i.ey = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.55.sroa.9 = alloca [7 x i8], align 1     ; 6 uses
  %.sroa.10 = alloca [7 x i8], align 1            ; 5 uses
  %i.ez = alloca [248 x i8], align 8              ; 21 uses
  %.sroa.9260 = alloca [240 x i8], align 8        ; 9 uses
  %i.fa = alloca [32 x i8], align 8               ; 10 uses
  %i.fb = alloca [24 x i8], align 8               ; 15 uses
  %i.fc = alloca [24 x i8], align 8               ; 15 uses
  %.sroa.19 = alloca [7 x i8], align 1            ; 5 uses
  %i.fd = alloca [8 x i8], align 8                ; 10 uses
  %i.fe = alloca [8 x i8], align 8                ; 12 uses
  %i.ff = alloca [32 x i8], align 8               ; 24 uses
  %i.fg = alloca [24 x i8], align 8               ; 6 uses
  %i.fh = alloca [24 x i8], align 8               ; 4 uses
  %i.fi = load i64, ptr %1, align 8, !range !26, !noundef !13
  %i.fj = icmp samesign ult i64 %i.fi, 3
  br i1 %i.fj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff)
  store i64 -2, ptr %i.ff, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fe)
  store ptr null, ptr %i.fe, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd)
  store ptr null, ptr %i.fd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc)
  store i64 0, ptr %i.fc, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 4 uses
  store i64 0, ptr %i.fl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb)
  store i64 0, ptr %i.fb, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 4 uses
  store i64 0, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fq = load ptr, ptr %i.fp, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %i.fr = load i64, ptr %i.fo, align 8, !range !1378, !noundef !13
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ft = load i64, ptr %i.fs, align 8, !noundef !13 ; 3 uses
  %i.fu = icmp ult i64 %i.ft, 37191016277640226
  tail call void @llvm.assume(i1 %i.fu)
  %.idx = mul nuw nsw i64 %i.ft, 248
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa)
  store ptr %i.fq, ptr %i.fa, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 4 uses
  store ptr %i.fq, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store i64 %i.fr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 24 ; 3 uses
  store ptr %i.fv, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9260)
  %i.fw = icmp eq i64 %i.ft, 0
  br i1 %i.fw, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit.lr.ph.lr.ph

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit.lr.ph.lr.ph: ; preds = %bb.b
  %.sroa.9260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %.sroa.613.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %.sroa.815.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %.sroa.68.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.sroa.8.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.sroa.4295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %.sroa.5296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %.sroa.6297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 25
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit.lr.ph

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit.lr.ph: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit.lr.ph.lr.ph, %.outer
  %i.fy = phi ptr [ %i.fq, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit.lr.ph.lr.ph ], [ %i.pi, %.outer ]
  %.sroa.0.0.ph530 = phi ptr [ undef, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit.lr.ph.lr.ph ], [ %.sroa.0.6, %.outer ] ; 11 uses
  %.sroa.9.0.ph529 = phi i64 [ undef, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit.lr.ph.lr.ph ], [ %.sroa.9.6, %.outer ] ; 11 uses
  %.sroa.12.0.ph528 = phi i8 [ -1, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit.lr.ph.lr.ph ], [ %.sroa.12.6, %.outer ] ; 11 uses
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fh)
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ga = invoke noundef i32 @_RNvMsx_Cs4G72gg52fHF_11proc_macro2NtB5_5Ident4span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fz)
          to label %bb.aas unwind label %bb.abh

.loopexit356:                                     ; preds = %.loopexit.split-lp357.loopexit.split-lp, %.loopexit356.loopexit.split-lp, %.body201
  %.sroa.12.1 = phi i8 [ %.sroa.12.0.ph528, %.body201 ], [ %.sroa.12.0.ph528, %.loopexit.split-lp357.loopexit.split-lp ], [ %.sroa.12.6, %.loopexit356.loopexit.split-lp ]
  %.sroa.9.1 = phi i64 [ %.sroa.9.0.ph529, %.body201 ], [ %.sroa.9.0.ph529, %.loopexit.split-lp357.loopexit.split-lp ], [ %.sroa.9.6, %.loopexit356.loopexit.split-lp ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0.ph530, %.body201 ], [ %.sroa.0.0.ph530, %.loopexit.split-lp357.loopexit.split-lp ], [ %.sroa.0.6, %.loopexit356.loopexit.split-lp ]
  %.pn113 = phi { ptr, i32 } [ %.pn104, %.body201 ], [ %lpad.loopexit.split-lp955, %.loopexit.split-lp357.loopexit.split-lp ], [ %lpad.loopexit.split-lp365, %.loopexit356.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeEECsgPZq453g1IG_13yara_x_macros.exit unwind label %bb.bp

.loopexit356.loopexit.split-lp:                   ; preds = %bb.zw
  %lpad.loopexit.split-lp365 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit356

.loopexit.split-lp357.loopexit.split-lp:          ; preds = %bb.xo, %bb.zx
  %lpad.loopexit.split-lp955 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit356

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit.lr.ph, %bb.aap
  %i.gb = phi ptr [ %i.fy, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit.lr.ph ], [ %i.pz, %bb.aap ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 248
  store ptr %i.gc, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1379
  %.sroa.0258.0.copyload259 = load i64, ptr %i.gb, align 8, !noalias !1379 ; 2 uses
  %.sroa.9260.0..sroa_idx261 = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.9260, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.9260.0..sroa_idx261, i64 240, i1 false), !noalias !1379
  %.not = icmp eq i64 %.sroa.0258.0.copyload259, -1
  br i1 %.not, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez)
  store i64 %.sroa.0258.0.copyload259, ptr %i.ez, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.9260.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.9260, i64 240, i1 false)
  %i.gd = invoke noundef nonnull align 8 ptr @_RNvMNtCsbiVIOMxcYgN_3syn4attrNtB2_9Attribute4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.ez)
          to label %bb.xl unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit.thread: ; preds = %.outer, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit, %bb.aap, %bb.b
  %.sroa.12.0.ph.lcssa = phi i8 [ %.sroa.12.0.ph528, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit ], [ -1, %bb.b ], [ %.sroa.12.0.ph528, %bb.aap ], [ %.sroa.12.6, %.outer ] ; 10 uses
  %.sroa.9.0.ph.lcssa = phi i64 [ %.sroa.9.0.ph529, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit ], [ undef, %bb.b ], [ %.sroa.9.0.ph529, %bb.aap ], [ %.sroa.9.6, %.outer ] ; 16 uses
  %.sroa.0.0.ph.lcssa = phi ptr [ %.sroa.0.0.ph530, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit ], [ undef, %bb.b ], [ %.sroa.0.0.ph530, %bb.aap ], [ %.sroa.0.6, %.outer ] ; 15 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9260)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeEECsgPZq453g1IG_13yara_x_macros.exit137 unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeEECsgPZq453g1IG_13yara_x_macros.exit: ; preds = %bb.wo, %bb.wn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs4G72gg52fHF_11proc_macro25IdentECsgPZq453g1IG_13yara_x_macros.exit, %.loopexit356, %bb.e
  %.sroa.12.3 = phi i8 [ %.sroa.12.0.ph517, %bb.e ], [ %.sroa.12.1, %.loopexit356 ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs4G72gg52fHF_11proc_macro25IdentECsgPZq453g1IG_13yara_x_macros.exit ], [ %.sroa.12.0.ph.lcssa, %bb.wn ], [ %.sroa.12.0.ph.lcssa, %bb.wo ]
  %.sroa.9.3 = phi i64 [ %.sroa.9.0.ph466, %bb.e ], [ %.sroa.9.1, %.loopexit356 ], [ %.sroa.9.0.ph.lcssa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs4G72gg52fHF_11proc_macro25IdentECsgPZq453g1IG_13yara_x_macros.exit ], [ 0, %bb.wn ], [ %.sroa.9.0.ph.lcssa, %bb.wo ]
  %.sroa.0.3 = phi ptr [ %.sroa.0.0.ph415, %bb.e ], [ %.sroa.0.1, %.loopexit356 ], [ %.sroa.0.0.ph.lcssa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs4G72gg52fHF_11proc_macro25IdentECsgPZq453g1IG_13yara_x_macros.exit ], [ %.sroa.0.0.ph.lcssa, %bb.wn ], [ %.sroa.0.0.ph.lcssa, %bb.wo ]
  %.pn113.pn = phi { ptr, i32 } [ %i.ge, %bb.e ], [ %.pn113, %.loopexit356 ], [ %.pn97, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs4G72gg52fHF_11proc_macro25IdentECsgPZq453g1IG_13yara_x_macros.exit ], [ %.pn97, %bb.wn ], [ %.pn97, %bb.wo ]
  %.sroa.030.3 = phi i8 [ 1, %bb.e ], [ 1, %.loopexit356 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs4G72gg52fHF_11proc_macro25IdentECsgPZq453g1IG_13yara_x_macros.exit ], [ 0, %bb.wn ], [ 0, %bb.wo ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgPZq453g1IG_13yara_x_macros5error6FooterEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fb) #13
          to label %.body unwind label %bb.bp

bb.e:                                             ; preds = %bb.aad, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit.thread, %bb.k, %bb.j, %bb.h, %bb.g
  %.sroa.12.0.ph517 = phi i8 [ %.sroa.12.0.ph528, %bb.aad ], [ %.sroa.12.0.ph.lcssa, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit.thread ], [ -1, %bb.k ], [ -1, %bb.j ], [ -1, %bb.h ], [ -1, %bb.g ]
  %.sroa.9.0.ph466 = phi i64 [ %.sroa.9.0.ph529, %bb.aad ], [ %.sroa.9.0.ph.lcssa, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit.thread ], [ %.sroa.9.0.ph.lcssa, %bb.k ], [ %.sroa.9.0.ph.lcssa, %bb.j ], [ %.sroa.9.0.ph.lcssa, %bb.h ], [ %.sroa.9.0.ph.lcssa, %bb.g ]
  %.sroa.0.0.ph415 = phi ptr [ %.sroa.0.0.ph530, %bb.aad ], [ %.sroa.0.0.ph.lcssa, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit.thread ], [ %.sroa.0.0.ph.lcssa, %bb.k ], [ %.sroa.0.0.ph.lcssa, %bb.j ], [ %.sroa.0.0.ph.lcssa, %bb.h ], [ %.sroa.0.0.ph.lcssa, %bb.g ]
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeEECsgPZq453g1IG_13yara_x_macros.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeEECsgPZq453g1IG_13yara_x_macros.exit137: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  %.not58 = icmp eq i8 %.sroa.12.0.ph.lcssa, -1
  br i1 %.not58, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeEECsgPZq453g1IG_13yara_x_macros.exit137
  %.sroa.6285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6285.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.19, i64 7, i1 false)
  store ptr %.sroa.0.0.ph.lcssa, ptr %i.em, align 8
  %.sroa.4283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i64 %.sroa.9.0.ph.lcssa, ptr %.sroa.4283.0..sroa_idx, align 8
  %.sroa.5284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store i8 %.sroa.12.0.ph.lcssa, ptr %.sroa.5284.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %i.gf, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  invoke void @_RNvMs_NtCsbiVIOMxcYgN_3syn8genericsNtB4_8Generics14split_for_impl(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.eg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.gg)
          to label %bb.u unwind label %bb.t

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeEECsgPZq453g1IG_13yara_x_macros.exit137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el)
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.gi = invoke noundef i32 @_RNvMsx_Cs4G72gg52fHF_11proc_macro2NtB5_5Ident4span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gh)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, i64 noundef 69, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  %i.gj = load i64, ptr %i.y, align 8, !range !24, !noundef !13
  %i.gk = trunc nuw i64 %i.gj to i1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !range !28, !noundef !13 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  br i1 %i.gk, label %bb.j, label %bb.k, !prof !29

bb.j:                                             ; preds = %bb.i
  %i.go = load i64, ptr %i.gn, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.gm, i64 %i.go) #15
          to label %bb.q unwind label %bb.e

bb.k:                                             ; preds = %bb.i
  %i.gp = load ptr, ptr %i.gn, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.gq = icmp samesign ugt i64 %i.gm, 68
  call void @llvm.assume(i1 %i.gq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(69) %i.gp, ptr noundef nonnull align 1 dereferenceable(69) @62, i64 69, i1 false)
  store i64 %i.gm, ptr %i.ek, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.gp, ptr %.sroa.448.0..sroa_idx, align 8
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i64 69, ptr %.sroa.649.0..sroa_idx, align 8
  invoke void @_RINvMNtCsbiVIOMxcYgN_3syn5errorNtB3_5Error3newNtNtCsexYYUdYSQU6_5alloc6string6StringECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.el, i32 noundef %i.gi, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ek)
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k
end_hunk_0
begin_hunk_1_@_RNvNtCsgPZq453g1IG_13yara_x_macros5error23impl_error_struct_macro:bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

.body:                                            ; preds = %bb.n, %bb.wq, %bb.wt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeEECsgPZq453g1IG_13yara_x_macros.exit
  %.sroa.12.4 = phi i8 [ %.sroa.12.3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeEECsgPZq453g1IG_13yara_x_macros.exit ], [ %.sroa.12.0.ph518, %bb.wt ], [ %.sroa.12.0.ph.lcssa, %bb.wq ], [ %.sroa.12.0.ph484, %bb.n ]
  %.sroa.9.4 = phi i64 [ %.sroa.9.3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeEECsgPZq453g1IG_13yara_x_macros.exit ], [ %.sroa.9.0.ph467, %bb.wt ], [ %.sroa.9.0.ph.lcssa, %bb.wq ], [ %.sroa.9.0.ph433, %bb.n ]
  %.sroa.0.4 = phi ptr [ %.sroa.0.3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeEECsgPZq453g1IG_13yara_x_macros.exit ], [ %.sroa.0.0.ph416, %bb.wt ], [ %.sroa.0.0.ph.lcssa, %bb.wq ], [ %.sroa.0.0.ph382, %bb.n ]
  %.pn113.pn.pn = phi { ptr, i32 } [ %.pn113.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeEECsgPZq453g1IG_13yara_x_macros.exit ], [ %i.ma, %bb.wt ], [ %i.ly, %bb.wq ], [ %i.gs, %bb.n ]
  %.sroa.030.5 = phi i8 [ %.sroa.030.3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeEECsgPZq453g1IG_13yara_x_macros.exit ], [ %.sroa.030.6, %bb.wt ], [ 0, %bb.wq ], [ 1, %bb.n ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgPZq453g1IG_13yara_x_macros5error5LabelEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fc) #13
          to label %.body182 unwind label %bb.bp

bb.wt:                                            ; preds = %bb.wr, %bb.o
  %.sroa.12.0.ph518 = phi i8 [ %.sroa.12.0.ph484, %bb.o ], [ %.sroa.12.0.ph.lcssa, %bb.wr ]
  %.sroa.9.0.ph467 = phi i64 [ %.sroa.9.0.ph433, %bb.o ], [ %.sroa.9.0.ph.lcssa, %bb.wr ]
  %.sroa.0.0.ph416 = phi ptr [ %.sroa.0.0.ph382, %bb.o ], [ %.sroa.0.0.ph.lcssa, %bb.wr ]
  %.sroa.030.6 = phi i8 [ 1, %bb.o ], [ 0, %bb.wr ]
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgPZq453g1IG_13yara_x_macros5error6FooterEEB1c_.exit180: ; preds = %bb.wr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsgPZq453g1IG_13yara_x_macros5error5LabelENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fc)
          to label %bb.wv unwind label %bb.wu

bb.wu:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgPZq453g1IG_13yara_x_macros5error6FooterEEB1c_.exit180
  %i.mb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsgPZq453g1IG_13yara_x_macros5error5LabelENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs4G72gg52fHF_11proc_macro25IdentECsgPZq453g1IG_13yara_x_macros.exit230 unwind label %bb.ww

bb.wv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgPZq453g1IG_13yara_x_macros5error6FooterEEB1c_.exit180
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsgPZq453g1IG_13yara_x_macros5error5LabelENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgPZq453g1IG_13yara_x_macros5error5LabelEEB1c_.exit unwind label %bb.wx

bb.ww:                                            ; preds = %bb.wu
  %i.mc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

.body182:                                         ; preds = %bb.aae, %bb.wx, %.body
  %.sroa.12.5 = phi i8 [ %.sroa.12.4, %.body ], [ %.sroa.12.0.ph519, %bb.wx ], [ %.sroa.12.0.ph484, %bb.aae ] ; 2 uses
  %.sroa.9.5 = phi i64 [ %.sroa.9.4, %.body ], [ %.sroa.9.0.ph468, %bb.wx ], [ %.sroa.9.0.ph433, %bb.aae ] ; 2 uses
  %.sroa.0.5 = phi ptr [ %.sroa.0.4, %.body ], [ %.sroa.0.0.ph417, %bb.wx ], [ %.sroa.0.0.ph382, %bb.aae ] ; 2 uses
  %.pn113.pn.pn.pn = phi { ptr, i32 } [ %.pn113.pn.pn, %.body ], [ %i.mf, %bb.wx ], [ %i.pk, %bb.aae ] ; 3 uses
  %.sroa.030.7 = phi i8 [ %.sroa.030.5, %.body ], [ %.sroa.030.8, %bb.wx ], [ 1, %bb.aae ] ; 2 uses
  %i.md = icmp ne i8 %.sroa.12.5, -1
  %i.me = trunc nuw i8 %.sroa.030.7 to i1
  %or.cond3 = select i1 %i.md, i1 %i.me, i1 false
  br i1 %or.cond3, label %bb.aaq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs4G72gg52fHF_11proc_macro25IdentECsgPZq453g1IG_13yara_x_macros.exit230

bb.wx:                                            ; preds = %bb.aaf, %bb.wv
  %.sroa.12.0.ph519 = phi i8 [ %.sroa.12.0.ph484, %bb.aaf ], [ %.sroa.12.0.ph.lcssa, %bb.wv ]
  %.sroa.9.0.ph468 = phi i64 [ %.sroa.9.0.ph433, %bb.aaf ], [ %.sroa.9.0.ph.lcssa, %bb.wv ]
  %.sroa.0.0.ph417 = phi ptr [ %.sroa.0.0.ph382, %bb.aaf ], [ %.sroa.0.0.ph.lcssa, %bb.wv ]
  %.sroa.030.8 = phi i8 [ 1, %bb.aaf ], [ 0, %bb.wv ]
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %.body182

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgPZq453g1IG_13yara_x_macros5error5LabelEEB1c_.exit: ; preds = %bb.wv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  %.val127 = load ptr, ptr %i.fd, align 8, !align !12, !noundef !13 ; 2 uses
  %i.mg = icmp eq ptr %.val127, null
  br i1 %i.mg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn3lit6LitStrEECsgPZq453g1IG_13yara_x_macros.exit, label %bb.wy

bb.wy:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgPZq453g1IG_13yara_x_macros5error5LabelEEB1c_.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsbiVIOMxcYgN_3syn3lit7LitReprEECsgPZq453g1IG_13yara_x_macros(ptr nonnull %.val127)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn3lit6LitStrEECsgPZq453g1IG_13yara_x_macros.exit unwind label %bb.xa

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn3lit6LitStrEECsgPZq453g1IG_13yara_x_macros.exit219: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs4G72gg52fHF_11proc_macro25IdentECsgPZq453g1IG_13yara_x_macros.exit230, %bb.aak, %bb.xa
  %.pn113.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mi, %bb.xa ], [ %.pn113.pn.pn.pn.pn, %bb.aak ], [ %.pn113.pn.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs4G72gg52fHF_11proc_macro25IdentECsgPZq453g1IG_13yara_x_macros.exit230 ] ; 2 uses
  %.sroa.034.6 = phi i8 [ %.sroa.034.7, %bb.xa ], [ %.sroa.034.12, %bb.aak ], [ %.sroa.034.12, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs4G72gg52fHF_11proc_macro25IdentECsgPZq453g1IG_13yara_x_macros.exit230 ] ; 2 uses
  %.val126 = load ptr, ptr %i.fe, align 8, !align !12, !noundef !13 ; 2 uses
  %i.mh = icmp eq ptr %.val126, null
  br i1 %i.mh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn3lit6LitStrEECsgPZq453g1IG_13yara_x_macros.exit186, label %bb.wz

bb.wz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn3lit6LitStrEECsgPZq453g1IG_13yara_x_macros.exit219
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsbiVIOMxcYgN_3syn3lit7LitReprEECsgPZq453g1IG_13yara_x_macros(ptr nonnull %.val126)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn3lit6LitStrEECsgPZq453g1IG_13yara_x_macros.exit186 unwind label %bb.bp

bb.xa:                                            ; preds = %bb.aah, %bb.wy
  %.sroa.034.7 = phi i8 [ 1, %bb.aah ], [ 0, %bb.wy ]
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn3lit6LitStrEECsgPZq453g1IG_13yara_x_macros.exit219

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn3lit6LitStrEECsgPZq453g1IG_13yara_x_macros.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgPZq453g1IG_13yara_x_macros5error5LabelEEB1c_.exit, %bb.wy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd)
  %.val125 = load ptr, ptr %i.fe, align 8, !align !12, !noundef !13 ; 2 uses
  %i.mj = icmp eq ptr %.val125, null
  br i1 %i.mj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn3lit6LitStrEECsgPZq453g1IG_13yara_x_macros.exit188, label %bb.xb

bb.xb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn3lit6LitStrEECsgPZq453g1IG_13yara_x_macros.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCsbiVIOMxcYgN_3syn3lit7LitReprEECsgPZq453g1IG_13yara_x_macros(ptr nonnull %.val125)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn3lit6LitStrEECsgPZq453g1IG_13yara_x_macros.exit188 unwind label %bb.xd

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn3lit6LitStrEECsgPZq453g1IG_13yara_x_macros.exit186: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn3lit6LitStrEECsgPZq453g1IG_13yara_x_macros.exit219, %bb.wz, %bb.xd
  %.pn113.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mm, %bb.xd ], [ %.pn113.pn.pn.pn.pn.pn, %bb.wz ], [ %.pn113.pn.pn.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn3lit6LitStrEECsgPZq453g1IG_13yara_x_macros.exit219 ] ; 2 uses
  %.sroa.034.8 = phi i8 [ %.sroa.034.9, %bb.xd ], [ %.sroa.034.6, %bb.wz ], [ %.sroa.034.6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn3lit6LitStrEECsgPZq453g1IG_13yara_x_macros.exit219 ] ; 2 uses
  %i.mk = load i64, ptr %i.ff, align 8, !range !1384, !alias.scope !1402, !noundef !13
  %i.ml = icmp eq i64 %i.mk, -2
  br i1 %i.ml, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro211TokenStreamEECsgPZq453g1IG_13yara_x_macros.exit.thread, label %bb.xc

bb.xc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn3lit6LitStrEECsgPZq453g1IG_13yara_x_macros.exit186
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs4G72gg52fHF_11proc_macro211TokenStreamECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ff)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro211TokenStreamEECsgPZq453g1IG_13yara_x_macros.exit.thread unwind label %bb.bp

bb.xd:                                            ; preds = %bb.aal, %bb.xb
  %.sroa.034.9 = phi i8 [ 1, %bb.aal ], [ 0, %bb.xb ]
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn3lit6LitStrEECsgPZq453g1IG_13yara_x_macros.exit186

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn3lit6LitStrEECsgPZq453g1IG_13yara_x_macros.exit188: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn3lit6LitStrEECsgPZq453g1IG_13yara_x_macros.exit, %bb.xb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  %i.mn = load i64, ptr %i.ff, align 8, !range !1384, !alias.scope !1403, !noundef !13
  %i.mo = icmp eq i64 %i.mn, -2
  br i1 %i.mo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro211TokenStreamEECsgPZq453g1IG_13yara_x_macros.exit191, label %bb.xe

bb.xe:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn3lit6LitStrEECsgPZq453g1IG_13yara_x_macros.exit188
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs4G72gg52fHF_11proc_macro211TokenStreamECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ff)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro211TokenStreamEECsgPZq453g1IG_13yara_x_macros.exit191 unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro211TokenStreamEECsgPZq453g1IG_13yara_x_macros.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro211TokenStreamEECsgPZq453g1IG_13yara_x_macros.exit: ; preds = %bb.xe, %bb.aam
  %.sroa.034.11.ph = phi i8 [ 0, %bb.xe ], [ 1, %bb.aam ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro211TokenStreamEECsgPZq453g1IG_13yara_x_macros.exit.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro211TokenStreamEECsgPZq453g1IG_13yara_x_macros.exit191: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn3lit6LitStrEECsgPZq453g1IG_13yara_x_macros.exit188, %bb.xe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff)
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val134 = load i32, ptr %i.mp, align 8, !range !14, !noundef !13 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.val135 = load ptr, ptr %i.mq, align 8         ; 4 uses
  %i.mr = icmp ne i32 %.val134, 3
  call void @llvm.assume(i1 %i.mr)
  %i.ms = icmp samesign ult i32 %.val134, 2
  br i1 %i.ms, label %bb.xf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbiVIOMxcYgN_3syn11restriction10VisibilityECsgPZq453g1IG_13yara_x_macros.exit

bb.xf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro211TokenStreamEECsgPZq453g1IG_13yara_x_macros.exit191
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val135) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbiVIOMxcYgN_3syn4path4PathECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val135)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbiVIOMxcYgN_3syn11restriction13VisRestrictedECsgPZq453g1IG_13yara_x_macros.exit.i unwind label %.body192

.body192:                                         ; preds = %bb.xf
  %i.mt = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val135, i64 noundef 48, i64 noundef 8) #11
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbiVIOMxcYgN_3syn8generics8GenericsECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef align 8 dereferenceable(88) %i.gg) #13
          to label %.body195 unwind label %bb.bp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbiVIOMxcYgN_3syn11restriction13VisRestrictedECsgPZq453g1IG_13yara_x_macros.exit.i: ; preds = %bb.xf
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val135, i64 noundef 48, i64 noundef 8) #11
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbiVIOMxcYgN_3syn11restriction10VisibilityECsgPZq453g1IG_13yara_x_macros.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbiVIOMxcYgN_3syn11restriction10VisibilityECsgPZq453g1IG_13yara_x_macros.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbiVIOMxcYgN_3syn11restriction13VisRestrictedECsgPZq453g1IG_13yara_x_macros.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro211TokenStreamEECsgPZq453g1IG_13yara_x_macros.exit191
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbiVIOMxcYgN_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.gg)
          to label %bb.xh unwind label %bb.xg

bb.xg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbiVIOMxcYgN_3syn11restriction10VisibilityECsgPZq453g1IG_13yara_x_macros.exit
  %i.mu = landingpad { ptr, i32 }
          cleanup
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn8generics11WhereClauseEECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef align 8 dereferenceable(40) %i.mv) #13
          to label %.body195 unwind label %bb.xi

bb.xh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbiVIOMxcYgN_3syn11restriction10VisibilityECsgPZq453g1IG_13yara_x_macros.exit
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbiVIOMxcYgN_3syn8generics11WhereClauseEECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef align 8 dereferenceable(40) %i.mw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbiVIOMxcYgN_3syn8generics8GenericsECsgPZq453g1IG_13yara_x_macros.exit240 unwind label %bb.xj

bb.xi:                                            ; preds = %bb.xg
  %i.mx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

.body195:                                         ; preds = %bb.xj, %bb.xg, %.body192
  %.pn101 = phi { ptr, i32 } [ %i.mt, %.body192 ], [ %i.my, %bb.xj ], [ %i.mu, %bb.xg ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbiVIOMxcYgN_3syn6derive4DataECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef align 8 dereferenceable(72) %1) #13
          to label %bb.xk unwind label %bb.bp

bb.xj:                                            ; preds = %bb.xh
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %.body195

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbiVIOMxcYgN_3syn8generics8GenericsECsgPZq453g1IG_13yara_x_macros.exit240: ; preds = %bb.xh, %bb.abe
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbiVIOMxcYgN_3syn6derive4DataECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef align 8 dereferenceable(72) %1)
  ret void

bb.xk:                                            ; preds = %bb.abl, %.body238, %.body195
  %.pn113.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn113.pn.pn.pn.pn.pn.pn.pn315, %bb.abl ], [ %.pn111, %.body238 ], [ %.pn101, %.body195 ]
  resume { ptr, i32 } %.pn113.pn.pn.pn.pn.pn.pn.pn.pn

.body201:                                         ; preds = %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp, %bb.zt, %bb.zm, %bb.ze, %bb.yz, %bb.yw, %bb.yr
  %.pn104 = phi { ptr, i32 } [ %i.ow, %bb.zt ], [ %i.nv, %bb.yr ], [ %i.oc, %bb.ze ], [ %i.nz, %bb.yz ], [ %i.ny, %bb.yw ], [ %i.ol, %bb.zm ], [ %lpad.loopexit.split-lp958, %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbiVIOMxcYgN_3syn4attr9AttributeECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef align 8 dereferenceable(248) %i.ez) #13
          to label %.loopexit356 unwind label %bb.bp

.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.xl, %bb.yx, %bb.yi, %bb.yf, %bb.ye, %bb.yd, %bb.yb, %bb.ya, %bb.xz, %bb.xx, %bb.xw, %bb.xv, %bb.xt, %bb.xs, %bb.xr, %bb.xp, %bb.xn, %bb.yh, %bb.yj, %bb.yk, %bb.yl, %bb.yn, %bb.yo
  %lpad.loopexit.split-lp958 = landingpad { ptr, i32 }
          cleanup
  br label %.body201

bb.xl:                                            ; preds = %bb.d
  %i.mz = invoke noundef zeroext i1 @_RINvMs_NtCsbiVIOMxcYgN_3syn4pathNtB5_4Path8is_identeECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 3)
          to label %bb.xm unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.xm:                                            ; preds = %bb.xl
  br i1 %i.mz, label %bb.xo, label %bb.xn

bb.xn:                                            ; preds = %bb.xm
  %i.na = invoke noundef nonnull align 8 ptr @_RNvMNtCsbiVIOMxcYgN_3syn4attrNtB2_9Attribute4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.ez)
          to label %bb.xp unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.xo:                                            ; preds = %bb.xm
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbiVIOMxcYgN_3syn4attr9AttributeECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef align 8 dereferenceable(248) %i.ez)
          to label %bb.aap unwind label %.loopexit.split-lp357.loopexit.split-lp

bb.xp:                                            ; preds = %bb.xn
  %i.nb = invoke noundef zeroext i1 @_RINvMs_NtCsbiVIOMxcYgN_3syn4pathNtB5_4Path8is_identeECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.na, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 15)
          to label %bb.xq unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.xq:                                            ; preds = %bb.xp
  br i1 %i.nb, label %bb.xs, label %bb.xr

bb.xr:                                            ; preds = %bb.xq
  %i.nc = invoke noundef nonnull align 8 ptr @_RNvMNtCsbiVIOMxcYgN_3syn4attrNtB2_9Attribute4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.ez)
          to label %bb.xt unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.xs:                                            ; preds = %bb.xq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey)
  invoke void @_RINvMNtCsbiVIOMxcYgN_3syn4attrNtB3_9Attribute15parse_args_withNvYNtCs4G72gg52fHF_11proc_macro25IdentNtNtB5_5parse5Parse5parseECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ey, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.ez)
          to label %bb.zy unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.xt:                                            ; preds = %bb.xr
  %i.nd = invoke noundef zeroext i1 @_RINvMs_NtCsbiVIOMxcYgN_3syn4pathNtB5_4Path8is_identeECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 5)
          to label %bb.xu unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.xu:                                            ; preds = %bb.xt
  br i1 %i.nd, label %bb.xw, label %bb.xv

bb.xv:                                            ; preds = %bb.xu
  %i.ne = invoke noundef nonnull align 8 ptr @_RNvMNtCsbiVIOMxcYgN_3syn4attrNtB2_9Attribute4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.ez)
          to label %bb.xx unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.xw:                                            ; preds = %bb.xu
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex)
  invoke void @_RINvMNtCsbiVIOMxcYgN_3syn4attrNtB3_9Attribute15parse_args_withNvYNtNtCsgPZq453g1IG_13yara_x_macros5error5LabelNtNtB5_5parse5Parse5parseEB15_(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %i.ex, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.ez)
          to label %bb.zp unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.xx:                                            ; preds = %bb.xv
  %i.nf = invoke noundef zeroext i1 @_RINvMs_NtCsbiVIOMxcYgN_3syn4pathNtB5_4Path8is_identeECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ne, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 6)
          to label %bb.xy unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.xy:                                            ; preds = %bb.xx
  br i1 %i.nf, label %bb.ya, label %bb.xz

bb.xz:                                            ; preds = %bb.xy
  %i.ng = invoke noundef nonnull align 8 ptr @_RNvMNtCsbiVIOMxcYgN_3syn4attrNtB2_9Attribute4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.ez)
          to label %bb.yb unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.ya:                                            ; preds = %bb.xy
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  invoke void @_RINvMNtCsbiVIOMxcYgN_3syn4attrNtB3_9Attribute15parse_args_withNvYNtNtCsgPZq453g1IG_13yara_x_macros5error6FooterNtNtB5_5parse5Parse5parseEB15_(ptr noalias nofree noundef nonnull sret([336 x i8]) align 8 captures(address) dereferenceable(336) %i.ev, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.ez)
          to label %bb.zi unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.yb:                                            ; preds = %bb.xz
  %i.nh = invoke noundef zeroext i1 @_RINvMs_NtCsbiVIOMxcYgN_3syn4pathNtB5_4Path8is_identeECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ng, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 5)
          to label %bb.yc unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.yc:                                            ; preds = %bb.yb
  br i1 %i.nh, label %bb.ye, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.ni = invoke noundef nonnull align 8 ptr @_RNvMNtCsbiVIOMxcYgN_3syn4attrNtB2_9Attribute4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.ez)
          to label %bb.yf unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.ye:                                            ; preds = %bb.yc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  invoke void @_RNvMCs4G72gg52fHF_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.es)
          to label %bb.yy unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.yf:                                            ; preds = %bb.yd
  %i.nj = invoke noundef zeroext i1 @_RINvMs_NtCsbiVIOMxcYgN_3syn4pathNtB5_4Path8is_identeECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ni, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 7)
          to label %bb.yg unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.yg:                                            ; preds = %bb.yf
  br i1 %i.nj, label %bb.yi, label %bb.yh

bb.yh:                                            ; preds = %bb.yg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep)
  %i.nk = invoke noundef nonnull align 8 ptr @_RNvMNtCsbiVIOMxcYgN_3syn4attrNtB2_9Attribute4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.ez)
          to label %bb.yj unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.yi:                                            ; preds = %bb.yg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  invoke void @_RNvMCs4G72gg52fHF_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.eq)
          to label %bb.yq unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.yj:                                            ; preds = %bb.yh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RNvYRNtNtCsbiVIOMxcYgN_3syn4path4PathNtNtCsiaNujzQNtSN_5quote9to_tokens8ToTokens17into_token_streamCsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nk)
          to label %bb.yk unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.yk:                                            ; preds = %bb.yj
  %i.nl = invoke noundef i32 @_RNvNtCsiaNujzQNtSN_5quote7spanned10join_spans(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa)
          to label %bb.yl unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.yl:                                            ; preds = %bb.yk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, i64 noundef 20, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ym unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.ym:                                            ; preds = %bb.yl
  %i.nm = load i64, ptr %i.z, align 8, !range !24, !noundef !13
  %i.nn = trunc nuw i64 %i.nm to i1
  %i.no = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.np = load i64, ptr %i.no, align 8, !range !28, !noundef !13 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  br i1 %i.nn, label %bb.yn, label %bb.yo, !prof !29

bb.yn:                                            ; preds = %bb.ym
  %i.nr = load i64, ptr %i.nq, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.np, i64 %i.nr) #15
          to label %bb.q unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.yo:                                            ; preds = %bb.ym
  %i.ns = load ptr, ptr %i.nq, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.nt = icmp samesign ugt i64 %i.np, 19
  call void @llvm.assume(i1 %i.nt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ns, ptr noundef nonnull align 1 dereferenceable(20) @89, i64 20, i1 false)
  store i64 %i.np, ptr %i.eo, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %i.ns, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i64 20, ptr %.sroa.646.0..sroa_idx, align 8
  invoke void @_RINvMNtCsbiVIOMxcYgN_3syn5errorNtB3_5Error3newNtNtCsexYYUdYSQU6_5alloc6string6StringECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ep, i32 noundef %i.nl, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.eo)
          to label %bb.yp unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.yp:                                            ; preds = %bb.yo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nu, ptr noundef nonnull align 8 dereferenceable(24) %i.ep, i64 24, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep)
  br label %bb.zx

bb.yq:                                            ; preds = %bb.yi
  invoke void @_RNvNtCsiaNujzQNtSN_5quote9___private10push_ident(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.eq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 5)
          to label %bb.ys unwind label %bb.yr

bb.yr:                                            ; preds = %bb.yt, %bb.ys, %bb.yq
  %i.nv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs4G72gg52fHF_11proc_macro211TokenStreamECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.eq) #13
          to label %.body201 unwind label %bb.bp

bb.ys:                                            ; preds = %bb.yq
  invoke void @_RNvNtCsiaNujzQNtSN_5quote9___private11push_colon2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.eq)
          to label %bb.yt unwind label %bb.yr

bb.yt:                                            ; preds = %bb.ys
  invoke void @_RNvNtCsiaNujzQNtSN_5quote9___private10push_ident(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.eq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 7)
          to label %bb.yu unwind label %bb.yr

bb.yu:                                            ; preds = %bb.yt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.er, ptr noundef nonnull align 8 dereferenceable(32) %i.eq, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  %i.nw = load i64, ptr %i.ff, align 8, !range !1384, !alias.scope !1404, !noundef !13
  %i.nx = icmp eq i64 %i.nw, -2
  br i1 %i.nx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro211TokenStreamEECsgPZq453g1IG_13yara_x_macros.exit198, label %bb.yv

bb.yv:                                            ; preds = %bb.yu
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs4G72gg52fHF_11proc_macro211TokenStreamECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ff)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro211TokenStreamEECsgPZq453g1IG_13yara_x_macros.exit198 unwind label %bb.yw

bb.yw:                                            ; preds = %bb.yv
  %i.ny = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, ptr noundef nonnull align 8 dereferenceable(32) %i.er, i64 32, i1 false)
  br label %.body201

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro211TokenStreamEECsgPZq453g1IG_13yara_x_macros.exit198: ; preds = %bb.yu, %bb.yv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, ptr noundef nonnull align 8 dereferenceable(32) %i.er, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  br label %bb.yx

bb.yx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro211TokenStreamEECsgPZq453g1IG_13yara_x_macros.exit200, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro211TokenStreamEECsgPZq453g1IG_13yara_x_macros.exit198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en)
  invoke void @_RINvMNtCsbiVIOMxcYgN_3syn4attrNtB3_9Attribute15parse_args_withNCINvNtB5_4meta6parserNCNvNtCsgPZq453g1IG_13yara_x_macros5error23impl_error_struct_macro0E0EB1q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.en, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.ez, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fd)
          to label %bb.zf unwind label %.loopexit.split-lp352.loopexit.split-lp.loopexit.split-lp

bb.yy:                                            ; preds = %bb.ye
  invoke void @_RNvNtCsiaNujzQNtSN_5quote9___private10push_ident(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.es, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 5)
          to label %bb.za unwind label %bb.yz

bb.yz:                                            ; preds = %bb.zb, %bb.za, %bb.yy
  %i.nz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs4G72gg52fHF_11proc_macro211TokenStreamECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.es) #13
          to label %.body201 unwind label %bb.bp

bb.za:                                            ; preds = %bb.yy
  invoke void @_RNvNtCsiaNujzQNtSN_5quote9___private11push_colon2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.es)
          to label %bb.zb unwind label %bb.yz

bb.zb:                                            ; preds = %bb.za
  invoke void @_RNvNtCsiaNujzQNtSN_5quote9___private10push_ident(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.es, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 5)
          to label %bb.zc unwind label %bb.yz

bb.zc:                                            ; preds = %bb.zb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.et, ptr noundef nonnull align 8 dereferenceable(32) %i.es, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  %i.oa = load i64, ptr %i.ff, align 8, !range !1384, !alias.scope !1405, !noundef !13
  %i.ob = icmp eq i64 %i.oa, -2
  br i1 %i.ob, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro211TokenStreamEECsgPZq453g1IG_13yara_x_macros.exit200, label %bb.zd

bb.zd:                                            ; preds = %bb.zc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs4G72gg52fHF_11proc_macro211TokenStreamECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ff)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro211TokenStreamEECsgPZq453g1IG_13yara_x_macros.exit200 unwind label %bb.ze

bb.ze:                                            ; preds = %bb.zd
  %i.oc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, ptr noundef nonnull align 8 dereferenceable(32) %i.et, i64 32, i1 false)
  br label %.body201

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro211TokenStreamEECsgPZq453g1IG_13yara_x_macros.exit200: ; preds = %bb.zc, %bb.zd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, ptr noundef nonnull align 8 dereferenceable(32) %i.et, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  br label %bb.yx

bb.zf:                                            ; preds = %bb.yx
  %i.od = load i64, ptr %i.en, align 8, !range !20, !noundef !13
  %.not103 = icmp eq i64 %i.od, -1
  br i1 %.not103, label %bb.zh, label %bb.zg

bb.zg:                                            ; preds = %bb.zf
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oe, ptr noundef nonnull align 8 dereferenceable(24) %i.en, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  store i64 -2, ptr %0, align 8
  br label %bb.zx

bb.zh:                                            ; preds = %bb.zf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  br label %bb.zw

bb.zi:                                            ; preds = %bb.ya
  %i.of = load i64, ptr %i.ev, align 8, !range !16, !noundef !13 ; 2 uses
  %i.og = icmp eq i64 %i.of, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.442.0..sroa_idx, i64 24, i1 false)
  br i1 %i.og, label %bb.zj, label %bb.zk

bb.zj:                                            ; preds = %bb.zi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oh, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613, i64 24, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  br label %bb.zx

bb.zk:                                            ; preds = %bb.zi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.815.0..sroa_idx16, ptr noundef nonnull align 8 dereferenceable(304) %.sroa.543.0..sroa_idx, i64 304, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  store i64 %i.of, ptr %i.eu, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613.0..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613, i64 24, i1 false)
  %i.oi = load i64, ptr %i.fn, align 8, !alias.scope !1406, !noundef !13 ; 3 uses
  %i.oj = load i64, ptr %i.fb, align 8, !range !1378, !alias.scope !1406, !noundef !13
  %i.ok = icmp eq i64 %i.oi, %i.oj
  br i1 %i.ok, label %bb.zl, label %bb.zo

bb.zl:                                            ; preds = %bb.zk
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsgPZq453g1IG_13yara_x_macros5error6FooterE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fb)
          to label %bb.zo unwind label %bb.zm, !noalias !1407

bb.zm:                                            ; preds = %bb.zl
  %i.ol = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgPZq453g1IG_13yara_x_macros5error6FooterEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(336) %i.eu) #13
          to label %.body201 unwind label %bb.zn

bb.zn:                                            ; preds = %bb.zm
  %i.om = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.zo:                                            ; preds = %bb.zl, %bb.zk
  %i.on = load ptr, ptr %i.fm, align 8, !alias.scope !1406, !nonnull !13, !noundef !13
  %i.oo = getelementptr inbounds nuw [336 x i8], ptr %i.on, i64 %i.oi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.oo, ptr noundef nonnull align 8 dereferenceable(336) %i.eu, i64 336, i1 false)
  %i.op = add i64 %i.oi, 1
  store i64 %i.op, ptr %i.fn, align 8, !alias.scope !1406
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  br label %bb.zw

bb.zp:                                            ; preds = %bb.xw
  %i.oq = load i64, ptr %i.ex, align 8, !range !1408, !noundef !13 ; 2 uses
  %i.or = icmp eq i64 %i.oq, -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.439.0..sroa_idx, i64 24, i1 false)
  br i1 %i.or, label %bb.zq, label %bb.zr

bb.zq:                                            ; preds = %bb.zp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex)
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.os, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68, i64 24, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  br label %bb.zx

bb.zr:                                            ; preds = %bb.zp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.8.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.540.0..sroa_idx, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex)
  store i64 %i.oq, ptr %i.ew, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68, i64 24, i1 false)
  %i.ot = load i64, ptr %i.fl, align 8, !alias.scope !1409, !noundef !13 ; 3 uses
  %i.ou = load i64, ptr %i.fc, align 8, !range !1378, !alias.scope !1409, !noundef !13
  %i.ov = icmp eq i64 %i.ot, %i.ou
  br i1 %i.ov, label %bb.zs, label %bb.zv

bb.zs:                                            ; preds = %bb.zr
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsgPZq453g1IG_13yara_x_macros5error5LabelE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fc)
          to label %bb.zv unwind label %bb.zt, !noalias !1410

bb.zt:                                            ; preds = %bb.zs
  %i.ow = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgPZq453g1IG_13yara_x_macros5error5LabelEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.ew) #13
          to label %.body201 unwind label %bb.zu

bb.zu:                                            ; preds = %bb.zt
  %i.ox = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.zv:                                            ; preds = %bb.zs, %bb.zr
  %i.oy = load ptr, ptr %i.fk, align 8, !alias.scope !1409, !nonnull !13, !noundef !13
  %i.oz = getelementptr inbounds nuw [200 x i8], ptr %i.oy, i64 %i.ot
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.oz, ptr noundef nonnull align 8 dereferenceable(200) %i.ew, i64 200, i1 false)
  %i.pa = add i64 %i.ot, 1
  store i64 %i.pa, ptr %i.fl, align 8, !alias.scope !1409
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  br label %bb.zw

bb.zw:                                            ; preds = %bb.zv, %bb.zo, %bb.zh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro25IdentEECsgPZq453g1IG_13yara_x_macros.exit
  %.sroa.12.6 = phi i8 [ %.sroa.5304.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro25IdentEECsgPZq453g1IG_13yara_x_macros.exit ], [ %.sroa.12.0.ph528, %bb.zv ], [ %.sroa.12.0.ph528, %bb.zo ], [ %.sroa.12.0.ph528, %bb.zh ] ; 3 uses
  %.sroa.9.6 = phi i64 [ %.sroa.4303.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro25IdentEECsgPZq453g1IG_13yara_x_macros.exit ], [ %.sroa.9.0.ph529, %bb.zv ], [ %.sroa.9.0.ph529, %bb.zo ], [ %.sroa.9.0.ph529, %bb.zh ] ; 3 uses
  %.sroa.0.6 = phi ptr [ %.sroa.0302.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro25IdentEECsgPZq453g1IG_13yara_x_macros.exit ], [ %.sroa.0.0.ph530, %bb.zv ], [ %.sroa.0.0.ph530, %bb.zo ], [ %.sroa.0.0.ph530, %bb.zh ] ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbiVIOMxcYgN_3syn4attr9AttributeECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef align 8 dereferenceable(248) %i.ez)
          to label %.outer unwind label %.loopexit356.loopexit.split-lp

bb.zx:                                            ; preds = %bb.zq, %bb.zj, %bb.zg, %bb.yp, %bb.zz
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbiVIOMxcYgN_3syn4attr9AttributeECsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef align 8 dereferenceable(248) %i.ez)
          to label %bb.aad unwind label %.loopexit.split-lp357.loopexit.split-lp

bb.zy:                                            ; preds = %bb.xs
  %i.pb = load i64, ptr %i.ey, align 8, !range !24, !noundef !13
  %i.pc = trunc nuw i64 %i.pb to i1
  %.sroa.0302.0.copyload = load ptr, ptr %i.fx, align 8 ; 2 uses
  %.sroa.4303.0.copyload = load i64, ptr %.sroa.4295.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5304.0.copyload = load i8, ptr %.sroa.5296.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.55.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6297.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey)
  br i1 %i.pc, label %bb.zz, label %bb.aaa

bb.zz:                                            ; preds = %bb.zy
  %.sroa.6309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6309.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.55.sroa.9, i64 7, i1 false)
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0302.0.copyload, ptr %i.pd, align 8
  %.sroa.4307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4303.0.copyload, ptr %.sroa.4307.0..sroa_idx, align 8
  %.sroa.5308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.5304.0.copyload, ptr %.sroa.5308.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55.sroa.9)
  br label %bb.zx

bb.aaa:                                           ; preds = %bb.zy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.55.sroa.9, i64 7, i1 false)
  %i.pe = icmp eq i8 %.sroa.12.0.ph528, -1
  br i1 %i.pe, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro25IdentEECsgPZq453g1IG_13yara_x_macros.exit, label %bb.aab

bb.aab:                                           ; preds = %bb.aaa
  %i.pf = icmp eq i8 %.sroa.12.0.ph528, 2
  %i.pg = icmp eq i64 %.sroa.9.0.ph529, 0
  %or.cond330 = select i1 %i.pf, i1 true, i1 %i.pg
  br i1 %or.cond330, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro25IdentEECsgPZq453g1IG_13yara_x_macros.exit, label %bb.aac

bb.aac:                                           ; preds = %bb.aab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph530) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.ph530, i64 noundef range(i64 1, 0) %.sroa.9.0.ph529, i64 noundef 1) #11, !noalias !1411
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro25IdentEECsgPZq453g1IG_13yara_x_macros.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4G72gg52fHF_11proc_macro25IdentEECsgPZq453g1IG_13yara_x_macros.exit: ; preds = %bb.aac, %bb.aab, %bb.aaa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.19, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55.sroa.9)
  br label %bb.zw

.outer:                                           ; preds = %bb.zw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9260)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9260)
  %i.ph = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !1412, !nonnull !13, !noundef !13
  %i.pi = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1412, !nonnull !13, !noundef !13 ; 2 uses
  %i.pj = icmp eq ptr %i.pi, %i.ph
  br i1 %i.pj, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgPZq453g1IG_13yara_x_macros.exit.lr.ph

bb.aad:                                           ; preds = %bb.zx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9260)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgPZq453g1IG_13yara_x_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeEECsgPZq453g1IG_13yara_x_macros.exit206 unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsbiVIOMxcYgN_3syn4attr9AttributeEECsgPZq453g1IG_13yara_x_macros.exit206: ; preds = %bb.aad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa)
  br label %bb.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgPZq453g1IG_13yara_x_macros5error6FooterEEB1c_.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsgPZq453g1IG_13yara_x_macros5error5LabelENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fc)
          to label %bb.aaf unwind label %bb.aae
end_hunk_1
