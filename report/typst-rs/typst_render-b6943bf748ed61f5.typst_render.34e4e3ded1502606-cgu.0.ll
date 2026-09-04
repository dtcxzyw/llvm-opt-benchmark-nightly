Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_render-b6943bf748ed61f5.typst_render.34e4e3ded1502606-cgu.0?download=true
inline.NumInlined: 1272
inline.NumDeleted: 654
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCs4xylOWI7Ys4_12typst_render12render_frame:bb.a
  br label %bb.au

bb.au:                                            ; preds = %bb.an, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs4xylOWI7Ys4_12typst_render.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !622
  br label %bb.aw

bb.av:                                            ; preds = %bb.ar
  %i.kk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !621, !inline_history !549
  unreachable

bb.aw:                                            ; preds = %bb.au, %bb.ao
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26, i64 16
  %i.km = load double, ptr %i.kl, align 8, !noalias !621, !noundef !5
  %i.kn = load double, ptr %i.hy, align 16, !alias.scope !619, !noalias !620, !noundef !5 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26, i64 32
  %i.kp = load double, ptr %i.ko, align 8, !noalias !621, !noundef !5
  %i.kq = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.kr = insertelement <2 x double> %i.kq, double %i.km, i64 1
  %i.ks = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.kt = shufflevector <2 x double> %i.ks, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ku = fmul <2 x double> %i.kr, %i.kt          ; 2 uses
  %i.kv = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ku)
  %i.kw = fcmp one <2 x double> %i.kv, splat (double +inf)
  %i.kx = select <2 x i1> %i.kw, <2 x double> %i.ku, <2 x double> zeroinitializer
  %i.ky = fadd <2 x double> %i.ib, %i.kx          ; 2 uses
  %i.kz = fcmp ord <2 x double> %i.ky, zeroinitializer
  %i.la = select <2 x i1> %i.kz, <2 x double> %i.ky, <2 x double> zeroinitializer
  %i.lb = icmp eq ptr %i.ic, %i.hw
  br i1 %i.lb, label %_RNvNtCs4xylOWI7Ys4_12typst_render4text11render_text.exit, label %bb.am

_RNvNtCs4xylOWI7Ys4_12typst_render4text11render_text.exit: ; preds = %bb.aw, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.az

bb.ax:                                            ; preds = %bb.b
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.ld = load <2 x double>, ptr %.sroa.0.027, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.am, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !645)
  call void @llvm.experimental.noalias.scope.decl(metadata !646)
  %i.le = fdiv <2 x double> %i.ld, splat (double 1.270000e+02)
  %i.lf = fptrunc <2 x double> %i.le to <2 x float> ; 2 uses
  %i.lg = extractelement <2 x float> %i.lf, i64 0
  %i.lh = extractelement <2 x float> %i.lf, i64 1
  call void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform13pre_translate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.bi, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.bh, float noundef %i.lg, float noundef %i.lh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.ep, i64 24, i1 false)
  %i.li = load ptr, ptr %i.bk, align 16, !alias.scope !646, !noalias !645, !align !16, !noundef !5
  store ptr %i.li, ptr %i.bl, align 16, !alias.scope !645, !noalias !646
  %i.lj = load float, ptr %i.bm, align 8, !alias.scope !646, !noalias !645, !noundef !5
  store float %i.lj, ptr %i.bn, align 8, !alias.scope !645, !noalias !646
  %i.lk = load <2 x double>, ptr %i.am, align 16, !alias.scope !646, !noalias !645
  store <2 x double> %i.lk, ptr %i.aq, align 16, !alias.scope !645, !noalias !646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call fastcc void @_RNvNtCs4xylOWI7Ys4_12typst_render5shape12render_shape(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.lc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.az

bb.ay:                                            ; preds = %bb.b
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.lm = load <2 x double>, ptr %.sroa.0.027, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.al, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %i.ln = fdiv <2 x double> %i.lm, splat (double 1.270000e+02)
  %i.lo = fptrunc <2 x double> %i.ln to <2 x float> ; 2 uses
  %i.lp = extractelement <2 x float> %i.lo, i64 0
  %i.lq = extractelement <2 x float> %i.lo, i64 1
  call void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform13pre_translate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.ba, float noundef %i.lp, float noundef %i.lq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.eo, i64 24, i1 false)
  %i.lr = load ptr, ptr %i.bd, align 16, !alias.scope !648, !noalias !647, !align !16, !noundef !5
  store ptr %i.lr, ptr %i.be, align 16, !alias.scope !647, !noalias !648
  %i.ls = load float, ptr %i.bf, align 8, !alias.scope !648, !noalias !647, !noundef !5
  store float %i.ls, ptr %i.bg, align 8, !alias.scope !647, !noalias !648
  %i.lt = load <2 x double>, ptr %i.al, align 16, !alias.scope !648, !noalias !647
  store <2 x double> %i.lt, ptr %i.ap, align 16, !alias.scope !647, !noalias !648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 24
  %i.lv = load double, ptr %i.lu, align 8, !noundef !5
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 32
  %i.lx = load double, ptr %i.lw, align 16, !noundef !5
  %.val = load ptr, ptr %i.ll, align 8
  call fastcc void @_RNvNtCs4xylOWI7Ys4_12typst_render5image12render_image(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %i.ap, ptr %.val, double noundef %i.lv, double noundef %i.lx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %_RNvNtCs4xylOWI7Ys4_12typst_render4text11render_text.exit, %_RNvCs4xylOWI7Ys4_12typst_render12render_group.exit, %bb.b, %bb.b
  %i.ly = icmp eq ptr %i.ev, %i.ay
  br i1 %i.ly, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCs4xylOWI7Ys4_12typst_render13render_merged(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(144) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2, double noundef %3, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 16               ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [20 x i8], align 4                ; 4 uses
  %i.i = alloca [16 x i8], align 16               ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !715
  %i.r = shl nuw nsw i64 %i.q, 5                  ; 2 uses
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE7reserveCs4xylOWI7Ys4_12typst_render.exit.i.i.thread.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE7reserveCs4xylOWI7Ys4_12typst_render.exit.i.i.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.c, align 8, !noalias !715
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8, !noalias !715
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.loopexit57

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !716
  %i.v = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.r, i64 noundef range(i64 1, 9) 8) #26, !noalias !716 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.b, label %.preheader.i.i.preheader.i

bb.b:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.r) #29
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

.preheader.i.i.preheader.i:                       ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %i.q, ptr %i.c, align 8, !noalias !715
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.v, ptr %i.x, align 8, !noalias !715
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c, %.preheader.i.i.preheader.i
  %.val10.i.i.i.i.i.i = phi i64 [ %i.ab, %bb.c ], [ 0, %.preheader.i.i.preheader.i ] ; 4 uses
  %i.z = getelementptr inbounds nuw [176 x i8], ptr %i.o, i64 %.val10.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !719
  invoke void @_RNvCs4xylOWI7Ys4_12typst_render6render(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
          to label %bb.c unwind label %.body.i, !noalias !720

bb.c:                                             ; preds = %.preheader.i.i.i
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.val10.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !721
  %i.ab = add nuw i64 %.val10.i.i.i.i.i.i, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !719
  %i.ac = icmp eq i64 %i.ab, %i.q
  br i1 %i.ac, label %.loopexit57, label %.preheader.i.i.i

.body.i:                                          ; preds = %.preheader.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i.i, ptr %i.y, align 8, !alias.scope !722, !noalias !723
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #28, !noalias !715
  br label %.body

.body:                                            ; preds = %bb.al, %bb.d, %.body.i, %bb.h
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn43, %bb.al ], [ %.pn.pn, %bb.h ], [ %i.ag, %bb.d ], [ %i.ad, %.body.i ]
  %.sroa.09.0 = phi i1 [ %.sroa.09.144, %bb.al ], [ %.not11, %bb.h ], [ true, %bb.d ], [ true, %.body.i ]
  %i.ae = load i32, ptr %4, align 8, !range !724, !noundef !5 ; 2 uses
  %i.af = icmp ne i32 %i.ae, 2
  %or.cond = and i1 %.sroa.09.0, %i.af
  br i1 %or.cond, label %bb.am, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit33

bb.d:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit57:                                      ; preds = %bb.c, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE7reserveCs4xylOWI7Ys4_12typst_render.exit.i.i.thread.i
  %i.ah = phi ptr [ %i.u, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE7reserveCs4xylOWI7Ys4_12typst_render.exit.i.i.thread.i ], [ %i.y, %bb.c ]
  store i64 %i.q, ptr %i.ah, align 8, !alias.scope !722, !noalias !723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !715
  %i.ai = load double, ptr %2, align 8, !noundef !5
  %i.aj = fptrunc double %i.ai to float
  %i.ak = fdiv double %3, 1.270000e+02
  %i.al = fptrunc double %i.ak to float
  %i.am = fmul float %i.al, %i.aj
  %i.an = tail call float @llvm.round.f32(float %i.am)
  %i.ao = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.an) ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5 ; 21 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noundef !5 ; 9 uses
  %.idx = shl nuw nsw i64 %i.as, 5                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx ; 4 uses
  %i.au = icmp eq i64 %i.as, 0                    ; 2 uses
  br i1 %i.au, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1D_8adapters3map8map_foldRBQ_mmNCNvCs4xylOWI7Ys4_12typst_render13render_mergeds_0NCINvXsy_NtB1B_5accummNtB3U_3Sum3sumINtB2n_3MapBF_B2X_EE0E0EB31_.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit57
  %i.av = getelementptr i8, ptr %i.aq, i64 24
  %.val.i.i = load i32, ptr %i.av, align 8, !range !20, !noalias !726, !noundef !5 ; 3 uses
  %i.aw = icmp eq i64 %i.as, 1
  br i1 %i.aw, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %gepdiff = add nsw i64 %.idx, -32
  %i.ax = lshr exact i64 %gepdiff, 5              ; 3 uses
  %i.ay = add nsw i64 %i.ax, -1
  %xtraiter = and i64 %i.ax, 3                    ; 3 uses
  %i.az = icmp ult i64 %i.ay, 3
  br i1 %i.az, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.f
  %unroll_iter = and i64 %i.ax, 576460752303423484
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.new ], [ %i.bi, %bb.g ] ; 5 uses
  %.sroa.02.0.i.i.i = phi i32 [ %.val.i.i, %.new ], [ %..i.i.i.i.i.i.3, %bb.g ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.g ]
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %.sroa.04.0.i.i.i
  %i.bb = getelementptr i8, ptr %i.ba, i64 56
  %.val.i.i.i = load i32, ptr %i.bb, align 8, !range !20, !noundef !5
  %..i.i.i.i.i.i = tail call noundef range(i32 1, 0) i32 @llvm.umax.i32(i32 range(i32 1, 0) %.val.i.i.i, i32 %.sroa.02.0.i.i.i)
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %.sroa.04.0.i.i.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 88
  %.val.i.i.i.1 = load i32, ptr %i.bd, align 8, !range !20, !noundef !5
  %..i.i.i.i.i.i.1 = tail call noundef range(i32 1, 0) i32 @llvm.umax.i32(i32 range(i32 1, 0) %.val.i.i.i.1, i32 %..i.i.i.i.i.i)
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %.sroa.04.0.i.i.i
  %i.bf = getelementptr i8, ptr %i.be, i64 120
  %.val.i.i.i.2 = load i32, ptr %i.bf, align 8, !range !20, !noundef !5
  %..i.i.i.i.i.i.2 = tail call noundef range(i32 1, 0) i32 @llvm.umax.i32(i32 range(i32 1, 0) %.val.i.i.i.2, i32 %..i.i.i.i.i.i.1)
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %.sroa.04.0.i.i.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 152
  %.val.i.i.i.3 = load i32, ptr %i.bh, align 8, !range !20, !noundef !5
  %..i.i.i.i.i.i.3 = tail call noundef range(i32 1, 0) i32 @llvm.umax.i32(i32 range(i32 1, 0) %.val.i.i.i.3, i32 %..i.i.i.i.i.i.2) ; 3 uses
  %i.bi = add nuw i64 %.sroa.04.0.i.i.i, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.g

bb.h:                                             ; preds = %bb.ab, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit
  br i1 %.sroa.08.1, label %bb.al, label %.body

.thread:                                          ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1D_8adapters3map8map_foldRBQ_mmNCNvCs4xylOWI7Ys4_12typst_render13render_mergeds_0NCINvXsy_NtB1B_5accummNtB3U_3Sum3sumINtB2n_3MapBF_B2X_EE0E0EB31_.exit, %bb.l
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %bb.f
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %i.bi, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.epil.init = phi i32 [ %.val.i.i, %bb.f ], [ %..i.i.i.i.i.i.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod111 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod111)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.04.0.i.i.i.epil = phi i64 [ %.sroa.04.0.i.i.i.epil.init, %.epil.preheader ], [ %i.bm, %bb.i ] ; 2 uses
  %.sroa.02.0.i.i.i.epil = phi i32 [ %.sroa.02.0.i.i.i.epil.init, %.epil.preheader ], [ %..i.i.i.i.i.i.epil, %bb.i ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %.sroa.04.0.i.i.i.epil
  %i.bl = getelementptr i8, ptr %i.bk, i64 56
  %.val.i.i.i.epil = load i32, ptr %i.bl, align 8, !range !20, !noundef !5
  %..i.i.i.i.i.i.epil = tail call noundef range(i32 1, 0) i32 @llvm.umax.i32(i32 range(i32 1, 0) %.val.i.i.i.epil, i32 %.sroa.02.0.i.i.i.epil) ; 2 uses
  %i.bm = add nuw i64 %.sroa.04.0.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.i, !llvm.loop !677

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.i, %bb.e
  %.sroa.3.0.i.ph = phi i32 [ %.val.i.i, %bb.e ], [ %..i.i.i.i.i.i.3, %.loopexit.loopexit.unr-lcssa ], [ %..i.i.i.i.i.i.epil, %bb.i ]
  %min.iters.check = icmp ult i64 %i.as, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.loopexit
  %i.bn = and i64 %i.as, 7                        ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  %i.bp = select i1 %i.bo, i64 8, i64 %i.bn
  %n.vec = sub i64 %i.as, %i.bp                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cw, %vector.body ]
  %vec.phi98 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cx, %vector.body ]
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %index
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %index
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %index
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %index
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %index
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %index
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %index
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %index
  %i.by = getelementptr i8, ptr %i.bq, i64 28
  %i.bz = getelementptr i8, ptr %i.br, i64 60
  %i.ca = getelementptr i8, ptr %i.bs, i64 92
  %i.cb = getelementptr i8, ptr %i.bt, i64 124
  %i.cc = getelementptr i8, ptr %i.bu, i64 156
  %i.cd = getelementptr i8, ptr %i.bv, i64 188
  %i.ce = getelementptr i8, ptr %i.bw, i64 220
  %i.cf = getelementptr i8, ptr %i.bx, i64 252
  %i.cg = load i32, ptr %i.by, align 4, !range !20, !noundef !5
  %i.ch = load i32, ptr %i.bz, align 4, !range !20, !noundef !5
  %i.ci = load i32, ptr %i.ca, align 4, !range !20, !noundef !5
  %i.cj = load i32, ptr %i.cb, align 4, !range !20, !noundef !5
  %i.ck = insertelement <4 x i32> poison, i32 %i.cg, i64 0
  %i.cl = insertelement <4 x i32> %i.ck, i32 %i.ch, i64 1
  %i.cm = insertelement <4 x i32> %i.cl, i32 %i.ci, i64 2
  %i.cn = insertelement <4 x i32> %i.cm, i32 %i.cj, i64 3
  %i.co = load i32, ptr %i.cc, align 4, !range !20, !noundef !5
  %i.cp = load i32, ptr %i.cd, align 4, !range !20, !noundef !5
  %i.cq = load i32, ptr %i.ce, align 4, !range !20, !noundef !5
  %i.cr = load i32, ptr %i.cf, align 4, !range !20, !noundef !5
  %i.cs = insertelement <4 x i32> poison, i32 %i.co, i64 0
  %i.ct = insertelement <4 x i32> %i.cs, i32 %i.cp, i64 1
  %i.cu = insertelement <4 x i32> %i.ct, i32 %i.cq, i64 2
  %i.cv = insertelement <4 x i32> %i.cu, i32 %i.cr, i64 3
  %i.cw = add <4 x i32> %i.cn, %vec.phi           ; 2 uses
  %i.cx = add <4 x i32> %i.cv, %vec.phi98         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !678

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cx, %i.cw
  %i.cz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.loopexit, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %.loopexit ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i32 [ 0, %.loopexit ], [ %i.cz, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.dd, %scalar.ph ], [ %.sroa.04.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i = phi i32 [ %i.dc, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ]
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %.sroa.04.0.i
  %i.db = getelementptr i8, ptr %i.da, i64 28
  %.val.i22 = load i32, ptr %i.db, align 4, !range !20, !noundef !5
  %i.dc = add i32 %.val.i22, %.sroa.02.0.i        ; 2 uses
  %i.dd = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.de = icmp eq i64 %i.dd, %i.as
  br i1 %i.de, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1D_8adapters3map8map_foldRBQ_mmNCNvCs4xylOWI7Ys4_12typst_render13render_mergeds_0NCINvXsy_NtB1B_5accummNtB3U_3Sum3sumINtB2n_3MapBF_B2X_EE0E0EB31_.exit, label %scalar.ph, !llvm.loop !679

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1D_8adapters3map8map_foldRBQ_mmNCNvCs4xylOWI7Ys4_12typst_render13render_mergeds_0NCINvXsy_NtB1B_5accummNtB3U_3Sum3sumINtB2n_3MapBF_B2X_EE0E0EB31_.exit: ; preds = %scalar.ph, %.loopexit57
  %.sroa.0.050 = phi i32 [ 0, %.loopexit57 ], [ %.sroa.3.0.i.ph, %scalar.ph ]
  %.sroa.0.0.i23 = phi i32 [ 0, %.loopexit57 ], [ %i.dc, %scalar.ph ]
  %i.df = icmp ult i64 %i.as, 288230376151711744
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = tail call i64 @llvm.usub.sat.i64(i64 %i.as, i64 1)
  %i.dh = trunc i64 %i.dg to i32
  %i.di = mul i32 %i.ao, %i.dh
  %i.dj = add i32 %.sroa.0.0.i23, %i.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMNtCsfVrisfeHJNS_9tiny_skia6pixmapNtB2_6Pixmap3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, i32 noundef %.sroa.0.050, i32 noundef %i.dj)
          to label %bb.j unwind label %.thread

bb.j:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1D_8adapters3map8map_foldRBQ_mmNCNvCs4xylOWI7Ys4_12typst_render13render_mergeds_0NCINvXsy_NtB1B_5accummNtB3U_3Sum3sumINtB2n_3MapBF_B2X_EE0E0EB31_.exit
  %i.dk = load i64, ptr %i.k, align 8, !range !7, !noundef !5
  %.not = icmp eq i64 %i.dk, -1
  br i1 %.not, label %bb.l, label %bb.k, !prof !17

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.dl = load i32, ptr %4, align 8, !range !724, !noundef !5
  %.not11 = icmp eq i32 %i.dl, 2                  ; 3 uses
  br i1 %.not11, label %bb.o, label %bb.n

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #29
          to label %bb.m unwind label %.thread

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color10to_process(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.s unwind label %bb.p

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit28, %bb.k
  %i.dm = load i64, ptr %i.m, align 8, !range !8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.aq, ptr %i.g, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.aq, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.dm, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.at, ptr %.sroa.6.0..sroa_idx, align 8
  br i1 %i.au, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.lr.ph: ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit

bb.p:                                             ; preds = %bb.w, %bb.s, %bb.x, %bb.n
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !730)
  %i.ds = load i32, ptr %i.j, align 8, !range !15, !alias.scope !730, !noundef !5
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.du = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !734, !nonnull !5, !noundef !5
  %i.dw = atomicrmw sub ptr %i.dv, i64 1 release, align 8, !noalias !734
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.du) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit unwind label %bb.ad

bb.s:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !735)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !736
  invoke void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor6to_rgb(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.h)
          to label %.noexc25 unwind label %bb.p

.noexc25:                                         ; preds = %bb.s
  %i.dy = load <4 x float>, ptr %i.a, align 16, !noalias !736 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !736
  %i.dz = extractelement <4 x float> %i.dy, i64 0 ; 2 uses
  %or.cond.i.i = call i1 @llvm.is.fpclass.f32(float %i.dz, /* (zero psub pnorm) */ i32 480)
  %i.ea = fcmp ole float %i.dz, 1.000000e+00
  %or.cond1.i.i = and i1 %or.cond.i.i, %i.ea
  br i1 %or.cond1.i.i, label %bb.t, label %bb.w

bb.t:                                             ; preds = %.noexc25
  %i.eb = extractelement <4 x float> %i.dy, i64 1 ; 2 uses
  %or.cond2.i.i = call i1 @llvm.is.fpclass.f32(float %i.eb, /* (zero psub pnorm) */ i32 480)
  %i.ec = fcmp ole float %i.eb, 1.000000e+00
  %or.cond3.i.i = and i1 %or.cond2.i.i, %i.ec
  br i1 %or.cond3.i.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ed = extractelement <4 x float> %i.dy, i64 2 ; 2 uses
  %or.cond4.i.i = call i1 @llvm.is.fpclass.f32(float %i.ed, /* (zero psub pnorm) */ i32 480)
  %i.ee = fcmp ole float %i.ed, 1.000000e+00
  %or.cond5.i.i = and i1 %or.cond4.i.i, %i.ee
  br i1 %or.cond5.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ef = extractelement <4 x float> %i.dy, i64 3 ; 2 uses
  %or.cond6.i.i = call i1 @llvm.is.fpclass.f32(float %i.ef, /* (zero psub pnorm) */ i32 480)
  %i.eg = fcmp ole float %i.ef, 1.000000e+00
  %or.cond7.i.i = and i1 %or.cond6.i.i, %i.eg
  br i1 %or.cond7.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %.noexc25
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #31
          to label %.noexc26 unwind label %bb.p

.noexc26:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  store <4 x float> %i.dy, ptr %i.i, align 16, !alias.scope !735, !noalias !737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvMNtCsfVrisfeHJNS_9tiny_skia6pixmapNtB2_6Pixmap4fill(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.i)
          to label %bb.y unwind label %bb.p

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %i.eh = load i32, ptr %i.j, align 8, !range !15, !alias.scope !738, !noundef !5
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit28, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  call void @llvm.experimental.noalias.scope.decl(metadata !740)
  call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %i.ek = load ptr, ptr %i.ej, align 8, !alias.scope !742, !nonnull !5, !noundef !5
  %i.el = atomicrmw sub ptr %i.ek, i64 1 release, align 8, !noalias !742
  %i.em = icmp eq i64 %i.el, 1
  br i1 %i.em, label %bb.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit28

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ej) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit28 unwind label %bb.ac

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit30, %bb.q, %bb.p, %bb.r, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %i.ff, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit30 ], [ %i.ep, %bb.ac ], [ %i.dr, %bb.r ], [ %i.dr, %bb.p ], [ %i.dr, %bb.q ] ; 2 uses
  %.sroa.08.1 = phi i1 [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit30 ], [ true, %bb.ac ], [ true, %bb.r ], [ true, %bb.p ], [ true, %bb.q ]
  %.val20 = load i64, ptr %i.l, align 8           ; 2 uses
  %i.en = icmp eq i64 %.val20, 0
  br i1 %i.en, label %bb.h, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val21 = load ptr, ptr %i.eo, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef %.val20, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %bb.h

bb.ac:                                            ; preds = %bb.aa
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit28: ; preds = %bb.z, %bb.y, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.o

bb.ad:                                            ; preds = %bb.ao, %bb.r
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit30: ; preds = %bb.ai, %bb.ah
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit31
  %.sroa.04.060 = phi i32 [ 0, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.lr.ph ], [ %i.fj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit31 ] ; 2 uses
  %i.er = phi ptr [ %i.aq, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.lr.ph ], [ %i.es, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit31 ] ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32 ; 4 uses
  %.sroa.034.0.copyload35 = load i64, ptr %i.er, align 8, !noalias !743 ; 5 uses
  %.sroa.7.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.sroa.7.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx36, align 8, !noalias !743 ; 4 uses
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx36.sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 28
  %.sroa.7.sroa.7.0.copyload = load i32, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx36.sroa_idx, align 4, !noalias !743 ; 2 uses
  %.not12 = icmp eq i64 %.sroa.034.0.copyload35, -1
  br i1 %.not12, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx36.sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %.sroa.7.sroa.6.0.copyload = load i32, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx36.sroa_idx, align 8, !noalias !743
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx36.sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %.sroa.7.sroa.5.0.copyload = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx36.sroa_idx, align 8, !noalias !743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload) ]
  store ptr %.sroa.7.sroa.0.0.copyload, ptr %i.f, align 8
  store i64 %.sroa.7.sroa.5.0.copyload, ptr %i.dn, align 8
  store i32 %.sroa.7.sroa.6.0.copyload, ptr %i.do, align 8
  store i32 %.sroa.7.sroa.7.0.copyload, ptr %i.dp, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 13950255104, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.d, align 16
  store <2 x float> zeroinitializer, ptr %i.dq, align 16
  invoke void @_RNvMs0_NtCsfVrisfeHJNS_9tiny_skia7painterNtNtB7_6pixmap6Pixmap11draw_pixmap(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 0, i32 noundef %.sroa.04.060, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null)
          to label %bb.aj unwind label %bb.ah

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.thread: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit, %bb.o
  %5 = phi ptr [ %i.aq, %bb.o ], [ %i.es, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit ] ; 3 uses
  %i.et = ptrtoint ptr %i.at to i64
  %i.eu = ptrtoint ptr %5 to i64
  %i.ev = sub nuw i64 %i.et, %i.eu
  %i.ew = lshr exact i64 %i.ev, 5
  call void @llvm.experimental.noalias.scope.decl(metadata !744)
  %i.ex = icmp eq ptr %i.at, %5
  br i1 %i.ex, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.ez, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i.i ], [ 0, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.thread ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.ez = add nuw nsw i64 %.sroa.0.011.i.i.i, 1   ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.ey, align 8, !alias.scope !744, !noalias !745 ; 2 uses
  %i.fa = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.fa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i
  %i.fb = getelementptr i8, ptr %i.ey, i64 8
  %.val9.i.i.i = load ptr, ptr %i.fb, align 8, !alias.scope !744, !noalias !745, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !746
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i.i: ; preds = %bb.af, %.lr.ph.i.i.i
  %i.fc = icmp eq i64 %i.ez, %i.ew
  br i1 %i.fc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit31, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit.thread
  %i.fd = icmp eq i64 %i.dm, 0
  br i1 %i.fd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i
  %i.fe = shl nuw i64 %i.dm, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !745
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.ag, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.ah:                                            ; preds = %bb.ae
  %i.ff = landingpad { ptr, i32 }
          cleanup
  store ptr %i.es, ptr %.sroa.47.0..sroa_idx, align 8
  %i.fg = icmp eq i64 %.sroa.034.0.copyload35, 0
  br i1 %i.fg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit30, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload, i64 noundef %.sroa.034.0.copyload35, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit30

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fh = icmp eq i64 %.sroa.034.0.copyload35, 0
  br i1 %i.fh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit31, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload, i64 noundef %.sroa.034.0.copyload35, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit31

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit31: ; preds = %bb.ak, %bb.aj
  %i.fi = add i32 %.sroa.04.060, %i.ao
  %i.fj = add i32 %i.fi, %.sroa.7.sroa.7.0.copyload
  %i.fk = icmp eq ptr %i.es, %i.at
  br i1 %i.fk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4xylOWI7Ys4_12typst_render.exit

bb.al:                                            ; preds = %.thread, %bb.h
  %.sroa.09.144 = phi i1 [ true, %.thread ], [ %.not11, %bb.h ]
  %.pn.pn.pn43 = phi { ptr, i32 } [ %i.bj, %.thread ], [ %.pn.pn, %bb.h ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #28
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit33: ; preds = %bb.an, %bb.am, %bb.ao, %.body
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.am:                                            ; preds = %.body
  call void @llvm.experimental.noalias.scope.decl(metadata !747)
  %i.fl = icmp eq i32 %i.ae, 0
  br i1 %i.fl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit33, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !748)
  call void @llvm.experimental.noalias.scope.decl(metadata !749)
  call void @llvm.experimental.noalias.scope.decl(metadata !750)
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !751, !nonnull !5, !noundef !5
  %i.fo = atomicrmw sub ptr %i.fn, i64 1 release, align 8, !noalias !751
  %i.fp = icmp eq i64 %i.fo, 1
  br i1 %i.fp, label %bb.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit33

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fm) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit33 unwind label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCs4xylOWI7Ys4_12typst_render6render(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 9 uses
  %i.c = alloca [136 x i8], align 8               ; 11 uses
  %i.d = alloca [20 x i8], align 4                ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 9 uses
  %i.k = alloca [80 x i8], align 8                ; 14 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.m = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.l, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 6, i64 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i8, ptr %i.n, align 8, !range !18, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.r = load <2 x double>, ptr %i.q, align 8     ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.s = load <2 x double>, ptr %.sroa.7.0..sroa_idx, align 8
  %i.t = fadd <2 x double> %i.r, %i.s
  %i.u = select i1 %i.p, <2 x double> %i.r, <2 x double> zeroinitializer
  %i.v = select i1 %i.p, <2 x double> %i.t, <2 x double> zeroinitializer ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load <2 x double>, ptr %i.w, align 8
  %i.y = fcmp ord <2 x double> %i.v, zeroinitializer
  %i.z = select <2 x i1> %i.y, <2 x double> %i.v, <2 x double> zeroinitializer
  %i.aa = fadd <2 x double> %i.z, %i.x            ; 2 uses
  %i.ab = fcmp ord <2 x double> %i.aa, zeroinitializer
  %i.ac = load double, ptr %2, align 8, !noundef !5
  %i.ad = fptrunc double %i.ac to float           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store float %i.ad, ptr %i.ae, align 8, !alias.scope !786
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store <2 x float> zeroinitializer, ptr %.sroa.5.0..sroa_idx, align 4, !alias.scope !786
  %.sroa.7.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  store float %i.ad, ptr %.sroa.7.0..sroa_idx38, align 4, !alias.scope !786
  %.sroa.841.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store <2 x float> zeroinitializer, ptr %.sroa.841.0..sroa_idx, align 8, !alias.scope !786
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  store float %i.ad, ptr %i.af, align 8, !alias.scope !786
  %.sroa.5.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  store <2 x float> zeroinitializer, ptr %.sroa.5.0..sroa_idx33, align 4, !alias.scope !786
  %.sroa.7.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  store float %i.ad, ptr %.sroa.7.0..sroa_idx39, align 4, !alias.scope !786
  %.sroa.841.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.841.0..sroa_idx42, i8 0, i64 16, i1 false)
  store float %i.ad, ptr %i.ag, align 8, !alias.scope !787, !noalias !785
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ai = select <2 x i1> %i.ab, <2 x double> %i.aa, <2 x double> zeroinitializer ; 3 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0 ; 3 uses
  store double %i.aj, ptr %i.k, align 8, !alias.scope !787, !noalias !785
  %i.ak = extractelement <2 x double> %i.ai, i64 1 ; 3 uses
  store double %i.ak, ptr %i.ah, align 8, !alias.scope !787, !noalias !785
  %i.al = fdiv <2 x double> %i.ai, splat (double 1.270000e+02)
  %i.am = fptrunc <2 x double> %i.al to <2 x float>
  %i.an = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %i.ao, %i.am
  %i.aq = tail call <2 x float> @llvm.round.v2f32(<2 x float> %i.ap)
  %i.ar = tail call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.aq, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.as = extractelement <2 x float> %i.ar, i64 1
  %i.at = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.as)
  %i.au = extractelement <2 x float> %i.ar, i64 0
  %i.av = tail call i32 @llvm.fptoui.sat.i32.f32(float %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMNtCsfVrisfeHJNS_9tiny_skia6pixmapNtB2_6Pixmap3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, i32 noundef %i.av, i32 noundef %i.at)
          to label %bb.g unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit.thread, %bb.f
  %.pn13.pn = phi { ptr, i32 } [ %i.ay, %bb.f ], [ %.pn13, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit.thread ], [ %.pn13, %bb.k ]
  %i.aw = load ptr, ptr %i.l, align 8, !alias.scope !788, !noundef !5
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs4xylOWI7Ys4_12typst_render.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs4xylOWI7Ys4_12typst_render.exit unwind label %bb.ae

bb.f:                                             ; preds = %bb.i, %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit

bb.g:                                             ; preds = %bb.d
  %i.az = load i64, ptr %i.i, align 8, !range !7, !noundef !5
  %.not10 = icmp eq i64 %i.az, -1
  br i1 %.not10, label %bb.i, label %bb.h, !prof !17

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs2_NtCs7tN9tvpkfrg_12typst_layout8documentNtB5_4Page13fill_or_white(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1)
          to label %bb.m unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #29
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.i
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit.thread: ; preds = %bb.ag, %bb.ak, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit, %bb.l
  %.pn13 = phi { ptr, i32 } [ %i.bc, %bb.l ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit ], [ %.pn, %bb.ak ], [ %i.cn, %bb.ag ] ; 2 uses
  %.val = load i64, ptr %i.j, align 8             ; 2 uses
  %i.ba = icmp eq i64 %.val, 0
end_hunk_0
