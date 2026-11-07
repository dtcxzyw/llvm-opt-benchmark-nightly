Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.15?download=true
inline.NumInlined: 3071
inline.NumDeleted: 1597
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector7collect0Bb_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.ap = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1415, !nonnull !59, !noundef !59
  %i.aq = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1415, !nonnull !59, !noundef !59 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ap
  br i1 %i.ar, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def7nameres9collector21DeferredBuiltinDeriveENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def7nameres9collector21DeferredBuiltinDeriveENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB12_.exit

bb.i:                                             ; preds = %bb.e, %bb.j
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

.thread:                                          ; preds = %bb.e, %bb.j
  %.pn13 = phi { ptr, i32 } [ %i.al, %bb.e ], [ %i.at, %bb.j ]
  resume { ptr, i32 } %.pn13

bb.j:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsileJQcQObtj_7hir_def7nameres9collector21DeferredBuiltinDeriveEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #41
          to label %.thread unwind label %bb.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector7collects0_0Bb_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(12) initializes((0, 1)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %4) unnamed_addr #3 !guid !1416 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !59, !noundef !59
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !59, !align !67, !noundef !59
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !59, !align !88, !noundef !59 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !range !65, !noundef !59
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !noundef !59
  call void @_RNvMs0_NtNtCsileJQcQObtj_7hir_def7nameres15path_resolutionNtB7_6DefMap18resolve_visibility(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3, ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.d, i32 noundef %i.g, i32 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %4, i1 noundef zeroext false)
  store i8 2, ptr %0, align 4
  %i.j = load i8, ptr %i.a, align 4, !range !91, !noundef !59
  %.not = icmp eq i8 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector7collects1_0Bb_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef range(i32 0, 16) %1, i32 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !guid !1683 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [12 x i8], align 4                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 6 uses
  %.sroa.0345 = alloca [28 x i8], align 4         ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [8 x i8], align 4                 ; 5 uses
  %i.i = alloca [12 x i8], align 4                ; 5 uses
  %i.j = alloca [12 x i8], align 4                ; 5 uses
  %i.k = alloca [12 x i8], align 4                ; 5 uses
  %i.l = alloca [12 x i8], align 4                ; 5 uses
  %i.m = alloca [12 x i8], align 4                ; 5 uses
  %i.n = alloca [12 x i8], align 4                ; 6 uses
  %i.o = alloca [96 x i8], align 8                ; 9 uses
  %i.p = alloca [12 x i8], align 4                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [88 x i8], align 8                ; 15 uses
  %i.s = alloca [12 x i8], align 4                ; 6 uses
  %i.t = alloca [16 x i8], align 4                ; 5 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %i.v = alloca [12 x i8], align 4                ; 4 uses
  %i.w = alloca [48 x i8], align 8                ; 9 uses
  %.sroa.0325 = alloca [12 x i8], align 4         ; 4 uses
  %i.x = alloca [88 x i8], align 8                ; 12 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [12 x i8], align 4                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 18 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [40 x i8], align 8               ; 4 uses
  %i.al = alloca [40 x i8], align 8               ; 4 uses
  %i.am = alloca [88 x i8], align 8               ; 10 uses
  %i.an = alloca [16 x i8], align 8               ; 6 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [16 x i8], align 4               ; 5 uses
  %i.ar = alloca [12 x i8], align 4               ; 5 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [40 x i8], align 8               ; 5 uses
  %i.av = alloca [24 x i8], align 8               ; 7 uses
  %i.aw = alloca [136 x i8], align 8              ; 11 uses
  %i.ax = alloca [16 x i8], align 4               ; 7 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %i.az = alloca [40 x i8], align 8               ; 6 uses
  %i.ba = alloca [8 x i8], align 8                ; 4 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [88 x i8], align 8               ; 4 uses
  %i.bd = alloca [88 x i8], align 8               ; 9 uses
  %i.be = alloca [8 x i8], align 8                ; 5 uses
  %i.bf = alloca [12 x i8], align 4               ; 6 uses
  %i.bg = alloca [16 x i8], align 4               ; 5 uses
  %i.bh = alloca [12 x i8], align 4               ; 3 uses
  %i.bi = alloca [28 x i8], align 4               ; 10 uses
  %i.bj = alloca [24 x i8], align 8               ; 6 uses
  %i.bk = alloca [16 x i8], align 4               ; 4 uses
  %i.bl = alloca [16 x i8], align 4               ; 5 uses
  %i.bm = alloca [96 x i8], align 8               ; 8 uses
  %i.bn = alloca [8 x i8], align 8                ; 6 uses
  %i.bo = alloca [32 x i8], align 8               ; 7 uses
  %i.bp = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.5103.i = alloca [20 x i8], align 8       ; 4 uses
  %.sroa.10.i = alloca [3 x i8], align 1          ; 4 uses
  %i.bq = alloca [8 x i8], align 8                ; 6 uses
  %i.br = alloca [24 x i8], align 8               ; 6 uses
  %i.bs = alloca [104 x i8], align 8              ; 9 uses
  %i.bt = alloca [24 x i8], align 8               ; 6 uses
  %i.bu = alloca [12 x i8], align 4               ; 4 uses
  %.sroa.0.i = alloca [12 x i8], align 4          ; 4 uses
  %.sroa.42.i = alloca [28 x i8], align 4         ; 4 uses
  %i.bv = alloca [120 x i8], align 8              ; 11 uses
  %i.bw = alloca [16 x i8], align 4               ; 4 uses
  %i.bx = alloca [16 x i8], align 4               ; 4 uses
  %i.by = alloca [16 x i8], align 4               ; 4 uses
  %i.bz = alloca [28 x i8], align 4               ; 5 uses
  %i.ca = alloca [32 x i8], align 8               ; 8 uses
  %i.cb = alloca [16 x i8], align 8               ; 8 uses
  %i.cc = alloca [8 x i8], align 8                ; 5 uses
  %i.cd = alloca [48 x i8], align 8               ; 9 uses
  %i.ce = alloca [16 x i8], align 4               ; 4 uses
  %i.cf = alloca [40 x i8], align 8               ; 10 uses
  %i.cg = alloca [24 x i8], align 8               ; 10 uses
  %i.ch = alloca [12 x i8], align 4               ; 4 uses
  %i.ci = alloca [24 x i8], align 8               ; 10 uses
  %i.cj = alloca [8 x i8], align 8                ; 4 uses
  %i.ck = alloca [8 x i8], align 8                ; 4 uses
  %i.cl = alloca [16 x i8], align 4               ; 5 uses
  %i.cm = alloca [136 x i8], align 8              ; 11 uses
  %i.cn = alloca [16 x i8], align 4               ; 7 uses
  %i.co = alloca [12 x i8], align 4               ; 5 uses
  %i.cp = alloca [12 x i8], align 4               ; 5 uses
  %i.cq = alloca [8 x i8], align 8                ; 4 uses
  %i.cr = alloca [8 x i8], align 8                ; 4 uses
  %i.cs = alloca [8 x i8], align 8                ; 4 uses
  %i.ct = alloca [8 x i8], align 8                ; 4 uses
  %i.cu = alloca [8 x i8], align 8                ; 4 uses
  %i.cv = alloca [8 x i8], align 8                ; 4 uses
  %i.cw = alloca [16 x i8], align 8               ; 6 uses
  %i.cx = alloca [12 x i8], align 4               ; 6 uses
  %i.cy = alloca [12 x i8], align 4               ; 6 uses
  %i.cz = alloca [16 x i8], align 4               ; 5 uses
  %i.da = alloca [12 x i8], align 4               ; 3 uses
  %i.db = alloca [28 x i8], align 4               ; 10 uses
  %i.dc = alloca [24 x i8], align 8               ; 6 uses
  %i.dd = alloca [16 x i8], align 4               ; 4 uses
  %i.de = alloca [16 x i8], align 4               ; 5 uses
  %i.df = alloca [96 x i8], align 8               ; 8 uses
  %i.dg = alloca [32 x i8], align 8               ; 7 uses
  %i.dh = alloca [16 x i8], align 8               ; 5 uses
  %i.di = alloca [16 x i8], align 8               ; 5 uses
  %i.dj = alloca [16 x i8], align 8               ; 5 uses
  %i.dk = alloca [16 x i8], align 8               ; 5 uses
  %i.dl = alloca [32 x i8], align 8               ; 7 uses
  %i.dm = alloca [8 x i8], align 8                ; 6 uses
  %i.dn = alloca [24 x i8], align 8               ; 6 uses
  %i.do = alloca [24 x i8], align 8               ; 8 uses
  %i.dp = alloca [24 x i8], align 8               ; 6 uses
  %i.dq = alloca [12 x i8], align 4               ; 4 uses
  %i.dr = alloca [12 x i8], align 4               ; 6 uses
  %i.ds = alloca [12 x i8], align 4               ; 5 uses
  %i.dt = alloca [12 x i8], align 4               ; 5 uses
  %i.du = alloca [24 x i8], align 8               ; 6 uses
  %i.dv = alloca [24 x i8], align 8               ; 6 uses
  %i.dw = alloca [24 x i8], align 8               ; 6 uses
  %i.dx = alloca [8 x i8], align 8                ; 4 uses
  %i.dy = alloca [32 x i8], align 8               ; 7 uses
  %i.dz = alloca [24 x i8], align 8               ; 7 uses
  %i.ea = alloca [120 x i8], align 8              ; 16 uses
  %i.eb = alloca [16 x i8], align 8               ; 5 uses
  %i.ec = alloca [32 x i8], align 16              ; 6 uses
  %i.ed = alloca [16 x i8], align 8               ; 5 uses
  %i.ee = alloca [16 x i8], align 8               ; 5 uses
  %i.ef = alloca [16 x i8], align 4               ; 7 uses
  %i.eg = alloca [16 x i8], align 4               ; 5 uses
  %i.eh = alloca [24 x i8], align 8               ; 3 uses
  %i.ei = alloca [28 x i8], align 4               ; 6 uses
  %i.ej = alloca [48 x i8], align 8               ; 11 uses
  %.sroa.5313 = alloca [11 x i8], align 1         ; 4 uses
  %i.ek = alloca [24 x i8], align 4               ; 6 uses
  %i.el = alloca [48 x i8], align 8               ; 11 uses
  %.sroa.5304 = alloca [11 x i8], align 1         ; 4 uses
  %i.em = alloca [28 x i8], align 4               ; 6 uses
  %i.en = alloca [48 x i8], align 8               ; 11 uses
  %.sroa.5295 = alloca [11 x i8], align 1         ; 4 uses
  %i.eo = alloca [48 x i8], align 8               ; 10 uses
  %i.ep = alloca [28 x i8], align 4               ; 6 uses
  %i.eq = alloca [48 x i8], align 8               ; 12 uses
  %.sroa.5281 = alloca [11 x i8], align 1         ; 4 uses
  %i.er = alloca [48 x i8], align 8               ; 9 uses
  %i.es = alloca [24 x i8], align 4               ; 6 uses
  %i.et = alloca [48 x i8], align 8               ; 12 uses
  %i.eu = alloca [48 x i8], align 8               ; 9 uses
  %i.ev = alloca [24 x i8], align 4               ; 6 uses
  %.sroa.5266 = alloca [11 x i8], align 1         ; 4 uses
  %i.ew = alloca [48 x i8], align 8               ; 12 uses
  %i.ex = alloca [48 x i8], align 8               ; 9 uses
  %i.ey = alloca [24 x i8], align 4               ; 6 uses
  %.sroa.5254 = alloca [11 x i8], align 1         ; 4 uses
  %i.ez = alloca [16 x i8], align 4               ; 6 uses
  %i.fa = alloca [16 x i8], align 4               ; 5 uses
  %i.fb = alloca [32 x i8], align 8               ; 4 uses
  %i.fc = alloca [32 x i8], align 8               ; 5 uses
  %i.fd = alloca [48 x i8], align 8               ; 11 uses
  %.sroa.5245 = alloca [11 x i8], align 1         ; 4 uses
  %i.fe = alloca [28 x i8], align 4               ; 6 uses
  %i.ff = alloca [24 x i8], align 4               ; 6 uses
  %i.fg = alloca [12 x i8], align 4               ; 5 uses
  %i.fh = alloca [12 x i8], align 4               ; 6 uses
  %i.fi = alloca [24 x i8], align 4               ; 6 uses
  %i.fj = alloca [96 x i8], align 8               ; 7 uses
  %.sroa.5.sroa.0 = alloca [64 x i8], align 8     ; 2 uses
  %i.fk = alloca [136 x i8], align 8              ; 10 uses
  %i.fl = alloca [24 x i8], align 8               ; 6 uses
  %i.fm = alloca [16 x i8], align 4               ; 7 uses
  %i.fn = alloca [12 x i8], align 4               ; 5 uses
  %i.fo = alloca [24 x i8], align 4               ; 6 uses
  %i.fp = alloca [24 x i8], align 8               ; 6 uses
  %i.fq = alloca [24 x i8], align 4               ; 6 uses
  %i.fr = alloca [12 x i8], align 4               ; 5 uses
  %i.fs = alloca [16 x i8], align 4               ; 5 uses
  %i.ft = alloca [16 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft)
  %i.fu = load ptr, ptr %0, align 8, !nonnull !59, !align !67, !noundef !59 ; 41 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 48 ; 31 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !nonnull !59, !align !67, !noundef !59
  %i.fx = tail call noundef align 8 ptr @_RNvMs0_NtCsileJQcQObtj_7hir_def9item_treeNtB5_8ItemTree5attrs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.fw, i32 noundef %2) ; 4 uses
  %.not = icmp eq ptr %i.fx, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.fy = load ptr, ptr %i.fx, align 8, !noundef !59 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %bb.ao, label %bb.ap

bb.c:                                             ; preds = %bb.a, %bb.ap
  %.sink = phi ptr [ %i.fy, %bb.ap ], [ inttoptr (i64 8 to ptr), %bb.a ] ; 8 uses
  %.val130.sink = phi i64 [ %.val130, %bb.ap ], [ 0, %bb.a ] ; 10 uses
  store ptr %.sink, ptr %i.ft, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i64 %.val130.sink, ptr %i.ga, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr)
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !nonnull !59, !align !88, !noundef !59 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fr, ptr noundef nonnull align 4 dereferenceable(12) %i.gc, i64 12, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1685)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fu, i64 32 ; 35 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !1684, !nonnull !59, !align !67, !noundef !59 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !noalias !1686
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fu, i64 64 ; 33 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ef, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.gf, i64 12, i1 false), !noalias !1687
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 %2, ptr %i.gg, align 4, !noalias !1686
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 672
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !1688, !noalias !1686, !noundef !59
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %select.unfold.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 648
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 680
  %i.gm = call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1E_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gl, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ef), !noalias !1686 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  %i.gn = lshr i64 %i.gm, 57
  %i.go = trunc nuw nsw i64 %i.gn to i8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ge, i64 656
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !1691, !noalias !1686, !noundef !59 ; 2 uses
  %i.gr = load ptr, ptr %i.gk, align 8, !alias.scope !1691, !noalias !1686, !nonnull !59, !noundef !59 ; 2 uses
  %i.gs = insertelement <16 x i8> poison, i8 %i.go, i64 0
  %i.gt = shufflevector <16 x i8> %i.gs, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.hk, %bb.g ]
  %.pn.i.i.i = phi i64 [ %i.gm, %bb.d ], [ %i.hl, %bb.g ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.gq ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.gu, align 1, !noalias !1692 ; 2 uses
  %i.gv = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.gt
  %i.gw = bitcast <16 x i1> %i.gv to i16          ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.gw, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.hj, %bb.f ], [ %i.gw, %bb.e ] ; 3 uses
  %i.gx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.gy = zext nneg i16 %i.gx to i64
  %i.gz = add i64 %.sroa.01.0.i.i.i.i, %i.gy
  %i.ha = and i64 %i.gz, %i.gq
  %i.hb = sub nsw i64 0, %i.ha
  %i.hc = getelementptr inbounds [20 x i8], ptr %i.gr, i64 %i.hb ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -20
  %i.he = call noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBv_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEEINtB2_10EquivalentBq_E10equivalentCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ef, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.hd), !noalias !1693
  br i1 %i.he, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtNtBT_5attrs6AttrIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECsileJQcQObtj_7hir_def.exit.i, label %bb.f, !prof !66

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.hf = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.hg = bitcast <16 x i1> %i.hf to i16
  %i.hh = icmp eq i16 %i.hg, 0
  br i1 %i.hh, label %bb.g, label %select.unfold.i, !prof !60

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.hi = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.hj = and i16 %i.hi, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.hj, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.hk = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.hl = add i64 %.sroa.01.0.i.i.i.i, %i.hk
  br label %bb.e

select.unfold.i:                                  ; preds = %._crit_edge.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !1686
  br label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtNtBT_5attrs6AttrIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECsileJQcQObtj_7hir_def.exit.thread.i

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtNtBT_5attrs6AttrIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECsileJQcQObtj_7hir_def.exit.i: ; preds = %.lr.ph.i.i.i
  %i.hm = getelementptr inbounds i8, ptr %i.hc, i64 -4
  %i.hn = load i32, ptr %i.hm, align 4, !noalias !1686, !noundef !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !1686
  %i.ho = add i32 %i.hn, 1
  br label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtNtBT_5attrs6AttrIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECsileJQcQObtj_7hir_def.exit.thread.i

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtNtBT_5attrs6AttrIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECsileJQcQObtj_7hir_def.exit.thread.i: ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtNtBT_5attrs6AttrIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECsileJQcQObtj_7hir_def.exit.i, %select.unfold.i
  %3 = phi i32 [ %i.ho, %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtNtBT_5attrs6AttrIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECsileJQcQObtj_7hir_def.exit.i ], [ 0, %select.unfold.i ] ; 2 uses
  %i.hp = zext i32 %3 to i64                      ; 4 uses
  %i.hq = icmp ult i64 %.val130.sink, %i.hp
  br i1 %i.hq, label %bb.h, label %_RNvMs3_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB5_5Attrs10iter_after.exit.i, !prof !60

bb.h:                                             ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtNtBT_5attrs6AttrIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECsileJQcQObtj_7hir_def.exit.thread.i
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.hp, i64 noundef %.val130.sink, i64 noundef %.val130.sink, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #39, !noalias !1694
  unreachable

_RNvMs3_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB5_5Attrs10iter_after.exit.i: ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBT_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtNtBT_5attrs6AttrIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECsileJQcQObtj_7hir_def.exit.thread.i
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %.sink, i64 %.val130.sink ; 2 uses
  %.not.not.i.not575 = icmp samesign eq i64 %.val130.sink, %i.hp
  br i1 %.not.not.i.not575, label %._crit_edge, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i.lr.ph

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i.lr.ph: ; preds = %_RNvMs3_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB5_5Attrs10iter_after.exit.i
  %i.hs = getelementptr inbounds nuw [24 x i8], ptr %.sink, i64 %i.hp
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i

bb.i:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.045.0.i577, i64 24 ; 2 uses
  %i.hu = add i32 %.sroa.846.0.i576, 1
  %.not.not.i.not = icmp eq ptr %i.ht, %i.hr
  br i1 %.not.not.i.not, label %._crit_edge, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i.lr.ph, %bb.i
  %.sroa.045.0.i577 = phi ptr [ %i.hs, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i.lr.ph ], [ %i.ht, %bb.i ] ; 4 uses
  %.sroa.846.0.i576 = phi i32 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i.lr.ph ], [ %i.hu, %bb.i ] ; 2 uses
  %i.hv = load ptr, ptr %.sroa.045.0.i577, align 8, !alias.scope !1685, !nonnull !59, !noundef !59 ; 6 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.hx = call noundef zeroext i1 @_RNvMNtNtCsileJQcQObtj_7hir_def7nameres15attr_resolutionNtB4_6DefMap29is_builtin_or_registered_attr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.ge, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hw), !noalias !1686
  br i1 %i.hx, label %bb.i, label %bb.j

bb.j:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.i
  %i.hy = add i32 %.sroa.846.0.i576, %3
  %i.hz = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !1686
  %i.ia = icmp ult i64 %i.hz, 2
  br i1 %i.ia, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ib = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector18resolve_attributes10___CALLSITE, i64 16) monotonic, align 8, !noalias !1686 ; 3 uses
  switch i8 %i.ib, label %bb.l [
    i8 0, label %bb.n
    i8 1, label %bb.m
    i8 2, label %bb.m
  ], !prof !80

bb.l:                                             ; preds = %bb.k
  %i.ic = call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector18resolve_attributes10___CALLSITE) #44, !noalias !1686 ; 2 uses
  %i.id = icmp eq i8 %i.ic, 0
  br i1 %i.id, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.k
  %.sroa.012.0.i = phi i8 [ %i.ic, %bb.l ], [ %i.ib, %bb.k ], [ %i.ib, %bb.k ]
  %i.ie = load ptr, ptr @_RNvNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector18resolve_attributes10___CALLSITE, align 8, !noalias !1686, !nonnull !59, !align !67, !noundef !59
  %i.if = call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ie, i8 noundef %.sroa.012.0.i), !noalias !1686
  br i1 %i.if, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m, %bb.l, %bb.k, %bb.j
  %i.ig = atomicrmw add ptr %i.hv, i64 1 monotonic, align 8, !noalias !1686
  %i.ih = icmp slt i64 %i.ig, 0
  br i1 %i.ih, label %bb.ah, label %bb.p, !prof !60

bb.o:                                             ; preds = %bb.m
  %i.ii = load ptr, ptr @_RNvNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB7_12ModCollector18resolve_attributes10___CALLSITE, align 8, !noalias !1686, !nonnull !59, !align !67, !noundef !59 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !1686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !1686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !1686
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ge, i64 416
  %i.il = load <2 x ptr>, ptr %i.ik, align 8, !noalias !1686
  store <2 x ptr> %i.il, ptr %i.ec, align 16, !noalias !1686
  %i.im = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr %i.hw, ptr %i.im, align 16, !noalias !1686
  %i.in = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store i8 3, ptr %i.in, align 8, !noalias !1686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !noalias !1686
  store ptr %i.ec, ptr %i.eb, align 8, !noalias !1686
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr @_RNvXs1_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !1686
  store ptr @183, ptr %i.ed, align 8, !noalias !1686
  %i.io = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.eb, ptr %i.io, align 8, !noalias !1686
  store ptr %i.ed, ptr %i.ee, align 8, !noalias !1686
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr @98, ptr %i.ip, align 8, !noalias !1686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !1686
  store i64 1, ptr %i.dy, align 8, !noalias !1686
  %.sroa.014.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.ee, ptr %.sroa.014.sroa.4.0..sroa_idx.i, align 8, !noalias !1686
  %.sroa.014.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store i64 1, ptr %.sroa.014.sroa.5.0..sroa_idx.i, align 8, !noalias !1686
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  store ptr %i.ij, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1686
  call void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ii, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dy), !noalias !1686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !1686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !1686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !1686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !1686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !1686
  br label %bb.n

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !1686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dz, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.gf, i64 12, i1 false), !noalias !1687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !noalias !1686
  %i.iq = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %i.ir = load <2 x i32>, ptr %i.iq, align 8, !alias.scope !1684
  %i.is = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  %i.it = load i64, ptr %i.is, align 8, !alias.scope !1684, !noundef !59
  %.sroa.015.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store i32 %2, ptr %.sroa.015.sroa.4.0..sroa_idx.i, align 4, !noalias !1686
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store ptr %i.hv, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !1686
  call void @llvm.experimental.noalias.scope.decl(metadata !1695)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !1696
  %i.iu = atomicrmw add ptr %i.hv, i64 1 monotonic, align 8, !noalias !1696
  %i.iv = icmp slt i64 %i.iu, 0
  br i1 %i.iv, label %bb.r, label %bb.q, !prof !60

bb.q:                                             ; preds = %bb.p
  store ptr %i.hv, ptr %i.dx, align 8, !noalias !1696
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.045.0.i577, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !alias.scope !1697, !align !67, !noundef !59 ; 12 uses
  %.not.i41.i = icmp eq ptr %i.ix, null
  br i1 %.not.i41.i, label %bb.aj, label %bb.s

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #43
          to label %.noexc.i unwind label %bb.ai, !noalias !1686

.noexc.i:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !1696
  %i.iy = call noalias noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 8, 585) 40, i64 noundef range(i64 4, 129) 8) #45, !noalias !1696 ; 8 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %bb.t, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtCs33K2ylI4knu_10hir_expand5attrs9AttrInputE13new_uninit_inCsileJQcQObtj_7hir_def.exit.i.i.i, !prof !60

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #43
          to label %.noexc.i.i unwind label %bb.af, !noalias !1696

.noexc.i.i:                                       ; preds = %bb.t
  unreachable

_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtCs33K2ylI4knu_10hir_expand5attrs9AttrInputE13new_uninit_inCsileJQcQObtj_7hir_def.exit.i.i.i: ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !1698)
  call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  %i.ja = load i64, ptr %i.ix, align 8, !range !69, !alias.scope !1701, !noalias !1696, !noundef !59 ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ja, -1
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxNtNtCs33K2ylI4knu_10hir_expand5attrs9AttrInputE13new_uninit_inCsileJQcQObtj_7hir_def.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !noalias !1703
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 3 uses
  switch i64 %i.ja, label %default.unreachable [
    i64 0, label %bb.v
    i64 1, label %bb.w
    i64 2, label %bb.x
  ]

default.unreachable:                              ; preds = %._crit_edge, %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.jc = invoke { ptr, i64 } @_RNvXse_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBL_13SpanStorage32EENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.jb)
          to label %_RNvXsN_NtCs4dcH4YgJDq_2tt7storageNtB5_14TopSubtreeReprNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i.i.i unwind label %bb.ad, !noalias !1696

bb.w:                                             ; preds = %bb.u
  %i.jd = invoke { ptr, i64 } @_RNvXse_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBL_13SpanStorage64EENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.jb)
          to label %_RNvXsN_NtCs4dcH4YgJDq_2tt7storageNtB5_14TopSubtreeReprNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i.i.i unwind label %bb.ad, !noalias !1696

bb.x:                                             ; preds = %bb.u
  %i.je = invoke { ptr, i64 } @_RNvXse_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBL_13SpanStorage96EENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.jb)
          to label %_RNvXsN_NtCs4dcH4YgJDq_2tt7storageNtB5_14TopSubtreeReprNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i.i.i unwind label %bb.ad, !noalias !1696

_RNvXsN_NtCs4dcH4YgJDq_2tt7storageNtB5_14TopSubtreeReprNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i.i.i: ; preds = %bb.x, %bb.w, %bb.v
  %.sink5.i.i.i.i.i.i.i = phi { ptr, i64 } [ %i.jd, %bb.w ], [ %i.jc, %bb.v ], [ %i.je, %bb.x ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.jg = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.jh = extractvalue { ptr, i64 } %.sink5.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.ji = extractvalue { ptr, i64 } %.sink5.i.i.i.i.i.i.i, 1 ; 2 uses
  store ptr %i.jh, ptr %i.jg, align 8, !alias.scope !1704, !noalias !1703
  store i64 %i.ji, ptr %i.jf, align 8, !alias.scope !1704, !noalias !1703
  store i64 %i.ja, ptr %i.dw, align 8, !alias.scope !1704, !noalias !1703
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv), !noalias !1706
  %i.jk = load ptr, ptr %i.jj, align 8, !alias.scope !1707, !noalias !1696, !nonnull !59, !noundef !59
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.jm = load i64, ptr %i.jl, align 8, !alias.scope !1707, !noalias !1696, !noundef !59 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du), !noalias !1709
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.du, i64 noundef range(i64 0, 768614336404564651) %i.jm, i1 noundef zeroext false, i64 noundef 4, i64 noundef 12)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.aa, !noalias !1703

.noexc.i.i.i.i.i.i:                               ; preds = %_RNvXsN_NtCs4dcH4YgJDq_2tt7storageNtB5_14TopSubtreeReprNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i.i.i.i.i.i
  %i.jn = load i64, ptr %i.du, align 8, !range !73, !noalias !1709, !noundef !59
  %i.jo = trunc nuw i64 %i.jn to i1
  %i.jp = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.jq = load i64, ptr %i.jp, align 8, !range !74, !noalias !1709, !noundef !59 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  br i1 %i.jo, label %bb.y, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i.i.i, !prof !60

bb.y:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.js = load i64, ptr %i.jr, align 8, !noalias !1709
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.jq, i64 %i.js) #43
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.aa, !noalias !1703

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.y
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i
  %i.jt = load ptr, ptr %i.jr, align 8, !noalias !1709, !nonnull !59, !noundef !59 ; 2 uses
  %i.ju = icmp ule i64 %i.jm, %i.jq
  call void @llvm.assume(i1 %i.ju)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !1709
  store i64 %i.jq, ptr %i.dv, align 8, !alias.scope !1708, !noalias !1706
  %i.jv = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %i.jt, ptr %i.jv, align 8, !alias.scope !1708, !noalias !1706
  %i.jw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  store i64 0, ptr %i.jw, align 8, !alias.scope !1708, !noalias !1706
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.jm, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvXs_NvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i.i.i
  %i.jx = mul nuw nsw i64 %i.jm, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.jt, ptr nonnull readonly align 4 %i.jk, i64 %i.jx, i1 false), !noalias !1710
  store i64 %i.jm, ptr %i.jw, align 8, !alias.scope !1708, !noalias !1706
  br label %_RINvXs_NvMNtCsbSS6DM8SDEO_5alloc5sliceSp9to_vec_inNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i.i

end_hunk_0
