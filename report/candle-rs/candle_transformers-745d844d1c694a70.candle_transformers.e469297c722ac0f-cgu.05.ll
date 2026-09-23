Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.05?download=true
inline.NumInlined: 3394
inline.NumDeleted: 384
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vlNtB2_12Qwen3VLModel3new:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.67, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.615.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(360) %i.f, i64 360, i1 false)
  store i64 %i.o, ptr %0, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.r, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %2)
  ret void

bb.q:                                             ; preds = %bb.j, %bb.e, %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.r:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.p

bb.s:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vlNtB2_12Qwen3VLModel7forward(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %7, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %10, i64 noundef range(i64 0, 1152921504606846976) %11) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [80 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [80 x i8], align 8                ; 7 uses
  %i.j = alloca [80 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 12 uses
  %i.l = alloca [8 x i8], align 8                 ; 15 uses
  %i.m = alloca [80 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 18 uses
  %i.o = alloca [88 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 19 uses
  %i.q = alloca [8 x i8], align 8                 ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [48 x i8], align 8                ; 5 uses
  %i.u = alloca [48 x i8], align 8                ; 5 uses
  %i.v = alloca [80 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [48 x i8], align 8                ; 14 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [80 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 11 uses
  %.sroa.7578 = alloca [16 x i8], align 8         ; 5 uses
  %i.ab = alloca [80 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 9 uses
  %i.ad = alloca [64 x i8], align 8               ; 11 uses
  %i.ae = alloca [80 x i8], align 8               ; 7 uses
  %i.af = alloca [8 x i8], align 8                ; 5 uses
  %i.ag = alloca [80 x i8], align 8               ; 7 uses
  %i.ah = alloca [8 x i8], align 8                ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 2 uses
  %i.aj = alloca [80 x i8], align 8               ; 6 uses
  %i.ak = alloca [80 x i8], align 8               ; 5 uses
  %i.al = alloca [80 x i8], align 8               ; 7 uses
  %i.am = alloca [80 x i8], align 8               ; 7 uses
  %i.an = alloca [80 x i8], align 8               ; 7 uses
  %i.ao = alloca [80 x i8], align 8               ; 7 uses
  %i.ap = alloca [8 x i8], align 8                ; 8 uses
  %i.aq = alloca [8 x i8], align 8                ; 8 uses
  %i.ar = alloca [24 x i8], align 8               ; 11 uses
  %i.as = alloca [48 x i8], align 8               ; 5 uses
  %i.at = alloca [24 x i8], align 8               ; 10 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 2 uses
  %i.ay = alloca [80 x i8], align 8               ; 5 uses
  %i.az = alloca [80 x i8], align 8               ; 4 uses
  %i.ba = alloca [80 x i8], align 8               ; 7 uses
  %i.bb = alloca [8 x i8], align 8                ; 13 uses
  %i.bc = alloca [80 x i8], align 8               ; 8 uses
  %i.bd = alloca [8 x i8], align 8                ; 11 uses
  %i.be = alloca [80 x i8], align 8               ; 9 uses
  %.sroa.6465 = alloca [24 x i8], align 8         ; 6 uses
  %i.bf = alloca [24 x i8], align 8               ; 9 uses
  %i.bg = alloca [80 x i8], align 8               ; 7 uses
  %.sroa.6456 = alloca [24 x i8], align 8         ; 6 uses
  %i.bh = alloca [24 x i8], align 8               ; 9 uses
  %i.bi = alloca [80 x i8], align 8               ; 7 uses
  %i.bj = alloca [8 x i8], align 8                ; 13 uses
  %i.bk = alloca [80 x i8], align 8               ; 8 uses
  %i.bl = alloca [8 x i8], align 8                ; 11 uses
  %i.bm = alloca [80 x i8], align 8               ; 9 uses
  %i.bn = alloca [8 x i8], align 8                ; 11 uses
  %i.bo = alloca [80 x i8], align 8               ; 7 uses
  %i.bp = alloca [8 x i8], align 8                ; 11 uses
  %i.bq = alloca [80 x i8], align 8               ; 8 uses
  %i.br = alloca [8 x i8], align 8                ; 10 uses
  %i.bs = alloca [80 x i8], align 8               ; 7 uses
  %i.bt = alloca [80 x i8], align 8               ; 7 uses
  %i.bu = alloca [8 x i8], align 8                ; 10 uses
  %i.bv = alloca [80 x i8], align 8               ; 9 uses
  %i.bw = alloca [8 x i8], align 8                ; 11 uses
  %i.bx = alloca [24 x i8], align 8               ; 9 uses
  %i.by = alloca [8 x i8], align 8                ; 11 uses
  %i.bz = alloca [24 x i8], align 8               ; 9 uses
  %i.ca = alloca [8 x i8], align 8                ; 12 uses
  %i.cb = alloca [64 x i8], align 8               ; 12 uses
  %i.cc = alloca [24 x i8], align 8               ; 17 uses
  %i.cd = alloca [8 x i8], align 8                ; 16 uses
  %i.ce = alloca [24 x i8], align 8               ; 5 uses
  %i.cf = alloca [80 x i8], align 8               ; 7 uses
  %i.cg = alloca [32 x i8], align 8               ; 8 uses
  %i.ch = alloca [80 x i8], align 8               ; 7 uses
  %i.ci = alloca [80 x i8], align 8               ; 7 uses
  %i.cj = alloca [8 x i8], align 8                ; 11 uses
  %i.ck = alloca [80 x i8], align 8               ; 7 uses
  %i.cl = alloca [8 x i8], align 8                ; 11 uses
  %i.cm = alloca [48 x i8], align 8               ; 9 uses
  %i.cn = alloca [80 x i8], align 8               ; 8 uses
  %i.co = alloca [80 x i8], align 8               ; 7 uses
  %i.cp = alloca [8 x i8], align 8                ; 11 uses
  %i.cq = alloca [32 x i8], align 8               ; 7 uses
  %i.cr = alloca [80 x i8], align 8               ; 7 uses
  %i.cs = alloca [8 x i8], align 8                ; 5 uses
  %i.ct = alloca [24 x i8], align 8               ; 2 uses
  %i.cu = alloca [80 x i8], align 8               ; 6 uses
  %i.cv = alloca [80 x i8], align 8               ; 5 uses
  %i.cw = alloca [80 x i8], align 8               ; 7 uses
  %i.cx = alloca [8 x i8], align 8                ; 6 uses
  %i.cy = alloca [80 x i8], align 8               ; 7 uses
  %i.cz = alloca [8 x i8], align 8                ; 16 uses
  %i.da = alloca [48 x i8], align 8               ; 9 uses
  %i.db = alloca [80 x i8], align 8               ; 7 uses
  %.sroa.6260 = alloca [24 x i8], align 8         ; 6 uses
  %i.dc = alloca [24 x i8], align 8               ; 12 uses
  %i.dd = alloca [80 x i8], align 8               ; 7 uses
  %i.de = alloca [8 x i8], align 8                ; 11 uses
  %i.df = alloca [80 x i8], align 8               ; 8 uses
  %i.dg = alloca [8 x i8], align 8                ; 15 uses
  %i.dh = alloca [80 x i8], align 8               ; 8 uses
  %.sroa.8230 = alloca [24 x i8], align 8         ; 6 uses
  %i.di = alloca [24 x i8], align 8               ; 9 uses
  %i.dj = alloca [8 x i8], align 8                ; 11 uses
  %i.dk = alloca [80 x i8], align 8               ; 7 uses
  %i.dl = alloca [8 x i8], align 8                ; 16 uses
  %i.dm = alloca [24 x i8], align 8               ; 2 uses
  %i.dn = alloca [80 x i8], align 8               ; 5 uses
  %i.do = alloca [80 x i8], align 8               ; 4 uses
  %i.dp = alloca [24 x i8], align 8               ; 5 uses
  %i.dq = alloca [80 x i8], align 8               ; 7 uses
  %i.dr = alloca [32 x i8], align 8               ; 8 uses
  %i.ds = alloca [80 x i8], align 8               ; 7 uses
  %i.dt = alloca [80 x i8], align 8               ; 7 uses
  %i.du = alloca [8 x i8], align 8                ; 11 uses
  %i.dv = alloca [80 x i8], align 8               ; 7 uses
  %i.dw = alloca [8 x i8], align 8                ; 11 uses
  %i.dx = alloca [48 x i8], align 8               ; 9 uses
  %i.dy = alloca [80 x i8], align 8               ; 8 uses
  %i.dz = alloca [80 x i8], align 8               ; 7 uses
  %i.ea = alloca [8 x i8], align 8                ; 11 uses
  %i.eb = alloca [32 x i8], align 8               ; 7 uses
  %i.ec = alloca [80 x i8], align 8               ; 7 uses
  %i.ed = alloca [8 x i8], align 8                ; 5 uses
  %i.ee = alloca [24 x i8], align 8               ; 2 uses
  %i.ef = alloca [80 x i8], align 8               ; 6 uses
  %i.eg = alloca [80 x i8], align 8               ; 5 uses
  %i.eh = alloca [80 x i8], align 8               ; 7 uses
  %i.ei = alloca [8 x i8], align 8                ; 6 uses
  %i.ej = alloca [80 x i8], align 8               ; 7 uses
  %i.ek = alloca [8 x i8], align 8                ; 16 uses
  %i.el = alloca [48 x i8], align 8               ; 9 uses
  %i.em = alloca [80 x i8], align 8               ; 7 uses
  %.sroa.6102 = alloca [24 x i8], align 8         ; 6 uses
  %i.en = alloca [24 x i8], align 8               ; 12 uses
  %i.eo = alloca [80 x i8], align 8               ; 7 uses
  %i.ep = alloca [8 x i8], align 8                ; 11 uses
  %i.eq = alloca [80 x i8], align 8               ; 8 uses
  %i.er = alloca [8 x i8], align 8                ; 15 uses
  %i.es = alloca [80 x i8], align 8               ; 8 uses
  %.sroa.872 = alloca [24 x i8], align 8          ; 6 uses
  %i.et = alloca [24 x i8], align 8               ; 9 uses
  %i.eu = alloca [8 x i8], align 8                ; 11 uses
  %i.ev = alloca [80 x i8], align 8               ; 7 uses
  %i.ew = alloca [8 x i8], align 8                ; 19 uses
  %i.ex = alloca [24 x i8], align 8               ; 2 uses
  %i.ey = alloca [80 x i8], align 8               ; 5 uses
  %i.ez = alloca [80 x i8], align 8               ; 4 uses
  %i.fa = alloca [24 x i8], align 8               ; 14 uses
  %i.fb = alloca [24 x i8], align 8               ; 17 uses
  %i.fc = alloca [8 x i8], align 8                ; 15 uses
  %i.fd = alloca [8 x i8], align 8                ; 15 uses
  %i.fe = alloca [1 x i8], align 1                ; 10 uses
  %i.ff = alloca [80 x i8], align 8               ; 8 uses
  %i.fg = alloca [80 x i8], align 8               ; 7 uses
  %i.fh = alloca [8 x i8], align 8                ; 21 uses
  %i.fi = alloca [80 x i8], align 8               ; 16 uses
  %i.fj = alloca [8 x i8], align 8                ; 12 uses
  %i.fk = alloca [80 x i8], align 8               ; 8 uses
  %i.fl = alloca [8 x i8], align 8                ; 9 uses
  %i.fm = alloca [8 x i8], align 8                ; 9 uses
  %i.fn = alloca [8 x i8], align 8                ; 9 uses
  %i.fo = alloca [8 x i8], align 8                ; 8 uses
  store ptr %3, ptr %i.fo, align 8
  store ptr %4, ptr %i.fn, align 8
  store ptr %5, ptr %i.fm, align 8
  store ptr %6, ptr %i.fl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk)
  invoke void @_RNvMsZ_NtCsltEA4u8Pgfu_11candle_core5shapeNtNtB7_6tensor6Tensor5dims2(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.fk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.bp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1665, %bb.bq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit142.i, %.body.i, %bb.ar, %bb.ay, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit136.i, %bb.bh, %bb.b
  %.pn1363 = phi { ptr, i32 } [ %i.jh, %bb.bh ], [ %i.fp, %bb.b ], [ %i.it, %bb.ay ], [ %.pn102.i, %.body.i ], [ %.pn108.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit142.i ], [ %.pn104.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit136.i ], [ %.pn102.i, %bb.ar ], [ %.pn1361, %bb.bq ], [ %.pn1361, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1665 ], [ %.pn1361, %bb.bp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_TjjEEEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %9) #27
          to label %.body1667 unwind label %bb.fr

bb.b:                                             ; preds = %bb.uf, %bb.st, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers.exit140.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers.exit132.i, %bb.at, %bb.h, %bb.bk, %bb.a
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.fq = load i64, ptr %i.fk, align 8, !range !14, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.fq, -1
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fs = load i64, ptr %i.fr, align 8            ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fu = load i64, ptr %i.ft, align 8            ; 4 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.6649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %.sroa.6653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6653.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6649.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk)
  store i64 %i.fq, ptr %0, align 8
  %.sroa.4651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fs, ptr %.sroa.4651.0..sroa_idx, align 8
  %.sroa.5652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fu, ptr %.sroa.5652.0..sroa_idx, align 8
  br label %bb.uq

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj)
  %i.fv = icmp ult i64 %i.fu, 2
  br i1 %i.fv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi)
  %.not1203 = icmp eq i64 %11, 0
  br i1 %.not1203, label %bb.bk, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.bo
  %storemerge = phi ptr [ %i.jo, %bb.bo ], [ null, %bb.e ]
  store ptr %storemerge, ptr %i.fj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg)
  invoke void @_RNvMs2_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vl4textNtB5_16Qwen3VLTextModel12embed_tokens(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.fg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
          to label %bb.bs unwind label %bb.br

bb.h:                                             ; preds = %bb.f
  %i.fw = load i64, ptr %10, align 8, !noundef !5 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.fy = load i8, ptr %i.fx, align 8, !range !13, !noundef !5
  %i.fz = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 145 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val1390 = load i64, ptr %i.gb, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !11300)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %i.fu, ptr %i.q, align 8, !noalias !11301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !11301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11301
  store i64 0, ptr %i.o, align 8, !noalias !11301
  %.sroa.550.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 0, ptr %.sroa.550.0..sroa_idx.i, align 8, !noalias !11301
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store ptr %i.q, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !11301
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store i64 0, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !11301
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store i64 %i.fu, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !11301
  invoke void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecfEINtB2_18SpecFromIterNestedfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB1D_3ops5range5RangejEINtNtB1z_3map3MapB2q_NCNCNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vlNtB3l_12Qwen3VLModel30prepare_decoder_attention_mask00ENCB3i_0EE9from_iterB3p_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.o)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !11301
  %i.gc = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !noalias !11301, !nonnull !5, !noundef !5
  %i.ge = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !noalias !11301, !noundef !5
  %i.gg = load i64, ptr %i.q, align 8, !noalias !11301, !noundef !5 ; 2 uses
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor10from_sliceTjjEfECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.m, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.gd, i64 noundef %i.gf, i64 noundef %i.gg, i64 noundef %i.gg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ga)
          to label %bb.j unwind label %bb.i, !noalias !11300

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit142.i: ; preds = %bb.bj, %.thread.i, %.noexc115.i, %bb.i
  %.pn108.i = phi { ptr, i32 } [ %i.gh, %bb.i ], [ %i.hj, %.noexc115.i ], [ %.pn1063.i, %bb.bj ], [ %.pn1063.i, %.thread.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #27
          to label %.body unwind label %bb.au, !noalias !11300

bb.i:                                             ; preds = %bb.bg, %.noexc
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit142.i

bb.j:                                             ; preds = %.noexc
  %i.gi = load i64, ptr %i.m, align 8, !range !14, !noalias !11301, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.gi, -1
  %i.gj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !11301 ; 3 uses
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.563.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.566.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.566.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.563.0..sroa_idx.i, i64 64, i1 false), !noalias !11302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11301
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store ptr %i.gk, ptr %.sroa.465.0..sroa_idx.i, align 8, !alias.scope !11300, !noalias !11302
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit138.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11301
  store ptr %i.gk, ptr %i.n, align 8, !noalias !11301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !11301
  %.not95.not.i = icmp eq i64 %i.fw, 0            ; 6 uses
  br i1 %.not95.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.gk, ptr %i.l, align 8, !noalias !11301
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !11301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11301
  %i.gl = load i64, ptr %i.q, align 8, !noalias !11301, !noundef !5
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor10zeros_implTjjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.j, i64 noundef %i.gl, i64 noundef %i.fw, i8 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ga, i1 noundef zeroext false)
          to label %bb.q unwind label %bb.p, !noalias !11300

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit114.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11301
  %i.gm = load i64, ptr %i.q, align 8, !noalias !11301, !noundef !5 ; 2 uses
  %i.gn = add i64 %i.gm, %i.fw
  store i64 %i.fs, ptr %i.e, align 8, !noalias !11301
  %i.go = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.val1390, ptr %i.go, align 8, !noalias !11301
  %i.gp = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.gm, ptr %i.gp, align 8, !noalias !11301
  %i.gq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.gn, ptr %i.gq, align 8, !noalias !11301
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor12broadcast_asTjjjjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.ac unwind label %bb.aa, !noalias !11300

.noexc115.i:                                      ; preds = %bb.ab, %bb.aa
  br i1 %.not95.not.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit142.i, label %.thread.i

bb.p:                                             ; preds = %bb.z, %bb.x, %bb.n
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.q:                                             ; preds = %bb.n
  %i.gs = load i64, ptr %i.j, align 8, !range !14, !noalias !11301, !noundef !5 ; 2 uses
  %.not96.i = icmp eq i64 %i.gs, -1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !noalias !11301 ; 2 uses
  br i1 %.not96.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.572.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.575.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.575.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.572.0..sroa_idx.i, i64 64, i1 false), !noalias !11302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11301
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store ptr %i.gu, ptr %.sroa.474.0..sroa_idx.i, align 8, !alias.scope !11300, !noalias !11302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11301
  br label %bb.bf

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11301
  store ptr %i.gu, ptr %i.k, align 8, !noalias !11301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11301
  store ptr %i.k, ptr %i.h, align 8, !noalias !11301
  %i.gv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.n, ptr %i.gv, align 8, !noalias !11301
  invoke void @_RINvMNtCsltEA4u8Pgfu_11candle_core10tensor_catNtNtB5_6tensor6Tensor3catRBI_NtNtB5_5shape1DECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef 2, i64 noundef 0, i64 undef)
          to label %bb.v unwind label %bb.t, !noalias !11300

end_hunk_0
begin_hunk_1_@_RNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vlNtB2_12Qwen3VLModel7forward:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11301
  br label %.thread2382

bb.ba:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit118.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11358)
  call void @llvm.experimental.noalias.scope.decl(metadata !11359)
  call void @llvm.experimental.noalias.scope.decl(metadata !11360)
  %i.iv = load ptr, ptr %i.n, align 8, !alias.scope !11361, !noalias !11301, !nonnull !5, !noundef !5
  %i.iw = atomicrmw sub ptr %i.iv, i64 1 release, align 8, !noalias !11362
  %i.ix = icmp eq i64 %i.iw, 1
  br i1 %i.ix, label %bb.bb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit134.i

bb.bb:                                            ; preds = %bb.ba
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit134.i unwind label %bb.bc, !noalias !11300

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit136.i: ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ax
  %.pn104.i = phi { ptr, i32 } [ %i.iy, %bb.bc ], [ %i.is, %bb.ax ], [ %i.is, %bb.be ], [ %i.is, %bb.bd ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #27
          to label %.body unwind label %bb.au, !noalias !11300

bb.bc:                                            ; preds = %bb.bb
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit136.i

bb.bd:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !11363)
  call void @llvm.experimental.noalias.scope.decl(metadata !11364)
  call void @llvm.experimental.noalias.scope.decl(metadata !11365)
  %i.iz = load ptr, ptr %i.n, align 8, !alias.scope !11366, !noalias !11301, !nonnull !5, !noundef !5
  %i.ja = atomicrmw sub ptr %i.iz, i64 1 release, align 8, !noalias !11367
  %i.jb = icmp eq i64 %i.ja, 1
  br i1 %i.jb, label %bb.be, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit136.i

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit136.i unwind label %bb.au, !noalias !11300

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit112.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11301
  br label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit112.i, %bb.r
  %i.jc = phi i64 [ %i.ha, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit112.i ], [ %i.gs, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11301
  call void @llvm.experimental.noalias.scope.decl(metadata !11368)
  call void @llvm.experimental.noalias.scope.decl(metadata !11369)
  call void @llvm.experimental.noalias.scope.decl(metadata !11370)
  %i.jd = load ptr, ptr %i.n, align 8, !alias.scope !11371, !noalias !11301, !nonnull !5, !noundef !5
  %i.je = atomicrmw sub ptr %i.jd, i64 1 release, align 8, !noalias !11372
  %i.jf = icmp eq i64 %i.je, 1
  br i1 %i.jf, label %bb.bg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit138.i

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit138.i unwind label %bb.i, !noalias !11300

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit138.i: ; preds = %bb.bg, %bb.bf, %bb.k
  %i.jg = phi i64 [ %i.jc, %bb.bg ], [ %i.jc, %bb.bf ], [ %i.gi, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11301
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers.exit140.i unwind label %bb.bh, !noalias !11300

bb.bh:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit138.i
  %i.jh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body unwind label %bb.bi, !noalias !11300

bb.bi:                                            ; preds = %bb.bh
  %i.ji = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !11300
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers.exit140.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit138.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.noexc1393 unwind label %bb.b

.noexc1393:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers.exit140.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11301
  br label %.thread2382

.thread.i:                                        ; preds = %bb.u, %bb.t, %bb.p, %.noexc115.i
  %.pn1063.i = phi { ptr, i32 } [ %i.hj, %.noexc115.i ], [ %i.gr, %bb.p ], [ %i.gw, %bb.u ], [ %i.gw, %bb.t ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11373)
  call void @llvm.experimental.noalias.scope.decl(metadata !11374)
  call void @llvm.experimental.noalias.scope.decl(metadata !11375)
  %i.jj = load ptr, ptr %i.n, align 8, !alias.scope !11376, !noalias !11301, !nonnull !5, !noundef !5
  %i.jk = atomicrmw sub ptr %i.jj, i64 1 release, align 8, !noalias !11377
  %i.jl = icmp eq i64 %i.jk, 1
  br i1 %i.jl, label %bb.bj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit142.i

bb.bj:                                            ; preds = %.thread.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit142.i unwind label %bb.au, !noalias !11300

bb.bk:                                            ; preds = %bb.f
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #24
          to label %bb.bl unwind label %bb.b

bb.bl:                                            ; preds = %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterjENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRjNtNtBa_3cmp3Ord3maxECs1dZk1kIfPhr_19candle_transformers.exit.thread, %bb.oi, %bb.of, %bb.nl, %bb.bk
  unreachable

.thread2382:                                      ; preds = %.noexc1393, %.noexc1392
  %.ph = phi i64 [ %i.hn, %.noexc1392 ], [ %i.jg, %.noexc1393 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.bn

bb.bm:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers.exit.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11301
  %.pre = load i64, ptr %i.fi, align 8, !range !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.not1204 = icmp eq i64 %.pre, -1
  br i1 %.not1204, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.thread2382, %bb.bm
  %i.jm = phi i64 [ %.ph, %.thread2382 ], [ %.pre, %bb.bm ]
  %.sroa.4658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %.sroa.4658.0.copyload = load ptr, ptr %.sroa.4658.0..sroa_idx, align 8
  %.sroa.5659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %.sroa.5662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5662.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5659.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi)
  store i64 %i.jm, ptr %0, align 8
  %.sroa.4661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4658.0.copyload, ptr %.sroa.4661.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit1655

bb.bo:                                            ; preds = %bb.bm
  %i.jn = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi)
  br label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1665: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit1663.thread, %bb.up, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit1663, %bb.br
  %.pn1361 = phi { ptr, i32 } [ %i.jt, %bb.br ], [ %.pn1359, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit1663 ], [ %.pn13591826, %bb.up ], [ %.pn13591826, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit1663.thread ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11378)
  %i.jp = load ptr, ptr %i.fj, align 8, !alias.scope !11378, !noundef !5 ; 2 uses
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %.body, label %bb.bp

bb.bp:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1665
  %i.jr = atomicrmw sub ptr %i.jp, i64 1 release, align 8, !noalias !11379
  %i.js = icmp eq i64 %i.jr, 1
  br i1 %i.js, label %bb.bq, label %.body

bb.bq:                                            ; preds = %bb.bp
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fj) #25
          to label %.body unwind label %bb.fr

bb.br:                                            ; preds = %bb.uh, %bb.g
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1665

bb.bs:                                            ; preds = %bb.g
  %i.ju = load i64, ptr %i.fg, align 8, !range !14, !noundef !5 ; 2 uses
  %.not1205 = icmp eq i64 %i.ju, -1
  %i.jv = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8            ; 2 uses
  br i1 %.not1205, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.sroa.5668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %.sroa.5671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5671.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5668.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg)
  store i64 %i.ju, ptr %0, align 8
  %.sroa.4670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jw, ptr %.sroa.4670.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1657

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg)
  store ptr %i.jw, ptr %i.fh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff)
  invoke void @_RNvMs12_NtCsltEA4u8Pgfu_11candle_core5shapeNtNtB8_6tensor6Tensor5dims3(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ff, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fh)
          to label %bb.bw unwind label %bb.bv

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit1663: ; preds = %bb.sm, %bb.sl, %bb.sn, %bb.cc
  %.sroa.0638.0 = phi i8 [ %.sroa.0638.63, %bb.sn ], [ %.sroa.0638.63, %bb.sl ], [ %.sroa.0638.4.ph, %bb.cc ], [ %.sroa.0638.63, %bb.sm ]
  %.pn1359 = phi { ptr, i32 } [ %.pn1266, %bb.sn ], [ %.pn1266, %bb.sl ], [ %lpad.thr_comm.split-lp, %bb.cc ], [ %.pn1266, %bb.sm ] ; 2 uses
  %i.jx = trunc nuw i8 %.sroa.0638.0 to i1
  br i1 %i.jx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit1663.thread, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1665

bb.bv:                                            ; preds = %bb.ud, %bb.bu
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit1663.thread

bb.bw:                                            ; preds = %bb.bu
  %12 = load i64, ptr %i.ff, align 8, !range !14, !noundef !5 ; 2 uses
  %.not1206 = icmp eq i64 %12, -1
  %13 = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.sroa.0672.0.copyload = load i64, ptr %13, align 8 ; 3 uses
  %.sroa.4673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %14 = load <2 x i64>, ptr %.sroa.4673.0..sroa_idx, align 8 ; 5 uses
  br i1 %.not1206, label %switch.lookup, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.sroa.7684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %.sroa.7689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7689.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7684.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff)
  store i64 %12, ptr %0, align 8
  %.sroa.4686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0672.0.copyload, ptr %.sroa.4686.0..sroa_idx, align 8
  %.sroa.5687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %14, ptr %.sroa.5687.0..sroa_idx, align 8
  br label %bb.ug

switch.lookup:                                    ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fe)
  %i.jz = load ptr, ptr %i.fh, align 8, !nonnull !5, !noundef !5
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 145
  %i.kb = load i8, ptr %i.ka, align 1, !range !22, !noundef !5
  store i8 %i.kb, ptr %i.fe, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd)
  store ptr null, ptr %i.fd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc)
  store ptr null, ptr %i.fc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb)
  store i64 -1, ptr %i.fb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa)
  store i64 -1, ptr %i.fa, align 8
  %i.kc = load ptr, ptr %i.fo, align 8, !noundef !5 ; 2 uses
  %.not1207 = icmp eq ptr %i.kc, null
  br i1 %.not1207, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %switch.lookup
  %i.kd = load ptr, ptr %i.fm, align 8, !noundef !5
  %.not1208 = icmp eq ptr %i.kd, null
  br i1 %.not1208, label %bb.cb, label %bb.ca

bb.bz:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1421, %switch.lookup
  %i.ke = load ptr, ptr %i.fn, align 8, !noundef !5 ; 2 uses
  %.not1219 = icmp eq ptr %i.ke, null
  br i1 %.not1219, label %bb.gg, label %bb.gf

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew)
  %i.kf = atomicrmw add ptr %i.kc, i64 1 monotonic, align 8
  %i.kg = icmp slt i64 %i.kf, 0
  br i1 %i.kg, label %bb.cg, label %bb.cf

bb.cb:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey)
  invoke fastcc void @_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ex, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 35, ptr nonnull @57, ptr nonnull inttoptr (i64 71 to ptr))
          to label %bb.cd unwind label %.thread1722

.thread1722:                                      ; preds = %bb.cr, %bb.ge, %bb.hc, %bb.iu, %bb.gj, %bb.gi, %bb.ej, %bb.cd, %bb.cb
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.cc:                                            ; preds = %bb.od, %bb.qi, %bb.sr, %bb.tv
  %.sroa.0638.4.ph = phi i8 [ 1, %bb.qi ], [ 1, %bb.od ], [ 0, %bb.sr ], [ %.sroa.0638.62, %bb.tv ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit1663

bb.cd:                                            ; preds = %bb.cb
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kh, ptr noundef nonnull align 8 dereferenceable(24) %i.ex, i64 24, i1 false)
  store i64 -9223372036854775766, ptr %i.ey, align 8
  invoke void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ez, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.ey)
          to label %bb.ce unwind label %.thread1722

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.ez, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez)
  br label %.thread1741.invoke

bb.cf:                                            ; preds = %bb.ca
  %i.ki = load ptr, ptr %i.fo, align 8, !nonnull !5, !noundef !5 ; 3 uses
  store ptr %i.ki, ptr %i.ew, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  %i.kk = load i64, ptr %i.kj, align 8, !noundef !5
  %i.kl = icmp eq i64 %i.kk, 3
  br i1 %i.kl, label %bb.ch, label %bb.ci

bb.cg:                                            ; preds = %bb.ca
  call void @llvm.trap()
  unreachable

bb.ch:                                            ; preds = %bb.cf
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kn = load ptr, ptr %i.km, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  %i.ko = load i64, ptr %i.kn, align 8, !noundef !5
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kq = load i64, ptr %i.kp, align 8, !noundef !5
  %i.kr = mul i64 %i.kq, %i.ko
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kt = load i64, ptr %i.ks, align 8, !noundef !5
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7reshapeTjjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ev, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ew, i64 noundef %i.kr, i64 noundef %i.kt)
          to label %bb.cl unwind label %bb.ck

bb.ci:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1397, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.872)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke void @_RNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vl6visionNtB5_18Qwen3VLVisionModel7forward(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.es, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %i.ku, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ew, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fm)
          to label %bb.cs unwind label %bb.ck

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1452: ; preds = %bb.gb, %bb.gc, %bb.cp, %bb.ck
  %.pn1349 = phi { ptr, i32 } [ %i.ky, %bb.ck ], [ %i.lf, %bb.cp ], [ %.pn1347, %bb.gc ], [ %.pn1347, %bb.gb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11380)
  call void @llvm.experimental.noalias.scope.decl(metadata !11381)
  call void @llvm.experimental.noalias.scope.decl(metadata !11382)
  %i.kv = load ptr, ptr %i.ew, align 8, !alias.scope !11383, !nonnull !5, !noundef !5
  %i.kw = atomicrmw sub ptr %i.kv, i64 1 release, align 8, !noalias !11383
  %i.kx = icmp eq i64 %i.kw, 1
  br i1 %i.kx, label %bb.cj, label %.thread

bb.cj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1452
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ew) #25
          to label %.thread unwind label %bb.fr

bb.ck:                                            ; preds = %bb.ga, %bb.ei, %bb.ch, %bb.ci
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1452

bb.cl:                                            ; preds = %bb.ch
  %i.kz = load i64, ptr %i.ev, align 8, !range !14, !noundef !5 ; 2 uses
  %.not1209 = icmp eq i64 %i.kz, -1
  %i.la = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.lb = load ptr, ptr %i.la, align 8            ; 3 uses
  br i1 %.not1209, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %.sroa.5697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %.sroa.5700.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5700.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5697.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  store i64 %i.kz, ptr %0, align 8
  %.sroa.4699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lb, ptr %.sroa.4699.0..sroa_idx, align 8
  br label %bb.cq

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  call void @llvm.experimental.noalias.scope.decl(metadata !11384)
  call void @llvm.experimental.noalias.scope.decl(metadata !11385)
  call void @llvm.experimental.noalias.scope.decl(metadata !11386)
  %i.lc = load ptr, ptr %i.ew, align 8, !alias.scope !11387, !nonnull !5, !noundef !5
  %i.ld = atomicrmw sub ptr %i.lc, i64 1 release, align 8, !noalias !11387
  %i.le = icmp eq i64 %i.ld, 1
  br i1 %i.le, label %bb.co, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1397

bb.co:                                            ; preds = %bb.cn
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ew) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1397 unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.lf = landingpad { ptr, i32 }
          cleanup
  store ptr %i.lb, ptr %i.ew, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1452

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1397: ; preds = %bb.cn, %bb.co
  store ptr %i.lb, ptr %i.ew, align 8
  br label %bb.ci

bb.cq:                                            ; preds = %bb.ct, %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !11388)
  call void @llvm.experimental.noalias.scope.decl(metadata !11389)
  call void @llvm.experimental.noalias.scope.decl(metadata !11390)
  %i.lg = load ptr, ptr %i.ew, align 8, !alias.scope !11391, !nonnull !5, !noundef !5
  %i.lh = atomicrmw sub ptr %i.lg, i64 1 release, align 8, !noalias !11391
  %i.li = icmp eq i64 %i.lh, 1
  br i1 %i.li, label %bb.cr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1399

bb.cr:                                            ; preds = %bb.cq
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ew) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1399 unwind label %.thread1722

bb.cs:                                            ; preds = %bb.ci
  %i.lj = load i64, ptr %i.es, align 8, !range !14, !noundef !5 ; 2 uses
  %.not1210 = icmp eq i64 %i.lj, -1
  %i.lk = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %.sroa.0701.0.copyload = load ptr, ptr %i.lk, align 8 ; 2 uses
  %.sroa.4702.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.872, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4702.0..sroa_idx, i64 24, i1 false)
  br i1 %.not1210, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.sroa.6710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %.sroa.6714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6714.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6710.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  %.sroa.5713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5713.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.872, i64 24, i1 false)
  store i64 %i.lj, ptr %0, align 8
  %.sroa.4712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0701.0.copyload, ptr %.sroa.4712.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.872)
  br label %bb.cq

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.et, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.872, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  store ptr %.sroa.0701.0.copyload, ptr %i.eu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.872)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor9to_device(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.eo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.eu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.fe)
          to label %bb.cv unwind label %.split

.noexc1406:                                       ; preds = %bb.dg, %bb.df
  br i1 %.sroa.0627.2, label %.thread1726, label %bb.gb

.split.thread:                                    ; preds = %.invoke, %bb.eh
  %lpad.thr_comm1730 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.split:                                           ; preds = %bb.dc, %bb.cu
  %lpad.thr_comm.split-lp1731 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1726

bb.cv:                                            ; preds = %bb.cu
  %i.ll = load i64, ptr %i.eo, align 8, !range !14, !noundef !5 ; 2 uses
  %.not1211 = icmp eq i64 %i.ll, -1
  %i.lm = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8            ; 2 uses
  br i1 %.not1211, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %.sroa.5720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %.sroa.5723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5723.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5720.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  store i64 %i.ll, ptr %0, align 8
  %.sroa.4722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ln, ptr %.sroa.4722.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1403

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  store ptr %i.ln, ptr %i.ep, align 8
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.lp = load i8, ptr %i.lo, align 8, !range !13, !noundef !5
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor8to_dtype(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.eq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ep, i8 noundef %i.lp)
          to label %bb.da unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11392)
  call void @llvm.experimental.noalias.scope.decl(metadata !11393)
  call void @llvm.experimental.noalias.scope.decl(metadata !11394)
  %i.lr = load ptr, ptr %i.ep, align 8, !alias.scope !11395, !nonnull !5, !noundef !5
  %i.ls = atomicrmw sub ptr %i.lr, i64 1 release, align 8, !noalias !11395
  %i.lt = icmp eq i64 %i.ls, 1
  br i1 %i.lt, label %bb.cz, label %.thread1726

bb.cz:                                            ; preds = %bb.cy
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ep) #25
          to label %.thread1726 unwind label %bb.fr

bb.da:                                            ; preds = %bb.cx
  %i.lu = load i64, ptr %i.eq, align 8, !range !14, !noundef !5 ; 2 uses
  %.not1212 = icmp eq i64 %i.lu, -1
  %i.lv = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8            ; 2 uses
  br i1 %.not1212, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  %.sroa.5729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %.sroa.5732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5732.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5729.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  store i64 %i.lu, ptr %0, align 8
  %.sroa.4731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lw, ptr %.sroa.4731.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !11396)
  call void @llvm.experimental.noalias.scope.decl(metadata !11397)
  call void @llvm.experimental.noalias.scope.decl(metadata !11398)
  %i.lx = load ptr, ptr %i.ep, align 8, !alias.scope !11399, !nonnull !5, !noundef !5
  %i.ly = atomicrmw sub ptr %i.lx, i64 1 release, align 8, !noalias !11399
  %i.lz = icmp eq i64 %i.ly, 1
  br i1 %i.lz, label %bb.dc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1403

bb.dc:                                            ; preds = %bb.db
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ep) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1403 unwind label %.split

bb.dd:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  store ptr %i.lw, ptr %i.er, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !11400)
  call void @llvm.experimental.noalias.scope.decl(metadata !11401)
  call void @llvm.experimental.noalias.scope.decl(metadata !11402)
  %i.ma = load ptr, ptr %i.ep, align 8, !alias.scope !11403, !nonnull !5, !noundef !5
  %i.mb = atomicrmw sub ptr %i.ma, i64 1 release, align 8, !noalias !11403
  %i.mc = icmp eq i64 %i.mb, 1
  br i1 %i.mc, label %bb.de, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1405

bb.de:                                            ; preds = %bb.dd
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ep) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1405 unwind label %bb.dh

bb.df:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1411, %bb.dh
  %.sroa.0627.2 = phi i1 [ %.sroa.0627.3, %bb.dh ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1411 ]
  %.pn1343 = phi { ptr, i32 } [ %i.mg, %bb.dh ], [ %.pn1341, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1411 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11404)
  call void @llvm.experimental.noalias.scope.decl(metadata !11405)
  call void @llvm.experimental.noalias.scope.decl(metadata !11406)
  %i.md = load ptr, ptr %i.er, align 8, !alias.scope !11407, !nonnull !5, !noundef !5
  %i.me = atomicrmw sub ptr %i.md, i64 1 release, align 8, !noalias !11407
  %i.mf = icmp eq i64 %i.me, 1
  br i1 %i.mf, label %bb.dg, label %.noexc1406

bb.dg:                                            ; preds = %bb.df
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.er) #25
          to label %.noexc1406 unwind label %bb.fr

bb.dh:                                            ; preds = %bb.de, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1423, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1415, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1405
  %.sroa.0627.3 = phi i1 [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1423 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1415 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1405 ], [ true, %bb.de ]
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1405: ; preds = %bb.dd, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6102)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el)
  %i.mh = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.mj = load i64, ptr %i.et, align 8, !range !21, !noundef !5
  %i.mk = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ml = load i64, ptr %i.mk, align 8, !noundef !5 ; 2 uses
  %i.mm = icmp ult i64 %i.ml, 1152921504606846976
  call void @llvm.assume(i1 %i.mm)
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %i.ml
  store ptr %i.mi, ptr %i.el, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.mi, ptr %.sroa.4107.0..sroa_idx, align 8
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i64 %i.mj, ptr %.sroa.5108.0..sroa_idx, align 8
  %.sroa.6109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store ptr %i.mn, ptr %.sroa.6109.0..sroa_idx, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  store ptr %i.fe, ptr %i.mo, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  store ptr %1, ptr %i.mp, align 8
  invoke void @_RINvNtNtCsf3Ta7LF998c_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vlNtB2J_12Qwen3VLModel7forward0EB1U_INtNtB6_6result6ResultzNtNtB1Y_5error5ErrorENCINvXso_B4d_IB4b_INtB1b_3VecB1U_EB4x_EINtNtNtB4_6traits7collect12FromIteratorIB4b_B1U_B4x_EE9from_iterBQ_E0B5a_EB2N_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.em, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.el)
          to label %bb.di unwind label %bb.dh

bb.di:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  %i.mq = load i64, ptr %i.em, align 8, !range !14, !noundef !5 ; 2 uses
  %.not1213 = icmp eq i64 %i.mq, -1
  %i.mr = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6102, ptr noundef nonnull align 8 dereferenceable(24) %i.mr, i64 24, i1 false)
  br i1 %.not1213, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %.sroa.5738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %.sroa.5741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5741.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5738.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  %.sroa.4740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4740.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6102, i64 24, i1 false)
  store i64 %i.mq, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6102)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  call void @llvm.experimental.noalias.scope.decl(metadata !11408)
  call void @llvm.experimental.noalias.scope.decl(metadata !11409)
  call void @llvm.experimental.noalias.scope.decl(metadata !11410)
  %i.ms = load ptr, ptr %i.er, align 8, !alias.scope !11411, !nonnull !5, !noundef !5
  %i.mt = atomicrmw sub ptr %i.ms, i64 1 release, align 8, !noalias !11411
  %i.mu = icmp eq i64 %i.mt, 1
  br i1 %i.mu, label %.invoke, label %.sink.split

.invoke:                                          ; preds = %bb.dj, %bb.fy
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.er) #25
          to label %.sink.split unwind label %.split.thread

bb.dk:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6102, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6102)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  %i.mv = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 145 ; 2 uses
  %i.mx = extractelement <2 x i64> %14, i64 0
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor10zeros_implTjjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ej, i64 noundef %.sroa.0672.0.copyload, i64 noundef %i.mx, i8 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.mw, i1 noundef zeroext false)
          to label %bb.dm unwind label %bb.dl

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1411: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1425, %bb.dp, %bb.dl
  %.pn1341 = phi { ptr, i32 } [ %i.my, %bb.dl ], [ %.pn1339, %bb.dp ], [ %.pn1339, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1425 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.en) #27
          to label %bb.df unwind label %bb.fr

bb.dl:                                            ; preds = %bb.el, %bb.ef, %bb.dk
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1411

bb.dm:                                            ; preds = %bb.dk
  %i.mz = load i64, ptr %i.ej, align 8, !range !14, !noundef !5 ; 2 uses
  %.not1214 = icmp eq i64 %i.mz, -1
  %i.na = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.nb = load ptr, ptr %i.na, align 8            ; 2 uses
  br i1 %.not1214, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %.sroa.5747.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %.sroa.5750.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5750.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5747.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  store i64 %i.mz, ptr %0, align 8
  %.sroa.4749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.nb, ptr %.sroa.4749.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1423

bb.do:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  store ptr %i.nb, ptr %i.ek, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  %i.nc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.nf = load i64, ptr %i.ne, align 8, !noundef !5
  %i.ng = getelementptr inbounds nuw [24 x i8], ptr %i.nd, i64 %i.nf
  store ptr %i.nd, ptr %i.u, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.ng, ptr %i.nh, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr null, ptr %i.ni, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr null, ptr %i.nj, align 8
  %i.nk = invoke fastcc noundef i64 @_RINvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEENCNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vlNtB2A_12Qwen3VLModel7forwards_0EIB1d_IB1t_B2p_ENCNCB2x_s_00EE9iter_foldjNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator4fold7flattenB3Z_jNCINvXsK_NtB52_5accumjNtB5X_3Sum3sumINtB6_7FlatMapB1s_B3Z_B2v_EE0E0EB2E_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.u)
          to label %bb.dq unwind label %.loopexit.split-lp1860

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1425: ; preds = %.loopexit1859, %.loopexit.split-lp1860, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1427, %bb.ep, %bb.ed, %bb.ec
  %.pn1339 = phi { ptr, i32 } [ %.pn1336, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1427 ], [ %i.oz, %bb.ec ], [ %i.pa, %bb.ed ], [ %.pn1336, %bb.ep ], [ %lpad.loopexit1861, %.loopexit1859 ], [ %lpad.loopexit.split-lp1862, %.loopexit.split-lp1860 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11412)
  call void @llvm.experimental.noalias.scope.decl(metadata !11413)
  call void @llvm.experimental.noalias.scope.decl(metadata !11414)
  %i.nl = load ptr, ptr %i.ek, align 8, !alias.scope !11415, !nonnull !5, !noundef !5
  %i.nm = atomicrmw sub ptr %i.nl, i64 1 release, align 8, !noalias !11415
  %i.nn = icmp eq i64 %i.nm, 1
  br i1 %i.nn, label %bb.dp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1411

bb.dp:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1425
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ek) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1411 unwind label %bb.fr

.loopexit1859:                                    ; preds = %.lr.ph, %bb.fq
  %lpad.loopexit1861 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1425

.loopexit.split-lp1860:                           ; preds = %bb.do, %bb.dq, %bb.dv, %._crit_edge, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1dZk1kIfPhr_19candle_transformers.exit, %bb.ft, %bb.fw
  %lpad.loopexit.split-lp1862 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1425

bb.dq:                                            ; preds = %bb.do
  store i64 %i.nk, ptr %i.ei, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor3dimjECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.eh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.er, i64 noundef 0)
          to label %bb.dr unwind label %.loopexit.split-lp1860

bb.dr:                                            ; preds = %bb.dq
  %i.no = load i64, ptr %i.eh, align 8, !range !14, !noundef !5 ; 2 uses
  %.not1215 = icmp eq i64 %i.no, -1
  %i.np = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.nq = load i64, ptr %i.np, align 8            ; 2 uses
  br i1 %.not1215, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %.sroa.5756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %.sroa.5759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5759.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5756.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  store i64 %i.no, ptr %0, align 8
  %.sroa.4758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.nq, ptr %.sroa.4758.0..sroa_idx, align 8
  br label %bb.ek

bb.dt:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  %i.nr = load i64, ptr %i.ei, align 8, !noundef !5
  %.not1216 = icmp eq i64 %i.nq, %i.nr
  br i1 %.not1216, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ns = load ptr, ptr %i.nc, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.nt = load i64, ptr %i.ne, align 8, !noundef !5 ; 2 uses
  %.idx2081 = mul nuw nsw i64 %i.nt, 24
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 %.idx2081
  %i.nv = icmp eq i64 %i.nt, 0
  br i1 %i.nv, label %._crit_edge, label %.lr.ph2060

.lr.ph2060:                                       ; preds = %bb.du
  %i.nw = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.nz = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.oa = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.ob = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.od = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.og = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.oi = insertelement <2 x i64> %14, i64 0, i64 0
  br label %bb.dw

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor3dimjECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ec, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.er, i64 noundef 0)
          to label %bb.fu unwind label %.loopexit.split-lp1860

.loopexit1858:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1443, %bb.dw
  %.sroa.0113.1.lcssa = phi i64 [ %.sroa.0113.02059, %bb.dw ], [ %i.px, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1443 ]
  %i.oj = icmp eq ptr %i.ok, %i.nu
  br i1 %i.oj, label %._crit_edge, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph2060, %.loopexit1858
  %.sroa.0113.02059 = phi i64 [ 0, %.lr.ph2060 ], [ %.sroa.0113.1.lcssa, %.loopexit1858 ] ; 2 uses
  %.sroa.01689.02058 = phi ptr [ %i.ns, %.lr.ph2060 ], [ %i.ok, %.loopexit1858 ] ; 3 uses
  %.sroa.8.02057 = phi i64 [ 0, %.lr.ph2060 ], [ %i.ol, %.loopexit1858 ] ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.01689.02058, i64 24 ; 2 uses
  %i.ol = add nuw nsw i64 %.sroa.8.02057, 1       ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.01689.02058, i64 8
  %i.on = load ptr, ptr %i.om, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.01689.02058, i64 16
  %i.op = load i64, ptr %i.oo, align 8, !noundef !5 ; 2 uses
  %.idx2082 = shl nuw nsw i64 %i.op, 4
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 %.idx2082
  %i.or = icmp eq i64 %i.op, 0
  br i1 %i.or, label %.loopexit1858, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit1858, %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor8to_dtype(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.dq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ek, i8 noundef 0)
          to label %bb.dx unwind label %.loopexit.split-lp1860

bb.dx:                                            ; preds = %._crit_edge
  %i.os = load i64, ptr %i.dq, align 8, !range !14, !noundef !5 ; 2 uses
  %.not1218 = icmp eq i64 %i.os, -1
  %i.ot = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ou = load ptr, ptr %i.ot, align 8            ; 3 uses
  br i1 %.not1218, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %.sroa.5829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %.sroa.5832.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5832.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5829.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  store i64 %i.os, ptr %0, align 8
  %.sroa.4831.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ou, ptr %.sroa.4831.0..sroa_idx, align 8
  br label %bb.ek

bb.dz:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @llvm.experimental.noalias.scope.decl(metadata !11416)
  %i.ov = load ptr, ptr %i.fd, align 8, !alias.scope !11416, !noundef !5 ; 2 uses
  %i.ow = icmp eq ptr %i.ov, null
  br i1 %i.ow, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit1413, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ox = atomicrmw sub ptr %i.ov, i64 1 release, align 8, !noalias !11417
  %i.oy = icmp eq i64 %i.ox, 1
  br i1 %i.oy, label %bb.eb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit1413

bb.eb:                                            ; preds = %bb.ea
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fd) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit1413 unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.oz = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ou, ptr %i.fd, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1425

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit1413: ; preds = %bb.ea, %bb.dz, %bb.eb
  store ptr %i.ou, ptr %i.fd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.en, i64 24, i1 false)
  store i64 0, ptr %i.en, align 8
  %.sroa.4834.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4834.0..sroa_idx, align 8
  %.sroa.5835.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i64 0, ptr %.sroa.5835.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fb)
          to label %bb.ee unwind label %bb.ed

bb.ed:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit1413
  %i.pa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i64 24, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1425

bb.ee:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit1413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  call void @llvm.experimental.noalias.scope.decl(metadata !11418)
  call void @llvm.experimental.noalias.scope.decl(metadata !11419)
  call void @llvm.experimental.noalias.scope.decl(metadata !11420)
  %i.pb = load ptr, ptr %i.ek, align 8, !alias.scope !11421, !nonnull !5, !noundef !5
  %i.pc = atomicrmw sub ptr %i.pb, i64 1 release, align 8, !noalias !11421
  %i.pd = icmp eq i64 %i.pc, 1
  br i1 %i.pd, label %bb.ef, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1415

bb.ef:                                            ; preds = %bb.ee
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ek) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1415 unwind label %bb.dl

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1415: ; preds = %bb.ee, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.en)
          to label %bb.eg unwind label %bb.dh

bb.eg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  call void @llvm.experimental.noalias.scope.decl(metadata !11422)
  call void @llvm.experimental.noalias.scope.decl(metadata !11423)
  call void @llvm.experimental.noalias.scope.decl(metadata !11424)
  %i.pe = load ptr, ptr %i.er, align 8, !alias.scope !11425, !nonnull !5, !noundef !5
  %i.pf = atomicrmw sub ptr %i.pe, i64 1 release, align 8, !noalias !11425
  %i.pg = icmp eq i64 %i.pf, 1
  br i1 %i.pg, label %bb.eh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1417

bb.eh:                                            ; preds = %bb.eg
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.er) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1417 unwind label %.split.thread

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1417: ; preds = %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  call void @llvm.experimental.noalias.scope.decl(metadata !11426)
  call void @llvm.experimental.noalias.scope.decl(metadata !11427)
  call void @llvm.experimental.noalias.scope.decl(metadata !11428)
  %i.ph = load ptr, ptr %i.eu, align 8, !alias.scope !11429, !nonnull !5, !noundef !5
  %i.pi = atomicrmw sub ptr %i.ph, i64 1 release, align 8, !noalias !11429
  %i.pj = icmp eq i64 %i.pi, 1
  br i1 %i.pj, label %bb.ei, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1419

bb.ei:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1417
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.eu) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1419 unwind label %bb.ck

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1419: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1417, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu)
  call void @llvm.experimental.noalias.scope.decl(metadata !11430)
  call void @llvm.experimental.noalias.scope.decl(metadata !11431)
  call void @llvm.experimental.noalias.scope.decl(metadata !11432)
  %i.pk = load ptr, ptr %i.ew, align 8, !alias.scope !11433, !nonnull !5, !noundef !5
  %i.pl = atomicrmw sub ptr %i.pk, i64 1 release, align 8, !noalias !11433
  %i.pm = icmp eq i64 %i.pl, 1
  br i1 %i.pm, label %bb.ej, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1421

bb.ej:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1419
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ew) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1421 unwind label %.thread1722

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1421: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1419, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew)
  br label %bb.bz

bb.ek:                                            ; preds = %bb.ds, %bb.fv, %bb.fx, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1445, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  call void @llvm.experimental.noalias.scope.decl(metadata !11434)
  call void @llvm.experimental.noalias.scope.decl(metadata !11435)
  call void @llvm.experimental.noalias.scope.decl(metadata !11436)
  %i.pn = load ptr, ptr %i.ek, align 8, !alias.scope !11437, !nonnull !5, !noundef !5
  %i.po = atomicrmw sub ptr %i.pn, i64 1 release, align 8, !noalias !11437
  %i.pp = icmp eq i64 %i.po, 1
  br i1 %i.pp, label %bb.el, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1423

bb.el:                                            ; preds = %bb.ek
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ek) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1423 unwind label %bb.dl

.lr.ph:                                           ; preds = %bb.dw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1443
  %.sroa.0113.12056 = phi i64 [ %i.px, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1443 ], [ %.sroa.0113.02059, %bb.dw ] ; 2 uses
  %.sroa.0150.02055 = phi ptr [ %i.pq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1443 ], [ %i.on, %bb.dw ] ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.0150.02055, i64 16 ; 2 uses
  %i.pr = load i64, ptr %.sroa.0150.02055, align 8, !noundef !5 ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.0150.02055, i64 8
  %i.pt = load i64, ptr %i.ps, align 8, !noundef !5 ; 3 uses
  %i.pu = sub i64 %i.pt, %i.pr                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor6narrowjECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.dz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.er, i64 noundef 0, i64 noundef %.sroa.0113.12056, i64 noundef %i.pu)
          to label %bb.em unwind label %.loopexit1859

bb.em:                                            ; preds = %.lr.ph
  %i.pv = load i64, ptr %i.dz, align 8, !range !14, !noundef !5 ; 2 uses
  %.not1327 = icmp eq i64 %i.pv, -1
  %i.pw = load ptr, ptr %i.nw, align 8            ; 2 uses
  br i1 %.not1327, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
end_hunk_1
begin_hunk_2_@_RNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vlNtB2_12Qwen3VLModel7forward:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8230, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  store ptr %.sroa.0847.0.copyload, ptr %i.dj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8230)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor9to_device(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.dd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.fe)
          to label %bb.hg unwind label %.split1756

.noexc1470:                                       ; preds = %bb.hr, %bb.hq
  br i1 %.sroa.0625.2, label %.thread1752, label %bb.kl

.split1756.thread:                                ; preds = %.invoke2581, %bb.is
  %lpad.thr_comm1757 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kl

.split1756:                                       ; preds = %bb.hn, %bb.hf
  %lpad.thr_comm.split-lp1758 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1752

bb.hg:                                            ; preds = %bb.hf
  %i.ue = load i64, ptr %i.dd, align 8, !range !14, !noundef !5 ; 2 uses
  %.not1223 = icmp eq i64 %i.ue, -1
  %i.uf = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.ug = load ptr, ptr %i.uf, align 8            ; 2 uses
  br i1 %.not1223, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %.sroa.5866.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %.sroa.5869.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5869.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5866.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  store i64 %i.ue, ptr %0, align 8
  %.sroa.4868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ug, ptr %.sroa.4868.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1467

bb.hi:                                            ; preds = %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  store ptr %i.ug, ptr %i.de, align 8
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ui = load i8, ptr %i.uh, align 8, !range !13, !noundef !5
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor8to_dtype(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.df, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.de, i8 noundef %i.ui)
          to label %bb.hl unwind label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.uj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11511)
  call void @llvm.experimental.noalias.scope.decl(metadata !11512)
  call void @llvm.experimental.noalias.scope.decl(metadata !11513)
  %i.uk = load ptr, ptr %i.de, align 8, !alias.scope !11514, !nonnull !5, !noundef !5
  %i.ul = atomicrmw sub ptr %i.uk, i64 1 release, align 8, !noalias !11514
  %i.um = icmp eq i64 %i.ul, 1
  br i1 %i.um, label %bb.hk, label %.thread1752

bb.hk:                                            ; preds = %bb.hj
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.de) #25
          to label %.thread1752 unwind label %bb.fr

bb.hl:                                            ; preds = %bb.hi
  %i.un = load i64, ptr %i.df, align 8, !range !14, !noundef !5 ; 2 uses
  %.not1224 = icmp eq i64 %i.un, -1
  %i.uo = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.up = load ptr, ptr %i.uo, align 8            ; 2 uses
  br i1 %.not1224, label %bb.ho, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %.sroa.5875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %.sroa.5878.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5878.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5875.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  store i64 %i.un, ptr %0, align 8
  %.sroa.4877.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.up, ptr %.sroa.4877.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !11515)
  call void @llvm.experimental.noalias.scope.decl(metadata !11516)
  call void @llvm.experimental.noalias.scope.decl(metadata !11517)
  %i.uq = load ptr, ptr %i.de, align 8, !alias.scope !11518, !nonnull !5, !noundef !5
  %i.ur = atomicrmw sub ptr %i.uq, i64 1 release, align 8, !noalias !11518
  %i.us = icmp eq i64 %i.ur, 1
  br i1 %i.us, label %bb.hn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1467

bb.hn:                                            ; preds = %bb.hm
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.de) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1467 unwind label %.split1756

bb.ho:                                            ; preds = %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  store ptr %i.up, ptr %i.dg, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !11519)
  call void @llvm.experimental.noalias.scope.decl(metadata !11520)
  call void @llvm.experimental.noalias.scope.decl(metadata !11521)
  %i.ut = load ptr, ptr %i.de, align 8, !alias.scope !11522, !nonnull !5, !noundef !5
  %i.uu = atomicrmw sub ptr %i.ut, i64 1 release, align 8, !noalias !11522
  %i.uv = icmp eq i64 %i.uu, 1
  br i1 %i.uv, label %bb.hp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1469

bb.hp:                                            ; preds = %bb.ho
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.de) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1469 unwind label %bb.hs

bb.hq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1475, %bb.hs
  %.sroa.0625.2 = phi i1 [ %.sroa.0625.3, %bb.hs ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1475 ]
  %.pn1319 = phi { ptr, i32 } [ %i.uz, %bb.hs ], [ %.pn1317, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1475 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11523)
  call void @llvm.experimental.noalias.scope.decl(metadata !11524)
  call void @llvm.experimental.noalias.scope.decl(metadata !11525)
  %i.uw = load ptr, ptr %i.dg, align 8, !alias.scope !11526, !nonnull !5, !noundef !5
  %i.ux = atomicrmw sub ptr %i.uw, i64 1 release, align 8, !noalias !11526
  %i.uy = icmp eq i64 %i.ux, 1
  br i1 %i.uy, label %bb.hr, label %.noexc1470

bb.hr:                                            ; preds = %bb.hq
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dg) #25
          to label %.noexc1470 unwind label %bb.fr

bb.hs:                                            ; preds = %bb.hp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1490, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1482, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1469
  %.sroa.0625.3 = phi i1 [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1490 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1482 ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1469 ], [ true, %bb.hp ]
  %i.uz = landingpad { ptr, i32 }
          cleanup
  br label %bb.hq

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1469: ; preds = %bb.ho, %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6260)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  %i.va = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.vb = load ptr, ptr %i.va, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.vc = load i64, ptr %i.di, align 8, !range !21, !noundef !5
  %i.vd = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.ve = load i64, ptr %i.vd, align 8, !noundef !5 ; 2 uses
  %i.vf = icmp ult i64 %i.ve, 1152921504606846976
  call void @llvm.assume(i1 %i.vf)
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %i.ve
  store ptr %i.vb, ptr %i.da, align 8
  %.sroa.4265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.vb, ptr %.sroa.4265.0..sroa_idx, align 8
  %.sroa.5266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i64 %i.vc, ptr %.sroa.5266.0..sroa_idx, align 8
  %.sroa.6267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store ptr %i.vg, ptr %.sroa.6267.0..sroa_idx, align 8
  %i.vh = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store ptr %i.fe, ptr %i.vh, align 8
  %i.vi = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  store ptr %1, ptr %i.vi, align 8
  invoke void @_RINvNtNtCsf3Ta7LF998c_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vlNtB2J_12Qwen3VLModel7forwards0_0EB1U_INtNtB6_6result6ResultzNtNtB1Y_5error5ErrorENCINvXso_B4g_IB4e_INtB1b_3VecB1U_EB4A_EINtNtNtB4_6traits7collect12FromIteratorIB4e_B1U_B4A_EE9from_iterBQ_E0B5d_EB2N_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.db, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.da)
          to label %bb.ht unwind label %bb.hs

bb.ht:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  %i.vj = load i64, ptr %i.db, align 8, !range !14, !noundef !5 ; 2 uses
  %.not1225 = icmp eq i64 %i.vj, -1
  %i.vk = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6260, ptr noundef nonnull align 8 dereferenceable(24) %i.vk, i64 24, i1 false)
  br i1 %.not1225, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %.sroa.5884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %.sroa.5887.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5887.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5884.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  %.sroa.4886.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4886.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6260, i64 24, i1 false)
  store i64 %i.vj, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6260)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.experimental.noalias.scope.decl(metadata !11527)
  call void @llvm.experimental.noalias.scope.decl(metadata !11528)
  call void @llvm.experimental.noalias.scope.decl(metadata !11529)
  %i.vl = load ptr, ptr %i.dg, align 8, !alias.scope !11530, !nonnull !5, !noundef !5
  %i.vm = atomicrmw sub ptr %i.vl, i64 1 release, align 8, !noalias !11530
  %i.vn = icmp eq i64 %i.vm, 1
  br i1 %i.vn, label %.invoke2581, label %.sink.split2576

.invoke2581:                                      ; preds = %bb.hu, %bb.ki
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dg) #25
          to label %.sink.split2576 unwind label %.split1756.thread

bb.hv:                                            ; preds = %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6260, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6260)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  %i.vo = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 145 ; 2 uses
  %i.vq = extractelement <2 x i64> %14, i64 0
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor10zeros_implTjjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.cy, i64 noundef %.sroa.0672.0.copyload, i64 noundef %i.vq, i8 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.vp, i1 noundef zeroext false)
          to label %bb.hx unwind label %bb.hw

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1475: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1492, %bb.ia, %bb.hw
  %.pn1317 = phi { ptr, i32 } [ %i.vr, %bb.hw ], [ %.pn1315, %bb.ia ], [ %.pn1315, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1492 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dc) #27
          to label %bb.hq unwind label %bb.fr

bb.hw:                                            ; preds = %bb.iw, %bb.iq, %bb.hv
  %i.vr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1475

bb.hx:                                            ; preds = %bb.hv
  %i.vs = load i64, ptr %i.cy, align 8, !range !14, !noundef !5 ; 2 uses
  %.not1226 = icmp eq i64 %i.vs, -1
  %i.vt = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.vu = load ptr, ptr %i.vt, align 8            ; 2 uses
  br i1 %.not1226, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %.sroa.5893.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %.sroa.5896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5896.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5893.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  store i64 %i.vs, ptr %0, align 8
  %.sroa.4895.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.vu, ptr %.sroa.4895.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1490

bb.hz:                                            ; preds = %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  store ptr %i.vu, ptr %i.cz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  %i.vv = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.vw = load ptr, ptr %i.vv, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.vy = load i64, ptr %i.vx, align 8, !noundef !5
  %i.vz = getelementptr inbounds nuw [24 x i8], ptr %i.vw, i64 %i.vy
  store ptr %i.vw, ptr %i.t, align 8
  %i.wa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.vz, ptr %i.wa, align 8
  %i.wb = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr null, ptr %i.wb, align 8
  %i.wc = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr null, ptr %i.wc, align 8
  %i.wd = invoke fastcc noundef i64 @_RINvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEENCNvMNtNtCs1dZk1kIfPhr_19candle_transformers6models8qwen3_vlNtB2A_12Qwen3VLModel7forwards1_0EIB1d_IB1t_B2p_ENCNCB2x_s1_00EE9iter_foldjNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator4fold7flattenB40_jNCINvXsK_NtB54_5accumjNtB5Z_3Sum3sumINtB6_7FlatMapB1s_B40_B2v_EE0E0EB2E_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.t)
          to label %bb.ib unwind label %.loopexit.split-lp1849

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1492: ; preds = %.loopexit1848, %.loopexit.split-lp1849, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1494, %bb.ja, %bb.io, %bb.in
  %.pn1315 = phi { ptr, i32 } [ %.pn1312, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1494 ], [ %i.xs, %bb.in ], [ %i.xt, %bb.io ], [ %.pn1312, %bb.ja ], [ %lpad.loopexit1850, %.loopexit1848 ], [ %lpad.loopexit.split-lp1851, %.loopexit.split-lp1849 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11531)
  call void @llvm.experimental.noalias.scope.decl(metadata !11532)
  call void @llvm.experimental.noalias.scope.decl(metadata !11533)
  %i.we = load ptr, ptr %i.cz, align 8, !alias.scope !11534, !nonnull !5, !noundef !5
  %i.wf = atomicrmw sub ptr %i.we, i64 1 release, align 8, !noalias !11534
  %i.wg = icmp eq i64 %i.wf, 1
  br i1 %i.wg, label %bb.ia, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1475

bb.ia:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1492
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cz) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1475 unwind label %bb.fr

.loopexit1848:                                    ; preds = %.lr.ph2064, %bb.kb
  %lpad.loopexit1850 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1492

.loopexit.split-lp1849:                           ; preds = %bb.hz, %bb.ib, %bb.ig, %._crit_edge2071, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs1dZk1kIfPhr_19candle_transformers.exit1514, %bb.kd, %bb.kg
  %lpad.loopexit.split-lp1851 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1492

bb.ib:                                            ; preds = %bb.hz
  store i64 %i.wd, ptr %i.cx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor3dimjECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.cw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dg, i64 noundef 0)
          to label %bb.ic unwind label %.loopexit.split-lp1849

bb.ic:                                            ; preds = %bb.ib
  %i.wh = load i64, ptr %i.cw, align 8, !range !14, !noundef !5 ; 2 uses
  %.not1227 = icmp eq i64 %i.wh, -1
  %i.wi = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.wj = load i64, ptr %i.wi, align 8            ; 2 uses
  br i1 %.not1227, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %.sroa.5902.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %.sroa.5905.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5905.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5902.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  store i64 %i.wh, ptr %0, align 8
  %.sroa.4904.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.wj, ptr %.sroa.4904.0..sroa_idx, align 8
  br label %bb.iv

bb.ie:                                            ; preds = %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  %i.wk = load i64, ptr %i.cx, align 8, !noundef !5
  %.not1228 = icmp eq i64 %i.wj, %i.wk
  br i1 %.not1228, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.wl = load ptr, ptr %i.vv, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.wm = load i64, ptr %i.vx, align 8, !noundef !5 ; 2 uses
  %.idx2083 = mul nuw nsw i64 %i.wm, 24
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wl, i64 %.idx2083
  %i.wo = icmp eq i64 %i.wm, 0
  br i1 %i.wo, label %._crit_edge2071, label %.lr.ph2070

.lr.ph2070:                                       ; preds = %bb.if
  %i.wp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.wq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.wr = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.ws = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.wt = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.wv = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.wx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.wy = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.wz = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.xb = insertelement <2 x i64> %14, i64 0, i64 0
  br label %bb.ih

bb.ig:                                            ; preds = %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor3dimjECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.cr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dg, i64 noundef 0)
          to label %bb.ke unwind label %.loopexit.split-lp1849

.loopexit1847:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1510, %bb.ih
  %.sroa.0271.1.lcssa = phi i64 [ %.sroa.0271.02068, %bb.ih ], [ %i.yq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1510 ]
  %i.xc = icmp eq ptr %i.xd, %i.wn
  br i1 %i.xc, label %._crit_edge2071, label %bb.ih

bb.ih:                                            ; preds = %.lr.ph2070, %.loopexit1847
  %.sroa.0271.02068 = phi i64 [ 0, %.lr.ph2070 ], [ %.sroa.0271.1.lcssa, %.loopexit1847 ] ; 2 uses
  %.sroa.01694.02067 = phi ptr [ %i.wl, %.lr.ph2070 ], [ %i.xd, %.loopexit1847 ] ; 3 uses
  %.sroa.81696.02066 = phi i64 [ 0, %.lr.ph2070 ], [ %i.xe, %.loopexit1847 ] ; 3 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.sroa.01694.02067, i64 24 ; 2 uses
  %i.xe = add nuw nsw i64 %.sroa.81696.02066, 1   ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.01694.02067, i64 8
  %i.xg = load ptr, ptr %i.xf, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.sroa.01694.02067, i64 16
  %i.xi = load i64, ptr %i.xh, align 8, !noundef !5 ; 2 uses
  %.idx2084 = shl nuw nsw i64 %i.xi, 4
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xg, i64 %.idx2084
  %i.xk = icmp eq i64 %i.xi, 0
  br i1 %i.xk, label %.loopexit1847, label %.lr.ph2064

._crit_edge2071:                                  ; preds = %.loopexit1847, %bb.if
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor8to_dtype(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.cf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cz, i8 noundef 0)
          to label %bb.ii unwind label %.loopexit.split-lp1849

bb.ii:                                            ; preds = %._crit_edge2071
  %i.xl = load i64, ptr %i.cf, align 8, !range !14, !noundef !5 ; 2 uses
  %.not1230 = icmp eq i64 %i.xl, -1
  %i.xm = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.xn = load ptr, ptr %i.xm, align 8            ; 3 uses
  br i1 %.not1230, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %.sroa.5975.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.5978.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5978.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5975.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  store i64 %i.xl, ptr %0, align 8
  %.sroa.4977.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.xn, ptr %.sroa.4977.0..sroa_idx, align 8
  br label %bb.iv

bb.ik:                                            ; preds = %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.experimental.noalias.scope.decl(metadata !11535)
  %i.xo = load ptr, ptr %i.fc, align 8, !alias.scope !11535, !noundef !5 ; 2 uses
  %i.xp = icmp eq ptr %i.xo, null
  br i1 %i.xp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit1480, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.xq = atomicrmw sub ptr %i.xo, i64 1 release, align 8, !noalias !11536
  %i.xr = icmp eq i64 %i.xq, 1
  br i1 %i.xr, label %bb.im, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit1480

bb.im:                                            ; preds = %bb.il
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fc) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit1480 unwind label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.xs = landingpad { ptr, i32 }
          cleanup
  store ptr %i.xn, ptr %i.fc, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1492

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit1480: ; preds = %bb.il, %bb.ik, %bb.im
  store ptr %i.xn, ptr %i.fc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 24, i1 false)
  store i64 0, ptr %i.dc, align 8
  %.sroa.4980.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4980.0..sroa_idx, align 8
  %.sroa.5981.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i64 0, ptr %.sroa.5981.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fa)
          to label %bb.ip unwind label %bb.io

bb.io:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit1480
  %i.xt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1492

bb.ip:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit1480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @llvm.experimental.noalias.scope.decl(metadata !11537)
  call void @llvm.experimental.noalias.scope.decl(metadata !11538)
  call void @llvm.experimental.noalias.scope.decl(metadata !11539)
  %i.xu = load ptr, ptr %i.cz, align 8, !alias.scope !11540, !nonnull !5, !noundef !5
  %i.xv = atomicrmw sub ptr %i.xu, i64 1 release, align 8, !noalias !11540
  %i.xw = icmp eq i64 %i.xv, 1
  br i1 %i.xw, label %bb.iq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1482

bb.iq:                                            ; preds = %bb.ip
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cz) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1482 unwind label %bb.hw

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1482: ; preds = %bb.ip, %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dc)
          to label %bb.ir unwind label %bb.hs

bb.ir:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.experimental.noalias.scope.decl(metadata !11541)
  call void @llvm.experimental.noalias.scope.decl(metadata !11542)
  call void @llvm.experimental.noalias.scope.decl(metadata !11543)
  %i.xx = load ptr, ptr %i.dg, align 8, !alias.scope !11544, !nonnull !5, !noundef !5
  %i.xy = atomicrmw sub ptr %i.xx, i64 1 release, align 8, !noalias !11544
  %i.xz = icmp eq i64 %i.xy, 1
  br i1 %i.xz, label %bb.is, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1484

bb.is:                                            ; preds = %bb.ir
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dg) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1484 unwind label %.split1756.thread

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1484: ; preds = %bb.ir, %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.experimental.noalias.scope.decl(metadata !11545)
  call void @llvm.experimental.noalias.scope.decl(metadata !11546)
  call void @llvm.experimental.noalias.scope.decl(metadata !11547)
  %i.ya = load ptr, ptr %i.dj, align 8, !alias.scope !11548, !nonnull !5, !noundef !5
  %i.yb = atomicrmw sub ptr %i.ya, i64 1 release, align 8, !noalias !11548
  %i.yc = icmp eq i64 %i.yb, 1
  br i1 %i.yc, label %bb.it, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1486

bb.it:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1484
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dj) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1486 unwind label %bb.gv

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1486: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1484, %bb.it
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  call void @llvm.experimental.noalias.scope.decl(metadata !11549)
  call void @llvm.experimental.noalias.scope.decl(metadata !11550)
  call void @llvm.experimental.noalias.scope.decl(metadata !11551)
  %i.yd = load ptr, ptr %i.dl, align 8, !alias.scope !11552, !nonnull !5, !noundef !5
  %i.ye = atomicrmw sub ptr %i.yd, i64 1 release, align 8, !noalias !11552
  %i.yf = icmp eq i64 %i.ye, 1
  br i1 %i.yf, label %bb.iu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1488

bb.iu:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1486
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dl) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1488 unwind label %.thread1722

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1488: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1486, %bb.iu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %bb.gg

bb.iv:                                            ; preds = %bb.id, %bb.kf, %bb.kh, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1512, %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  call void @llvm.experimental.noalias.scope.decl(metadata !11553)
  call void @llvm.experimental.noalias.scope.decl(metadata !11554)
  call void @llvm.experimental.noalias.scope.decl(metadata !11555)
  %i.yg = load ptr, ptr %i.cz, align 8, !alias.scope !11556, !nonnull !5, !noundef !5
  %i.yh = atomicrmw sub ptr %i.yg, i64 1 release, align 8, !noalias !11556
  %i.yi = icmp eq i64 %i.yh, 1
  br i1 %i.yi, label %bb.iw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1490

bb.iw:                                            ; preds = %bb.iv
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cz) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1490 unwind label %bb.hw

.lr.ph2064:                                       ; preds = %bb.ih, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1510
  %.sroa.0271.12062 = phi i64 [ %i.yq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1510 ], [ %.sroa.0271.02068, %bb.ih ] ; 2 uses
  %.sroa.0310.02061 = phi ptr [ %i.yj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit1510 ], [ %i.xg, %bb.ih ] ; 3 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %.sroa.0310.02061, i64 16 ; 2 uses
  %i.yk = load i64, ptr %.sroa.0310.02061, align 8, !noundef !5 ; 3 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.sroa.0310.02061, i64 8
  %i.ym = load i64, ptr %i.yl, align 8, !noundef !5 ; 3 uses
  %i.yn = sub i64 %i.ym, %i.yk                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor6narrowjECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dg, i64 noundef 0, i64 noundef %.sroa.0271.12062, i64 noundef %i.yn)
          to label %bb.ix unwind label %.loopexit1848

bb.ix:                                            ; preds = %.lr.ph2064
  %i.yo = load i64, ptr %i.co, align 8, !range !14, !noundef !5 ; 2 uses
  %.not1303 = icmp eq i64 %i.yo, -1
  %i.yp = load ptr, ptr %i.wp, align 8            ; 2 uses
  br i1 %.not1303, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
end_hunk_2
begin_hunk_3_@_RNvMNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi6seanetNtB2_17SeaNetResnetBlock3new:bb.a
  %i.bk = load ptr, ptr @_RNvNvMNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi6seanetNtB4_17SeaNetResnetBlock3new10___CALLSITE, align 8, !nonnull !5, !align !10, !noundef !5
  %i.bl = invoke noundef zeroext i1 @_RNvNtCs95szcO5cFRN_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bk, i8 noundef %.sroa.031.0)
          to label %bb.ab unwind label %bb.u

bb.aa:                                            ; preds = %bb.y
  %.not46 = icmp eq i8 %i.bj, 0
  br i1 %.not46, label %bb.w, label %bb.z

bb.ab:                                            ; preds = %bb.z
  br i1 %i.bl, label %bb.ac, label %bb.w

bb.ac:                                            ; preds = %bb.ab
  %i.bm = load ptr, ptr @_RNvNvMNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi6seanetNtB4_17SeaNetResnetBlock3new10___CALLSITE, align 8, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i64 1, ptr %i.c, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.541.0..sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.bn, ptr %i.bo, align 8
  invoke void @_RNvMNtCs95szcO5cFRN_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.ae unwind label %bb.u

bb.ad:                                            ; preds = %bb.ae, %bb.w
  %.sroa.825.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.825.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %.sroa.022.80..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.022.80..sroa_idx, ptr noundef nonnull align 8 dereferenceable(200) %i.e, i64 200, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.022, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  %.sroa.022.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.022, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.022.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.022, i64 280, i1 false)
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %4, ptr %.sroa.623.0..sroa_idx, align 8
  %.sroa.724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store double %5, ptr %.sroa.724.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.022)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.l)
          to label %bb.af unwind label %.split

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ad

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi4conv16StreamableConv1dEEB1g_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi4conv16StreamableConv1dEEB1g_.exit: ; preds = %bb.ar, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %11)
  ret void

bb.ag:                                            ; preds = %bb.ai, %bb.at, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi4conv16StreamableConv1dEEB15_.exit, %bb.u, %.body, %.body53
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ah:                                            ; preds = %bb.u
  %i.bq = icmp eq i64 %i.bd, -1
  br i1 %i.bq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi4conv16StreamableConv1dEEB15_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi4conv16StreamableConv1dEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi4conv16StreamableConv1dEEB15_.exit unwind label %bb.ag

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi4conv16StreamableConv1dEEB15_.exit: ; preds = %bb.ah, %bb.ai
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi4conv16StreamableConv1dEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #27
          to label %.body unwind label %bb.ag

bb.aj:                                            ; preds = %.peel.next
  %i.br = icmp eq i64 %.sroa.856.065, %i.ac
  %.sroa.05.0 = select i1 %i.br, i64 %1, i64 %i.z
  invoke void @_RNvMs2_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi4convNtB5_16StreamableConv1d3new(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.k, i64 noundef %i.z, i64 noundef %.sroa.05.0, i64 noundef %i.at, i64 noundef 1, i64 noundef %i.av, i64 noundef 1, i1 noundef zeroext true, i1 noundef zeroext %7, i8 noundef %6, i8 noundef %8, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.j)
          to label %bb.ak unwind label %.loopexit.loopexit

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bs = load i64, ptr %i.k, align 8, !range !18, !noundef !5 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, -1
  br i1 %i.bt, label %.loopexit70, label %bb.al

.loopexit70:                                      ; preds = %bb.ak, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bu, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.t

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.0..sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %i.bs, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.8.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.8, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.bv = load i64, ptr %i.x, align 8, !alias.scope !12666, !noalias !12667, !noundef !5 ; 3 uses
  %i.bw = load i64, ptr %i.m, align 8, !range !21, !alias.scope !12666, !noalias !12667, !noundef !5
  %i.bx = icmp eq i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.am, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi4conv16StreamableConv1dE8push_mutBN_.exit

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi4conv16StreamableConv1dE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi4conv16StreamableConv1dE8push_mutBN_.exit unwind label %.loopexit71, !noalias !12667

.loopexit71:                                      ; preds = %bb.am
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp72:                             ; preds = %bb.n
  %lpad.loopexit.split-lp73 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp72, %.loopexit71
  %lpad.phi74 = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit71 ], [ %lpad.loopexit.split-lp73, %.loopexit.split-lp72 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi4conv16StreamableConv1dEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.i) #27
          to label %.body unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi4conv16StreamableConv1dE8push_mutBN_.exit: ; preds = %bb.al, %bb.am
  %i.bz = load ptr, ptr %i.w, align 8, !alias.scope !12666, !noalias !12667, !nonnull !5, !noundef !5
  %i.ca = getelementptr inbounds nuw [200 x i8], ptr %i.bz, i64 %i.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ca, ptr noundef nonnull align 8 dereferenceable(200) %i.i, i64 200, i1 false)
  %i.cb = add i64 %i.bv, 1
  store i64 %i.cb, ptr %i.x, align 8, !alias.scope !12666, !noalias !12667
  %i.cc = icmp eq ptr %i.ar, %i.aa
  br i1 %i.cc, label %._crit_edge, label %.peel.next, !llvm.loop !12665

bb.ap:                                            ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi4conv16StreamableConv1dENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi4conv16StreamableConv1dENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body53 unwind label %bb.as

bb.ar:                                            ; preds = %bb.ap
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi4conv16StreamableConv1dENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi4conv16StreamableConv1dEEB1g_.exit unwind label %bb.b

bb.as:                                            ; preds = %bb.aq
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.at:                                            ; preds = %.split.thread, %bb.h
  %.pn4857 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn, %bb.h ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4mimi4conv16StreamableConv1dEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #27
          to label %.body53 unwind label %bb.ag

bb.au:                                            ; preds = %.body53
  resume { ptr, i32 } %.pn50
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs1dZk1kIfPhr_19candle_transformers6models9metavoice3gptNtB2_6Config10cfg1b_v0_1(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30
  %i.b = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 201) 16, i64 noundef 8) #30 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #24
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 1538, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1025, ptr %i.d, align 8
  store i64 2, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 2, ptr %i.f, align 8
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30
  %i.g = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 201) 48, i64 noundef 8) #30 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit3.preheader, !prof !7

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit3.preheader: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit
  store <6 x i64> splat (i64 1025), ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1024, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 6, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 6, ptr %.sroa.5.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 6, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 6, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 384, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double 1.000000e-05, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 0, ptr %i.q, align 4
  store i64 1, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 256, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 110
  store i8 1, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 0, ptr %i.t, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #24
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #27
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs1dZk1kIfPhr_19candle_transformers6models9metavoice8adaptersNtB2_13TiltedEncodec3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 44)) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = load atomic i64, ptr @_RNvNtCs2ZSzJGZRtAv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtNtCs1dZk1kIfPhr_19candle_transformers6models9metavoice8adaptersNtB4_13TiltedEncodec3new10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.e, label %bb.d [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 2, label %bb.e
  ], !prof !24

bb.c:                                             ; preds = %bb.b, %bb.a, %bb.e, %bb.d
  store i64 2, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i8 @_RNvMNtCs2ZSzJGZRtAv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtNtCs1dZk1kIfPhr_19candle_transformers6models9metavoice8adaptersNtB4_13TiltedEncodec3new10___CALLSITE) #25 ; 2 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.d
  %.sroa.05.0 = phi i8 [ %i.g, %bb.d ], [ %i.e, %bb.b ], [ %i.e, %bb.b ]
  %i.h = load ptr, ptr @_RNvNvMNtNtNtCs1dZk1kIfPhr_19candle_transformers6models9metavoice8adaptersNtB4_13TiltedEncodec3new10___CALLSITE, align 8, !nonnull !5, !align !10, !noundef !5
  %i.i = tail call noundef zeroext i1 @_RNvNtCs95szcO5cFRN_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, i8 noundef %.sroa.05.0)
  br i1 %i.i, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr @_RNvNvMNtNtNtCs1dZk1kIfPhr_19candle_transformers6models9metavoice8adaptersNtB4_13TiltedEncodec3new10___CALLSITE, align 8, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 1, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.k, ptr %i.l, align 8
  call void @_RNvMNtCs95szcO5cFRN_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %1, ptr %i.m, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs1dZk1kIfPhr_19candle_transformers6models9metavoice8adaptersNtB2_13TiltedEncodec6decode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 384307168202282326) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = load i64, ptr %1, align 8, !range !17, !noundef !5
  %.not = icmp eq i64 %i.e, 2                     ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvMs2_NtCs2ZSzJGZRtAv_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.j, align 8
  %.idx = mul nuw nsw i64 %3, 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.l = icmp eq i64 %3, 0
  br i1 %i.l, label %._crit_edge45, label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i32, ptr %i.o, align 8              ; 3 uses
  br label %bb.e

.body.thread:                                     ; preds = %bb.o, %bb.u, %bb.d
  %.pn = phi { ptr, i32 } [ %.us-phi, %bb.u ], [ %i.q, %bb.d ], [ %i.bf, %bb.o ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_mEEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #27
          to label %bb.w unwind label %bb.v

bb.d:                                             ; preds = %.lr.ph44
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.e:                                             ; preds = %.lr.ph40, %bb.t
  %.sroa.0.038 = phi i64 [ -1, %.lr.ph40 ], [ %i.bq, %bb.t ]
  %.sroa.025.037 = phi ptr [ %2, %.lr.ph40 ], [ %i.r, %bb.t ] ; 3 uses
  %.sroa.7.036 = phi i64 [ 0, %.lr.ph40 ], [ %i.s, %bb.t ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.025.037, i64 24 ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.7.036, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.m, align 8
  store i64 0, ptr %i.n, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.025.037, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.025.037, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !5 ; 2 uses
  %.idx46 = shl nuw nsw i64 %i.w, 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx46 ; 2 uses
  %.not1734 = icmp eq i64 %i.w, 0
  br i1 %.not1734, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.y = icmp eq i64 %.sroa.7.036, 0
  br i1 %i.y, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.k
  %.sroa.06.035.us = phi ptr [ %i.z, %bb.k ], [ %i.u, %.lr.ph ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.035.us, i64 4 ; 2 uses
  %i.aa = load i32, ptr %.sroa.06.035.us, align 4, !noundef !5 ; 4 uses
  %i.ab = icmp ugt i32 %i.aa, %i.p
  br i1 %i.ab, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.ac = icmp ult i32 %i.aa, %i.p
  br i1 %i.ac, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ad = load i64, ptr %i.n, align 8, !alias.scope !12677, !noundef !5 ; 3 uses
  %i.ae = load i64, ptr %i.b, align 8, !range !21, !alias.scope !12677, !noundef !5
  %i.af = icmp eq i64 %i.ad, %i.ae
end_hunk_3
