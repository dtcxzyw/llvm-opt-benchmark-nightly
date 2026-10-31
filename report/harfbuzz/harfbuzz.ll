Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 273
loop-unroll.NumUnrolled: 472
begin_hunk_0_@hb_font_set_funcs_using:bb.a

_ZNK12hb_ot_font_t14origin_cache_t18clear_origin_cacheEv.exit.i.i.i68.us: ; preds = %bb.o, %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 56 ; 2 uses
  br label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i.i69.us

_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i.i69.us: ; preds = %bb.r, %_ZNK12hb_ot_font_t14origin_cache_t18clear_origin_cacheEv.exit.i.i.i68.us
  %i.au = load atomic ptr, ptr %i.at acquire, align 8 ; 4 uses
  %.not.i1.i.i.i70.us = icmp eq ptr %i.au, null
  br i1 %.not.i1.i.i.i70.us, label %_ZN12hb_ot_font_t14origin_cache_tD2Ev.exit.i72.us, label %bb.r

bb.r:                                             ; preds = %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i.i69.us
  %i.av = cmpxchg weak ptr %i.at, ptr %i.au, ptr null acq_rel monotonic, align 8
  %i.aw = extractvalue { ptr, i1 } %i.av, 1
  br i1 %i.aw, label %bb.s, label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i.i69.us

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i.i.i2.i71.us = icmp eq ptr %i.au, @_hb_NullPool
  br i1 %.not.i.i.i.i.i2.i71.us, label %_ZN12hb_ot_font_t14origin_cache_tD2Ev.exit.i72.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @free(ptr noundef nonnull %i.au) #59
  br label %_ZN12hb_ot_font_t14origin_cache_tD2Ev.exit.i72.us

_ZN12hb_ot_font_t14origin_cache_tD2Ev.exit.i72.us: ; preds = %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i.i69.us, %bb.t, %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %_ZN12hb_ot_font_t14origin_cache_tD2Ev.exit.i72.us
  %i.ay = load atomic ptr, ptr %i.ax acquire, align 8 ; 3 uses
  %.not.i.i.i3.i73.us = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i3.i73.us, label %_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i.i74.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.az = cmpxchg weak ptr %i.ax, ptr %i.ay, ptr null acq_rel monotonic, align 8
  %i.ba = extractvalue { ptr, i1 } %i.az, 1
  br i1 %i.ba, label %bb.w, label %bb.u

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.ay) #59
  br label %_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i.i74.us

_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i.i74.us: ; preds = %bb.u, %bb.w
  %i.bb = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 2 uses
  br label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i4.i75.us

_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i4.i75.us: ; preds = %bb.x, %_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i.i74.us
  %i.bc = load atomic ptr, ptr %i.bb acquire, align 8 ; 4 uses
  %.not.i1.i.i5.i76.us = icmp eq ptr %i.bc, null
  br i1 %.not.i1.i.i5.i76.us, label %_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit.i78.us, label %bb.x

bb.x:                                             ; preds = %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i4.i75.us
  %i.bd = cmpxchg weak ptr %i.bb, ptr %i.bc, ptr null acq_rel monotonic, align 8
  %i.be = extractvalue { ptr, i1 } %i.bd, 1
  br i1 %i.be, label %bb.y, label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i4.i75.us

bb.y:                                             ; preds = %bb.x
  %.not.i.i.i.i.i6.i77.us = icmp eq ptr %i.bc, @_hb_NullPool
  br i1 %.not.i.i.i.i.i6.i77.us, label %_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit.i78.us, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @free(ptr noundef nonnull %i.bc) #59
  br label %_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit.i78.us

_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit.i78.us: ; preds = %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i4.i75.us, %bb.z, %bb.y
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit.i78.us
  %i.bg = load atomic ptr, ptr %i.bf acquire, align 8 ; 3 uses
  %.not.i.i.i7.i79.us = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i7.i79.us, label %_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i8.i80.us, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bh = cmpxchg weak ptr %i.bf, ptr %i.bg, ptr null acq_rel monotonic, align 8
  %i.bi = extractvalue { ptr, i1 } %i.bh, 1
  br i1 %i.bi, label %bb.ac, label %bb.aa

bb.ac:                                            ; preds = %bb.ab
  tail call void @free(ptr noundef nonnull %i.bg) #59
  br label %_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i8.i80.us

_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i8.i80.us: ; preds = %bb.aa, %bb.ac
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  br label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i9.i81.us

_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i9.i81.us: ; preds = %bb.ad, %_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i8.i80.us
  %i.bk = load atomic ptr, ptr %i.bj acquire, align 8 ; 4 uses
  %.not.i1.i.i10.i82.us = icmp eq ptr %i.bk, null
  br i1 %.not.i1.i.i10.i82.us, label %_ZN12hb_ot_font_tD2Ev.exit84.us, label %bb.ad

bb.ad:                                            ; preds = %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i9.i81.us
  %i.bl = cmpxchg weak ptr %i.bj, ptr %i.bk, ptr null acq_rel monotonic, align 8
  %i.bm = extractvalue { ptr, i1 } %i.bl, 1
  br i1 %i.bm, label %bb.ae, label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i9.i81.us

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i.i.i.i11.i83.us = icmp eq ptr %i.bk, @_hb_NullPool
  br i1 %.not.i.i.i.i.i11.i83.us, label %_ZN12hb_ot_font_tD2Ev.exit84.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @free(ptr noundef nonnull %i.bk) #59
  br label %_ZN12hb_ot_font_tD2Ev.exit84.us

_ZN12hb_ot_font_tD2Ev.exit84.us:                  ; preds = %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i9.i81.us, %bb.af, %bb.ae
  tail call void @free(ptr noundef nonnull %i.z) #59
  br label %hb_ot_font_set_funcs.exit44.us

bb.ag:                                            ; preds = %_ZL21_hb_ot_get_font_funcsv.exit.i33.us
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !1061 ; 2 uses
  %.not.i4.i35.us = icmp eq ptr %i.bn, null
  br i1 %.not.i4.i35.us, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bo = load ptr, ptr %i.m, align 8, !tbaa !639
  tail call void %i.bn(ptr noundef %i.bo) #59, !inline_history !2505
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bp = load atomic i32, ptr %.19.ph.i.i.i.i34.us monotonic, align 4 ; 0 uses
  %i.bq = load atomic i32, ptr %.19.ph.i.i.i.i34.us monotonic, align 4
  %.not.i7.i.i.i.i36.us = icmp eq i32 %i.bq, 0
  br i1 %.not.i7.i.i.i.i36.us, label %hb_font_funcs_reference.exit.i.i37.us, label %bb.aj, !prof !267

bb.aj:                                            ; preds = %bb.ai
  %i.br = atomicrmw add ptr %.19.ph.i.i.i.i34.us, i32 1 acq_rel, align 4 ; 0 uses
  br label %hb_font_funcs_reference.exit.i.i37.us

hb_font_funcs_reference.exit.i.i37.us:            ; preds = %bb.aj, %bb.ai
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !638
  tail call void @hb_font_funcs_destroy(ptr noundef %i.bs)
  store ptr %.19.ph.i.i.i.i34.us, ptr %i.n, align 8, !tbaa !638
  store ptr %i.z, ptr %i.m, align 8, !tbaa !639
  store ptr @_ZL19_hb_ot_font_destroyPv, ptr %i.l, align 8, !tbaa !1061
  %i.bt = load ptr, ptr %i.k, align 8, !tbaa !264 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 20 ; 2 uses
  %i.bv = load atomic i32, ptr %i.bu monotonic, align 4 ; 2 uses
  %.not.i.i49.us = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i49.us, label %bb.ak, label %_ZNK9hb_face_t8get_upemEv.exit.i50.us, !prof !267

bb.ak:                                            ; preds = %hb_font_funcs_reference.exit.i.i37.us
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 112 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 104
  %i.by = load atomic ptr, ptr %i.bw acquire, align 8 ; 2 uses
  %.not14.i.i.i.i89.us = icmp eq ptr %i.by, null
  br i1 %.not14.i.i.i.i89.us, label %.lr.ph.i.i.i.i94.us, label %_ZNK9hb_face_t9load_upemEv.exit99.us, !prof !265

.lr.ph.i.i.i.i94.us:                              ; preds = %bb.ak, %bb.ao
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.i.i.i95.us = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i95.us, label %_ZNK9hb_face_t9load_upemEv.exit99.us, label %bb.al, !prof !267

bb.al:                                            ; preds = %.lr.ph.i.i.i.i94.us
  %i.ca = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4headELj1ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.bz) ; 2 uses
  %.not10.i.i.i.i96.us = icmp eq ptr %i.ca, null
  br i1 %.not10.i.i.i.i96.us, label %bb.am, label %bb.an, !prof !267

bb.am:                                            ; preds = %bb.al
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.07.i.i.i.i97.us = phi ptr [ @_hb_NullPool, %bb.am ], [ %i.ca, %bb.al ] ; 3 uses
  %i.cb = cmpxchg weak ptr %i.bw, ptr null, ptr %.07.i.i.i.i97.us acq_rel monotonic, align 8
  %i.cc = extractvalue { ptr, i1 } %i.cb, 1
  br i1 %i.cc, label %_ZNK9hb_face_t9load_upemEv.exit99.us, label %bb.ao, !prof !268

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZN16hb_lazy_loader_tIN2OT4headE22hb_table_lazy_loader_tIS1_Lj1ELb1EE9hb_face_tLj1E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i.i97.us)
  %i.cd = load atomic ptr, ptr %i.bw acquire, align 8 ; 2 uses
  %.not.i.i.i.i98.us = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i98.us, label %.lr.ph.i.i.i.i94.us, label %_ZNK9hb_face_t9load_upemEv.exit99.us, !prof !269

_ZNK9hb_face_t9load_upemEv.exit99.us:             ; preds = %.lr.ph.i.i.i.i94.us, %bb.an, %bb.ao, %bb.ak
  %.19.ph.i.i.i.i90.us = phi ptr [ %i.by, %bb.ak ], [ %.07.i.i.i.i97.us, %bb.an ], [ %i.cd, %bb.ao ], [ @_hb_NullPool, %.lr.ph.i.i.i.i94.us ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i.i90.us, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !275
  %i.cg = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i.i90.us, i64 24
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !276
  %i.ci = icmp ult i32 %i.ch, 54
  %spec.select.i.i.i.i.i.i91.us = select i1 %i.ci, ptr @_hb_NullPool, ptr %i.cf
  %i.cj = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i91.us, i64 18
  %i.ck = load i16, ptr %i.cj, align 1, !tbaa !283
  %i.cl = tail call noundef i16 @llvm.bswap.i16(i16 %i.ck) ; 2 uses
  %i.cm = add i16 %i.cl, -16
  %or.cond.i.i92.us = icmp ult i16 %i.cm, 16369
  %narrow.i.i93.us = select i1 %or.cond.i.i92.us, i16 %i.cl, i16 1000
  %i.cn = zext nneg i16 %narrow.i.i93.us to i32   ; 2 uses
  store atomic i32 %i.cn, ptr %i.bu monotonic, align 4
  br label %_ZNK9hb_face_t8get_upemEv.exit.i50.us

_ZNK9hb_face_t8get_upemEv.exit.i50.us:            ; preds = %_ZNK9hb_face_t9load_upemEv.exit99.us, %hb_font_funcs_reference.exit.i.i37.us
  %.0.i.i51.us = phi i32 [ %i.cn, %_ZNK9hb_face_t9load_upemEv.exit99.us ], [ %i.bv, %hb_font_funcs_reference.exit.i.i37.us ]
  %i.co = uitofp i32 %.0.i.i51.us to float
  %i.cp = load <2 x i32>, ptr %i.o, align 8, !tbaa !324 ; 6 uses
  %i.cq = sitofp <2 x i32> %i.cp to <2 x float>   ; 3 uses
  %i.cr = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ct = fdiv <2 x float> %i.cq, %i.cs
  store <2 x float> %i.ct, ptr %i.p, align 8, !tbaa !304
  %i.cu = icmp slt <2 x i32> %i.cp, zeroinitializer
  %i.cv = sub nsw <2 x i32> zeroinitializer, %i.cp
  %i.cw = zext <2 x i32> %i.cv to <2 x i64>
  %i.cx = mul nsw <2 x i64> %i.cw, splat (i64 -65536)
  %i.cy = zext <2 x i32> %i.cp to <2 x i64>
  %i.cz = shl nuw nsw <2 x i64> %i.cy, splat (i64 16)
  %i.da = select <2 x i1> %i.cu, <2 x i64> %i.cx, <2 x i64> %i.cz
  %i.db = sitofp <2 x i64> %i.da to <2 x float>
  %i.dc = fdiv <2 x float> %i.db, %i.cs
  %i.dd = fptosi <2 x float> %i.dc to <2 x i64>
  store <2 x i64> %i.dd, ptr %i.q, align 8, !tbaa !357
  %i.de = load <2 x float>, ptr %i.r, align 4, !tbaa !304 ; 3 uses
  %i.df = extractelement <2 x float> %i.de, i64 0
  %i.dg = fcmp une float %i.df, 0.000000e+00
  %i.dh = extractelement <2 x float> %i.de, i64 1
  %i.di = fcmp une float %i.dh, 0.000000e+00
  %or.cond.i56.us = select i1 %i.dg, i1 true, i1 %i.di
  br i1 %or.cond.i56.us, label %_ZNK9hb_face_t8get_upemEv.exit._crit_edge.i57.us, label %bb.ap

bb.ap:                                            ; preds = %_ZNK9hb_face_t8get_upemEv.exit.i50.us
  %i.dj = load float, ptr %i.s, align 8, !tbaa !1062
  %i.dk = fcmp une float %i.dj, 0.000000e+00
  %i.dl = zext i1 %i.dk to i8
  br label %_ZNK9hb_face_t8get_upemEv.exit._crit_edge.i57.us

_ZNK9hb_face_t8get_upemEv.exit._crit_edge.i57.us: ; preds = %bb.ap, %_ZNK9hb_face_t8get_upemEv.exit.i50.us
  %i.dm = phi i8 [ 1, %_ZNK9hb_face_t8get_upemEv.exit.i50.us ], [ %i.dl, %bb.ap ]
  store i8 %i.dm, ptr %i.t, align 8, !tbaa !965
  %i.dn = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.cp, i1 true)
  %i.do = uitofp nneg <2 x i32> %i.dn to <2 x float>
  %i.dp = fmul <2 x float> %i.de, %i.do
  %i.dq = fadd <2 x float> %i.dp, splat (float 5.000000e-01)
  %i.dr = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.dq)
  %i.ds = fptosi <2 x float> %i.dr to <2 x i32>
  store <2 x i32> %i.ds, ptr %i.u, align 8, !tbaa !324
  %i.dt = extractelement <2 x i32> %i.cp, i64 1
  %.not.i58.us = icmp eq i32 %i.dt, 0
  br i1 %.not.i58.us, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNK9hb_face_t8get_upemEv.exit._crit_edge.i57.us
  %i.du = load float, ptr %i.s, align 8, !tbaa !1062
  %i.dv = extractelement <2 x float> %i.cq, i64 0
  %i.dw = fmul float %i.du, %i.dv
  %i.dx = extractelement <2 x float> %i.cq, i64 1
  %i.dy = fdiv float %i.dw, %i.dx
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNK9hb_face_t8get_upemEv.exit._crit_edge.i57.us
  %i.dz = phi float [ %i.dy, %bb.aq ], [ 0.000000e+00, %_ZNK9hb_face_t8get_upemEv.exit._crit_edge.i57.us ]
  store float %i.dz, ptr %i.v, align 4, !tbaa !1017
  %i.ea = load atomic ptr, ptr %i.w acquire, align 8 ; 3 uses
  %.not.i.i.i.i59.us = icmp eq ptr %i.ea, null
  %.not.i.i.i.i.i.i.i.i60.us = icmp eq ptr %i.ea, @_hb_NullPool
  %or.cond.i.i.i.i61.us = or i1 %.not.i.i.i.i59.us, %.not.i.i.i.i.i.i.i.i60.us
  br i1 %or.cond.i.i.i.i61.us, label %_ZN9hb_font_t7changedEv.exit62.us, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @free(ptr noundef nonnull %i.ea) #59
  br label %_ZN9hb_font_t7changedEv.exit62.us

_ZN9hb_font_t7changedEv.exit62.us:                ; preds = %bb.as, %bb.ar
  store atomic ptr null, ptr %i.w monotonic, align 8
  %i.eb = load atomic ptr, ptr %i.x acquire, align 8 ; 0 uses
  store atomic ptr null, ptr %i.x monotonic, align 8
  %i.ec = atomicrmw add ptr %i.y, i32 1 acq_rel, align 4 ; 0 uses
  br label %hb_ot_font_set_funcs.exit44.us

hb_ot_font_set_funcs.exit44.us:                   ; preds = %_ZN9hb_font_t7changedEv.exit62.us, %_ZN12hb_ot_font_tD2Ev.exit84.us, %.critedge.us
  %i.ed = load ptr, ptr %i.n, align 8, !tbaa !638
  %.not28.us = icmp eq ptr %i.ed, @_ZL22_hb_font_funcs_default ; 2 uses
  %brmerge.not = and i1 %.not28.us, %.1
  br i1 %brmerge.not, label %.backedge.backedge, label %hb_ot_font_set_funcs.exit.thread.loopexit.split.loop.exit190

.split:                                           ; preds = %.backedge
  %i.ee = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @_ZL20supported_font_funcs, ptr noundef nonnull dereferenceable(1) %.2) #64
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.at, label %.critedge30

bb.at:                                            ; preds = %.split
  %i.eg = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #60 ; 11 uses
  %.not.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i, label %hb_ot_font_set_funcs.exit.thread, label %bb.au, !prof !267

bb.au:                                            ; preds = %bb.at
  %i.eh = load ptr, ptr %i.k, align 8, !tbaa !264
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 104
  store ptr %i.ei, ptr %i.eg, align 8, !tbaa !1060
  %i.ej = load atomic ptr, ptr @_ZL15static_ot_funcs acquire, align 8 ; 2 uses
  %.not19.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not19.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZL21_hb_ot_get_font_funcsv.exit.i, !prof !265

.lr.ph.i.i.i.i:                                   ; preds = %bb.au, %_ZN16hb_lazy_loader_tI15hb_font_funcs_t30hb_ot_font_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i.i.i.i
  %i.ek = tail call noundef ptr @_ZN30hb_ot_font_funcs_lazy_loader_t6createEv() ; 5 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not10.i.i.i.i, label %.thread.i.i.i.i, label %bb.av, !prof !267

bb.av:                                            ; preds = %.lr.ph.i.i.i.i
  %i.el = cmpxchg weak ptr @_ZL15static_ot_funcs, ptr null, ptr %i.ek acq_rel monotonic, align 8
  %i.em = extractvalue { ptr, i1 } %i.el, 1
  br i1 %i.em, label %_ZL21_hb_ot_get_font_funcsv.exit.i, label %bb.aw, !prof !268

.thread.i.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i
  %i.en = cmpxchg weak ptr @_ZL15static_ot_funcs, ptr null, ptr @_ZL22_hb_font_funcs_default acq_rel monotonic, align 8
  %i.eo = extractvalue { ptr, i1 } %i.en, 1
  br i1 %i.eo, label %_ZL21_hb_ot_get_font_funcsv.exit.i, label %_ZN16hb_lazy_loader_tI15hb_font_funcs_t30hb_ot_font_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i.i.i.i, !prof !268

bb.aw:                                            ; preds = %bb.av
  %.not3.i.i.i.i.i = icmp eq ptr %i.ek, @_ZL22_hb_font_funcs_default
  br i1 %.not3.i.i.i.i.i, label %_ZN16hb_lazy_loader_tI15hb_font_funcs_t30hb_ot_font_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @hb_font_funcs_destroy(ptr noundef nonnull %i.ek)
  br label %_ZN16hb_lazy_loader_tI15hb_font_funcs_t30hb_ot_font_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i.i.i.i

_ZN16hb_lazy_loader_tI15hb_font_funcs_t30hb_ot_font_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i.i.i.i: ; preds = %bb.ax, %bb.aw, %.thread.i.i.i.i
  %i.ep = load atomic ptr, ptr @_ZL15static_ot_funcs acquire, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZL21_hb_ot_get_font_funcsv.exit.i, !prof !269

_ZL21_hb_ot_get_font_funcsv.exit.i:               ; preds = %_ZN16hb_lazy_loader_tI15hb_font_funcs_t30hb_ot_font_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i.i.i.i, %.thread.i.i.i.i, %bb.av, %bb.au
  %.19.ph.i.i.i.i = phi ptr [ %i.ej, %bb.au ], [ @_ZL22_hb_font_funcs_default, %.thread.i.i.i.i ], [ %i.ep, %_ZN16hb_lazy_loader_tI15hb_font_funcs_t30hb_ot_font_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i.i.i.i ], [ %i.ek, %bb.av ] ; 4 uses
  %i.eq = load atomic i8, ptr %i.a monotonic, align 4, !range !380, !noundef !293
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.bu, label %bb.ay

bb.ay:                                            ; preds = %_ZL21_hb_ot_get_font_funcsv.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 64 ; 2 uses
  br label %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i.i

_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i.i: ; preds = %bb.az, %bb.ay
  %i.et = load atomic ptr, ptr %i.es acquire, align 8 ; 4 uses
  %.not.i.i.i.i48 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i48, label %_ZN12hb_ot_font_t12draw_cache_tD2Ev.exit.i, label %bb.az

bb.az:                                            ; preds = %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i.i
  %i.eu = cmpxchg weak ptr %i.es, ptr %i.et, ptr null acq_rel monotonic, align 8
  %i.ev = extractvalue { ptr, i1 } %i.eu, 1
  br i1 %i.ev, label %bb.ba, label %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %.not.i.i.i.i.i.i = icmp eq ptr %i.et, @_hb_NullPool
  br i1 %.not.i.i.i.i.i.i, label %_ZN12hb_ot_font_t12draw_cache_tD2Ev.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @free(ptr noundef nonnull %i.et) #59
  br label %_ZN12hb_ot_font_t12draw_cache_tD2Ev.exit.i

_ZN12hb_ot_font_t12draw_cache_tD2Ev.exit.i:       ; preds = %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i.i, %bb.bb, %bb.ba
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eg, i64 48 ; 2 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bd, %_ZN12hb_ot_font_t12draw_cache_tD2Ev.exit.i
  %i.ex = load atomic ptr, ptr %i.ew acquire, align 8 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i1.i, label %_ZNK12hb_ot_font_t14origin_cache_t18clear_origin_cacheEv.exit.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ey = cmpxchg weak ptr %i.ew, ptr %i.ex, ptr null acq_rel monotonic, align 8
  %i.ez = extractvalue { ptr, i1 } %i.ey, 1
  br i1 %i.ez, label %bb.be, label %bb.bc

bb.be:                                            ; preds = %bb.bd
  tail call void @free(ptr noundef nonnull %i.ex) #59
  br label %_ZNK12hb_ot_font_t14origin_cache_t18clear_origin_cacheEv.exit.i.i.i

_ZNK12hb_ot_font_t14origin_cache_t18clear_origin_cacheEv.exit.i.i.i: ; preds = %bb.bc, %bb.be
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eg, i64 56 ; 2 uses
  br label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i.i

_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i.i: ; preds = %bb.bf, %_ZNK12hb_ot_font_t14origin_cache_t18clear_origin_cacheEv.exit.i.i.i
  %i.fb = load atomic ptr, ptr %i.fa acquire, align 8 ; 4 uses
  %.not.i1.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i1.i.i.i, label %_ZN12hb_ot_font_t14origin_cache_tD2Ev.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i.i
  %i.fc = cmpxchg weak ptr %i.fa, ptr %i.fb, ptr null acq_rel monotonic, align 8
  %i.fd = extractvalue { ptr, i1 } %i.fc, 1
  br i1 %i.fd, label %bb.bg, label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i.i

bb.bg:                                            ; preds = %bb.bf
  %.not.i.i.i.i.i2.i = icmp eq ptr %i.fb, @_hb_NullPool
  br i1 %.not.i.i.i.i.i2.i, label %_ZN12hb_ot_font_t14origin_cache_tD2Ev.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @free(ptr noundef nonnull %i.fb) #59
  br label %_ZN12hb_ot_font_t14origin_cache_tD2Ev.exit.i

_ZN12hb_ot_font_t14origin_cache_tD2Ev.exit.i:     ; preds = %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i.i, %bb.bh, %bb.bg
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eg, i64 32 ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bj, %_ZN12hb_ot_font_t14origin_cache_tD2Ev.exit.i
  %i.ff = load atomic ptr, ptr %i.fe acquire, align 8 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i3.i, label %_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fg = cmpxchg weak ptr %i.fe, ptr %i.ff, ptr null acq_rel monotonic, align 8
  %i.fh = extractvalue { ptr, i1 } %i.fg, 1
  br i1 %i.fh, label %bb.bk, label %bb.bi

bb.bk:                                            ; preds = %bb.bj
  tail call void @free(ptr noundef nonnull %i.ff) #59
  br label %_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i.i

_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i.i: ; preds = %bb.bi, %bb.bk
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eg, i64 40 ; 2 uses
  br label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i4.i

_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i4.i: ; preds = %bb.bl, %_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i.i
  %i.fj = load atomic ptr, ptr %i.fi acquire, align 8 ; 4 uses
  %.not.i1.i.i5.i = icmp eq ptr %i.fj, null
  br i1 %.not.i1.i.i5.i, label %_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i4.i
  %i.fk = cmpxchg weak ptr %i.fi, ptr %i.fj, ptr null acq_rel monotonic, align 8
  %i.fl = extractvalue { ptr, i1 } %i.fk, 1
  br i1 %i.fl, label %bb.bm, label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i4.i

bb.bm:                                            ; preds = %bb.bl
  %.not.i.i.i.i.i6.i = icmp eq ptr %i.fj, @_hb_NullPool
  br i1 %.not.i.i.i.i.i6.i, label %_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @free(ptr noundef nonnull %i.fj) #59
  br label %_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit.i

_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit.i:  ; preds = %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i4.i, %bb.bn, %bb.bm
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bp, %_ZN12hb_ot_font_t17direction_cache_tD2Ev.exit.i
  %i.fn = load atomic ptr, ptr %i.fm acquire, align 8 ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i7.i, label %_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i8.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fo = cmpxchg weak ptr %i.fm, ptr %i.fn, ptr null acq_rel monotonic, align 8
  %i.fp = extractvalue { ptr, i1 } %i.fo, 1
  br i1 %i.fp, label %bb.bq, label %bb.bo

bb.bq:                                            ; preds = %bb.bp
  tail call void @free(ptr noundef nonnull %i.fn) #59
  br label %_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i8.i

_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i8.i: ; preds = %bb.bo, %bb.bq
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eg, i64 24 ; 2 uses
  br label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i9.i

_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i9.i: ; preds = %bb.br, %_ZNK12hb_ot_font_t17direction_cache_t19clear_advance_cacheEv.exit.i.i8.i
  %i.fr = load atomic ptr, ptr %i.fq acquire, align 8 ; 4 uses
  %.not.i1.i.i10.i = icmp eq ptr %i.fr, null
  br i1 %.not.i1.i.i10.i, label %_ZN12hb_ot_font_tD2Ev.exit, label %bb.br

bb.br:                                            ; preds = %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i9.i
  %i.fs = cmpxchg weak ptr %i.fq, ptr %i.fr, ptr null acq_rel monotonic, align 8
  %i.ft = extractvalue { ptr, i1 } %i.fs, 1
  br i1 %i.ft, label %bb.bs, label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i9.i

bb.bs:                                            ; preds = %bb.br
  %.not.i.i.i.i.i11.i = icmp eq ptr %i.fr, @_hb_NullPool
  br i1 %.not.i.i.i.i.i11.i, label %_ZN12hb_ot_font_tD2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @free(ptr noundef nonnull %i.fr) #59
  br label %_ZN12hb_ot_font_tD2Ev.exit

_ZN12hb_ot_font_tD2Ev.exit:                       ; preds = %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit.i.i.i9.i, %bb.bs, %bb.bt
  tail call void @free(ptr noundef nonnull %i.eg) #59
  br label %hb_ot_font_set_funcs.exit.thread

bb.bu:                                            ; preds = %_ZL21_hb_ot_get_font_funcsv.exit.i
  %i.fu = load ptr, ptr %i.l, align 8, !tbaa !1061 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.fu, null
  br i1 %.not.i4.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fv = load ptr, ptr %i.m, align 8, !tbaa !639
  tail call void %i.fu(ptr noundef %i.fv) #59, !inline_history !2505
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.fw = load atomic i32, ptr %.19.ph.i.i.i.i monotonic, align 4 ; 0 uses
  %i.fx = load atomic i32, ptr %.19.ph.i.i.i.i monotonic, align 4
  %.not.i7.i.i.i.i = icmp eq i32 %i.fx, 0
  br i1 %.not.i7.i.i.i.i, label %hb_font_funcs_reference.exit.i.i, label %bb.bx, !prof !267

bb.bx:                                            ; preds = %bb.bw
  %i.fy = atomicrmw add ptr %.19.ph.i.i.i.i, i32 1 acq_rel, align 4 ; 0 uses
  br label %hb_font_funcs_reference.exit.i.i

hb_font_funcs_reference.exit.i.i:                 ; preds = %bb.bx, %bb.bw
  %i.fz = load ptr, ptr %i.n, align 8, !tbaa !638
  tail call void @hb_font_funcs_destroy(ptr noundef %i.fz)
  store ptr %.19.ph.i.i.i.i, ptr %i.n, align 8, !tbaa !638
  store ptr %i.eg, ptr %i.m, align 8, !tbaa !639
  store ptr @_ZL19_hb_ot_font_destroyPv, ptr %i.l, align 8, !tbaa !1061
  %i.ga = load ptr, ptr %i.k, align 8, !tbaa !264 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 20 ; 2 uses
  %i.gc = load atomic i32, ptr %i.gb monotonic, align 4 ; 2 uses
  %.not.i.i45 = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i45, label %bb.by, label %_ZNK9hb_face_t8get_upemEv.exit.i, !prof !267

bb.by:                                            ; preds = %hb_font_funcs_reference.exit.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 112 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 104
  %i.gf = load atomic ptr, ptr %i.gd acquire, align 8 ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %i.gf, null
  br i1 %.not14.i.i.i.i, label %.lr.ph.i.i.i.i86, label %_ZNK9hb_face_t9load_upemEv.exit, !prof !265

.lr.ph.i.i.i.i86:                                 ; preds = %bb.by, %bb.cc
  %i.gg = load ptr, ptr %i.ge, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i.i.i, label %_ZNK9hb_face_t9load_upemEv.exit, label %bb.bz, !prof !267

bb.bz:                                            ; preds = %.lr.ph.i.i.i.i86
  %i.gh = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4headELj1ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.gg) ; 2 uses
  %.not10.i.i.i.i87 = icmp eq ptr %i.gh, null
  br i1 %.not10.i.i.i.i87, label %bb.ca, label %bb.cb, !prof !267

bb.ca:                                            ; preds = %bb.bz
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.07.i.i.i.i = phi ptr [ @_hb_NullPool, %bb.ca ], [ %i.gh, %bb.bz ] ; 3 uses
  %i.gi = cmpxchg weak ptr %i.gd, ptr null, ptr %.07.i.i.i.i acq_rel monotonic, align 8
  %i.gj = extractvalue { ptr, i1 } %i.gi, 1
  br i1 %i.gj, label %_ZNK9hb_face_t9load_upemEv.exit, label %bb.cc, !prof !268

bb.cc:                                            ; preds = %bb.cb
  tail call void @_ZN16hb_lazy_loader_tIN2OT4headE22hb_table_lazy_loader_tIS1_Lj1ELb1EE9hb_face_tLj1E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i.i)
  %i.gk = load atomic ptr, ptr %i.gd acquire, align 8 ; 2 uses
  %.not.i.i.i.i88 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i.i88, label %.lr.ph.i.i.i.i86, label %_ZNK9hb_face_t9load_upemEv.exit, !prof !269

_ZNK9hb_face_t9load_upemEv.exit:                  ; preds = %.lr.ph.i.i.i.i86, %bb.cb, %bb.cc, %bb.by
  %.19.ph.i.i.i.i85 = phi ptr [ %i.gf, %bb.by ], [ %.07.i.i.i.i, %bb.cb ], [ %i.gk, %bb.cc ], [ @_hb_NullPool, %.lr.ph.i.i.i.i86 ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i.i85, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !275
  %i.gn = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i.i85, i64 24
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !276
  %i.gp = icmp ult i32 %i.go, 54
  %spec.select.i.i.i.i.i.i = select i1 %i.gp, ptr @_hb_NullPool, ptr %i.gm
  %i.gq = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 18
  %i.gr = load i16, ptr %i.gq, align 1, !tbaa !283
  %i.gs = tail call noundef i16 @llvm.bswap.i16(i16 %i.gr) ; 2 uses
  %i.gt = add i16 %i.gs, -16
  %or.cond.i.i = icmp ult i16 %i.gt, 16369
  %narrow.i.i = select i1 %or.cond.i.i, i16 %i.gs, i16 1000
  %i.gu = zext nneg i16 %narrow.i.i to i32        ; 2 uses
  store atomic i32 %i.gu, ptr %i.gb monotonic, align 4
  br label %_ZNK9hb_face_t8get_upemEv.exit.i

_ZNK9hb_face_t8get_upemEv.exit.i:                 ; preds = %_ZNK9hb_face_t9load_upemEv.exit, %hb_font_funcs_reference.exit.i.i
  %.0.i.i = phi i32 [ %i.gu, %_ZNK9hb_face_t9load_upemEv.exit ], [ %i.gc, %hb_font_funcs_reference.exit.i.i ]
  %i.gv = uitofp i32 %.0.i.i to float
  %i.gw = load <2 x i32>, ptr %i.o, align 8, !tbaa !324 ; 6 uses
  %i.gx = sitofp <2 x i32> %i.gw to <2 x float>   ; 3 uses
  %i.gy = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ha = fdiv <2 x float> %i.gx, %i.gz
  store <2 x float> %i.ha, ptr %i.p, align 8, !tbaa !304
  %i.hb = icmp slt <2 x i32> %i.gw, zeroinitializer
  %i.hc = sub nsw <2 x i32> zeroinitializer, %i.gw
  %i.hd = zext <2 x i32> %i.hc to <2 x i64>
  %i.he = mul nsw <2 x i64> %i.hd, splat (i64 -65536)
  %i.hf = zext <2 x i32> %i.gw to <2 x i64>
  %i.hg = shl nuw nsw <2 x i64> %i.hf, splat (i64 16)
  %i.hh = select <2 x i1> %i.hb, <2 x i64> %i.he, <2 x i64> %i.hg
  %i.hi = sitofp <2 x i64> %i.hh to <2 x float>
  %i.hj = fdiv <2 x float> %i.hi, %i.gz
  %i.hk = fptosi <2 x float> %i.hj to <2 x i64>
  store <2 x i64> %i.hk, ptr %i.q, align 8, !tbaa !357
  %i.hl = load <2 x float>, ptr %i.r, align 4, !tbaa !304 ; 3 uses
  %i.hm = extractelement <2 x float> %i.hl, i64 0
  %i.hn = fcmp une float %i.hm, 0.000000e+00
  %i.ho = extractelement <2 x float> %i.hl, i64 1
  %i.hp = fcmp une float %i.ho, 0.000000e+00
  %or.cond.i = select i1 %i.hn, i1 true, i1 %i.hp
  br i1 %or.cond.i, label %_ZNK9hb_face_t8get_upemEv.exit._crit_edge.i, label %bb.cd

bb.cd:                                            ; preds = %_ZNK9hb_face_t8get_upemEv.exit.i
  %i.hq = load float, ptr %i.s, align 8, !tbaa !1062
  %i.hr = fcmp une float %i.hq, 0.000000e+00
  %i.hs = zext i1 %i.hr to i8
  br label %_ZNK9hb_face_t8get_upemEv.exit._crit_edge.i

_ZNK9hb_face_t8get_upemEv.exit._crit_edge.i:      ; preds = %bb.cd, %_ZNK9hb_face_t8get_upemEv.exit.i
  %i.ht = phi i8 [ 1, %_ZNK9hb_face_t8get_upemEv.exit.i ], [ %i.hs, %bb.cd ]
  store i8 %i.ht, ptr %i.t, align 8, !tbaa !965
  %i.hu = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.gw, i1 true)
  %i.hv = uitofp nneg <2 x i32> %i.hu to <2 x float>
  %i.hw = fmul <2 x float> %i.hl, %i.hv
  %i.hx = fadd <2 x float> %i.hw, splat (float 5.000000e-01)
  %i.hy = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.hx)
  %i.hz = fptosi <2 x float> %i.hy to <2 x i32>
  store <2 x i32> %i.hz, ptr %i.u, align 8, !tbaa !324
  %i.ia = extractelement <2 x i32> %i.gw, i64 1
  %.not.i46 = icmp eq i32 %i.ia, 0
  br i1 %.not.i46, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZNK9hb_face_t8get_upemEv.exit._crit_edge.i
  %i.ib = load float, ptr %i.s, align 8, !tbaa !1062
  %i.ic = extractelement <2 x float> %i.gx, i64 0
  %i.id = fmul float %i.ib, %i.ic
  %i.ie = extractelement <2 x float> %i.gx, i64 1
  %i.if = fdiv float %i.id, %i.ie
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %_ZNK9hb_face_t8get_upemEv.exit._crit_edge.i
  %i.ig = phi float [ %i.if, %bb.ce ], [ 0.000000e+00, %_ZNK9hb_face_t8get_upemEv.exit._crit_edge.i ]
  store float %i.ig, ptr %i.v, align 4, !tbaa !1017
  %i.ih = load atomic ptr, ptr %i.w acquire, align 8 ; 3 uses
  %.not.i.i.i.i47 = icmp eq ptr %i.ih, null
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ih, @_hb_NullPool
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i47, %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN9hb_font_t7changedEv.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @free(ptr noundef nonnull %i.ih) #59
  br label %_ZN9hb_font_t7changedEv.exit

_ZN9hb_font_t7changedEv.exit:                     ; preds = %bb.cf, %bb.cg
  store atomic ptr null, ptr %i.w monotonic, align 8
  %i.ii = load atomic ptr, ptr %i.x acquire, align 8 ; 0 uses
  store atomic ptr null, ptr %i.x monotonic, align 8
  %i.ij = atomicrmw add ptr %i.y, i32 1 acq_rel, align 4 ; 0 uses
  br label %hb_ot_font_set_funcs.exit.thread

.critedge30:                                      ; preds = %.split
  br i1 %.1, label %.backedge.backedge, label %hb_ot_font_set_funcs.exit.thread

.backedge.backedge:                               ; preds = %.critedge30, %hb_ot_font_set_funcs.exit44.us
  br label %.backedge

hb_ot_font_set_funcs.exit.thread.loopexit.split.loop.exit190: ; preds = %hb_ot_font_set_funcs.exit44.us
  %not..not28.us.le = xor i1 %.not28.us, true
  %.mux.le = zext i1 %not..not28.us.le to i32
  br label %hb_ot_font_set_funcs.exit.thread

hb_ot_font_set_funcs.exit.thread:                 ; preds = %.critedge30, %hb_ot_font_set_funcs.exit.thread.loopexit.split.loop.exit190, %_ZN12hb_ot_font_tD2Ev.exit, %_ZN9hb_font_t7changedEv.exit, %bb.at, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 1, %bb.at ], [ 1, %_ZN12hb_ot_font_tD2Ev.exit ], [ 1, %_ZN9hb_font_t7changedEv.exit ], [ %.mux.le, %hb_ot_font_set_funcs.exit.thread.loopexit.split.loop.exit190 ], [ 0, %.critedge30 ]
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_font_set_var_named_instance(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i8, ptr %i.a monotonic, align 1, !range !380, !noundef !293
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1049
  %i.f = icmp eq i32 %i.e, %1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %1, ptr %i.d, align 4, !tbaa !1049
  tail call void @hb_font_set_variations(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_font_set_variations(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !range !380, !noundef !293
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !264  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 248 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.i = load atomic ptr, ptr %i.g acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS9_v.exit, !prof !265

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.f
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS9_v.exit, label %bb.c, !prof !267

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.k = tail call noundef ptr @_ZN22hb_table_lazy_loader_tIN2OT4fvarELj18ELb1EE6createEP9hb_face_t(ptr noundef nonnull %i.j) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i.i.i, label %bb.d, label %bb.e, !prof !267

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %i.l = cmpxchg weak ptr %i.g, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.m = extractvalue { ptr, i1 } %i.l, 1
  br i1 %i.m, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS9_v.exit, label %bb.f, !prof !268

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tE10do_destroyEPS5_(ptr noundef nonnull %.07.i.i.i)
  %i.n = load atomic ptr, ptr %i.g acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS9_v.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS9_v.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.f, %bb.b
  %.19.ph.i.i.i = phi ptr [ %i.i, %bb.b ], [ @_hb_NullPool, %.lr.ph.i.i.i ], [ %i.n, %bb.f ], [ %.07.i.i.i, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !275
  %i.q = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !276
  %i.s = icmp ult i32 %i.r, 16
  %spec.select.i.i.i.i.i = select i1 %i.s, ptr @_hb_NullPool, ptr %i.p ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 4
  %i.u = load i16, ptr %i.t, align 1, !tbaa !283  ; 2 uses
  %i.v = icmp eq i16 %i.u, 0
  %i.w = tail call i16 @llvm.bswap.i16(i16 %i.u)
  %i.x = zext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 %i.x
  %.0.i.i.i = select i1 %i.v, ptr @_hb_NullPool, ptr %i.y, !prof !267 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 8
  %i.aa = load i16, ptr %i.z, align 1, !tbaa !283 ; 3 uses
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa) ; 7 uses
  %.sroa.5.8.extract.trunc = zext i16 %i.ab to i32 ; 3 uses
  %.not = icmp ne i16 %i.aa, 0                    ; 3 uses
  br i1 %.not, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tEdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS9_v.exit
  %i.ac = zext i16 %i.ab to i64                   ; 2 uses
  %i.ad = tail call noalias noundef ptr @calloc(i64 noundef %i.ac, i64 noundef 4) #60 ; 3 uses
  %i.ae = tail call noalias noundef ptr @calloc(i64 noundef %i.ac, i64 noundef 4) #60 ; 5 uses
  %i.af = icmp eq ptr %i.ad, null
  %i.ag = icmp eq ptr %i.ae, null
  %.not50 = or i1 %i.af, %i.ag
  br i1 %.not50, label %bb.h, label %.lr.ph.preheader, !prof !267

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef %i.ad) #59
  tail call void @free(ptr noundef %i.ae) #59
  br label %bb.p

.lr.ph.preheader:                                 ; preds = %bb.g
  %wide.trip.count = zext i16 %i.ab to i64        ; 3 uses
  %min.iters.check = icmp ult i16 %i.ab, 5
  br i1 %min.iters.check, label %.lr.ph.preheader90, label %vector.ph

.lr.ph.preheader90:                               ; preds = %vector.body, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.ah = and i64 %wide.trip.count, 3             ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  %i.aj = select i1 %i.ai, i64 4, i64 %i.ah
  %n.vec = sub nsw i64 %wide.trip.count, %i.aj    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ak = getelementptr inbounds nuw [20 x i8], ptr %.0.i.i.i, i64 %index
  %i.al = getelementptr inbounds nuw [20 x i8], ptr %.0.i.i.i, i64 %index
end_hunk_0
begin_hunk_1_@hb_font_create_sub_font:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store ptr @_ZL22_hb_font_funcs_default, ptr %i.o, align 8, !tbaa !638
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store ptr %i.c, ptr %i.p, align 8, !tbaa !1046
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  %i.r = load atomic i32, ptr %i.q monotonic, align 4 ; 2 uses
  %.not.i22.i = icmp eq i32 %i.r, 0
  br i1 %.not.i22.i, label %bb.i, label %_ZNK9hb_face_t8get_upemEv.exit.i, !prof !267

bb.i:                                             ; preds = %hb_face_reference.exit.i
  %i.s = tail call noundef i32 @_ZNK9hb_face_t9load_upemEv(ptr noundef nonnull align 8 dereferenceable(448) %.0.i)
  br label %_ZNK9hb_face_t8get_upemEv.exit.i

_ZNK9hb_face_t8get_upemEv.exit.i:                 ; preds = %bb.i, %hb_face_reference.exit.i
  %.0.i.i = phi i32 [ %i.s, %bb.i ], [ %i.r, %hb_face_reference.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %.0.i.i, ptr %i.t, align 4, !tbaa !954
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 %.0.i.i, ptr %i.u, align 8, !tbaa !951
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i8 1, ptr %i.v, align 4, !tbaa !950
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store <2 x float> splat (float 1.000000e+00), ptr %i.w, align 8, !tbaa !304
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i64 65536, ptr %i.x, align 8, !tbaa !1047
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i64 65536, ptr %i.y, align 8, !tbaa !1048
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  store i32 -1, ptr %i.z, align 4, !tbaa !1049
  br label %_ZL15_hb_font_createP9hb_face_t.exit

_ZL15_hb_font_createP9hb_face_t.exit:             ; preds = %bb.e, %_ZNK9hb_face_t8get_upemEv.exit.i
  %.019.i = phi ptr [ %i.c, %_ZNK9hb_face_t8get_upemEv.exit.i ], [ @_hb_Null_hb_font_t, %bb.e ] ; 19 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.019.i, i64 4
  %i.ab = load atomic i8, ptr %i.aa monotonic, align 1, !range !380, !noundef !293
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.j, label %bb.o, !prof !268

bb.j:                                             ; preds = %_ZL15_hb_font_createP9hb_face_t.exit
  %i.ad = load atomic i32, ptr %.0 monotonic, align 8 ; 0 uses
  %i.ae = load atomic i32, ptr %.0 monotonic, align 8
  %.not.i7.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i7.i.i, label %hb_font_reference.exit, label %bb.k, !prof !267

bb.k:                                             ; preds = %bb.j
  %i.af = atomicrmw add ptr %.0, i32 1 acq_rel, align 4 ; 0 uses
  br label %hb_font_reference.exit

hb_font_reference.exit:                           ; preds = %bb.j, %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %.019.i, i64 24
  store ptr %.0, ptr %i.ag, align 8, !tbaa !952
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %.019.i, i64 40
  %i.aj = load <2 x i32>, ptr %i.ah, align 8, !tbaa !324
  store <2 x i32> %i.aj, ptr %i.ai, align 8, !tbaa !324
  %i.ak = getelementptr inbounds nuw i8, ptr %.0, i64 52
  %i.al = getelementptr inbounds nuw i8, ptr %.019.i, i64 52
  %i.am = load <2 x float>, ptr %i.ak, align 4, !tbaa !304
  store <2 x float> %i.am, ptr %i.al, align 4, !tbaa !304
  %i.an = getelementptr inbounds nuw i8, ptr %.0, i64 60
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !950, !range !380, !noundef !293
  %i.ap = getelementptr inbounds nuw i8, ptr %.019.i, i64 60
  store i8 %i.ao, ptr %i.ap, align 4, !tbaa !950
  %i.aq = getelementptr inbounds nuw i8, ptr %.0, i64 72
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !1062
  %i.as = getelementptr inbounds nuw i8, ptr %.019.i, i64 72
  store float %i.ar, ptr %i.as, align 8, !tbaa !1062
  %i.at = getelementptr inbounds nuw i8, ptr %.0, i64 104
  %i.au = getelementptr inbounds nuw i8, ptr %.019.i, i64 104
  %i.av = load <2 x i32>, ptr %i.at, align 8, !tbaa !324
  store <2 x i32> %i.av, ptr %i.au, align 8, !tbaa !324
  %i.aw = getelementptr inbounds nuw i8, ptr %.0, i64 112
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !613
  %i.ay = getelementptr inbounds nuw i8, ptr %.019.i, i64 112
  store float %i.ax, ptr %i.ay, align 8, !tbaa !613
  %i.az = getelementptr inbounds nuw i8, ptr %.0, i64 124
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !310 ; 3 uses
  %.not50 = icmp eq i32 %i.ba, 0
  br i1 %.not50, label %bb.n, label %bb.l

bb.l:                                             ; preds = %hb_font_reference.exit
  %i.bb = zext i32 %i.ba to i64                   ; 4 uses
  %i.bc = tail call noalias noundef ptr @calloc(i64 noundef %i.bb, i64 noundef 4) #60 ; 5 uses
  %i.bd = tail call noalias noundef ptr @calloc(i64 noundef %i.bb, i64 noundef 4) #60 ; 4 uses
  %i.be = icmp ne ptr %i.bc, null
  %i.bf = icmp ne ptr %i.bd, null
  %i.bg = and i1 %i.be, %i.bf
  br i1 %i.bg, label %_ZN9hb_iter_tI10hb_array_tIiERiEdeEv.exit.i.preheader.i, label %bb.m, !prof !268

_ZN9hb_iter_tI10hb_array_tIiERiEdeEv.exit.i.preheader.i: ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %.0, i64 128
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !309
  %i.bj = shl nuw nsw i64 %i.bb, 2                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr readonly align 1 %i.bi, i64 %i.bj, i1 false), !alias.scope !2516
  %i.bk = getelementptr inbounds nuw i8, ptr %.0, i64 136
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1063
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr readonly align 1 %i.bl, i64 %i.bj, i1 false), !alias.scope !2517
  %i.bm = getelementptr inbounds nuw i8, ptr %.019.i, i64 128 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !309
  tail call void @free(ptr noundef %i.bn) #59
  %i.bo = getelementptr inbounds nuw i8, ptr %.019.i, i64 136 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1063
  tail call void @free(ptr noundef %i.bp) #59
  store ptr %i.bc, ptr %i.bm, align 8, !tbaa !309
  store ptr %i.bd, ptr %i.bo, align 8, !tbaa !1063
  %i.bq = getelementptr inbounds nuw i8, ptr %.019.i, i64 124
  store i32 %i.ba, ptr %i.bq, align 4, !tbaa !310
  br label %_ZN9hb_iter_tI10hb_array_tIiERiEdeEv.exit.i.i

_ZN9hb_iter_tI10hb_array_tIiERiEdeEv.exit.i.i:    ; preds = %_ZNR9hb_iter_tI10hb_array_tIiERiEppEv.exit.i.i, %_ZN9hb_iter_tI10hb_array_tIiERiEdeEv.exit.i.preheader.i
  %.sroa.0.010.i.i = phi ptr [ %i.bs, %_ZNR9hb_iter_tI10hb_array_tIiERiEppEv.exit.i.i ], [ %i.bc, %_ZN9hb_iter_tI10hb_array_tIiERiEdeEv.exit.i.preheader.i ] ; 2 uses
  %.sroa.6.09.i.i = phi i64 [ %.sroa.6.8.insert.ext.i.i, %_ZNR9hb_iter_tI10hb_array_tIiERiEppEv.exit.i.i ], [ %i.bb, %_ZN9hb_iter_tI10hb_array_tIiERiEdeEv.exit.i.preheader.i ]
  %.val6.i.i = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !324
  %.not7.not.i.i = icmp eq i32 %.val6.i.i, 0
  br i1 %.not7.not.i.i, label %_ZNR9hb_iter_tI10hb_array_tIiERiEppEv.exit.i.i, label %_ZL25_hb_font_adopt_var_coordsP9hb_font_tPiPfj.exit

_ZNR9hb_iter_tI10hb_array_tIiERiEppEv.exit.i.i:   ; preds = %_ZN9hb_iter_tI10hb_array_tIiERiEdeEv.exit.i.i
  %i.br = add nuw nsw i64 %.sroa.6.09.i.i, 4294967295
  %.sroa.6.8.insert.ext.i.i = and i64 %i.br, 4294967295 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 4
  %.not.not.i.i = icmp eq i64 %.sroa.6.8.insert.ext.i.i, 0
  br i1 %.not.not.i.i, label %_ZL25_hb_font_adopt_var_coordsP9hb_font_tPiPfj.exit, label %_ZN9hb_iter_tI10hb_array_tIiERiEdeEv.exit.i.i, !llvm.loop !80

_ZL25_hb_font_adopt_var_coordsP9hb_font_tPiPfj.exit: ; preds = %_ZN9hb_iter_tI10hb_array_tIiERiEdeEv.exit.i.i, %_ZNR9hb_iter_tI10hb_array_tIiERiEppEv.exit.i.i
  %.not.lcssa.i.i = phi i8 [ 1, %_ZN9hb_iter_tI10hb_array_tIiERiEdeEv.exit.i.i ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIiERiEppEv.exit.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.019.i, i64 120
  store i8 %.not.lcssa.i.i, ptr %i.bt, align 8, !tbaa !1064
  tail call void @_ZN9hb_font_t7changedEv(ptr noundef nonnull align 8 dereferenceable(192) %.019.i)
  %i.bu = getelementptr inbounds nuw i8, ptr %.019.i, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.019.i, i64 20
  %i.bw = load i32, ptr %i.bu, align 8, !tbaa !324
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !324
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef %i.bc) #59
  tail call void @free(ptr noundef %i.bd) #59
  br label %bb.n

bb.n:                                             ; preds = %_ZL25_hb_font_adopt_var_coordsP9hb_font_tPiPfj.exit, %bb.m, %hb_font_reference.exit
  tail call void @_ZN9hb_font_t7changedEv(ptr noundef nonnull align 8 dereferenceable(192) %.019.i)
  %i.bx = getelementptr inbounds nuw i8, ptr %.019.i, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %.019.i, i64 20
  %i.bz = load i32, ptr %i.bx, align 8, !tbaa !324
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !324
  br label %bb.o

bb.o:                                             ; preds = %_ZL15_hb_font_createP9hb_face_t.exit, %bb.n
  ret ptr %.019.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef ptr @hb_font_reference(ptr nofree noundef returned captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #6 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %_ZL19hb_object_referenceI9hb_font_tEPT_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 0 uses
  %i.b = load atomic i32, ptr %0 monotonic, align 4
  %.not.i7.i = icmp eq i32 %i.b, 0
  br i1 %.not.i7.i, label %_ZL19hb_object_referenceI9hb_font_tEPT_S2_.exit, label %bb.c, !prof !267

bb.c:                                             ; preds = %bb.b
  %i.c = atomicrmw add ptr %0, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZL19hb_object_referenceI9hb_font_tEPT_S2_.exit

_ZL19hb_object_referenceI9hb_font_tEPT_S2_.exit:  ; preds = %bb.a, %bb.b, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9hb_font_t7changedEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load atomic i32, ptr %i.c monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZNK9hb_face_t8get_upemEv.exit, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZNK9hb_face_t9load_upemEv(ptr noundef nonnull align 8 dereferenceable(448) %i.b)
  br label %_ZNK9hb_face_t8get_upemEv.exit

_ZNK9hb_face_t8get_upemEv.exit:                   ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.d, %bb.a ]
  %i.f = uitofp i32 %.0.i to float
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = load <2 x i32>, ptr %i.g, align 8, !tbaa !324 ; 6 uses
  %i.l = sitofp <2 x i32> %i.k to <2 x float>     ; 3 uses
  %i.m = insertelement <2 x float> poison, float %i.f, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.o = fdiv <2 x float> %i.l, %i.n
  store <2 x float> %i.o, ptr %i.h, align 8, !tbaa !304
  %i.p = icmp slt <2 x i32> %i.k, zeroinitializer
  %i.q = sub nsw <2 x i32> zeroinitializer, %i.k
  %i.r = zext <2 x i32> %i.q to <2 x i64>
  %i.s = mul nsw <2 x i64> %i.r, splat (i64 -65536)
  %i.t = zext <2 x i32> %i.k to <2 x i64>
  %i.u = shl nuw nsw <2 x i64> %i.t, splat (i64 16)
  %i.v = select <2 x i1> %i.p, <2 x i64> %i.s, <2 x i64> %i.u
  %i.w = sitofp <2 x i64> %i.v to <2 x float>
  %i.x = fdiv <2 x float> %i.w, %i.n
  %i.y = fptosi <2 x float> %i.x to <2 x i64>
  store <2 x i64> %i.y, ptr %i.i, align 8, !tbaa !357
  %i.z = load <2 x float>, ptr %i.j, align 4, !tbaa !304 ; 3 uses
  %i.aa = extractelement <2 x float> %i.z, i64 0
  %i.ab = fcmp une float %i.aa, 0.000000e+00
  %i.ac = extractelement <2 x float> %i.z, i64 1
  %i.ad = fcmp une float %i.ac, 0.000000e+00
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ad
  br i1 %or.cond, label %_ZNK9hb_face_t8get_upemEv.exit._crit_edge, label %bb.c

bb.c:                                             ; preds = %_ZNK9hb_face_t8get_upemEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load float, ptr %i.ae, align 8, !tbaa !1062
  %i.ag = fcmp une float %i.af, 0.000000e+00
  %i.ah = zext i1 %i.ag to i8
  br label %_ZNK9hb_face_t8get_upemEv.exit._crit_edge

_ZNK9hb_face_t8get_upemEv.exit._crit_edge:        ; preds = %_ZNK9hb_face_t8get_upemEv.exit, %bb.c
  %i.ai = phi i8 [ 1, %_ZNK9hb_face_t8get_upemEv.exit ], [ %i.ah, %bb.c ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.ai, ptr %i.aj, align 8, !tbaa !965
  %i.ak = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.k, i1 true)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = uitofp nneg <2 x i32> %i.ak to <2 x float>
  %i.an = fmul <2 x float> %i.z, %i.am
  %i.ao = fadd <2 x float> %i.an, splat (float 5.000000e-01)
  %i.ap = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ao)
  %i.aq = fptosi <2 x float> %i.ap to <2 x i32>
  store <2 x i32> %i.aq, ptr %i.al, align 8, !tbaa !324
  %i.ar = extractelement <2 x i32> %i.k, i64 1
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK9hb_face_t8get_upemEv.exit._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.at = load float, ptr %i.as, align 8, !tbaa !1062
  %i.au = extractelement <2 x float> %i.l, i64 0
  %i.av = fmul float %i.at, %i.au
  %i.aw = extractelement <2 x float> %i.l, i64 1
  %i.ax = fdiv float %i.av, %i.aw
  br label %bb.e

bb.e:                                             ; preds = %_ZNK9hb_face_t8get_upemEv.exit._crit_edge, %bb.d
  %i.ay = phi float [ %i.ax, %bb.d ], [ 0.000000e+00, %_ZNK9hb_face_t8get_upemEv.exit._crit_edge ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float %i.ay, ptr %i.az, align 4, !tbaa !1017
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bb = load atomic ptr, ptr %i.ba acquire, align 8 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bb, null
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bb, @_hb_NullPool
  %or.cond.i.i.i = or i1 %.not.i.i.i, %.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN26hb_shaper_object_dataset_tI9hb_font_tE4finiEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.bb) #59
  br label %_ZN26hb_shaper_object_dataset_tI9hb_font_tE4finiEv.exit

_ZN26hb_shaper_object_dataset_tI9hb_font_tE4finiEv.exit: ; preds = %bb.e, %bb.f
  store atomic ptr null, ptr %i.ba monotonic, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bd = load atomic ptr, ptr %i.bc acquire, align 8 ; 0 uses
  store atomic ptr null, ptr %i.bc monotonic, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = atomicrmw add ptr %i.be, i32 1 acq_rel, align 4 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_font_destroy(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not.i.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i.i, label %common.ret16, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 0 uses
  %i.b = load atomic i32, ptr %0 monotonic, align 4
  %.not.i7.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i7.i.i, label %common.ret16, label %_ZL24hb_object_should_destroyI9hb_font_tEbPT_.exit.i, !prof !267

_ZL24hb_object_should_destroyI9hb_font_tEbPT_.exit.i: ; preds = %bb.b
  %i.c = atomicrmw add ptr %0, i32 -1 acq_rel, align 4
  %.not6.i.i = icmp eq i32 %i.c, 1
  br i1 %.not6.i.i, label %bb.c, label %common.ret16

bb.c:                                             ; preds = %_ZL24hb_object_should_destroyI9hb_font_tEbPT_.exit.i
  store atomic i32 -57005, ptr %0 monotonic, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 5 uses
  %.not.i.i3.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i3.i, label %_ZL17hb_object_destroyI9hb_font_tEbPT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.e)
  %i.g = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.e) #59 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.e) #59
  store atomic ptr null, ptr %i.d monotonic, align 8
  br label %_ZL17hb_object_destroyI9hb_font_tEbPT_.exit

_ZL17hb_object_destroyI9hb_font_tEbPT_.exit:      ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.i = load atomic ptr, ptr %i.h acquire, align 8 ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.i, null
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, @_hb_NullPool
  %or.cond.i.i.i = or i1 %.not.i.i.i11, %.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN26hb_shaper_object_dataset_tI9hb_font_tE4finiEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZL17hb_object_destroyI9hb_font_tEbPT_.exit
  tail call void @free(ptr noundef nonnull %i.i) #59
  br label %_ZN26hb_shaper_object_dataset_tI9hb_font_tE4finiEv.exit

_ZN26hb_shaper_object_dataset_tI9hb_font_tE4finiEv.exit: ; preds = %_ZL17hb_object_destroyI9hb_font_tEbPT_.exit, %bb.e
  store atomic ptr null, ptr %i.h monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.k = load atomic ptr, ptr %i.j acquire, align 8 ; 0 uses
  store atomic ptr null, ptr %i.j monotonic, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1061 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN26hb_shaper_object_dataset_tI9hb_font_tE4finiEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !639
  tail call void %i.m(ptr noundef %i.o) #59
  br label %bb.g

common.ret16:                                     ; preds = %bb.a, %bb.b, %_ZL24hb_object_should_destroyI9hb_font_tEbPT_.exit.i, %bb.g
  ret void

bb.g:                                             ; preds = %bb.f, %_ZN26hb_shaper_object_dataset_tI9hb_font_tE4finiEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !952
  tail call void @hb_font_destroy(ptr noundef %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !264
  tail call void @hb_face_destroy(ptr noundef %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !638
  tail call void @hb_font_funcs_destroy(ptr noundef %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !309
  tail call void @free(ptr noundef %i.w) #59
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1063
  tail call void @free(ptr noundef %i.y) #59
  tail call void @free(ptr noundef nonnull %0) #59
  br label %common.ret16
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_font_set_user_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i8, ptr %i.a monotonic, align 1, !range !380, !noundef !293
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9hb_font_t7changedEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = load atomic i32, ptr %0 monotonic, align 4
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZL23hb_object_set_user_dataI9hb_font_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit, label %.preheader.i, !prof !267

.preheader.i:                                     ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 2 uses
  %.not1923.i = icmp eq ptr %i.f, null
  br i1 %.not1923.i, label %.lr.ph.i, label %._crit_edge.i, !prof !265

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.e
  %i.g = tail call noalias noundef dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #60 ; 8 uses
  %.not20.i = icmp eq ptr %i.g, null
  br i1 %.not20.i, label %_ZL23hb_object_set_user_dataI9hb_font_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit, label %bb.d, !prof !267

bb.d:                                             ; preds = %.lr.ph.i
  %i.h = tail call i32 @pthread_mutex_init(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef null) #59 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = cmpxchg weak ptr %i.e, ptr null, ptr %i.g acq_rel monotonic, align 8
  %i.k = extractvalue { ptr, i1 } %i.j, 1
  br i1 %i.k, label %._crit_edge.i, label %bb.e, !prof !268

._crit_edge.i:                                    ; preds = %bb.e, %bb.d, %.preheader.i
  %.016.i = phi ptr [ %i.f, %.preheader.i ], [ %i.o, %bb.e ], [ %i.g, %bb.d ]
  %i.l = tail call noundef zeroext i1 @_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei(ptr noundef nonnull align 8 dereferenceable(56) %.016.i, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %i.m = zext i1 %i.l to i32
  br label %_ZL23hb_object_set_user_dataI9hb_font_tEbPT_P18hb_user_data_key_tPvPFvS5_Ei.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.g)
  %i.n = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.g) #59 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.g) #59
end_hunk_1
