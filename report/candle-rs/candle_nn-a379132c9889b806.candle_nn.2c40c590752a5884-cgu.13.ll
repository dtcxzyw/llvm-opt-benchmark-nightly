Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_nn-a379132c9889b806.candle_nn.2c40c590752a5884-cgu.13?download=true
inline.NumInlined: 314
inline.NumDeleted: 70
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNtNtNtCsf3Ta7LF998c_4core3ops8function5implsRNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus1_0INtB4_2FnTQINtNtCsgCecv3eZDcN_5alloc3vec3VecfETjQSNtNtCsdsILkMb8ZHY_4half8binary163f16EEE4callBV_:bb.a
bb.al:                                            ; preds = %bb.aj
  %i.hf = lshr exact i32 %i.gu, 16                ; 4 uses
  %i.hg = lshr exact i32 %i.gv, 23                ; 2 uses
  %i.hh = icmp samesign ugt i32 %i.gv, 1191182336
  br i1 %i.hh, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hi = icmp samesign ult i32 %i.gv, 947912704
  br i1 %i.hi, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.hj = trunc nuw i32 %i.hf to i16
  %i.hk = or disjoint i16 %i.hj, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.hl = lshr exact i32 %i.gv, 13
  %i.hm = add nuw nsw i32 %i.hl, 16384
  %i.hn = lshr i32 %i.gw, 13
  %i.ho = and i32 %i.gt, 4096
  %i.hp = icmp ne i32 %i.ho, 0
  %i.hq = and i32 %i.gt, 12287
  %i.hr = icmp ne i32 %i.hq, 0
  %or.cond.not.i.i = and i1 %i.hp, %i.hr
  %i.hs = or disjoint i32 %i.hm, %i.hn
  %i.ht = or i32 %i.hs, %i.hf
  %i.hu = trunc i32 %i.ht to i16
  %i.hv = zext i1 %or.cond.not.i.i to i16
  %spec.select7.i.i = add i16 %i.hu, %i.hv
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit.i

bb.ap:                                            ; preds = %bb.am
  %i.hw = icmp samesign ult i32 %i.gv, 855638016
  br i1 %i.hw, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hx = sub nsw i32 126, %i.hg
  %i.hy = or disjoint i32 %i.gw, 8388608          ; 3 uses
  %i.hz = lshr i32 %i.hy, %i.hx                   ; 2 uses
  %i.ia = sub nsw i32 29, %i.hg
  %i.ib = and i32 %i.ia, 31                       ; 2 uses
  %i.ic = shl nuw i32 1, %i.ib
  %i.id = and i32 %i.ic, %i.hy
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.if = trunc nuw i32 %i.hf to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.ig = shl i32 3, %i.ib
  %i.ih = add nuw i32 %i.ig, 16777215
  %i.ii = and i32 %i.ih, %i.hy
  %i.ij = icmp ne i32 %i.ii, 0
  %i.ik = zext i1 %i.ij to i32
  %spec.select.i.i = add nuw nsw i32 %i.hz, %i.ik
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.sroa.03.0.i.i = phi i32 [ %i.hz, %bb.aq ], [ %spec.select.i.i, %bb.as ]
  %i.il = or i32 %.sroa.03.0.i.i, %i.hf
  %i.im = trunc nuw i32 %i.il to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit.i

bb.au:                                            ; preds = %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit56.i, %.split22.i
  %i.in = call fastcc noundef i16 @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.gn) #24
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit.i

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit.i: ; preds = %bb.au, %bb.at, %bb.ar, %bb.ao, %bb.an, %bb.ak
  %.sroa.019.0.i = phi i16 [ %i.in, %bb.au ], [ %i.he, %bb.ak ], [ %i.hk, %bb.an ], [ %i.if, %bb.ar ], [ %i.im, %bb.at ], [ %spec.select7.i.i, %bb.ao ]
  %exitcond63.not.i = icmp eq i64 %.sroa.017.049.i, %.sroa.4.8.copyload
  br i1 %exitcond63.not.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit.i
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3.8.copyload, i64 %.sroa.017.049.i
  store i16 %.sroa.019.0.i, ptr %i.io, align 2, !noalias !1293
  %exitcond64.not.i = icmp eq i64 %i.gk, %i.gj
  br i1 %exitcond64.not.i, label %_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus1_0B9_.exit, label %.lr.ph51.i

bb.aw:                                            ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.4.8.copyload, i64 noundef %.sroa.4.8.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #22, !noalias !1293
  unreachable

bb.ax:                                            ; preds = %bb.ag
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %i.ge ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1293
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.ip, i64 %i.gd
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EBW_EINtB5_7ZipImplBW_BW_E3newCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 2 %i.ey, ptr noundef nonnull readonly %i.ff, ptr noundef nonnull readonly align 2 %i.ip, ptr noundef nonnull readonly %i.iq), !noalias !1293
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !noalias !1296 ; 2 uses
  %.sroa.47.0.copyload.i.i = load ptr, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !noalias !1296 ; 2 uses
  %.sroa.58.0.copyload.i.i = load i64, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !noalias !1296 ; 2 uses
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1296 ; 2 uses
  %i.ir = icmp ult i64 %.sroa.58.0.copyload.i.i, %.sroa.7.0.copyload.i.i
  br i1 %i.ir, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EBW_EINtB5_7ZipImplBW_BW_E4nextCs3NyA1pFSltE_9candle_nn.exit.lr.ph.i.i, label %_RINvNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash7dot_f32NtNtCsdsILkMb8ZHY_4half8binary163f16EB6_.exit.i

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EBW_EINtB5_7ZipImplBW_BW_E4nextCs3NyA1pFSltE_9candle_nn.exit.lr.ph.i.i: ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i), "nonnull"(ptr %.sroa.47.0.copyload.i.i) ]
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EBW_EINtB5_7ZipImplBW_BW_E4nextCs3NyA1pFSltE_9candle_nn.exit.i.i

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EBW_EINtB5_7ZipImplBW_BW_E4nextCs3NyA1pFSltE_9candle_nn.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EBW_EINtB5_7ZipImplBW_BW_E4nextCs3NyA1pFSltE_9candle_nn.exit.i.i, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EBW_EINtB5_7ZipImplBW_BW_E4nextCs3NyA1pFSltE_9candle_nn.exit.lr.ph.i.i
  %.sroa.0.014.i.i = phi float [ 0.000000e+00, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EBW_EINtB5_7ZipImplBW_BW_E4nextCs3NyA1pFSltE_9candle_nn.exit.lr.ph.i.i ], [ %i.jc, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EBW_EINtB5_7ZipImplBW_BW_E4nextCs3NyA1pFSltE_9candle_nn.exit.i.i ]
  %.sroa.58.013.i.i = phi i64 [ %.sroa.58.0.copyload.i.i, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EBW_EINtB5_7ZipImplBW_BW_E4nextCs3NyA1pFSltE_9candle_nn.exit.lr.ph.i.i ], [ %i.iu, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EBW_EINtB5_7ZipImplBW_BW_E4nextCs3NyA1pFSltE_9candle_nn.exit.i.i ] ; 3 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.58.013.i.i
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %.sroa.47.0.copyload.i.i, i64 %.sroa.58.013.i.i
  %i.iu = add nuw i64 %.sroa.58.013.i.i, 1        ; 2 uses
  %i.iv = load i16, ptr %i.is, align 2, !noalias !1293, !noundef !5
  %i.iw = load i16, ptr %i.it, align 2, !noalias !1293, !noundef !5
  %i.ix = call noundef double @_RNvXst_NtCsltEA4u8Pgfu_11candle_core5dtypeNtNtCsdsILkMb8ZHY_4half8binary163f16NtB5_9WithDType6to_f64(i16 noundef %i.iv), !noalias !1293
  %i.iy = fptrunc double %i.ix to float
  %i.iz = call noundef double @_RNvXst_NtCsltEA4u8Pgfu_11candle_core5dtypeNtNtCsdsILkMb8ZHY_4half8binary163f16NtB5_9WithDType6to_f64(i16 noundef %i.iw), !noalias !1293
  %i.ja = fptrunc double %i.iz to float
  %i.jb = fmul float %i.iy, %i.ja
  %i.jc = fadd float %.sroa.0.014.i.i, %i.jb      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.iu, %.sroa.7.0.copyload.i.i
  br i1 %exitcond.not.i.i, label %_RINvNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash7dot_f32NtNtCsdsILkMb8ZHY_4half8binary163f16EB6_.exit.i, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EBW_EINtB5_7ZipImplBW_BW_E4nextCs3NyA1pFSltE_9candle_nn.exit.i.i

_RINvNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash7dot_f32NtNtCsdsILkMb8ZHY_4half8binary163f16EB6_.exit.i: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EBW_EINtB5_7ZipImplBW_BW_E4nextCs3NyA1pFSltE_9candle_nn.exit.i.i, %bb.ax
  %.sroa.0.0.lcssa.i.i = phi float [ 0.000000e+00, %bb.ax ], [ %i.jc, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdsILkMb8ZHY_4half8binary163f16EBW_EINtB5_7ZipImplBW_BW_E4nextCs3NyA1pFSltE_9candle_nn.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1293
  %i.jd = load float, ptr %i.fh, align 4, !noalias !1293, !noundef !5
  %i.je = fmul float %.sroa.0.0.lcssa.i.i, %i.jd  ; 2 uses
  %i.jf = load i64, ptr %i.ed, align 8, !range !8, !noalias !1293, !noundef !5
  %.not46.i = icmp eq i64 %i.jf, -1
  br i1 %.not46.i, label %bb.az, label %bb.bc

bb.ay:                                            ; preds = %bb.ag
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ge, i64 noundef %i.gf, i64 noundef %i.fc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #22, !noalias !1293
  unreachable

bb.az:                                            ; preds = %bb.bf, %_RINvNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash7dot_f32NtNtCsdsILkMb8ZHY_4half8binary163f16EB6_.exit.i
  %.sroa.07.0.i = phi float [ %i.kk, %bb.bf ], [ %i.je, %_RINvNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash7dot_f32NtNtCsdsILkMb8ZHY_4half8binary163f16EB6_.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1293
  %i.jg = load i64, ptr %i.fj, align 8, !noalias !1293, !noundef !5
  %i.jh = mul i64 %i.jg, %i.fz
  %i.ji = add i64 %i.jh, %i.eb
  %i.jj = load i64, ptr %i.el, align 8, !noalias !1293, !noundef !5
  %i.jk = mul i64 %i.ji, %i.jj
  store i64 %i.jk, ptr %i.c, align 8, !noalias !1293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1293
  store ptr %i.el, ptr %i.b, align 8, !noalias !1293
  store ptr %i.fl, ptr %i.fo, align 8, !noalias !1293
  store i64 %i.fn, ptr %i.fp, align 8, !noalias !1293
  store ptr %i.c, ptr %i.fq, align 8, !noalias !1293
  %i.jl = fcmp ogt float %.sroa.07.0.i, %.sroa.01.045.i
  br i1 %i.jl, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jm = fsub float %.sroa.07.0.i, %.sroa.01.045.i
  %i.jn = call float @llvm.exp.f32(float %i.jm)   ; 2 uses
  call fastcc void @_RNCNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus1_0s_0Bb_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 4 %.val, i64 noundef range(i64 0, 2305843009213693952) %.val1, float noundef %i.jn) #24, !noalias !1297
  %i.jo = fadd float %.sroa.02.044.i, %i.jn
  br label %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6varlen21flash_attn_varlen_cpus1_0s_0EB8_.exit.i

bb.bb:                                            ; preds = %bb.az
  %i.jp = fsub float %.sroa.01.045.i, %.sroa.07.0.i
  %i.jq = call float @llvm.exp.f32(float %i.jp)   ; 3 uses
  br i1 %i.fs, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.bb
  br i1 %min.iters.check59, label %.lr.ph.i.preheader134, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph.i.preheader
  %broadcast.splatinsert62 = insertelement <4 x float> poison, float %i.jq, i64 0
  %broadcast.splat63 = shufflevector <4 x float> %broadcast.splatinsert62, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph60
  %index65 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body64 ] ; 2 uses
  %i.jr = shl i64 %index65, 2
  %next.gep66 = getelementptr i8, ptr %.val, i64 %i.jr ; 3 uses
  %i.js = getelementptr i8, ptr %next.gep66, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep66, align 4, !alias.scope !1298, !noalias !1293
  %wide.load67 = load <4 x float>, ptr %i.js, align 4, !alias.scope !1298, !noalias !1293
  %i.jt = fmul <4 x float> %broadcast.splat63, %wide.load
  %i.ju = fmul <4 x float> %broadcast.splat63, %wide.load67
  store <4 x float> %i.jt, ptr %next.gep66, align 4, !alias.scope !1298, !noalias !1293
  store <4 x float> %i.ju, ptr %i.js, align 4, !alias.scope !1298, !noalias !1293
  %index.next68 = add nuw i64 %index65, 8         ; 2 uses
  %i.jv = icmp eq i64 %index.next68, %n.vec61
  br i1 %i.jv, label %middle.block69, label %vector.body64, !llvm.loop !1280

middle.block69:                                   ; preds = %vector.body64
  br i1 %cmp.n70, label %._crit_edge.i, label %.lr.ph.i.preheader134

.lr.ph.i.preheader134:                            ; preds = %.lr.ph.i.preheader, %middle.block69
  %.sroa.0.0.i41.i.ph = phi ptr [ %.val, %.lr.ph.i.preheader ], [ %i.fx, %middle.block69 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader134, %.lr.ph.i
  %.sroa.0.0.i41.i = phi ptr [ %i.jw, %.lr.ph.i ], [ %.sroa.0.0.i41.i.ph, %.lr.ph.i.preheader134 ] ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.i, i64 4 ; 2 uses
  %i.jx = load float, ptr %.sroa.0.0.i41.i, align 4, !alias.scope !1298, !noalias !1293, !noundef !5
  %i.jy = fmul float %i.jq, %i.jx
  store float %i.jy, ptr %.sroa.0.0.i41.i, align 4, !alias.scope !1298, !noalias !1293
  %i.jz = icmp eq ptr %i.jw, %i.fr
  br i1 %i.jz, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1281

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block69, %bb.bb
  %i.ka = fmul float %.sroa.02.044.i, %i.jq
  %.fr.i = freeze float %i.ka
  %i.kb = fadd float %.fr.i, 1.000000e+00
  call fastcc void @_RNCNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus1_0s_0Bb_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 4 %.val, i64 noundef range(i64 0, 2305843009213693952) %.val1, float noundef 1.000000e+00) #24, !noalias !1297
  br label %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6varlen21flash_attn_varlen_cpus1_0s_0EB8_.exit.i

_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6varlen21flash_attn_varlen_cpus1_0s_0EB8_.exit.i: ; preds = %._crit_edge.i, %bb.ba
  %.sroa.02.1.i = phi float [ %i.kb, %._crit_edge.i ], [ %i.jo, %bb.ba ] ; 3 uses
  %.sroa.01.1.i = phi float [ %.sroa.07.0.i, %._crit_edge.i ], [ %.sroa.01.045.i, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1293
  %exitcond.not.i = icmp eq i64 %.sroa.05.043.i, %i.cz
  br i1 %exitcond.not.i, label %._crit_edge48.i, label %bb.ag

bb.bc:                                            ; preds = %_RINvNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash7dot_f32NtNtCsdsILkMb8ZHY_4half8binary163f16EB6_.exit.i
  %i.kc = load i8, ptr %i.ch, align 1, !range !15, !noalias !1293, !noundef !5
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ke = sub i64 %.sroa.05.043.i, %i.cu
  %.sroa.016.0.i = call i64 @llvm.abs.i64(i64 %i.ke, i1 false)
  %i.kf = sitofp i64 %.sroa.016.0.i to float
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.kg = sub i64 %i.cu, %.sroa.05.043.i
  %i.kh = call i64 @llvm.smax.i64(i64 %i.kg, i64 0)
  %i.ki = uitofp nneg i64 %i.kh to float
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.sroa.015.0.i = phi float [ %i.ki, %bb.be ], [ %i.kf, %bb.bd ]
  %i.kj = fmul float %.sroa.0.0.i, %.sroa.015.0.i
  %i.kk = fsub float %i.je, %i.kj
  br label %bb.az

bb.bg:                                            ; preds = %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit53.i, %.split17.i
  %i.kl = tail call fastcc noundef i16 @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef 0.000000e+00) #24
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit53.i, %.split17.i
  %.sroa.014.0.i = phi i16 [ %i.kl, %bb.bg ], [ 0, %.split17.i ], [ 0, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit53.i ] ; 3 uses
  %.idx.i59.i = shl i64 %.sroa.4.8.copyload, 1    ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.3.8.copyload, i64 %.idx.i59.i
  %i.kn = icmp eq i64 %.sroa.4.8.copyload, 0
  br i1 %i.kn, label %_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus1_0B9_.exit, label %iter.check86

iter.check86:                                     ; preds = %bb.bh
  %i.ko = add i64 %.idx.i59.i, -2                 ; 3 uses
  %i.kp = lshr exact i64 %i.ko, 1
  %i.kq = add nuw i64 %i.kp, 1                    ; 5 uses
  %min.iters.check73 = icmp ult i64 %i.ko, 6
  br i1 %min.iters.check73, label %.lr.ph.i60.i.preheader, label %vector.main.loop.iter.check74

vector.main.loop.iter.check74:                    ; preds = %iter.check86
  %min.iters.check75 = icmp ult i64 %i.ko, 30
  br i1 %min.iters.check75, label %vec.epilog.ph90, label %vector.ph76

vector.ph76:                                      ; preds = %vector.main.loop.iter.check74
  %i.kr = and i64 %i.kq, 12
  %n.vec77 = and i64 %i.kq, -16                   ; 4 uses
  %i.ks = shl i64 %n.vec77, 1
  %i.kt = getelementptr i8, ptr %.sroa.3.8.copyload, i64 %i.ks
  %broadcast.splatinsert78 = insertelement <8 x i16> poison, i16 %.sroa.014.0.i, i64 0
  %broadcast.splat79 = shufflevector <8 x i16> %broadcast.splatinsert78, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body80

vector.body80:                                    ; preds = %vector.ph76, %vector.body80
  %index81 = phi i64 [ 0, %vector.ph76 ], [ %index.next83, %vector.body80 ] ; 2 uses
  %i.ku = shl i64 %index81, 1
  %next.gep82 = getelementptr i8, ptr %.sroa.3.8.copyload, i64 %i.ku ; 2 uses
  %i.kv = getelementptr i8, ptr %next.gep82, i64 16
  store <8 x i16> %broadcast.splat79, ptr %next.gep82, align 2, !alias.scope !1299, !noalias !1293
  store <8 x i16> %broadcast.splat79, ptr %i.kv, align 2, !alias.scope !1299, !noalias !1293
  %index.next83 = add nuw i64 %index81, 16        ; 2 uses
  %i.kw = icmp eq i64 %index.next83, %n.vec77
  br i1 %i.kw, label %middle.block84, label %vector.body80, !llvm.loop !1284

middle.block84:                                   ; preds = %vector.body80
  %cmp.n85 = icmp eq i64 %i.kq, %n.vec77
  br i1 %cmp.n85, label %_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus1_0B9_.exit, label %vec.epilog.iter.check87

vec.epilog.iter.check87:                          ; preds = %middle.block84
  %min.epilog.iters.check89 = icmp eq i64 %i.kr, 0
  br i1 %min.epilog.iters.check89, label %.lr.ph.i60.i.preheader, label %vec.epilog.ph90, !prof !1295

vec.epilog.ph90:                                  ; preds = %vector.main.loop.iter.check74, %vec.epilog.iter.check87
  %vec.epilog.resume.val91 = phi i64 [ %n.vec77, %vec.epilog.iter.check87 ], [ 0, %vector.main.loop.iter.check74 ]
  %n.vec92 = and i64 %i.kq, -4                    ; 3 uses
  %i.kx = shl i64 %n.vec92, 1
  %i.ky = getelementptr i8, ptr %.sroa.3.8.copyload, i64 %i.kx
  %broadcast.splatinsert93 = insertelement <4 x i16> poison, i16 %.sroa.014.0.i, i64 0
  %broadcast.splat94 = shufflevector <4 x i16> %broadcast.splatinsert93, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body95

vec.epilog.vector.body95:                         ; preds = %vec.epilog.vector.body95, %vec.epilog.ph90
  %index96 = phi i64 [ %vec.epilog.resume.val91, %vec.epilog.ph90 ], [ %index.next98, %vec.epilog.vector.body95 ] ; 2 uses
  %i.kz = shl i64 %index96, 1
  %next.gep97 = getelementptr i8, ptr %.sroa.3.8.copyload, i64 %i.kz
  store <4 x i16> %broadcast.splat94, ptr %next.gep97, align 2, !alias.scope !1299, !noalias !1293
  %index.next98 = add nuw i64 %index96, 4         ; 2 uses
  %i.la = icmp eq i64 %index.next98, %n.vec92
  br i1 %i.la, label %vec.epilog.middle.block99, label %vec.epilog.vector.body95, !llvm.loop !1285

vec.epilog.middle.block99:                        ; preds = %vec.epilog.vector.body95
  %cmp.n100 = icmp eq i64 %i.kq, %n.vec92
  br i1 %cmp.n100, label %_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus1_0B9_.exit, label %.lr.ph.i60.i.preheader

.lr.ph.i60.i.preheader:                           ; preds = %iter.check86, %vec.epilog.iter.check87, %vec.epilog.middle.block99
  %.sroa.01.04.i61.i.ph = phi ptr [ %.sroa.3.8.copyload, %iter.check86 ], [ %i.kt, %vec.epilog.iter.check87 ], [ %i.ky, %vec.epilog.middle.block99 ]
  br label %.lr.ph.i60.i

.lr.ph.i60.i:                                     ; preds = %.lr.ph.i60.i.preheader, %.lr.ph.i60.i
  %.sroa.01.04.i61.i = phi ptr [ %i.lb, %.lr.ph.i60.i ], [ %.sroa.01.04.i61.i.ph, %.lr.ph.i60.i.preheader ] ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i61.i, i64 2 ; 2 uses
  store i16 %.sroa.014.0.i, ptr %.sroa.01.04.i61.i, align 2, !alias.scope !1299, !noalias !1293
  %i.lc = icmp eq ptr %i.lb, %i.km
  br i1 %i.lc, label %_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus1_0B9_.exit, label %.lr.ph.i60.i, !llvm.loop !1286

bb.bi:                                            ; preds = %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit51.i, %.split16.i
  %i.ld = tail call fastcc noundef i16 @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef 0.000000e+00) #24
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit51.i, %.split16.i
  %.sroa.013.0.i = phi i16 [ %i.ld, %bb.bi ], [ 0, %.split16.i ], [ 0, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit51.i ] ; 3 uses
  %.idx.i64.i = shl i64 %.sroa.4.8.copyload, 1    ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.3.8.copyload, i64 %.idx.i64.i
  %i.lf = icmp eq i64 %.sroa.4.8.copyload, 0
  br i1 %i.lf, label %_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus1_0B9_.exit, label %iter.check

iter.check:                                       ; preds = %bb.bj
  %i.lg = add i64 %.idx.i64.i, -2                 ; 3 uses
  %i.lh = lshr exact i64 %i.lg, 1
  %i.li = add nuw i64 %i.lh, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.lg, 6
  br i1 %min.iters.check, label %.lr.ph.i65.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check51 = icmp ult i64 %i.lg, 30
  br i1 %min.iters.check51, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.lj = and i64 %i.li, 12
  %n.vec = and i64 %i.li, -16                     ; 4 uses
  %i.lk = shl i64 %n.vec, 1
  %i.ll = getelementptr i8, ptr %.sroa.3.8.copyload, i64 %i.lk
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.sroa.013.0.i, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lm = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.sroa.3.8.copyload, i64 %i.lm ; 2 uses
  %i.ln = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !alias.scope !1300, !noalias !1293
  store <8 x i16> %broadcast.splat, ptr %i.ln, align 2, !alias.scope !1300, !noalias !1293
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.lo = icmp eq i64 %index.next, %n.vec
  br i1 %i.lo, label %middle.block, label %vector.body, !llvm.loop !1289

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.li, %n.vec
  br i1 %cmp.n, label %_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus1_0B9_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.lj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i65.i.preheader, label %vec.epilog.ph, !prof !1295

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.li, -4                    ; 3 uses
  %i.lp = shl i64 %n.vec52, 1
  %i.lq = getelementptr i8, ptr %.sroa.3.8.copyload, i64 %i.lp
  %broadcast.splatinsert53 = insertelement <4 x i16> poison, i16 %.sroa.013.0.i, i64 0
  %broadcast.splat54 = shufflevector <4 x i16> %broadcast.splatinsert53, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %i.lr = shl i64 %index55, 1
  %next.gep56 = getelementptr i8, ptr %.sroa.3.8.copyload, i64 %i.lr
  store <4 x i16> %broadcast.splat54, ptr %next.gep56, align 2, !alias.scope !1300, !noalias !1293
  %index.next57 = add nuw i64 %index55, 4         ; 2 uses
  %i.ls = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.ls, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1290

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.li, %n.vec52
  br i1 %cmp.n58, label %_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus1_0B9_.exit, label %.lr.ph.i65.i.preheader

.lr.ph.i65.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.04.i66.i.ph = phi ptr [ %.sroa.3.8.copyload, %iter.check ], [ %i.ll, %vec.epilog.iter.check ], [ %i.lq, %vec.epilog.middle.block ]
  br label %.lr.ph.i65.i

.lr.ph.i65.i:                                     ; preds = %.lr.ph.i65.i.preheader, %.lr.ph.i65.i
  %.sroa.01.04.i66.i = phi ptr [ %i.lt, %.lr.ph.i65.i ], [ %.sroa.01.04.i66.i.ph, %.lr.ph.i65.i.preheader ] ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i66.i, i64 2 ; 2 uses
  store i16 %.sroa.013.0.i, ptr %.sroa.01.04.i66.i, align 2, !alias.scope !1300, !noalias !1293
  %i.lu = icmp eq ptr %i.lt, %i.le
  br i1 %i.lu, label %_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus1_0B9_.exit, label %.lr.ph.i65.i, !llvm.loop !1291

end_hunk_0
begin_hunk_1_@_RNvXNtNtNtCsf3Ta7LF998c_4core3ops8function5implsRNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus_0INtB4_2FnTQINtNtCsgCecv3eZDcN_5alloc3vec3VecfETjQSfEEE4callBV_:bb.a
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !1326, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noalias !1327, !noundef !5 ; 2 uses
  %i.ao = icmp ult i64 %i.q, %i.an
  br i1 %i.ao, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #22, !noalias !1327
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !1327, !nonnull !5, !noundef !5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.q
  %i.as = load i32, ptr %i.ar, align 4, !noalias !1327, !noundef !5 ; 2 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = icmp eq i32 %i.ai, 0
  %i.av = icmp eq i32 %i.as, 0
  %or.cond.i = or i1 %i.au, %i.av
  br i1 %or.cond.i, label %.loopexit.sink.split.i, label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #22, !noalias !1327
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !1326, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !noalias !1327, !noundef !5 ; 2 uses
  %i.ba = icmp ult i64 %i.q, %i.az
  br i1 %i.ba, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !1327, !nonnull !5, !noundef !5
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.q
  %i.be = load i64, ptr %i.bd, align 8, !noalias !1327, !noundef !5
  %i.bf = sub nsw i64 %i.at, %i.aj
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !1326, !nonnull !5, !noundef !5 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !range !15, !noalias !1327, !noundef !5
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !1326, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !range !4, !noalias !1327, !noundef !5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !1327 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !1326, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !range !4, !noalias !1327, !noundef !5
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !1327
  %i.bu = add i64 %i.bf, %i.z                     ; 7 uses
  %i.bv = add nsw i64 %i.at, -1                   ; 3 uses
  %i.bw = tail call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.bu)
  %.sroa.012.0.i.i = select i1 %i.bj, i64 %i.bw, i64 %i.bv ; 3 uses
  %i.bx = trunc nuw i64 %i.bm to i1
  %i.by = trunc nuw i64 %i.br to i1               ; 2 uses
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.by, label %bb.q, label %bb.r

bb.o:                                             ; preds = %bb.m
  br i1 %i.by, label %.loopexit.sink.split.i, label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.q, %bb.o
  %.sroa.07.0.i.i = phi i64 [ %i.cc, %bb.q ], [ %i.ch, %bb.r ], [ 0, %bb.o ] ; 2 uses
  %.sroa.012.1.i.i = phi i64 [ %i.ce, %bb.q ], [ %i.cf, %bb.r ], [ %.sroa.012.0.i.i, %bb.o ]
  %i.bz = tail call i64 @llvm.smin.i64(i64 %.sroa.012.1.i.i, i64 %i.bv) ; 2 uses
  %i.ca = icmp sgt i64 %.sroa.07.0.i.i, %i.bz
  br i1 %i.ca, label %.loopexit.sink.split.i, label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.cb = sub i64 %i.bu, %i.bo
  %i.cc = tail call i64 @llvm.smax.i64(i64 %i.cb, i64 0)
  %i.cd = add i64 %i.bt, %i.bu
  %i.ce = tail call i64 @llvm.smin.i64(i64 %.sroa.012.0.i.i, i64 %i.cd)
  br label %bb.p

bb.r:                                             ; preds = %bb.n
  %i.cf = tail call i64 @llvm.smin.i64(i64 %.sroa.012.0.i.i, i64 %i.bu)
  %i.cg = sub i64 %i.bu, %i.bo
  %i.ch = tail call i64 @llvm.smax.i64(i64 %i.cg, i64 0)
  br label %bb.p

bb.s:                                             ; preds = %bb.l
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #22, !noalias !1327
  unreachable

bb.t:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !1326, !nonnull !5, !align !10, !noundef !5
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !1327, !noundef !5 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = udiv i64 %i.h, %i.ck
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !1326, !nonnull !5, !align !10, !noundef !5
  %i.cp = load i64, ptr %i.co, align 8, !noalias !1327, !noundef !5 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.t
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #22, !noalias !1327
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cr = udiv i64 %i.h, %i.cp
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !1326, !nonnull !5, !align !10, !noundef !5 ; 4 uses
  %i.cu = load i64, ptr %i.ct, align 8, !range !8, !noalias !1327, !noundef !5
  %.not.i = icmp eq i64 %i.cu, -1
  br i1 %.not.i, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #22, !noalias !1327
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !1327, !noundef !5 ; 2 uses
  %i.cx = icmp ult i64 %i.h, %i.cw
  br i1 %i.cx, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.aa, %bb.w
  %.sroa.0.0.i = phi float [ %i.dl, %bb.aa ], [ 0.000000e+00, %bb.w ]
  %i.cy = mul i64 %i.g, %i.e
  %i.cz = add i64 %i.cy, %i.h
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !1326, !nonnull !5, !align !10, !noundef !5 ; 4 uses
  %i.dc = load i64, ptr %i.db, align 8, !noalias !1327, !noundef !5 ; 6 uses
  %i.dd = mul i64 %i.dc, %i.cz                    ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !1326, !noundef !5 ; 2 uses
  %i.dg = add i64 %i.dd, %i.dc                    ; 3 uses
  %i.dh = icmp ult i64 %i.dg, %i.dd
  %.not42.i = icmp ugt i64 %i.dg, %i.df
  %or.cond46.i = or i1 %i.dh, %.not42.i
  br i1 %or.cond46.i, label %bb.ac, label %.split.i, !prof !9

bb.aa:                                            ; preds = %bb.y
  %i.di = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !1327, !nonnull !5, !noundef !5
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.h
  %i.dl = load float, ptr %i.dk, align 4, !noalias !1327, !noundef !5
  br label %bb.z

bb.ab:                                            ; preds = %bb.y
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #22, !noalias !1327
  unreachable

.split.i:                                         ; preds = %bb.z
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !1326, !nonnull !5, !align !18, !noundef !5
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dd ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvXs_NtNtCsf3Ta7LF998c_4core5slice10specializeSfINtB4_8SpecFillfE9spec_fillCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 4 %.val, i64 noundef %.val1, float noundef 0.000000e+00), !noalias !1327
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !1326, !nonnull !5, !align !10, !noundef !5
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !1326, !noundef !5 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !1326, !nonnull !5, !align !18
  %.not.i50.i = icmp eq i64 %i.dc, 0
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !1326, !nonnull !5, !align !18
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !1326, !nonnull !5, !align !10
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !1326 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ec = load ptr, ptr %i.eb, align 8, !alias.scope !1326, !nonnull !5, !align !18
  %.idx.i = shl i64 %.val1, 2                     ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %i.ee = icmp eq i64 %.val1, 0
  %xtraiter = and i64 %i.dc, 3                    ; 3 uses
  %i.ef = icmp ult i64 %i.dc, 4
  %unroll_iter = and i64 %i.dc, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod216 = icmp ne i64 %xtraiter, 0
  %i.eg = add i64 %.idx.i, -4                     ; 2 uses
  %i.eh = lshr exact i64 %i.eg, 2
  %i.ei = add nuw nsw i64 %i.eh, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.eg, 28
  %n.vec143 = and i64 %i.ei, 9223372036854775800  ; 3 uses
  %i.ej = shl i64 %n.vec143, 2
  %i.ek = getelementptr i8, ptr %.val, i64 %i.ej
  %cmp.n = icmp eq i64 %i.ei, %n.vec143
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.dd, i64 noundef %i.dg, i64 noundef %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #22, !noalias !1327
  unreachable

bb.ad:                                            ; preds = %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6varlen21flash_attn_varlen_cpus_0s_0EB8_.exit.i, %.split.i
  %.sroa.01.077.i = phi float [ -inf, %.split.i ], [ %.sroa.01.1.i, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6varlen21flash_attn_varlen_cpus_0s_0EB8_.exit.i ] ; 4 uses
  %.sroa.02.076.i = phi float [ 0.000000e+00, %.split.i ], [ %.sroa.02.1.fr.i, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6varlen21flash_attn_varlen_cpus_0s_0EB8_.exit.i ] ; 2 uses
  %.sroa.05.075.i = phi i64 [ %.sroa.07.0.i.i, %.split.i ], [ %i.el, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6varlen21flash_attn_varlen_cpus_0s_0EB8_.exit.i ] ; 5 uses
  %i.el = add i64 %.sroa.05.075.i, 1
  %i.em = add i64 %.sroa.05.075.i, %i.be          ; 2 uses
  %i.en = load i64, ptr %i.dq, align 8, !noalias !1327, !noundef !5
  %i.eo = mul i64 %i.en, %i.em
  %i.ep = add i64 %i.eo, %i.cm
  %i.eq = load i64, ptr %i.db, align 8, !noalias !1327, !noundef !5 ; 12 uses
  %i.er = mul i64 %i.ep, %i.eq                    ; 4 uses
  %i.es = add i64 %i.er, %i.eq                    ; 3 uses
  %i.et = icmp ult i64 %i.es, %i.er
  %.not43.i = icmp ugt i64 %i.es, %i.ds
  %or.cond47.i = or i1 %i.et, %.not43.i
  br i1 %or.cond47.i, label %bb.aj, label %bb.ai, !prof !9

._crit_edge79.i:                                  ; preds = %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6varlen21flash_attn_varlen_cpus_0s_0EB8_.exit.i
  %i.eu = fcmp ogt float %.sroa.02.1.fr.i, 0.000000e+00
  %i.ev = fdiv nnan float 1.000000e+00, %.sroa.02.1.fr.i
  %.sroa.09.0.i = select i1 %i.eu, float %i.ev, float 0.000000e+00 ; 2 uses
  %i.ew = load i64, ptr %i.db, align 8, !noalias !1327, !noundef !5 ; 3 uses
  %.not83.i = icmp eq i64 %i.ew, 0
  br i1 %.not83.i, label %_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus_0B9_.exit, label %.lr.ph82.i.preheader

.lr.ph82.i.preheader:                             ; preds = %._crit_edge79.i
  %i.ex = add i64 %i.ew, -1
  %i.ey = tail call i64 @llvm.umin.i64(i64 %.sroa.4.8.copyload.fr, i64 %i.ex)
  %i.ez = tail call i64 @llvm.umin.i64(i64 %i.ey, i64 %.val1)
  %i.fa = add i64 %i.ez, 1                        ; 3 uses
  %min.iters.check171 = icmp ult i64 %i.fa, 9
  %i.fb = sub i64 %.val169, %.sroa.3.8.copyload168
  %diff.check = icmp ugt i64 %i.fb, -32
  %or.cond = select i1 %min.iters.check171, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph82.i.preheader183, label %vector.ph172

vector.ph172:                                     ; preds = %.lr.ph82.i.preheader
  %i.fc = and i64 %i.fa, 7                        ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 0
  %i.fe = select i1 %i.fd, i64 8, i64 %i.fc
  %n.vec173 = sub i64 %i.fa, %i.fe                ; 2 uses
  %broadcast.splatinsert174 = insertelement <4 x float> poison, float %.sroa.09.0.i, i64 0
  %broadcast.splat175 = shufflevector <4 x float> %broadcast.splatinsert174, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph172
  %index177 = phi i64 [ 0, %vector.ph172 ], [ %index.next180, %vector.body176 ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %index177 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load178 = load <4 x float>, ptr %i.ff, align 4, !noalias !1327
  %wide.load179 = load <4 x float>, ptr %i.fg, align 4, !noalias !1327
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.8.copyload, i64 %index177 ; 2 uses
  %i.fi = fmul <4 x float> %broadcast.splat175, %wide.load178
  %i.fj = fmul <4 x float> %broadcast.splat175, %wide.load179
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store <4 x float> %i.fi, ptr %i.fh, align 4, !noalias !1327
  store <4 x float> %i.fj, ptr %i.fk, align 4, !noalias !1327
  %index.next180 = add nuw i64 %index177, 8       ; 2 uses
  %i.fl = icmp eq i64 %index.next180, %n.vec173
  br i1 %i.fl, label %.lr.ph82.i.preheader183, label %vector.body176, !llvm.loop !1304

.lr.ph82.i.preheader183:                          ; preds = %vector.body176, %.lr.ph82.i.preheader
  %.sroa.014.080.i.ph = phi i64 [ 0, %.lr.ph82.i.preheader ], [ %n.vec173, %vector.body176 ]
  br label %.lr.ph82.i

.lr.ph82.i:                                       ; preds = %.lr.ph82.i.preheader183, %bb.ag
  %.sroa.014.080.i = phi i64 [ %i.fm, %bb.ag ], [ %.sroa.014.080.i.ph, %.lr.ph82.i.preheader183 ] ; 5 uses
  %i.fm = add nuw i64 %.sroa.014.080.i, 1         ; 2 uses
  %exitcond114.not.i = icmp eq i64 %.sroa.014.080.i, %.val1
  br i1 %exitcond114.not.i, label %bb.af, label %bb.ae

.loopexit.sink.split.i:                           ; preds = %bb.p, %bb.o, %bb.j
  tail call void @_RNvXs_NtNtCsf3Ta7LF998c_4core5slice10specializeSfINtB4_8SpecFillfE9spec_fillCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 4 %.sroa.3.8.copyload, i64 noundef %.sroa.4.8.copyload.fr, float noundef 0.000000e+00), !noalias !1327
  br label %_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus_0B9_.exit

bb.ae:                                            ; preds = %.lr.ph82.i
  %exitcond115.not.i = icmp eq i64 %.sroa.014.080.i, %.sroa.4.8.copyload.fr
  br i1 %exitcond115.not.i, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %.lr.ph82.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val1, i64 noundef %.val1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #22, !noalias !1327
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.sroa.014.080.i
  %i.fo = load float, ptr %i.fn, align 4, !noalias !1327, !noundef !5
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.3.8.copyload, i64 %.sroa.014.080.i
  %i.fq = fmul float %.sroa.09.0.i, %i.fo
  store float %i.fq, ptr %i.fp, align 4, !noalias !1327
  %exitcond116.not.i = icmp eq i64 %i.fm, %i.ew
  br i1 %exitcond116.not.i, label %_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus_0B9_.exit, label %.lr.ph82.i, !llvm.loop !1305

bb.ah:                                            ; preds = %bb.ae
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.4.8.copyload.fr, i64 noundef %.sroa.4.8.copyload.fr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #22, !noalias !1327
  unreachable

bb.ai:                                            ; preds = %bb.ad
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.er ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  br i1 %.not.i50.i, label %_RINvNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash7dot_f32fEB6_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.ai
  br i1 %i.ef, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.01.0.i.i3.i.i = phi i64 [ %i.gn, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 6 uses
  %.sroa.0.02.i.i = phi float [ %i.gt, %.lr.ph.i.i ], [ 0.000000e+00, %.lr.ph.i.i.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %i.fs = or disjoint i64 %.sroa.01.0.i.i3.i.i, 1 ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.sroa.01.0.i.i3.i.i
  %i.fu = load float, ptr %i.ft, align 4, !alias.scope !1328, !noalias !1327, !noundef !5
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.sroa.01.0.i.i3.i.i
  %i.fw = load float, ptr %i.fv, align 4, !alias.scope !1329, !noalias !1327, !noundef !5
  %i.fx = fmul float %i.fu, %i.fw
  %i.fy = fadd float %.sroa.0.02.i.i, %i.fx
  %i.fz = or disjoint i64 %.sroa.01.0.i.i3.i.i, 2 ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.fs
  %i.gb = load float, ptr %i.ga, align 4, !alias.scope !1328, !noalias !1327, !noundef !5
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fs
  %i.gd = load float, ptr %i.gc, align 4, !alias.scope !1329, !noalias !1327, !noundef !5
  %i.ge = fmul float %i.gb, %i.gd
  %i.gf = fadd float %i.fy, %i.ge
  %i.gg = or disjoint i64 %.sroa.01.0.i.i3.i.i, 3 ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.fz
  %i.gi = load float, ptr %i.gh, align 4, !alias.scope !1328, !noalias !1327, !noundef !5
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fz
  %i.gk = load float, ptr %i.gj, align 4, !alias.scope !1329, !noalias !1327, !noundef !5
  %i.gl = fmul float %i.gi, %i.gk
  %i.gm = fadd float %i.gf, %i.gl
  %i.gn = add nuw nsw i64 %.sroa.01.0.i.i3.i.i, 4 ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.gg
  %i.gp = load float, ptr %i.go, align 4, !alias.scope !1328, !noalias !1327, !noundef !5
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.gg
  %i.gr = load float, ptr %i.gq, align 4, !alias.scope !1329, !noalias !1327, !noundef !5
  %i.gs = fmul float %i.gp, %i.gr
  %i.gt = fadd float %i.gm, %i.gs                 ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash7dot_f32fEB6_.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RINvNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash7dot_f32fEB6_.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod.not, label %_RINvNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash7dot_f32fEB6_.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RINvNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash7dot_f32fEB6_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.01.0.i.i3.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.gn, %_RINvNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash7dot_f32fEB6_.exit.i.loopexit.unr-lcssa ]
  %.sroa.0.02.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %i.gt, %_RINvNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash7dot_f32fEB6_.exit.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod216)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.01.0.i.i3.i.i.epil = phi i64 [ %i.gu, %.lr.ph.i.i.epil ], [ %.sroa.01.0.i.i3.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 3 uses
  %.sroa.0.02.i.i.epil = phi float [ %i.ha, %.lr.ph.i.i.epil ], [ %.sroa.0.02.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.gu = add nuw nsw i64 %.sroa.01.0.i.i3.i.i.epil, 1
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.sroa.01.0.i.i3.i.i.epil
  %i.gw = load float, ptr %i.gv, align 4, !alias.scope !1328, !noalias !1327, !noundef !5
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.sroa.01.0.i.i3.i.i.epil
  %i.gy = load float, ptr %i.gx, align 4, !alias.scope !1329, !noalias !1327, !noundef !5
  %i.gz = fmul float %i.gw, %i.gy
  %i.ha = fadd float %.sroa.0.02.i.i.epil, %i.gz  ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash7dot_f32fEB6_.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !1309

_RINvNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash7dot_f32fEB6_.exit.i: ; preds = %_RINvNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash7dot_f32fEB6_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.ai
  %.sroa.0.0.lcssa.i.i = phi float [ 0.000000e+00, %bb.ai ], [ %i.gt, %_RINvNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash7dot_f32fEB6_.exit.i.loopexit.unr-lcssa ], [ %i.ha, %.lr.ph.i.i.epil ]
  %i.hb = load float, ptr %i.dw, align 4, !noalias !1327, !noundef !5
  %i.hc = fmul float %.sroa.0.0.lcssa.i.i, %i.hb  ; 2 uses
  %i.hd = load i64, ptr %i.ct, align 8, !range !8, !noalias !1327, !noundef !5
  %.not44.i = icmp eq i64 %i.hd, -1
  br i1 %.not44.i, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ad
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.er, i64 noundef %i.es, i64 noundef %i.ds, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #22, !noalias !1327
  unreachable

bb.ak:                                            ; preds = %bb.ao, %_RINvNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash7dot_f32fEB6_.exit.i
  %.sroa.07.0.i = phi float [ %i.hs, %bb.ao ], [ %i.hc, %_RINvNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash7dot_f32fEB6_.exit.i ] ; 5 uses
  %i.he = load i64, ptr %i.dy, align 8, !noalias !1327, !noundef !5
  %i.hf = mul i64 %i.he, %i.em
  %i.hg = add i64 %i.hf, %i.cr
  %i.hh = mul i64 %i.hg, %i.eq                    ; 4 uses
  %i.hi = add i64 %i.hh, %i.eq                    ; 3 uses
  %i.hj = icmp ult i64 %i.hi, %i.hh
  %.not45.i = icmp ugt i64 %i.hi, %i.ea
  %or.cond48.i = or i1 %i.hj, %.not45.i
  br i1 %or.cond48.i, label %bb.ay, label %bb.ap, !prof !9

bb.al:                                            ; preds = %_RINvNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash7dot_f32fEB6_.exit.i
  %i.hk = load i8, ptr %i.bh, align 1, !range !15, !noalias !1327, !noundef !5
  %i.hl = trunc nuw i8 %i.hk to i1
  br i1 %i.hl, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hm = sub i64 %.sroa.05.075.i, %i.bu
  %.sroa.013.0.i = tail call i64 @llvm.abs.i64(i64 %i.hm, i1 false)
  %i.hn = sitofp i64 %.sroa.013.0.i to float
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.ho = sub i64 %i.bu, %.sroa.05.075.i
  %i.hp = tail call i64 @llvm.smax.i64(i64 %i.ho, i64 0)
  %i.hq = uitofp nneg i64 %i.hp to float
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.012.0.i = phi float [ %i.hq, %bb.an ], [ %i.hn, %bb.am ]
  %i.hr = fmul float %.sroa.0.0.i, %.sroa.012.0.i
  %i.hs = fsub float %i.hc, %i.hr
  br label %bb.ak

bb.ap:                                            ; preds = %bb.ak
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.hh ; 4 uses
  %i.hu = fcmp ogt float %.sroa.07.0.i, %.sroa.01.077.i
  br i1 %i.hu, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hv = fsub float %.sroa.07.0.i, %.sroa.01.077.i
  %i.hw = tail call float @llvm.exp.f32(float %i.hv) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  %.not.i51.i = icmp eq i64 %i.eq, 0
  br i1 %.not.i51.i, label %_RNCNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus_0s_0Bb_.exit.i, label %.lr.ph.i52.i.preheader

.lr.ph.i52.i.preheader:                           ; preds = %bb.aq
  %i.hx = add i64 %i.eq, -1
  %i.hy = tail call i64 @llvm.umin.i64(i64 %.val1, i64 %i.hx)
  %i.hz = add i64 %i.hy, 1                        ; 3 uses
  %min.iters.check152 = icmp ult i64 %i.hz, 9
  br i1 %min.iters.check152, label %.lr.ph.i52.i.preheader186, label %vector.ph153

vector.ph153:                                     ; preds = %.lr.ph.i52.i.preheader
  %i.ia = and i64 %i.hz, 7                        ; 2 uses
  %i.ib = icmp eq i64 %i.ia, 0
  %i.ic = select i1 %i.ib, i64 8, i64 %i.ia
  %n.vec154 = sub i64 %i.hz, %i.ic                ; 2 uses
  %broadcast.splatinsert155 = insertelement <4 x float> poison, float %i.hw, i64 0
  %broadcast.splat156 = shufflevector <4 x float> %broadcast.splatinsert155, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph153
  %index158 = phi i64 [ 0, %vector.ph153 ], [ %index.next163, %vector.body157 ] ; 3 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %index158 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %wide.load159 = load <4 x float>, ptr %i.id, align 4, !noalias !1332
  %wide.load160 = load <4 x float>, ptr %i.ie, align 4, !noalias !1332
  %i.if = fmul <4 x float> %broadcast.splat156, %wide.load159
  %i.ig = fmul <4 x float> %broadcast.splat156, %wide.load160
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %index158 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16 ; 2 uses
  %wide.load161 = load <4 x float>, ptr %i.ih, align 4, !alias.scope !1331, !noalias !1333
  %wide.load162 = load <4 x float>, ptr %i.ii, align 4, !alias.scope !1331, !noalias !1333
  %i.ij = fadd <4 x float> %wide.load161, %i.if
  %i.ik = fadd <4 x float> %wide.load162, %i.ig
  store <4 x float> %i.ij, ptr %i.ih, align 4, !alias.scope !1331, !noalias !1333
  store <4 x float> %i.ik, ptr %i.ii, align 4, !alias.scope !1331, !noalias !1333
  %index.next163 = add nuw i64 %index158, 8       ; 2 uses
  %i.il = icmp eq i64 %index.next163, %n.vec154
  br i1 %i.il, label %.lr.ph.i52.i.preheader186, label %vector.body157, !llvm.loop !1316

.lr.ph.i52.i.preheader186:                        ; preds = %vector.body157, %.lr.ph.i52.i.preheader
  %.sroa.01.07.i.i.ph = phi i64 [ 0, %.lr.ph.i52.i.preheader ], [ %n.vec154, %vector.body157 ]
  br label %.lr.ph.i52.i

.lr.ph.i52.i:                                     ; preds = %.lr.ph.i52.i.preheader186, %bb.ar
  %.sroa.01.07.i.i = phi i64 [ %i.im, %bb.ar ], [ %.sroa.01.07.i.i.ph, %.lr.ph.i52.i.preheader186 ] ; 4 uses
  %exitcond10.not.i.i = icmp eq i64 %.sroa.01.07.i.i, %.val1
  br i1 %exitcond10.not.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i52.i
  %i.im = add nuw nsw i64 %.sroa.01.07.i.i, 1     ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.sroa.01.07.i.i
  %i.io = load float, ptr %i.in, align 4, !noalias !1332, !noundef !5
  %i.ip = fmul float %i.hw, %i.io
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.sroa.01.07.i.i ; 2 uses
  %i.ir = load float, ptr %i.iq, align 4, !alias.scope !1331, !noalias !1333, !noundef !5
  %i.is = fadd float %i.ir, %i.ip
  store float %i.is, ptr %i.iq, align 4, !alias.scope !1331, !noalias !1333
  %exitcond11.not.i.i = icmp eq i64 %i.im, %i.eq
  br i1 %exitcond11.not.i.i, label %_RNCNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus_0s_0Bb_.exit.i, label %.lr.ph.i52.i, !llvm.loop !1317

bb.as:                                            ; preds = %.lr.ph.i52.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 2305843009213693952) %.val1, i64 noundef range(i64 0, 2305843009213693952) %.val1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22, !noalias !1332
  unreachable

_RNCNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus_0s_0Bb_.exit.i: ; preds = %bb.ar, %bb.aq
  %i.it = fadd float %.sroa.02.076.i, %i.hw
  br label %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6varlen21flash_attn_varlen_cpus_0s_0EB8_.exit.i

bb.at:                                            ; preds = %bb.ap
  %i.iu = fsub float %.sroa.01.077.i, %.sroa.07.0.i
  %i.iv = tail call float @llvm.exp.f32(float %i.iu) ; 3 uses
  br i1 %i.ee, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.at
  br i1 %min.iters.check141, label %.lr.ph.i.preheader185, label %vector.ph142

vector.ph142:                                     ; preds = %.lr.ph.i.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.iv, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph142
  %index145 = phi i64 [ 0, %vector.ph142 ], [ %index.next148, %vector.body144 ] ; 2 uses
  %i.iw = shl i64 %index145, 2
  %next.gep = getelementptr i8, ptr %.val, i64 %i.iw ; 3 uses
  %i.ix = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load146 = load <4 x float>, ptr %next.gep, align 4, !alias.scope !1334, !noalias !1327
  %wide.load147 = load <4 x float>, ptr %i.ix, align 4, !alias.scope !1334, !noalias !1327
  %i.iy = fmul <4 x float> %broadcast.splat, %wide.load146
  %i.iz = fmul <4 x float> %broadcast.splat, %wide.load147
  store <4 x float> %i.iy, ptr %next.gep, align 4, !alias.scope !1334, !noalias !1327
  store <4 x float> %i.iz, ptr %i.ix, align 4, !alias.scope !1334, !noalias !1327
  %index.next148 = add nuw i64 %index145, 8       ; 2 uses
  %i.ja = icmp eq i64 %index.next148, %n.vec143
  br i1 %i.ja, label %middle.block149, label %vector.body144, !llvm.loop !1319

middle.block149:                                  ; preds = %vector.body144
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader185

.lr.ph.i.preheader185:                            ; preds = %.lr.ph.i.preheader, %middle.block149
  %.sroa.0.0.i73.i.ph = phi ptr [ %.val, %.lr.ph.i.preheader ], [ %i.ek, %middle.block149 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader185, %.lr.ph.i
  %.sroa.0.0.i73.i = phi ptr [ %i.jb, %.lr.ph.i ], [ %.sroa.0.0.i73.i.ph, %.lr.ph.i.preheader185 ] ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i73.i, i64 4 ; 2 uses
  %i.jc = load float, ptr %.sroa.0.0.i73.i, align 4, !alias.scope !1334, !noalias !1327, !noundef !5
  %i.jd = fmul float %i.iv, %i.jc
  store float %i.jd, ptr %.sroa.0.0.i73.i, align 4, !alias.scope !1334, !noalias !1327
  %i.je = icmp eq ptr %i.jb, %i.ed
  br i1 %i.je, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !1320

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %middle.block149
  %.pre.i = load i64, ptr %i.db, align 8, !noalias !1335
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.at
  %i.jf = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.eq, %bb.at ] ; 3 uses
  %i.jg = fmul float %.sroa.02.076.i, %i.iv
  %i.jh = fadd float %i.jg, 1.000000e+00          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  %.not.i54.i = icmp eq i64 %i.jf, 0
  br i1 %.not.i54.i, label %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6varlen21flash_attn_varlen_cpus_0s_0EB8_.exit.i, label %.lr.ph.i55.i.preheader

.lr.ph.i55.i.preheader:                           ; preds = %._crit_edge.i
  %i.ji = add i64 %i.jf, -1
  %i.jj = tail call i64 @llvm.umin.i64(i64 %.val1, i64 %i.ji)
  %i.jk = freeze i64 %i.jj
  %i.jl = tail call i64 @llvm.umin.i64(i64 %i.jk, i64 %i.eq)
  %i.jm = add i64 %i.jl, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.jm, 9
  br i1 %min.iters.check, label %.lr.ph.i55.i.preheader184, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i55.i.preheader
  %i.jn = and i64 %i.jm, 7                        ; 2 uses
  %i.jo = icmp eq i64 %i.jn, 0
  %i.jp = select i1 %i.jo, i64 8, i64 %i.jn
  %n.vec = sub i64 %i.jm, %i.jp                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %index ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %wide.load = load <4 x float>, ptr %i.jq, align 4, !noalias !1335
  %wide.load137 = load <4 x float>, ptr %i.jr, align 4, !noalias !1335
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %index ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 2 uses
  %wide.load138 = load <4 x float>, ptr %i.js, align 4, !alias.scope !1336, !noalias !1333
  %wide.load139 = load <4 x float>, ptr %i.jt, align 4, !alias.scope !1336, !noalias !1333
  %i.ju = fadd <4 x float> %wide.load, %wide.load138
  %i.jv = fadd <4 x float> %wide.load137, %wide.load139
  store <4 x float> %i.ju, ptr %i.js, align 4, !alias.scope !1336, !noalias !1333
  store <4 x float> %i.jv, ptr %i.jt, align 4, !alias.scope !1336, !noalias !1333
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jw = icmp eq i64 %index.next, %n.vec
  br i1 %i.jw, label %.lr.ph.i55.i.preheader184, label %vector.body, !llvm.loop !1324

.lr.ph.i55.i.preheader184:                        ; preds = %vector.body, %.lr.ph.i55.i.preheader
  %.sroa.01.07.i56.i.ph = phi i64 [ 0, %.lr.ph.i55.i.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph.i55.i

.lr.ph.i55.i:                                     ; preds = %.lr.ph.i55.i.preheader184, %bb.aw
  %.sroa.01.07.i56.i = phi i64 [ %i.jx, %bb.aw ], [ %.sroa.01.07.i56.i.ph, %.lr.ph.i55.i.preheader184 ] ; 5 uses
  %i.jx = add nuw nsw i64 %.sroa.01.07.i56.i, 1   ; 2 uses
  %exitcond.not.i57.i = icmp eq i64 %.sroa.01.07.i56.i, %i.eq
  br i1 %exitcond.not.i57.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i55.i
  %exitcond10.not.i58.i = icmp eq i64 %.sroa.01.07.i56.i, %.val1
  br i1 %exitcond10.not.i58.i, label %bb.ax, label %bb.aw

bb.av:                                            ; preds = %.lr.ph.i55.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.eq, i64 noundef %i.eq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22, !noalias !1335
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.sroa.01.07.i56.i
  %i.jz = load float, ptr %i.jy, align 4, !noalias !1335, !noundef !5
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.sroa.01.07.i56.i ; 2 uses
  %i.kb = load float, ptr %i.ka, align 4, !alias.scope !1336, !noalias !1333, !noundef !5
  %i.kc = fadd float %i.jz, %i.kb
  store float %i.kc, ptr %i.ka, align 4, !alias.scope !1336, !noalias !1333
  %exitcond11.not.i59.i = icmp eq i64 %i.jx, %i.jf
  br i1 %exitcond11.not.i59.i, label %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6varlen21flash_attn_varlen_cpus_0s_0EB8_.exit.i, label %.lr.ph.i55.i, !llvm.loop !1325

bb.ax:                                            ; preds = %bb.au
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 2305843009213693952) %.val1, i64 noundef range(i64 0, 2305843009213693952) %.val1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22, !noalias !1335
  unreachable

_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6varlen21flash_attn_varlen_cpus_0s_0EB8_.exit.i: ; preds = %bb.aw, %._crit_edge.i, %_RNCNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus_0s_0Bb_.exit.i
  %.sroa.02.1.i = phi float [ %i.it, %_RNCNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus_0s_0Bb_.exit.i ], [ %i.jh, %._crit_edge.i ], [ %i.jh, %bb.aw ]
  %.sroa.01.1.i = phi float [ %.sroa.01.077.i, %_RNCNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus_0s_0Bb_.exit.i ], [ %.sroa.07.0.i, %._crit_edge.i ], [ %.sroa.07.0.i, %bb.aw ]
  %.sroa.02.1.fr.i = freeze float %.sroa.02.1.i   ; 3 uses
  %exitcond.not.i = icmp eq i64 %.sroa.05.075.i, %i.bz
  br i1 %exitcond.not.i, label %._crit_edge79.i, label %bb.ad

bb.ay:                                            ; preds = %bb.ak
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.hh, i64 noundef %i.hi, i64 noundef %i.ea, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #22, !noalias !1327
  unreachable

_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6varlen21flash_attn_varlen_cpus_0B9_.exit: ; preds = %bb.ag, %._crit_edge79.i, %.loopexit.sink.split.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsdsILkMb8ZHY_4half8binary163f16NtB6_5Debug3fmtCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !11, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs6_NtCsdsILkMb8ZHY_4half8binary16NtB5_3f16NtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCs3NyA1pFSltE_9candle_nn10sequentialNtB4_10SequentialNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %.lr.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit22
  %.sroa.0.025 = phi ptr [ %i.g, %.lr.ph ], [ %i.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit22 ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = load ptr, ptr %.sroa.0.025, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !align !10, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.r(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noundef nonnull %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.h unwind label %bb.g

._crit_edge:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit22, %bb.b
  %i.s = phi ptr [ %i.c, %bb.b ], [ %i.z, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit22 ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit20

bb.e:                                             ; preds = %bb.m, %bb.g
  %i.u = phi ptr [ %i.z, %bb.m ], [ %.pre, %bb.g ]
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %i.x, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  %i.v = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !1358
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit unwind label %bb.n

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %i.b, align 8, !alias.scope !1358
  br label %bb.e

bb.h:                                             ; preds = %bb.d
  %i.y = load i64, ptr %i.a, align 8, !range !12, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.y, -1
  %i.z = load ptr, ptr %i.l, align 8              ; 5 uses
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.516.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.513.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.y, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %.sroa.415.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  %i.aa = load ptr, ptr %i.b, align 8, !alias.scope !1362, !nonnull !5, !noundef !5
  %i.ab = atomicrmw add ptr %i.aa, i64 -1 release, align 8, !noalias !1362
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit20

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #25
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit20

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  %i.ad = load ptr, ptr %i.b, align 8, !alias.scope !1366, !nonnull !5, !noundef !5
  %i.ae = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !noalias !1366
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit22

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit22 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  store ptr %i.z, ptr %i.b, align 8
  br label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit22: ; preds = %bb.k, %bb.l
  store ptr %i.z, ptr %i.b, align 8
  %i.ah = icmp eq ptr %i.m, %i.j
  br i1 %i.ah, label %._crit_edge, label %bb.d

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit20: ; preds = %bb.j, %bb.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.n:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtCsltEA4u8Pgfu_11candle_core5dtypeNtB5_5DTypeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !14, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsc_NtCsltEA4u8Pgfu_11candle_core5dtypeNtB5_5DTypeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsc_NtCsltEA4u8Pgfu_11candle_core5dtypeNtB5_5DTypeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.22, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSNtNtCsdsILkMb8ZHY_4half8binary163f16NtB5_5Debug3fmtCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsdsILkMb8ZHY_4half8binary163f16INtNtNtBa_5slice4iter4IterB14_EECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYSNtNtCsdsILkMb8ZHY_4half8binary163f16INtNtCs7fP0opQOXdx_5rayon5slice13ParallelSliceB3_E10par_chunksCs3NyA1pFSltE_9candle_nn(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 4611686018427387904) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @106, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #22
  unreachable

end_hunk_1
