Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.13?download=true
inline.NumInlined: 4898
inline.NumDeleted: 279
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB5_5Model3new:bb.a
  %.sroa.622.i.i = alloca [56 x i8], align 8      ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.613.i.i = alloca [56 x i8], align 8      ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 8 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.6.i53.i = alloca [56 x i8], align 8      ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 14 uses
  %.sroa.05.i.sroa.8.i = alloca [152 x i8], align 8 ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.041.i.sroa.5.i = alloca [208 x i8], align 8 ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.634.i.i = alloca [56 x i8], align 8      ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.625.i.i = alloca [56 x i8], align 8      ; 6 uses
  %i.n = alloca [56 x i8], align 8                ; 7 uses
  %i.o = alloca [40 x i8], align 8                ; 4 uses
  %i.p = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.616.i.i = alloca [56 x i8], align 8      ; 6 uses
  %i.q = alloca [56 x i8], align 8                ; 8 uses
  %i.r = alloca [40 x i8], align 8                ; 4 uses
  %i.s = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.6.i.i = alloca [56 x i8], align 8        ; 6 uses
  %i.t = alloca [56 x i8], align 8                ; 9 uses
  %i.u = alloca [80 x i8], align 8                ; 7 uses
  %i.v = alloca [80 x i8], align 8                ; 6 uses
  %i.w = alloca [8 x i8], align 8                 ; 9 uses
  %.sroa.6 = alloca [600 x i8], align 8           ; 7 uses
  %i.x = alloca [40 x i8], align 8                ; 4 uses
  %i.y = alloca [80 x i8], align 8                ; 5 uses
  %.sroa.622.i = alloca [72 x i8], align 8        ; 6 uses
  %i.z = alloca [40 x i8], align 8                ; 4 uses
  %i.aa = alloca [80 x i8], align 8               ; 5 uses
  %.sroa.616.i = alloca [72 x i8], align 8        ; 6 uses
  %i.ab = alloca [72 x i8], align 8               ; 7 uses
  %i.ac = alloca [40 x i8], align 8               ; 8 uses
  %.sroa.14.i = alloca [56 x i8], align 8         ; 8 uses
  %.sroa.17.i = alloca [16 x i8], align 8         ; 8 uses
  %.sroa.67.sroa.7.i = alloca [56 x i8], align 8  ; 6 uses
  %.sroa.67.sroa.8.i = alloca [16 x i8], align 8  ; 6 uses
  %i.ad = alloca [184 x i8], align 8              ; 15 uses
  %i.ae = alloca [40 x i8], align 8               ; 11 uses
  %i.af = alloca [8 x i8], align 8                ; 5 uses
  %.sroa.18.i = alloca [56 x i8], align 8         ; 11 uses
  %.sroa.22.i = alloca [16 x i8], align 8         ; 11 uses
  %.sroa.26.i = alloca [136 x i8], align 8        ; 5 uses
  %.sroa.6.sroa.7.i = alloca [56 x i8], align 8   ; 7 uses
  %.sroa.6.sroa.8.i = alloca [16 x i8], align 8   ; 7 uses
  %i.ag = alloca [360 x i8], align 8              ; 27 uses
  %i.ah = alloca [80 x i8], align 8               ; 8 uses
  %i.ai = alloca [8 x i8], align 8                ; 11 uses
  %i.aj = alloca [80 x i8], align 8               ; 9 uses
  %i.ak = alloca [80 x i8], align 8               ; 8 uses
  %i.al = alloca [8 x i8], align 8                ; 11 uses
  %i.am = alloca [80 x i8], align 8               ; 9 uses
  %i.an = alloca [8 x i8], align 8                ; 16 uses
  %i.ao = alloca [80 x i8], align 8               ; 8 uses
  %i.ap = alloca [8 x i8], align 8                ; 32 uses
  %i.aq = alloca [80 x i8], align 8               ; 8 uses
  %i.ar = alloca [8 x i8], align 8                ; 13 uses
  %i.as = alloca [80 x i8], align 8               ; 9 uses
  %i.at = alloca [8 x i8], align 8                ; 11 uses
  %i.au = alloca [80 x i8], align 8               ; 10 uses
  %i.av = alloca [8 x i8], align 8                ; 35 uses
  %i.aw = alloca [80 x i8], align 8               ; 8 uses
  %i.ax = alloca [8 x i8], align 8                ; 11 uses
  %i.ay = alloca [80 x i8], align 8               ; 9 uses
  %i.az = alloca [8 x i8], align 8                ; 35 uses
  %i.ba = alloca [48 x i8], align 8               ; 9 uses
  %i.bb = alloca [24 x i8], align 8               ; 10 uses
  %i.bc = alloca [8 x i8], align 8                ; 9 uses
  %i.bd = alloca [24 x i8], align 8               ; 6 uses
  %i.be = alloca [32 x i8], align 8               ; 8 uses
  %i.bf = alloca [40 x i8], align 8               ; 4 uses
  %i.bg = alloca [80 x i8], align 8               ; 5 uses
  %.sroa.637 = alloca [72 x i8], align 8          ; 6 uses
  %i.bh = alloca [24 x i8], align 8               ; 9 uses
  %i.bi = alloca [16 x i8], align 8               ; 12 uses
  %.sroa.031 = alloca [96 x i8], align 8          ; 6 uses
  %i.bj = alloca [688 x i8], align 8              ; 6 uses
  %i.bk = alloca [40 x i8], align 8               ; 9 uses
  %i.bl = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.16167 = alloca [72 x i8], align 8        ; 10 uses
  %.sroa.22 = alloca [600 x i8], align 8          ; 5 uses
  %.sroa.627.sroa.7 = alloca [72 x i8], align 8   ; 6 uses
  %i.bm = alloca [40 x i8], align 8               ; 11 uses
  %i.bn = alloca [24 x i8], align 8               ; 14 uses
  %.sroa.42 = alloca [56 x i8], align 8           ; 14 uses
  %i.bo = alloca [8 x i8], align 8                ; 18 uses
  %i.bp = alloca [40 x i8], align 8               ; 4 uses
  %i.bq = alloca [80 x i8], align 8               ; 8 uses
  %i.br = alloca [16 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !4 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 18)
          to label %bb.c unwind label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm322SmolLM3RotaryEmbeddingEEEB1D_.exit114: ; preds = %.thread, %bb.ka, %bb.eq, %bb.ep, %bb.er, %.noexc109, %bb.b
  %.pn96 = phi { ptr, i32 } [ %i.bw, %bb.b ], [ %.pn86, %bb.eq ], [ %.pn93, %.noexc109 ], [ %.pn86, %bb.er ], [ %.pn86, %bb.ep ], [ %.pn93.pn185, %bb.ka ], [ %.pn93.pn185, %.thread ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %2) #22
          to label %bb.kb unwind label %bb.fe

bb.b:                                             ; preds = %bb.ju, %bb.fd, %bb.ev, %bb.c, %bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm322SmolLM3RotaryEmbeddingEEEB1D_.exit114

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn9embedding9embedding(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.bq, i64 noundef %i.bt, i64 noundef %i.bv, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.bp)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.bx = load i64, ptr %i.bq, align 8, !range !13, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.bx, -1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.cb = load i64, ptr %i.ca, align 8            ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.656.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.652.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bx, ptr %i.cc, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bz, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cb, ptr %.sroa.555.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn9embedding9EmbeddingECs1dZk1kIfPhr_19candle_transformers.exit146

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  store ptr %i.bz, ptr %i.br, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  store i64 %i.cb, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !4 ; 12 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cl = load i64, ptr %i.ch, align 8, !range !29226
  %.fr = freeze i64 %i.cl
  %.not.i.i.i.i = icmp eq i64 %.fr, -1            ; 3 uses
  %i.cm = load i64, ptr %i.ci, align 8            ; 6 uses
  %i.cn = icmp ult i64 %i.cm, 1152921504606846976 ; 3 uses
  %i.co = load ptr, ptr %i.cj, align 8, !nonnull !4 ; 3 uses
  %i.cp = load i64, ptr %i.ck, align 8, !range !10
  %.fr280 = freeze i64 %i.cp
  %i.cq = trunc i64 %.fr280 to i1
  %i.cr = load i64, ptr %i.cg, align 8
  %.fr281 = freeze i64 %i.cr                      ; 3 uses
  br i1 %i.cq, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.f
  %i.cs = icmp eq i64 %.fr281, 0
  br i1 %i.cs, label %.split.us.split.us, label %.split.us.split

.split.us.split.us:                               ; preds = %.split.us
  br i1 %.not.i.i.i.i, label %.split254.us, label %.split.us.split.us.split.preheader

.split.us.split.us.split.preheader:               ; preds = %.split.us.split.us
  %exitcond.not.i.us.us444 = icmp eq i64 %i.cf, 0
  br i1 %exitcond.not.i.us.us444, label %.split254.us.thread, label %.lr.ph445.preheader

.lr.ph445.preheader:                              ; preds = %.split.us.split.us.split.preheader
  call void @llvm.assume(i1 %i.cn)
  br label %.lr.ph445

.split.us.split.us.split:                         ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i.us.us
  %i.ct = add i64 %i.cu, 1                        ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %i.ct, %i.cf
  br i1 %exitcond.not.i.us.us, label %.split254.us.thread, label %.lr.ph445

.lr.ph445:                                        ; preds = %.lr.ph445.preheader, %.split.us.split.us.split
  %i.cu = phi i64 [ %i.ct, %.split.us.split.us.split ], [ 0, %.lr.ph445.preheader ] ; 4 uses
  %exitcond317.not = icmp eq i64 %i.cu, %i.cm
  br i1 %exitcond317.not, label %.split254.us, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i.us.us

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i.us.us: ; preds = %.lr.ph445
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !29227, !noundef !4
  %.sroa.0.0.shrunk.i.i.i.i.us.us = icmp eq i64 %i.cw, 0
  br i1 %.sroa.0.0.shrunk.i.i.i.i.us.us, label %.split.us.split.us.split, label %.split254.us

.split.us.split:                                  ; preds = %.split.us
  %exitcond.not.i.us.us266443 = icmp eq i64 %i.cf, 0
  br i1 %exitcond.not.i.us.us266443, label %.split254.us.thread, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  br i1 %.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i.us.us267, label %.lr.ph442.preheader

.lr.ph442.preheader:                              ; preds = %.split.us.split.split.preheader
  call void @llvm.assume(i1 %i.cn)
  br label %.lr.ph442

.split.us.split.split.us:                         ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i.us.us267
  %exitcond.not.i.us.us266 = icmp eq i64 %i.cy, %i.cf
  br i1 %exitcond.not.i.us.us266, label %.split254.us.thread, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i.us.us267

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i.us.us267: ; preds = %.split.us.split.split.preheader, %.split.us.split.split.us
  %i.cx = phi i64 [ %i.cy, %.split.us.split.split.us ], [ 0, %.split.us.split.split.preheader ] ; 2 uses
  %i.cy = add i64 %i.cx, 1                        ; 3 uses
  %i.cz = urem i64 %i.cy, %.fr281
  %.sroa.0.0.shrunk.i.i.i.i.us.us269 = icmp eq i64 %i.cz, 0
  br i1 %.sroa.0.0.shrunk.i.i.i.i.us.us269, label %.split.us.split.split.us, label %.split254.us

.split.us.split.split:                            ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i.us
  %exitcond.not.i.us = icmp eq i64 %i.db, %i.cf
  br i1 %exitcond.not.i.us, label %.split254.us.thread, label %.lr.ph442

.lr.ph442:                                        ; preds = %.lr.ph442.preheader, %.split.us.split.split
  %i.da = phi i64 [ %i.db, %.split.us.split.split ], [ 0, %.lr.ph442.preheader ] ; 4 uses
  %i.db = add i64 %i.da, 1                        ; 3 uses
  %i.dc = icmp ult i64 %i.da, %i.cm
  br i1 %i.dc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph442
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.da
  %i.de = load i64, ptr %i.dd, align 8, !noalias !29227, !noundef !4
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i.us

bb.h:                                             ; preds = %.lr.ph442
  %i.df = urem i64 %i.db, %.fr281
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i.us

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i.us: ; preds = %bb.h, %bb.g
  %.sroa.0.0.shrunk.i.i.i.in.i.us = phi i64 [ %i.de, %bb.g ], [ %i.df, %bb.h ]
  %.sroa.0.0.shrunk.i.i.i.i.us = icmp eq i64 %.sroa.0.0.shrunk.i.i.i.in.i.us, 0
  br i1 %.sroa.0.0.shrunk.i.i.i.i.us, label %.split.us.split.split, label %.split254.us

.split:                                           ; preds = %bb.f
  br i1 %.not.i.i.i.i, label %.split254.us, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  %exitcond.not.i439 = icmp eq i64 %i.cf, 0
  br i1 %exitcond.not.i439, label %.split254.us.thread, label %.lr.ph440.preheader

.lr.ph440.preheader:                              ; preds = %.split.split.preheader
  call void @llvm.assume(i1 %i.cn)
  br label %.lr.ph440

.split.split:                                     ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i
  %i.dg = add i64 %i.dh, 1                        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dg, %i.cf
  br i1 %exitcond.not.i, label %.split254.us.thread, label %.lr.ph440

.lr.ph440:                                        ; preds = %.lr.ph440.preheader, %.split.split
  %i.dh = phi i64 [ %i.dg, %.split.split ], [ 0, %.lr.ph440.preheader ] ; 4 uses
  %exitcond.not = icmp eq i64 %i.dh, %i.cm
  br i1 %exitcond.not, label %.split254.us, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i: ; preds = %.lr.ph440
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !noalias !29227, !noundef !4
  %.sroa.0.0.shrunk.i.i.i.i = icmp eq i64 %i.dj, 0
  br i1 %.sroa.0.0.shrunk.i.i.i.i, label %.split.split, label %.split254.us

.noexc109:                                        ; preds = %bb.ea, %bb.dz, %.body139
  br i1 %.sroa.044.1, label %.thread, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm322SmolLM3RotaryEmbeddingEEEB1D_.exit114

bb.i:                                             ; preds = %bb.jt, %bb.dq, %bb.dp, %bb.da, %bb.cf, %bb.s, %bb.l, %.noexc, %bb.k
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.split254.us.thread:                              ; preds = %.split.split, %.split.us.split.split, %.split.us.split.split.us, %.split.us.split.us.split, %.split.us.split, %.split.split.preheader, %.split.us.split.us.split.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  br label %bb.ds

.split254.us:                                     ; preds = %.lr.ph440, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i.us, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i.us.us267, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i.us.us, %.lr.ph445, %.split, %.split.us.split.us
  %.us-phi = phi i64 [ %i.cx, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i.us.us267 ], [ 0, %.split.us.split.us ], [ %i.da, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i.us ], [ 0, %.split ], [ %i.cm, %.lr.ph445 ], [ %i.cu, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i.us.us ], [ %i.cm, %.lr.ph440 ], [ %i.dh, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkjNCNvMs4_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB1k_5Model3new0E0B1q_.exit.i ]
  %i.dl = icmp ult i64 %.us-phi, %i.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  br i1 %i.dl, label %bb.j, label %bb.ds

bb.j:                                             ; preds = %.split254.us
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42)
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dn = load i8, ptr %i.dm, align 8, !range !14, !noundef !4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !nonnull !4, !noundef !4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 25 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29228)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !29229
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !29228, !noalias !29230, !noundef !4 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.du = udiv i64 %i.bv, %i.ds                   ; 3 uses
  store i64 %i.du, ptr %i.bc, align 8, !noalias !29229
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !29228, !noalias !29230, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !29229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !29229
  %i.dx = lshr i64 %i.du, 1
  %.sroa.05.0.i.i.i = sub nuw i64 %i.du, %i.dx
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 0, ptr %i.dy, align 8, !noalias !29229
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i64 %.sroa.05.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !29229
  %.sroa.5327.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store i64 1, ptr %.sroa.5327.0..sroa_idx.i, align 8, !noalias !29229
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store i8 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !29229
  store ptr %1, ptr %i.ba, align 8, !noalias !29229
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bc, ptr %i.dz, align 8, !noalias !29229
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecfEINtB4_18SpecFromIterNestedfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1B_7step_by6StepByINtNtNtB1F_3ops5range5RangejEENCNvMs_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models4smol7smollm3NtB3j_22SmolLM3RotaryEmbedding3new0EE9from_iterB3p_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ba)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !29229
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !29229, !noundef !4 ; 2 uses
  %i.ec = icmp ult i64 %i.eb, 2305843009213693952
  call void @llvm.assume(i1 %i.ec)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !29229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !29229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !29229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !29229
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor13from_vec_implTjjEfECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.aw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bb, i64 noundef 1, i64 noundef %i.eb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.dq, i1 noundef zeroext false)
          to label %.noexc99 unwind label %bb.i

.noexc99:                                         ; preds = %.noexc
  %i.ed = load i64, ptr %i.aw, align 8, !range !13, !noalias !29229, !noundef !4 ; 2 uses
  %.not.i98 = icmp eq i64 %i.ed, -1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !29229 ; 2 uses
  br i1 %.not.i98, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #23
          to label %.noexc100 unwind label %bb.i

.noexc100:                                        ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %.noexc99
  %.sroa.5101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.29.16.copyload = load ptr, ptr %.sroa.5101.0..sroa_idx.i, align 8, !noalias !29231
  %.sroa.42.16..sroa.5101.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.42, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.42.16..sroa.5101.0..sroa_idx.i.sroa_idx, i64 56, i1 false), !noalias !29231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !29229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !29229
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit220.i

bb.n:                                             ; preds = %.noexc99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !29229
  store ptr %i.ef, ptr %i.ax, align 8, !noalias !29229
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor8to_dtype(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax, i8 noundef 7)
          to label %bb.q unwind label %bb.o, !noalias !29232

bb.o:                                             ; preds = %bb.n
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29233)
  call void @llvm.experimental.noalias.scope.decl(metadata !29234)
  call void @llvm.experimental.noalias.scope.decl(metadata !29235)
  %i.eh = load ptr, ptr %i.ax, align 8, !alias.scope !29236, !noalias !29229, !nonnull !4, !noundef !4
  %i.ei = atomicrmw sub ptr %i.eh, i64 1 release, align 8, !noalias !29237
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ax) #20
          to label %.thread unwind label %bb.cm, !noalias !29232

bb.q:                                             ; preds = %bb.n
  %i.ek = load i64, ptr %i.ay, align 8, !range !13, !noalias !29229, !noundef !4 ; 3 uses
  %.not187.i = icmp eq i64 %i.ek, -1
  %i.el = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !noalias !29229 ; 3 uses
  br i1 %.not187.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.5110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.29.16.copyload155 = load ptr, ptr %.sroa.5110.0..sroa_idx.i, align 8, !noalias !29231 ; 2 uses
  %.sroa.42.16..sroa.5110.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.42, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.42.16..sroa.5110.0..sroa_idx.i.sroa_idx, i64 56, i1 false), !noalias !29231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !29229
  call void @llvm.experimental.noalias.scope.decl(metadata !29238)
  call void @llvm.experimental.noalias.scope.decl(metadata !29239)
  call void @llvm.experimental.noalias.scope.decl(metadata !29240)
  %i.en = load ptr, ptr %i.ax, align 8, !alias.scope !29241, !noalias !29229, !nonnull !4, !noundef !4
  %i.eo = atomicrmw sub ptr %i.en, i64 1 release, align 8, !noalias !29242
  %i.ep = icmp eq i64 %i.eo, 1
  br i1 %i.ep, label %bb.s, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit220.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ax) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit220.i unwind label %bb.i

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !29229
  store ptr %i.em, ptr %i.az, align 8, !noalias !29229
  call void @llvm.experimental.noalias.scope.decl(metadata !29243)
  call void @llvm.experimental.noalias.scope.decl(metadata !29244)
  call void @llvm.experimental.noalias.scope.decl(metadata !29245)
  %i.eq = load ptr, ptr %i.ax, align 8, !alias.scope !29246, !noalias !29229, !nonnull !4, !noundef !4
  %i.er = atomicrmw sub ptr %i.eq, i64 1 release, align 8, !noalias !29247
  %i.es = icmp eq i64 %i.er, 1
  br i1 %i.es, label %bb.u, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit222.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ax) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit222.i unwind label %bb.w, !noalias !29232

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit226.i: ; preds = %bb.ap, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit234.i, %bb.aa, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit228.i, %bb.w
  %.pn217.i = phi { ptr, i32 } [ %i.ew, %bb.w ], [ %.pn215.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit228.i ], [ %.pn215.i, %bb.aa ], [ %.pn.i, %bb.ap ], [ %.pn.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit234.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29248)
  call void @llvm.experimental.noalias.scope.decl(metadata !29249)
  call void @llvm.experimental.noalias.scope.decl(metadata !29250)
  %i.et = load ptr, ptr %i.az, align 8, !alias.scope !29251, !noalias !29229, !nonnull !4, !noundef !4
  %i.eu = atomicrmw sub ptr %i.et, i64 1 release, align 8, !noalias !29252
  %i.ev = icmp eq i64 %i.eu, 1
  br i1 %i.ev, label %bb.v, label %.thread

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit226.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.az) #20
          to label %.thread unwind label %bb.cm, !noalias !29232

bb.w:                                             ; preds = %bb.dr, %bb.at, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit222.i, %bb.u
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit226.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit222.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !29229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !29229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !29229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !29229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !29229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !29229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !29229
  %i.ex = trunc i64 %i.dw to i32
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor11arange_stepmECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.aq, i32 noundef 0, i32 noundef %i.ex, i32 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.dq)
          to label %bb.x unwind label %bb.w, !noalias !29232

bb.x:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit222.i
  %i.ey = load i64, ptr %i.aq, align 8, !range !13, !noalias !29229, !noundef !4 ; 2 uses
  %.not188.i = icmp eq i64 %i.ey, -1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !noalias !29229 ; 2 uses
  br i1 %.not188.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.5119.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.29.16.copyload156 = load ptr, ptr %.sroa.5119.0..sroa_idx.i, align 8, !noalias !29231
  %.sroa.42.16..sroa.5119.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.42, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.42.16..sroa.5119.0..sroa_idx.i.sroa_idx, i64 56, i1 false), !noalias !29231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !29229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !29229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !29229
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit326.i

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !29229
  store ptr %i.fa, ptr %i.ar, align 8, !noalias !29229
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor8to_dtype(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar, i8 noundef 7)
          to label %bb.ac unwind label %bb.ab, !noalias !29232
end_hunk_0
