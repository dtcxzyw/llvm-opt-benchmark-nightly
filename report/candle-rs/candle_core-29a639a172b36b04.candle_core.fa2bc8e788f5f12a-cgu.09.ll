Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.09?download=true
inline.NumInlined: 1250
inline.NumDeleted: 641
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_q3_quants:bb.a
  %i.ko = fmul float %i.kh, %i.kn
  %i.kp = fadd float %.sroa.013.0124, %i.ko       ; 3 uses
  %exitcond209.not = icmp eq i64 %i.jz, %1
  br i1 %exitcond209.not, label %.preheader.split.us, label %.lr.ph126.split

.invoke:                                          ; preds = %.lr.ph121.split, %.lr.ph126.split, %.lr.ph134.us, %.lr.ph134.us.1, %.lr.ph134.us.2, %.lr.ph134.us.3, %.lr.ph134.us.4, %bb.i
  %i.kq = phi i64 [ %i.ba, %bb.i ], [ %.sroa.044.0123, %.lr.ph126.split ], [ %.sroa.049.0129.us161.4, %.lr.ph134.us.4 ], [ %.sroa.049.0129.us161.2, %.lr.ph134.us.2 ], [ %.sroa.049.0129.us161.3, %.lr.ph134.us.3 ], [ %.sroa.049.0129.us161, %.lr.ph134.us ], [ %.sroa.049.0129.us161.1, %.lr.ph134.us.1 ], [ %.sroa.051.0120, %.lr.ph121.split ]
  %i.kr = phi i64 [ %i.ba, %bb.i ], [ %i.iz, %.lr.ph126.split ], [ %i.hr, %.lr.ph134.us.4 ], [ %i.er, %.lr.ph134.us.2 ], [ %i.ge, %.lr.ph134.us.3 ], [ %i.br, %.lr.ph134.us ], [ %i.de, %.lr.ph134.us.1 ], [ %i.am, %.lr.ph121.split ]
  %i.ks = phi ptr [ @27, %bb.i ], [ @30, %.lr.ph126.split ], [ @27, %.lr.ph134.us ], [ @27, %.lr.ph134.us.4 ], [ @27, %.lr.ph134.us.3 ], [ @27, %.lr.ph134.us.2 ], [ @27, %.lr.ph134.us.1 ], [ @26, %.lr.ph121.split ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kq, i64 noundef %i.kr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ks) #33
          to label %.cont unwind label %bb.g

.cont:                                            ; preds = %.invoke
  unreachable

bb.at:                                            ; preds = %bb.g
  %i.kt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef float @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qp_quants(i64 noundef %0, i8 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %6, i64 noundef range(i64 0, 2305843009213693952) %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  store i64 %0, ptr %i.d, align 8
  store i64 %3, ptr %i.c, align 8
  %i.e = icmp eq i64 %3, %0
  br i1 %i.e, label %bb.c, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCsf3Ta7LF998c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 %5, ptr %i.b, align 8
  %i.f = icmp eq i64 %5, %3
  br i1 %i.f, label %bb.e, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  call void @_RINvNtCsf3Ta7LF998c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  store i64 %7, ptr %i.a, align 8
  %i.g = icmp eq i64 %7, %3
  br i1 %i.g, label %bb.g, label %bb.f, !prof !15

bb.f:                                             ; preds = %bb.e
  call void @_RINvNtCsf3Ta7LF998c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #32
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = icmp eq i64 %3, 0
  br i1 %i.h, label %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMuthENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qp_quants0EB1R_.exit, label %.preheader200.preheader

.preheader200.preheader:                          ; preds = %bb.g
  %min.iters.check = icmp samesign ult i64 %3, 8
  br i1 %min.iters.check, label %.preheader200.preheader255, label %vector.ph

vector.ph:                                        ; preds = %.preheader200.preheader
  %n.vec = and i64 %3, 2305843009213693944        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi238 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <4 x float>, ptr %i.i, align 4
  %wide.load239 = load <4 x float>, ptr %i.j, align 4
  %i.k = tail call nsz <4 x float> @llvm.maximumnum.v4f32(<4 x float> %vec.phi, <4 x float> %wide.load) ; 2 uses
  %i.l = tail call nsz <4 x float> @llvm.maximumnum.v4f32(<4 x float> %vec.phi238, <4 x float> %wide.load239) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !1461

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call nsz <4 x float> @llvm.maximumnum.v4f32(<4 x float> %i.k, <4 x float> %i.l)
  %i.n = tail call nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvMNtBb_3f32f3maxE0ECsltEA4u8Pgfu_11candle_core.exit, label %.preheader200.preheader255

.preheader200.preheader255:                       ; preds = %.preheader200.preheader, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %.preheader200.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi float [ 0.000000e+00, %.preheader200.preheader ], [ %i.n, %middle.block ]
  br label %.preheader200

.preheader200:                                    ; preds = %.preheader200.preheader255, %.preheader200
  %.sroa.04.0.i = phi i64 [ %i.q, %.preheader200 ], [ %.sroa.04.0.i.ph, %.preheader200.preheader255 ] ; 2 uses
  %.sroa.02.0.i = phi float [ %i.p, %.preheader200 ], [ %.sroa.02.0.i.ph, %.preheader200.preheader255 ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %.val.i = load float, ptr %i.o, align 4, !noundef !4
  %i.p = tail call nsz noundef float @llvm.maximumnum.f32(float %.sroa.02.0.i, float %.val.i) ; 2 uses
  %i.q = add nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.r = icmp eq i64 %i.q, %3
  br i1 %i.r, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvMNtBb_3f32f3maxE0ECsltEA4u8Pgfu_11candle_core.exit, label %.preheader200, !llvm.loop !1462

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvMNtBb_3f32f3maxE0ECsltEA4u8Pgfu_11candle_core.exit: ; preds = %.preheader200, %middle.block
  %.lcssa237 = phi float [ %i.n, %middle.block ], [ %i.p, %.preheader200 ] ; 3 uses
  %i.s = fcmp oeq float %.lcssa237, 0.000000e+00
  br i1 %i.s, label %.lr.ph.preheader.i, label %bb.h

bb.h:                                             ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvMNtBb_3f32f3maxE0ECsltEA4u8Pgfu_11candle_core.exit
  %i.t = uitofp i8 %1 to float                    ; 2 uses
  %i.u = fdiv float %i.t, %.lcssa237              ; 4 uses
  %min.iters.check241 = icmp samesign ult i64 %3, 4
  br i1 %min.iters.check241, label %scalar.ph240.preheader, label %vector.ph242

vector.ph242:                                     ; preds = %bb.h
  %n.vec243 = and i64 %3, 2305843009213693948     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.u, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph242
  %index245 = phi i64 [ 0, %vector.ph242 ], [ %index.next247, %vector.body244 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index245
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 %index245
  %wide.load246 = load <4 x float>, ptr %i.v, align 4
  %i.x = fmul <4 x float> %broadcast.splat, %wide.load246
  %i.y = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.x)
  %i.z = tail call <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float> %i.y)
  %i.aa = trunc <4 x i32> %i.z to <4 x i8>
  store <4 x i8> %i.aa, ptr %i.w, align 1
  %index.next247 = add nuw i64 %index245, 4       ; 2 uses
  %i.ab = icmp eq i64 %index.next247, %n.vec243
  br i1 %i.ab, label %middle.block248, label %vector.body244, !llvm.loop !1463

middle.block248:                                  ; preds = %vector.body244
  %cmp.n249 = icmp eq i64 %3, %n.vec243
  br i1 %cmp.n249, label %.lr.ph.i.preheader, label %scalar.ph240.preheader

scalar.ph240.preheader:                           ; preds = %bb.h, %middle.block248
  %.sroa.8.0205.ph = phi i64 [ 0, %bb.h ], [ %n.vec243, %middle.block248 ]
  br label %scalar.ph240

.lr.ph.preheader.i:                               ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvNtNtBY_8adapters6copied9copy_foldffNvMNtBb_3f32f3maxE0ECsltEA4u8Pgfu_11candle_core.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %4, i8 0, i64 %3, i1 false), !alias.scope !1476
  br label %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMuthENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qp_quants0EB1R_.exit

scalar.ph240:                                     ; preds = %scalar.ph240.preheader, %scalar.ph240
  %.sroa.8.0205 = phi i64 [ %i.ac, %scalar.ph240 ], [ %.sroa.8.0205.ph, %scalar.ph240.preheader ] ; 3 uses
  %i.ac = add nuw nsw i64 %.sroa.8.0205, 1        ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.8.0205
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.8.0205
  %i.af = load float, ptr %i.ad, align 4, !noundef !4
  %i.ag = fmul float %i.u, %i.af
  %i.ah = tail call float @llvm.round.f32(float %i.ag)
  %i.ai = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.ah)
  %i.aj = trunc i32 %i.ai to i8
  store i8 %i.aj, ptr %i.ae, align 1
  %exitcond.not = icmp eq i64 %i.ac, %3
  br i1 %exitcond.not, label %.lr.ph.i.preheader, label %scalar.ph240, !llvm.loop !1466

.lr.ph.i.preheader:                               ; preds = %scalar.ph240, %middle.block248
  %i.ak = fdiv float 1.000000e+00, %i.u           ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.al = icmp eq i64 %3, 1
  br i1 %i.al, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %3, 2305843009213693950
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.0.018.i = phi float [ -0.000000e+00, %.lr.ph.i.preheader.new ], [ %i.bl, %.lr.ph.i ]
  %.sroa.02.017.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.az, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.am = or disjoint i64 %.sroa.02.017.i, 1      ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.02.017.i
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.02.017.i
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.02.017.i
  %i.aq = load float, ptr %i.an, align 4, !noalias !1477, !noundef !4
  %i.ar = load i8, ptr %i.ao, align 1, !noalias !1477, !noundef !4
  %i.as = load float, ptr %i.ap, align 4, !noalias !1477, !noundef !4
  %i.at = uitofp i8 %i.ar to float
  %i.au = fmul float %i.ak, %i.at
  %i.av = fsub float %i.aq, %i.au                 ; 2 uses
  %i.aw = fmul float %i.as, %i.av
  %i.ax = fmul float %i.av, %i.aw
  %i.ay = fadd float %.sroa.0.018.i, %i.ax
  %i.az = add nuw nsw i64 %.sroa.02.017.i, 2      ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.am
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 %i.am
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.am
  %i.bd = load float, ptr %i.ba, align 4, !noalias !1477, !noundef !4
  %i.be = load i8, ptr %i.bb, align 1, !noalias !1477, !noundef !4
  %i.bf = load float, ptr %i.bc, align 4, !noalias !1477, !noundef !4
  %i.bg = uitofp i8 %i.be to float
  %i.bh = fmul float %i.ak, %i.bg
  %i.bi = fsub float %i.bd, %i.bh                 ; 2 uses
  %i.bj = fmul float %i.bf, %i.bi
  %i.bk = fmul float %i.bi, %i.bj
  %i.bl = fadd float %i.ay, %i.bk                 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.outer.preheader.unr-lcssa, label %.lr.ph.i

.outer.preheader.unr-lcssa:                       ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.outer.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.outer.preheader.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.0.018.i.epil.init = phi float [ -0.000000e+00, %.lr.ph.i.preheader ], [ %i.bl, %.outer.preheader.unr-lcssa ]
  %.sroa.02.017.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.az, %.outer.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod260 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod260)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.02.017.i.epil.init
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.02.017.i.epil.init
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.02.017.i.epil.init
  %i.bp = load float, ptr %i.bm, align 4, !noalias !1477, !noundef !4
  %i.bq = load i8, ptr %i.bn, align 1, !noalias !1477, !noundef !4
  %i.br = load float, ptr %i.bo, align 4, !noalias !1477, !noundef !4
  %i.bs = uitofp i8 %i.bq to float
  %i.bt = fmul float %i.ak, %i.bs
  %i.bu = fsub float %i.bp, %i.bt                 ; 2 uses
  %i.bv = fmul float %i.br, %i.bu
  %i.bw = fmul float %i.bu, %i.bv
  %i.bx = fadd float %.sroa.0.018.i.epil.init, %i.bw
  br label %.outer.preheader

.outer.preheader:                                 ; preds = %.outer.preheader.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa254 = phi float [ %i.bl, %.outer.preheader.unr-lcssa ], [ %i.bx, %.lr.ph.i.epil.preheader ]
  br label %.outer

.outer:                                           ; preds = %.outer.preheader, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterfEBX_EINtB6_7ZipImplBX_BX_E4foldfNCINvNtB8_3map8map_foldTRfB2i_EffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qp_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB3K_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2z_.exit.loopexit
  %.sroa.0112.0.ph = phi i32 [ %i.bz, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterfEBX_EINtB6_7ZipImplBX_BX_E4foldfNCINvNtB8_3map8map_foldTRfB2i_EffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qp_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB3K_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2z_.exit.loopexit ], [ -4, %.outer.preheader ] ; 3 uses
  %.sroa.011.0.ph = phi float [ %.sroa.011.1, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterfEBX_EINtB6_7ZipImplBX_BX_E4foldfNCINvNtB8_3map8map_foldTRfB2i_EffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qp_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB3K_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2z_.exit.loopexit ], [ %.lcssa254, %.outer.preheader ] ; 2 uses
  %.sroa.05.0.ph = phi float [ %.sroa.05.1, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterfEBX_EINtB6_7ZipImplBX_BX_E4foldfNCINvNtB8_3map8map_foldTRfB2i_EffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qp_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB3K_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2z_.exit.loopexit ], [ %i.u, %.outer.preheader ] ; 2 uses
  %exitcond219.peel = icmp sgt i32 %.sroa.0112.0.ph, 4
  br i1 %exitcond219.peel, label %.preheader199, label %.lr.ph.i89.preheader

.lr.ph.i89.preheader:                             ; preds = %.outer
  %i.by = icmp eq i32 %.sroa.0112.0.ph, 0
  %.sroa.0112.0.lcssa252 = select i1 %i.by, i32 1, i32 %.sroa.0112.0.ph ; 2 uses
  %i.bz = add i32 %.sroa.0112.0.lcssa252, 1
  %i.ca = sitofp i32 %.sroa.0112.0.lcssa252 to float
  %i.cb = fmul nnan float %i.ca, 1.000000e-01
  %i.cc = fadd float %i.cb, %i.t
  %i.cd = fdiv float %i.cc, %.lcssa237            ; 3 uses
  %i.ce = fdiv float 1.000000e+00, %i.cd
  br label %.lr.ph.i89

.preheader199:                                    ; preds = %.outer, %.preheader199
  %.sroa.023.0208 = phi float [ %i.cv, %.preheader199 ], [ 0.000000e+00, %.outer ]
  %.sroa.019.0207 = phi float [ %i.cs, %.preheader199 ], [ 0.000000e+00, %.outer ]
  %.sroa.14.0206 = phi i64 [ %i.cf, %.preheader199 ], [ 0, %.outer ] ; 4 uses
  %i.cf = add nuw nsw i64 %.sroa.14.0206, 1       ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.14.0206
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.14.0206
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.14.0206
  %i.cj = load float, ptr %i.ci, align 4, !noundef !4 ; 2 uses
  %i.ck = load float, ptr %i.cg, align 4, !noundef !4 ; 2 uses
  %i.cl = fmul float %.sroa.05.0.ph, %i.ck
  %i.cm = tail call float @llvm.round.f32(float %i.cl)
  %i.cn = tail call i8 @llvm.fptoui.sat.i8.f32(float %i.cm)
  %i.co = tail call i8 @llvm.umin.i8(i8 %i.cn, i8 %1) ; 2 uses
  store i8 %i.co, ptr %i.ch, align 1
  %i.cp = fmul float %i.cj, %i.ck
  %i.cq = uitofp i8 %i.co to float                ; 3 uses
  %i.cr = fmul float %i.cp, %i.cq
  %i.cs = fadd float %.sroa.019.0207, %i.cr       ; 2 uses
  %i.ct = fmul nnan float %i.cq, %i.cq
  %i.cu = fmul float %i.cj, %i.ct
  %i.cv = fadd float %.sroa.023.0208, %i.cu       ; 2 uses
  %exitcond220.not = icmp eq i64 %i.cf, %3
  br i1 %exitcond220.not, label %.preheader, label %.preheader199

bb.i:                                             ; preds = %bb.ac, %bb.y, %bb.t, %bb.o, %bb.j
  %.sroa.019.4.lcssa.lcssa = phi float [ %.sroa.019.4, %bb.j ], [ %.sroa.019.4.1, %bb.o ], [ %.sroa.019.4.2, %bb.t ], [ %.sroa.019.4.3, %bb.y ], [ %.sroa.019.4.4, %bb.ac ]
  %.sroa.023.4.lcssa.lcssa = phi float [ %.sroa.023.4, %bb.j ], [ %.sroa.023.4.1, %bb.o ], [ %.sroa.023.4.2, %bb.t ], [ %.sroa.023.4.3, %bb.y ], [ %.sroa.023.4.4, %bb.ac ]
  %i.cw = fdiv float %.sroa.019.4.lcssa.lcssa, %.sroa.023.4.lcssa.lcssa
  br label %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMuthENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qp_quants0EB1R_.exit

.preheader:                                       ; preds = %.preheader199, %bb.ad
  %.sroa.031.0212 = phi i32 [ %.sroa.031.1, %bb.ad ], [ 0, %.preheader199 ] ; 4 uses
  %.sroa.023.3211 = phi float [ %.sroa.023.4, %bb.ad ], [ %i.cv, %.preheader199 ] ; 5 uses
  %.sroa.019.3210 = phi float [ %.sroa.019.4, %bb.ad ], [ %i.cs, %.preheader199 ] ; 6 uses
  %.sroa.14166.0209 = phi i64 [ %i.cx, %bb.ad ], [ 0, %.preheader199 ] ; 4 uses
  %i.cx = add nuw nsw i64 %.sroa.14166.0209, 1    ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.14166.0209
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.14166.0209 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.14166.0209
  %i.db = load float, ptr %i.da, align 4, !noundef !4 ; 3 uses
  %i.dc = load float, ptr %i.cy, align 4, !noundef !4 ; 2 uses
  %i.dd = fmul float %i.db, %i.dc                 ; 2 uses
  %i.de = load i8, ptr %i.cz, align 1, !noundef !4 ; 2 uses
  %i.df = uitofp i8 %i.de to float                ; 3 uses
  %i.dg = fmul float %i.dd, %i.df
  %i.dh = fsub float %.sroa.019.3210, %i.dg       ; 3 uses
  %i.di = fmul float %i.df, %i.df
  %i.dj = fmul float %i.db, %i.di
  %i.dk = fsub float %.sroa.023.3211, %i.dj       ; 3 uses
  %i.dl = fcmp ogt float %i.dh, 0.000000e+00
  %i.dm = fcmp ogt float %i.dk, 0.000000e+00
  %or.cond4 = select i1 %i.dl, i1 %i.dm, i1 false
  br i1 %or.cond4, label %bb.ae, label %bb.ad

bb.j:                                             ; preds = %bb.ad
  %.not = icmp eq i32 %.sroa.031.1, 0
  br i1 %.not, label %bb.i, label %.preheader.1

.preheader.1:                                     ; preds = %bb.j, %bb.n
  %.sroa.031.0212.1 = phi i32 [ %.sroa.031.1.1, %bb.n ], [ 0, %bb.j ] ; 4 uses
  %.sroa.023.3211.1 = phi float [ %.sroa.023.4.1, %bb.n ], [ %.sroa.023.4, %bb.j ] ; 5 uses
  %.sroa.019.3210.1 = phi float [ %.sroa.019.4.1, %bb.n ], [ %.sroa.019.4, %bb.j ] ; 6 uses
  %.sroa.14166.0209.1 = phi i64 [ %i.dn, %bb.n ], [ 0, %bb.j ] ; 4 uses
  %i.dn = add nuw nsw i64 %.sroa.14166.0209.1, 1  ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.14166.0209.1
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.14166.0209.1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.14166.0209.1
  %i.dr = load float, ptr %i.dq, align 4, !noundef !4 ; 3 uses
  %i.ds = load float, ptr %i.do, align 4, !noundef !4 ; 2 uses
  %i.dt = fmul float %i.dr, %i.ds                 ; 2 uses
  %i.du = load i8, ptr %i.dp, align 1, !noundef !4 ; 2 uses
  %i.dv = uitofp i8 %i.du to float                ; 3 uses
  %i.dw = fmul float %i.dt, %i.dv
  %i.dx = fsub float %.sroa.019.3210.1, %i.dw     ; 3 uses
  %i.dy = fmul float %i.dv, %i.dv
  %i.dz = fmul float %i.dr, %i.dy
  %i.ea = fsub float %.sroa.023.3211.1, %i.dz     ; 3 uses
  %i.eb = fcmp ogt float %i.dx, 0.000000e+00
  %i.ec = fcmp ogt float %i.ea, 0.000000e+00
  %or.cond4.1 = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond4.1, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.preheader.1
  %i.ed = fmul float %i.ds, %i.ea
  %i.ee = fdiv float %i.ed, %i.dx
  %i.ef = tail call float @llvm.round.f32(float %i.ee)
  %i.eg = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.ef)
  %i.eh = trunc i32 %i.eg to i8
  %i.ei = tail call i8 @llvm.umin.i8(i8 %i.eh, i8 %1) ; 3 uses
  %.not58.1 = icmp eq i8 %i.ei, %i.du
  br i1 %.not58.1, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ej = uitofp i8 %i.ei to float                ; 3 uses
  %i.ek = fmul float %i.dt, %i.ej
  %i.el = fadd float %i.dx, %i.ek                 ; 3 uses
  %i.em = fmul nnan float %i.ej, %i.ej
  %i.en = fmul float %i.dr, %i.em
  %i.eo = fadd float %i.ea, %i.en                 ; 2 uses
  %i.ep = fmul float %i.el, %i.el
  %i.eq = fmul float %.sroa.023.3211.1, %i.ep
  %i.er = fmul float %.sroa.019.3210.1, %.sroa.019.3210.1
  %i.es = fmul float %i.er, %i.eo
  %i.et = fcmp ogt float %i.eq, %i.es
  br i1 %i.et, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 %i.ei, ptr %i.dp, align 1
  %i.eu = add i32 %.sroa.031.0212.1, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %.preheader.1
  %.sroa.019.4.1 = phi float [ %i.el, %bb.m ], [ %.sroa.019.3210.1, %bb.l ], [ %.sroa.019.3210.1, %bb.k ], [ %.sroa.019.3210.1, %.preheader.1 ] ; 3 uses
  %.sroa.023.4.1 = phi float [ %i.eo, %bb.m ], [ %.sroa.023.3211.1, %bb.l ], [ %.sroa.023.3211.1, %bb.k ], [ %.sroa.023.3211.1, %.preheader.1 ] ; 3 uses
  %.sroa.031.1.1 = phi i32 [ %i.eu, %bb.m ], [ %.sroa.031.0212.1, %bb.l ], [ %.sroa.031.0212.1, %bb.k ], [ %.sroa.031.0212.1, %.preheader.1 ] ; 2 uses
  %exitcond221.not.1 = icmp eq i64 %i.dn, %3
  br i1 %exitcond221.not.1, label %bb.o, label %.preheader.1

bb.o:                                             ; preds = %bb.n
  %.not264 = icmp eq i32 %.sroa.031.1.1, 0
  br i1 %.not264, label %bb.i, label %.preheader.2

.preheader.2:                                     ; preds = %bb.o, %bb.s
  %.sroa.031.0212.2 = phi i32 [ %.sroa.031.1.2, %bb.s ], [ 0, %bb.o ] ; 4 uses
  %.sroa.023.3211.2 = phi float [ %.sroa.023.4.2, %bb.s ], [ %.sroa.023.4.1, %bb.o ] ; 5 uses
  %.sroa.019.3210.2 = phi float [ %.sroa.019.4.2, %bb.s ], [ %.sroa.019.4.1, %bb.o ] ; 6 uses
  %.sroa.14166.0209.2 = phi i64 [ %i.ev, %bb.s ], [ 0, %bb.o ] ; 4 uses
  %i.ev = add nuw nsw i64 %.sroa.14166.0209.2, 1  ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.14166.0209.2
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.14166.0209.2 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.14166.0209.2
  %i.ez = load float, ptr %i.ey, align 4, !noundef !4 ; 3 uses
  %i.fa = load float, ptr %i.ew, align 4, !noundef !4 ; 2 uses
  %i.fb = fmul float %i.ez, %i.fa                 ; 2 uses
  %i.fc = load i8, ptr %i.ex, align 1, !noundef !4 ; 2 uses
  %i.fd = uitofp i8 %i.fc to float                ; 3 uses
  %i.fe = fmul float %i.fb, %i.fd
  %i.ff = fsub float %.sroa.019.3210.2, %i.fe     ; 3 uses
  %i.fg = fmul float %i.fd, %i.fd
  %i.fh = fmul float %i.ez, %i.fg
  %i.fi = fsub float %.sroa.023.3211.2, %i.fh     ; 3 uses
  %i.fj = fcmp ogt float %i.ff, 0.000000e+00
  %i.fk = fcmp ogt float %i.fi, 0.000000e+00
  %or.cond4.2 = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %or.cond4.2, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.preheader.2
  %i.fl = fmul float %i.fa, %i.fi
  %i.fm = fdiv float %i.fl, %i.ff
  %i.fn = tail call float @llvm.round.f32(float %i.fm)
  %i.fo = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.fn)
end_hunk_0
begin_hunk_1_@_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quants:bb.a
  %i.dy = fmul float %i.dm, %i.dx
  %i.dz = fsub float %.val14.i, %i.dy
  %i.ea = fadd float %.sroa.0.120.i, %i.dz
  %i.eb = icmp ne ptr %i.du, %i.o
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.ed = icmp ne ptr %i.dw, %i.do
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dr, i64 2 ; 2 uses
  %.val14.i.1 = load float, ptr %i.du, align 4, !noalias !1582, !noundef !4
  %.val15.i.1 = load i8, ptr %i.dw, align 1, !noalias !1582, !noundef !4
  %i.ef = uitofp i8 %.val15.i.1 to float
  %i.eg = fmul float %i.dm, %i.ef
  %i.eh = fsub float %.val14.i.1, %i.eg
  %i.ei = fadd float %i.ea, %i.eh                 ; 3 uses
  %niter187.next.1 = add i64 %niter187, 2         ; 2 uses
  %niter187.ncmp.1 = icmp eq i64 %niter187.next.1, %unroll_iter186
  br i1 %niter187.ncmp.1, label %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i

_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i
  %lcmp.mod183.not = icmp eq i64 %xtraiter178, 0
  br i1 %lcmp.mod183.not, label %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.epil.preheader

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.epil.preheader: ; preds = %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader
  %.epil.init180 = phi ptr [ %i.dn, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader ], [ %i.ee, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.120.i.epil.init = phi float [ -0.000000e+00, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader ], [ %i.ei, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa ]
  %.epil.init182 = phi ptr [ %2, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader ], [ %i.ec, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod185 = trunc i64 %i.dp to i1
  tail call void @llvm.assume(i1 %lcmp.mod185)
  %i.ej = icmp ne ptr %.epil.init182, %i.o
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = icmp ne ptr %.epil.init180, %i.do
  tail call void @llvm.assume(i1 %i.ek)
  %.val14.i.epil = load float, ptr %.epil.init182, align 4, !noalias !1582, !noundef !4
  %.val15.i.epil = load i8, ptr %.epil.init180, align 1, !noalias !1582, !noundef !4
  %i.el = uitofp i8 %.val15.i.epil to float
  %i.em = fmul float %i.dm, %i.el
  %i.en = fsub float %.val14.i.epil, %i.em
  %i.eo = fadd float %.sroa.0.120.i.epil.init, %i.en
  br label %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit

_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.epil.preheader, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split
  %.sroa.0.1.lcssa.i = phi float [ -0.000000e+00, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split ], [ %i.ei, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa ], [ %i.eo, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.epil.preheader ]
  %i.ep = fdiv float %.sroa.0.1.lcssa.i, %i.cq    ; 2 uses
  %i.eq = fcmp ogt float %i.ep, 0.000000e+00
  %spec.store.select = select i1 %i.eq, float 0.000000e+00, float %i.ep ; 2 uses
  %i.er = fdiv float 1.000000e+00, %i.dm
  %i.es = icmp ult i64 %i.ct, %1
  %or.cond = select i1 %.sroa.019.0.lcssa, i1 %i.es, i1 false
  br i1 %or.cond, label %.split, label %.loopexit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit47
  %.sroa.3.0 = phi float [ %i.cx, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit47 ], [ 0.000000e+00, %bb.h ]
  %.sroa.0.0 = phi float [ %.sroa.051.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit47 ], [ 0.000000e+00, %bb.h ]
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.et = insertvalue { float, float } poison, float %.sroa.0.0, 0
  %i.eu = insertvalue { float, float } %i.et, float %.sroa.3.0, 1
  ret { float, float } %i.eu

bb.o:                                             ; preds = %bb.n
  %i.ev = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.sroa.7.084 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1, !noundef !4
  %.not43 = icmp eq i8 %i.ex, %i.di
  br i1 %.not43, label %bb.p, label %bb.q

.invoke:                                          ; preds = %bb.n, %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsltEA4u8Pgfu_11candle_core.exit
  %i.ey = phi i64 [ 0, %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsltEA4u8Pgfu_11candle_core.exit ], [ %.sroa.7.084, %bb.n ]
  %i.ez = phi i64 [ 0, %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsltEA4u8Pgfu_11candle_core.exit ], [ %.pre119, %bb.n ]
  %i.fa = phi ptr [ @37, %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsltEA4u8Pgfu_11candle_core.exit ], [ @39, %bb.n ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ey, i64 noundef %i.ez, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fa) #33
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %bb.o, %bb.q
  %.sroa.019.1 = phi i1 [ true, %bb.q ], [ %.sroa.019.086, %bb.o ] ; 2 uses
  %i.fb = sitofp i32 %.sroa.0.0.i49 to float
  %i.fc = fmul float %i.dd, %i.fb
  %i.fd = fadd float %.sroa.015.088, %i.fc        ; 2 uses
  %i.fe = mul i32 %.sroa.0.0.i49, %.sroa.0.0.i49
  %i.ff = add i32 %i.fe, %.sroa.017.087           ; 2 uses
  %i.fg = icmp eq i64 %i.cy, 0
  br i1 %i.fg, label %._RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split_crit_edge, label %bb.m

._RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split_crit_edge: ; preds = %bb.p
  %.pre = load i64, ptr %i.n, align 8
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split

bb.q:                                             ; preds = %bb.o
  store i8 %i.di, ptr %i.ew, align 1
  br label %bb.p

bb.r:                                             ; preds = %bb.d
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { float, float } @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx3_quants(i32 noundef %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %1, i64 noundef range(i64 0, 2305843009213693952) %2, ptr noalias nofree noundef readonly align 4 captures(address_is_null) %3, i64 %4, float noundef %5, float noundef %6, i64 noundef %7, i1 noundef zeroext %8) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  %i.d = alloca [32 x i8], align 1                ; 7 uses
  %i.e = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load float, ptr %1, align 4, !noundef !4 ; 12 uses
  %.not98 = icmp eq ptr %3, null                  ; 4 uses
  br i1 %.not98, label %bb.f, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #32
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not99 = icmp eq i64 %4, 0
  br i1 %.not99, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #32
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.g = fmul float %i.f, %i.f                    ; 3 uses
  %i.h = fmul float %i.f, %i.g                    ; 2 uses
  %.not180 = icmp eq i64 %2, 1
  br i1 %.not180, label %._crit_edge, label %.lr.ph.split.us

.thread:                                          ; preds = %bb.d
  %i.i = load float, ptr %3, align 4, !noundef !4 ; 3 uses
  %i.j = fmul float %i.f, %i.i                    ; 2 uses
  %.not180230 = icmp eq i64 %2, 1
  br i1 %.not180230, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %bb.f, %.lr.ph.split.us
  %.sroa.012.0153.us = phi float [ %.sroa.012.3.us, %.lr.ph.split.us ], [ %i.f, %bb.f ] ; 2 uses
  %.sroa.023.0152.us = phi float [ %.sroa.023.1.us, %.lr.ph.split.us ], [ %i.f, %bb.f ] ; 2 uses
  %.sroa.027.1151.us = phi float [ %i.q, %.lr.ph.split.us ], [ %i.g, %bb.f ]
  %.sroa.031.0150.us = phi float [ %i.s, %.lr.ph.split.us ], [ %i.h, %bb.f ]
  %.sroa.084.0149.us = phi i64 [ %i.k, %.lr.ph.split.us ], [ 1, %bb.f ] ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.084.0149.us, 1    ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.084.0149.us
  %i.m = load float, ptr %i.l, align 4, !noundef !4 ; 7 uses
  %i.n = fcmp olt float %i.m, %.sroa.012.0153.us
  %.sroa.012.3.us = select i1 %i.n, float %i.m, float %.sroa.012.0153.us ; 2 uses
  %i.o = fcmp ogt float %i.m, %.sroa.023.0152.us
  %.sroa.023.1.us = select i1 %i.o, float %i.m, float %.sroa.023.0152.us ; 2 uses
  %i.p = fmul float %i.m, %i.m                    ; 2 uses
  %i.q = fadd float %.sroa.027.1151.us, %i.p      ; 2 uses
  %i.r = fmul float %i.m, %i.p
  %i.s = fadd float %.sroa.031.0150.us, %i.r      ; 2 uses
  %exitcond204.not = icmp eq i64 %i.k, %2
  br i1 %exitcond204.not, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.ae, %.lr.ph.split.us, %.thread, %bb.f
  %.sroa.031.0.lcssa = phi float [ %i.h, %bb.f ], [ %i.j, %.thread ], [ %i.s, %.lr.ph.split.us ], [ %i.fh, %bb.ae ] ; 2 uses
  %.sroa.027.1.lcssa = phi float [ %i.g, %bb.f ], [ %i.i, %.thread ], [ %i.q, %.lr.ph.split.us ], [ %i.ff, %bb.ae ] ; 2 uses
  %.sroa.023.0.lcssa = phi float [ %i.f, %bb.f ], [ %i.f, %.thread ], [ %.sroa.023.1.us, %.lr.ph.split.us ], [ %.sroa.023.1, %bb.ae ] ; 3 uses
  %.sroa.012.0.lcssa = phi float [ %i.f, %bb.f ], [ %i.f, %.thread ], [ %.sroa.012.3.us, %.lr.ph.split.us ], [ %.sroa.012.3, %bb.ae ] ; 2 uses
  %i.t = fcmp ogt float %.sroa.012.0.lcssa, 0.000000e+00
  %spec.store.select = select i1 %i.t, float 0.000000e+00, float %.sroa.012.0.lcssa ; 5 uses
  %i.u = fcmp ugt float %.sroa.023.0.lcssa, %spec.store.select
  %i.v = insertelement <2 x float> <float 0.000000e+00, float poison>, float %spec.store.select, i64 1 ; 2 uses
  br i1 %i.u, label %bb.g, label %.loopexit

.lr.ph.split:                                     ; preds = %.thread, %bb.ae
  %.sroa.012.0153 = phi float [ %.sroa.012.3, %bb.ae ], [ %i.f, %.thread ] ; 2 uses
  %.sroa.023.0152 = phi float [ %.sroa.023.1, %bb.ae ], [ %i.f, %.thread ] ; 2 uses
  %.sroa.027.1151 = phi float [ %i.ff, %bb.ae ], [ %i.i, %.thread ]
  %.sroa.031.0150 = phi float [ %i.fh, %bb.ae ], [ %i.j, %.thread ]
  %.sroa.084.0149 = phi i64 [ %i.fc, %bb.ae ], [ 1, %.thread ] ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.084.0149, %4
  br i1 %exitcond.not, label %bb.af, label %bb.ae

bb.g:                                             ; preds = %._crit_edge
  %i.w = sitofp i32 %0 to float                   ; 2 uses
  %i.x = fsub float %.sroa.023.0.lcssa, %spec.store.select
  %i.y = fdiv float %i.w, %i.x                    ; 2 uses
  %i.z = fdiv float 1.000000e+00, %i.y            ; 2 uses
  %.not.i = icmp slt i32 %0, 0
  br i1 %.not.i, label %bb.i, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit, !prof !11

bb.h:                                             ; preds = %bb.ab
  %i.aa = icmp eq i64 %7, 0
  %i.ab = insertelement <2 x float> %i.v, float %i.z, i64 0 ; 2 uses
  br i1 %i.aa, label %.loopexit, label %.split166.preheader

.split166.preheader:                              ; preds = %bb.h
  %.not228 = icmp samesign ugt i64 %2, 32
  %i.ac = insertelement <2 x float> poison, float %.sroa.027.1.lcssa, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %.sroa.031.0.lcssa, i64 1
  br label %.split166

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit: ; preds = %bb.g, %bb.ab
  %.sroa.044.0161 = phi float [ %i.ev, %bb.ab ], [ 0.000000e+00, %bb.g ]
  %.sroa.086.0160 = phi i64 [ %i.ae, %bb.ab ], [ 0, %bb.g ] ; 7 uses
  %i.ae = add nuw nsw i64 %.sroa.086.0160, 1      ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.086.0160
  %i.ag = load float, ptr %i.af, align 4, !noundef !4 ; 4 uses
  %exitcond205.not = icmp eq i64 %.sroa.086.0160, 32
  br i1 %exitcond205.not, label %bb.y, label %bb.x

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1585
  store i32 0, ptr %i.c, align 4, !noalias !1585
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1585
  store i32 %0, ptr %i.b, align 4, !noalias !1585
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1585
  store ptr %i.c, ptr %i.a, align 8, !noalias !1585
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsQ_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1585
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.ah, align 8, !noalias !1585
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsQ_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !1585
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @62, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #32
  unreachable

.split166:                                        ; preds = %.split166.preheader, %bb.k
  %.sroa.044.1177 = phi float [ %.sroa.044.2, %bb.k ], [ %i.ev, %.split166.preheader ] ; 3 uses
  %.sroa.0.0176 = phi i64 [ %i.aj, %bb.k ], [ 0, %.split166.preheader ] ; 3 uses
  %i.ai = phi <2 x float> [ %i.bn, %bb.k ], [ %i.ab, %.split166.preheader ] ; 3 uses
  %i.aj = add i64 %.sroa.0.0176, 1
  %i.ak = uitofp i64 %.sroa.0.0176 to float
  %i.al = fmul float %6, %i.ak
  %i.am = fadd float %5, %i.al
  %i.an = fadd float %i.am, %i.w
  %i.ao = extractelement <2 x float> %i.ai, i64 1 ; 2 uses
  %i.ap = fsub float %.sroa.023.0.lcssa, %i.ao
  %i.aq = fdiv float %i.an, %i.ap
  br label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit107

.loopexit:                                        ; preds = %bb.k, %._crit_edge, %bb.h
  %i.ar = phi <2 x float> [ %i.v, %._crit_edge ], [ %i.ab, %bb.h ], [ %i.bn, %bb.k ] ; 2 uses
  %i.as = extractelement <2 x float> %i.ar, i64 1
  %i.at = fneg float %i.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.au = extractelement <2 x float> %i.ar, i64 0
  %i.av = insertvalue { float, float } poison, float %i.au, 0
  %i.aw = insertvalue { float, float } %i.av, float %i.at, 1
  ret { float, float } %i.aw

bb.j:                                             ; preds = %bb.w
  %i.ax = extractelement <2 x float> %i.ed, i64 1 ; 2 uses
  %i.ay = fmul float %.sroa.027.1.lcssa, %i.ax
  %i.az = fmul float %i.ec, %i.ec
  %i.ba = fsub float %i.ay, %i.az                 ; 2 uses
  %i.bb = fcmp ogt float %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.l, label %bb.k

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit107: ; preds = %.split166, %bb.w
  %.sroa.088.0165 = phi i64 [ 0, %.split166 ], [ %i.bd, %bb.w ] ; 7 uses
  %.sroa.054.0164 = phi float [ 0.000000e+00, %.split166 ], [ %i.ec, %bb.w ]
  %i.bc = phi <2 x float> [ zeroinitializer, %.split166 ], [ %i.ed, %bb.w ]
  %i.bd = add nuw nsw i64 %.sroa.088.0165, 1      ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.088.0165
  %i.bf = load float, ptr %i.be, align 4, !noundef !4 ; 4 uses
  %i.bg = fsub float %i.bf, %i.ao
  %i.bh = fmul float %i.aq, %i.bg
  %i.bi = call float @llvm.round.f32(float %i.bh)
  %i.bj = call i32 @llvm.fptosi.sat.i32.f32(float %i.bi) ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  %..i103 = call i32 @llvm.smin.i32(i32 %i.bj, i32 %0)
  %i.bl = trunc i32 %..i103 to i8
  %i.bm = select i1 %i.bk, i8 0, i8 %i.bl         ; 2 uses
  %exitcond208.not.a = icmp eq i64 %.sroa.088.0165, 32
  br i1 %exitcond208.not.a, label %bb.r, label %bb.q

bb.k:                                             ; preds = %bb.m, %.split174.us, %bb.j
  %.sroa.044.2 = phi float [ %.us-phi175, %bb.m ], [ %.sroa.044.1177, %.split174.us ], [ %.sroa.044.1177, %bb.j ]
  %i.bn = phi <2 x float> [ %i.cf, %bb.m ], [ %i.ai, %.split174.us ], [ %i.ai, %bb.j ] ; 2 uses
  %exitcond214.not = icmp eq i64 %.sroa.0.0176, %7
  br i1 %exitcond214.not, label %.loopexit, label %.split166

bb.l:                                             ; preds = %bb.j
  %i.bo = fmul <2 x float> %i.ad, %i.ed
  %i.bp = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bq = insertelement <2 x float> %i.bp, float %.sroa.031.0.lcssa, i64 0
  %i.br = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x float> %i.bq, %i.bs
  %i.bu = fsub <2 x float> %i.bo, %i.bt
  %i.bv = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fdiv <2 x float> %i.bu, %i.bw           ; 2 uses
  %i.by = extractelement <2 x float> %i.bx, i64 1
  %i.bz = fcmp ogt float %i.by, 0.000000e+00
  %i.ca = extractelement <2 x float> %i.ed, i64 0
  %i.cb = fdiv float %i.ca, %i.ax
  %i.cc = insertelement <2 x i1> poison, i1 %i.bz, i64 0
  %i.cd = shufflevector <2 x i1> %i.cc, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ce = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cb, i64 0
  %i.cf = select <2 x i1> %i.cd, <2 x float> %i.ce, <2 x float> %i.bx ; 5 uses
  br i1 %.not98, label %.split169.us.preheader, label %.split169.preheader

.split169.preheader:                              ; preds = %bb.l
  %i.cg = extractelement <2 x float> %i.cf, i64 0
  %i.ch = extractelement <2 x float> %i.cf, i64 1
  br label %.split169

.split169.us.preheader:                           ; preds = %bb.l
  br i1 %.not228, label %.split171.us, label %.split169.us.preheader267

.split169.us.preheader267:                        ; preds = %.split169.us.preheader
  %i.ci = extractelement <2 x float> %i.cf, i64 0
  %i.cj = extractelement <2 x float> %i.cf, i64 1
  br label %.split169.us

.split169.us:                                     ; preds = %.split169.us.preheader267, %.split169.us
  %.sroa.090.0168.us = phi i64 [ %i.ck, %.split169.us ], [ 0, %.split169.us.preheader267 ] ; 3 uses
  %.sroa.077.0167.us = phi float [ %i.cx, %.split169.us ], [ 0.000000e+00, %.split169.us.preheader267 ]
  %i.ck = add nuw nsw i64 %.sroa.090.0168.us, 1   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.090.0168.us
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !4
  %i.cn = uitofp i8 %i.cm to float
  %i.co = fmul float %i.ci, %i.cn
  %i.cp = fadd float %i.cj, %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.090.0168.us
  %i.cr = load float, ptr %i.cq, align 4, !noundef !4 ; 3 uses
  %i.cs = fsub float %i.cp, %i.cr                 ; 3 uses
  %i.ct = call float @llvm.fabs.f32(float %i.cs)
  %i.cu = fmul float %i.cs, %i.cs
  %.sroa.082.0.us = select i1 %8, float %i.ct, float %i.cu
  %i.cv = fmul float %i.cr, %i.cr
  %i.cw = fmul float %.sroa.082.0.us, %i.cv
  %i.cx = fadd float %.sroa.077.0167.us, %i.cw    ; 2 uses
  %exitcond213.not = icmp eq i64 %i.ck, %2
  br i1 %exitcond213.not, label %.split174.us, label %.split169.us

.split174.us:                                     ; preds = %bb.o, %.split169.us
  %.us-phi175 = phi float [ %i.cx, %.split169.us ], [ %i.dn, %bb.o ] ; 2 uses
  %i.cy = fcmp olt float %.us-phi175, %.sroa.044.1177
  br i1 %i.cy, label %bb.m, label %bb.k

.split169:                                        ; preds = %.split169.preheader, %bb.o
  %.sroa.090.0168 = phi i64 [ %i.cz, %bb.o ], [ 0, %.split169.preheader ] ; 6 uses
  %.sroa.077.0167 = phi float [ %i.dn, %bb.o ], [ 0.000000e+00, %.split169.preheader ]
  %i.cz = add nuw nsw i64 %.sroa.090.0168, 1      ; 2 uses
  %exitcond210.not.a = icmp eq i64 %.sroa.090.0168, 32
  br i1 %exitcond210.not.a, label %.split171.us, label %bb.n

bb.m:                                             ; preds = %.split174.us
  call void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull %i.e, i64 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42)
  br label %bb.k

.split171.us:                                     ; preds = %.split169.us.preheader, %.split169
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 32, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #32
  unreachable

bb.n:                                             ; preds = %.split169
  %exitcond211.not.a = icmp eq i64 %.sroa.090.0168, %4
  br i1 %exitcond211.not.a, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.090.0168
  %i.db = load i8, ptr %i.da, align 1, !noundef !4
  %i.dc = uitofp i8 %i.db to float
  %i.dd = fmul float %i.cg, %i.dc
  %i.de = fadd float %i.ch, %i.dd
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.090.0168
  %i.dg = load float, ptr %i.df, align 4, !noundef !4
  %i.dh = fsub float %i.de, %i.dg                 ; 3 uses
  %i.di = call float @llvm.fabs.f32(float %i.dh)
  %i.dj = fmul float %i.dh, %i.dh
  %.sroa.082.0 = select i1 %8, float %i.di, float %i.dj
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.090.0168
  %i.dl = load float, ptr %i.dk, align 4, !noundef !4
  %i.dm = fmul float %.sroa.082.0, %i.dl
  %i.dn = fadd float %.sroa.077.0167, %i.dm       ; 2 uses
  %exitcond212.not = icmp eq i64 %i.cz, %2
  br i1 %exitcond212.not, label %.split174.us, label %.split169

bb.p:                                             ; preds = %bb.n
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %4, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #32
  unreachable

bb.q:                                             ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit107
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.088.0165
  store i8 %i.bm, ptr %i.do, align 1
  br i1 %.not98, label %bb.t, label %bb.s

bb.r:                                             ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit107
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 32, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #32
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.dp = icmp ult i64 %.sroa.088.0165, %4
  br i1 %i.dp, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.dq = fmul float %i.bf, %i.bf
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.088.0165
  %i.ds = load float, ptr %i.dr, align 4, !noundef !4
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.088.0165, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #32
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.u
  %.sroa.069.0 = phi float [ %i.ds, %bb.u ], [ %i.dq, %bb.t ] ; 2 uses
  %i.dt = uitofp i8 %i.bm to float
  %i.du = insertelement <2 x float> poison, float %.sroa.069.0, i64 0
  %i.dv = insertelement <2 x float> %i.du, float %i.dt, i64 1 ; 2 uses
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dx = fmul <2 x float> %i.dv, %i.dw           ; 2 uses
  %i.dy = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %.sroa.069.0, i64 1
  %i.ea = fmul <2 x float> %i.dx, %i.dz
  %i.eb = extractelement <2 x float> %i.dx, i64 0
  %i.ec = fadd float %.sroa.054.0164, %i.eb       ; 4 uses
  %i.ed = fadd <2 x float> %i.bc, %i.ea           ; 5 uses
  %exitcond209.not = icmp eq i64 %i.bd, %2
  br i1 %exitcond209.not, label %bb.j, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit107

bb.x:                                             ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit
  %i.ee = fsub float %i.ag, %spec.store.select
  %i.ef = fmul float %i.y, %i.ee
  %i.eg = tail call float @llvm.round.f32(float %i.ef)
  %i.eh = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.eg) ; 2 uses
  %i.ei = icmp slt i32 %i.eh, 0
  %..i = tail call i32 @llvm.smin.i32(i32 %i.eh, i32 %0)
  %i.ej = trunc i32 %..i to i8
  %i.ek = select i1 %i.ei, i8 0, i8 %i.ej         ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.086.0160
  store i8 %i.ek, ptr %i.el, align 1
  %i.em = uitofp i8 %i.ek to float
  %i.en = fmul float %i.z, %i.em
  %i.eo = fadd float %spec.store.select, %i.en
  %i.ep = fsub float %i.eo, %i.ag                 ; 3 uses
  %i.eq = tail call float @llvm.fabs.f32(float %i.ep)
  %i.er = fmul float %i.ep, %i.ep
  %.sroa.048.0 = select i1 %8, float %i.eq, float %i.er
  br i1 %.not98, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 32, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #32
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.es = icmp ult i64 %.sroa.086.0160, %4
  br i1 %i.es, label %bb.ac, label %bb.ad

bb.aa:                                            ; preds = %bb.x
  %i.et = fmul float %i.ag, %i.ag
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %.sroa.049.0 = phi float [ %i.ex, %bb.ac ], [ %i.et, %bb.aa ]
  %i.eu = fmul float %.sroa.048.0, %.sroa.049.0
  %i.ev = fadd float %.sroa.044.0161, %i.eu       ; 2 uses
  %exitcond207.not = icmp eq i64 %i.ae, %2
  br i1 %exitcond207.not, label %bb.h, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit

bb.ac:                                            ; preds = %bb.z
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.086.0160
  %i.ex = load float, ptr %i.ew, align 4, !noundef !4
  br label %bb.ab

bb.ad:                                            ; preds = %bb.z
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.086.0160, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #32
  unreachable

bb.ae:                                            ; preds = %.lr.ph.split
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.084.0149
  %i.ez = load float, ptr %i.ey, align 4, !noundef !4 ; 5 uses
  %i.fa = fcmp ogt float %i.ez, %.sroa.023.0152
  %.sroa.023.1 = select i1 %i.fa, float %i.ez, float %.sroa.023.0152 ; 2 uses
  %i.fb = fcmp olt float %i.ez, %.sroa.012.0153
  %.sroa.012.3 = select i1 %i.fb, float %i.ez, float %.sroa.012.0153 ; 2 uses
  %i.fc = add nuw nsw i64 %.sroa.084.0149, 1      ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.084.0149
  %i.fe = load float, ptr %i.fd, align 4, !noundef !4 ; 2 uses
  %i.ff = fadd float %.sroa.027.1151, %i.fe       ; 2 uses
  %i.fg = fmul float %i.ez, %i.fe
  %i.fh = fadd float %.sroa.031.0150, %i.fg       ; 2 uses
  %exitcond202.not = icmp eq i64 %i.fc, %2
  br i1 %exitcond202.not, label %._crit_edge, label %.lr.ph.split

bb.af:                                            ; preds = %.lr.ph.split
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %4, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #32
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %0) unnamed_addr #9 {
bb.a:
  %i.a = bitcast i16 %0 to half
  %.sroa.02.0.vec.extract = fpext half %i.a to float
  ret float %.sroa.02.0.vec.extract
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef i16 @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %0) unnamed_addr #9 {
bb.a:
  %.sroa.0.12.vec.insert = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %0, i64 0
  %i.a = tail call <8 x i16> @llvm.x86.vcvtps2ph.128(<4 x float> %.sroa.0.12.vec.insert, i32 0)
  %.sroa.02.0.vec.extract = extractelement <8 x i16> %i.a, i64 0
  ret i16 %.sroa.02.0.vec.extract
end_hunk_1
