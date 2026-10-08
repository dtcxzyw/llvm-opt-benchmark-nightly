Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 274
loop-unroll.NumUnrolled: 473
begin_hunk_0_@hb_ot_color_glyph_reference_png:bb.a

bb.k:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT18sbix_accelerator_tE21hb_face_lazy_loader_tIS1_Lj39EE9hb_face_tLj39ES1_EptEv.exit18, %_ZNK16hb_lazy_loader_tIN2OT18sbix_accelerator_tE21hb_face_lazy_loader_tIS1_Lj39EE9hb_face_tLj39ES1_EptEv.exit
  %.0 = phi ptr [ %i.ai, %_ZNK16hb_lazy_loader_tIN2OT18sbix_accelerator_tE21hb_face_lazy_loader_tIS1_Lj39EE9hb_face_tLj39ES1_EptEv.exit18 ], [ @_hb_NullPool, %_ZNK16hb_lazy_loader_tIN2OT18sbix_accelerator_tE21hb_face_lazy_loader_tIS1_Lj39EE9hb_face_tLj39ES1_EptEv.exit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !276
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !264 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 408 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.ao = load atomic ptr, ptr %i.am acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i20, label %_ZNK16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_EptEv.exit, !prof !265

.lr.ph.i.i.i20:                                   ; preds = %bb.l, %bb.p
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !266
  %.not.i.i.i.i21 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i21, label %_ZNK16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_EptEv.exit, label %bb.m, !prof !267

bb.m:                                             ; preds = %.lr.ph.i.i.i20
  %i.aq = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj38EE11call_createIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS4_Lj38EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.am) ; 2 uses
  %.not10.i.i.i22 = icmp eq ptr %i.aq, null
  br i1 %.not10.i.i.i22, label %bb.n, label %bb.o, !prof !267

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.07.i.i.i = phi ptr [ @_hb_NullPool, %bb.n ], [ %i.aq, %bb.m ] ; 3 uses
  %i.ar = cmpxchg weak ptr %i.am, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.as = extractvalue { ptr, i1 } %i.ar, 1
  br i1 %i.as, label %_ZNK16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_EptEv.exit, label %bb.p, !prof !268

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i)
  %i.at = load atomic ptr, ptr %i.am acquire, align 8 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i23, label %.lr.ph.i.i.i20, label %_ZNK16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_EptEv.exit, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_EptEv.exit: ; preds = %.lr.ph.i.i.i20, %bb.o, %bb.p, %bb.l
  %.19.ph.i.i.i19 = phi ptr [ %i.ao, %bb.l ], [ @_hb_NullPool, %.lr.ph.i.i.i20 ], [ %i.at, %bb.p ], [ %.07.i.i.i, %bb.o ]
  %i.au = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i19, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.av, null
  %spec.select.i.i.i.i.i25 = select i1 %.not.i.i.i.i.i24, ptr @_hb_NullPool, ptr %i.av ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i25, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !275
  %i.ay = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i25, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !276
  %i.ba = icmp ult i32 %i.az, 4
  %spec.select.i.i1.i.i.i26 = select i1 %i.ba, ptr @_hb_NullPool, ptr %i.ax
  %i.bb = load i16, ptr %spec.select.i.i1.i.i.i26, align 1, !tbaa !283
  %.not36 = icmp eq i16 %i.bb, 0
  br i1 %.not36, label %bb.v, label %bb.q

bb.q:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_EptEv.exit
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !264 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 408 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
  %i.bf = load atomic ptr, ptr %i.bd acquire, align 8 ; 2 uses
  %.not14.i.i.i27 = icmp eq ptr %i.bf, null
  br i1 %.not14.i.i.i27, label %.lr.ph.i.i.i29, label %_ZNK16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_EptEv.exit34, !prof !265

.lr.ph.i.i.i29:                                   ; preds = %bb.q, %bb.u
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !266
  %.not.i.i.i.i30 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i30, label %_ZNK16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_EptEv.exit34, label %bb.r, !prof !267

bb.r:                                             ; preds = %.lr.ph.i.i.i29
  %i.bh = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj38EE11call_createIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS4_Lj38EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.bd) ; 2 uses
  %.not10.i.i.i31 = icmp eq ptr %i.bh, null
  br i1 %.not10.i.i.i31, label %bb.s, label %bb.t, !prof !267

bb.s:                                             ; preds = %bb.r
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.07.i.i.i32 = phi ptr [ @_hb_NullPool, %bb.s ], [ %i.bh, %bb.r ] ; 3 uses
  %i.bi = cmpxchg weak ptr %i.bd, ptr null, ptr %.07.i.i.i32 acq_rel monotonic, align 8
  %i.bj = extractvalue { ptr, i1 } %i.bi, 1
  br i1 %i.bj, label %_ZNK16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_EptEv.exit34, label %bb.u, !prof !268

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i32)
  %i.bk = load atomic ptr, ptr %i.bd acquire, align 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i33, label %.lr.ph.i.i.i29, label %_ZNK16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_EptEv.exit34, !prof !269

_ZNK16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_EptEv.exit34: ; preds = %.lr.ph.i.i.i29, %bb.t, %bb.u, %bb.q
  %.19.ph.i.i.i28 = phi ptr [ %i.bf, %bb.q ], [ @_hb_NullPool, %.lr.ph.i.i.i29 ], [ %i.bk, %bb.u ], [ %.07.i.i.i32, %bb.t ]
  %i.bl = tail call noundef ptr @_ZNK2OT4CBDT13accelerator_t13reference_pngEP9hb_font_tj(ptr noundef nonnull align 8 dereferenceable(20) %.19.ph.i.i.i28, ptr noundef %0, i32 noundef %1)
  br label %bb.v

bb.v:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_EptEv.exit34, %_ZNK16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_EptEv.exit, %bb.k
  %.1 = phi ptr [ %.0, %bb.k ], [ %i.bl, %_ZNK16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_EptEv.exit34 ], [ %.0, %_ZNK16hb_lazy_loader_tIN2OT18CBDT_accelerator_tE21hb_face_lazy_loader_tIS1_Lj38EE9hb_face_tLj38ES1_EptEv.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2OT4CBDT13accelerator_t13reference_pngEP9hb_font_tj(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !272    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_hb_NullPool, ptr %i.a ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275
  %i.d = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !276
  %i.f = icmp ult i32 %i.e, 8
  %spec.select.i.i1.i.i = select i1 %i.f, ptr @_hb_NullPool, ptr %i.c ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 4 ; 5 uses
  %i.h = load i32, ptr %i.g, align 1, !tbaa !278  ; 2 uses
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.h) ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit, label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit.i, !prof !267

_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.l = load i32, ptr %i.j, align 4, !tbaa !324
  %i.m = load i32, ptr %i.k, align 4, !tbaa !324
  %i.n = tail call i32 @llvm.umax.i32(i32 %i.l, i32 %i.m) ; 2 uses
  %.not26.i = icmp eq i32 %i.n, 0
  %spec.store.select.i = select i1 %.not26.i, i32 1073741824, i32 %i.n ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.o = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 52
  %i.p = load i32, ptr %i.g, align 1, !tbaa !278
  %.not.i30.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i30.not.i, label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i, label %bb.b, !prof !267

bb.b:                                             ; preds = %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.q = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 8
  br label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i

_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i: ; preds = %bb.b, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit.i
  %.0.i31.i = phi ptr [ %i.q, %bb.b ], [ @_hb_NullPool, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit.i ]
  %i.r = icmp ugt i32 %i.i, 1
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i
  %i.s = load i8, ptr %i.o, align 1, !tbaa !303
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i31.i, i64 45
  %i.u = load i8, ptr %i.t, align 1, !tbaa !303
  %i.v = tail call i8 @llvm.umax.i8(i8 %i.s, i8 %i.u)
  %i.w = zext i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 8
  %wide.trip.count.i = zext i32 %i.i to i64
  br label %bb.d

._crit_edge.i:                                    ; preds = %bb.h, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i
  %.022.lcssa.i = phi i32 [ 0, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i ], [ %.123.i, %bb.h ] ; 2 uses
  %i.y = load i32, ptr %i.g, align 1, !tbaa !278
  %i.z = tail call noundef i32 @llvm.bswap.i32(i32 %i.y)
  %.not.i34.i = icmp ult i32 %.022.lcssa.i, %i.z
  br i1 %.not.i34.i, label %bb.c, label %_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit, !prof !268

bb.c:                                             ; preds = %._crit_edge.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 8
  %i.ab = zext i32 %.022.lcssa.i to i64
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %i.ab
  br label %_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 5 uses
  %.02148.i = phi i32 [ %i.w, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 4 uses
  %.02247.i = phi i32 [ 0, %.lr.ph.i ], [ %.123.i, %bb.h ]
  %i.ad = load i32, ptr %i.g, align 1, !tbaa !278
  %i.ae = tail call noundef i32 @llvm.bswap.i32(i32 %i.ad)
  %i.af = zext i32 %i.ae to i64
  %.not.i37.i = icmp samesign ult i64 %indvars.iv.i, %i.af
  br i1 %.not.i37.i, label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i, label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i, !prof !268

_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %indvars.iv.i ; 2 uses
  %.pre.i = load i32, ptr %i.g, align 1, !tbaa !278
  %.pre51.i = tail call noundef i32 @llvm.bswap.i32(i32 %.pre.i)
  %.pre52.i = zext i32 %.pre51.i to i64
  %i.ah = icmp samesign ult i64 %indvars.iv.i, %.pre52.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 44 ; 2 uses
  br i1 %i.ah, label %bb.e, label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i, !prof !672

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  br label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i

_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i, %bb.d
  %i.aj = phi ptr [ %i.ai, %bb.e ], [ %i.ai, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i ], [ getelementptr inbounds nuw (i8, ptr @_hb_NullPool, i64 44), %bb.d ]
  %.0.i41.i = phi ptr [ %i.ag, %bb.e ], [ @_hb_NullPool, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i ], [ @_hb_NullPool, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i41.i, i64 45
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !303
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !303
  %i.an = tail call i8 @llvm.umax.i8(i8 %i.al, i8 %i.am)
  %i.ao = zext i8 %i.an to i32                    ; 4 uses
  %.not27.i = icmp ule i32 %spec.store.select.i, %i.ao
  %i.ap = icmp samesign ugt i32 %.02148.i, %i.ao
  %or.cond.i = select i1 %.not27.i, i1 %i.ap, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i
  %i.aq = icmp ugt i32 %spec.store.select.i, %.02148.i
  %i.ar = icmp samesign ult i32 %.02148.i, %i.ao
  %or.cond28.i = and i1 %i.aq, %i.ar
  br i1 %or.cond28.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i
  %i.as = trunc nuw i64 %indvars.iv.i to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.123.i = phi i32 [ %i.as, %bb.g ], [ %.02247.i, %bb.f ] ; 2 uses
  %.1.i = phi i32 [ %i.ao, %bb.g ], [ %.02148.i, %bb.f ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !92

_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit:     ; preds = %bb.a, %._crit_edge.i, %bb.c
  %.024.i = phi ptr [ @_hb_NullPool, %bb.a ], [ %i.ac, %bb.c ], [ @_hb_NullPool, %._crit_edge.i ] ; 4 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !272   ; 2 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.at, null
  %spec.select.i.i.i.i20 = select i1 %.not.i.i.i.i19, ptr @_hb_NullPool, ptr %i.at ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i20, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !275
  %i.aw = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i20, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !276
  %i.ay = icmp ult i32 %i.ax, 8
  %spec.select.i.i1.i.i21 = select i1 %i.ay, ptr @_hb_NullPool, ptr %i.av
  %i.az = load i32, ptr %.024.i, align 1, !tbaa !278
  %i.ba = tail call noundef i32 @llvm.bswap.i32(i32 %i.az)
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i21, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  %i.be = load i32, ptr %i.bd, align 1, !tbaa !278 ; 2 uses
  %.not27.i.i = icmp eq i32 %i.be, 0
  br i1 %.not27.i.i, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit
  %i.bf = tail call noundef i32 @llvm.bswap.i32(i32 %i.be)
  %wide.trip.count.i.i = zext i32 %i.bf to i64
  br label %.lr.ph.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread, label %.lr.ph.i.i, !llvm.loop !93

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i.i ; 3 uses
  %i.bh = load i16, ptr %i.bg, align 1, !tbaa !283
  %i.bi = tail call noundef i16 @llvm.bswap.i16(i16 %i.bh)
  %i.bj = zext i16 %i.bi to i32                   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bl = load i16, ptr %i.bk, align 1, !tbaa !283
  %i.bm = tail call noundef i16 @llvm.bswap.i16(i16 %i.bl)
  %i.bn = zext i16 %i.bm to i32
  %.not.i.i = icmp ult i32 %2, %i.bj
  %.not17.i.i = icmp ugt i32 %2, %i.bn
  %or.cond.i.i = or i1 %.not.i.i, %.not17.i.i
  br i1 %or.cond.i.i, label %bb.i, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit

_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit: ; preds = %.lr.ph.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.024.i, i64 44
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !303
  %.not17 = icmp eq i8 %i.bp, 0
  br i1 %.not17, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %.024.i, i64 45
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !303
  %.not18 = icmp eq i8 %i.br, 0
  br i1 %.not18, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bt = load i32, ptr %i.bs, align 1, !tbaa !278 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = tail call i32 @llvm.bswap.i32(i32 %i.bt)
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bw
  %.0.i.i.i = select i1 %i.bu, ptr @_hb_NullPool, ptr %i.bx, !prof !267 ; 6 uses
  %i.by = sub nuw nsw i32 %2, %i.bj               ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.ca = load i16, ptr %i.bz, align 1, !tbaa !283
  %i.cb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ca)
  %i.cc = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.cd = tail call noundef i16 @llvm.bswap.i16(i16 %i.cc)
  switch i16 %i.cd, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread [
    i16 1, label %bb.l
    i16 3, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.cf = zext nneg i32 %i.by to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 1, !tbaa !278
  %i.cj = tail call noundef i32 @llvm.bswap.i32(i32 %i.ci) ; 2 uses
  %i.ck = load i32, ptr %i.cg, align 1, !tbaa !278
  %i.cl = tail call noundef i32 @llvm.bswap.i32(i32 %i.ck) ; 3 uses
  %.not.i.i.i = icmp ugt i32 %i.cj, %i.cl
  br i1 %.not.i.i.i, label %bb.m, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread, !prof !268

bb.m:                                             ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.cn = load i32, ptr %i.cm, align 1, !tbaa !278
  %i.co = tail call noundef i32 @llvm.bswap.i32(i32 %i.cn)
  %i.cp = add i32 %i.co, %i.cl
  %i.cq = sub nuw i32 %i.cj, %i.cl
  br label %_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit

bb.n:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.cs = zext nneg i32 %i.by to i64
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.cv = load i16, ptr %i.cu, align 1, !tbaa !283
  %i.cw = tail call noundef i16 @llvm.bswap.i16(i16 %i.cv) ; 2 uses
  %i.cx = load i16, ptr %i.ct, align 1, !tbaa !283
  %i.cy = tail call noundef i16 @llvm.bswap.i16(i16 %i.cx) ; 3 uses
  %.not.i8.i.i = icmp ugt i16 %i.cw, %i.cy
  br i1 %.not.i8.i.i, label %bb.o, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread, !prof !268

bb.o:                                             ; preds = %bb.n
  %i.cz = zext i16 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.db = load i32, ptr %i.da, align 1, !tbaa !278
  %i.dc = tail call noundef i32 @llvm.bswap.i32(i32 %i.db)
  %i.dd = add i32 %i.dc, %i.cz
  %narrow.i.i.i = sub nuw i16 %i.cw, %i.cy
  %i.de = zext i16 %narrow.i.i.i to i32
  br label %_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit

_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit: ; preds = %bb.o, %bb.m
  %.145 = phi i32 [ %i.dd, %bb.o ], [ %i.cp, %bb.m ] ; 8 uses
  %.043 = phi i32 [ %i.de, %bb.o ], [ %i.cq, %bb.m ] ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !272 ; 3 uses
  %.not.i.i22 = icmp eq ptr %i.dg, null
  %spec.select.i.i = select i1 %.not.i.i22, ptr @_hb_NullPool, ptr %i.dg ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 24
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !276 ; 2 uses
  %i.dj = icmp ugt i32 %.145, %i.di
  %i.dk = sub nuw i32 %i.di, %.145
  %i.dl = icmp ult i32 %i.dk, %.043
  %i.dm = select i1 %i.dj, i1 true, i1 %i.dl, !prof !267
  br i1 %i.dm, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread, label %bb.p, !prof !267

bb.p:                                             ; preds = %_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit
  switch i16 %i.cb, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread [
    i16 17, label %bb.q
    i16 18, label %bb.s
    i16 19, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.dn = icmp ult i32 %.043, 9
  br i1 %i.dn, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread, label %bb.r, !prof !267

bb.r:                                             ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !275
  %i.dq = zext i32 %.145 to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dq
  %i.ds = add i32 %.145, 9
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 5
  br label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread.sink.split

bb.s:                                             ; preds = %bb.p
  %i.du = icmp ult i32 %.043, 12
  br i1 %i.du, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread, label %bb.t, !prof !267

bb.t:                                             ; preds = %bb.s
  %i.dv = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !275
  %i.dx = zext i32 %.145 to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx
  %i.dz = add i32 %.145, 12
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  br label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread.sink.split

bb.u:                                             ; preds = %bb.p
  %i.eb = icmp ult i32 %.043, 4
  br i1 %i.eb, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread, label %bb.v, !prof !267

bb.v:                                             ; preds = %bb.u
  %i.ec = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !275
  %i.ee = zext i32 %.145 to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee
  %i.eg = add i32 %.145, 4
  br label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread.sink.split

_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit.thread.sink.split: ; preds = %bb.r, %bb.t, %bb.v
end_hunk_0
begin_hunk_1_@_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE5flex1ERS2_RS3_:bb.a
  %.not.i = icmp eq ptr %i.co, null
  %i.cp = shufflevector <2 x double> %i.ao, <2 x double> %i.an, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit83
  %i.cq = load <2 x double>, ptr %i.co, align 8, !tbaa !477 ; 3 uses
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cs = fadd <4 x double> %i.cp, %i.cr
  %i.ct = extractelement <2 x double> %i.cq, i64 0
  %i.cu = fadd double %.sroa.0.0, %i.ct
  %i.cv = extractelement <2 x double> %i.cq, i64 1
  %i.cw = fadd double %.sroa.8.0, %i.cv
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit83
  %.sroa.6.0.i = phi double [ %.sroa.8.0, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit83 ], [ %i.cw, %bb.f ]
  %.sroa.0.0.i = phi double [ %.sroa.0.0, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit83 ], [ %i.cu, %bb.f ]
  %i.cx = phi <4 x double> [ %i.cp, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit83 ], [ %i.cs, %bb.f ]
  %i.cy = load ptr, ptr %i.bi, align 8, !tbaa !1156 ; 5 uses
  %i.cz = load ptr, ptr %1, align 8, !tbaa !1158
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 80
  %i.db = load <2 x float>, ptr %i.da, align 8, !tbaa !304 ; 3 uses
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !338 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !339 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !358
  %.not.i.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i.i, label %bb.h, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i, !prof !267

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.dd, ptr noundef %i.df, ptr noundef nonnull align 4 dereferenceable(48) %i.dg)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i

_ZN17hb_draw_session_t8cubic_toEffffff.exit.i:    ; preds = %bb.h, %bb.g
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !725
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !365 ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i63, label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !726
  br label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit

_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i, %bb.i
  %i.do = phi ptr [ %i.dn, %bb.i ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i ]
  %i.dp = fptrunc double %.sroa.6.0.i to float
  %i.dq = extractelement <2 x float> %i.db, i64 1
  %i.dr = fmul float %i.dq, %i.dp                 ; 2 uses
  %i.ds = fptrunc double %.sroa.0.0.i to float
  %i.dt = extractelement <2 x float> %i.db, i64 0
  %i.du = fmul float %i.dt, %i.ds                 ; 2 uses
  %i.dv = fptrunc <4 x double> %i.cx to <4 x float>
  %i.dw = fmul <4 x float> %i.dc, %i.dv           ; 4 uses
  %i.dx = extractelement <4 x float> %i.dw, i64 0
  %i.dy = extractelement <4 x float> %i.dw, i64 1
  %i.dz = extractelement <4 x float> %i.dw, i64 2
  %i.ea = extractelement <4 x float> %i.dw, i64 3
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(72) %i.dd, ptr noundef %i.df, ptr noundef nonnull align 4 dereferenceable(48) %i.dg, float noundef %i.dz, float noundef %i.ea, float noundef %i.dx, float noundef %i.dy, float noundef %i.du, float noundef %i.dr, ptr noundef %i.do) #63, !inline_history !149
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cy, i64 28
  store float %i.du, ptr %i.eb, align 4, !tbaa !360
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store float %i.dr, ptr %i.ec, align 8, !tbaa !730
  store double %.sroa.0.0, ptr %i.i, align 8, !tbaa !712
  store double %.sroa.8.0, ptr %.sroa.798.0..sroa_idx, align 8, !tbaa !712
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !464
  %i.ef = add i32 %i.ee, 1
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !420
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(8) ptr @_ZNK2OT4sbix13accelerator_t13choose_strikeEP9hb_font_t(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !272    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_hb_NullPool, ptr %i.a ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275
  %i.d = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !276
  %i.f = icmp ult i32 %i.e, 8
  %spec.select.i.i1.i.i = select i1 %i.f, ptr @_hb_NullPool, ptr %i.c ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 4
  %i.h = load i32, ptr %i.g, align 1, !tbaa !278  ; 2 uses
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.h) ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.g, label %_ZNK2OT4sbix10get_strikeEj.exit, !prof !267

_ZNK2OT4sbix10get_strikeEj.exit:                  ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.l = load i32, ptr %i.j, align 4, !tbaa !324
  %i.m = load i32, ptr %i.k, align 4, !tbaa !324
  %i.n = tail call i32 @llvm.umax.i32(i32 %i.l, i32 %i.m) ; 2 uses
  %.not25 = icmp eq i32 %i.n, 0
  %spec.store.select = select i1 %.not25, i32 1073741824, i32 %i.n ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.o = icmp ugt i32 %i.i, 1
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK2OT4sbix10get_strikeEj.exit
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 8
  %i.q = load i32, ptr %i.p, align 1, !tbaa !278  ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 %i.t
  %.0.i.i.i = select i1 %i.r, ptr @_hb_NullPool, ptr %i.u, !prof !267
  %i.v = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = zext i16 %i.w to i32
  %wide.trip.count = zext i32 %i.i to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %_ZNK2OT4sbix10get_strikeEj.exit
  %.021.lcssa = phi i32 [ 0, %_ZNK2OT4sbix10get_strikeEj.exit ], [ %.122, %bb.f ] ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !272    ; 2 uses
  %.not.i.i.i.i31 = icmp eq ptr %i.y, null
  %spec.select.i.i.i.i32 = select i1 %.not.i.i.i.i31, ptr @_hb_NullPool, ptr %i.y ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i32, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !275
  %i.ab = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i32, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !276
  %i.ad = icmp ult i32 %i.ac, 8
  %spec.select.i.i1.i.i33 = select i1 %i.ad, ptr @_hb_NullPool, ptr %i.aa ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i33, i64 4
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !278
  %i.ag = tail call noundef i32 @llvm.bswap.i32(i32 %i.af)
  %.not.i.i34 = icmp ult i32 %.021.lcssa, %i.ag
  br i1 %.not.i.i34, label %bb.b, label %_ZNK2OT4sbix10get_strikeEj.exit37, !prof !268

bb.b:                                             ; preds = %._crit_edge
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ah = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i33, i64 8
  %i.ai = zext i32 %.021.lcssa to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ai
  br label %_ZNK2OT4sbix10get_strikeEj.exit37

_ZNK2OT4sbix10get_strikeEj.exit37:                ; preds = %._crit_edge, %bb.b
  %.0.i.i35 = phi ptr [ %i.aj, %bb.b ], [ @_hb_NullPool, %._crit_edge ]
  %i.ak = load i32, ptr %.0.i.i35, align 1, !tbaa !278 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i33, i64 %i.an
  %.0.i.i.i36 = select i1 %i.al, ptr @_hb_NullPool, ptr %i.ao, !prof !267
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %.02047 = phi i32 [ %i.x, %.lr.ph.preheader ], [ %.1, %bb.f ] ; 4 uses
  %.02146 = phi i32 [ 0, %.lr.ph.preheader ], [ %.122, %bb.f ]
  %i.ap = load ptr, ptr %0, align 8, !tbaa !272   ; 2 uses
  %.not.i.i.i.i38 = icmp eq ptr %i.ap, null
  %spec.select.i.i.i.i39 = select i1 %.not.i.i.i.i38, ptr @_hb_NullPool, ptr %i.ap ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i39, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !275
  %i.as = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i39, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !276
  %i.au = icmp ult i32 %i.at, 8
  %spec.select.i.i1.i.i40 = select i1 %i.au, ptr @_hb_NullPool, ptr %i.ar ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i40, i64 4
  %i.aw = load i32, ptr %i.av, align 1, !tbaa !278
  %i.ax = tail call noundef i32 @llvm.bswap.i32(i32 %i.aw)
  %i.ay = zext i32 %i.ax to i64
  %.not.i.i41 = icmp samesign ult i64 %indvars.iv, %i.ay
  br i1 %.not.i.i41, label %bb.c, label %_ZNK2OT4sbix10get_strikeEj.exit44, !prof !268

bb.c:                                             ; preds = %.lr.ph
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.az = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i40, i64 8
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  br label %_ZNK2OT4sbix10get_strikeEj.exit44

_ZNK2OT4sbix10get_strikeEj.exit44:                ; preds = %.lr.ph, %bb.c
  %.0.i.i42 = phi ptr [ %i.ba, %bb.c ], [ @_hb_NullPool, %.lr.ph ]
  %i.bb = load i32, ptr %.0.i.i42, align 1, !tbaa !278 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bb)
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i40, i64 %i.be
  %.0.i.i.i43 = select i1 %i.bc, ptr @_hb_NullPool, ptr %i.bf, !prof !267
  %i.bg = load i16, ptr %.0.i.i.i43, align 1, !tbaa !283
  %i.bh = tail call noundef i16 @llvm.bswap.i16(i16 %i.bg)
  %i.bi = zext i16 %i.bh to i32                   ; 4 uses
  %.not26 = icmp ule i32 %spec.store.select, %i.bi
  %i.bj = icmp samesign ugt i32 %.02047, %i.bi
  %or.cond = select i1 %.not26, i1 %i.bj, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK2OT4sbix10get_strikeEj.exit44
  %i.bk = icmp ugt i32 %spec.store.select, %.02047
  %i.bl = icmp samesign ult i32 %.02047, %i.bi
  %or.cond27 = and i1 %i.bk, %i.bl
  br i1 %or.cond27, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %_ZNK2OT4sbix10get_strikeEj.exit44
  %i.bm = trunc nuw i64 %indvars.iv to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.122 = phi i32 [ %i.bm, %bb.e ], [ %.02146, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %i.bi, %bb.e ], [ %.02047, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3514

bb.g:                                             ; preds = %bb.a, %_ZNK2OT4sbix10get_strikeEj.exit37
  %.023 = phi ptr [ %.0.i.i.i36, %_ZNK2OT4sbix10get_strikeEj.exit37 ], [ @_hb_NullPool, %bb.a ]
  ret ptr %.023
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2OT10SBIXStrike14get_glyph_blobEjP9hb_blob_tjPiS3_jPj(ptr noundef nonnull align 1 dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !283    ; 2 uses
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !276
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275
  %i.f = ptrtoint ptr %0 to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 18 uses
  %i.k = sub i32 %i.c, %i.i                       ; 9 uses
  %.not45 = icmp ult i32 %1, %6
  br i1 %.not45, label %bb.c, label %.critedge, !prof !268

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw i32 %1, 1
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 1, !tbaa !278
  %i.p = tail call noundef i32 @llvm.bswap.i32(i32 %i.o) ; 3 uses
  %i.q = zext i32 %1 to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.q
  %i.s = load i32, ptr %i.r, align 1, !tbaa !278  ; 2 uses
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.s)  ; 4 uses
  %.not46 = icmp ugt i32 %i.p, %i.t
  br i1 %.not46, label %bb.d, label %.critedge, !prof !268

bb.d:                                             ; preds = %bb.c
  %i.u = sub nuw i32 %i.p, %i.t                   ; 2 uses
  %i.v = icmp ult i32 %i.u, 9
  %i.w = icmp ugt i32 %i.p, %i.k
  %or.cond = select i1 %i.v, i1 true, i1 %i.w, !prof !408
  br i1 %or.cond, label %.critedge, label %bb.e, !prof !408

bb.e:                                             ; preds = %bb.d
  %i.x = add i32 %i.u, -8                         ; 2 uses
  %i.y = icmp eq i32 %i.s, 0
  %i.z = zext i32 %i.t to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  %.0.i.i = select i1 %i.y, ptr @_hb_NullPool, ptr %i.aa, !prof !267 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !278 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 1701868900
  br i1 %i.ad, label %bb.f, label %bb.at

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp ugt i32 %i.x, 1
  br i1 %i.ae, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !283
  %i.ah = tail call noundef i16 @llvm.bswap.i16(i16 %i.ag) ; 3 uses
  %i.ai = zext i16 %i.ah to i32
  %.not45.1 = icmp ugt i32 %6, %i.ai
  br i1 %.not45.1, label %bb.h, label %.critedge, !prof !268

bb.h:                                             ; preds = %bb.g
  %i.aj = zext i16 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 1, !tbaa !278
  %i.an = tail call noundef i32 @llvm.bswap.i32(i32 %i.am) ; 3 uses
  %i.ao = zext i16 %i.ah to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !278 ; 2 uses
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq) ; 4 uses
  %.not46.1 = icmp ugt i32 %i.an, %i.ar
  br i1 %.not46.1, label %bb.i, label %.critedge, !prof !268

bb.i:                                             ; preds = %bb.h
  %i.as = sub nuw i32 %i.an, %i.ar                ; 2 uses
  %i.at = icmp ult i32 %i.as, 9
  %i.au = icmp ugt i32 %i.an, %i.k
  %or.cond.1 = select i1 %i.at, i1 true, i1 %i.au, !prof !408
  br i1 %or.cond.1, label %.critedge, label %bb.j, !prof !408

bb.j:                                             ; preds = %bb.i
  %i.av = add i32 %i.as, -8                       ; 2 uses
  %i.aw = icmp eq i32 %i.aq, 0
  %i.ax = zext i32 %i.ar to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  %.0.i.i.1 = select i1 %i.aw, ptr @_hb_NullPool, ptr %i.ay, !prof !267 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i.1, i64 4
  %i.ba = load i32, ptr %i.az, align 1, !tbaa !278 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 1701868900
  br i1 %i.bb, label %bb.k, label %bb.at

bb.k:                                             ; preds = %bb.j
  %i.bc = icmp ugt i32 %i.av, 1
  br i1 %i.bc, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i.1, i64 8
  %i.be = load i16, ptr %i.bd, align 1, !tbaa !283
  %i.bf = tail call noundef i16 @llvm.bswap.i16(i16 %i.be) ; 3 uses
  %i.bg = zext i16 %i.bf to i32
  %.not45.2 = icmp ugt i32 %6, %i.bg
  br i1 %.not45.2, label %bb.m, label %.critedge, !prof !268

bb.m:                                             ; preds = %bb.l
  %i.bh = zext i16 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bj, align 1, !tbaa !278
  %i.bl = tail call noundef i32 @llvm.bswap.i32(i32 %i.bk) ; 3 uses
  %i.bm = zext i16 %i.bf to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 1, !tbaa !278 ; 2 uses
  %i.bp = tail call i32 @llvm.bswap.i32(i32 %i.bo) ; 4 uses
  %.not46.2 = icmp ugt i32 %i.bl, %i.bp
  br i1 %.not46.2, label %bb.n, label %.critedge, !prof !268

bb.n:                                             ; preds = %bb.m
  %i.bq = sub nuw i32 %i.bl, %i.bp                ; 2 uses
  %i.br = icmp ult i32 %i.bq, 9
  %i.bs = icmp ugt i32 %i.bl, %i.k
  %or.cond.2 = select i1 %i.br, i1 true, i1 %i.bs, !prof !408
  br i1 %or.cond.2, label %.critedge, label %bb.o, !prof !408

bb.o:                                             ; preds = %bb.n
  %i.bt = add i32 %i.bq, -8                       ; 2 uses
  %i.bu = icmp eq i32 %i.bo, 0
  %i.bv = zext i32 %i.bp to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv
  %.0.i.i.2 = select i1 %i.bu, ptr @_hb_NullPool, ptr %i.bw, !prof !267 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.2, i64 4
  %i.by = load i32, ptr %i.bx, align 1, !tbaa !278 ; 2 uses
  %i.bz = icmp eq i32 %i.by, 1701868900
  br i1 %i.bz, label %bb.p, label %bb.at

bb.p:                                             ; preds = %bb.o
  %i.ca = icmp ugt i32 %i.bt, 1
  br i1 %i.ca, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i.2, i64 8
  %i.cc = load i16, ptr %i.cb, align 1, !tbaa !283
  %i.cd = tail call noundef i16 @llvm.bswap.i16(i16 %i.cc) ; 3 uses
  %i.ce = zext i16 %i.cd to i32
  %.not45.3 = icmp ugt i32 %6, %i.ce
  br i1 %.not45.3, label %bb.r, label %.critedge, !prof !268

bb.r:                                             ; preds = %bb.q
  %i.cf = zext i16 %i.cd to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 1, !tbaa !278
  %i.cj = tail call noundef i32 @llvm.bswap.i32(i32 %i.ci) ; 3 uses
  %i.ck = zext i16 %i.cd to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 1, !tbaa !278 ; 2 uses
  %i.cn = tail call i32 @llvm.bswap.i32(i32 %i.cm) ; 4 uses
  %.not46.3 = icmp ugt i32 %i.cj, %i.cn
  br i1 %.not46.3, label %bb.s, label %.critedge, !prof !268

bb.s:                                             ; preds = %bb.r
  %i.co = sub nuw i32 %i.cj, %i.cn                ; 2 uses
  %i.cp = icmp ult i32 %i.co, 9
  %i.cq = icmp ugt i32 %i.cj, %i.k
  %or.cond.3 = select i1 %i.cp, i1 true, i1 %i.cq, !prof !408
  br i1 %or.cond.3, label %.critedge, label %bb.t, !prof !408

bb.t:                                             ; preds = %bb.s
  %i.cr = add i32 %i.co, -8                       ; 2 uses
  %i.cs = icmp eq i32 %i.cm, 0
  %i.ct = zext i32 %i.cn to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %i.ct
  %.0.i.i.3 = select i1 %i.cs, ptr @_hb_NullPool, ptr %i.cu, !prof !267 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZNK2OT14PaintComposite11paint_glyphEPNS_18hb_paint_context_tE:bb.a
  %i.am = add nsw i32 %i.r, -1
  store i32 %i.am, ptr %i.q, align 4, !tbaa !1649
  tail call void @_ZNK2OT5Paint8dispatchINS_18hb_paint_context_tEJEEENT_8return_tEPS3_DpOT0_(ptr noundef nonnull align 1 dereferenceable(20) %.0.i.i, ptr noundef nonnull align 8 dereferenceable(128) %1), !inline_history !156
  %i.an = load i32, ptr %i.n, align 8, !tbaa !1648
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.n, align 8, !tbaa !1648
  br label %_ZN2OT18hb_paint_context_t7recurseERKNS_5PaintE.exit

_ZN2OT18hb_paint_context_t7recurseERKNS_5PaintE.exit: ; preds = %_ZN16hb_paint_funcs_t14push_group_forEPv25hb_paint_composite_mode_t.exit, %bb.c
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !1646 ; 3 uses
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !1647
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1486
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 160
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1014 ; 2 uses
  %.not.i12 = icmp eq ptr %i.au, null
  br i1 %.not.i12, label %_ZN16hb_paint_funcs_t14push_group_forEPv25hb_paint_composite_mode_t.exit13, label %bb.d

bb.d:                                             ; preds = %_ZN2OT18hb_paint_context_t7recurseERKNS_5PaintE.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1485
  br label %_ZN16hb_paint_funcs_t14push_group_forEPv25hb_paint_composite_mode_t.exit13

_ZN16hb_paint_funcs_t14push_group_forEPv25hb_paint_composite_mode_t.exit13: ; preds = %_ZN2OT18hb_paint_context_t7recurseERKNS_5PaintE.exit, %bb.d
  %i.ax = phi ptr [ %i.aw, %bb.d ], [ null, %_ZN2OT18hb_paint_context_t7recurseERKNS_5PaintE.exit ]
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(176) %i.ap, ptr noundef %i.aq, i32 noundef %spec.select, ptr noundef %i.ax) #63, !inline_history !133
  %i.ay = load i32, ptr %i.n, align 8, !tbaa !1648 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 1
  %i.ba = load i32, ptr %i.q, align 4             ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 1
  %i.bc = select i1 %i.az, i1 true, i1 %i.bb, !prof !267
  br i1 %i.bc, label %_ZN2OT18hb_paint_context_t7recurseERKNS_5PaintE.exit15, label %bb.e, !prof !267

bb.e:                                             ; preds = %_ZN16hb_paint_funcs_t14push_group_forEPv25hb_paint_composite_mode_t.exit13
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !280 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !280 ; 2 uses
  %i.bh = or i8 %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !280 ; 2 uses
  %i.bk = or i8 %i.bh, %i.bj
  %i.bl = icmp eq i8 %i.bk, 0
  %i.bm = zext i8 %i.be to i64
  %i.bn = shl nuw nsw i64 %i.bm, 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn
  %i.bp = zext i8 %i.bg to i64
  %i.bq = shl nuw nsw i64 %i.bp, 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq
  %i.bs = zext i8 %i.bj to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  %.0.i.i14 = select i1 %i.bl, ptr @_hb_NullPool, ptr %i.bt, !prof !267
  %i.bu = add nsw i32 %i.ay, -1
  store i32 %i.bu, ptr %i.n, align 8, !tbaa !1648
  %i.bv = add nsw i32 %i.ba, -1
  store i32 %i.bv, ptr %i.q, align 4, !tbaa !1649
  tail call void @_ZNK2OT5Paint8dispatchINS_18hb_paint_context_tEJEEENT_8return_tEPS3_DpOT0_(ptr noundef nonnull align 1 dereferenceable(20) %.0.i.i14, ptr noundef nonnull align 8 dereferenceable(128) %1), !inline_history !156
  %i.bw = load i32, ptr %i.n, align 8, !tbaa !1648
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.n, align 8, !tbaa !1648
  br label %_ZN2OT18hb_paint_context_t7recurseERKNS_5PaintE.exit15

_ZN2OT18hb_paint_context_t7recurseERKNS_5PaintE.exit15: ; preds = %_ZN16hb_paint_funcs_t14push_group_forEPv25hb_paint_composite_mode_t.exit13, %bb.e
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !1646 ; 3 uses
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !1647
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 136
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1489
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 160
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1014 ; 2 uses
  %.not.i16 = icmp eq ptr %i.cd, null
  br i1 %.not.i16, label %_ZN16hb_paint_funcs_t9pop_groupEPv25hb_paint_composite_mode_t.exit, label %bb.f

bb.f:                                             ; preds = %_ZN2OT18hb_paint_context_t7recurseERKNS_5PaintE.exit15
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 120
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1488
  br label %_ZN16hb_paint_funcs_t9pop_groupEPv25hb_paint_composite_mode_t.exit

_ZN16hb_paint_funcs_t9pop_groupEPv25hb_paint_composite_mode_t.exit: ; preds = %_ZN2OT18hb_paint_context_t7recurseERKNS_5PaintE.exit15, %bb.f
  %i.cg = phi ptr [ %i.cf, %bb.f ], [ null, %_ZN2OT18hb_paint_context_t7recurseERKNS_5PaintE.exit15 ]
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(176) %i.by, ptr noundef %i.bz, i32 noundef %spec.select, ptr noundef %i.cg) #63, !inline_history !134
  %i.ch = load ptr, ptr %i.c, align 8, !tbaa !1646 ; 3 uses
  %i.ci = load ptr, ptr %i.e, align 8, !tbaa !1647
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 136
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1489
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 160
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1014 ; 2 uses
  %.not.i17 = icmp eq ptr %i.cm, null
  br i1 %.not.i17, label %_ZN16hb_paint_funcs_t9pop_groupEPv25hb_paint_composite_mode_t.exit18, label %bb.g

bb.g:                                             ; preds = %_ZN16hb_paint_funcs_t9pop_groupEPv25hb_paint_composite_mode_t.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 120
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1488
  br label %_ZN16hb_paint_funcs_t9pop_groupEPv25hb_paint_composite_mode_t.exit18

_ZN16hb_paint_funcs_t9pop_groupEPv25hb_paint_composite_mode_t.exit18: ; preds = %_ZN16hb_paint_funcs_t9pop_groupEPv25hb_paint_composite_mode_t.exit, %bb.g
  %i.cp = phi ptr [ %i.co, %bb.g ], [ null, %_ZN16hb_paint_funcs_t9pop_groupEPv25hb_paint_composite_mode_t.exit ]
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(176) %i.ch, ptr noundef %i.ci, i32 noundef 3, ptr noundef %i.cp) #63, !inline_history !134
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT4CBDT13accelerator_t11get_extentsEP9hb_font_tjP18hb_glyph_extents_tb(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !272    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_hb_NullPool, ptr %i.a ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275
  %i.d = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !276
  %i.f = icmp ult i32 %i.e, 8
  %spec.select.i.i1.i.i = select i1 %i.f, ptr @_hb_NullPool, ptr %i.c ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 4 ; 5 uses
  %i.h = load i32, ptr %i.g, align 1, !tbaa !278  ; 2 uses
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.h) ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit, label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit.i, !prof !267

_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.l = load i32, ptr %i.j, align 4, !tbaa !324
  %i.m = load i32, ptr %i.k, align 4, !tbaa !324
  %i.n = tail call i32 @llvm.umax.i32(i32 %i.l, i32 %i.m) ; 2 uses
  %.not26.i = icmp eq i32 %i.n, 0
  %spec.store.select.i = select i1 %.not26.i, i32 1073741824, i32 %i.n ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.o = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 52
  %i.p = load i32, ptr %i.g, align 1, !tbaa !278
  %.not.i30.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i30.not.i, label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i, label %bb.b, !prof !267

bb.b:                                             ; preds = %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.q = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 8
  br label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i

_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i: ; preds = %bb.b, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit.i
  %.0.i31.i = phi ptr [ %i.q, %bb.b ], [ @_hb_NullPool, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit.i ]
  %i.r = icmp ugt i32 %i.i, 1
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i
  %i.s = load i8, ptr %i.o, align 1, !tbaa !303
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i31.i, i64 45
  %i.u = load i8, ptr %i.t, align 1, !tbaa !303
  %i.v = tail call i8 @llvm.umax.i8(i8 %i.s, i8 %i.u)
  %i.w = zext i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 8
  %wide.trip.count.i = zext i32 %i.i to i64
  br label %bb.d

._crit_edge.i:                                    ; preds = %bb.h, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i
  %.022.lcssa.i = phi i32 [ 0, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit32.i ], [ %.123.i, %bb.h ] ; 2 uses
  %i.y = load i32, ptr %i.g, align 1, !tbaa !278
  %i.z = tail call noundef i32 @llvm.bswap.i32(i32 %i.y)
  %.not.i34.i = icmp ult i32 %.022.lcssa.i, %i.z
  br i1 %.not.i34.i, label %bb.c, label %_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit, !prof !268

bb.c:                                             ; preds = %._crit_edge.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 8
  %i.ab = zext i32 %.022.lcssa.i to i64
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %i.ab
  br label %_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 5 uses
  %.02148.i = phi i32 [ %i.w, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 4 uses
  %.02247.i = phi i32 [ 0, %.lr.ph.i ], [ %.123.i, %bb.h ]
  %i.ad = load i32, ptr %i.g, align 1, !tbaa !278
  %i.ae = tail call noundef i32 @llvm.bswap.i32(i32 %i.ad)
  %i.af = zext i32 %i.ae to i64
  %.not.i37.i = icmp samesign ult i64 %indvars.iv.i, %i.af
  br i1 %.not.i37.i, label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i, label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i, !prof !268

_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %indvars.iv.i ; 2 uses
  %.pre.i = load i32, ptr %i.g, align 1, !tbaa !278
  %.pre51.i = tail call noundef i32 @llvm.bswap.i32(i32 %.pre.i)
  %.pre52.i = zext i32 %.pre51.i to i64
  %i.ah = icmp samesign ult i64 %indvars.iv.i, %.pre52.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 44 ; 2 uses
  br i1 %i.ah, label %bb.e, label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i, !prof !672

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  br label %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i

_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i, %bb.d
  %i.aj = phi ptr [ %i.ai, %bb.e ], [ %i.ai, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i ], [ getelementptr inbounds nuw (i8, ptr @_hb_NullPool, i64 44), %bb.d ]
  %.0.i41.i = phi ptr [ %i.ag, %bb.e ], [ @_hb_NullPool, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit39.i ], [ @_hb_NullPool, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i41.i, i64 45
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !303
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !303
  %i.an = tail call i8 @llvm.umax.i8(i8 %i.al, i8 %i.am)
  %i.ao = zext i8 %i.an to i32                    ; 4 uses
  %.not27.i = icmp ule i32 %spec.store.select.i, %i.ao
  %i.ap = icmp samesign ugt i32 %.02148.i, %i.ao
  %or.cond.i = select i1 %.not27.i, i1 %i.ap, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i
  %i.aq = icmp ugt i32 %spec.store.select.i, %.02148.i
  %i.ar = icmp samesign ult i32 %.02148.i, %i.ao
  %or.cond28.i = and i1 %i.aq, %i.ar
  br i1 %or.cond28.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZNK2OT7ArrayOfINS_15BitmapSizeTableENS_7NumTypeILb1EjLj4EEEEixEi.exit42.i
  %i.as = trunc nuw i64 %indvars.iv.i to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.123.i = phi i32 [ %i.as, %bb.g ], [ %.02247.i, %bb.f ] ; 2 uses
  %.1.i = phi i32 [ %i.ao, %bb.g ], [ %.02148.i, %bb.f ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !92

_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit:     ; preds = %bb.a, %._crit_edge.i, %bb.c
  %.024.i = phi ptr [ @_hb_NullPool, %bb.a ], [ %i.ac, %bb.c ], [ @_hb_NullPool, %._crit_edge.i ] ; 4 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !272   ; 2 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.at, null
  %spec.select.i.i.i.i43 = select i1 %.not.i.i.i.i42, ptr @_hb_NullPool, ptr %i.at ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i43, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !275
  %i.aw = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i43, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !276
  %i.ay = icmp ult i32 %i.ax, 8
  %spec.select.i.i1.i.i44 = select i1 %i.ay, ptr @_hb_NullPool, ptr %i.av
  %i.az = load i32, ptr %.024.i, align 1, !tbaa !278
  %i.ba = tail call noundef i32 @llvm.bswap.i32(i32 %i.az)
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i44, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.024.i, i64 8
  %i.be = load i32, ptr %i.bd, align 1, !tbaa !278 ; 2 uses
  %.not27.i.i = icmp eq i32 %i.be, 0
  br i1 %.not27.i.i, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNK2OT4CBLC13choose_strikeEP9hb_font_t.exit
  %i.bf = tail call noundef i32 @llvm.bswap.i32(i32 %i.be)
  %wide.trip.count.i.i = zext i32 %i.bf to i64
  br label %.lr.ph.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit, label %.lr.ph.i.i, !llvm.loop !93

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i.i ; 3 uses
  %i.bh = load i16, ptr %i.bg, align 1, !tbaa !283
  %i.bi = tail call noundef i16 @llvm.bswap.i16(i16 %i.bh)
  %i.bj = zext i16 %i.bi to i32                   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bl = load i16, ptr %i.bk, align 1, !tbaa !283
  %i.bm = tail call noundef i16 @llvm.bswap.i16(i16 %i.bl)
  %i.bn = zext i16 %i.bm to i32
  %.not.i.i = icmp ult i32 %2, %i.bj
  %.not17.i.i = icmp ugt i32 %2, %i.bn
  %or.cond.i.i = or i1 %.not.i.i, %.not17.i.i
  br i1 %or.cond.i.i, label %bb.i, label %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit

_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit: ; preds = %.lr.ph.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.024.i, i64 44 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !303
  %.not40 = icmp eq i8 %i.bp, 0
  br i1 %.not40, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK2OT15BitmapSizeTable10find_tableEjPKvPS2_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %.024.i, i64 45
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !303
  %.not41 = icmp eq i8 %i.br, 0
  br i1 %.not41, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bt = load i32, ptr %i.bs, align 1, !tbaa !278 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = tail call i32 @llvm.bswap.i32(i32 %i.bt)
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bw
  %.0.i.i.i = select i1 %i.bu, ptr @_hb_NullPool, ptr %i.bx, !prof !267 ; 6 uses
  %i.by = sub nuw nsw i32 %2, %i.bj               ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.ca = load i16, ptr %i.bz, align 1, !tbaa !283
  %i.cb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ca)
  %i.cc = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.cd = tail call noundef i16 @llvm.bswap.i16(i16 %i.cc)
  switch i16 %i.cd, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit [
    i16 1, label %bb.l
    i16 3, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.cf = zext nneg i32 %i.by to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 1, !tbaa !278
  %i.cj = tail call noundef i32 @llvm.bswap.i32(i32 %i.ci) ; 2 uses
  %i.ck = load i32, ptr %i.cg, align 1, !tbaa !278
  %i.cl = tail call noundef i32 @llvm.bswap.i32(i32 %i.ck) ; 3 uses
  %.not.i.i.i = icmp ugt i32 %i.cj, %i.cl
  br i1 %.not.i.i.i, label %bb.m, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit, !prof !268

bb.m:                                             ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.cn = load i32, ptr %i.cm, align 1, !tbaa !278
  %i.co = tail call noundef i32 @llvm.bswap.i32(i32 %i.cn)
  %i.cp = add i32 %i.co, %i.cl
  %i.cq = sub nuw i32 %i.cj, %i.cl
  br label %_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit

bb.n:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.cs = zext nneg i32 %i.by to i64
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.cv = load i16, ptr %i.cu, align 1, !tbaa !283
  %i.cw = tail call noundef i16 @llvm.bswap.i16(i16 %i.cv) ; 2 uses
  %i.cx = load i16, ptr %i.ct, align 1, !tbaa !283
  %i.cy = tail call noundef i16 @llvm.bswap.i16(i16 %i.cx) ; 3 uses
  %.not.i8.i.i = icmp ugt i16 %i.cw, %i.cy
  br i1 %.not.i8.i.i, label %bb.o, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit, !prof !268

bb.o:                                             ; preds = %bb.n
  %i.cz = zext i16 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.db = load i32, ptr %i.da, align 1, !tbaa !278
  %i.dc = tail call noundef i32 @llvm.bswap.i32(i32 %i.db)
  %i.dd = add i32 %i.dc, %i.cz
  %narrow.i.i.i = sub nuw i16 %i.cw, %i.cy
  %i.de = zext i16 %narrow.i.i.i to i32
  br label %_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit

_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit: ; preds = %bb.o, %bb.m
  %.162 = phi i32 [ %i.dd, %bb.o ], [ %i.cp, %bb.m ] ; 4 uses
  %.060 = phi i32 [ %i.de, %bb.o ], [ %i.cq, %bb.m ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !272 ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.dg, null
  %spec.select.i.i = select i1 %.not.i.i45, ptr @_hb_NullPool, ptr %i.dg ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 24
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !276 ; 2 uses
  %i.dj = icmp ugt i32 %.162, %i.di
  %i.dk = sub nuw i32 %i.di, %.162
  %i.dl = icmp ult i32 %i.dk, %.060
  %i.dm = select i1 %i.dj, i1 true, i1 %i.dl, !prof !267
  br i1 %i.dm, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit, label %bb.p, !prof !267

bb.p:                                             ; preds = %_ZNK2OT19IndexSubtableRecord14get_image_dataEjPKvPjS3_S3_.exit
  switch i16 %i.cb, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit [
    i16 17, label %bb.q
    i16 18, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %i.dn = icmp ult i32 %.060, 9
  br i1 %i.dn, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit, label %bb.r, !prof !267

bb.r:                                             ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !275
  %i.dq = zext i32 %.162 to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dq ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.dt = load <2 x i8>, ptr %i.ds, align 1, !tbaa !300 ; 4 uses
  %i.du = sext <2 x i8> %i.dt to <2 x i32>
  store <2 x i32> %i.du, ptr %3, align 4, !tbaa !324
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !303
  %i.dx = zext i8 %i.dw to i32                    ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !374
  %i.dz = load i8, ptr %i.dr, align 1, !tbaa !303
  %i.ea = zext i8 %i.dz to i32                    ; 2 uses
  %i.eb = sub nsw i32 0, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !375
  br i1 %4, label %bb.s, label %_ZNK2OT17SmallGlyphMetrics11get_extentsEP9hb_font_tP18hb_glyph_extents_tb.exit

bb.s:                                             ; preds = %bb.r
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ee = sitofp <2 x i8> %i.dt to <2 x float>
  %i.ef = load <2 x float>, ptr %i.ed, align 8, !tbaa !304 ; 3 uses
  %i.eg = fmul <2 x float> %i.ef, %i.ee
  %i.eh = extractelement <2 x i8> %i.dt, i64 0
  %i.ei = sext i8 %i.eh to i32
  %i.ej = add nsw i32 %i.dx, %i.ei
  %i.ek = trunc nsw i32 %i.ej to i16
  %i.el = sitofp i16 %i.ek to float
  %i.em = extractelement <2 x float> %i.ef, i64 0
  %i.en = fmul float %i.em, %i.el
  %i.eo = extractelement <2 x i8> %i.dt, i64 1
  %i.ep = sext i8 %i.eo to i32
  %i.eq = sub nsw i32 %i.ep, %i.ea
end_hunk_2
