Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_RINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1b_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1U_EEB6_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ah, i64 136
  %i.ua = load i64, ptr %i.tz, align 8, !noundef !41 ; 12 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.uc = load ptr, ptr %i.ub, align 8, !nonnull !41, !noundef !41 ; 6 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ue = load i64, ptr %i.ud, align 8, !noundef !41 ; 2 uses
  %.not130 = icmp ugt i64 %i.ua, %i.ue
  br i1 %.not130, label %.invoke, label %bb.du, !prof !118

.invoke:                                          ; preds = %bb.du, %bb.dt
  %i.uf = phi i64 [ %i.ue, %bb.dt ], [ %i.uk, %bb.du ]
  %i.ug = phi ptr [ @145, %bb.dt ], [ @144, %bb.du ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ua, i64 noundef %i.uf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ug) #57
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.du:                                            ; preds = %bb.dt
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ui = load ptr, ptr %i.uh, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.uk = load i64, ptr %i.uj, align 8, !noundef !41 ; 2 uses
  %.not131 = icmp ugt i64 %i.ua, %i.uk
  br i1 %.not131, label %.invoke, label %switch.lookup, !prof !118

switch.lookup:                                    ; preds = %bb.du
  %i.ul = load i8, ptr %i.li, align 1, !range !116, !noundef !41
  %switch.idx.cast = trunc i8 %i.ul to i1         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %2, ptr %i.af, align 8
  %i.um = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %3, ptr %i.um, align 8
  %i.un = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.an, ptr %i.un, align 8
  %.not355 = icmp eq i64 %i.ua, 0
  br i1 %.not355, label %._crit_edge354, label %.lr.ph353

.lr.ph353:                                        ; preds = %switch.lookup
  %.146 = select i1 %switch.idx.cast, i64 -1, i64 1
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.ad, i64 92
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.us = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ad, i64 94
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ad, i64 95
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.7.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.9.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.vd = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ve = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.vf = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.vg = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i195 = icmp eq ptr %i.vg, null
  %.val6.i = load ptr, ptr %i.ct, align 8
  %.sroa.5.0.i = select i1 %.not.i195, ptr undef, ptr %.val6.i
  %i.vh = load ptr, ptr %i.cv, align 8            ; 2 uses
  %.not3.i = icmp eq ptr %i.vh, null
  %.val4.i = load ptr, ptr %i.cw, align 8
  %.sroa.52.0.i = select i1 %.not3.i, ptr undef, ptr %.val4.i
  br label %bb.ec

._crit_edge354:                                   ; preds = %bb.fh, %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.vi = load i64, ptr %i.dd, align 8, !noundef !41 ; 3 uses
  %i.vj = icmp eq i64 %i.vi, 0
  br i1 %i.vj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.dv

bb.dv:                                            ; preds = %._crit_edge354
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.vl = add nsw i64 %i.vi, -1                   ; 3 uses
  store i64 %i.vl, ptr %i.dd, align 8
  %i.vm = load i64, ptr %i.vk, align 8, !range !45, !noundef !41
  %i.vn = icmp samesign ult i64 %i.vl, %i.vm
  call void @llvm.assume(i1 %i.vn)
  %i.vo = load ptr, ptr %i.dc, align 8, !nonnull !41, !noundef !41
  %i.vp = icmp ult i64 %i.vi, 1152921504606846977
  call void @llvm.assume(i1 %i.vp)
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.vo, i64 %i.vl
  %i.vr = load ptr, ptr %i.vq, align 8, !nonnull !41, !noundef !41 ; 2 uses
  store ptr %i.vr, ptr %i.z, align 8
  %i.vs = atomicrmw sub ptr %i.vr, i64 1 release, align 8, !noalias !12364
  %i.vt = icmp eq i64 %i.vs, 1
  br i1 %i.vt, label %bb.dw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceEECs7tN9tvpkfrg_12typst_layout.exit

bb.dw:                                            ; preds = %bb.dv
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceEECs7tN9tvpkfrg_12typst_layout.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.gg, %bb.gh, %bb.fx, %bb.fy
  %.pn141 = phi { ptr, i32 } [ %i.acx, %bb.fx ], [ %i.aeg, %bb.gg ], [ %i.acx, %bb.fy ], [ %i.aeg, %bb.gh ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit291, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit295, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6buffer11GlyphBufferECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(208) %i.ah) #54
  br label %bb.do

.loopexit:                                        ; preds = %bb.fk
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1f_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1Y_EEs2_0s_0Ba_.exit.i
  %lpad.loopexit291 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.ef, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread, %bb.ft
  %lpad.loopexit295 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke488, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread274.invoke, %.invoke, %bb.ex, %bb.fu, %bb.dw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %._crit_edge354, %bb.dv, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.experimental.noalias.scope.decl(metadata !12365)
  call void @llvm.experimental.noalias.scope.decl(metadata !12366)
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %.val.i.i178 = load i64, ptr %i.vu, align 8, !range !70, !alias.scope !12367, !noundef !41 ; 2 uses
  %i.vv = icmp sgt i64 %.val.i.i178, 0
  br i1 %i.vv, label %bb.dx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6common8LanguageEECs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.dx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceEECs7tN9tvpkfrg_12typst_layout.exit
  %i.vw = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %.val2.i.i = load ptr, ptr %i.vw, align 8, !alias.scope !12367, !nonnull !41, !noundef !41
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %.val.i.i178, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !12367
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6common8LanguageEECs7tN9tvpkfrg_12typst_layout.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6common8LanguageEECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.dx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceEECs7tN9tvpkfrg_12typst_layout.exit
  %.val3.i.i = load i64, ptr %i.ah, align 8, !alias.scope !12367 ; 2 uses
  %i.vx = icmp eq i64 %.val3.i.i, 0
  br i1 %i.vx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6buffer15hb_glyph_info_tEECs7tN9tvpkfrg_12typst_layout.exit11.i.i, label %bb.dy

bb.dy:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6common8LanguageEECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.vy = mul nuw i64 %.val3.i.i, 20
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.uc, i64 noundef %i.vy, i64 noundef range(i64 1, -9223372036854775807) 4) #56, !noalias !12367
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6buffer15hb_glyph_info_tEECs7tN9tvpkfrg_12typst_layout.exit11.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6buffer15hb_glyph_info_tEECs7tN9tvpkfrg_12typst_layout.exit11.i.i: ; preds = %bb.dy, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6common8LanguageEECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.val7.i.i179 = load i64, ptr %i.vz, align 8, !alias.scope !12367 ; 2 uses
  %i.wa = icmp eq i64 %.val7.i.i179, 0
  br i1 %i.wa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6buffer11GlyphBufferECs7tN9tvpkfrg_12typst_layout.exit, label %bb.dz

bb.dz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6buffer15hb_glyph_info_tEECs7tN9tvpkfrg_12typst_layout.exit11.i.i
  %i.wb = mul nuw i64 %.val7.i.i179, 20
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ui, i64 noundef %i.wb, i64 noundef range(i64 1, -9223372036854775807) 4) #56, !noalias !12367
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6buffer11GlyphBufferECs7tN9tvpkfrg_12typst_layout.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6buffer11GlyphBufferECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.dz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6buffer15hb_glyph_info_tEECs7tN9tvpkfrg_12typst_layout.exit11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.wc = atomicrmw sub ptr %i.th, i64 1 release, align 8, !noalias !12368
  %i.wd = icmp eq i64 %i.wc, 1
  br i1 %i.wd, label %bb.ea, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEECs7tN9tvpkfrg_12typst_layout.exit181

bb.ea:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6buffer11GlyphBufferECs7tN9tvpkfrg_12typst_layout.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tE9drop_slowCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.aj) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEECs7tN9tvpkfrg_12typst_layout.exit181 unwind label %bb.bp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEECs7tN9tvpkfrg_12typst_layout.exit181: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6buffer11GlyphBufferECs7tN9tvpkfrg_12typst_layout.exit, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.experimental.noalias.scope.decl(metadata !12369)
  call void @llvm.experimental.noalias.scope.decl(metadata !12370)
  call void @llvm.experimental.noalias.scope.decl(metadata !12371)
  %i.we = load ptr, ptr %i.ao, align 8, !alias.scope !12372, !nonnull !41, !noundef !41
  %i.wf = atomicrmw sub ptr %i.we, i64 1 release, align 8, !noalias !12372
  %i.wg = icmp eq i64 %i.wf, 1
  br i1 %i.wg, label %bb.eb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit

bb.eb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEECs7tN9tvpkfrg_12typst_layout.exit181
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ao) #58
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdxZxvljAjKP_9rustybuzz2hb13ot_shape_plan18hb_ot_shape_plan_tEECs7tN9tvpkfrg_12typst_layout.exit181, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %.loopexit308

.loopexit308:                                     ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3all5checkcNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtBc_8adapters5chain5ChainINtNtNtBe_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB2M_EE0E0B1l_.exit.backedge.i, %bb.a, %_RINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping19get_font_and_coversNtB2_14ShapingContextNCINvB2_13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1Z_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB2I_EEs_0QB1Q_EB6_.exit.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit
  ret void

bb.ec:                                            ; preds = %.lr.ph353, %bb.fh
  %.sroa.029.0351 = phi i64 [ 0, %.lr.ph353 ], [ %i.aab, %bb.fh ] ; 10 uses
  %i.wh = getelementptr inbounds nuw [20 x i8], ptr %i.uc, i64 %.sroa.029.0351 ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  %i.wj = load i32, ptr %i.wi, align 4, !noundef !41 ; 3 uses
  %i.wk = zext i32 %i.wj to i64                   ; 12 uses
  %i.wl = load i32, ptr %i.wh, align 4, !noundef !41 ; 2 uses
  %i.wm = icmp eq i32 %i.wl, 0
  br i1 %i.wm, label %bb.ee, label %bb.ef

bb.ed:                                            ; preds = %bb.fu, %bb.ex, %bb.by
  unreachable

bb.ee:                                            ; preds = %bb.eg, %bb.ec
  %i.wn = add nuw i64 %.sroa.029.0351, 1          ; 3 uses
  %i.wo = icmp ult i64 %i.wn, %i.ua
  br i1 %i.wo, label %.lr.ph, label %_RNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1d_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1W_EEs2_0B8_.exit.thread

bb.ef:                                            ; preds = %bb.ec
  %i.wp = invoke fastcc noundef zeroext i1 @_RNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1d_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1W_EEs2_0B8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af, i64 noundef %i.wk)
          to label %bb.eg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.eg:                                            ; preds = %bb.ef
  br i1 %i.wp, label %bb.eh, label %bb.ee

bb.eh:                                            ; preds = %bb.eg
  %i.wq = add i64 %1, %i.wk
  br label %bb.fl

.lr.ph:                                           ; preds = %bb.ee, %bb.ev
  %5 = phi i64 [ %i.yr, %bb.ev ], [ %i.wn, %bb.ee ] ; 6 uses
  %.sroa.029.1342 = phi i64 [ %5, %bb.ev ], [ %.sroa.029.0351, %bb.ee ] ; 2 uses
  %i.wr = getelementptr inbounds nuw [20 x i8], ptr %i.uc, i64 %5 ; 2 uses
  %i.ws = load i32, ptr %i.wr, align 4, !noundef !41
  %i.wt = icmp eq i32 %i.ws, 0
  br i1 %i.wt, label %bb.ev, label %bb.ei

_RNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1d_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1W_EEs2_0B8_.exit.thread: ; preds = %_RNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1d_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1W_EEs2_0B8_.exit, %bb.ev, %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBO_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1C_EECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.ee
  %.sroa.029.1.lcssa = phi i64 [ %.sroa.029.0351, %bb.ee ], [ %.sroa.029.1342, %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBO_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1C_EECs7tN9tvpkfrg_12typst_layout.exit.i ], [ %5, %bb.ev ], [ %.sroa.029.1342, %_RNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1d_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1W_EEs2_0B8_.exit ] ; 2 uses
  %.lcssa313 = phi i64 [ %i.wn, %bb.ee ], [ %5, %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBO_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1C_EECs7tN9tvpkfrg_12typst_layout.exit.i ], [ %i.ua, %bb.ev ], [ %5, %_RNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1d_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1W_EEs2_0B8_.exit ]
  %.sroa.029.0..sroa.029.1 = select i1 %switch.idx.cast, i64 %.sroa.029.1.lcssa, i64 %.sroa.029.0351 ; 3 uses
  %i.wu = icmp ult i64 %.sroa.029.0..sroa.029.1, %i.ua
  br i1 %i.wu, label %bb.ew, label %bb.ex

bb.ei:                                            ; preds = %.lr.ph
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.ww = load i32, ptr %i.wv, align 4, !noundef !41 ; 2 uses
  %i.wx = zext i32 %i.ww to i64                   ; 11 uses
  %i.wy = icmp eq i32 %i.ww, 0                    ; 2 uses
  br i1 %i.wy, label %bb.el, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %.not.i.i182 = icmp ugt i64 %3, %i.wx
  br i1 %.not.i.i182, label %bb.ek, label %.split.i.i

.split.i.i:                                       ; preds = %bb.ej
  %i.wz = icmp eq i64 %3, %i.wx
  br i1 %i.wz, label %bb.el, label %.invoke488

bb.ek:                                            ; preds = %bb.ej
  %i.xa = getelementptr inbounds nuw i8, ptr %2, i64 %i.wx
  %i.xb = load i8, ptr %i.xa, align 1, !alias.scope !12373, !noalias !12374, !noundef !41
  %i.xc = icmp sgt i8 %i.xb, -65
  br i1 %i.xc, label %bb.el, label %.invoke488

bb.el:                                            ; preds = %bb.ek, %.split.i.i, %bb.ei
  %i.xd = getelementptr inbounds nuw i8, ptr %2, i64 %i.wx ; 7 uses
  %i.xe = ptrtoint ptr %i.xd to i64
  %i.xf = icmp eq i64 %3, %i.wx                   ; 2 uses
  br i1 %i.xf, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBO_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1C_EECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.xg = load i8, ptr %i.xd, align 1, !noalias !12375, !noundef !41 ; 3 uses
  %i.xh = icmp sgt i8 %i.xg, -1
  br i1 %i.xh, label %bb.en, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i: ; preds = %bb.em
  %i.xi = add nuw nsw i64 %i.wx, 1
  %i.xj = icmp samesign ne i64 %i.xi, %3
  call void @llvm.assume(i1 %i.xj)
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xd, i64 2
  %i.xl = icmp samesign ugt i8 %i.xg, -33
  br i1 %i.xl, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i.i.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i.i.i

bb.en:                                            ; preds = %bb.em
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xd, i64 1
  br label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i
  %i.xn = add nuw nsw i64 %i.wx, 2
  %i.xo = icmp samesign ne i64 %i.xn, %3
  call void @llvm.assume(i1 %i.xo)
  %i.xp = icmp samesign ugt i8 %i.xg, -17
  %spec.select510.v = select i1 %i.xp, i64 4, i64 3
  %spec.select510 = getelementptr inbounds nuw i8, ptr %i.xd, i64 %spec.select510.v
  br label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i.i.i

.invoke488:                                       ; preds = %bb.eq, %bb.eu, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i, %.split.i.i, %bb.ek
  %i.xq = phi i64 [ %3, %.split.i.i ], [ %3, %bb.ek ], [ %storemerge.i, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i ], [ %storemerge.i, %bb.eu ], [ %storemerge.i, %bb.eq ]
  %i.xr = phi ptr [ @217, %.split.i.i ], [ @217, %bb.ek ], [ @221, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i ], [ @221, %bb.eu ], [ @221, %bb.eq ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef range(i64 0, 4294967296) %i.wx, i64 noundef %i.xq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xr) #53
          to label %.cont489 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont489:                                         ; preds = %.invoke488
  unreachable

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i.i.i, %bb.en, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i
  %.sroa.0.020.i = phi ptr [ %i.xm, %bb.en ], [ %i.xk, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i ], [ %spec.select510, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i.i.i ] ; 6 uses
  %i.xs = ptrtoint ptr %.sroa.0.020.i to i64
  %i.xt = icmp eq ptr %.sroa.0.020.i, %i.ap
  br i1 %i.xt, label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBO_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1C_EECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.eo

bb.eo:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i.i.i
  %i.xu = load i8, ptr %.sroa.0.020.i, align 1, !noalias !12376, !noundef !41 ; 3 uses
  %i.xv = icmp sgt i8 %i.xu, -1
  br i1 %i.xv, label %bb.ep, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i183

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i183: ; preds = %bb.eo
  %i.xw = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i, i64 1
  %i.xx = icmp ne ptr %i.xw, %i.ap
  call void @llvm.assume(i1 %i.xx)
  %i.xy = icmp samesign ugt i8 %i.xu, -33
  br i1 %i.xy, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i.i186, label %bb.ep

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i.i186: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i183
  %i.xz = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i, i64 2
  %i.ya = icmp ne ptr %i.xz, %i.ap
  call void @llvm.assume(i1 %i.ya)
  %i.yb = icmp samesign ugt i8 %i.xu, -17
  br i1 %i.yb, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i.i187, label %bb.ep

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i.i187: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i.i186
  %i.yc = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i, i64 3
  %i.yd = icmp ne ptr %i.yc, %i.ap
  call void @llvm.assume(i1 %i.yd)
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i.i187, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i.i186, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i183
  %i.ye = sub i64 %i.wx, %i.xe
  %i.yf = add i64 %i.ye, %i.xs
  br label %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBO_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1C_EECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBO_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1C_EECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.ep, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i.i.i, %bb.el
  %storemerge.i = phi i64 [ %i.yf, %bb.ep ], [ %3, %bb.el ], [ %3, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i.i.i ] ; 8 uses
  %i.yg = load ptr, ptr %i.an, align 8, !noalias !12374, !align !46, !noundef !41 ; 3 uses
  %.not11.i = icmp eq ptr %i.yg, null
  br i1 %.not11.i, label %_RNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1d_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1W_EEs2_0B8_.exit.thread, label %bb.eq

bb.eq:                                            ; preds = %_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldINtNtNtB9_3num7nonzero7NonZerojENCNvXs_NvBO_10advance_byB3_NtB2f_13SpecAdvanceBy15spec_advance_by0INtNtB9_6option6OptionB1C_EECs7tN9tvpkfrg_12typst_layout.exit.i
  %.val.i184 = load ptr, ptr %i.yg, align 8, !noalias !12374 ; 2 uses
  %i.yh = getelementptr i8, ptr %i.yg, i64 8
  %.val12.i = load ptr, ptr %i.yh, align 8, !noalias !12374
  %i.yi = icmp ult i64 %storemerge.i, %i.wx
  %i.yj = icmp ugt i64 %storemerge.i, %3
  %or.cond.i.i.i = or i1 %i.yi, %i.yj
  br i1 %or.cond.i.i.i, label %.invoke488, label %bb.er, !prof !120

bb.er:                                            ; preds = %bb.eq
  br i1 %i.xf, label %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1f_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1Y_EEs2_0s_0Ba_.exit.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  br i1 %i.wy, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.eu, %bb.es
  %i.yk = icmp eq i64 %storemerge.i, %3
  br i1 %i.yk, label %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1f_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1Y_EEs2_0s_0Ba_.exit.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i

bb.eu:                                            ; preds = %bb.es
  %i.yl = load i8, ptr %i.xd, align 1, !alias.scope !12377, !noalias !12378, !noundef !41
  %i.ym = icmp sgt i8 %i.yl, -65
  br i1 %i.ym, label %bb.et, label %.invoke488, !prof !121

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i: ; preds = %bb.et
  %i.yn = getelementptr inbounds nuw i8, ptr %2, i64 %storemerge.i
  %i.yo = load i8, ptr %i.yn, align 1, !alias.scope !12377, !noalias !12378, !noundef !41
  %i.yp = icmp sgt i8 %i.yo, -65
  br i1 %i.yp, label %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1f_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1Y_EEs2_0s_0Ba_.exit.i, label %.invoke488, !prof !62

_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1f_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1Y_EEs2_0s_0Ba_.exit.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i, %bb.et, %bb.er
  %i.yq = sub nuw i64 %storemerge.i, %i.wx        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12378
  store i32 0, ptr %i.d, align 8, !noalias !12378
  store ptr %i.xd, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !noalias !12378
  store i64 %i.yq, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !12378
  store i64 0, ptr %.sroa.7.0..sroa_idx3.i.i, align 8, !noalias !12378
  store i64 %i.yq, ptr %.sroa.9.0..sroa_idx4.i.i, align 8, !noalias !12378
  store i8 1, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !12378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12378
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i184) ]
  invoke fastcc void @_RNvMs0_NtNtCs7lTeezpKIYd_14regex_automata4meta5regexNtB5_5Regex11search_half(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull readonly %.val.i184, ptr %.val12.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d) #59
          to label %_RNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1d_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1W_EEs2_0B8_.exit unwind label %.loopexit.split-lp.loopexit

bb.ev:                                            ; preds = %.lr.ph, %_RNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1d_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1W_EEs2_0B8_.exit
  %i.yr = add i64 %5, 1                           ; 2 uses
  %exitcond.not = icmp eq i64 %i.yr, %i.ua
  br i1 %exitcond.not, label %_RNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1d_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1W_EEs2_0B8_.exit.thread, label %.lr.ph

_RNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1d_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1W_EEs2_0B8_.exit: ; preds = %_RNCNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1f_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1Y_EEs2_0s_0Ba_.exit.i
  %i.ys = load i64, ptr %i.c, align 8, !range !49, !noalias !12378, !noundef !41
  %.not = icmp eq i64 %i.ys, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12378
  br i1 %.not, label %bb.ev, label %_RNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1d_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1W_EEs2_0B8_.exit.thread

bb.ew:                                            ; preds = %_RNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1d_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1W_EEs2_0B8_.exit.thread
  %i.yt = getelementptr inbounds nuw [20 x i8], ptr %i.uc, i64 %.sroa.029.0..sroa.029.1
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  %i.yv = load i32, ptr %i.yu, align 4, !noundef !41 ; 2 uses
  %i.yw = zext i32 %i.yv to i64                   ; 9 uses
  br i1 %switch.idx.cast, label %bb.ey, label %bb.fa

bb.ex:                                            ; preds = %_RNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1d_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1W_EEs2_0B8_.exit.thread
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.029.0..sroa.029.1, i64 noundef %i.ua, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #57
          to label %bb.ed unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ey:                                            ; preds = %bb.ew
  %i.yx = icmp eq i64 %.sroa.029.0351, 0
  br i1 %i.yx, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6buffer15hb_glyph_info_tE6map_orjNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtB5_4iter8adapters5chain5ChainINtNtNtB5_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB3u_EEs6_0EB1W_.exit, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.yy = add i64 %.sroa.029.0351, -1
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ew, %bb.ez
  %.sroa.461.0 = phi i64 [ %i.yy, %bb.ez ], [ %.lcssa313, %bb.ew ] ; 2 uses
  %i.yz = icmp ult i64 %.sroa.461.0, %i.ua
  br i1 %i.yz, label %bb.fb, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6buffer15hb_glyph_info_tE6map_orjNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtB5_4iter8adapters5chain5ChainINtNtNtB5_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB3u_EEs6_0EB1W_.exit

bb.fb:                                            ; preds = %bb.fa
  %i.za = getelementptr inbounds nuw [20 x i8], ptr %i.uc, i64 %.sroa.461.0
  %i.zb = getelementptr i8, ptr %i.za, i64 8
  %.val.i192 = load i32, ptr %i.zb, align 4, !alias.scope !12379, !noundef !41
  %i.zc = zext i32 %.val.i192 to i64
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6buffer15hb_glyph_info_tE6map_orjNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtB5_4iter8adapters5chain5ChainINtNtNtB5_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB3u_EEs6_0EB1W_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6buffer15hb_glyph_info_tE6map_orjNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtB5_4iter8adapters5chain5ChainINtNtNtB5_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB3u_EEs6_0EB1W_.exit: ; preds = %bb.fa, %bb.ey, %bb.fb
  %.sroa.02.0.i = phi i64 [ %i.zc, %bb.fb ], [ %3, %bb.ey ], [ %3, %bb.fa ] ; 9 uses
  %i.zd = add i64 %1, %i.yw                       ; 2 uses
  %i.ze = add i64 %.sroa.02.0.i, %1
  %i.zf = load i64, ptr %i.va, align 8, !noundef !41 ; 2 uses
  %.not140348 = icmp eq i64 %i.zf, 0
  br i1 %.not140348, label %._crit_edge, label %.lr.ph349

._crit_edge:                                      ; preds = %.lr.ph349, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphEEB13_.exit, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6buffer15hb_glyph_info_tE6map_orjNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtB5_4iter8adapters5chain5ChainINtNtNtB5_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB3u_EEs6_0EB1W_.exit
  %i.zg = icmp ult i64 %.sroa.02.0.i, %i.yw
  %i.zh = icmp ugt i64 %.sroa.02.0.i, %3
  %or.cond.i = or i1 %i.zg, %i.zh
  br i1 %or.cond.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread274.invoke, label %bb.fc, !prof !120

bb.fc:                                            ; preds = %._crit_edge
  %i.zi = icmp eq i64 %3, %i.yw
  br i1 %i.zi, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.zj = icmp eq i32 %i.yv, 0
  br i1 %i.zj, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.ff, %bb.fd
  %i.zk = icmp eq i64 %.sroa.02.0.i, %3
  br i1 %i.zk, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit

bb.ff:                                            ; preds = %bb.fd
  %i.zl = getelementptr inbounds nuw i8, ptr %2, i64 %i.yw
  %i.zm = load i8, ptr %i.zl, align 1, !alias.scope !12380, !noundef !41
  %i.zn = icmp sgt i8 %i.zm, -65
  br i1 %i.zn, label %bb.fe, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread274.invoke, !prof !121

.lr.ph349:                                        ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6buffer15hb_glyph_info_tE6map_orjNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtB5_4iter8adapters5chain5ChainINtNtNtB5_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB3u_EEs6_0EB1W_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphEEB13_.exit
  %i.zo = phi i64 [ %i.aan, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphEEB13_.exit ], [ %i.zf, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtNtCsdxZxvljAjKP_9rustybuzz2hb6buffer15hb_glyph_info_tE6map_orjNCINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtB5_4iter8adapters5chain5ChainINtNtNtB5_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB3u_EEs6_0EB1W_.exit ] ; 3 uses
  %i.zp = load ptr, ptr %i.vb, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.zq = getelementptr [104 x i8], ptr %i.zp, i64 %i.zo
  %i.zr = getelementptr i8, ptr %i.zq, i64 -32
  %.val = load i64, ptr %i.zr, align 8, !alias.scope !12381, !noalias !12382, !noundef !41 ; 2 uses
  %.not.i193 = icmp ule i64 %i.zd, %.val
  %i.zs = icmp ult i64 %.val, %i.ze
  %.sroa.0.0.i194 = and i1 %.not.i193, %i.zs
  br i1 %.sroa.0.0.i194, label %bb.fi, label %._crit_edge

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit: ; preds = %bb.fe
  %i.zt = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.02.0.i
  %i.zu = load i8, ptr %i.zt, align 1, !alias.scope !12380, !noundef !41
  %i.zv = icmp sgt i8 %i.zu, -65
  br i1 %i.zv, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread274.invoke, !prof !62

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread274.invoke: ; preds = %.split.i198, %bb.fp, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit, %._crit_edge, %bb.ff
  %i.zw = phi i64 [ %i.yw, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit ], [ %i.yw, %bb.ff ], [ %i.yw, %._crit_edge ], [ %i.wk, %bb.fp ], [ %i.wk, %.split.i198 ]
  %i.zx = phi i64 [ %.sroa.02.0.i, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit ], [ %.sroa.02.0.i, %bb.ff ], [ %.sroa.02.0.i, %._crit_edge ], [ %3, %bb.fp ], [ %3, %.split.i198 ]
  %i.zy = phi ptr [ @151, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit ], [ @151, %bb.ff ], [ @151, %._crit_edge ], [ @152, %bb.fp ], [ @152, %.split.i198 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %i.zw, i64 noundef %i.zx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.zy) #57
          to label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread274.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread274.cont: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread274.invoke
  unreachable

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread: ; preds = %bb.fe, %bb.fc, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.experimental.noalias.scope.decl(metadata !12383)
  call void @llvm.experimental.noalias.scope.decl(metadata !12384)
  store ptr %i.vg, ptr %i.aa, align 8, !alias.scope !12383, !noalias !12384
  store ptr %.sroa.5.0.i, ptr %i.vd, align 8, !alias.scope !12383, !noalias !12384
  store ptr %i.vh, ptr %i.ve, align 8, !alias.scope !12383, !noalias !12384
  store ptr %.sroa.52.0.i, ptr %i.vf, align 8, !alias.scope !12383, !noalias !12384
  %i.zz = getelementptr inbounds nuw i8, ptr %2, i64 %i.yw
  %i.aaa = sub nuw i64 %.sroa.02.0.i, %i.yw
  invoke fastcc void @_RINvNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping13shape_segmentINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtNtB1b_5slice4iter4IterNtNtCsdaEETE4DqmE_13typst_library4text10FontFamilyEB1U_EEB6_(ptr noalias nofree noundef align 8 dereferenceable(216) %0, i64 noundef %i.zd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.zz, i64 noundef %i.aaa, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.aa)
          to label %bb.fg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.fg:                                            ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.fh

bb.fh:                                            ; preds = %bb.gj, %bb.fg
  %.sroa.029.2 = phi i64 [ %.sroa.029.1.lcssa, %bb.fg ], [ %.sroa.029.0351, %bb.gj ]
  %i.aab = add i64 %.sroa.029.2, 1                ; 2 uses
  %i.aac = icmp ult i64 %i.aab, %i.ua
  br i1 %i.aac, label %bb.ec, label %._crit_edge354

bb.fi:                                            ; preds = %.lr.ph349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.aad = add nsw i64 %i.zo, -1                  ; 3 uses
  store i64 %i.aad, ptr %i.va, align 8
  %i.aae = load i64, ptr %i.uo, align 8, !range !45, !noundef !41
  %i.aaf = icmp samesign ult i64 %i.aad, %i.aae
  call void @llvm.assume(i1 %i.aaf)
  %i.aag = icmp ult i64 %i.zo, 88686269585142077
  call void @llvm.assume(i1 %i.aag)
  %i.aah = getelementptr inbounds nuw [104 x i8], ptr %i.zp, i64 %i.aad
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ab, ptr noundef nonnull align 8 dereferenceable(104) %i.aah, i64 104, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !12385)
  %i.aai = load i32, ptr %i.vc, align 8, !range !122, !alias.scope !12385, !noundef !41
  %i.aaj = icmp eq i32 %i.aai, -1
  br i1 %i.aaj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphEEB13_.exit, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.experimental.noalias.scope.decl(metadata !12386)
  call void @llvm.experimental.noalias.scope.decl(metadata !12387)
  call void @llvm.experimental.noalias.scope.decl(metadata !12388)
  call void @llvm.experimental.noalias.scope.decl(metadata !12389)
  %i.aak = load ptr, ptr %i.ab, align 8, !alias.scope !12390, !nonnull !41, !noundef !41
  %i.aal = atomicrmw sub ptr %i.aak, i64 1 release, align 8, !noalias !12390
  %i.aam = icmp eq i64 %i.aal, 1
  br i1 %i.aam, label %bb.fk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphEEB13_.exit

bb.fk:                                            ; preds = %bb.fj
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.ab) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphEEB13_.exit unwind label %.loopexit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphEEB13_.exit: ; preds = %bb.fj, %bb.fi, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.aan = load i64, ptr %i.va, align 8, !noundef !41 ; 2 uses
  %.not140 = icmp eq i64 %i.aan, 0
  br i1 %.not140, label %._crit_edge, label %.lr.ph349

bb.fl:                                            ; preds = %bb.fm, %bb.eh
  %.sroa.043.0 = phi i64 [ %.sroa.029.0351, %bb.eh ], [ %i.aao, %bb.fm ] ; 2 uses
  %i.aao = add i64 %.sroa.043.0, %.146            ; 4 uses
  %i.aap = icmp uge i64 %i.aao, %.sroa.043.0
  %.not147 = xor i1 %i.aap, %switch.idx.cast
  %i.aaq = icmp ult i64 %i.aao, %i.ua
  %or.cond148 = and i1 %i.aaq, %.not147
  br i1 %or.cond148, label %bb.fm, label %.loopexit294, !prof !123

bb.fm:                                            ; preds = %bb.fl
  %i.aar = getelementptr inbounds nuw [20 x i8], ptr %i.uc, i64 %i.aao
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 8
  %i.aat = load i32, ptr %i.aas, align 4, !noundef !41 ; 2 uses
  %.not132 = icmp eq i32 %i.aat, %i.wj
  br i1 %.not132, label %bb.fl, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.aau = zext i32 %i.aat to i64
  br label %.loopexit294

.loopexit294:                                     ; preds = %bb.fl, %bb.fn
  %.pn = phi i64 [ %i.aau, %bb.fn ], [ %3, %bb.fl ]
  %.sroa.042.0 = add i64 %.pn, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.aav = icmp eq i32 %i.wj, 0
  br i1 %i.aav, label %bb.fq, label %bb.fo

bb.fo:                                            ; preds = %.loopexit294
  %.not.i197 = icmp ugt i64 %3, %i.wk
  br i1 %.not.i197, label %bb.fp, label %.split.i198

.split.i198:                                      ; preds = %bb.fo
  %i.aaw = icmp eq i64 %3, %i.wk
  br i1 %i.aaw, label %bb.fq, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread274.invoke

bb.fp:                                            ; preds = %bb.fo
  %i.aax = getelementptr inbounds nuw i8, ptr %2, i64 %i.wk
  %i.aay = load i8, ptr %i.aax, align 1, !alias.scope !12391, !noundef !41
  %i.aaz = icmp sgt i8 %i.aay, -65
  br i1 %i.aaz, label %bb.fq, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread274.invoke

bb.fq:                                            ; preds = %bb.fp, %.split.i198, %.loopexit294
  %i.aba = getelementptr inbounds nuw i8, ptr %2, i64 %i.wk ; 4 uses
  %i.abb = icmp samesign eq i64 %3, %i.wk
  br i1 %i.abb, label %bb.fu, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.abc = load i8, ptr %i.aba, align 1, !noalias !12392, !noundef !41 ; 5 uses
  %i.abd = icmp sgt i8 %i.abc, -1
end_hunk_0
