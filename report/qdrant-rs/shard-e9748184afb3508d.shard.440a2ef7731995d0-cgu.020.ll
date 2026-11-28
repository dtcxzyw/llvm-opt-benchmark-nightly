Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/shard-e9748184afb3508d.shard.440a2ef7731995d0-cgu.020?download=true
inline.NumInlined: 462
inline.NumDeleted: 138
begin_hunk_0_@_RNvXsk_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula15FormulaInternalINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7FormulaE8try_from:bb.a
  unreachable

.thread:                                          ; preds = %bb.p, %bb.i
  %.pn53 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.p ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %.pn53

bb.p:                                             ; preds = %bb.b, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %.thread unwind label %bb.o
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [64 x i8], align 8                ; 4 uses
  %i.n = alloca [64 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [64 x i8], align 8                ; 4 uses
  %i.q = alloca [64 x i8], align 8                ; 5 uses
  %i.r = alloca [64 x i8], align 8                ; 4 uses
  %i.s = alloca [64 x i8], align 8                ; 5 uses
  %i.t = alloca [64 x i8], align 8                ; 4 uses
  %i.u = alloca [64 x i8], align 8                ; 5 uses
  %i.v = alloca [64 x i8], align 8                ; 4 uses
  %i.w = alloca [64 x i8], align 8                ; 5 uses
  %i.x = alloca [64 x i8], align 8                ; 4 uses
  %i.y = alloca [64 x i8], align 8                ; 5 uses
  %i.z = alloca [64 x i8], align 8                ; 4 uses
  %i.aa = alloca [64 x i8], align 8               ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [64 x i8], align 8               ; 4 uses
  %i.ad = alloca [64 x i8], align 8               ; 5 uses
  %i.ae = alloca [64 x i8], align 8               ; 4 uses
  %i.af = alloca [64 x i8], align 8               ; 5 uses
  %i.ag = alloca [64 x i8], align 8               ; 4 uses
  %i.ah = alloca [64 x i8], align 8               ; 5 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [64 x i8], align 8               ; 4 uses
  %i.ak = alloca [64 x i8], align 8               ; 5 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = load i64, ptr %1, align 8, !range !13, !noundef !6 ; 3 uses
  %i.ao = icmp ne i64 %i.an, -9223372036854775805
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = xor i64 %i.an, -9223372036854775808
  %i.aq = icmp slt i64 %i.an, 0
  %i.ar = select i1 %i.aq, i64 %i.ap, i64 3
  switch i64 %i.ar, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load float, ptr %i.as, align 8, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.at, ptr %i.au, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.v

bb.e:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !6, !align !8, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.az, align 8
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = load <2 x double>, ptr %i.ba, align 8
  store <2 x double> %i.bc, ptr %i.bb, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.v

bb.g:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  store i64 -9223372036854775804, ptr %0, align 8
  br label %bb.v

bb.h:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef nonnull align 8 dereferenceable(48) %i.bf, i64 48, i1 false)
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.v

bb.i:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.bk = load i64, ptr %i.bh, align 8, !range !16, !noundef !6
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.bn = icmp ult i64 %i.bm, 144115188075855872
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw [64 x i8], ptr %i.bj, i64 %i.bm
  store ptr %i.bj, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.bk, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.bo, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionENvYNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalINtNtB1f_7convert4FromB2l_E4fromEB3b_EB3h_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bp, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  store i64 -9223372036854775802, ptr %0, align 8
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.bt = load i64, ptr %i.bq, align 8, !range !16, !noundef !6
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.bw = icmp ult i64 %i.bv, 144115188075855872
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw [64 x i8], ptr %i.bs, i64 %i.bv
  store ptr %i.bs, ptr %i.al, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.bs, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.bt, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.bx, ptr %.sroa.64.0..sroa_idx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionENvYNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalINtNtB1f_7convert4FromB2l_E4fromEB3b_EB3h_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.by, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  store i64 -9223372036854775801, ptr %0, align 8
  br label %bb.v

bb.k:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %i.ca, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.aj)
          to label %bb.x unwind label %bb.w

bb.l:                                             ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %i.cc, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.p)
          to label %bb.ae unwind label %bb.ad

bb.m:                                             ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !6, !align !8, !noundef !6 ; 5 uses
  %i.ci = load i32, ptr %i.cd, align 8, !range !17, !noundef !6
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ck = load float, ptr %i.cj, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ag, ptr noundef nonnull align 8 dereferenceable(64) %i.cf, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.ag)
          to label %bb.ak unwind label %bb.aj

bb.n:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.cm, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.ac)
          to label %bb.aw unwind label %bb.av

bb.o:                                             ; preds = %bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !6, !align !8, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.co, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.z)
          to label %bb.bc unwind label %bb.bb

bb.p:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %i.cs, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.v)
          to label %bb.bp unwind label %bb.bo

bb.q:                                             ; preds = %bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %i.cu, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.t)
          to label %bb.bv unwind label %bb.bu

bb.r:                                             ; preds = %bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %i.cw, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.r)
          to label %bb.cb unwind label %bb.ca

bb.s:                                             ; preds = %bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !align !8, !noundef !6 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dd = load i32, ptr %i.dc, align 8, !range !17, !noundef !6
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.df = load float, ptr %i.de, align 4
  %i.dg = load i32, ptr %i.cx, align 8, !range !17, !noundef !6
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.di = load float, ptr %i.dh, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.cz, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.m)
          to label %bb.ch unwind label %bb.cg

bb.t:                                             ; preds = %bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !align !8, !noundef !6 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dp = load i32, ptr %i.do, align 8, !range !17, !noundef !6
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dr = load float, ptr %i.dq, align 4
  %i.ds = load i32, ptr %i.dj, align 8, !range !17, !noundef !6
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.du = load float, ptr %i.dt, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.dl, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.j)
          to label %bb.cu unwind label %bb.ct

bb.u:                                             ; preds = %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !align !8, !noundef !6 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eb = load i32, ptr %i.ea, align 8, !range !17, !noundef !6
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ed = load float, ptr %i.ec, align 4
  %i.ee = load i32, ptr %i.dv, align 8, !range !17, !noundef !6
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.eg = load float, ptr %i.ef, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.dx, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.g)
          to label %bb.dh unwind label %bb.dg

bb.v:                                             ; preds = %bb.ds, %bb.df, %bb.cs, %bb.cf, %bb.bz, %bb.bt, %bb.bm, %bb.ba, %bb.au, %bb.ai, %bb.ab, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void

bb.w:                                             ; preds = %bb.k
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body63

bb.x:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !503
  %i.ei = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 64, 377) 64, i64 noundef 8) #14, !noalias !503 ; 3 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.y, label %bb.ab, !prof !18

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #17
          to label %.noexc unwind label %bb.z, !noalias !503

.noexc:                                           ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ak) #15
          to label %.body63 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.ab:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ei, ptr noundef nonnull align 8 dereferenceable(64) %i.ak, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ei, ptr %i.em, align 8
  store i64 -9223372036854775800, ptr %0, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef 64, i64 noundef 8) #14
  br label %bb.v

bb.ac:                                            ; preds = %.thread160, %.thread165, %.thread170, %.body118, %.body111, %.body104, %bb.bn, %.body48, %.thread, %.body57
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

.body63.sink.split:                               ; preds = %.body48, %.body57, %.thread
  %.sink193 = phi ptr [ %i.ch, %.body57 ], [ %i.ch, %.thread ], [ %i.co, %.body48 ]
  %.sink.ph = phi ptr [ %i.cf, %.body57 ], [ %i.cf, %.thread ], [ %i.cq, %.body48 ]
  %.pn31.ph = phi { ptr, i32 } [ %eh.lpad-body58, %.body57 ], [ %eh.lpad-body61, %.thread ], [ %eh.lpad-body49, %.body48 ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink193, i64 noundef 64, i64 noundef 8) #14
  br label %.body63

.body63:                                          ; preds = %.body63.sink.split, %bb.w, %bb.z, %.thread170, %.body118, %.thread165, %.body111, %.thread160, %.body104, %bb.ca, %bb.cd, %bb.bu, %bb.bx, %bb.bo, %bb.br, %bb.bn, %bb.av, %bb.ay, %bb.ad, %bb.ag
  %.sink = phi ptr [ %i.dl, %.thread165 ], [ %i.cz, %.thread160 ], [ %i.cw, %bb.ca ], [ %i.cu, %bb.bu ], [ %i.cs, %bb.bo ], [ %i.cq, %bb.bn ], [ %i.cm, %bb.av ], [ %i.cc, %bb.ad ], [ %i.ca, %bb.z ], [ %i.dx, %.thread170 ], [ %i.cc, %bb.ag ], [ %i.cm, %bb.ay ], [ %i.ca, %bb.w ], [ %i.cs, %bb.br ], [ %i.cu, %bb.bx ], [ %i.cw, %bb.cd ], [ %i.cz, %.body104 ], [ %i.dl, %.body111 ], [ %i.dx, %.body118 ], [ %.sink.ph, %.body63.sink.split ]
  %.pn31 = phi { ptr, i32 } [ %eh.lpad-body34, %.thread165 ], [ %eh.lpad-body37, %.thread160 ], [ %i.gm, %bb.ca ], [ %i.gg, %bb.bu ], [ %i.ga, %bb.bo ], [ %.pn27.ph, %bb.bn ], [ %i.fi, %bb.av ], [ %i.eo, %bb.ad ], [ %i.ek, %bb.z ], [ %eh.lpad-body, %.thread170 ], [ %i.er, %bb.ag ], [ %i.fl, %bb.ay ], [ %i.eh, %bb.w ], [ %i.gd, %bb.br ], [ %i.gj, %bb.bx ], [ %i.gp, %bb.cd ], [ %eh.lpad-body.i, %.body104 ], [ %eh.lpad-body.i109, %.body111 ], [ %eh.lpad-body.i116, %.body118 ], [ %.pn31.ph, %.body63.sink.split ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 64, i64 noundef 8) #14
  resume { ptr, i32 } %.pn31

bb.ad:                                            ; preds = %bb.l
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body63

bb.ae:                                            ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !504
  %i.ep = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 64, 377) 64, i64 noundef 8) #14, !noalias !504 ; 3 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.af, label %bb.ai, !prof !18

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #17
          to label %.noexc84 unwind label %bb.ag, !noalias !504

.noexc84:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.q) #15
          to label %.body63 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ep, ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ep, ptr %i.et, align 8
  store i64 -9223372036854775793, ptr %0, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef 64, i64 noundef 8) #14
  br label %bb.v

bb.aj:                                            ; preds = %bb.m
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ak:                                            ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !505
  %i.ev = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 64, 377) 64, i64 noundef 8) #14, !noalias !505 ; 4 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.al, label %bb.ao, !prof !18

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #17
          to label %.noexc86 unwind label %bb.am, !noalias !505

.noexc86:                                         ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ah) #15
          to label %.thread unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ev, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 64, i1 false)
  store ptr %i.ev, ptr %i.ai, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %i.ch, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.ae)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body57

.body57:                                          ; preds = %bb.as, %bb.ap
  %eh.lpad-body58 = phi { ptr, i32 } [ %i.ez, %bb.ap ], [ %i.fc, %bb.as ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ai) #15
          to label %.body63.sink.split unwind label %bb.ac

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !506
  %i.fa = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 64, 377) 64, i64 noundef 8) #14, !noalias !506 ; 3 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.ar, label %bb.au, !prof !18

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #17
          to label %.noexc88 unwind label %bb.as, !noalias !506

.noexc88:                                         ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.ar
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.af) #15
          to label %.body57 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.au:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fa, ptr noundef nonnull align 8 dereferenceable(64) %i.af, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ev, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.fa, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ci, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.ck, ptr %i.fh, align 4
  store i64 -9223372036854775799, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ch, i64 noundef 64, i64 noundef 8) #14
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef 64, i64 noundef 8) #14
  br label %bb.v

.thread:                                          ; preds = %bb.am, %bb.aj
  %eh.lpad-body61 = phi { ptr, i32 } [ %i.eu, %bb.aj ], [ %i.ex, %bb.am ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ch) #15
          to label %.body63.sink.split unwind label %bb.ac

bb.av:                                            ; preds = %bb.n
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body63

bb.aw:                                            ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !507
  %i.fj = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 64, 377) 64, i64 noundef 8) #14, !noalias !507 ; 3 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.ax, label %bb.ba, !prof !18

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #17
          to label %.noexc90 unwind label %bb.ay, !noalias !507

.noexc90:                                         ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ad) #15
          to label %.body63 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.ba:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fj, ptr noundef nonnull align 8 dereferenceable(64) %i.ad, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fj, ptr %i.fn, align 8
  store i64 -9223372036854775798, ptr %0, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cm, i64 noundef 64, i64 noundef 8) #14
  br label %bb.v

bb.bb:                                            ; preds = %bb.o
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bc:                                            ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !508
  %i.fp = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 64, 377) 64, i64 noundef 8) #14, !noalias !508 ; 4 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.bd, label %bb.bg, !prof !18

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #17
          to label %.noexc92 unwind label %bb.be, !noalias !508

.noexc92:                                         ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bd
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.aa) #15
          to label %bb.bn unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.bg:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fp, ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i64 64, i1 false)
  store ptr %i.fp, ptr %i.ab, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.cq, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.x)
          to label %bb.bi unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body48

.body48:                                          ; preds = %bb.bk, %bb.bh
  %eh.lpad-body49 = phi { ptr, i32 } [ %i.ft, %bb.bh ], [ %i.fw, %bb.bk ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ab) #15
          to label %.body63.sink.split unwind label %bb.ac

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !509
  %i.fu = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 64, 377) 64, i64 noundef 8) #14, !noalias !509 ; 3 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.bj, label %bb.bm, !prof !18

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #17
          to label %.noexc94 unwind label %bb.bk, !noalias !509

.noexc94:                                         ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bj
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.y) #15
          to label %.body48 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.bm:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fu, ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fp, ptr %i.fy, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fu, ptr %i.fz, align 8
  store i64 -9223372036854775797, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.co, i64 noundef 64, i64 noundef 8) #14
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cq, i64 noundef 64, i64 noundef 8) #14
  br label %bb.v

bb.bn:                                            ; preds = %bb.bb, %bb.be
  %.pn27.ph = phi { ptr, i32 } [ %i.fr, %bb.be ], [ %i.fo, %bb.bb ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.co, i64 noundef 64, i64 noundef 8) #14
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(64) %i.cq) #15
          to label %.body63 unwind label %bb.ac

bb.bo:                                            ; preds = %bb.p
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.body63

bb.bp:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !510
  %i.gb = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 64, 377) 64, i64 noundef 8) #14, !noalias !510 ; 3 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %bb.bq, label %bb.bt, !prof !18

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #17
          to label %.noexc96 unwind label %bb.br, !noalias !510

.noexc96:                                         ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %bb.bq
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.w) #15
          to label %.body63 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.bt:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gb, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gb, ptr %i.gf, align 8
  store i64 -9223372036854775796, ptr %0, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cs, i64 noundef 64, i64 noundef 8) #14
  br label %bb.v

bb.bu:                                            ; preds = %bb.q
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body63

bb.bv:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !511
  %i.gh = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 64, 377) 64, i64 noundef 8) #14, !noalias !511 ; 3 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %bb.bw, label %bb.bz, !prof !18

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #17
          to label %.noexc98 unwind label %bb.bx, !noalias !511

.noexc98:                                         ; preds = %bb.bw
  unreachable

bb.bx:                                            ; preds = %bb.bw
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.u) #15
          to label %.body63 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.bz:                                            ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gh, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gh, ptr %i.gl, align 8
  store i64 -9223372036854775795, ptr %0, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cu, i64 noundef 64, i64 noundef 8) #14
  br label %bb.v

bb.ca:                                            ; preds = %bb.r
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body63

bb.cb:                                            ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !512
  %i.gn = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 64, 377) 64, i64 noundef 8) #14, !noalias !512 ; 3 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.cc, label %bb.cf, !prof !18

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #17
          to label %.noexc100 unwind label %bb.cd, !noalias !512

.noexc100:                                        ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %bb.cc
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.s) #15
          to label %.body63 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.cf:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gn, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gn, ptr %i.gr, align 8
  store i64 -9223372036854775794, ptr %0, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cw, i64 noundef 64, i64 noundef 8) #14
  br label %bb.v

bb.cg:                                            ; preds = %bb.s
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %.thread160

bb.ch:                                            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !513
  %i.gt = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 64, 377) 64, i64 noundef 8) #14, !noalias !513 ; 4 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %bb.ci, label %bb.cl, !prof !18

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #17
          to label %.noexc102 unwind label %bb.cj, !noalias !513

.noexc102:                                        ; preds = %bb.ci
  unreachable

bb.cj:                                            ; preds = %bb.ci
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.n) #15
          to label %.thread160 unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.cl:                                            ; preds = %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gt, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false)
  store ptr %i.gt, ptr %i.o, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not24 = icmp eq ptr %i.db, null
  br i1 %.not24, label %bb.cs, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.db, i64 64, i1 false)
  invoke void @_RNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB7_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.e)
          to label %bb.co unwind label %bb.cn, !inline_history !486

bb.cn:                                            ; preds = %bb.cm
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.body104

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !514
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !515
  %i.gy = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 64, 377) 64, i64 noundef 8) #14, !noalias !515 ; 3 uses
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %bb.cp, label %_RNCNvXsl_NtNtCs5QaNqjAn6vc_5shard5query11conversionsNtNtB9_7formula18ExpressionInternalINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCshMzyYDJGtjv_3api4rest6schema10ExpressionE4from0Bb_.exit, !prof !18

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #17
          to label %.noexc120 unwind label %bb.cq, !noalias !515

.noexc120:                                        ; preds = %bb.cp
  unreachable

bb.cq:                                            ; preds = %bb.cp
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f) #15
          to label %.body104 unwind label %bb.cr, !inline_history !486

bb.cr:                                            ; preds = %bb.cq
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12, !inline_history !486
end_hunk_0
