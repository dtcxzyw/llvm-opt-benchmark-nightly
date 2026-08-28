Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_render-b6943bf748ed61f5.typst_render.34e4e3ded1502606-cgu.0?download=true
inline.NumInlined: 1272
inline.NumDeleted: 654
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCs4xylOWI7Ys4_12typst_render12render_frame:bb.a
bb.u:                                             ; preds = %bb.ae, %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %.val.i8 = load i64, ptr %i.v, align 8, !alias.scope !568, !noalias !506 ; 2 uses
  %i.gx = icmp eq i64 %.val.i8, 0
  br i1 %i.gx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i10, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val1.i9 = load ptr, ptr %i.eg, align 8, !alias.scope !568, !noalias !506, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i9, i64 noundef %.val.i8, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !571
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i10

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i10: ; preds = %bb.v, %bb.u
  %.val2.i11 = load i64, ptr %i.eh, align 8, !alias.scope !568, !noalias !506 ; 2 uses
  %i.gy = icmp eq i64 %.val2.i11, 0
  br i1 %i.gy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path4path4PathECs4xylOWI7Ys4_12typst_render.exit13, label %bb.w

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i10
  %.val3.i12 = load ptr, ptr %i.ei, align 8, !alias.scope !568, !noalias !506, !nonnull !5, !noundef !5
  %i.gz = shl nuw i64 %.val2.i11, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i12, i64 noundef %i.gz, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !571
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path4path4PathECs4xylOWI7Ys4_12typst_render.exit13

bb.x:                                             ; preds = %bb.q
  %i.ha = load i64, ptr %i.r, align 8, !range !53, !noalias !498, !noundef !5
  %.not15.i = icmp eq i64 %i.ha, -1
  br i1 %.not15.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !498
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.q, align 16, !noalias !498
  store <2 x float> zeroinitializer, ptr %i.ef, align 16, !noalias !498
  invoke void @_RNvMNtCsfVrisfeHJNS_9tiny_skia4maskNtB2_4Mask9fill_path(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.v, i1 noundef zeroext false, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(24) %i.q)
          to label %bb.ae unwind label %bb.ac, !noalias !506, !inline_history !515

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !498
  call void @llvm.experimental.noalias.scope.decl(metadata !572)
  %.val.i7 = load i64, ptr %i.v, align 8, !alias.scope !572, !noalias !506 ; 2 uses
  %i.hb = icmp eq i64 %.val.i7, 0
  br i1 %i.hb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val1.i = load ptr, ptr %i.eg, align 8, !alias.scope !572, !noalias !506, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i7, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !575
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i: ; preds = %bb.aa, %bb.z
  %.val2.i = load i64, ptr %i.eh, align 8, !alias.scope !572, !noalias !506 ; 2 uses
  %i.hc = icmp eq i64 %.val2.i, 0
  br i1 %i.hc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path4path4PathECs4xylOWI7Ys4_12typst_render.exit, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i
  %.val3.i = load ptr, ptr %i.ei, align 8, !alias.scope !572, !noalias !506, !nonnull !5, !noundef !5
  %i.hd = shl nuw i64 %.val2.i, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.hd, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !575
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path4path4PathECs4xylOWI7Ys4_12typst_render.exit

bb.ac:                                            ; preds = %bb.y
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val26.i = load i64, ptr %i.s, align 8, !noalias !498 ; 2 uses
  %i.hf = icmp eq i64 %.val26.i, 0
  br i1 %i.hf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia4mask4MaskECs4xylOWI7Ys4_12typst_render.exit14, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hg = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val27.i = load ptr, ptr %i.hg, align 8, !noalias !498, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i, i64 noundef %.val26.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !506
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia4mask4MaskECs4xylOWI7Ys4_12typst_render.exit14

bb.ae:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !498
  br label %bb.u

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path4path4PathECs4xylOWI7Ys4_12typst_render.exit13: ; preds = %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !498
  br label %.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path4path4PathECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.ab, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !498
  br label %_RNvCs4xylOWI7Ys4_12typst_render12render_group.exit

.sink.split:                                      ; preds = %bb.l, %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path4path4PathECs4xylOWI7Ys4_12typst_render.exit13
  %.sroa.07.0.i.ph = phi ptr [ %i.y, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path4path4PathECs4xylOWI7Ys4_12typst_render.exit13 ], [ %i.gc, %bb.k ], [ %i.gc, %bb.l ]
  %.sroa.05.4.i.ph = phi i1 [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path4path4PathECs4xylOWI7Ys4_12typst_render.exit13 ], [ false, %bb.k ], [ false, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !498
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %bb.f
  %.sroa.07.0.i = phi ptr [ %i.gc, %bb.f ], [ %.sroa.07.0.i.ph, %.sink.split ]
  %.sroa.05.4.i = phi i1 [ false, %bb.f ], [ %.sroa.05.4.i.ph, %.sink.split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.m, ptr noundef nonnull align 16 dereferenceable(24) %i.cw, i64 24, i1 false), !noalias !498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false), !noalias !498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ej, ptr noundef nonnull align 4 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 4 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !498
  store ptr %.sroa.07.0.i, ptr %i.el, align 16, !noalias !498
  store float %i.gb, ptr %i.em, align 8, !noalias !498
  store <2 x double> %i.gd, ptr %i.p, align 16, !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke fastcc void @_RNvCs4xylOWI7Ys4_12typst_render12render_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %i.p, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(160) %i.ey)
          to label %bb.ag unwind label %bb.j, !inline_history !515

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !498
  br i1 %.sroa.05.4.i, label %bb.ah, label %_RNvCs4xylOWI7Ys4_12typst_render12render_group.exit

bb.ah:                                            ; preds = %bb.ag
  %.val24.i = load i64, ptr %i.y, align 8, !noalias !498 ; 2 uses
  %i.hh = icmp eq i64 %.val24.i, 0
  br i1 %i.hh, label %_RNvCs4xylOWI7Ys4_12typst_render12render_group.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.val25.i = load ptr, ptr %i.en, align 8, !noalias !498, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25.i, i64 noundef %.val24.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %_RNvCs4xylOWI7Ys4_12typst_render12render_group.exit

common.resume:                                    ; preds = %bb.ar, %bb.aq, %bb.j, %bb.aj, %bb.ak, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia4mask4MaskECs4xylOWI7Ys4_12typst_render.exit14
  %common.resume.op = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ak ], [ %i.js, %bb.ar ], [ %.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia4mask4MaskECs4xylOWI7Ys4_12typst_render.exit14 ], [ %lpad.thr_comm.split-lp, %bb.j ], [ %lpad.thr_comm.split-lp, %bb.aj ], [ %i.js, %bb.aq ]
  resume { ptr, i32 } %common.resume.op

bb.aj:                                            ; preds = %bb.j
  %.val22.i = load i64, ptr %i.y, align 8, !noalias !498 ; 2 uses
  %i.hi = icmp eq i64 %.val22.i, 0
  br i1 %i.hi, label %common.resume, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.val23.i = load ptr, ptr %i.en, align 8, !noalias !498, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23.i, i64 noundef %.val22.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %common.resume

_RNvCs4xylOWI7Ys4_12typst_render12render_group.exit: ; preds = %bb.ag, %bb.ah, %bb.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path4path4PathECs4xylOWI7Ys4_12typst_render.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.az

bb.al:                                            ; preds = %bb.b
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.hk = load <2 x double>, ptr %.sroa.0.036, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.an, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !576)
  call void @llvm.experimental.noalias.scope.decl(metadata !579)
  %i.hl = fdiv <2 x double> %i.hk, splat (double 1.270000e+02)
  %i.hm = fptrunc <2 x double> %i.hl to <2 x float> ; 2 uses
  %i.hn = extractelement <2 x float> %i.hm, i64 0
  %i.ho = extractelement <2 x float> %i.hm, i64 1
  call void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform13pre_translate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.bp, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.bo, float noundef %i.hn, float noundef %i.ho)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.eq, i64 24, i1 false)
  %i.hp = load ptr, ptr %i.br, align 16, !alias.scope !579, !noalias !576, !align !448, !noundef !5
  store ptr %i.hp, ptr %i.bs, align 16, !alias.scope !576, !noalias !579
  %i.hq = load float, ptr %i.bt, align 8, !alias.scope !579, !noalias !576, !noundef !5
  store float %i.hq, ptr %i.bu, align 8, !alias.scope !576, !noalias !579
  %i.hr = load <2 x double>, ptr %i.an, align 16, !alias.scope !579, !noalias !576
  store <2 x double> %i.hr, ptr %i.ar, align 16, !alias.scope !576, !noalias !579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 32
  %i.ht = load ptr, ptr %i.hs, align 16, !alias.scope !581, !noalias !584, !nonnull !5, !noundef !5 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 40
  %i.hv = load i64, ptr %i.hu, align 8, !alias.scope !581, !noalias !584, !noundef !5 ; 2 uses
  %.idx38 = mul nuw nsw i64 %i.hv, 56
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 %.idx38
  %i.hx = icmp eq i64 %i.hv, 0
  br i1 %i.hx, label %_RNvNtCs4xylOWI7Ys4_12typst_render4text11render_text.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.al
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 160 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 152 ; 3 uses
  %.pre = load double, ptr %i.hy, align 16, !alias.scope !581, !noalias !584
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph, %bb.aw
  %i.ia = phi double [ %.pre, %.lr.ph ], [ %i.kc, %bb.aw ]
  %.sroa.0.0.i35 = phi ptr [ %i.ht, %.lr.ph ], [ %i.ic, %bb.aw ] ; 6 uses
  %i.ib = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ko, %bb.aw ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i35, i64 56 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i35, i64 52 ; 2 uses
  %i.ie = load i16, ptr %i.id, align 4, !noalias !587, !noundef !5 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i35, i64 24
  %i.ig = load double, ptr %i.if, align 8, !noalias !587, !noundef !5
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i35, i64 40
  %i.ii = load double, ptr %i.ih, align 8, !noalias !587, !noundef !5
  %i.ij = insertelement <2 x double> poison, double %i.ii, i64 0
  %i.ik = insertelement <2 x double> %i.ij, double %i.ig, i64 1
  %i.il = insertelement <2 x double> poison, double %i.ia, i64 0
  %i.im = shufflevector <2 x double> %i.il, <2 x double> poison, <2 x i32> zeroinitializer
  %i.in = fmul <2 x double> %i.ik, %i.im          ; 2 uses
  %3 = fcmp ord <2 x double> %i.in, zeroinitializer
  %4 = select <2 x i1> %3, <2 x double> %i.in, <2 x double> zeroinitializer ; 2 uses
  %i.io = call <2 x double> @llvm.fabs.v2f64(<2 x double> %4)
  %5 = fcmp ueq <2 x double> %i.io, splat (double +inf)
  %i.ip = select <2 x i1> %5, <2 x double> zeroinitializer, <2 x double> %4
  %i.iq = fadd <2 x double> %i.ib, %i.ip          ; 2 uses
  %i.ir = fcmp ord <2 x double> %i.iq, zeroinitializer
  %i.is = select <2 x i1> %i.ir, <2 x double> %i.iq, <2 x double> zeroinitializer ; 3 uses
  %i.it = call noundef zeroext i1 @_RNvNtNtNtCsdaEETE4DqmE_13typst_library4text4font5color14should_outline(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hz, i16 noundef %i.ie), !noalias !587, !inline_history !588
  br i1 %i.it, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iu = load ptr, ptr %i.hz, align 8, !alias.scope !581, !noalias !584, !nonnull !5, !noundef !5
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 96
  %i.iw = load double, ptr %i.iv, align 8, !noalias !587, !noundef !5
  %i.ix = load double, ptr %i.hy, align 16, !alias.scope !581, !noalias !584, !noundef !5
  %i.iy = fdiv double %i.ix, %i.iw                ; 2 uses
  %.inv27 = fcmp ord double %i.iy, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(80) %i.ar, i64 80, i1 false), !noalias !590
  call void @llvm.experimental.noalias.scope.decl(metadata !591)
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %i.iz = extractelement <2 x double> %i.is, i64 1
  %i.ja = fdiv double %i.iz, 1.270000e+02
  %i.jb = fptrunc double %i.ja to float
  %i.jc = insertelement <2 x double> %i.is, double %i.iy, i64 1
  %i.jd = fdiv <2 x double> %i.jc, <double -1.270000e+02, double 1.270000e+02> ; 2 uses
  %i.je = extractelement <2 x double> %i.jd, i64 0
  %i.jf = fptrunc double %i.je to float
  call void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform13pre_translate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.bw, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.bv, float noundef %i.jb, float noundef %i.jf), !noalias !587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.er, i64 24, i1 false)
  %i.jg = load ptr, ptr %i.by, align 16, !alias.scope !594, !noalias !596, !align !448, !noundef !5 ; 2 uses
  store ptr %i.jg, ptr %i.bz, align 16, !alias.scope !591, !noalias !597
  %i.jh = load float, ptr %i.ca, align 8, !alias.scope !594, !noalias !596, !noundef !5 ; 2 uses
  store float %i.jh, ptr %i.cb, align 8, !alias.scope !591, !noalias !597
  %i.ji = load <2 x double>, ptr %i.b, align 16, !alias.scope !594, !noalias !596 ; 2 uses
  store <2 x double> %i.ji, ptr %i.f, align 16, !alias.scope !591, !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !589
  %i.jj = extractelement <2 x double> %i.jd, i64 1
  %i.jk = select i1 %.inv27, double %i.jj, double 0.000000e+00
  %i.jl = fptrunc double %i.jk to float           ; 2 uses
  call void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform9pre_scale(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.bw, float noundef %i.jl, float noundef %i.jl), !noalias !587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.er, i64 24, i1 false)
  store ptr %i.jg, ptr %i.ce, align 16, !alias.scope !598, !noalias !601
  store float %i.jh, ptr %i.cf, align 8, !alias.scope !598, !noalias !601
  store <2 x double> %i.ji, ptr %i.g, align 16, !alias.scope !598, !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !589
  %i.jm = load i16, ptr %i.id, align 4, !noalias !587, !noundef !5
  call void @_RNvNtNtNtCsdaEETE4DqmE_13typst_library4text4font5color11glyph_frame(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hz, i16 noundef %i.jm), !noalias !587, !inline_history !588
  %i.jn = load i64, ptr %i.e, align 8, !range !603, !noalias !589, !noundef !5
  %.not.i4 = icmp eq i64 %i.jn, -2
  br i1 %.not.i4, label %bb.au, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(80) %i.ar, i64 80, i1 false), !noalias !590
  call void @llvm.experimental.noalias.scope.decl(metadata !604)
  call void @llvm.experimental.noalias.scope.decl(metadata !607)
  %i.jo = fdiv <2 x double> %i.is, <double -1.270000e+02, double 1.270000e+02>
  %6 = fptrunc <2 x double> %i.jo to <2 x float>  ; 2 uses
  %7 = extractelement <2 x float> %6, i64 0
  %8 = extractelement <2 x float> %6, i64 1
  call void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform13pre_translate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.ci, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.ch, float noundef %8, float noundef %7), !noalias !587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.es, i64 24, i1 false)
  %i.jp = load ptr, ptr %i.ck, align 16, !alias.scope !607, !noalias !609, !align !448, !noundef !5
  store ptr %i.jp, ptr %i.cl, align 16, !alias.scope !604, !noalias !610
  %i.jq = load float, ptr %i.cm, align 8, !alias.scope !607, !noalias !609, !noundef !5
  store float %i.jq, ptr %i.cn, align 8, !alias.scope !604, !noalias !610
  %i.jr = load <2 x double>, ptr %i.a, align 16, !alias.scope !607, !noalias !609
  store <2 x double> %i.jr, ptr %i.h, align 16, !alias.scope !604, !noalias !610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !589
  call fastcc void @_RNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.hj, i16 noundef %i.ie)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !589
  br label %bb.aw

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.d, ptr noundef nonnull align 8 dereferenceable(160) %i.e, i64 160, i1 false), !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !589
  call void @_RNvXs_NtNtNtCsdaEETE4DqmE_13typst_library4text4font5colorNtNtNtBa_6layout5frame5FrameINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_10GlyphFrameE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.d), !noalias !587, !inline_history !588
  invoke fastcc void @_RNvCs4xylOWI7Ys4_12typst_render12render_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
          to label %bb.as unwind label %bb.aq, !noalias !587, !inline_history !588

bb.aq:                                            ; preds = %bb.ap
  %i.js = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  call void @llvm.experimental.noalias.scope.decl(metadata !614), !noalias !587
  call void @llvm.experimental.noalias.scope.decl(metadata !617), !noalias !587
  %i.jt = load ptr, ptr %i.cg, align 8, !alias.scope !620, !noalias !587, !nonnull !5, !noundef !5
  %i.ju = atomicrmw sub ptr %i.jt, i64 1 release, align 8, !noalias !621
  %i.jv = icmp eq i64 %i.ju, 1
  br i1 %i.jv, label %bb.ar, label %common.resume

bb.ar:                                            ; preds = %bb.aq
  fence acquire, !noalias !587
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cg) #25
          to label %common.resume unwind label %bb.av

bb.as:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  call void @llvm.experimental.noalias.scope.decl(metadata !625), !noalias !587
  call void @llvm.experimental.noalias.scope.decl(metadata !628), !noalias !587
  %i.jw = load ptr, ptr %i.cg, align 8, !alias.scope !631, !noalias !587, !nonnull !5, !noundef !5
  %i.jx = atomicrmw sub ptr %i.jw, i64 1 release, align 8, !noalias !632
  %i.jy = icmp eq i64 %i.jx, 1
  br i1 %i.jy, label %bb.at, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs4xylOWI7Ys4_12typst_render.exit

bb.at:                                            ; preds = %bb.as
  fence acquire, !noalias !587
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cg) #25, !noalias !587
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !589
  br label %bb.au

bb.au:                                            ; preds = %bb.an, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs4xylOWI7Ys4_12typst_render.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !589
  br label %bb.aw

bb.av:                                            ; preds = %bb.ar
  %i.jz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !587, !inline_history !588
  unreachable

bb.aw:                                            ; preds = %bb.au, %bb.ao
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i35, i64 16
  %i.kb = load double, ptr %i.ka, align 8, !noalias !587, !noundef !5
  %i.kc = load double, ptr %i.hy, align 16, !alias.scope !581, !noalias !584, !noundef !5 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i35, i64 32
  %i.ke = load double, ptr %i.kd, align 8, !noalias !587, !noundef !5
  %i.kf = insertelement <2 x double> poison, double %i.ke, i64 0
  %i.kg = insertelement <2 x double> %i.kf, double %i.kb, i64 1
  %i.kh = insertelement <2 x double> poison, double %i.kc, i64 0
  %i.ki = shufflevector <2 x double> %i.kh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kj = fmul <2 x double> %i.kg, %i.ki          ; 2 uses
  %9 = fcmp ord <2 x double> %i.kj, zeroinitializer
  %10 = select <2 x i1> %9, <2 x double> %i.kj, <2 x double> zeroinitializer ; 2 uses
  %i.kk = call <2 x double> @llvm.fabs.v2f64(<2 x double> %10)
  %11 = fcmp ueq <2 x double> %i.kk, splat (double +inf)
  %i.kl = select <2 x i1> %11, <2 x double> zeroinitializer, <2 x double> %10
  %i.km = fadd <2 x double> %i.ib, %i.kl          ; 2 uses
  %i.kn = fcmp ord <2 x double> %i.km, zeroinitializer
  %i.ko = select <2 x i1> %i.kn, <2 x double> %i.km, <2 x double> zeroinitializer
  %i.kp = icmp eq ptr %i.ic, %i.hw
  br i1 %i.kp, label %_RNvNtCs4xylOWI7Ys4_12typst_render4text11render_text.exit, label %bb.am

_RNvNtCs4xylOWI7Ys4_12typst_render4text11render_text.exit: ; preds = %bb.aw, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.az

bb.ax:                                            ; preds = %bb.b
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.kr = load <2 x double>, ptr %.sroa.0.036, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.am, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.ks = fdiv <2 x double> %i.kr, splat (double 1.270000e+02)
  %i.kt = fptrunc <2 x double> %i.ks to <2 x float> ; 2 uses
  %i.ku = extractelement <2 x float> %i.kt, i64 0
  %i.kv = extractelement <2 x float> %i.kt, i64 1
  call void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform13pre_translate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.bi, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.bh, float noundef %i.ku, float noundef %i.kv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.ep, i64 24, i1 false)
  %i.kw = load ptr, ptr %i.bk, align 16, !alias.scope !636, !noalias !633, !align !448, !noundef !5
  store ptr %i.kw, ptr %i.bl, align 16, !alias.scope !633, !noalias !636
  %i.kx = load float, ptr %i.bm, align 8, !alias.scope !636, !noalias !633, !noundef !5
  store float %i.kx, ptr %i.bn, align 8, !alias.scope !633, !noalias !636
  %i.ky = load <2 x double>, ptr %i.am, align 16, !alias.scope !636, !noalias !633
  store <2 x double> %i.ky, ptr %i.aq, align 16, !alias.scope !633, !noalias !636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call fastcc void @_RNvNtCs4xylOWI7Ys4_12typst_render5shape12render_shape(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.kq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.az

bb.ay:                                            ; preds = %bb.b
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.la = load <2 x double>, ptr %.sroa.0.036, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.al, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %i.lb = fdiv <2 x double> %i.la, splat (double 1.270000e+02)
  %i.lc = fptrunc <2 x double> %i.lb to <2 x float> ; 2 uses
  %i.ld = extractelement <2 x float> %i.lc, i64 0
  %i.le = extractelement <2 x float> %i.lc, i64 1
  call void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform13pre_translate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.ba, float noundef %i.ld, float noundef %i.le)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.eo, i64 24, i1 false)
  %i.lf = load ptr, ptr %i.bd, align 16, !alias.scope !641, !noalias !638, !align !448, !noundef !5
  store ptr %i.lf, ptr %i.be, align 16, !alias.scope !638, !noalias !641
  %i.lg = load float, ptr %i.bf, align 8, !alias.scope !641, !noalias !638, !noundef !5
  store float %i.lg, ptr %i.bg, align 8, !alias.scope !638, !noalias !641
  %i.lh = load <2 x double>, ptr %i.al, align 16, !alias.scope !641, !noalias !638
  store <2 x double> %i.lh, ptr %i.ap, align 16, !alias.scope !638, !noalias !641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 24
  %i.lj = load double, ptr %i.li, align 8, !noundef !5
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 32
  %i.ll = load double, ptr %i.lk, align 16, !noundef !5
  %.val = load ptr, ptr %i.kz, align 8
  call fastcc void @_RNvNtCs4xylOWI7Ys4_12typst_render5image12render_image(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %i.ap, ptr %.val, double noundef %i.lj, double noundef %i.ll)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %_RNvNtCs4xylOWI7Ys4_12typst_render4text11render_text.exit, %_RNvCs4xylOWI7Ys4_12typst_render12render_group.exit, %bb.b, %bb.b
  %i.lm = icmp eq ptr %i.ev, %i.ay
  br i1 %i.lm, label %._crit_edge, label %bb.b
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !643
  %i.r = shl nuw nsw i64 %i.q, 5                  ; 2 uses
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE7reserveCs4xylOWI7Ys4_12typst_render.exit.i.i.thread.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE7reserveCs4xylOWI7Ys4_12typst_render.exit.i.i.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.c, align 8, !noalias !643
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8, !noalias !643
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.loopexit57

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !647
  %i.v = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.r, i64 noundef range(i64 1, 9) 8) #26, !noalias !647 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.b, label %.preheader.i.i.preheader.i

bb.b:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.r) #29
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

.preheader.i.i.preheader.i:                       ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %i.q, ptr %i.c, align 8, !noalias !643
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.v, ptr %i.x, align 8, !noalias !643
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c, %.preheader.i.i.preheader.i
  %.val10.i.i.i.i.i.i = phi i64 [ %i.ab, %bb.c ], [ 0, %.preheader.i.i.preheader.i ] ; 4 uses
  %i.z = getelementptr inbounds nuw [176 x i8], ptr %i.o, i64 %.val10.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !656
  invoke void @_RNvCs4xylOWI7Ys4_12typst_render6render(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
          to label %bb.c unwind label %.body.i, !noalias !670

bb.c:                                             ; preds = %.preheader.i.i.i
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.val10.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !671
  %i.ab = add nuw i64 %.val10.i.i.i.i.i.i, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !656
  %i.ac = icmp eq i64 %i.ab, %i.q
  br i1 %i.ac, label %.loopexit57, label %.preheader.i.i.i

.body.i:                                          ; preds = %.preheader.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i.i, ptr %i.y, align 8, !alias.scope !676, !noalias !677
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #28, !noalias !643
  br label %.body

.body:                                            ; preds = %bb.al, %bb.d, %.body.i, %bb.h
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn43, %bb.al ], [ %.pn.pn, %bb.h ], [ %i.ag, %bb.d ], [ %i.ad, %.body.i ]
  %.sroa.09.0 = phi i1 [ %.sroa.09.144, %bb.al ], [ %.not11, %bb.h ], [ true, %bb.d ], [ true, %.body.i ]
  %i.ae = load i32, ptr %4, align 8, !range !678, !noundef !5 ; 2 uses
  %i.af = icmp ne i32 %i.ae, 2
  %or.cond = and i1 %.sroa.09.0, %i.af
  br i1 %or.cond, label %bb.am, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs4xylOWI7Ys4_12typst_render.exit33

bb.d:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit57:                                      ; preds = %bb.c, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE7reserveCs4xylOWI7Ys4_12typst_render.exit.i.i.thread.i
  %i.ah = phi ptr [ %i.u, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE7reserveCs4xylOWI7Ys4_12typst_render.exit.i.i.thread.i ], [ %i.y, %bb.c ]
  store i64 %i.q, ptr %i.ah, align 8, !alias.scope !676, !noalias !677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !643
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
  %.val.i.i = load i32, ptr %i.av, align 8, !range !566, !noalias !680, !noundef !5 ; 3 uses
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
end_hunk_0
begin_hunk_1_@_RNvNtCs4xylOWI7Ys4_12typst_render5image12render_image:bb.a
  %i.afy = icmp uge i64 %i.afx, %i.afv
  %i.afz = icmp ult i64 %i.afx, 9223372036854775793
  call void @llvm.assume(i1 %i.afy)
  call void @llvm.assume(i1 %i.afz)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i54.i) ]
  %i.aga = icmp eq i64 %i.afx, 0
  br i1 %i.aga, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i, label %bb.fl

bb.fl:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.agb = sub nuw nsw i64 -32, %i.afu
  %i.agc = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i54.i, i64 %i.agb
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.agc, i64 noundef %i.afx, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !1878
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i: ; preds = %bb.fl, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionTINtNvNtCsloFShupyl5J_6comemo5inputs1_1__9MultiCalluuuEoEEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i.i
  %i.agd = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %.val.i.i.i.i.i.i = load i64, ptr %i.agd, align 8, !alias.scope !1879, !noalias !1461 ; 2 uses
  %i.age = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.age, label %_RNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture.exit, label %bb.fm

bb.fm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i
  %.val1.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1879, !noalias !1461, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1880
  br label %_RNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture.exit

_RNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo10constraint12CallSequenceINtNvNtBG_5inputs1_1__9MultiCalluuuEEECs4xylOWI7Ys4_12typst_render.exit.i.i.i.i.i.i, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1461
  %.not = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit

bb.fn:                                            ; preds = %bb.fp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit
  %i.agf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(104) %i.as) #28
  %i.agg = atomicrmw sub ptr %.sroa.0.0.i.i, i64 1 release, align 8, !noalias !1881
  %i.agh = icmp eq i64 %i.agg, 1
  br i1 %i.agh, label %bb.fq, label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit: ; preds = %_RNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture.exit
  store ptr %.sroa.0.0.i.i, ptr %i.at, align 8
  %i.agi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40 ; 2 uses
  %i.agj = load <2 x i32>, ptr %i.agi, align 8
  %i.agk = uitofp <2 x i32> %i.agj to <2 x float>
  %i.agl = fdiv <2 x float> %i.az, %i.agk         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.agm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.agn = load ptr, ptr %i.agm, align 8, !nonnull !5, !noundef !5
  %i.ago = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  %i.agp = load i64, ptr %i.ago, align 8, !noundef !5
  store i64 -9223372036854775804, ptr %i.as, align 8
  %i.agq = extractelement <2 x float> %i.agl, i64 0
  store float %i.agq, ptr %.sink6.i.i36.sroa.gep, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store <2 x float> zeroinitializer, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 4
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.agr = extractelement <2 x float> %i.agl, i64 1
  store float %i.agr, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 4
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store <2 x float> zeroinitializer, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store ptr %i.agn, ptr %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.ags = load <2 x i32>, ptr %i.agi, align 8
  store i64 %i.agp, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store <2 x i32> %i.ags, ptr %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.13.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store float 1.000000e+00, ptr %.sroa.4.sroa.13.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.14.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 60
  store i8 0, ptr %.sroa.4.sroa.14.0..sroa.4.0..sroa_idx.sroa_idx, align 4
  %.sroa.4.sroa.15.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 61
  store i8 0, ptr %.sroa.4.sroa.15.0..sroa.4.0..sroa_idx.sroa_idx, align 1
  %i.agt = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  store <4 x i8> <i8 1, i8 0, i8 0, i8 3>, ptr %i.agt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  invoke void @_RNvMs0_NtCsd315radwPZ_14tiny_skia_path4rectNtB5_4Rect9from_xywh(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.ar, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %i.ck, float noundef %i.ci)
          to label %bb.fo unwind label %bb.fn

bb.fo:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit
  %i.agu = load i32, ptr %i.ar, align 4, !range !425, !noundef !5
  %i.agv = trunc nuw i32 %i.agu to i1
  br i1 %i.agv, label %bb.fp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit40

bb.fp:                                            ; preds = %bb.fo
  %i.agw = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull align 4 dereferenceable(16) %i.agw, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.agx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.agy = load ptr, ptr %i.agx, align 8, !align !448, !noundef !5
  invoke void @_RNvMs0_NtCsfVrisfeHJNS_9tiny_skia7painterNtNtB7_6pixmap6Pixmap9fill_rect(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.as, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(24) %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.agy)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit48 unwind label %bb.fn

bb.fq:                                            ; preds = %bb.fn
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.at) #25
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit40: ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.agz = atomicrmw sub ptr %.sroa.0.0.i.i, i64 1 release, align 8, !noalias !1886
  %i.aha = icmp eq i64 %i.agz, 1
  br i1 %i.aha, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49.sink.split, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49.sink.split: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit40, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit48
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.at) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49.sink.split, %_RNvNtCs4xylOWI7Ys4_12typst_render5image13build_texture.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit40, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render.exit48: ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.ahb = atomicrmw sub ptr %.sroa.0.0.i.i, i64 1 release, align 8, !noalias !1891
  %i.ahc = icmp eq i64 %i.ahb, 1
  br i1 %i.ahc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49.sink.split, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEECs4xylOWI7Ys4_12typst_render.exit49
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(80) %2, i1 noundef zeroext %3, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) %5, i1 noundef zeroext %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %i.b = alloca [56 x i8], align 8                ; 9 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [88 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 12 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 4                ; 6 uses
  %.sroa.846.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.j = alloca [20 x i8], align 4                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 9 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 73 uses
  %i.r = alloca [96 x i8], align 8                ; 19 uses
  %i.s = alloca [16 x i8], align 16               ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 4                ; 4 uses
  %i.v = alloca [24 x i8], align 4                ; 4 uses
  %i.w = alloca [24 x i8], align 4                ; 4 uses
  %.sroa.562.sroa.0 = alloca [24 x i8], align 8   ; 4 uses
  %i.x = alloca [28 x i8], align 4                ; 5 uses
  %i.y = alloca [24 x i8], align 4                ; 4 uses
  %i.z = alloca [24 x i8], align 16               ; 6 uses
  %i.aa = alloca [24 x i8], align 4               ; 4 uses
  %.sroa.540.sroa.0 = alloca [24 x i8], align 8   ; 4 uses
  %i.ab = alloca [28 x i8], align 4               ; 5 uses
  %i.ac = alloca [24 x i8], align 4               ; 4 uses
  %i.ad = alloca [24 x i8], align 16              ; 6 uses
  %i.ae = alloca [20 x i8], align 4               ; 4 uses
  %i.af = alloca [16 x i8], align 16              ; 4 uses
  %i.ag = alloca [104 x i8], align 8              ; 25 uses
  %i.ah = alloca [32 x i8], align 16              ; 7 uses
  %.not.not = icmp eq ptr %5, null                ; 3 uses
  %.sink6.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 9 uses
  %.sink6.i.sroa.gep177 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 4 uses
  br i1 %.not.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5shapeNtB2_5Shape4bbox(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %5, i1 noundef zeroext %6)
  %i.ai = load <2 x double>, ptr %i.ah, align 16  ; 5 uses
  %i.aj = fdiv <2 x double> %i.ai, splat (double 1.270000e+02)
  %i.ak = fptrunc <2 x double> %i.aj to <2 x float>
  %i.al = load i64, ptr %5, align 8, !range !262, !noundef !5
  %i.am = icmp eq i64 %i.al, -9223372036854775807
  br i1 %i.am, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = load double, ptr %i.an, align 8, !noundef !5 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !noundef !5 ; 3 uses
  %i.ar = fcmp ord double %i.ao, 0.000000e+00     ; 2 uses
  %i.as = bitcast double %i.ao to i64
  %i.at = icmp slt i64 %i.as, 0
  %.sroa.07.0 = and i1 %i.ar, %i.at
  br i1 %.sroa.07.0, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.av = load double, ptr %i.au, align 16, !alias.scope !1896, !noundef !5
  %i.aw = extractelement <2 x double> %i.ai, i64 0 ; 2 uses
  %i.ax = fneg double %i.aw
  %i.ay = fcmp uno double %i.aw, 0.000000e+00
  %.sroa.0.0.i = select i1 %i.ay, double 0.000000e+00, double %i.ax
  %i.az = fadd double %.sroa.0.0.i, %i.av         ; 2 uses
  %.inv.i = fcmp ord double %i.az, 0.000000e+00
  %.neg = fneg double %i.az
  %i.ba = select i1 %.inv.i, double %.neg, double -0.000000e+00
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.071.0 = phi double [ 0.000000e+00, %bb.c ], [ %i.ba, %bb.d ]
  %i.bb = fcmp ord double %i.aq, 0.000000e+00     ; 2 uses
  %i.bc = bitcast double %i.aq to i64
  %i.bd = icmp slt i64 %i.bc, 0
  %.sroa.08.0 = and i1 %i.bb, %i.bd
  br i1 %.sroa.08.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.bf = load double, ptr %i.be, align 8, !alias.scope !1899, !noundef !5
  %i.bg = extractelement <2 x double> %i.ai, i64 1 ; 2 uses
  %i.bh = fneg double %i.bg
  %i.bi = fcmp uno double %i.bg, 0.000000e+00
  %.sroa.06.0.i154 = select i1 %i.bi, double 0.000000e+00, double %i.bh
  %i.bj = fadd double %.sroa.06.0.i154, %i.bf     ; 2 uses
  %.inv12.i155 = fcmp ord double %i.bj, 0.000000e+00
  %.neg185 = fneg double %i.bj
  %i.bk = select i1 %.inv12.i155, double %.neg185, double -0.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.074.0 = phi double [ 0.000000e+00, %bb.e ], [ %i.bk, %bb.f ]
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bm = load float, ptr %i.bl, align 8, !noundef !5
  %i.bn = fpext float %i.bm to double
  %i.bo = insertelement <2 x double> poison, double %.sroa.071.0, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %.sroa.074.0, i64 1
  %i.bq = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x double> %i.bp, %i.br          ; 2 uses
  %i.bt = fcmp ord <2 x double> %i.bs, zeroinitializer
  %i.bu = select <2 x i1> %i.bt, <2 x double> %i.bs, <2 x double> zeroinitializer ; 2 uses
  %i.bv = call double @llvm.copysign.f64(double 1.000000e+00, double %i.ao)
  %i.bw = call double @llvm.copysign.f64(double 1.000000e+00, double %i.aq)
  %i.bx = bitcast <2 x double> %i.bu to <2 x i64>
  %i.by = bitcast double %i.bv to i64
  %i.bz = select i1 %i.ar, i64 %i.by, i64 0
  %i.ca = bitcast double %i.bw to i64
  %i.cb = select i1 %i.bb, i64 %i.ca, i64 0
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g
  %.sroa.10.0184 = phi i64 [ %i.cb, %bb.g ], [ undef, %bb.b ]
  %.sroa.8.0 = phi i64 [ %i.bz, %bb.g ], [ undef, %bb.b ]
  %storemerge = phi i64 [ 1, %bb.g ], [ 0, %bb.b ] ; 2 uses
  %i.cc = phi <2 x i64> [ %i.bx, %bb.g ], [ undef, %bb.b ]
  %i.cd = phi <2 x double> [ %i.bu, %bb.g ], [ undef, %bb.b ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.cf = fneg <2 x double> %i.ai
  %i.cg = fcmp uno <2 x double> %i.ai, zeroinitializer
  %i.ch = load <2 x double>, ptr %i.ce, align 16, !alias.scope !1902
  %i.ci = select <2 x i1> %i.cg, <2 x double> zeroinitializer, <2 x double> %i.cf
  %i.cj = fadd <2 x double> %i.ci, %i.ch          ; 2 uses
  %i.ck = fcmp ord <2 x double> %i.cj, zeroinitializer
  %i.cl = select <2 x i1> %i.ck, <2 x double> %i.cj, <2 x double> zeroinitializer
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.cm = trunc nuw i64 %storemerge to i1
  %i.cn = xor i1 %i.cm, true
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.sroa.10.1 = phi i64 [ %.sroa.10.0184, %bb.h ], [ undef, %bb.a ] ; 4 uses
  %.sroa.8.1 = phi i64 [ %.sroa.8.0, %bb.h ], [ undef, %bb.a ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %storemerge, %bb.h ], [ 0, %bb.a ] ; 2 uses
  %.not = phi i1 [ %i.cn, %bb.h ], [ true, %bb.a ]
  %i.co = phi <2 x double> [ %i.cl, %bb.h ], [ zeroinitializer, %bb.a ]
  %i.cp = phi <2 x i64> [ %i.cc, %bb.h ], [ undef, %bb.a ] ; 5 uses
  %i.cq = phi <2 x float> [ %i.ak, %bb.h ], [ undef, %bb.a ] ; 2 uses
  %i.cr = phi <2 x double> [ %i.cd, %bb.h ], [ undef, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 -9223372036854775808, ptr %i.ag, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink6.i.sroa.gep, ptr noundef nonnull align 8 dereferenceable(16) @61, i64 16, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ag, i64 96 ; 3 uses
  store <4 x i8> <i8 1, i8 0, i8 0, i8 3>, ptr %i.cs, align 8
  %i.ct = load i32, ptr %1, align 8, !range !214, !noundef !5 ; 2 uses
  %i.cu = icmp samesign ugt i32 %i.ct, 1
  %i.cv = zext nneg i32 %i.ct to i64
  %i.cw = add nsw i64 %i.cv, -1
  %i.cx = select i1 %i.cu, i64 %i.cw, i64 0
  switch i64 %i.cx, label %bb.j [
    i64 0, label %bb.k
    i64 1, label %switch.lookup
    i64 2, label %bb.l
  ]

default.unreachable408:                           ; preds = %.thread
  unreachable

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color10to_process(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.n unwind label %bb.m

switch.lookup:                                    ; preds = %bb.i
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !range !4, !noundef !5 ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !5, !noundef !5 ; 30 uses
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint, i64 %i.cz
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %switch.ext
  %.sroa.088.0 = load i8, ptr %i.dc, align 1, !range !1319, !noundef !5 ; 2 uses
  %.not147 = icmp eq i8 %.sroa.088.0, 2
  %i.dd = trunc nuw i8 %.sroa.088.0 to i1
  %.sroa.035.0 = select i1 %.not147, i1 %3, i1 %i.dd ; 2 uses
  %i.de = load <2 x double>, ptr %2, align 8
  %i.df = insertelement <2 x i1> poison, i1 %.sroa.035.0, i64 0
  %i.dg = shufflevector <2 x i1> %i.df, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dh = select <2 x i1> %i.dg, <2 x double> %i.de, <2 x double> %i.co ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  br i1 %.sroa.035.0, label %bb.v, label %bb.w

bb.l:                                             ; preds = %bb.i
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 128
  %i.dl = load i8, ptr %i.dk, align 16, !range !1319, !noundef !5 ; 2 uses
  %.not145 = icmp eq i8 %i.dl, 2
  %i.dm = trunc nuw i8 %i.dl to i1
  %.sroa.052.0 = select i1 %.not145, i1 %3, i1 %i.dm ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  br i1 %.sroa.052.0, label %bb.gq, label %bb.gr

.body:                                            ; preds = %bb.ha, %bb.hb, %.body.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.dn, %bb.m ], [ %i.bqj, %bb.hb ], [ %i.bqj, %bb.ha ], [ %eh.lpad-body.i, %.body.i ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(104) %i.ag) #28
  resume { ptr, i32 } %.pn

bb.m:                                             ; preds = %.invoke, %bb.gu, %bb.r, %bb.n, %bb.hi, %bb.hh, %bb.hg, %bb.gw, %bb.gq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit, %bb.aa, %bb.v, %bb.s, %bb.k
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !1905)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1908
  invoke void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor6to_rgb(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.ae)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.n
  %i.do = load <4 x float>, ptr %i.s, align 16, !noalias !1908 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1908
  %i.dp = extractelement <4 x float> %i.do, i64 0 ; 2 uses
  %or.cond.i.i = call i1 @llvm.is.fpclass.f32(float %i.dp, /* (zero psub pnorm) */ i32 480)
  %i.dq = fcmp ole float %i.dp, 1.000000e+00
  %or.cond1.i.i = and i1 %or.cond.i.i, %i.dq
  br i1 %or.cond1.i.i, label %bb.o, label %bb.r

bb.o:                                             ; preds = %.noexc
  %i.dr = extractelement <4 x float> %i.do, i64 1 ; 2 uses
  %or.cond2.i.i = call i1 @llvm.is.fpclass.f32(float %i.dr, /* (zero psub pnorm) */ i32 480)
  %i.ds = fcmp ole float %i.dr, 1.000000e+00
  %or.cond3.i.i = and i1 %or.cond2.i.i, %i.ds
  br i1 %or.cond3.i.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dt = extractelement <4 x float> %i.do, i64 2 ; 2 uses
  %or.cond4.i.i = call i1 @llvm.is.fpclass.f32(float %i.dt, /* (zero psub pnorm) */ i32 480)
  %i.du = fcmp ole float %i.dt, 1.000000e+00
  %or.cond5.i.i = and i1 %or.cond4.i.i, %i.du
  br i1 %or.cond5.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dv = extractelement <4 x float> %i.do, i64 3 ; 2 uses
  %or.cond6.i.i = call i1 @llvm.is.fpclass.f32(float %i.dv, /* (zero psub pnorm) */ i32 480)
  %i.dw = fcmp ole float %i.dv, 1.000000e+00
  %or.cond7.i.i = and i1 %or.cond6.i.i, %i.dw
  br i1 %or.cond7.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %.noexc
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #31
          to label %.noexc163 unwind label %bb.m

.noexc163:                                        ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  store <4 x float> %i.do, ptr %i.af, align 16, !alias.scope !1905, !noalias !1910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke void @_RNvMs_NtCsfVrisfeHJNS_9tiny_skia7painterNtB4_5Paint9set_color(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.ag, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.af)
          to label %bb.t unwind label %bb.m

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  store i8 1, ptr %i.cs, align 8
  br label %bb.u

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit175, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7shaders6ShaderECs4xylOWI7Ys4_12typst_render.exit, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.ag, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  ret void

bb.v:                                             ; preds = %switch.lookup
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform6invert(ptr noalias nofree noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(28) %i.ab, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.dy)
          to label %bb.z unwind label %bb.m

bb.w:                                             ; preds = %switch.lookup
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.ad, align 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  br i1 %.not.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store <2 x float> %i.cq, ptr %i.dz, align 16
  br label %.thread

bb.y:                                             ; preds = %bb.w
  store <2 x float> zeroinitializer, ptr %i.dz, align 16
  br label %.thread

bb.z:                                             ; preds = %bb.v
  %i.ea = load i32, ptr %i.ab, align 4, !range !425, !noundef !5
  %i.eb = trunc nuw i32 %i.ea to i1
  br i1 %i.eb, label %bb.aa, label %.invoke, !prof !516
end_hunk_1
