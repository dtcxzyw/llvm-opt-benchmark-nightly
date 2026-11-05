Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35466
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 273
loop-unroll.NumUnrolled: 470
begin_hunk_0_@_ZN2OTL31context_closure_recurse_lookupsINS_7NumTypeILb1EtLj2EEEEEvPNS_20hb_closure_context_tEjPKT_jPKNS_12LookupRecordEjNS_13ContextFormatEPKvPFvPK8hb_set_tSD_jPSE_PvESI_:bb.a
  call void %8(ptr noundef nonnull %.0.i, ptr noundef %7, i32 noundef %5, ptr noundef nonnull %12, ptr noundef %9) #59
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.r:                                             ; preds = %bb.m
  %i.cb = load i32, ptr %i.t, align 4, !tbaa !1230 ; 2 uses
  %.not.i54 = icmp eq i32 %i.cb, 0
  %i.cc = add i32 %i.cb, -1
  %i.cd = load ptr, ptr %i.u, align 8
  %i.ce = zext i32 %i.cc to i64
  %i.cf = getelementptr inbounds nuw [72 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load ptr, ptr %i.s, align 8
  %.0.i55 = select i1 %.not.i54, ptr %i.cg, ptr %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i55, i64 16
  call void @_ZN12hb_bit_set_t3setERKS_b(ptr noundef nonnull align 8 dereferenceable(49) %i.i, ptr noundef nonnull align 8 dereferenceable(49) %i.ch, i1 noundef zeroext false)
  %i.ci = load i8, ptr %i.i, align 8, !tbaa !1504, !range !380, !noundef !293
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.s, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, !prof !268

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i55, i64 64
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !946, !range !380, !noundef !293
  store i8 %i.cl, ptr %i.r, align 8, !tbaa !946
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.t:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit
  %i.cm = add nsw i32 %i.ad, -1                   ; 2 uses
  br i1 %.not52, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 1, !tbaa !283
  %i.cq = call noundef i16 @llvm.bswap.i16(i16 %i.cp)
  %i.cr = zext i16 %i.cq to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.046 = phi ptr [ %7, %bb.u ], [ %2, %bb.t ]
  %.045 = phi i32 [ %i.cr, %bb.u ], [ %i.cm, %bb.t ]
  %i.cs = load ptr, ptr %i.s, align 8, !tbaa !1223
  call void %8(ptr noundef %i.cs, ptr noundef %.046, i32 noundef %.045, ptr noundef nonnull %12, ptr noundef %9) #59
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit: ; preds = %bb.s, %bb.r, %bb.p, %bb.o, %bb.v, %bb.q, %bb.m, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  %i.ct = load i8, ptr %i.o, align 8, !tbaa !946, !range !380, !noundef !293
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.w, label %bb.x, !prof !267

bb.w:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.c, i32 noundef %i.ad)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit56

bb.x:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.c, i32 noundef %i.ad)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit56

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit56: ; preds = %bb.w, %bb.x
  %i.cv = load i32, ptr %i.t, align 4, !tbaa !1230 ; 2 uses
  %i.cw = add i32 %i.cv, 1                        ; 7 uses
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %bb.ae, label %bb.y, !prof !267

bb.y:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit56
  %i.cy = call noundef zeroext i1 @_ZN11hb_vector_tI8hb_set_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i32 noundef %i.cw, i1 noundef zeroext false)
  br i1 %i.cy, label %bb.z, label %bb.ae, !prof !525

bb.z:                                             ; preds = %bb.y
  %i.cz = load i32, ptr %i.t, align 4, !tbaa !1230 ; 5 uses
  %i.da = icmp ugt i32 %i.cw, %i.cz
  br i1 %i.da, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %bb.z, %.preheader
  %i.db = phi i32 [ %i.dm, %.preheader ], [ %i.cz, %bb.z ]
  %i.dc = load ptr, ptr %i.u, align 8, !tbaa !1231
  %i.dd = zext nneg i32 %i.db to i64
  %i.de = getelementptr inbounds nuw [72 x i8], ptr %i.dc, i64 %i.dd ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  store atomic i32 1, ptr %i.de monotonic, align 4
  store atomic i8 1, ptr %i.df monotonic, align 4
  store atomic ptr null, ptr %i.dg monotonic, align 8
  store i8 1, ptr %i.dh, align 8, !tbaa !550
  store i32 0, ptr %i.di, align 4, !tbaa !549
  store atomic i32 0, ptr %i.dj monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.dk, i8 0, i64 33, i1 false)
  %i.dl = load i32, ptr %i.t, align 4, !tbaa !1230
  %i.dm = add i32 %i.dl, 1                        ; 3 uses
  store i32 %i.dm, ptr %i.t, align 4, !tbaa !1230
  %i.dn = icmp ult i32 %i.dm, %i.cw
  br i1 %i.dn, label %.preheader, label %.loopexit.i.i, !llvm.loop !172

bb.aa:                                            ; preds = %bb.z
  %i.do = icmp ult i32 %i.cw, %i.cz
  br i1 %i.do, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.aa
  %i.dp = sub nuw i32 %i.cz, %i.cw
  %i.dq = load ptr, ptr %i.u, align 8, !tbaa !1231
  %i.dr = zext i32 %i.cz to i64
  %i.ds = getelementptr inbounds nuw [72 x i8], ptr %i.dq, i64 %i.dr
  br label %.lr.ph.i15.i.i.i.i

.lr.ph.i15.i.i.i.i:                               ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev.exit, %.lr.ph.preheader.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.du, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev.exit ], [ %i.ds, %.lr.ph.preheader.i.i.i.i.i ] ; 10 uses
  %.046.i.i.i.i.i = phi i32 [ %i.dt, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev.exit ], [ %i.dp, %.lr.ph.preheader.i.i.i.i.i ]
  %i.dt = add i32 %.046.i.i.i.i.i, -1             ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -72 ; 2 uses
  store atomic i32 -57005, ptr %i.du monotonic, align 4
  %i.dv = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -64 ; 2 uses
  %i.dw = load atomic ptr, ptr %i.dv acquire, align 8 ; 5 uses
  %.not.i.i.i59 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i59, label %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i15.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(56) %i.dw)
  %i.dy = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.dw) #59 ; 0 uses
  call void @free(ptr noundef nonnull %i.dw) #59
  store atomic ptr null, ptr %i.dv monotonic, align 8
  br label %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i.i

_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i.i: ; preds = %bb.ab, %.lr.ph.i15.i.i.i.i
  %i.dz = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -40 ; 3 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !552
  %i.eb = add i32 %i.ea, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.eb, -2
  br i1 %spec.select.i.i.i.i.i.i, label %bb.ac, label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i.i

bb.ac:                                            ; preds = %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i.i
  %i.ec = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -36
  store i32 0, ptr %i.ec, align 4, !tbaa !548
  %i.ed = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !553
  call void @free(ptr noundef %i.ee) #59
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i.i

_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i.i: ; preds = %bb.ac, %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i8 0, i64 16, i1 false)
  %i.ef = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -24 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !554
  %i.eh = add i32 %i.eg, -1
  %spec.select.i.i1.i.i.i.i = icmp ult i32 %i.eh, -2
  br i1 %spec.select.i.i1.i.i.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit.i: ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i.i
  %i.ei = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -20
  store i32 0, ptr %i.ei, align 4, !tbaa !547
  %i.ej = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !555
  call void @free(ptr noundef %i.ek) #59
  %.pre.i = load i32, ptr %i.dz, align 8, !tbaa !552
  %i.el = add i32 %.pre.i, -1
  %i.em = icmp ult i32 %i.el, -2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i8 0, i64 16, i1 false)
  br i1 %i.em, label %bb.ad, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev.exit

bb.ad:                                            ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit.i
  %i.en = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -36
  store i32 0, ptr %i.en, align 4, !tbaa !548
  %i.eo = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !553
  call void @free(ptr noundef %i.ep) #59
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev.exit: ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit.i, %bb.ad
  %.not.i.i.i.i.i57 = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i.i.i.i57, label %.loopexit.i.i, label %.lr.ph.i15.i.i.i.i, !llvm.loop !101

bb.ae:                                            ; preds = %bb.y, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @_hb_CrapPool, i8 0, i64 72, i1 false)
  br label %_ZN2OT20hb_closure_context_t22push_cur_active_glyphsEv.exit

.loopexit.i.i:                                    ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev.exit, %.preheader, %bb.aa
  store i32 %i.cw, ptr %i.t, align 4, !tbaa !1230
  %i.eq = load ptr, ptr %i.u, align 8, !tbaa !1231
  %i.er = zext i32 %i.cv to i64
  %i.es = getelementptr inbounds nuw [72 x i8], ptr %i.eq, i64 %i.er
  br label %_ZN2OT20hb_closure_context_t22push_cur_active_glyphsEv.exit

_ZN2OT20hb_closure_context_t22push_cur_active_glyphsEv.exit: ; preds = %bb.ae, %.loopexit.i.i
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.ae ], [ %i.es, %.loopexit.i.i ] ; 5 uses
  %i.et = load i32, ptr %i.v, align 8, !tbaa !1229
  %i.eu = icmp slt i32 %i.et, 0
  %.not5362 = icmp eq ptr %.0.i.i, null
  %.not53 = select i1 %i.eu, i1 true, i1 %.not5362, !prof !267
  br i1 %.not53, label %_ZN2OT20hb_closure_context_t22push_cur_active_glyphsEv.exit._crit_edge, label %bb.af, !prof !267

bb.af:                                            ; preds = %_ZN2OT20hb_closure_context_t22push_cur_active_glyphsEv.exit
  br i1 %.not61, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 8, !tbaa !1504, !range !380, !noundef !293
  %i.ex = trunc nuw i8 %i.ew to i1
  %i.ey = load i8, ptr %i.i, align 8, !range !380
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = select i1 %i.ex, i1 %i.ez, i1 false, !prof !956
  br i1 %i.fa, label %bb.ah, label %_ZN8hb_set_taSEOS_.exit, !prof !956

bb.ah:                                            ; preds = %bb.ag
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !570, !range !380, !noundef !293
  %i.fd = load i8, ptr %i.r, align 8, !tbaa !570, !range !380, !noundef !293
  store i8 %i.fd, ptr %i.fb, align 8, !tbaa !570
  store i8 %i.fc, ptr %i.r, align 8, !tbaa !570
  call fastcc void @"_ZNK4$_22clI12hb_bit_set_tEEvRT_S3_"(ptr noundef nonnull align 8 dereferenceable(49) %i.ev, ptr noundef nonnull align 8 dereferenceable(49) %i.i)
  br label %_ZN8hb_set_taSEOS_.exit

bb.ai:                                            ; preds = %bb.af
  %i.fe = load ptr, ptr %i.s, align 8, !tbaa !1223 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  call void @_ZN12hb_bit_set_t3setERKS_b(ptr noundef nonnull align 8 dereferenceable(49) %i.ff, ptr noundef nonnull align 8 dereferenceable(49) %i.fg, i1 noundef zeroext false)
  %i.fh = load i8, ptr %i.ff, align 8, !tbaa !1504, !range !380, !noundef !293
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.aj, label %_ZN8hb_set_taSEOS_.exit, !prof !268

bb.aj:                                            ; preds = %bb.ai
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 64
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !946, !range !380, !noundef !293
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  store i8 %i.fk, ptr %i.fl, align 8, !tbaa !946
  br label %_ZN8hb_set_taSEOS_.exit

_ZN8hb_set_taSEOS_.exit:                          ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.fm = load i32, ptr %i.w, align 8, !tbaa !1224 ; 2 uses
  %i.fn = icmp eq i32 %i.fm, 0
  %i.fo = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not.i58 = icmp eq ptr %i.fo, null
  %i.fp = select i1 %i.fn, i1 true, i1 %.not.i58, !prof !267
  br i1 %i.fp, label %_ZN2OT20hb_closure_context_t7recurseEjP8hb_set_tjj.exit, label %bb.ak, !prof !267

bb.ak:                                            ; preds = %_ZN8hb_set_taSEOS_.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.fr = load i16, ptr %i.fq, align 1, !tbaa !283
  %i.fs = call noundef i16 @llvm.bswap.i16(i16 %i.fr)
  %i.ft = zext i16 %i.fs to i32
  %i.fu = add i32 %i.fm, -1
  store i32 %i.fu, ptr %i.w, align 8, !tbaa !1224
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %i.ft, ptr noundef nonnull %11, i32 noundef %i.ad, i32 noundef %spec.select) #59, !inline_history !4139
  %i.fv = load i32, ptr %i.w, align 8, !tbaa !1224
  %i.fw = add i32 %i.fv, 1
  store i32 %i.fw, ptr %i.w, align 8, !tbaa !1224
  br label %_ZN2OT20hb_closure_context_t7recurseEjP8hb_set_tjj.exit

_ZN2OT20hb_closure_context_t7recurseEjP8hb_set_tjj.exit: ; preds = %_ZN8hb_set_taSEOS_.exit, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.fx = load i32, ptr %i.t, align 4, !tbaa !1230
  %.not63 = icmp eq i32 %i.fx, 0
  br i1 %.not63, label %_ZN2OT20hb_closure_context_t19pop_cur_done_glyphsEv.exit, label %bb.al

bb.al:                                            ; preds = %_ZN2OT20hb_closure_context_t7recurseEjP8hb_set_tjj.exit
  call void @_ZN11hb_vector_tI8hb_set_tLb0EE3popEv(ptr dead_on_unwind nonnull writable sret(%struct.hb_set_t) align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %i.v)
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %10) #59
  br label %_ZN2OT20hb_closure_context_t19pop_cur_done_glyphsEv.exit

_ZN2OT20hb_closure_context_t19pop_cur_done_glyphsEv.exit: ; preds = %_ZN2OT20hb_closure_context_t7recurseEjP8hb_set_tjj.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.am

bb.am:                                            ; preds = %bb.b, %_ZN2OT20hb_closure_context_t19pop_cur_done_glyphsEv.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN2OT20hb_closure_context_t22push_cur_active_glyphsEv.exit._crit_edge, label %bb.b, !llvm.loop !4140

_ZN2OT20hb_closure_context_t22push_cur_active_glyphsEv.exit._crit_edge: ; preds = %bb.am, %_ZN2OT20hb_closure_context_t22push_cur_active_glyphsEv.exit, %bb.a
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %12) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #59
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %11) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZNK4$_22clI12hb_bit_set_tEEvRT_S3_"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !550, !range !380, !noundef !293
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr %1, align 8, !range !380
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 %i.d, i1 false, !prof !956
  br i1 %i.e, label %bb.b, label %_Z4swapR12hb_bit_set_tS0_.exit, !prof !956

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.f, align 4, !tbaa !324
  %i.i = load i32, ptr %i.g, align 4, !tbaa !324
  store i32 %i.i, ptr %i.f, align 4, !tbaa !324
  store i32 %i.h, ptr %i.g, align 4, !tbaa !324
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.j, align 8, !tbaa !324
  %i.l = load i32, ptr %i.k, align 8, !tbaa !324
  store i32 %i.l, ptr %i.j, align 8, !tbaa !324
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.k, align 8, !tbaa !324
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.m, align 8, !tbaa !324
  %i.p = load i32, ptr %i.n, align 8, !tbaa !324
  store i32 %i.p, ptr %i.m, align 8, !tbaa !324
  store i32 %i.o, ptr %i.n, align 8, !tbaa !324
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !324
  %i.t = load i32, ptr %i.r, align 4, !tbaa !324
  store i32 %i.t, ptr %i.q, align 4, !tbaa !324
  store i32 %i.s, ptr %i.r, align 4, !tbaa !324
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !1801
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !1801
  store ptr %i.x, ptr %i.u, align 8, !tbaa !1801
  store ptr %i.w, ptr %i.v, align 8, !tbaa !1801
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !324
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !324
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !324
  store i32 %i.aa, ptr %i.z, align 8, !tbaa !324
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !324
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !324
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !324
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !324
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !1802
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !1802
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !1802
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !1802
  br label %_Z4swapR12hb_bit_set_tS0_.exit

_Z4swapR12hb_bit_set_tS0_.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11hb_vector_tI8hb_set_tLb0EE3popEv(ptr dead_on_unwind noalias writable sret(%struct.hb_set_t) align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1230 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic i32 1, ptr %0 monotonic, align 8
  store atomic i8 1, ptr %i.c monotonic, align 4
  store atomic ptr null, ptr %i.d monotonic, align 8
  store i8 1, ptr %i.e, align 8, !tbaa !550
  store i32 0, ptr %i.f, align 4, !tbaa !549
  store atomic i32 0, ptr %i.g monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.h, i8 0, i64 33, i1 false)
  tail call void @_ZN12hb_bit_set_t3setERKS_b(ptr noundef nonnull align 8 dereferenceable(49) %i.e, ptr noundef nonnull align 8 dereferenceable(49) getelementptr inbounds nuw (i8, ptr @_hb_NullPool, i64 16), i1 noundef zeroext false)
  %i.i = load i8, ptr %i.e, align 8, !tbaa !1504, !range !380, !noundef !293
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %_ZN8hb_set_tC2ERKS_.exit, !prof !268

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.k, align 8, !tbaa !946
  br label %_ZN8hb_set_tC2ERKS_.exit

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1231 ; 2 uses
  %i.n = add i32 %i.b, -1
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic i32 1, ptr %0 monotonic, align 8
  store atomic i8 1, ptr %i.q monotonic, align 4
  store atomic ptr null, ptr %i.r monotonic, align 8
  store i8 1, ptr %i.s, align 8, !tbaa !550
  store i32 0, ptr %i.t, align 4, !tbaa !549
  store atomic i32 0, ptr %i.u monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.v, i8 0, i64 33, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !range !380
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %_ZN8hb_set_tC2EOS_.exit, !prof !956

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !570, !range !380, !noundef !293
  store i8 %i.ab, ptr %i.z, align 8, !tbaa !570
  store i8 0, ptr %i.aa, align 8, !tbaa !570
  tail call fastcc void @"_ZNK4$_22clI12hb_bit_set_tEEvRT_S3_"(ptr noundef nonnull align 8 dereferenceable(49) %i.s, ptr noundef nonnull align 8 dereferenceable(49) %i.w)
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !1231
  %.pre2 = load i32, ptr %i.a, align 4, !tbaa !1230
  %.pre3 = add i32 %.pre2, -1
  %.pre4 = zext i32 %.pre3 to i64
  br label %_ZN8hb_set_tC2EOS_.exit

_ZN8hb_set_tC2EOS_.exit:                          ; preds = %bb.d, %bb.e
  %.pre-phi5 = phi i64 [ %i.o, %bb.d ], [ %.pre4, %bb.e ]
  %i.ac = phi ptr [ %i.m, %bb.d ], [ %.pre, %bb.e ]
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.ac, i64 %.pre-phi5
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.ad) #59
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !1230
  %i.af = add i32 %i.ae, -1
  store i32 %i.af, ptr %i.a, align 4, !tbaa !1230
  br label %_ZN8hb_set_tC2ERKS_.exit

_ZN8hb_set_tC2ERKS_.exit:                         ; preds = %bb.c, %bb.b, %_ZN8hb_set_tC2EOS_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT16ContextFormat2_5INS_6Layout10SmallTypesEE7closureEPNS_20hb_closure_context_tE(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_set_t, align 8           ; 4 uses
  %3 = alloca %struct.hb_map_t, align 8           ; 10 uses
  %4 = alloca %struct.hb_hashmap_t.1412, align 8  ; 10 uses
  %5 = alloca %"struct.OT::ContextClosureLookupContext", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283  ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !267 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1223 ; 2 uses
  %i.i = load i16, ptr %.0.i.i, align 1, !tbaa !283
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  switch i16 %i.j, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread [
    i16 1, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit
    i16 2, label %.split
  ]

.split:                                           ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.k = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, ptr noundef %i.h)
  br i1 %i.k, label %bb.b, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread

_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit: ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.l = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, ptr noundef %i.h)
  br i1 %i.l, label %bb.b, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread

bb.b:                                             ; preds = %.split, %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 9 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !1230 ; 2 uses
  %i.p = add i32 %i.o, 1                          ; 7 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.c, !prof !267

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noundef zeroext i1 @_ZN11hb_vector_tI8hb_set_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i32 noundef %i.p, i1 noundef zeroext false)
  br i1 %i.r, label %bb.d, label %bb.h, !prof !525

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.n, align 4, !tbaa !1230 ; 5 uses
  %i.t = icmp ugt i32 %i.p, %i.s
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.v = phi i32 [ %i.s, %bb.e ], [ %i.ag, %bb.f ]
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !1231
  %i.x = zext nneg i32 %i.v to i64
  %i.y = getelementptr inbounds nuw [72 x i8], ptr %i.w, i64 %i.x ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store atomic i32 1, ptr %i.y monotonic, align 4
  store atomic i8 1, ptr %i.z monotonic, align 4
  store atomic ptr null, ptr %i.aa monotonic, align 8
  store i8 1, ptr %i.ab, align 8, !tbaa !550
  store i32 0, ptr %i.ac, align 4, !tbaa !549
  store atomic i32 0, ptr %i.ad monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ae, i8 0, i64 33, i1 false)
  %i.af = load i32, ptr %i.n, align 4, !tbaa !1230
  %i.ag = add i32 %i.af, 1                        ; 3 uses
  store i32 %i.ag, ptr %i.n, align 4, !tbaa !1230
  %i.ah = icmp ult i32 %i.ag, %i.p
  br i1 %i.ah, label %bb.f, label %.loopexit.i.i, !llvm.loop !172

bb.g:                                             ; preds = %bb.d
  %i.ai = icmp ult i32 %i.p, %i.s
  br i1 %i.ai, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.aj = sub nuw i32 %i.s, %i.p
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1231
  %i.am = zext i32 %i.s to i64
  %i.an = getelementptr inbounds nuw [72 x i8], ptr %i.al, i64 %i.am
  br label %.lr.ph.i15.i.i.i.i

.lr.ph.i15.i.i.i.i:                               ; preds = %.lr.ph.i15.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i15.i.i.i.i ], [ %i.an, %.lr.ph.preheader.i.i.i.i.i ]
  %.046.i.i.i.i.i = phi i32 [ %i.ao, %.lr.ph.i15.i.i.i.i ], [ %i.aj, %.lr.ph.preheader.i.i.i.i.i ]
  %i.ao = add i32 %.046.i.i.i.i.i, -1             ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -72 ; 2 uses
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.ap) #59
  %.not.i.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i15.i.i.i.i, !llvm.loop !101

bb.h:                                             ; preds = %bb.c, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @_hb_CrapPool, i8 0, i64 72, i1 false)
  br label %_ZN2OT20hb_closure_context_t22push_cur_active_glyphsEv.exit

.loopexit.i.i:                                    ; preds = %.lr.ph.i15.i.i.i.i, %bb.f, %bb.g
  store i32 %i.p, ptr %i.n, align 4, !tbaa !1230
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1231
  %i.as = zext i32 %i.o to i64
  %i.at = getelementptr inbounds nuw [72 x i8], ptr %i.ar, i64 %i.as
  br label %_ZN2OT20hb_closure_context_t22push_cur_active_glyphsEv.exit

_ZN2OT20hb_closure_context_t22push_cur_active_glyphsEv.exit: ; preds = %bb.h, %.loopexit.i.i
  %.0.i.i6 = phi ptr [ @_hb_CrapPool, %bb.h ], [ %i.at, %.loopexit.i.i ] ; 3 uses
  %i.au = load i32, ptr %i.m, align 8, !tbaa !1229
  %i.av = icmp slt i32 %i.au, 0
  %.not37 = icmp eq ptr %.0.i.i6, null
  %.not = select i1 %i.av, i1 true, i1 %.not37, !prof !267
  br i1 %.not, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread, label %bb.i, !prof !267

bb.i:                                             ; preds = %_ZN2OT20hb_closure_context_t22push_cur_active_glyphsEv.exit
  %i.aw = load i16, ptr %i.a, align 1, !tbaa !283 ; 2 uses
  %i.ax = icmp eq i16 %i.aw, 0
  %i.ay = tail call i16 @llvm.bswap.i16(i16 %i.aw)
  %i.az = zext i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %i.az
  %.0.i.i.i = select i1 %i.ax, ptr @_hb_NullPool, ptr %i.ba, !prof !267 ; 3 uses
  %i.bb = load i32, ptr %i.n, align 4, !tbaa !1793 ; 2 uses
  %i.bc = icmp ult i32 %i.bb, 2
  %i.bd = load ptr, ptr %i.g, align 8
  %i.be = add i32 %i.bb, -2
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = zext i32 %i.be to i64
  %i.bi = getelementptr inbounds nuw [72 x i8], ptr %i.bg, i64 %i.bh
  %.0.i7 = select i1 %i.bc, ptr %i.bd, ptr %i.bi  ; 2 uses
  %i.bj = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.bk = tail call noundef i16 @llvm.bswap.i16(i16 %i.bj)
  switch i16 %i.bk, label %_ZNK2OT6Layout6Common8Coverage13intersect_setIR8hb_set_tTnPN12hb_enable_ifIXsr13hb_is_sink_ofIT_jEE5valueEvE4typeELPv0EEEvRKS4_OS7_.exit [
    i16 1, label %bb.j
    i16 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  tail call void @_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE13intersect_setIR8hb_set_tTnPN12hb_enable_ifIXsr13hb_is_sink_ofIT_jEE5valueEvE4typeELPv0EEEvRKS6_OS9_(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0.i7, ptr noundef nonnull align 8 dereferenceable(72) %.0.i.i6)
  br label %_ZNK2OT6Layout6Common8Coverage13intersect_setIR8hb_set_tTnPN12hb_enable_ifIXsr13hb_is_sink_ofIT_jEE5valueEvE4typeELPv0EEEvRKS4_OS7_.exit

bb.k:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  tail call void @_ZNK2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE13intersect_setIR8hb_set_tTnPN12hb_enable_ifIXsr13hb_is_sink_ofIT_jEE5valueEvE4typeELPv0EEEvRKS6_OS9_(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0.i7, ptr noundef nonnull align 8 dereferenceable(72) %.0.i.i6)
  br label %_ZNK2OT6Layout6Common8Coverage13intersect_setIR8hb_set_tTnPN12hb_enable_ifIXsr13hb_is_sink_ofIT_jEE5valueEvE4typeELPv0EEEvRKS4_OS7_.exit

_ZNK2OT6Layout6Common8Coverage13intersect_setIR8hb_set_tTnPN12hb_enable_ifIXsr13hb_is_sink_ofIT_jEE5valueEvE4typeELPv0EEEvRKS4_OS7_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = load i16, ptr %i.bl, align 1, !tbaa !283 ; 2 uses
  %i.bn = icmp eq i16 %i.bm, 0
  %i.bo = tail call i16 @llvm.bswap.i16(i16 %i.bm)
  %i.bp = zext i16 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp
  %.0.i.i8 = select i1 %i.bn, ptr @_hb_NullPool, ptr %i.bq, !prof !267 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store atomic i32 1, ptr %3 monotonic, align 8
  store atomic i8 1, ptr %i.br monotonic, align 4
  store atomic ptr null, ptr %i.bs monotonic, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.bt, align 8, !tbaa !1079
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store ptr null, ptr %i.bv, align 8, !tbaa !1080
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.bu, i8 0, i64 18, i1 false)
end_hunk_0
begin_hunk_1_@_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE24intersected_class_glyphsEPK8hb_set_tjPS4_:bb.a
  br i1 %.not28.i.i.i.i.i.i80, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i71, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ni = add nuw nsw i32 %i.nb, 1
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.ca
  %.223.i.i.i.i.i.i81 = phi i32 [ %i.ni, %bb.cc ], [ %.0212.i.i.i.i.i.i79, %bb.ca ] ; 3 uses
  %.2.i.i.i.i.i.i82 = phi i32 [ %.0203.i.i.i.i.i.i78, %bb.cc ], [ %i.nh, %bb.ca ] ; 2 uses
  %.not.not.i.i.i.i.i.i83 = icmp sgt i32 %.223.i.i.i.i.i.i81, %.2.i.i.i.i.i.i82
  br i1 %.not.not.i.i.i.i.i.i83, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i77, !llvm.loop !135

.loopexit.i.i:                                    ; preds = %bb.cd, %._crit_edge.i.i69
  %storemerge.i.i.ph.sink.i.i.ph.i.i = phi i32 [ 0, %._crit_edge.i.i69 ], [ %.223.i.i.i.i.i.i81, %bb.cd ] ; 3 uses
  %i.nj = add i32 %i.my, 1
  %i.nk = call noundef zeroext i1 @_ZN12hb_bit_set_t6resizeEjbb(ptr noundef nonnull align 8 dereferenceable(49) %i.gl, i32 noundef %i.nj, i1 noundef zeroext true, i1 noundef zeroext false)
  br i1 %i.nk, label %bb.ce, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit64, !prof !268

bb.ce:                                            ; preds = %.loopexit.i.i
  %i.nl = load ptr, ptr %i.gs, align 8, !tbaa !1236
  %i.nm = zext i32 %i.my to i64                   ; 2 uses
  %i.nn = getelementptr inbounds nuw [72 x i8], ptr %i.nl, i64 %i.nm ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.no, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.nn, align 8, !tbaa !1507
  %i.np = load ptr, ptr %i.gq, align 8, !tbaa !1232
  %i.nq = zext nneg i32 %storemerge.i.i.ph.sink.i.i.ph.i.i to i64 ; 3 uses
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %i.nq ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.nt = load i32, ptr %i.gp, align 4, !tbaa !1233
  %i.nu = xor i32 %storemerge.i.i.ph.sink.i.i.ph.i.i, -1
  %i.nv = add i32 %i.nt, %i.nu
  %i.nw = shl i32 %i.nv, 3
  %i.nx = zext i32 %i.nw to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ns, ptr align 4 %i.nr, i64 %i.nx, i1 false)
  %i.ny = load ptr, ptr %i.gq, align 8, !tbaa !1232 ; 2 uses
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.nq
  %.sroa.5.0.insert.shift.i.i = shl nuw i64 %i.nm, 32
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %i.mq to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.5.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.nz, align 4, !tbaa !324
  br label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i71

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i71: ; preds = %bb.cb, %bb.ce
  %.pre-phi.i.i = phi i64 [ %i.nq, %bb.ce ], [ %i.nc, %bb.cb ]
  %i.oa = phi ptr [ %i.ny, %bb.ce ], [ %i.mu, %bb.cb ]
  %storemerge.i.i.ph.sink.i.i17.i.i = phi i32 [ %storemerge.i.i.ph.sink.i.i.ph.i.i, %bb.ce ], [ %i.nb, %bb.cb ]
  store atomic i32 %storemerge.i.i.ph.sink.i.i17.i.i, ptr %i.go monotonic, align 8
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %.pre-phi.i.i
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i72

_ZN12hb_bit_set_t8page_forEjb.exit.i72:           ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i71, %bb.bz
  %.sink29.i.i = phi ptr [ %i.ob, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i71 ], [ %i.mw, %bb.bz ]
  %.sink.i.i74 = load ptr, ptr %i.gs, align 8, !tbaa !1236 ; 2 uses
  %.not.i75 = icmp eq ptr %.sink.i.i74, null
  br i1 %.not.i75, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit64, label %bb.cf, !prof !1610

bb.cf:                                            ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i72
  %i.oc = getelementptr inbounds nuw i8, ptr %.sink29.i.i, i64 4
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !1238
  %i.oe = zext i32 %i.od to i64
  %i.of = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i74, i64 %i.oe ; 2 uses
  %i.og = and i32 %.2, 63
  %i.oh = zext nneg i32 %i.og to i64
  %i.oi = shl nuw i64 1, %i.oh
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.ok = lshr i32 %.2, 6
  %i.ol = and i32 %i.ok, 7
  %i.om = zext nneg i32 %i.ol to i64
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.om ; 2 uses
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !1240
  %i.op = or i64 %i.oo, %i.oi
  store i64 %i.op, ptr %i.on, align 8, !tbaa !1240
  store i32 -1, ptr %i.of, align 8, !tbaa !1507
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit64

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit64: ; preds = %bb.bv, %bb.cf, %_ZN12hb_bit_set_t8page_forEjb.exit.i72, %.loopexit.i.i, %bb.bx, %bb.bw, %_ZN12hb_bit_set_t8page_forEjb.exit.i96, %._crit_edge.i.i85, %bb.bp
  br label %bb.an, !llvm.loop !4163

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit63.thread: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIjLb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i, %bb.ba, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit63, %.critedge31.i, %bb.al
  %i.oq = getelementptr inbounds nuw i8, ptr %.0160, i64 6 ; 2 uses
  %.not = icmp eq ptr %i.oq, %i.gf
  br i1 %.not, label %.loopexit, label %bb.al

.loopexit:                                        ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit63.thread, %bb.ak, %._crit_edge, %.thread119
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIj8hb_set_tLb0EE13set_with_hashIRKjS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1805, !range !380, !noundef !293
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.l, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1808 ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1809
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj8hb_set_tLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.l, !prof !268

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1807
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1806 ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !324
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !324
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03045, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03045, i32 %.02946 ; 2 uses
  %i.ac = add i32 %.048, 1                        ; 3 uses
  %i.ad = add i32 %i.ac, %.02946
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !1809
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !4164

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03043 = phi i32 [ %.03045, %bb.e ], [ %spec.select, %bb.f ]
  %.02941 = phi i32 [ %.02946, %bb.e ], [ %i.af, %bb.f ]
  %.02839 = phi i32 [ %.048, %bb.e ], [ %i.ac, %bb.f ]
  %.03043.fr = freeze i32 %.03043                 ; 2 uses
  %i.al = icmp eq i32 %.03043.fr, -1
  %spec.select67 = select i1 %i.al, i32 %.02941, i32 %.03043.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0283961 = phi i32 [ %.02839, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.an ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !1808
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !1808
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !1810
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !1810
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !324
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !1812
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !1504, !range !380, !noundef !293
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = load i8, ptr %i.ba, align 8, !range !380
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = select i1 %i.bd, i1 %i.bf, i1 false, !prof !956
  br i1 %i.bg, label %bb.i, label %_ZN8hb_set_taSEOS_.exit, !prof !956

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 72 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.bj = load i8, ptr %i.bh, align 8, !tbaa !570, !range !380, !noundef !293
  %i.bk = load i8, ptr %i.bi, align 8, !tbaa !570, !range !380, !noundef !293
  store i8 %i.bk, ptr %i.bh, align 8, !tbaa !570
  store i8 %i.bj, ptr %i.bi, align 8, !tbaa !570
  tail call fastcc void @"_ZNK4$_22clI12hb_bit_set_tEEvRT_S3_"(ptr noundef nonnull align 8 dereferenceable(49) %i.bb, ptr noundef nonnull align 8 dereferenceable(49) %i.ba)
  br label %_ZN8hb_set_taSEOS_.exit

_ZN8hb_set_taSEOS_.exit:                          ; preds = %bb.h, %bb.i
  %i.bl = shl nuw i32 %i.k, 2
  %i.bm = or disjoint i32 %i.bl, 3
  store i32 %i.bm, ptr %i.ap, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bo = load <2 x i32>, ptr %i.bn, align 4, !tbaa !324
  %i.bp = add <2 x i32> %i.bo, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bp, ptr %i.bn, align 4, !tbaa !324
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !1813
  %i.bs = zext i16 %i.br to i32
  %i.bt = icmp ugt i32 %.0283961, %i.bs
  br i1 %i.bt, label %bb.j, label %bb.l, !prof !267

bb.j:                                             ; preds = %_ZN8hb_set_taSEOS_.exit
  %i.bu = extractelement <2 x i32> %i.bp, i64 1
  %i.bv = shl i32 %i.bu, 3
  %i.bw = load i32, ptr %i.h, align 4, !tbaa !1809 ; 2 uses
  %i.bx = icmp ugt i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.by = add i32 %i.bw, -8
  %i.bz = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj8hb_set_tLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.by) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.k, %bb.j, %_ZN8hb_set_taSEOS_.exit, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.k ], [ true, %bb.j ], [ true, %_ZN8hb_set_taSEOS_.exit ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIj8hb_set_tLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1805, !range !380, !noundef !293
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i, !prof !268

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i32 %1, 1
  %i.e = add i32 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1809
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1810
  %.sroa.speculated46 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %1)
  %i.k = shl i32 %.sroa.speculated46, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.k, i32 4)
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.speculated, i1 true) ; 2 uses
  %narrow.i = sub nuw nsw i32 32, %i.l            ; 3 uses
  %i.m = zext nneg i32 %narrow.i to i64           ; 2 uses
  %i.n = shl nuw nsw i64 80, %i.m                 ; 2 uses
  %i.o = tail call noalias noundef ptr @malloc(i64 noundef %i.n) #61 ; 4 uses
  %.not39.not = icmp eq ptr %i.o, null
  br i1 %.not39.not, label %bb.e, label %.lr.ph.preheader, !prof !267

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.a, align 8, !tbaa !1805
  br label %bb.i

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1809 ; 2 uses
  %.not.i42 = icmp eq i32 %i.r, 0
  %i.s = add i32 %i.r, 1
  %spec.select.i = select i1 %.not.i42, i32 0, i32 %i.s ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1806 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.v, align 8, !tbaa !1808
  store i32 0, ptr %i.i, align 4, !tbaa !1810
  %notmask = shl nsw i32 -1, %narrow.i
  %i.w = xor i32 %notmask, -1
  store i32 %i.w, ptr %i.q, align 4, !tbaa !1809
  %i.x = icmp eq i32 %i.l, 0
  br i1 %i.x, label %_ZN12hb_hashmap_tIj8hb_set_tLb0EE9prime_forEj.exit, label %bb.f, !prof !267

bb.f:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN12hb_hashmap_tIj17face_table_info_tLb0EE9prime_forEj.prime_mod, i64 %i.m
  %i.z = load i32, ptr %i.y, align 4, !tbaa !324
  br label %_ZN12hb_hashmap_tIj8hb_set_tLb0EE9prime_forEj.exit

_ZN12hb_hashmap_tIj8hb_set_tLb0EE9prime_forEj.exit: ; preds = %._crit_edge, %bb.f
  %.0.i = phi i32 [ %i.z, %bb.f ], [ 2147483647, %._crit_edge ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.i, ptr %i.aa, align 8, !tbaa !1807
  %.tr = trunc nuw nsw i32 %narrow.i to i16
  %i.ab = shl nuw nsw i16 %.tr, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !1813
  store ptr %i.o, ptr %i.t, align 8, !tbaa !1806
  %.not60 = icmp eq i32 %spec.select.i, 0
  br i1 %.not60, label %._crit_edge59, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %_ZN12hb_hashmap_tIj8hb_set_tLb0EE9prime_forEj.exit
  %wide.trip.count = zext i32 %spec.select.i to i64
  br label %.lr.ph56

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03654 = phi ptr [ %i.al, %.lr.ph ], [ %i.o, %.lr.ph.preheader ] ; 10 uses
  store i32 0, ptr %.03654, align 8, !tbaa !1812
  %i.ad = getelementptr inbounds nuw i8, ptr %.03654, i64 4
  store i32 0, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.03654, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.03654, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %.03654, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.03654, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %.03654, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %.03654, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.03654, i64 40
  store atomic i32 1, ptr %i.ae monotonic, align 8
  store atomic i8 1, ptr %i.af monotonic, align 4
  store atomic ptr null, ptr %i.ag monotonic, align 8
  store i8 1, ptr %i.ah, align 8, !tbaa !550
  store i32 0, ptr %i.ai, align 4, !tbaa !549
  store atomic i32 0, ptr %i.aj monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ak, i8 0, i64 33, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.03654, i64 80 ; 2 uses
  %.not40 = icmp eq ptr %i.al, %i.p
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph58.preheader:                               ; preds = %bb.h
  %wide.trip.count66 = zext i32 %spec.select.i to i64
  br label %.lr.ph58

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph56.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.am = getelementptr inbounds nuw [80 x i8], ptr %i.u, i64 %indvars.iv ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph56
  %i.aq = lshr i32 %i.ao, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.as = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj8hb_set_tLb0EE13set_with_hashIjS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.am, i32 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(72) %i.ar, i1 noundef zeroext true) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph56, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph58.preheader, label %.lr.ph56, !llvm.loop !4165

._crit_edge59:                                    ; preds = %.lr.ph58, %_ZN12hb_hashmap_tIj8hb_set_tLb0EE9prime_forEj.exit
  tail call void @free(ptr noundef %i.u) #59
  br label %bb.i

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %.lr.ph58
  %indvars.iv63 = phi i64 [ 0, %.lr.ph58.preheader ], [ %indvars.iv.next64, %.lr.ph58 ] ; 2 uses
  %i.at = getelementptr inbounds nuw [80 x i8], ptr %i.u, i64 %indvars.iv63
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.au) #59
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge59, label %.lr.ph58, !llvm.loop !4166

bb.i:                                             ; preds = %bb.e, %._crit_edge59, %bb.c, %bb.a
  %.1 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ true, %._crit_edge59 ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIj8hb_set_tLb0EE13set_with_hashIjS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1805, !range !380, !noundef !293
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.l, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1808 ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1809
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj8hb_set_tLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.l, !prof !268

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1807
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1806 ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !324
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !324
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03045, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03045, i32 %.02946 ; 2 uses
  %i.ac = add i32 %.048, 1                        ; 3 uses
  %i.ad = add i32 %i.ac, %.02946
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !1809
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !4167

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03043 = phi i32 [ %.03045, %bb.e ], [ %spec.select, %bb.f ]
  %.02941 = phi i32 [ %.02946, %bb.e ], [ %i.af, %bb.f ]
  %.02839 = phi i32 [ %.048, %bb.e ], [ %i.ac, %bb.f ]
  %.03043.fr = freeze i32 %.03043                 ; 2 uses
  %i.al = icmp eq i32 %.03043.fr, -1
  %spec.select67 = select i1 %i.al, i32 %.02941, i32 %.03043.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0283961 = phi i32 [ %.02839, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.an ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !1808
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !1808
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !1810
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !1810
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !324
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !1812
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !1504, !range !380, !noundef !293
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = load i8, ptr %i.ba, align 8, !range !380
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = select i1 %i.bd, i1 %i.bf, i1 false, !prof !956
  br i1 %i.bg, label %bb.i, label %_ZN8hb_set_taSEOS_.exit, !prof !956

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 72 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.bj = load i8, ptr %i.bh, align 8, !tbaa !570, !range !380, !noundef !293
  %i.bk = load i8, ptr %i.bi, align 8, !tbaa !570, !range !380, !noundef !293
  store i8 %i.bk, ptr %i.bh, align 8, !tbaa !570
  store i8 %i.bj, ptr %i.bi, align 8, !tbaa !570
  tail call fastcc void @"_ZNK4$_22clI12hb_bit_set_tEEvRT_S3_"(ptr noundef nonnull align 8 dereferenceable(49) %i.bb, ptr noundef nonnull align 8 dereferenceable(49) %i.ba)
  br label %_ZN8hb_set_taSEOS_.exit

_ZN8hb_set_taSEOS_.exit:                          ; preds = %bb.h, %bb.i
  %i.bl = shl nuw i32 %i.k, 2
  %i.bm = or disjoint i32 %i.bl, 3
  store i32 %i.bm, ptr %i.ap, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bo = load <2 x i32>, ptr %i.bn, align 4, !tbaa !324
  %i.bp = add <2 x i32> %i.bo, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bp, ptr %i.bn, align 4, !tbaa !324
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !1813
  %i.bs = zext i16 %i.br to i32
  %i.bt = icmp ugt i32 %.0283961, %i.bs
  br i1 %i.bt, label %bb.j, label %bb.l, !prof !267

bb.j:                                             ; preds = %_ZN8hb_set_taSEOS_.exit
  %i.bu = extractelement <2 x i32> %i.bp, i64 1
  %i.bv = shl i32 %i.bu, 3
  %i.bw = load i32, ptr %i.h, align 4, !tbaa !1809 ; 2 uses
  %i.bx = icmp ugt i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.by = add i32 %i.bw, -8
  %i.bz = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj8hb_set_tLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.by) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.k, %bb.j, %_ZN8hb_set_taSEOS_.exit, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.k ], [ true, %bb.j ], [ true, %_ZN8hb_set_taSEOS_.exit ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12hb_hashmap_tIj8hb_set_tLb0EE4finiEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store atomic i32 -57005, ptr %0 monotonic, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZL14hb_object_finiI12hb_hashmap_tIj8hb_set_tLb0EEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.d = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #59 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.b) #59
  store atomic ptr null, ptr %i.a monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIj8hb_set_tLb0EEEvPT_.exit

_ZL14hb_object_finiI12hb_hashmap_tIj8hb_set_tLb0EEEvPT_.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1806 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !267

bb.c:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIj8hb_set_tLb0EEEvPT_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1809
  %i.i = add i32 %i.h, 1                          ; 2 uses
  %.not5 = icmp eq i32 %i.i, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext i32 %i.i to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !1806
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.j = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.c ]
  tail call void @free(ptr noundef %i.j) #59
  store ptr null, ptr %i.e, align 8, !tbaa !1806
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !1806
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.m) #59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !4168

bb.d:                                             ; preds = %._crit_edge, %_ZL14hb_object_finiI12hb_hashmap_tIj8hb_set_tLb0EEEvPT_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.n, align 8, !tbaa !1808
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.o, align 4, !tbaa !1810
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT14ContextFormat37closureEPNS_20hb_closure_context_tE(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_set_t, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283  ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !267 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1223 ; 2 uses
  %i.i = load i16, ptr %.0.i.i, align 1, !tbaa !283
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  switch i16 %i.j, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread [
    i16 1, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit
    i16 2, label %.split
  ]

.split:                                           ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.k = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, ptr noundef %i.h)
  br i1 %i.k, label %bb.b, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread

_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit: ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.l = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, ptr noundef %i.h)
  br i1 %i.l, label %bb.b, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread

bb.b:                                             ; preds = %.split, %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 7 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !1230 ; 2 uses
  %i.p = add i32 %i.o, 1                          ; 7 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.c, !prof !267

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noundef zeroext i1 @_ZN11hb_vector_tI8hb_set_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i32 noundef %i.p, i1 noundef zeroext false)
  br i1 %i.r, label %bb.d, label %bb.h, !prof !525

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.n, align 4, !tbaa !1230 ; 5 uses
  %i.t = icmp ugt i32 %i.p, %i.s
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.v = phi i32 [ %i.s, %bb.e ], [ %i.ag, %bb.f ]
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !1231
  %i.x = zext nneg i32 %i.v to i64
  %i.y = getelementptr inbounds nuw [72 x i8], ptr %i.w, i64 %i.x ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store atomic i32 1, ptr %i.y monotonic, align 4
  store atomic i8 1, ptr %i.z monotonic, align 4
  store atomic ptr null, ptr %i.aa monotonic, align 8
  store i8 1, ptr %i.ab, align 8, !tbaa !550
  store i32 0, ptr %i.ac, align 4, !tbaa !549
  store atomic i32 0, ptr %i.ad monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ae, i8 0, i64 33, i1 false)
  %i.af = load i32, ptr %i.n, align 4, !tbaa !1230
  %i.ag = add i32 %i.af, 1                        ; 3 uses
  store i32 %i.ag, ptr %i.n, align 4, !tbaa !1230
  %i.ah = icmp ult i32 %i.ag, %i.p
  br i1 %i.ah, label %bb.f, label %.loopexit.i.i, !llvm.loop !172

bb.g:                                             ; preds = %bb.d
  %i.ai = icmp ult i32 %i.p, %i.s
  br i1 %i.ai, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.aj = sub nuw i32 %i.s, %i.p
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1231
  %i.am = zext i32 %i.s to i64
  %i.an = getelementptr inbounds nuw [72 x i8], ptr %i.al, i64 %i.am
  br label %.lr.ph.i15.i.i.i.i

.lr.ph.i15.i.i.i.i:                               ; preds = %.lr.ph.i15.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i15.i.i.i.i ], [ %i.an, %.lr.ph.preheader.i.i.i.i.i ]
  %.046.i.i.i.i.i = phi i32 [ %i.ao, %.lr.ph.i15.i.i.i.i ], [ %i.aj, %.lr.ph.preheader.i.i.i.i.i ]
  %i.ao = add i32 %.046.i.i.i.i.i, -1             ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -72 ; 2 uses
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.ap) #59
  %.not.i.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i15.i.i.i.i, !llvm.loop !101

end_hunk_1
begin_hunk_2_@_ZN11hb_vector_tIN3AAT32kern_subtable_accelerator_data_tELb0EE13shrink_vectorEj:bb.a
  tail call void @free(ptr noundef %i.aa) #59
  br label %_ZN11hb_vector_tI13hb_bit_page_tLb0EED2Ev.exit.i2.i

_ZN11hb_vector_tI13hb_bit_page_tLb0EED2Ev.exit.i2.i: ; preds = %bb.d, %_ZN12hb_bit_set_tD2Ev.exit.i
  %i.ab = getelementptr inbounds i8, ptr %.07, i64 -592
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !552
  %i.ad = add i32 %i.ac, -1
  %spec.select.i.i.i1.i3.i = icmp ult i32 %i.ad, -2
  br i1 %spec.select.i.i.i1.i3.i, label %bb.e, label %_ZN3AAT32kern_subtable_accelerator_data_tD2Ev.exit

bb.e:                                             ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EED2Ev.exit.i2.i
  %i.ae = getelementptr inbounds i8, ptr %.07, i64 -588
  store i32 0, ptr %i.ae, align 4, !tbaa !548
  %i.af = getelementptr inbounds i8, ptr %.07, i64 -584
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !553
  tail call void @free(ptr noundef %i.ag) #59
  br label %_ZN3AAT32kern_subtable_accelerator_data_tD2Ev.exit

_ZN3AAT32kern_subtable_accelerator_data_tD2Ev.exit: ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EED2Ev.exit.i2.i, %bb.e
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5723

._crit_edge:                                      ; preds = %_ZN3AAT32kern_subtable_accelerator_data_tD2Ev.exit, %bb.a
  store i32 %1, ptr %i.a, align 4, !tbaa !1679
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIN3AAT32kern_subtable_accelerator_data_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !2008
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = mul nuw nsw i64 %i.c, 608
  %i.e = tail call noalias noundef ptr @malloc(i64 noundef %i.d) #61 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.i, label %.preheader, !prof !267

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1679
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN3AAT32kern_subtable_accelerator_data_tD2Ev.exit, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !2008
  %i.j = add i32 %i.i, -1
  %spec.select.i17 = icmp ult i32 %i.j, -2
  br i1 %spec.select.i17, label %.sink.split, label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN3AAT32kern_subtable_accelerator_data_tD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3AAT32kern_subtable_accelerator_data_tD2Ev.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw [608 x i8], ptr %i.e, i64 %indvars.iv ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %i.k, i8 0, i64 64, i1 false)
  store i8 1, ptr %i.k, align 8, !tbaa !550
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 0, ptr %i.l, align 8, !tbaa !5725
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i8 1, ptr %i.n, align 8, !tbaa !550
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i32 0, ptr %i.o, align 8, !tbaa !5725
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.p, i8 0, i64 544, i1 false)
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %bb.d
  %.0.idx8.i.i.i = phi i64 [ 0, %bb.d ], [ %.0.add.i.i.i.7, %.preheader.i.i ] ; 9 uses
  %.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.idx8.i.i.i
  store atomic i16 -1, ptr %.0.ptr.i.i.i monotonic, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store atomic i16 -1, ptr %.0.ptr.i.i.i.1 monotonic, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store atomic i16 -1, ptr %.0.ptr.i.i.i.2 monotonic, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  store atomic i16 -1, ptr %.0.ptr.i.i.i.3 monotonic, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store atomic i16 -1, ptr %.0.ptr.i.i.i.4 monotonic, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.v, i64 10
  store atomic i16 -1, ptr %.0.ptr.i.i.i.5 monotonic, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store atomic i16 -1, ptr %.0.ptr.i.i.i.6 monotonic, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.x, i64 14
  store atomic i16 -1, ptr %.0.ptr.i.i.i.7 monotonic, align 2
  %.0.add.i.i.i.7 = add nuw nsw i64 %.0.idx8.i.i.i, 16 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %.0.add.i.i.i.7, 512
  br i1 %.not.i.i.i.7, label %_ZN3AAT32kern_subtable_accelerator_data_tC2Ev.exit, label %.preheader.i.i

_ZN3AAT32kern_subtable_accelerator_data_tC2Ev.exit: ; preds = %.preheader.i.i
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !2007
  %i.z = getelementptr inbounds nuw [608 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = tail call noundef nonnull align 8 dereferenceable(608) ptr @_ZN3AAT32kern_subtable_accelerator_data_taSEOS0_(ptr noundef nonnull align 8 dereferenceable(608) %i.k, ptr noundef nonnull align 8 dereferenceable(608) %i.z) #59 ; 0 uses
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !2007
  %i.ac = getelementptr inbounds nuw [608 x i8], ptr %i.ab, i64 %indvars.iv ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !554
  %i.af = add i32 %i.ae, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.af, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.e, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EED2Ev.exit.i.i

bb.e:                                             ; preds = %_ZN3AAT32kern_subtable_accelerator_data_tC2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 84
  store i32 0, ptr %i.ag, align 4, !tbaa !547
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !555
  tail call void @free(ptr noundef %i.ai) #59
  br label %_ZN11hb_vector_tI13hb_bit_page_tLb0EED2Ev.exit.i.i

_ZN11hb_vector_tI13hb_bit_page_tLb0EED2Ev.exit.i.i: ; preds = %bb.e, %_ZN3AAT32kern_subtable_accelerator_data_tC2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !552
  %i.al = add i32 %i.ak, -1
  %spec.select.i.i.i1.i.i = icmp ult i32 %i.al, -2
  br i1 %spec.select.i.i.i1.i.i, label %bb.f, label %_ZN12hb_bit_set_tD2Ev.exit.i

bb.f:                                             ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EED2Ev.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 68
  store i32 0, ptr %i.am, align 4, !tbaa !548
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !553
  tail call void @free(ptr noundef %i.ao) #59
  br label %_ZN12hb_bit_set_tD2Ev.exit.i

_ZN12hb_bit_set_tD2Ev.exit.i:                     ; preds = %bb.f, %_ZN11hb_vector_tI13hb_bit_page_tLb0EED2Ev.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !554
  %i.ar = add i32 %i.aq, -1
  %spec.select.i.i.i.i1.i = icmp ult i32 %i.ar, -2
  br i1 %spec.select.i.i.i.i1.i, label %bb.g, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EED2Ev.exit.i2.i

bb.g:                                             ; preds = %_ZN12hb_bit_set_tD2Ev.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  store i32 0, ptr %i.as, align 4, !tbaa !547
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !555
  tail call void @free(ptr noundef %i.au) #59
  br label %_ZN11hb_vector_tI13hb_bit_page_tLb0EED2Ev.exit.i2.i

_ZN11hb_vector_tI13hb_bit_page_tLb0EED2Ev.exit.i2.i: ; preds = %bb.g, %_ZN12hb_bit_set_tD2Ev.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !552
  %i.ax = add i32 %i.aw, -1
  %spec.select.i.i.i1.i3.i = icmp ult i32 %i.ax, -2
  br i1 %spec.select.i.i.i1.i3.i, label %bb.h, label %_ZN3AAT32kern_subtable_accelerator_data_tD2Ev.exit

bb.h:                                             ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EED2Ev.exit.i2.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  store i32 0, ptr %i.ay, align 4, !tbaa !548
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !553
  tail call void @free(ptr noundef %i.ba) #59
  br label %_ZN3AAT32kern_subtable_accelerator_data_tD2Ev.exit

_ZN3AAT32kern_subtable_accelerator_data_tD2Ev.exit: ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EED2Ev.exit.i2.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = load i32, ptr %i.f, align 4, !tbaa !1679
  %i.bc = zext i32 %i.bb to i64
  %i.bd = icmp samesign ult i64 %indvars.iv.next, %i.bc
  br i1 %i.bd, label %bb.d, label %._crit_edge, !llvm.loop !5724

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !2007
  tail call void @free(ptr noundef %i.bf) #59
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(608) ptr @_ZN3AAT32kern_subtable_accelerator_data_taSEOS0_(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(608) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !550, !range !380, !noundef !293
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr %1, align 8, !range !380
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 %i.d, i1 false, !prof !956
  br i1 %i.e, label %bb.b, label %_ZN12hb_bit_set_taSEOS_.exit, !prof !956

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.f, align 4, !tbaa !324
  %i.i = load i32, ptr %i.g, align 4, !tbaa !324
  store i32 %i.i, ptr %i.f, align 4, !tbaa !324
  store i32 %i.h, ptr %i.g, align 4, !tbaa !324
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.j, align 8, !tbaa !324
  %i.l = load i32, ptr %i.k, align 8, !tbaa !324
  store i32 %i.l, ptr %i.j, align 8, !tbaa !324
  store i32 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.k, align 8, !tbaa !324
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.m, align 8, !tbaa !324
  %i.p = load i32, ptr %i.n, align 8, !tbaa !324
  store i32 %i.p, ptr %i.m, align 8, !tbaa !324
  store i32 %i.o, ptr %i.n, align 8, !tbaa !324
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !324
  %i.t = load i32, ptr %i.r, align 4, !tbaa !324
  store i32 %i.t, ptr %i.q, align 4, !tbaa !324
  store i32 %i.s, ptr %i.r, align 4, !tbaa !324
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !1801
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !1801
  store ptr %i.x, ptr %i.u, align 8, !tbaa !1801
  store ptr %i.w, ptr %i.v, align 8, !tbaa !1801
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !324
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !324
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !324
  store i32 %i.aa, ptr %i.z, align 8, !tbaa !324
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !324
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !324
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !324
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !324
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !1802
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !1802
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !1802
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !1802
  br label %_ZN12hb_bit_set_taSEOS_.exit

_ZN12hb_bit_set_taSEOS_.exit:                     ; preds = %bb.a, %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load i8, ptr %i.ak, align 8, !tbaa !550, !range !380, !noundef !293
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = load i8, ptr %i.al, align 8, !range !380
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = select i1 %i.an, i1 %i.ap, i1 false, !prof !956
  br i1 %i.aq, label %bb.c, label %_ZN12hb_bit_set_taSEOS_.exit5, !prof !956

bb.c:                                             ; preds = %_ZN12hb_bit_set_taSEOS_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !324
  %i.au = load i32, ptr %i.as, align 4, !tbaa !324
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !324
  store i32 %i.at, ptr %i.as, align 4, !tbaa !324
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i4 = load i32, ptr %i.av, align 8, !tbaa !324
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !324
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !324
  store i32 %.sroa.0.0.copyload.i.i.i.i.i4, ptr %i.aw, align 8, !tbaa !324
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ba = load i32, ptr %i.ay, align 8, !tbaa !324
  %i.bb = load i32, ptr %i.az, align 8, !tbaa !324
  store i32 %i.bb, ptr %i.ay, align 8, !tbaa !324
  store i32 %i.ba, ptr %i.az, align 8, !tbaa !324
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !324
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !324
  store i32 %i.bf, ptr %i.bc, align 4, !tbaa !324
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !324
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !1801
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !1801
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !1801
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !1801
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bm = load i32, ptr %i.bk, align 8, !tbaa !324
  %i.bn = load i32, ptr %i.bl, align 8, !tbaa !324
  store i32 %i.bn, ptr %i.bk, align 8, !tbaa !324
  store i32 %i.bm, ptr %i.bl, align 8, !tbaa !324
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !324
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !324
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !324
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !324
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !1802
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !1802
  store ptr %i.bv, ptr %i.bs, align 8, !tbaa !1802
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !1802
  br label %_ZN12hb_bit_set_taSEOS_.exit5

_ZN12hb_bit_set_taSEOS_.exit5:                    ; preds = %_ZN12hb_bit_set_taSEOS_.exit, %bb.c
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.bw, ptr noundef nonnull align 8 dereferenceable(512) %i.bx, i64 512, i1 false), !tbaa.struct !5726
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_12Format1EntryILb1EE9EntryDataEE22collect_initial_glyphsI12hb_bit_set_tNS_19KerxSubTableFormat1INS_18KerxSubTableHeaderEEEEEvRT_jRKT0_(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %struct.hb_bit_page_t, align 8      ; 6 uses
  %i.a = load i32, ptr %0, align 1, !tbaa !278    ; 2 uses
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %i.a) ; 2 uses
  %i.c = icmp ugt i32 %i.b, 512
  br i1 %i.c, label %bb.b, label %bb.c, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 1, !tbaa !278
  %i.f = tail call noundef i32 @llvm.bswap.i32(i32 %i.e)
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  tail call void @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_j(ptr noundef nonnull align 1 dereferenceable(13) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i8 0, i64 64, i1 false), !tbaa !1240
  %.not21 = icmp eq i32 %i.a, 0
  br i1 %.not21, label %._crit_edge.thread, label %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_12Format1EntryILb1EE9EntryDataEE9get_entryEij.exit.lr.ph

._crit_edge.thread:                               ; preds = %bb.c
  store i32 0, ptr %4, align 8
  br label %bb.i

_ZNK3AAT10StateTableINS_13ExtendedTypesENS_12Format1EntryILb1EE9EntryDataEE9get_entryEij.exit.lr.ph: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 1, !tbaa !278
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 1, !tbaa !278
  %i.q = tail call noundef i32 @llvm.bswap.i32(i32 %i.p)
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_12Format1EntryILb1EE9EntryDataEE9get_entryEij.exit

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i64, ptr %i.i, align 8, !tbaa !1240
  %i.t = and i64 %.pre, 4
  %i.u = icmp eq i64 %i.t, 0
  store i32 %i.ao, ptr %4, align 8
  br i1 %i.u, label %bb.i, label %bb.h

_ZNK3AAT10StateTableINS_13ExtendedTypesENS_12Format1EntryILb1EE9EntryDataEE9get_entryEij.exit: ; preds = %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_12Format1EntryILb1EE9EntryDataEE9get_entryEij.exit.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_12Format1EntryILb1EE9EntryDataEE9get_entryEij.exit.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.v = phi i32 [ 0, %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_12Format1EntryILb1EE9EntryDataEE9get_entryEij.exit.lr.ph ], [ %i.ao, %bb.g ]
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv
  %i.x = load i16, ptr %i.w, align 1, !tbaa !283
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [6 x i8], ptr %i.s, i64 %i.z ; 3 uses
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !283
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_12Format1EntryILb1EE9EntryDataEE9get_entryEij.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !283
  %.mask.i.i = and i16 %i.ae, 128
  %.not18 = icmp eq i16 %.mask.i.i, 0
  br i1 %.not18, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !283
  %.not19 = icmp eq i16 %i.ag, -1
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_12Format1EntryILb1EE9EntryDataEE9get_entryEij.exit
  %i.ah = and i64 %indvars.iv, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = lshr i64 %indvars.iv, 6
  %i.ak = and i64 %i.aj, 7
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !1240
  %i.an = or i64 %i.am, %i.ai
  store i64 %i.an, ptr %i.al, align 8, !tbaa !1240
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ao = phi i32 [ %i.v, %bb.e ], [ -1, %bb.f ]  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_12Format1EntryILb1EE9EntryDataEE9get_entryEij.exit, !llvm.loop !5727

bb.h:                                             ; preds = %._crit_edge
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 65535)
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread, %bb.h, %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !278
  %i.ar = tail call noundef i32 @llvm.bswap.i32(i32 %i.aq)
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  call void @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_(ptr noundef nonnull align 1 dereferenceable(13) %i.at, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_19KerxSubTableFormat4INS_18KerxSubTableHeaderEE9EntryDataEE22collect_initial_glyphsI12hb_bit_set_tS4_EEvRT_jRKT0_(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %struct.hb_bit_page_t, align 8      ; 6 uses
  %i.a = load i32, ptr %0, align 1, !tbaa !278    ; 2 uses
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %i.a) ; 2 uses
  %i.c = icmp ugt i32 %i.b, 512
  br i1 %i.c, label %bb.b, label %bb.c, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 1, !tbaa !278
  %i.f = tail call noundef i32 @llvm.bswap.i32(i32 %i.e)
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  tail call void @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_j(ptr noundef nonnull align 1 dereferenceable(13) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i8 0, i64 64, i1 false), !tbaa !1240
  %.not21 = icmp eq i32 %i.a, 0
  br i1 %.not21, label %._crit_edge.thread, label %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_19KerxSubTableFormat4INS_18KerxSubTableHeaderEE9EntryDataEE9get_entryEij.exit.lr.ph

._crit_edge.thread:                               ; preds = %bb.c
  store i32 0, ptr %4, align 8
  br label %bb.i

_ZNK3AAT10StateTableINS_13ExtendedTypesENS_19KerxSubTableFormat4INS_18KerxSubTableHeaderEE9EntryDataEE9get_entryEij.exit.lr.ph: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_2
