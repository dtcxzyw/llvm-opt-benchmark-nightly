Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-sampler?download=true
inline.NumInlined: 6714
inline.NumDeleted: 2633
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZL37llama_sampler_penalties_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_data:bb.a
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = sext i32 %i.au to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i32 0, ptr %i.a, align 4, !tbaa !84
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 noundef %i.av, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  %i.ax = load i32, ptr %i.z, align 8, !tbaa !623
  %i.ay = sext i32 %i.ax to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i32 0, ptr %i.b, align 4, !tbaa !84
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 noundef %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.az = load ptr, ptr %3, align 8, !tbaa !285   ; 2 uses
  %i.ba = call i64 @ggml_nelements(ptr noundef %i.az)
  %i.bb = call ptr @ggml_reshape_1d(ptr noundef %1, ptr noundef %i.az, i64 noundef %i.ba) ; 7 uses
  %i.bc = load ptr, ptr %i.ai, align 8, !tbaa !625
  %i.bd = call ptr @ggml_cast(ptr noundef %1, ptr noundef %i.bc, i32 noundef 0) ; 2 uses
  %i.be = load i8, ptr %i.w, align 4, !tbaa !1242, !range !78, !noundef !79
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %i.t, align 8, !tbaa !286 ; 2 uses
  %i.bh = call i64 @ggml_nelements(ptr noundef %i.bg)
  %i.bi = call ptr @ggml_reshape_1d(ptr noundef %1, ptr noundef %i.bg, i64 noundef %i.bh) ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !111 ; 2 uses
  %i.bl = call i64 @ggml_nelements(ptr noundef %i.bb)
  %i.bm = icmp eq i64 %i.bk, %i.bl
  br i1 %i.bm, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 3070, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.282) #38
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bn = load i32, ptr %i.q, align 4, !tbaa !193
  %i.bo = sext i32 %i.bn to i64
  %i.bp = call ptr @ggml_new_tensor_2d(ptr noundef %1, i32 noundef 0, i64 noundef 1, i64 noundef %i.bo)
  %i.bq = call ptr @ggml_fill(ptr noundef %1, ptr noundef %i.bp, float noundef 0.000000e+00)
  %i.br = load i32, ptr %i.z, align 8, !tbaa !623
  %i.bs = sext i32 %i.br to i64
  %i.bt = call ptr @ggml_reshape_2d(ptr noundef %1, ptr noundef %i.bd, i64 noundef 1, i64 noundef %i.bs)
  %i.bu = load ptr, ptr %i.ac, align 8, !tbaa !624
  %i.bv = call ptr @ggml_set_rows(ptr noundef %1, ptr noundef %i.bq, ptr noundef %i.bt, ptr noundef %i.bu)
  %i.bw = call ptr @ggml_get_rows(ptr noundef %1, ptr noundef %i.bv, ptr noundef nonnull %i.bi)
  %i.bx = call ptr @ggml_reshape_1d(ptr noundef %1, ptr noundef %i.bw, i64 noundef %i.bk)
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.by = call i64 @ggml_nelements(ptr noundef %i.bb)
  %i.bz = call ptr @ggml_reshape_2d(ptr noundef %1, ptr noundef %i.bb, i64 noundef 1, i64 noundef %i.by)
  %i.ca = load ptr, ptr %i.ac, align 8, !tbaa !624
  %i.cb = call ptr @ggml_get_rows(ptr noundef %1, ptr noundef %i.bz, ptr noundef %i.ca)
  %i.cc = load i32, ptr %i.z, align 8, !tbaa !623
  %i.cd = sext i32 %i.cc to i64
  %i.ce = call ptr @ggml_reshape_1d(ptr noundef %1, ptr noundef %i.cb, i64 noundef %i.cd)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0124 = phi ptr [ %i.bx, %bb.i ], [ %i.bd, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.bb, %bb.i ], [ %i.ce, %bb.j ] ; 3 uses
  %i.cf = call ptr @ggml_step(ptr noundef %1, ptr noundef %.0124) ; 4 uses
  %i.cg = call ptr @ggml_fill(ptr noundef %1, ptr noundef %i.cf, float noundef 1.000000e+00)
  %i.ch = call ptr @ggml_sub(ptr noundef %1, ptr noundef %i.cg, ptr noundef %i.cf)
  %i.ci = load float, ptr %i.l, align 4, !tbaa !195
  %i.cj = fcmp une float %i.ci, 1.000000e+00
  br i1 %i.cj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ck = call ptr @ggml_step(ptr noundef %1, ptr noundef %.0) ; 3 uses
  %i.cl = call ptr @ggml_fill(ptr noundef %1, ptr noundef %i.ck, float noundef 1.000000e+00)
  %i.cm = call ptr @ggml_sub(ptr noundef %1, ptr noundef %i.cl, ptr noundef %i.ck)
  %i.cn = load float, ptr %i.l, align 4, !tbaa !195
  %i.co = fdiv float 1.000000e+00, %i.cn
  %i.cp = call ptr @ggml_scale(ptr noundef %1, ptr noundef %i.ck, float noundef %i.co)
  %i.cq = load float, ptr %i.l, align 4, !tbaa !195
  %i.cr = call ptr @ggml_scale(ptr noundef %1, ptr noundef %i.cm, float noundef %i.cq)
  %i.cs = call ptr @ggml_add(ptr noundef %1, ptr noundef %i.cp, ptr noundef %i.cr)
  %i.ct = call ptr @ggml_mul(ptr noundef %1, ptr noundef %i.cs, ptr noundef %i.cf)
  %i.cu = call ptr @ggml_add(ptr noundef %1, ptr noundef %i.ct, ptr noundef %i.ch)
  %i.cv = call ptr @ggml_mul(ptr noundef %1, ptr noundef %.0, ptr noundef %i.cu)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0125 = phi ptr [ %i.cv, %bb.l ], [ %.0, %bb.k ] ; 2 uses
  %i.cw = load float, ptr %i.j, align 8, !tbaa !196 ; 2 uses
  %i.cx = fcmp une float %i.cw, 0.000000e+00
  br i1 %i.cx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cy = call ptr @ggml_scale(ptr noundef %1, ptr noundef %.0124, float noundef %i.cw)
  %i.cz = call ptr @ggml_sub(ptr noundef %1, ptr noundef %.0125, ptr noundef %i.cy)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1 = phi ptr [ %i.cz, %bb.n ], [ %.0125, %bb.m ] ; 2 uses
  %i.da = load float, ptr %i.h, align 4, !tbaa !197 ; 2 uses
  %i.db = fcmp une float %i.da, 0.000000e+00
  br i1 %i.db, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dc = call ptr @ggml_scale(ptr noundef %1, ptr noundef %i.cf, float noundef %i.da)
  %i.dd = call ptr @ggml_sub(ptr noundef %1, ptr noundef %.1, ptr noundef %i.dc)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2 = phi ptr [ %i.dd, %bb.p ], [ %.1, %bb.o ]  ; 2 uses
  %i.de = load i8, ptr %i.w, align 4, !tbaa !1242, !range !78, !noundef !79
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = call i64 @ggml_nelements(ptr noundef %i.bb)
  %i.dh = call ptr @ggml_reshape_2d(ptr noundef %1, ptr noundef %i.bb, i64 noundef 1, i64 noundef %i.dg)
  %i.di = load i32, ptr %i.z, align 8, !tbaa !623
  %i.dj = sext i32 %i.di to i64
  %i.dk = call ptr @ggml_reshape_2d(ptr noundef %1, ptr noundef %.2, i64 noundef 1, i64 noundef %i.dj)
  %i.dl = load ptr, ptr %i.ac, align 8, !tbaa !624
  %i.dm = call ptr @ggml_set_rows(ptr noundef %1, ptr noundef %i.dh, ptr noundef %i.dk, ptr noundef %i.dl)
  %i.dn = call i64 @ggml_nelements(ptr noundef %i.bb)
  %i.do = call ptr @ggml_reshape_1d(ptr noundef %1, ptr noundef %i.dm, i64 noundef %i.dn)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %storemerge = phi ptr [ %i.do, %bb.r ], [ %.2, %bb.q ]
  store ptr %storemerge, ptr %3, align 8, !tbaa !285
  br label %_ZNK23llama_sampler_penalties11is_disabledEv.exit.thread

_ZNK23llama_sampler_penalties11is_disabledEv.exit.thread: ; preds = %bb.a, %_ZNK23llama_sampler_penalties11is_disabledEv.exit, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL41llama_sampler_penalties_backend_set_inputP13llama_sampler(ptr nofree noundef readonly captures(none) %0) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !624
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !625
  %.not62 = icmp eq ptr %i.f, null
  br i1 %.not62, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !623
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !193
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.n = load i32, ptr %i.m, align 8, !tbaa !194
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit, label %_ZNK23llama_sampler_penalties11is_disabledEv.exit

_ZNK23llama_sampler_penalties11is_disabledEv.exit: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.q = load float, ptr %i.p, align 4, !tbaa !197
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.s = load float, ptr %i.r, align 8, !tbaa !196
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.u = load float, ptr %i.t, align 4, !tbaa !195
  %i.v = fcmp oeq float %i.u, 1.000000e+00
  %i.w = fcmp oeq float %i.s, 0.000000e+00
  %or.cond.i.i = and i1 %i.w, %i.v
  %i.x = fcmp oeq float %i.q, 0.000000e+00
  %spec.select.i.i = and i1 %i.x, %or.cond.i.i
  br i1 %spec.select.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK23llama_sampler_penalties11is_disabledEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %.sroa.095.0131 = load ptr, ptr %i.z, align 8, !tbaa !214 ; 2 uses
  %.not105132 = icmp eq ptr %.sroa.095.0131, null
  br i1 %.not105132, label %._crit_edge146, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  br label %bb.g

._crit_edge:                                      ; preds = %bb.i
  %i.ac = trunc i64 %indvars.iv.next to i32       ; 5 uses
  %i.ad = shl nuw nsw i64 %indvars.iv.next, 3
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #37 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  br label %bb.o

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 5 uses
  %.sroa.095.0134 = phi ptr [ %.sroa.095.0131, %.lr.ph ], [ %.sroa.095.0, %bb.i ] ; 3 uses
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !623
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 3138, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.283) #38
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.095.0134, i64 8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !617
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !199
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  store i32 %i.am, ptr %i.ao, align 4, !tbaa !84
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.095.0134, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !618
  %i.ar = load ptr, ptr %i.ab, align 8, !tbaa !199
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  store i32 %i.aq, ptr %i.as, align 4, !tbaa !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %.sroa.095.0 = load ptr, ptr %.sroa.095.0134, align 8, !tbaa !214 ; 2 uses
  %.not105 = icmp eq ptr %.sroa.095.0, null
  br i1 %.not105, label %._crit_edge, label %bb.g

._crit_edge140:                                   ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit
  %.not.i.i = icmp eq ptr %.sroa.082.3, %.sroa.13.2
  br i1 %.not.i.i, label %.lr.ph145, label %bb.j

bb.j:                                             ; preds = %._crit_edge140
  %i.at = ptrtoint ptr %.sroa.13.2 to i64
  %i.au = ptrtoint ptr %.sroa.082.3 to i64        ; 2 uses
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = ashr exact i64 %i.av, 3
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true)
  %i.ay = shl nuw nsw i64 %i.ax, 1
  %i.az = xor i64 %i.ay, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_T0_T1_"(ptr %.sroa.082.3, ptr nonnull %.sroa.13.2, i64 noundef %i.az)
  %i.ba = icmp sgt i64 %i.av, 128
  br i1 %i.ba, label %.lr.ph.i.i.i.i66, label %bb.l

.lr.ph.i.i.i.i66:                                 ; preds = %bb.j, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i
  %indvar = phi i64 [ %indvar.next, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i ], [ 0, %bb.j ] ; 2 uses
  %.sroa.08.020.i.idx.i.i.i = phi i64 [ %.sroa.08.020.i.add.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i ], [ 8, %bb.j ] ; 3 uses
  %.pn19.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i ], [ %.sroa.082.3, %bb.j ] ; 3 uses
  %.sroa.08.020.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.082.3, i64 %.sroa.08.020.i.idx.i.i.i ; 7 uses
  %.val.i.i.i.i.i = load i32, ptr %.sroa.08.020.i.ptr.i.i.i, align 4, !tbaa !627
  %.val1.i.i.i.i.i = load i32, ptr %.sroa.082.3, align 4, !tbaa !627
  %i.bb = icmp slt i32 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %i.bc = load i64, ptr %.sroa.08.020.i.ptr.i.i.i, align 4 ; 2 uses
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i.preheader.i.i.i.i, label %bb.k

.lr.ph.i.i.i.i.i.preheader.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i66
  %i.bd = lshr exact i64 %.sroa.08.020.i.idx.i.i.i, 3 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 16 ; 2 uses
  %xtraiter276 = and i64 %i.bd, 3                 ; 2 uses
  %lcmp.mod277.not = icmp eq i64 %xtraiter276, 0
  br i1 %lcmp.mod277.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.bd, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ]
  %.069.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.be, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.08.020.i.ptr.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %prol.iter278 = phi i64 [ %prol.iter278.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ]
  %i.bf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !84
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !627
  %i.bi = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i.prol, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !84
  %i.bk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i.prol, i64 -4
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !628
  %i.bl = add nsw i64 %.010.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter278.next = add i64 %prol.iter278, 1   ; 2 uses
  %prol.iter278.cmp.not = icmp eq i64 %prol.iter278.next, %xtraiter276
  br i1 %prol.iter278.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1243

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.020.i.ptr.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.bm = icmp ult i64 %indvar, 3
  br i1 %i.bm, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.bn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -8
  %i.bo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -8
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !84
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !627
  %i.bq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !84
  %i.bs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -4
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !628
  %i.bt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -16
  %i.bu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -16
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !84
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !627
  %i.bw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !84
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -12
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !628
  %i.bz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -24
  %i.ca = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -24
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !84
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !627
  %i.cc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -20
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !84
  %i.ce = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -20
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !628
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !84
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !627
  %i.ci = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -28
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !84
  %i.ck = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -28
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !628
  %i.cl = add nsw i64 %.010.i.i.i.i.i.i.i.i.i, -4
  %i.cm = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i, 4
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i, !llvm.loop !1244

bb.k:                                             ; preds = %.lr.ph.i.i.i.i66
  %.sroa.03.0.extract.trunc.i.i.i.i.i = trunc i64 %i.bc to i32 ; 2 uses
  %.val2.i8.i.i.i.i.i = load i32, ptr %.pn19.i.i.i.i, align 4, !tbaa !627 ; 2 uses
  %i.cn = icmp sgt i32 %.val2.i8.i.i.i.i.i, %.sroa.03.0.extract.trunc.i.i.i.i.i
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.val2.i11.i.i.i.i.i = phi i32 [ %.val2.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.val2.i8.i.i.i.i.i, %bb.k ]
  %.sroa.0.010.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.pn19.i.i.i.i, %bb.k ] ; 3 uses
  %.sroa.04.09.i.i.i.i.i = phi ptr [ %.sroa.0.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.020.i.ptr.i.i.i, %bb.k ] ; 3 uses
  store i32 %.val2.i11.i.i.i.i.i, ptr %.sroa.04.09.i.i.i.i.i, align 4, !tbaa !627
  %i.co = getelementptr inbounds i8, ptr %.sroa.04.09.i.i.i.i.i, i64 -4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !84
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i.i.i, i64 4
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !628
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.i.i, i64 -8 ; 2 uses
  %.val2.i.i.i.i.i.i = load i32, ptr %.sroa.0.0.i.i.i.i.i, align 4, !tbaa !627 ; 2 uses
  %i.cr = icmp sgt i32 %.val2.i.i.i.i.i.i, %.sroa.03.0.extract.trunc.i.i.i.i.i
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i, !llvm.loop !1245

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.k
  %.sink.i.i.i.i = phi ptr [ %.sroa.082.3, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.08.020.i.ptr.i.i.i, %bb.k ], [ %.sroa.082.3, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  store i64 %i.bc, ptr %.sink.i.i.i.i, align 4
  %.sroa.08.020.i.add.i.i.i = add nuw nsw i64 %.sroa.08.020.i.idx.i.i.i, 8 ; 2 uses
  %.not.i.i.i.i67 = icmp eq i64 %.sroa.08.020.i.add.i.i.i, 128
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i67, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_T0_.exit.i.i.i", label %.lr.ph.i.i.i.i66, !llvm.loop !1246

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_T0_.exit.i.i.i": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.082.3, i64 128 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.cs, %.sroa.13.2
  br i1 %.not6.i.i.i.i, label %.lr.ph145, label %.lr.ph.i12.i.i.i

.lr.ph.i12.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.cz, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i.i.i.i" ], [ %i.cs, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_T0_.exit.i.i.i" ] ; 6 uses
  %i.ct = load i64, ptr %.sroa.0.07.i.i.i.i, align 4 ; 2 uses
  %.sroa.03.0.extract.trunc.i.i13.i.i.i = trunc i64 %i.ct to i32 ; 2 uses
  %.sroa.0.07.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i, i64 -8 ; 2 uses
  %.val2.i8.i.i14.i.i.i = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !627 ; 2 uses
  %i.cu = icmp sgt i32 %.val2.i8.i.i14.i.i.i, %.sroa.03.0.extract.trunc.i.i13.i.i.i
  br i1 %i.cu, label %.lr.ph.i.i16.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i16.i.i.i:                               ; preds = %.lr.ph.i12.i.i.i, %.lr.ph.i.i16.i.i.i
  %.val2.i11.i.i17.i.i.i = phi i32 [ %.val2.i.i.i21.i.i.i, %.lr.ph.i.i16.i.i.i ], [ %.val2.i8.i.i14.i.i.i, %.lr.ph.i12.i.i.i ]
  %.sroa.0.010.i.i18.i.i.i = phi ptr [ %.sroa.0.0.i.i20.i.i.i, %.lr.ph.i.i16.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i12.i.i.i ] ; 3 uses
  %.sroa.04.09.i.i19.i.i.i = phi ptr [ %.sroa.0.010.i.i18.i.i.i, %.lr.ph.i.i16.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ] ; 3 uses
  store i32 %.val2.i11.i.i17.i.i.i, ptr %.sroa.04.09.i.i19.i.i.i, align 4, !tbaa !627
  %i.cv = getelementptr inbounds i8, ptr %.sroa.04.09.i.i19.i.i.i, i64 -4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !84
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i19.i.i.i, i64 4
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !628
  %.sroa.0.0.i.i20.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i18.i.i.i, i64 -8 ; 2 uses
  %.val2.i.i.i21.i.i.i = load i32, ptr %.sroa.0.0.i.i20.i.i.i, align 4, !tbaa !627 ; 2 uses
  %i.cy = icmp sgt i32 %.val2.i.i.i21.i.i.i, %.sroa.03.0.extract.trunc.i.i13.i.i.i
  br i1 %i.cy, label %.lr.ph.i.i16.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !1245

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i16.i.i.i, %.lr.ph.i12.i.i.i
  %.sroa.04.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ], [ %.sroa.0.010.i.i18.i.i.i, %.lr.ph.i.i16.i.i.i ]
  store i64 %i.ct, ptr %.sroa.04.0.lcssa.i.i.i.i.i, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8
  %.not.i15.i.i.i = icmp eq ptr %.sroa.0.07.i.i.i.i, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i15.i.i.i, label %.lr.ph145, label %.lr.ph.i12.i.i.i, !llvm.loop !1247

bb.l:                                             ; preds = %bb.j
  %.not18.i24.i.i.i = icmp eq ptr %.sroa.082.3, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not18.i24.i.i.i, label %.lr.ph145, label %.lr.ph.i25.i.i.i

.lr.ph.i25.i.i.i:                                 ; preds = %bb.l, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i.i.i
  %.pn19.i27.i.i.i = phi ptr [ %.sroa.08.020.i26.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i.i.i ], [ %.sroa.082.3, %bb.l ] ; 4 uses
  %.sroa.08.020.i26.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i27.i.i.i, i64 8 ; 9 uses
  %.val.i.i28.i.i.i = load i32, ptr %.sroa.08.020.i26.i.i.i, align 4, !tbaa !627
  %.val1.i.i29.i.i.i = load i32, ptr %.sroa.082.3, align 4, !tbaa !627
  %i.da = icmp slt i32 %.val.i.i28.i.i.i, %.val1.i.i29.i.i.i
  %i.db = load i64, ptr %.sroa.08.020.i26.i.i.i, align 4 ; 2 uses
  br i1 %i.da, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i25.i.i.i
  %i.dc = ptrtoint ptr %.sroa.08.020.i26.i.i.i to i64
  %i.dd = sub i64 %i.dc, %i.au
  %i.de = ashr exact i64 %i.dd, 3                 ; 5 uses
  %i.df = icmp sgt i64 %i.de, 0
  br i1 %i.df, label %.lr.ph.i.i.i.i.i.preheader.i42.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i.i.i

.lr.ph.i.i.i.i.i.preheader.i42.i.i.i:             ; preds = %bb.m
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn19.i27.i.i.i, i64 16 ; 2 uses
  %xtraiter = and i64 %i.de, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i43.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i43.i.i.i.prol

.lr.ph.i.i.i.i.i.i43.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.i42.i.i.i, %.lr.ph.i.i.i.i.i.i43.i.i.i.prol
  %.010.i.i.i.i.i.i44.i.i.i.prol = phi i64 [ %i.dn, %.lr.ph.i.i.i.i.i.i43.i.i.i.prol ], [ %i.de, %.lr.ph.i.i.i.i.i.preheader.i42.i.i.i ]
  %.069.i.i.i.i.i.i45.i.i.i.prol = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i43.i.i.i.prol ], [ %i.dg, %.lr.ph.i.i.i.i.i.preheader.i42.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i46.i.i.i.prol = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i43.i.i.i.prol ], [ %.sroa.08.020.i26.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i42.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i43.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i42.i.i.i ]
  %i.dh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i.prol, i64 -8 ; 3 uses
  %i.di = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i.prol, i64 -8 ; 3 uses
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !84
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !627
  %i.dk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i.prol, i64 -4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !84
  %i.dm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i.prol, i64 -4
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !628
  %i.dn = add nsw i64 %.010.i.i.i.i.i.i44.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i43.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i43.i.i.i.prol, !llvm.loop !1248

.lr.ph.i.i.i.i.i.i43.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i43.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i42.i.i.i
  %.010.i.i.i.i.i.i44.i.i.i.unr = phi i64 [ %i.de, %.lr.ph.i.i.i.i.i.preheader.i42.i.i.i ], [ %i.dn, %.lr.ph.i.i.i.i.i.i43.i.i.i.prol ]
  %.069.i.i.i.i.i.i45.i.i.i.unr = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.preheader.i42.i.i.i ], [ %i.di, %.lr.ph.i.i.i.i.i.i43.i.i.i.prol ]
  %.078.i.i.i.i.i.i46.i.i.i.unr = phi ptr [ %.sroa.08.020.i26.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i42.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.i43.i.i.i.prol ]
  %i.do = icmp ult i64 %i.de, 4
  br i1 %i.do, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i.i.i, label %.lr.ph.i.i.i.i.i.i43.i.i.i

.lr.ph.i.i.i.i.i.i43.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i43.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i43.i.i.i
  %.010.i.i.i.i.i.i44.i.i.i = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i.i43.i.i.i ], [ %.010.i.i.i.i.i.i44.i.i.i.unr, %.lr.ph.i.i.i.i.i.i43.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i45.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i43.i.i.i ], [ %.069.i.i.i.i.i.i45.i.i.i.unr, %.lr.ph.i.i.i.i.i.i43.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i46.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i.i43.i.i.i ], [ %.078.i.i.i.i.i.i46.i.i.i.unr, %.lr.ph.i.i.i.i.i.i43.i.i.i.prol.loopexit ] ; 8 uses
  %i.dp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i, i64 -8
  %i.dq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i, i64 -8
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !84
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !627
  %i.ds = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i, i64 -4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !84
  %i.du = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i, i64 -4
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !628
  %i.dv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i, i64 -16
  %i.dw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i, i64 -16
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !84
  store i32 %i.dx, ptr %i.dw, align 4, !tbaa !627
  %i.dy = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i, i64 -12
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !84
  %i.ea = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i, i64 -12
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !628
  %i.eb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i, i64 -24
  %i.ec = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i, i64 -24
  %i.ed = load i32, ptr %i.eb, align 4, !tbaa !84
  store i32 %i.ed, ptr %i.ec, align 4, !tbaa !627
  %i.ee = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i, i64 -20
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !84
  %i.eg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i, i64 -20
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !628
  %i.eh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i, i64 -32 ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i, i64 -32 ; 2 uses
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !84
  store i32 %i.ej, ptr %i.ei, align 4, !tbaa !627
  %i.ek = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.i.i.i, i64 -28
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !84
  %i.em = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.i.i.i, i64 -28
  store i32 %i.el, ptr %i.em, align 4, !tbaa !628
  %i.en = add nsw i64 %.010.i.i.i.i.i.i44.i.i.i, -4
  %i.eo = icmp sgt i64 %.010.i.i.i.i.i.i44.i.i.i, 4
  br i1 %i.eo, label %.lr.ph.i.i.i.i.i.i43.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i.i.i, !llvm.loop !1244

bb.n:                                             ; preds = %.lr.ph.i25.i.i.i
  %.sroa.03.0.extract.trunc.i.i30.i.i.i = trunc i64 %i.db to i32 ; 2 uses
  %.val2.i8.i.i31.i.i.i = load i32, ptr %.pn19.i27.i.i.i, align 4, !tbaa !627 ; 2 uses
  %i.ep = icmp sgt i32 %.val2.i8.i.i31.i.i.i, %.sroa.03.0.extract.trunc.i.i30.i.i.i
  br i1 %i.ep, label %.lr.ph.i.i36.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i.i.i

.lr.ph.i.i36.i.i.i:                               ; preds = %bb.n, %.lr.ph.i.i36.i.i.i
  %.val2.i11.i.i37.i.i.i = phi i32 [ %.val2.i.i.i41.i.i.i, %.lr.ph.i.i36.i.i.i ], [ %.val2.i8.i.i31.i.i.i, %bb.n ]
  %.sroa.0.010.i.i38.i.i.i = phi ptr [ %.sroa.0.0.i.i40.i.i.i, %.lr.ph.i.i36.i.i.i ], [ %.pn19.i27.i.i.i, %bb.n ] ; 3 uses
  %.sroa.04.09.i.i39.i.i.i = phi ptr [ %.sroa.0.010.i.i38.i.i.i, %.lr.ph.i.i36.i.i.i ], [ %.sroa.08.020.i26.i.i.i, %bb.n ] ; 3 uses
  store i32 %.val2.i11.i.i37.i.i.i, ptr %.sroa.04.09.i.i39.i.i.i, align 4, !tbaa !627
  %i.eq = getelementptr inbounds i8, ptr %.sroa.04.09.i.i39.i.i.i, i64 -4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !84
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i39.i.i.i, i64 4
  store i32 %i.er, ptr %i.es, align 4, !tbaa !628
  %.sroa.0.0.i.i40.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i38.i.i.i, i64 -8 ; 2 uses
  %.val2.i.i.i41.i.i.i = load i32, ptr %.sroa.0.0.i.i40.i.i.i, align 4, !tbaa !627 ; 2 uses
  %i.et = icmp sgt i32 %.val2.i.i.i41.i.i.i, %.sroa.03.0.extract.trunc.i.i30.i.i.i
  br i1 %i.et, label %.lr.ph.i.i36.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i.i.i, !llvm.loop !1245

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i.i.i: ; preds = %.lr.ph.i.i36.i.i.i, %.lr.ph.i.i.i.i.i.i43.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i43.i.i.i, %bb.n, %bb.m
  %.sink.i33.i.i.i = phi ptr [ %.sroa.082.3, %bb.m ], [ %.sroa.082.3, %.lr.ph.i.i.i.i.i.i43.i.i.i.prol.loopexit ], [ %.sroa.08.020.i26.i.i.i, %bb.n ], [ %.sroa.082.3, %.lr.ph.i.i.i.i.i.i43.i.i.i ], [ %.sroa.0.010.i.i38.i.i.i, %.lr.ph.i.i36.i.i.i ]
  store i64 %i.db, ptr %.sink.i33.i.i.i, align 4
  %.not.i35.i.i.i = icmp eq ptr %.sroa.08.020.i26.i.i.i, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i35.i.i.i, label %.lr.ph145, label %.lr.ph.i25.i.i.i, !llvm.loop !1246

.lr.ph145:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_T0_.exit.i.i.i.i", %bb.l, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZL41llama_sampler_penalties_backend_set_inputP13llama_samplerE3$_0EEEvT_SF_T0_.exit.i.i.i", %._crit_edge140
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !199 ; 7 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !199 ; 7 uses
  %smax180 = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  %wide.trip.count181 = zext nneg i32 %smax180 to i64 ; 7 uses
  %min.iters.check = icmp slt i32 %i.ac, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph145
  %i.ey = shl nuw nsw i64 %wide.trip.count181, 2  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ev, i64 %i.ey ; 2 uses
  %scevgep251 = getelementptr i8, ptr %i.ex, i64 %i.ey ; 2 uses
  %i.ez = shl nuw nsw i64 %wide.trip.count181, 3
  %scevgep252 = getelementptr i8, ptr %.sroa.082.3, i64 %i.ez ; 2 uses
  %bound0 = icmp ult ptr %i.ev, %scevgep251
  %bound1 = icmp ult ptr %i.ex, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0253 = icmp ult ptr %i.ev, %scevgep252
  %bound1254 = icmp ult ptr %.sroa.082.3, %scevgep
  %found.conflict255 = and i1 %bound0253, %bound1254
  %conflict.rdx = or i1 %found.conflict, %found.conflict255
  %bound0256 = icmp ult ptr %i.ex, %scevgep252
  %bound1257 = icmp ult ptr %.sroa.082.3, %scevgep251
  %found.conflict258 = and i1 %bound0256, %bound1257
  %conflict.rdx259 = or i1 %conflict.rdx, %found.conflict258
  br i1 %conflict.rdx259, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count181, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.082.3, i64 %index
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.082.3, i64 %index
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %wide.vec = load <8 x i32>, ptr %i.fa, align 4, !tbaa !84, !alias.scope !1262 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec260 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec261 = load <8 x i32>, ptr %i.fc, align 4, !tbaa !84, !alias.scope !1262 ; 2 uses
  %strided.vec262 = shufflevector <8 x i32> %wide.vec261, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec263 = shufflevector <8 x i32> %wide.vec261, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <4 x i32> %strided.vec, ptr %i.fd, align 4, !tbaa !84, !alias.scope !1263, !noalias !1264
  store <4 x i32> %strided.vec262, ptr %i.fe, align 4, !tbaa !84, !alias.scope !1263, !noalias !1264
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %index ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store <4 x i32> %strided.vec260, ptr %i.ff, align 4, !tbaa !84, !alias.scope !1265, !noalias !1262
  store <4 x i32> %strided.vec263, ptr %i.fg, align 4, !tbaa !84, !alias.scope !1265, !noalias !1262
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !1253

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count181
  br i1 %cmp.n, label %._crit_edge146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph145, %middle.block
  %indvars.iv177.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph145 ], [ %n.vec, %middle.block ] ; 6 uses
  %i.fi = and i64 %wide.trip.count181, 1
  %lcmp.mod280.not.not = icmp eq i64 %i.fi, 0
  br i1 %lcmp.mod280.not.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.082.3, i64 %indvars.iv177.ph ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !627
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv177.ph
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !84
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !628
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv177.ph
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !84
  %indvars.iv.next178.prol = or disjoint i64 %indvars.iv177.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv177.unr = phi i64 [ %indvars.iv177.ph, %scalar.ph.preheader ], [ %indvars.iv.next178.prol, %scalar.ph.prol ]
  %1 = add nsw i64 %wide.trip.count181, -1
  %i.fp = icmp eq i64 %indvars.iv177.ph, %1
  br i1 %i.fp, label %._crit_edge146, label %scalar.ph

bb.o:                                             ; preds = %._crit_edge, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit
  %indvars.iv174 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next175, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit ] ; 4 uses
  %.sroa.19.0137 = phi ptr [ %i.af, %._crit_edge ], [ %.sroa.19.3, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit ] ; 7 uses
  %.sroa.13.0136 = phi ptr [ %i.ae, %._crit_edge ], [ %.sroa.13.2, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit ] ; 4 uses
  %.sroa.082.0135 = phi ptr [ %i.ae, %._crit_edge ], [ %.sroa.082.3, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit ] ; 8 uses
  %i.fq = load ptr, ptr %i.ag, align 8, !tbaa !199
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv174 ; 2 uses
  %i.fs = load ptr, ptr %i.ah, align 8, !tbaa !199
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv174 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.13.0136, %.sroa.19.0137
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fu = load i32, ptr %i.fr, align 4, !tbaa !84
  store i32 %i.fu, ptr %.sroa.13.0136, align 4, !tbaa !627
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.13.0136, i64 4
  %i.fw = load i32, ptr %i.ft, align 4, !tbaa !84
  store i32 %i.fw, ptr %i.fv, align 4, !tbaa !628
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit

bb.q:                                             ; preds = %bb.o
  %i.fx = ptrtoint ptr %.sroa.19.0137 to i64
  %i.fy = ptrtoint ptr %.sroa.082.0135 to i64
  %i.fz = sub i64 %i.fx, %i.fy                    ; 4 uses
  %i.ga = icmp eq i64 %i.fz, 9223372036854775800
  br i1 %i.ga, label %bb.r, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #38
          to label %.noexc69 unwind label %.loopexit.split-lp

.noexc69:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.gb = ashr exact i64 %i.fz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gb, i64 1)
  %i.gc = add nsw i64 %.sroa.speculated.i.i.i, %i.gb ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.gb
  %i.ge = tail call i64 @llvm.umin.i64(i64 %i.gc, i64 1152921504606846975)
  %i.gf = select i1 %i.gd, i64 1152921504606846975, i64 %i.ge ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.gg = shl nuw nsw i64 %i.gf, 3
  %i.gh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gg) #37
          to label %.noexc70 unwind label %.loopexit114 ; 5 uses

.noexc70:                                         ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.fz ; 2 uses
  %i.gj = load i32, ptr %i.fr, align 4, !tbaa !84
  store i32 %i.gj, ptr %i.gi, align 4, !tbaa !627
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gl = load i32, ptr %i.ft, align 4, !tbaa !84
  store i32 %i.gl, ptr %i.gk, align 4, !tbaa !628
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.082.0135, %.sroa.19.0137
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i68

.lr.ph.i.i.i.i.i68:                               ; preds = %.noexc70, %.lr.ph.i.i.i.i.i68
  %.012.i.i.i.i.i = phi ptr [ %i.go, %.lr.ph.i.i.i.i.i68 ], [ %i.gh, %.noexc70 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gn, %.lr.ph.i.i.i.i.i68 ], [ %.sroa.082.0135, %.noexc70 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  %i.gm = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !1267, !noalias !1266
  store i64 %i.gm, ptr %.012.i.i.i.i.i, align 4, !alias.scope !1266, !noalias !1267
  %i.gn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gn, %.sroa.19.0137
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i68, !llvm.loop !1257

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i68, %.noexc70
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gh, %.noexc70 ], [ %i.go, %.lr.ph.i.i.i.i.i68 ]
  %.not.i34.i.i = icmp eq ptr %.sroa.082.0135, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.082.0135, i64 noundef %i.fz) #39
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gf
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.p
  %.sroa.082.3 = phi ptr [ %i.gh, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.082.0135, %bb.p ] ; 27 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.13.0136, %bb.p ] ; 4 uses
  %.sroa.19.3 = phi ptr [ %i.gp, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.19.0137, %bb.p ] ; 4 uses
  %.sroa.13.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 8 ; 5 uses
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1
  %exitcond.not = icmp eq i64 %indvars.iv174, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge140, label %bb.o, !llvm.loop !1258

.loopexit114:                                     ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

._crit_edge146:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.f
  %.061.lcssa198205212222 = phi i32 [ 0, %bb.f ], [ %i.ac, %middle.block ], [ %i.ac, %scalar.ph ], [ %i.ac, %scalar.ph.prol.loopexit ] ; 2 uses
  %.sroa.082.0.lcssa214221 = phi ptr [ null, %bb.f ], [ %.sroa.082.3, %middle.block ], [ %.sroa.082.3, %scalar.ph ], [ %.sroa.082.3, %scalar.ph.prol.loopexit ] ; 4 uses
  %.sroa.19.0.lcssa215220 = phi ptr [ null, %bb.f ], [ %.sroa.19.3, %middle.block ], [ %.sroa.19.3, %scalar.ph ], [ %.sroa.19.3, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.gq = load i32, ptr %i.g, align 8, !tbaa !623 ; 2 uses
  %i.gr = icmp slt i32 %.061.lcssa198205212222, %i.gq
  br i1 %i.gr, label %.preheader109, label %.._crit_edge154_crit_edge

.preheader109:                                    ; preds = %._crit_edge146
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !622
  %.not.not.i.i = icmp eq i64 %i.gt, 0
  br i1 %.not.not.i.i, label %.preheader.us, label %.preheader109.split

.preheader.us:                                    ; preds = %.preheader109, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit.loopexit.us
  %.098.us = phi i32 [ %i.gx, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit.loopexit.us ], [ 0, %.preheader109 ] ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %.preheader.us, %bb.u
  %.sroa.06.0.in.i.i.us = phi ptr [ %.sroa.06.0.i.i.us, %bb.u ], [ %i.z, %.preheader.us ]
  %.sroa.06.0.i.i.us = load ptr, ptr %.sroa.06.0.in.i.i.us, align 8, !tbaa !214 ; 3 uses
  %.not.i.i73.us = icmp eq ptr %.sroa.06.0.i.i.us, null
  br i1 %.not.i.i73.us, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.us, i64 8
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !84
  %i.gw = icmp eq i32 %.098.us, %i.gv
  br i1 %i.gw, label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit.loopexit.us, label %bb.t, !llvm.loop !40

_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit.loopexit.us: ; preds = %bb.u
  %i.gx = add nuw nsw i32 %.098.us, 1
  br label %.preheader.us, !llvm.loop !1259

.preheader109.split:                              ; preds = %.preheader109
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !203 ; 2 uses
  %i.ha = load ptr, ptr %i.y, align 8, !tbaa !202 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !219 ; 2 uses
  %.not.i.i.i.i71147 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i.i71147, label %.loopexit.thread, label %.lr.ph149

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv177 = phi i64 [ %indvars.iv.next178.1, %scalar.ph ], [ %indvars.iv177.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.082.3, i64 %indvars.iv177 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !627
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv177
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !84
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !628
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv177
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !84
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 3 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.082.3, i64 %indvars.iv.next178 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !627
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.next178
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !84
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !628
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.next178
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !84
  %indvars.iv.next178.1 = add nuw nsw i64 %indvars.iv177, 2 ; 2 uses
  %exitcond181.not.1 = icmp eq i64 %indvars.iv.next178.1, %wide.trip.count181
  br i1 %exitcond181.not.1, label %._crit_edge146, label %scalar.ph, !llvm.loop !1260

.lr.ph149:                                        ; preds = %.preheader109.split, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit ], [ 0, %.preheader109.split ] ; 5 uses
  %i.ho = phi ptr [ %i.if, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit ], [ %i.hb, %.preheader109.split ]
  %i.hp = phi i64 [ %i.id, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit ], [ 0, %.preheader109.split ]
  %i.hq = load ptr, ptr %i.ho, align 8, !tbaa !214 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !84
  %i.ht = zext i32 %i.hs to i64
  %i.hu = icmp eq i64 %indvars.iv182, %i.ht
  br i1 %i.hu, label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit, label %.lr.ph.i.i.i.i72

bb.v:                                             ; preds = %bb.w
  %i.hv = zext i32 %i.hz to i64
  %i.hw = icmp eq i64 %indvars.iv182, %i.hv
  br i1 %i.hw, label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit, label %.lr.ph.i.i.i.i72, !llvm.loop !39

.lr.ph.i.i.i.i72:                                 ; preds = %.lr.ph149, %bb.v
  %.020.i.i.i.i = phi ptr [ %i.hx, %bb.v ], [ %i.hq, %.lr.ph149 ]
  %i.hx = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !214 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.hx, null
  br i1 %.not18.i.i.i.i, label %.loopexit.loopexit158, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i72
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !84 ; 2 uses
  %i.ia = sext i32 %i.hz to i64
  %i.ib = urem i64 %i.ia, %i.gz
  %.not19.i.i.i.i = icmp eq i64 %i.ib, %i.hp
  br i1 %.not19.i.i.i.i, label %bb.v, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !39

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.w
  %i.ic = trunc nuw nsw i64 %indvars.iv182 to i32
  br label %.loopexit, !llvm.loop !39

_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit: ; preds = %bb.v, %.lr.ph149
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 3 uses
  %i.id = urem i64 %indvars.iv.next183, %i.gz     ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.id
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !219 ; 2 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i.i71, label %.loopexit.loopexit159, label %.lr.ph149, !llvm.loop !1259

.loopexit.loopexit158:                            ; preds = %.lr.ph.i.i.i.i72
  %i.ig = trunc nuw nsw i64 %indvars.iv182 to i32
  br label %.loopexit

.loopexit.loopexit159:                            ; preds = %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE4findERS5_.exit
  %i.ih = trunc nuw i64 %indvars.iv.next183 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.t, %.loopexit.loopexit159, %.loopexit.loopexit158, %..loopexit_crit_edge21.i.i.i.i
  %.098118 = phi i32 [ %i.ih, %.loopexit.loopexit159 ], [ %i.ig, %.loopexit.loopexit158 ], [ %i.ic, %..loopexit_crit_edge21.i.i.i.i ], [ %.098.us, %bb.t ] ; 2 uses
  %i.ii = load i32, ptr %i.j, align 4, !tbaa !193
  %i.ij = icmp slt i32 %.098118, %i.ii
  br i1 %i.ij, label %.lr.ph153, label %bb.x

.loopexit.thread:                                 ; preds = %.preheader109.split
  %i.ik = load i32, ptr %i.j, align 4, !tbaa !193
  %i.il = icmp sgt i32 %i.ik, 0
  br i1 %i.il, label %.lr.ph153, label %bb.x

bb.x:                                             ; preds = %.loopexit.thread, %.loopexit
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 3166, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.284) #38
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.ab, %._crit_edge154, %bb.x
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.._crit_edge154_crit_edge:                        ; preds = %._crit_edge146
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !199
  br label %._crit_edge154

.lr.ph153:                                        ; preds = %.loopexit, %.loopexit.thread
  %.1227 = phi i32 [ 0, %.loopexit.thread ], [ %.098118, %.loopexit ]
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !199 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !199
  %i.ir = zext nneg i32 %.061.lcssa198205212222 to i64
  br label %bb.aa

._crit_edge154:                                   ; preds = %bb.aa, %.._crit_edge154_crit_edge
  %i.is = phi ptr [ %.pre, %.._crit_edge154_crit_edge ], [ %i.io, %bb.aa ]
  %.lcssa = phi i32 [ %i.gq, %.._crit_edge154_crit_edge ], [ %i.iy, %bb.aa ]
  %i.it = load ptr, ptr %i.c, align 8, !tbaa !624
  %i.iu = sext i32 %.lcssa to i64
  %i.iv = shl nsw i64 %i.iu, 2
  invoke void @ggml_backend_tensor_set(ptr noundef %i.it, ptr noundef %i.is, i64 noundef 0, i64 noundef %i.iv)
          to label %bb.ab unwind label %bb.z

bb.aa:                                            ; preds = %.lr.ph153, %bb.aa
  %indvars.iv185 = phi i64 [ %i.ir, %.lr.ph153 ], [ %indvars.iv.next186, %bb.aa ] ; 3 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv185
  store i32 %.1227, ptr %i.iw, align 4, !tbaa !84
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv185
  store i32 0, ptr %i.ix, align 4, !tbaa !84
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %i.iy = load i32, ptr %i.g, align 8, !tbaa !623 ; 2 uses
  %i.iz = trunc nuw i64 %indvars.iv.next186 to i32
  %i.ja = icmp sgt i32 %i.iy, %i.iz
  br i1 %i.ja, label %bb.aa, label %._crit_edge154, !llvm.loop !1261

bb.ab:                                            ; preds = %._crit_edge154
  %i.jb = load ptr, ptr %i.e, align 8, !tbaa !625
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !199
  %i.je = load i32, ptr %i.g, align 8, !tbaa !623
  %i.jf = sext i32 %i.je to i64
  %i.jg = shl nsw i64 %i.jf, 2
  invoke void @ggml_backend_tensor_set(ptr noundef %i.jb, ptr noundef %i.jd, i64 noundef 0, i64 noundef %i.jg)
          to label %bb.ac unwind label %bb.z

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i.i74 = icmp eq ptr %.sroa.082.0.lcssa214221, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jh = ptrtoint ptr %.sroa.19.0.lcssa215220 to i64
  %i.ji = ptrtoint ptr %.sroa.082.0.lcssa214221 to i64
  %i.jj = sub i64 %i.jh, %i.ji
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.082.0.lcssa214221, i64 noundef %i.jj) #39
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit:        ; preds = %bb.e, %bb.ad, %bb.ac, %_ZNK23llama_sampler_penalties11is_disabledEv.exit, %bb.a, %bb.b, %bb.c, %bb.d
  ret void

bb.ae:                                            ; preds = %.loopexit114, %.loopexit.split-lp, %bb.z
  %.sroa.082.0128 = phi ptr [ %.sroa.082.0.lcssa214221, %bb.z ], [ %.sroa.082.0135, %.loopexit114 ], [ %.sroa.082.0135, %.loopexit.split-lp ] ; 3 uses
  %.sroa.19.0122 = phi ptr [ %.sroa.19.0.lcssa215220, %bb.z ], [ %.sroa.19.0137, %.loopexit114 ], [ %.sroa.19.0137, %.loopexit.split-lp ]
  %.pn64 = phi { ptr, i32 } [ %i.im, %bb.z ], [ %lpad.loopexit, %.loopexit114 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i75 = icmp eq ptr %.sroa.082.0128, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit76, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jk = ptrtoint ptr %.sroa.19.0122 to i64
  %i.jl = ptrtoint ptr %.sroa.082.0128 to i64
  %i.jm = sub i64 %i.jk, %i.jl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.082.0128, i64 noundef %i.jm) #39
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit76

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit76:      ; preds = %bb.ae, %bb.af
  resume { ptr, i32 } %.pn64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL37llama_sampler_penalties_backend_resetP13llama_sampler(ptr nofree noundef readonly captures(none) %0) #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL32llama_sampler_backend_copy_stateI23llama_sampler_penaltiesEvPK13llama_samplerPS1_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h) ; 0 uses
  %i.j = icmp eq ptr %i.d, %i.b
  br i1 %i.j, label %_ZN23llama_sampler_penalties10copy_stateERKS_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  tail call void @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE18_M_assign_elementsIRKSF_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.l)
  br label %_ZN23llama_sampler_penalties10copy_stateERKS_.exit

_ZN23llama_sampler_penalties10copy_stateERKS_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !222
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !203
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !622
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
end_hunk_0
