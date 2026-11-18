Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_llama2-b5d2d67ec215b578.candle_wasm_example_llama2.2b2abf3c15bdb95-cgu.14?download=true
inline.NumInlined: 921
inline.NumDeleted: 389
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvNtCsemnSGAKhbl_26candle_wasm_example_llama23app15performance_now:bb.a
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.l) #31
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features15gen_Performance11PerformanceECsemnSGAKhbl_26candle_wasm_example_llama2.exit

bb.j:                                             ; preds = %bb.f
  %i.s = icmp ugt i32 %i.l, 1027
  br i1 %i.s, label %bb.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features15gen_Performance11PerformanceECsemnSGAKhbl_26candle_wasm_example_llama2.exit17

bb.k:                                             ; preds = %bb.j
  call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.l) #31
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features15gen_Performance11PerformanceECsemnSGAKhbl_26candle_wasm_example_llama2.exit17

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features15gen_Performance11PerformanceECsemnSGAKhbl_26candle_wasm_example_llama2.exit17: ; preds = %bb.k, %bb.j
  %i.t = fdiv double %i.m, 1.000000e+03           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = icmp ugt i32 %i.f, 1027
  br i1 %i.u, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features10gen_Window6WindowECsemnSGAKhbl_26candle_wasm_example_llama2.exit18.sink.split, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features10gen_Window6WindowECsemnSGAKhbl_26candle_wasm_example_llama2.exit18

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features10gen_Window6WindowECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsey8dOKI5XLb_7web_sys8features15gen_Performance11PerformanceECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtCsgCecv3eZDcN_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !5
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %bb.b, label %_RNvXs1h_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %.val1)
  %i.f = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXs1h_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

_RNvXs1h_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCsemnSGAKhbl_26candle_wasm_example_llama23appNtB2_3AppNtNtNtCs9OLX912zl7o_3yew4html9component9Component4view(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [32 x i8], align 8                ; 16 uses
  %i.r = alloca [56 x i8], align 8                ; 11 uses
  %i.s = alloca [56 x i8], align 8                ; 11 uses
  %i.t = alloca [56 x i8], align 8                ; 11 uses
  %i.u = alloca [152 x i8], align 8               ; 13 uses
  %i.v = alloca [48 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [152 x i8], align 8               ; 12 uses
  %i.y = alloca [152 x i8], align 8               ; 11 uses
  %i.z = alloca [56 x i8], align 8                ; 5 uses
  %i.aa = alloca [40 x i8], align 8               ; 8 uses
  %i.ab = alloca [152 x i8], align 8              ; 10 uses
  %i.ac = alloca [56 x i8], align 8               ; 5 uses
  %i.ad = alloca [152 x i8], align 8              ; 12 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [152 x i8], align 8              ; 10 uses
  %i.ag = alloca [56 x i8], align 8               ; 5 uses
  %i.ah = alloca [40 x i8], align 8               ; 8 uses
  %i.ai = alloca [152 x i8], align 8              ; 10 uses
  %i.aj = alloca [56 x i8], align 8               ; 5 uses
  %i.ak = alloca [152 x i8], align 8              ; 15 uses
  %i.al = alloca [152 x i8], align 8              ; 10 uses
  %i.am = alloca [56 x i8], align 8               ; 5 uses
  %i.an = alloca [152 x i8], align 8              ; 14 uses
  %i.ao = alloca [152 x i8], align 8              ; 10 uses
  %i.ap = alloca [56 x i8], align 8               ; 5 uses
  %i.aq = alloca [40 x i8], align 8               ; 8 uses
  %i.ar = alloca [152 x i8], align 8              ; 14 uses
  %i.as = alloca [152 x i8], align 8              ; 10 uses
  %i.at = alloca [56 x i8], align 8               ; 5 uses
  %i.au = alloca [40 x i8], align 8               ; 8 uses
  %i.av = alloca [152 x i8], align 8              ; 14 uses
  %i.aw = alloca [152 x i8], align 8              ; 13 uses
  %i.ax = alloca [48 x i8], align 8               ; 7 uses
  %i.ay = alloca [32 x i8], align 8               ; 4 uses
  %i.az = alloca [152 x i8], align 8              ; 17 uses
  %i.ba = alloca [152 x i8], align 8              ; 13 uses
  %i.bb = alloca [48 x i8], align 8               ; 7 uses
  %i.bc = alloca [32 x i8], align 8               ; 4 uses
  %i.bd = alloca [152 x i8], align 8              ; 17 uses
  %i.be = alloca [152 x i8], align 8              ; 17 uses
  %i.bf = alloca [32 x i8], align 8               ; 2 uses
  %i.bg = alloca [40 x i8], align 8               ; 7 uses
  %i.bh = alloca [16 x i8], align 8               ; 7 uses
  %i.bi = alloca [8 x i8], align 8                ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.0204 = alloca [96 x i8], align 8         ; 5 uses
  %i.bk = alloca [40 x i8], align 8               ; 7 uses
  %i.bl = alloca [8 x i8], align 8                ; 4 uses
  %i.bm = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.0194.sroa.0 = alloca [64 x i8], align 8  ; 5 uses
  %i.bn = alloca [32 x i8], align 8               ; 4 uses
  %i.bo = alloca [32 x i8], align 8               ; 4 uses
  %i.bp = alloca [32 x i8], align 8               ; 4 uses
  %i.bq = alloca [40 x i8], align 8               ; 7 uses
  %i.br = alloca [8 x i8], align 8                ; 4 uses
  %i.bs = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.0188 = alloca [96 x i8], align 8         ; 5 uses
  %i.bt = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.4187 = alloca [28 x i8], align 4         ; 4 uses
  %i.bu = alloca [40 x i8], align 8               ; 7 uses
  %i.bv = alloca [8 x i8], align 8                ; 4 uses
  %i.bw = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.0180.sroa.0 = alloca [64 x i8], align 8  ; 5 uses
  %i.bx = alloca [32 x i8], align 8               ; 4 uses
  %i.by = alloca [32 x i8], align 8               ; 4 uses
  %i.bz = alloca [40 x i8], align 8               ; 7 uses
  %i.ca = alloca [8 x i8], align 8                ; 4 uses
  %i.cb = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.0174 = alloca [96 x i8], align 8         ; 5 uses
  %i.cc = alloca [32 x i8], align 8               ; 4 uses
  %i.cd = alloca [32 x i8], align 8               ; 4 uses
  %i.ce = alloca [40 x i8], align 8               ; 7 uses
  %i.cf = alloca [8 x i8], align 8                ; 4 uses
  %i.cg = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.0168 = alloca [96 x i8], align 8         ; 5 uses
  %i.ch = alloca [32 x i8], align 8               ; 5 uses
  %i.ci = alloca [16 x i8], align 8               ; 6 uses
  %i.cj = alloca [40 x i8], align 8               ; 7 uses
  %i.ck = alloca [8 x i8], align 8                ; 4 uses
  %i.cl = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.0154.sroa.0 = alloca [64 x i8], align 8  ; 5 uses
  %i.cm = alloca [24 x i8], align 8               ; 6 uses
  %i.cn = alloca [32 x i8], align 8               ; 4 uses
  %i.co = alloca [40 x i8], align 8               ; 7 uses
  %i.cp = alloca [8 x i8], align 8                ; 4 uses
  %i.cq = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.0148 = alloca [96 x i8], align 8         ; 5 uses
  %i.cr = alloca [32 x i8], align 8               ; 4 uses
  %i.cs = alloca [16 x i8], align 8               ; 7 uses
  %i.ct = alloca [40 x i8], align 8               ; 7 uses
  %i.cu = alloca [8 x i8], align 8                ; 4 uses
  %i.cv = alloca [24 x i8], align 8               ; 9 uses
  %i.cw = alloca [24 x i8], align 8               ; 8 uses
  %i.cx = alloca [32 x i8], align 8               ; 4 uses
  %i.cy = alloca [32 x i8], align 8               ; 8 uses
  %i.cz = alloca [32 x i8], align 8               ; 4 uses
  %i.da = alloca [40 x i8], align 8               ; 7 uses
  %i.db = alloca [8 x i8], align 8                ; 4 uses
  %i.dc = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.0130 = alloca [96 x i8], align 8         ; 5 uses
  %i.dd = alloca [32 x i8], align 8               ; 4 uses
  %i.de = alloca [16 x i8], align 8               ; 5 uses
  %i.df = alloca [16 x i8], align 8               ; 5 uses
  %i.dg = alloca [24 x i8], align 8               ; 2 uses
  %i.dh = alloca [24 x i8], align 8               ; 6 uses
  %i.di = alloca [16 x i8], align 8               ; 7 uses
  %i.dj = alloca [40 x i8], align 8               ; 7 uses
  %i.dk = alloca [8 x i8], align 8                ; 4 uses
  %i.dl = alloca [24 x i8], align 8               ; 9 uses
  %i.dm = alloca [24 x i8], align 8               ; 8 uses
  %i.dn = alloca [32 x i8], align 8               ; 4 uses
  %i.do = alloca [32 x i8], align 8               ; 8 uses
  %i.dp = alloca [32 x i8], align 8               ; 4 uses
  %i.dq = alloca [40 x i8], align 8               ; 7 uses
  %i.dr = alloca [8 x i8], align 8                ; 4 uses
  %i.ds = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.0112 = alloca [96 x i8], align 8         ; 5 uses
  %i.dt = alloca [32 x i8], align 8               ; 4 uses
  %i.du = alloca [16 x i8], align 8               ; 5 uses
  %i.dv = alloca [16 x i8], align 8               ; 5 uses
  %i.dw = alloca [24 x i8], align 8               ; 2 uses
  %i.dx = alloca [24 x i8], align 8               ; 6 uses
  %i.dy = alloca [16 x i8], align 8               ; 7 uses
  %i.dz = alloca [40 x i8], align 8               ; 7 uses
  %i.ea = alloca [8 x i8], align 8                ; 4 uses
  %i.eb = alloca [24 x i8], align 8               ; 9 uses
  %i.ec = alloca [24 x i8], align 8               ; 8 uses
  %i.ed = alloca [32 x i8], align 8               ; 4 uses
  %i.ee = alloca [32 x i8], align 8               ; 8 uses
  %i.ef = alloca [24 x i8], align 8               ; 7 uses
  %i.eg = alloca [24 x i8], align 8               ; 7 uses
  %i.eh = alloca [32 x i8], align 8               ; 8 uses
  %i.ei = alloca [24 x i8], align 8               ; 7 uses
  %i.ej = alloca [32 x i8], align 8               ; 6 uses
  %i.ek = alloca [32 x i8], align 8               ; 8 uses
  %i.el = alloca [128 x i8], align 8              ; 14 uses
  %i.em = alloca [24 x i8], align 8               ; 6 uses
  %i.en = alloca [40 x i8], align 8               ; 8 uses
  %i.eo = alloca [16 x i8], align 8               ; 9 uses
  %i.ep = alloca [8 x i8], align 8                ; 8 uses
  %i.eq = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.014.sroa.0 = alloca [64 x i8], align 8   ; 5 uses
  %i.er = alloca [32 x i8], align 8               ; 6 uses
  %i.es = alloca [32 x i8], align 8               ; 5 uses
  %i.et = alloca [64 x i8], align 8               ; 9 uses
  %i.eu = alloca [24 x i8], align 8               ; 6 uses
  %i.ev = alloca [40 x i8], align 8               ; 8 uses
  %i.ew = alloca [16 x i8], align 8               ; 9 uses
  %i.ex = alloca [8 x i8], align 8                ; 8 uses
  %i.ey = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.04.sroa.0 = alloca [64 x i8], align 8    ; 5 uses
  %i.ez = alloca [32 x i8], align 8               ; 6 uses
  %i.fa = alloca [32 x i8], align 8               ; 3 uses
  %i.fb = alloca [24 x i8], align 8               ; 37 uses
  %i.fc = alloca [24 x i8], align 8               ; 4 uses
  %i.fd = alloca [40 x i8], align 8               ; 7 uses
  %i.fe = alloca [16 x i8], align 8               ; 6 uses
  %i.ff = alloca [8 x i8], align 8                ; 5 uses
  %i.fg = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.0.sroa.0 = alloca [64 x i8], align 8     ; 5 uses
  %i.fh = alloca [16 x i8], align 8               ; 6 uses
  %i.fi = alloca [16 x i8], align 8               ; 6 uses
  %i.fj = alloca [16 x i8], align 8               ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fl = load ptr, ptr %i.fk, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.fm = load i64, ptr %i.fl, align 8, !noundef !5 ; 2 uses
  %i.fn = icmp ne i64 %i.fm, 0
  tail call void @llvm.assume(i1 %i.fn)
  %i.fo = add i64 %i.fm, 1                        ; 2 uses
  store i64 %i.fo, ptr %i.fl, align 8
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2379)
  %i.fq = load ptr, ptr %2, align 8, !alias.scope !2380, !nonnull !5, !noundef !5 ; 12 uses
  %i.fr = load i64, ptr %i.fq, align 8, !noalias !2381, !noundef !5 ; 2 uses
  %i.fs = icmp ne i64 %i.fr, 0
  tail call void @llvm.assume(i1 %i.fs)
  %i.ft = add i64 %i.fr, 1                        ; 2 uses
  store i64 %i.ft, ptr %i.fq, align 8, !noalias !2381
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %bb.d, label %bb.e, !prof !4

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !alias.scope !2380, !noundef !5 ; 13 uses
  %.not.i.i = icmp eq ptr %i.fw, null             ; 4 uses
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fx = load i64, ptr %i.fw, align 8, !noalias !2381, !noundef !5 ; 2 uses
  %i.fy = icmp ne i64 %i.fx, 0
  tail call void @llvm.assume(i1 %i.fy)
  %i.fz = add i64 %i.fx, 1                        ; 2 uses
  store i64 %i.fz, ptr %i.fw, align 8, !noalias !2381
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %bb.h, label %bb.g, !prof !4

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !alias.scope !2380, !nonnull !5, !noundef !5 ; 12 uses
  %i.gd = load i64, ptr %i.gc, align 8, !noalias !2381, !noundef !5 ; 2 uses
  %i.ge = icmp ne i64 %i.gd, 0
  tail call void @llvm.assume(i1 %i.ge)
  %i.gf = add i64 %i.gd, 1                        ; 2 uses
  store i64 %i.gf, ptr %i.gc, align 8, !noalias !2381
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %bb.i, label %bb.j, !prof !4

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !2380, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2378
  store i64 1, ptr %i.t, align 8, !noalias !2378
  %i.gj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 1, ptr %i.gj, align 8, !noalias !2378
  %i.gk = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.fl, ptr %i.gk, align 8, !noalias !2378
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.fq, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2378
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.gc, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !2378
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %i.fw, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !2378
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store i64 %i.gi, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !2378
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !2382
  %i.gl = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #31, !noalias !2382 ; 6 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %bb.k, label %_RINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB6_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE8callbackNCNvXB13_B11_NtB8_9Component4view0NtNtNtCsey8dOKI5XLb_7web_sys8features14gen_InputEvent10InputEventNtB13_3MsgEB15_.exit, !prof !4

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #32
          to label %.noexc.i unwind label %bb.l, !noalias !2378

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc7RcInnerNCINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB1k_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE8callbackNCNvXB2i_B2g_NtB1m_9Component4view0NtNtNtCsey8dOKI5XLb_7web_sys8features14gen_InputEvent10InputEventNtB2i_3MsgE0EEB2k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.t) #33
          to label %common.resume unwind label %bb.m, !noalias !2378

bb.m:                                             ; preds = %bb.l
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !2378
  unreachable

common.resume:                                    ; preds = %bb.z, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs9OLX912zl7o_3yew8callback8CallbackNtNtNtCsey8dOKI5XLb_7web_sys8features14gen_InputEvent10InputEventEECsemnSGAKhbl_26candle_wasm_example_llama2.exit921, %bb.qb, %.thread, %bb.nw, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.gn, %bb.l ], [ %.pn379.pn982, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs9OLX912zl7o_3yew8callback8CallbackNtNtNtCsey8dOKI5XLb_7web_sys8features14gen_InputEvent10InputEventEECsemnSGAKhbl_26candle_wasm_example_llama2.exit921 ], [ %.pn379.pn.pn, %bb.z ], [ %.pn379.pn.pn976, %bb.qb ], [ %.pn379.pn.pn976, %.thread ], [ %i.aig, %bb.nw ]
  resume { ptr, i32 } %common.resume.op

_RINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB6_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE8callbackNCNvXB13_B11_NtB8_9Component4view0NtNtNtCsey8dOKI5XLb_7web_sys8features14gen_InputEvent10InputEventNtB13_3MsgEB15_.exit: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gl, ptr noundef nonnull align 8 dereferenceable(56) %i.t, i64 56, i1 false), !noalias !2378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2378
  store ptr %i.gl, ptr %i.fj, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store ptr @4, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gr = load ptr, ptr %i.gq, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.gs = load i64, ptr %i.gr, align 8, !noundef !5 ; 2 uses
  %i.gt = icmp ne i64 %i.gs, 0
  tail call void @llvm.assume(i1 %i.gt)
  %i.gu = add i64 %i.gs, 1                        ; 2 uses
  store i64 %i.gu, ptr %i.gr, align 8
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %bb.n, label %bb.o, !prof !4

bb.n:                                             ; preds = %_RINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB6_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE8callbackNCNvXB13_B11_NtB8_9Component4view0NtNtNtCsey8dOKI5XLb_7web_sys8features14gen_InputEvent10InputEventNtB13_3MsgEB15_.exit
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %_RINvMs3_NtNtNtCs9OLX912zl7o_3yew4html9component5scopeINtB6_5ScopeNtNtCsemnSGAKhbl_26candle_wasm_example_llama23app3AppE8callbackNCNvXB13_B11_NtB8_9Component4view0NtNtNtCsey8dOKI5XLb_7web_sys8features14gen_InputEvent10InputEventNtB13_3MsgEB15_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi)
  %i.gw = load i64, ptr %i.fq, align 8, !noalias !2383, !noundef !5 ; 2 uses
  %i.gx = icmp ne i64 %i.gw, 0
  tail call void @llvm.assume(i1 %i.gx)
  %i.gy = add i64 %i.gw, 1                        ; 2 uses
  store i64 %i.gy, ptr %i.fq, align 8, !noalias !2383
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %bb.p, label %bb.q, !prof !4

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.o
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ha = load i64, ptr %i.fw, align 8, !noalias !2383, !noundef !5 ; 2 uses
  %i.hb = icmp ne i64 %i.ha, 0
  tail call void @llvm.assume(i1 %i.hb)
  %i.hc = add i64 %i.ha, 1                        ; 2 uses
  store i64 %i.hc, ptr %i.fw, align 8, !noalias !2383
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %bb.t, label %bb.s, !prof !4

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.he = load i64, ptr %i.gc, align 8, !noalias !2383, !noundef !5 ; 2 uses
  %i.hf = icmp ne i64 %i.he, 0
  tail call void @llvm.assume(i1 %i.hf)
  %i.hg = add i64 %i.he, 1                        ; 2 uses
  store i64 %i.hg, ptr %i.gc, align 8, !noalias !2383
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %bb.u, label %bb.v, !prof !4

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.trap()
  unreachable

end_hunk_0
begin_hunk_1_@_RNvXNtCsemnSGAKhbl_26candle_wasm_example_llama23appNtB2_3AppNtNtNtCs9OLX912zl7o_3yew4html9component9Component4view:bb.a
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  store i64 8, ptr %.sroa.529.0..sroa_idx, align 8
  store i32 1, ptr %i.ek, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr @70, ptr %i.jp, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 1, ptr %i.jq, align 8
  store i64 0, ptr %i.ei, align 8
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  %i.jr = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #31 ; 6 uses
  %i.js = icmp eq ptr %i.jr, null
  br i1 %i.js, label %bb.ax, label %bb.az, !prof !4

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #32
          to label %.noexc555 unwind label %bb.ay

.noexc555:                                        ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ei) #33
          to label %.body469 unwind label %bb.jy

bb.az:                                            ; preds = %bb.aw
  store i64 1, ptr %i.jr, align 8
  %.sroa.45.0..sroa_idx.i552 = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i552, align 8
  %.sroa.56.0..sroa_idx.i553 = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx.i553, align 8
  %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i554 = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  store i32 0, ptr %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i554, align 8
  %.sroa.032.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.032.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  store i64 1, ptr %i.be, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 1, ptr %i.ju, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 0, ptr %i.jv, align 8
  %.sroa.032.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr @75, ptr %.sroa.032.sroa.4.0..sroa_idx, align 8
  %.sroa.032.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store i64 2, ptr %.sroa.032.sroa.5.0..sroa_idx, align 8
  %.sroa.032.sroa.7.sroa.4.0..sroa.032.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  store i32 1, ptr %.sroa.032.sroa.7.sroa.4.0..sroa.032.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.032.sroa.7.sroa.6.0..sroa.032.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  store i64 0, ptr %.sroa.032.sroa.7.sroa.6.0..sroa.032.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.032.sroa.7.sroa.7.0..sroa.032.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  store ptr @76, ptr %.sroa.032.sroa.7.sroa.7.0..sroa.032.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.032.sroa.7.sroa.8.0..sroa.032.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  store i64 8, ptr %.sroa.032.sroa.7.sroa.8.0..sroa.032.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  store ptr %i.jr, ptr %.sroa.533.0..sroa_idx, align 8
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 120
  store ptr null, ptr %.sroa.634.0..sroa_idx, align 8
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 136
  store ptr null, ptr %.sroa.836.0..sroa_idx, align 8
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !2389
  %i.jw = tail call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 152, i64 noundef 8) #31, !noalias !2389 ; 3 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %bb.ba, label %bb.bd, !prof !4

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #32
          to label %.noexc557 unwind label %bb.bb

.noexc557:                                        ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.ba
  %i.jy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc7RcInnerNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag4VTagEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.be) #33
          to label %.body469 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

.body469:                                         ; preds = %bb.bb, %bb.pi, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.pi ], [ %i.jt, %bb.ay ], [ %i.jy, %bb.bb ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ek) #33
          to label %bb.pj unwind label %bb.jy

bb.bd:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.jw, ptr noundef nonnull align 8 dereferenceable(152) %i.be, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  store i32 0, ptr %i.ej, align 8
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %i.jw, ptr %.sroa.231.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i64 0, ptr %i.ka, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store ptr @77, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  store i64 37, ptr %.sroa.555.0..sroa_idx, align 8
  store i32 1, ptr %i.eh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  %i.kb = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr @70, ptr %i.kb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i64 1, ptr %i.kc, align 8
  store i64 0, ptr %i.eg, align 8
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  %i.kd = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #31 ; 6 uses
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %bb.be, label %bb.bg, !prof !4

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #32
          to label %.noexc561 unwind label %bb.bf

.noexc561:                                        ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %bb.be
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.eg) #33
          to label %.body466 unwind label %bb.jy

bb.bg:                                            ; preds = %bb.bd
  store i64 1, ptr %i.kd, align 8
  %.sroa.45.0..sroa_idx.i558 = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i558, align 8
  %.sroa.56.0..sroa_idx.i559 = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx.i559, align 8
  %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i560 = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  store i32 0, ptr %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i560, align 8
  %.sroa.060.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.060.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  store i64 1, ptr %i.bd, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 1, ptr %i.kg, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 0, ptr %i.kh, align 8
  %.sroa.060.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr @79, ptr %.sroa.060.sroa.4.0..sroa_idx, align 8
  %.sroa.060.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i64 2, ptr %.sroa.060.sroa.5.0..sroa_idx, align 8
  %.sroa.060.sroa.7.sroa.4.0..sroa.060.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  store i32 1, ptr %.sroa.060.sroa.7.sroa.4.0..sroa.060.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.060.sroa.7.sroa.6.0..sroa.060.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 88
  store i64 0, ptr %.sroa.060.sroa.7.sroa.6.0..sroa.060.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.060.sroa.7.sroa.7.0..sroa.060.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  store ptr @80, ptr %.sroa.060.sroa.7.sroa.7.0..sroa.060.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.060.sroa.7.sroa.8.0..sroa.060.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  store i64 7, ptr %.sroa.060.sroa.7.sroa.8.0..sroa.060.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  store ptr %i.kd, ptr %.sroa.561.0..sroa_idx, align 8
  %.sroa.662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 120
  store ptr null, ptr %.sroa.662.0..sroa_idx, align 8
  %.sroa.864.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 136
  store ptr null, ptr %.sroa.864.0..sroa_idx, align 8
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !2390
  %i.ki = tail call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 152, i64 noundef 8) #31, !noalias !2390 ; 3 uses
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %bb.bh, label %bb.bk, !prof !4

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #32
          to label %.noexc563 unwind label %bb.bi

.noexc563:                                        ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %bb.bh
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc7RcInnerNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag4VTagEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.bd) #33
          to label %.body466 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

.body466:                                         ; preds = %bb.bi, %bb.bf
  %.pn = phi { ptr, i32 } [ %i.kf, %bb.bf ], [ %i.kk, %bb.bi ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.eh) #33
          to label %bb.pi unwind label %bb.jy

bb.bk:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ki, ptr noundef nonnull align 8 dereferenceable(152) %i.bd, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.el, ptr noundef nonnull align 8 dereferenceable(32) %i.ek, i64 32, i1 false)
  %i.km = getelementptr inbounds nuw i8, ptr %i.el, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.km, ptr noundef nonnull align 8 dereferenceable(32) %i.ej, i64 32, i1 false)
  %i.kn = getelementptr inbounds nuw i8, ptr %i.el, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kn, ptr noundef nonnull align 8 dereferenceable(32) %i.eh, i64 32, i1 false)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.el, i64 96 ; 2 uses
  store i32 0, ptr %i.ko, align 8
  %.sroa.258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 104
  store ptr %i.ki, ptr %.sroa.258.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !2391
  %i.kp = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 128, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !2391 ; 6 uses
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %3, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.preheader

3:                                                ; preds = %bb.bk
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 128) #32
          to label %.noexc565 unwind label %4

.noexc565:                                        ; preds = %3
  unreachable

4:                                                ; preds = %3, %bb.bl, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.preheader
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %.body477

.body477:                                         ; preds = %bb.bo, %4
  %eh.lpad-body478 = phi { ptr, i32 } [ %5, %4 ], [ %i.kz, %bb.bo ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners9ListenersECsemnSGAKhbl_26candle_wasm_example_llama2(ptr null, i64 undef) #33
          to label %bb.pd unwind label %bb.jy

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.preheader: ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2392
  call fastcc void @_RNvXsa_NtNtCs9OLX912zl7o_3yew11virtual_dom5vnodeNtB5_5VNodeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.el), !noalias !2393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kp, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !2392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2392
  call fastcc void @_RNvXsa_NtNtCs9OLX912zl7o_3yew11virtual_dom5vnodeNtB5_5VNodeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.km), !noalias !2393
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kr, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !2392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2392
  call fastcc void @_RNvXsa_NtNtCs9OLX912zl7o_3yew11virtual_dom5vnodeNtB5_5VNodeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kn), !noalias !2393
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ks, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !2392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2392
  call fastcc void @_RNvXsa_NtNtCs9OLX912zl7o_3yew11virtual_dom5vnodeNtB5_5VNodeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ko), !noalias !2393
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kt, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !2392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2392
  store i64 4, ptr %i.em, align 8, !noalias !2394
  %.sroa.4968.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr %i.kp, ptr %.sroa.4968.0..sroa_idx, align 8, !noalias !2394
  %.sroa.5969.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store i64 4, ptr %.sroa.5969.0..sroa_idx, align 8, !noalias !2394
  %i.ku = invoke noundef ptr @_RNvMs1_NtNtNtCs9OLX912zl7o_3yew4html9component8childrenINtB5_16ChildrenRendererNtNtNtBb_11virtual_dom5vnode5VNodeE3newCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.em)
          to label %bb.bl unwind label %4

bb.bl:                                            ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  invoke void @_RNvXs6_NtNtNtCs9OLX912zl7o_3yew4html9component8childrenNtNtNtBb_11virtual_dom5vlist5VListINtNtCsf3Ta7LF998c_4core7convert4FromINtB5_16ChildrenRendererNtNtBV_5vnode5VNodeEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bc, ptr noundef %i.ku)
          to label %bb.bm unwind label %4

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i64 1, ptr %i.bb, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 1, ptr %i.kv, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kw, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 32, i1 false)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !2395
  %i.kx = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #31, !noalias !2395 ; 3 uses
  %i.ky = icmp eq ptr %i.kx, null
  br i1 %i.ky, label %bb.bn, label %bb.bq, !prof !4

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #32
          to label %.noexc566 unwind label %bb.bo

.noexc566:                                        ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bn
  %i.kz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc7RcInnerNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vlist5VListEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bb) #33
          to label %.body477 unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.la = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.bq:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kx, ptr noundef nonnull align 8 dereferenceable(48) %i.bb, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %.sroa.014.sroa.0.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.014.sroa.0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014.sroa.0.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.eq, i64 24, i1 false)
  %i.lb = load ptr, ptr %i.ep, align 8, !nonnull !5, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.014.sroa.0, ptr noundef nonnull align 8 dereferenceable(40) %i.en, i64 40, i1 false)
  %i.lc = load ptr, ptr %i.eo, align 8, !noundef !5
  %i.ld = load i64, ptr %i.jl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i64 1, ptr %i.ba, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 1, ptr %i.le, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lf, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.014.sroa.0, i64 64, i1 false)
  %.sroa.014.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  store i32 3, ptr %.sroa.014.sroa.5.0..sroa_idx, align 8
  %.sroa.014.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  store ptr %i.kx, ptr %.sroa.014.sroa.7.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  store ptr %i.lb, ptr %.sroa.515.0..sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 120
  store ptr null, ptr %.sroa.616.0..sroa_idx, align 8
  %.sroa.818.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 136
  store ptr %i.lc, ptr %.sroa.818.0..sroa_idx, align 8
  %.sroa.919.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 144
  store i64 %i.ld, ptr %.sroa.919.0..sroa_idx, align 8
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !2396
  %i.lg = call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 152, i64 noundef 8) #31, !noalias !2396 ; 3 uses
  %i.lh = icmp eq ptr %i.lg, null
  br i1 %i.lh, label %bb.br, label %bb.bu, !prof !4

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #32
          to label %.noexc568 unwind label %bb.bs

.noexc568:                                        ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.br
  %i.li = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc7RcInnerNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag4VTagEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.ba) #33
          to label %.body463 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

.body463:                                         ; preds = %bb.bs, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit906
  %.pn346 = phi { ptr, i32 } [ %eh.lpad-body478, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit906 ], [ %i.li, %bb.bs ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueANtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodej4_ECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(128) %i.el) #33
          to label %bb.pc unwind label %bb.jy

bb.bu:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.lg, ptr noundef nonnull align 8 dereferenceable(152) %i.ba, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %i.lk = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr %i.lg, ptr %i.lk, align 8
  store i32 0, ptr %i.er, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.sroa.0)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.el)
          to label %bb.bv unwind label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %i.ll = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ll)
          to label %bb.bw unwind label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.lm = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.lm)
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.ln = getelementptr inbounds nuw i8, ptr %i.el, i64 96
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ln)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueANtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodej4_ECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.bz

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueANtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodej4_ECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.es, ptr noundef nonnull align 8 dereferenceable(32) %i.er, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr @68, ptr %i.lo, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i64 1, ptr %i.lp, align 8
  store i64 0, ptr %i.ef, align 8
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  %i.lq = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #31 ; 6 uses
  %i.lr = icmp eq ptr %i.lq, null
  br i1 %i.lr, label %bb.cb, label %bb.cd, !prof !4

bb.by:                                            ; preds = %.lr.ph
  %i.ls = add nuw nsw i64 %.sroa.0.1.i.i1113, 1   ; 2 uses
  %i.lt = icmp eq i64 %i.ls, 4
  br i1 %i.lt, label %.body570, label %.lr.ph

bb.bz:                                            ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bu
  %i.lu = phi i1 [ false, %bb.bu ], [ false, %bb.bv ], [ false, %bb.bw ], [ true, %bb.bx ]
  %.lcssa1117 = phi i64 [ 1, %bb.bu ], [ 2, %bb.bv ], [ 3, %bb.bw ], [ 4, %bb.bx ]
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br i1 %i.lu, label %.body570, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bz, %bb.by
  %.sroa.0.1.i.i1113 = phi i64 [ %i.ls, %bb.by ], [ %.lcssa1117, %bb.bz ] ; 2 uses
  %i.lw = getelementptr inbounds nuw [32 x i8], ptr %i.el, i64 %.sroa.0.1.i.i1113
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.lw) #33
          to label %bb.by unwind label %bb.ca

bb.ca:                                            ; preds = %.lr.ph
  %i.lx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

.body570:                                         ; preds = %bb.by, %bb.bz
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.er) #33
          to label %bb.pc unwind label %bb.jy

bb.cb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueANtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodej4_ECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #32
          to label %.noexc575 unwind label %bb.cc

.noexc575:                                        ; preds = %bb.cb
  unreachable

bb.cc:                                            ; preds = %bb.cb
  %i.ly = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsjlHezul7jxg_14implicit_clone6unsync6string7IStringECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ef) #33
          to label %.body460 unwind label %bb.jy

bb.cd:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueANtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodej4_ECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  store i64 1, ptr %i.lq, align 8
  %.sroa.45.0..sroa_idx.i572 = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i572, align 8
  %.sroa.56.0..sroa_idx.i573 = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx.i573, align 8
  %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i574 = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  store i32 0, ptr %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i574, align 8
  %.sroa.082.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.082.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  store i64 1, ptr %i.az, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 1, ptr %i.lz, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 0, ptr %i.ma, align 8
  %.sroa.082.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.082.sroa.4.0..sroa_idx, align 8
  %.sroa.082.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store i64 0, ptr %.sroa.082.sroa.5.0..sroa_idx, align 8
  %.sroa.082.sroa.7.sroa.4.0..sroa.082.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  store i32 1, ptr %.sroa.082.sroa.7.sroa.4.0..sroa.082.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.082.sroa.7.sroa.6.0..sroa.082.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  store i64 0, ptr %.sroa.082.sroa.7.sroa.6.0..sroa.082.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.082.sroa.7.sroa.7.0..sroa.082.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  store ptr @81, ptr %.sroa.082.sroa.7.sroa.7.0..sroa.082.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.082.sroa.7.sroa.8.0..sroa.082.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  store i64 82, ptr %.sroa.082.sroa.7.sroa.8.0..sroa.082.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  store ptr %i.lq, ptr %.sroa.583.0..sroa_idx, align 8
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  store ptr null, ptr %.sroa.684.0..sroa_idx, align 8
  %.sroa.886.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 136
  store ptr null, ptr %.sroa.886.0..sroa_idx, align 8
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !2397
  %i.mb = call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 152, i64 noundef 8) #31, !noalias !2397 ; 3 uses
  %i.mc = icmp eq ptr %i.mb, null
  br i1 %i.mc, label %bb.ce, label %bb.ch, !prof !4

bb.ce:                                            ; preds = %bb.cd
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #32
          to label %.noexc577 unwind label %bb.cf

.noexc577:                                        ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %bb.ce
  %i.md = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc7RcInnerNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag4VTagEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.az) #33
          to label %.body460 unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.me = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

.body460:                                         ; preds = %bb.cf, %bb.cc
  %.pn348 = phi { ptr, i32 } [ %i.ly, %bb.cc ], [ %i.md, %bb.cf ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.es) #33
          to label %bb.pc unwind label %bb.jy

bb.ch:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.mb, ptr noundef nonnull align 8 dereferenceable(152) %i.az, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.et, ptr noundef nonnull align 8 dereferenceable(32) %i.es, i64 32, i1 false)
  %i.mf = getelementptr inbounds nuw i8, ptr %i.et, i64 32 ; 3 uses
  store i32 0, ptr %i.mf, align 8
  %.sroa.280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  store ptr %i.mb, ptr %.sroa.280.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !2398
  %i.mg = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 64, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !2398 ; 4 uses
  %i.mh = icmp eq ptr %i.mg, null
  br i1 %i.mh, label %6, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i579.preheader

6:                                                ; preds = %bb.ch
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 64) #32
          to label %.noexc583 unwind label %7

.noexc583:                                        ; preds = %6
  unreachable

7:                                                ; preds = %6, %bb.ci, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i579.preheader
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %.body474

.body474:                                         ; preds = %bb.cl, %7
  %eh.lpad-body475 = phi { ptr, i32 } [ %8, %7 ], [ %i.mo, %bb.cl ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom9listeners9ListenersECsemnSGAKhbl_26candle_wasm_example_llama2(ptr null, i64 undef) #33
          to label %bb.ox unwind label %bb.jy

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i579.preheader: ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2399
  call fastcc void @_RNvXsa_NtNtCs9OLX912zl7o_3yew11virtual_dom5vnodeNtB5_5VNodeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.et), !noalias !2400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mg, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !2399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2399
  call fastcc void @_RNvXsa_NtNtCs9OLX912zl7o_3yew11virtual_dom5vnodeNtB5_5VNodeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.mf), !noalias !2400
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mi, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !2399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2399
  store i64 2, ptr %i.eu, align 8, !noalias !2401
  %.sroa.4971.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.mg, ptr %.sroa.4971.0..sroa_idx, align 8, !noalias !2401
  %.sroa.5972.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i64 2, ptr %.sroa.5972.0..sroa_idx, align 8, !noalias !2401
  %i.mj = invoke noundef ptr @_RNvMs1_NtNtNtCs9OLX912zl7o_3yew4html9component8childrenINtB5_16ChildrenRendererNtNtNtBb_11virtual_dom5vnode5VNodeE3newCsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.eu)
          to label %bb.ci unwind label %7

bb.ci:                                            ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsemnSGAKhbl_26candle_wasm_example_llama2.exit.i579.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  invoke void @_RNvXs6_NtNtNtCs9OLX912zl7o_3yew4html9component8childrenNtNtNtBb_11virtual_dom5vlist5VListINtNtCsf3Ta7LF998c_4core7convert4FromINtB5_16ChildrenRendererNtNtBV_5vnode5VNodeEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ay, ptr noundef %i.mj)
          to label %bb.cj unwind label %7

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i64 1, ptr %i.ax, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 1, ptr %i.mk, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ml, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 32, i1 false)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !2402
  %i.mm = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #31, !noalias !2402 ; 3 uses
  %i.mn = icmp eq ptr %i.mm, null
  br i1 %i.mn, label %bb.ck, label %bb.cn, !prof !4

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #32
          to label %.noexc585 unwind label %bb.cl

.noexc585:                                        ; preds = %bb.ck
  unreachable

bb.cl:                                            ; preds = %bb.ck
  %i.mo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc7RcInnerNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vlist5VListEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ax) #33
          to label %.body474 unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.cn:                                            ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mm, ptr noundef nonnull align 8 dereferenceable(48) %i.ax, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %.sroa.04.sroa.0.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.sroa.0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.sroa.0.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ey, i64 24, i1 false)
  %i.mq = load ptr, ptr %i.ex, align 8, !nonnull !5, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.sroa.0, ptr noundef nonnull align 8 dereferenceable(40) %i.ev, i64 40, i1 false)
  %i.mr = load ptr, ptr %i.ew, align 8, !noundef !5
  %i.ms = load i64, ptr %i.jd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i64 1, ptr %i.aw, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 1, ptr %i.mt, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.mu, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.04.sroa.0, i64 64, i1 false)
  %.sroa.04.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  store i32 3, ptr %.sroa.04.sroa.5.0..sroa_idx, align 8
  %.sroa.04.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  store ptr %i.mm, ptr %.sroa.04.sroa.7.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  store ptr %i.mq, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  store ptr null, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 136
  store ptr %i.mr, ptr %.sroa.88.0..sroa_idx, align 8
  %.sroa.99.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 144
  store i64 %i.ms, ptr %.sroa.99.0..sroa_idx, align 8
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !2403
  %i.mv = call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 152, i64 noundef 8) #31, !noalias !2403 ; 3 uses
  %i.mw = icmp eq ptr %i.mv, null
  br i1 %i.mw, label %bb.co, label %bb.cr, !prof !4

bb.co:                                            ; preds = %bb.cn
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #32
          to label %.noexc587 unwind label %bb.cp

.noexc587:                                        ; preds = %bb.co
  unreachable

bb.cp:                                            ; preds = %bb.co
  %i.mx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc2rc7RcInnerNtNtNtCs9OLX912zl7o_3yew11virtual_dom4vtag4VTagEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.aw) #33
          to label %.body457 unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.my = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

.body457:                                         ; preds = %bb.cp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit902
  %.pn352 = phi { ptr, i32 } [ %eh.lpad-body475, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit902 ], [ %i.mx, %bb.cp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueANtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodej2_ECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(64) %i.et) #33
          to label %.body394 unwind label %bb.jy

bb.cr:                                            ; preds = %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.mv, ptr noundef nonnull align 8 dereferenceable(152) %i.aw, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr %i.mv, ptr %i.mz, align 8
  store i32 0, ptr %i.ez, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.sroa.0)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.et)
          to label %bb.cs unwind label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.na = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.na)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueANtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodej2_ECsemnSGAKhbl_26candle_wasm_example_llama2.exit unwind label %bb.ct

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueANtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodej2_ECsemnSGAKhbl_26candle_wasm_example_llama2.exit: ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %i.ez, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez)
  %i.nb = load i64, ptr %i.ix, align 8, !alias.scope !2404, !noundef !5 ; 4 uses
  %i.nc = load i64, ptr %i.fb, align 8, !range !11, !alias.scope !2404, !noundef !5 ; 2 uses
  %i.nd = icmp eq i64 %i.nb, %i.nc
  br i1 %i.nd, label %bb.cw, label %bb.da

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.ne = phi i1 [ false, %bb.cr ], [ true, %bb.cs ]
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br i1 %i.ne, label %.body590, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.mf) #33
          to label %.body590 unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ng = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

.body590:                                         ; preds = %bb.ct, %bb.cu
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ez) #33
          to label %.body394 unwind label %bb.jy

bb.cw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueANtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodej2_ECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fb)
          to label %._crit_edge unwind label %bb.cx, !noalias !2405

._crit_edge:                                      ; preds = %bb.cw
  %.pre = load i64, ptr %i.fb, align 8, !range !11, !alias.scope !2406
  br label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.nh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fa) #33
          to label %.body394 unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ni = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

.body394:                                         ; preds = %bb.nl, %bb.nh, %bb.mp, %bb.md, %bb.lz, %bb.ln, %bb.lj, %bb.ky, %bb.ju, %bb.ji, %bb.je, %bb.iv, %bb.hm, %bb.hi, %bb.he, %bb.gq, %bb.fh, %bb.fd, %bb.ez, %bb.el, %bb.dc, %bb.cz, %bb.cx, %.body436, %bb.gu, %.body445, %bb.ep, %.body454, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit874, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit862, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit858, %bb.mk, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit866, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit870, %bb.kb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit, %bb.jp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit878, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit886, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit894, %.body590, %.body457, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit914
  %.sroa.0210.0 = phi i1 [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit914 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit858 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit862 ], [ false, %bb.mk ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit866 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit870 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit874 ], [ false, %bb.kb ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit ], [ false, %bb.jp ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit878 ], [ false, %bb.lz ], [ %.sroa.0210.2, %.body436 ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit886 ], [ true, %bb.gu ], [ %.sroa.0210.1, %bb.cz ], [ true, %.body445 ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit894 ], [ true, %bb.ep ], [ false, %bb.nl ], [ true, %.body454 ], [ true, %.body590 ], [ true, %.body457 ], [ false, %bb.mp ], [ false, %bb.md ], [ false, %bb.ln ], [ false, %bb.ky ], [ false, %bb.ju ], [ false, %bb.ji ], [ false, %bb.iv ], [ true, %bb.gq ], [ true, %bb.el ], [ true, %bb.cx ], [ false, %bb.nh ], [ true, %bb.dc ], [ true, %bb.ez ], [ true, %bb.fd ], [ true, %bb.fh ], [ true, %bb.he ], [ true, %bb.hi ], [ true, %bb.hm ], [ false, %bb.je ], [ false, %bb.lj ]
  %.sroa.0211.1 = phi i1 [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit914 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit858 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit862 ], [ false, %bb.mk ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit866 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit870 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit874 ], [ false, %bb.kb ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit ], [ false, %bb.jp ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit878 ], [ false, %bb.lz ], [ false, %.body436 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit886 ], [ false, %bb.gu ], [ %.sroa.0211.2, %bb.cz ], [ %.sroa.0211.3, %.body445 ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit894 ], [ true, %bb.ep ], [ false, %bb.nl ], [ true, %.body454 ], [ true, %.body590 ], [ true, %.body457 ], [ false, %bb.mp ], [ false, %bb.md ], [ false, %bb.ln ], [ false, %bb.ky ], [ false, %bb.ju ], [ false, %bb.ji ], [ false, %bb.iv ], [ false, %bb.gq ], [ true, %bb.el ], [ true, %bb.cx ], [ false, %bb.nh ], [ true, %bb.dc ], [ true, %bb.ez ], [ true, %bb.fd ], [ true, %bb.fh ], [ false, %bb.he ], [ false, %bb.hi ], [ false, %bb.hm ], [ false, %bb.je ], [ false, %bb.lj ]
  %.sroa.0212.2 = phi i1 [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit914 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit858 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit862 ], [ false, %bb.mk ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit866 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit870 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit874 ], [ false, %bb.kb ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit ], [ false, %bb.jp ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit878 ], [ false, %bb.lz ], [ false, %.body436 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit886 ], [ false, %bb.gu ], [ %i.nx, %bb.cz ], [ false, %.body445 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit894 ], [ false, %bb.ep ], [ false, %bb.nl ], [ %.sroa.0212.4, %.body454 ], [ true, %.body590 ], [ true, %.body457 ], [ false, %bb.mp ], [ false, %bb.md ], [ false, %bb.ln ], [ false, %bb.ky ], [ false, %bb.ju ], [ false, %bb.ji ], [ false, %bb.iv ], [ false, %bb.gq ], [ false, %bb.el ], [ true, %bb.cx ], [ false, %bb.nh ], [ true, %bb.dc ], [ false, %bb.ez ], [ false, %bb.fd ], [ false, %bb.fh ], [ false, %bb.he ], [ false, %bb.hi ], [ false, %bb.hm ], [ false, %bb.je ], [ false, %bb.lj ]
  %.pn375 = phi { ptr, i32 } [ %.pn348.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit914 ], [ %.pn372.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit858 ], [ %i.afo, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit862 ], [ %i.afl, %bb.mk ], [ %.pn368, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit866 ], [ %.pn366, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit870 ], [ %eh.lpad-body, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit874 ], [ %i.abg, %bb.kb ], [ %i.aat, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit ], [ %i.aaq, %bb.jp ], [ %.pn364, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit878 ], [ %i.aev, %bb.lz ], [ %.pn362, %.body436 ], [ %.pn360, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit886 ], [ %i.uz, %bb.gu ], [ %i.nj, %bb.cz ], [ %.pn358, %.body445 ], [ %.pn356, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs9OLX912zl7o_3yew4html7NodeRefECsemnSGAKhbl_26candle_wasm_example_llama2.exit894 ], [ %i.qq, %bb.ep ], [ %i.aho, %bb.nl ], [ %.pn354, %.body454 ], [ %i.nf, %.body590 ], [ %.pn352, %.body457 ], [ %i.afu, %bb.mp ], [ %i.afb, %bb.md ], [ %i.adv, %bb.ln ], [ %i.acx, %bb.ky ], [ %i.aaz, %bb.ju ], [ %i.aaa, %bb.ji ], [ %i.zc, %bb.iv ], [ %i.uq, %bb.gq ], [ %i.qh, %bb.el ], [ %i.nh, %bb.cx ], [ %i.ahi, %bb.nh ], [ %i.nq, %bb.dc ], [ %i.rk, %bb.ez ], [ %i.rq, %bb.fd ], [ %i.ry, %bb.fh ], [ %i.vt, %bb.he ], [ %i.vz, %bb.hi ], [ %i.wh, %bb.hm ], [ %i.zu, %bb.je ], [ %i.adp, %bb.lj ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeEECsemnSGAKhbl_26candle_wasm_example_llama2(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fb) #33
          to label %.body472 unwind label %bb.jy

bb.cz:                                            ; preds = %.invoke1109, %.invoke, %bb.ms, %bb.mj, %bb.mg, %bb.lb, %bb.jx, %bb.gw, %bb.gv, %bb.er, %bb.eq
  %.sroa.0210.1 = phi i1 [ true, %.invoke ], [ true, %bb.gv ], [ false, %bb.ms ], [ false, %bb.mj ], [ true, %bb.gw ], [ false, %bb.mg ], [ true, %bb.eq ], [ false, %bb.jx ], [ true, %bb.er ], [ true, %.invoke1109 ], [ false, %bb.lb ]
  %.sroa.0211.2 = phi i1 [ false, %.invoke ], [ false, %bb.gv ], [ false, %bb.ms ], [ false, %bb.mj ], [ false, %bb.gw ], [ false, %bb.mg ], [ true, %bb.eq ], [ false, %bb.jx ], [ true, %bb.er ], [ true, %.invoke1109 ], [ false, %bb.lb ]
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %.body394

bb.da:                                            ; preds = %._crit_edge, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueANtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodej2_ECsemnSGAKhbl_26candle_wasm_example_llama2.exit
  %i.nk = phi i64 [ %.pre, %._crit_edge ], [ %i.nc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueANtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodej2_ECsemnSGAKhbl_26candle_wasm_example_llama2.exit ]
  %i.nl = load ptr, ptr %i.iw, align 8, !alias.scope !2404, !nonnull !5, !noundef !5 ; 2 uses
  %i.nm = getelementptr inbounds nuw [32 x i8], ptr %i.nl, i64 %i.nb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nm, ptr noundef nonnull align 8 dereferenceable(32) %i.fa, i64 32, i1 false)
  %i.nn = add i64 %i.nb, 1                        ; 3 uses
  store i64 %i.nn, ptr %i.ix, align 8, !alias.scope !2404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  %i.no = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i64 0, ptr %i.no, align 8
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store ptr @82, ptr %.sroa.4104.0..sroa_idx, align 8
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store i64 16, ptr %.sroa.5105.0..sroa_idx, align 8
  store i32 1, ptr %i.ee, align 8
  %i.np = icmp eq i64 %i.nn, %i.nk
  br i1 %i.np, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9OLX912zl7o_3yew11virtual_dom5vnode5VNodeE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fb)
          to label %._crit_edge1014 unwind label %bb.dc, !noalias !2407

._crit_edge1014:                                  ; preds = %bb.db
  %.pre1015 = load ptr, ptr %i.iw, align 8, !alias.scope !2406
  br label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.nq = landingpad { ptr, i32 }
end_hunk_1
