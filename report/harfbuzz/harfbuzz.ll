Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 273
loop-unroll.NumUnrolled: 472
begin_hunk_0_@_ZNK2OT17hb_kern_machine_tINS_19KernSubTableFormat3INS_21KernAATSubTableHeaderEEEE4kernEP9hb_font_tP11hb_buffer_tjb:bb.a
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !303 ; 2 uses
  %.not.i.i.i = icmp ult i32 %i.cu, %i.dh
  %i.dn = zext i32 %i.cu to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dn
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.do, ptr @_hb_NullPool, !prof !268
  %i.dp = load i8, ptr %.0.i.i.i, align 1, !tbaa !303 ; 2 uses
  %.not.i.i22.i = icmp ult i32 %i.cx, %i.dh
  %i.dq = zext i32 %i.cx to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dq
  %.0.i.i23.i = select i1 %.not.i.i22.i, ptr %i.dr, ptr @_hb_NullPool, !prof !268
  %i.ds = load i8, ptr %.0.i.i23.i, align 1, !tbaa !303 ; 2 uses
  %.not.i76 = icmp uge i8 %i.dp, %i.dk
  %i.dt = icmp uge i8 %i.ds, %i.dm
  %or.cond.i = select i1 %.not.i76, i1 true, i1 %i.dt, !prof !408
  br i1 %or.cond.i, label %_ZNK2OT19KernSubTableFormat3INS_21KernAATSubTableHeaderEE11get_kerningEjj.exit.thread, label %_ZNK2OT19KernSubTableFormat3INS_21KernAATSubTableHeaderEE11get_kerningEjj.exit, !prof !408

_ZNK2OT19KernSubTableFormat3INS_21KernAATSubTableHeaderEE11get_kerningEjj.exit: ; preds = %bb.j
  %i.du = zext i8 %i.dm to i32                    ; 2 uses
  %i.dv = zext i8 %i.ds to i32
  %i.dw = zext i8 %i.dk to i32
  %i.dx = zext i8 %i.dp to i32
  %i.dy = mul nuw nsw i32 %i.du, %i.dw
  %i.dz = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.2.8.insert.ext.i.i14.i
  %i.ea = mul nuw nsw i32 %i.dx, %i.du
  %i.eb = add nuw nsw i32 %i.ea, %i.dv            ; 2 uses
  %.not.i.i24.i = icmp samesign ult i32 %i.eb, %i.dy
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ec
  %.0.i.i25.i = select i1 %.not.i.i24.i, ptr %i.ed, ptr @_hb_NullPool, !prof !268
  %i.ee = load i8, ptr %.0.i.i25.i, align 1, !tbaa !303 ; 2 uses
  %.not.i.i26.i = icmp ult i8 %i.ee, %i.da
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.ef
  %.0.i.i27.i = select i1 %.not.i.i26.i, ptr %i.eg, ptr @_hb_NullPool, !prof !268
  %i.eh = load i16, ptr %.0.i.i27.i, align 1, !tbaa !283 ; 2 uses
  %i.ei = call noundef i16 @llvm.bswap.i16(i16 %i.eh) ; 3 uses
  %i.ej = sext i16 %i.ei to i32                   ; 2 uses
  %.not73 = icmp eq i16 %i.eh, 0
  br i1 %.not73, label %_ZNK2OT19KernSubTableFormat3INS_21KernAATSubTableHeaderEE11get_kerningEjj.exit.thread, label %bb.k, !prof !1732

bb.k:                                             ; preds = %_ZNK2OT19KernSubTableFormat3INS_21KernAATSubTableHeaderEE11get_kerningEjj.exit
  br i1 %i.bx, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  br i1 %4, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ek = load i64, ptr %i.ch, align 8, !tbaa !1048
  %i.el = sext i16 %i.ei to i64
  %i.em = mul nsw i64 %i.ek, %i.el
  %i.en = add nsw i64 %i.em, 32768
  %i.eo = lshr i64 %i.en, 16
  %i.ep = trunc i64 %i.eo to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i32 [ %i.ep, %bb.m ], [ %i.ej, %bb.l ] ; 3 uses
  %i.eq = load i8, ptr %i.cf, align 8, !tbaa !1754, !range !380, !noundef !293
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.es = getelementptr inbounds nuw [20 x i8], ptr %i.cd, i64 %i.cv
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  store i32 %.0, ptr %i.et, align 4, !tbaa !645
  %i.eu = load i32, ptr %i.cg, align 8, !tbaa !1367
  %i.ev = or i32 %i.eu, 8
  store i32 %i.ev, ptr %i.cg, align 8, !tbaa !1367
  br label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.ew = ashr i32 %.0, 1                         ; 2 uses
  %i.ex = sub nsw i32 %.0, %i.ew                  ; 2 uses
  %i.ey = getelementptr inbounds nuw [20 x i8], ptr %i.cd, i64 %i.cj ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !617
  %i.fa = add nsw i32 %i.ez, %i.ew
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !617
  %i.fb = getelementptr inbounds nuw [20 x i8], ptr %i.cd, i64 %i.cv ; 3 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !617
  %i.fd = add nsw i32 %i.fc, %i.ex
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !617
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !644
  %i.fg = add nsw i32 %i.ff, %i.ex
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !644
  br label %bb.v

bb.q:                                             ; preds = %bb.k
  br i1 %4, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fh = load i64, ptr %i.ce, align 8, !tbaa !1047
  %i.fi = sext i16 %i.ei to i64
  %i.fj = mul nsw i64 %i.fh, %i.fi
  %i.fk = add nsw i64 %i.fj, 32768
  %i.fl = lshr i64 %i.fk, 16
  %i.fm = trunc i64 %i.fl to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1 = phi i32 [ %i.fm, %bb.r ], [ %i.ej, %bb.q ] ; 3 uses
  %i.fn = load i8, ptr %i.cf, align 8, !tbaa !1754, !range !380, !noundef !293
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fp = getelementptr inbounds nuw [20 x i8], ptr %i.cd, i64 %i.cv
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i32 %.1, ptr %i.fq, align 4, !tbaa !644
  %i.fr = load i32, ptr %i.cg, align 8, !tbaa !1367
  %i.fs = or i32 %i.fr, 8
  store i32 %i.fs, ptr %i.cg, align 8, !tbaa !1367
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ft = ashr i32 %.1, 1                         ; 2 uses
  %i.fu = sub nsw i32 %.1, %i.ft                  ; 2 uses
  %i.fv = getelementptr inbounds nuw [20 x i8], ptr %i.cd, i64 %i.cj
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !619
  %i.fy = add nsw i32 %i.fx, %i.ft
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !619
  %i.fz = getelementptr inbounds nuw [20 x i8], ptr %i.cd, i64 %i.cv ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !619
  %i.gc = add nsw i32 %i.gb, %i.fu
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !619
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 12 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !645
  %i.gf = add nsw i32 %i.ge, %i.fu
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !645
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.o, %bb.p
  %i.gg = add i32 %i.cs, 1
  call void @_ZN11hb_buffer_t15unsafe_to_breakEjj(ptr noundef nonnull align 8 dereferenceable(276) %2, i32 noundef %.07183, i32 noundef %i.gg)
  %.pre = load i32, ptr %i.bt, align 8, !tbaa !1366
  br label %_ZNK2OT19KernSubTableFormat3INS_21KernAATSubTableHeaderEE11get_kerningEjj.exit.thread

_ZNK2OT19KernSubTableFormat3INS_21KernAATSubTableHeaderEE11get_kerningEjj.exit.thread: ; preds = %bb.v, %_ZNK2OT19KernSubTableFormat3INS_21KernAATSubTableHeaderEE11get_kerningEjj.exit, %bb.j, %bb.i
  %.172 = phi i32 [ %i.cr, %bb.i ], [ %i.cs, %bb.j ], [ %i.cs, %_ZNK2OT19KernSubTableFormat3INS_21KernAATSubTableHeaderEE11get_kerningEjj.exit ], [ %.pre, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %.backedge

bb.w:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !283
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  switch i16 %i.b, label %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE13collect_classI8hb_set_tEEbPT_j.exit [
    i16 1, label %bb.b
    i16 2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %.not.i = icmp eq i16 %i.d, 0
  br i1 %.not.i, label %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE13collect_classI8hb_set_tEEbPT_j.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = tail call noundef i16 @llvm.bswap.i16(i16 %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %wide.trip.count.i = zext i16 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i ] ; 4 uses
  %i.j = load i16, ptr %i.c, align 1, !tbaa !283
  %i.k = tail call noundef i16 @llvm.bswap.i16(i16 %i.j)
  %i.l = zext i16 %i.k to i64
  %.not.i.i = icmp samesign ult i64 %indvars.iv.i, %i.l
  br i1 %.not.i.i, label %bb.d, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i, !prof !268

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.i
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.m, %bb.d ], [ @_hb_NullPool, %bb.c ]
  %i.n = load i16, ptr %.0.i.i, align 1, !tbaa !283
  %i.o = tail call noundef i16 @llvm.bswap.i16(i16 %i.n)
  %i.p = zext i16 %i.o to i32
  %i.q = icmp eq i32 %2, %i.p
  br i1 %i.q, label %bb.e, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i
  %i.r = load i16, ptr %i.g, align 1, !tbaa !283
  %i.s = tail call noundef i16 @llvm.bswap.i16(i16 %i.r)
  %i.t = zext i16 %i.s to i32
  %i.u = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.v = add i32 %i.t, %i.u                       ; 2 uses
  %i.w = load i8, ptr %i.i, align 8, !tbaa !946, !range !380, !noundef !293
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.g, !prof !267

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.h, i32 noundef %i.v)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.h, i32 noundef %i.v)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i: ; preds = %bb.g, %bb.f, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE13collect_classI8hb_set_tEEbPT_j.exit, label %bb.c, !llvm.loop !163

bb.h:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.aa = load i16, ptr %i.y, align 1, !tbaa !283 ; 2 uses
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i64
  %.idx.i = mul nuw nsw i64 %i.ac, 6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i
  %.not16.i = icmp eq i16 %i.aa, 0
  br i1 %.not16.i, label %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE13collect_classI8hb_set_tEEbPT_j.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.i

bb.i:                                             ; preds = %.critedge.i, %.lr.ph.i5
  %.01317.i = phi ptr [ %i.z, %.lr.ph.i5 ], [ %i.av, %.critedge.i ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01317.i, i64 4
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !283
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = zext i16 %i.ai to i32
  %i.ak = icmp eq i32 %2, %i.aj
  br i1 %i.ak, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.al = load i16, ptr %.01317.i, align 1, !tbaa !283
  %i.am = tail call noundef i16 @llvm.bswap.i16(i16 %i.al)
  %i.an = zext i16 %i.am to i32                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01317.i, i64 2
  %i.ap = load i16, ptr %i.ao, align 1, !tbaa !283
  %i.aq = tail call noundef i16 @llvm.bswap.i16(i16 %i.ap)
  %i.ar = zext i16 %i.aq to i32                   ; 2 uses
  %i.as = load i8, ptr %i.af, align 8, !tbaa !946, !range !380, !noundef !293
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i, !prof !267

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i: ; preds = %bb.j
  tail call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.ae, i32 noundef %i.an, i32 noundef %i.ar)
  br label %.critedge.i

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i: ; preds = %bb.j
  %i.au = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.ae, i32 noundef %i.an, i32 noundef %i.ar)
  br i1 %i.au, label %.critedge.i, label %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE13collect_classI8hb_set_tEEbPT_j.exit, !prof !1755

.critedge.i:                                      ; preds = %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i, %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.01317.i, i64 6 ; 2 uses
  %.not.i6 = icmp eq ptr %i.av, %i.ad
  br i1 %.not.i6, label %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE13collect_classI8hb_set_tEEbPT_j.exit, label %bb.i

_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE13collect_classI8hb_set_tEEbPT_j.exit: ; preds = %.critedge.i, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i, %bb.h, %bb.b, %bb.a
  %.0 = phi i1 [ true, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.h ], [ false, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i ], [ true, %.critedge.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2OT12LigCaretList14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS_18ItemVariationStoreEjPjPi(ptr noundef nonnull align 1 dereferenceable(6) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(12) %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !283    ; 2 uses
  %i.b = icmp eq i16 %i.a, 0
  %i.c = tail call i16 @llvm.bswap.i16(i16 %i.a)
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %.0.i.i = select i1 %i.b, ptr @_hb_NullPool, ptr %i.e, !prof !267
  %i.f = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, i32 noundef %3) ; 3 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %6, align 4, !tbaa !324
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i16, ptr %i.h, align 1, !tbaa !283
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  %i.k = zext i16 %i.j to i32
  %.not.i = icmp ult i32 %i.f, %i.k
  br i1 %.not.i, label %bb.e, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_8LigGlyphENS_7NumTypeILb1EtLj2EEEvLb1EEES4_EixEi.exit, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = zext nneg i32 %i.f to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.m
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_8LigGlyphENS_7NumTypeILb1EtLj2EEEvLb1EEES4_EixEi.exit

_ZNK2OT7ArrayOfINS_8OffsetToINS_8LigGlyphENS_7NumTypeILb1EtLj2EEEvLb1EEES4_EixEi.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.n, %bb.e ], [ @_hb_NullPool, %bb.d ]
  %i.o = load i16, ptr %.0.i, align 1, !tbaa !283 ; 2 uses
  %i.p = icmp eq i16 %i.o, 0
  %i.q = tail call i16 @llvm.bswap.i16(i16 %i.o)
  %i.r = zext i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  %.0.i.i16 = select i1 %i.p, ptr @_hb_NullPool, ptr %i.s, !prof !267 ; 4 uses
  %i.t = icmp ne ptr %6, null
  %i.u = icmp ne ptr %7, null
  %or.cond.i = and i1 %i.t, %i.u
  %.pre60.i = load i16, ptr %.0.i.i16, align 1, !tbaa !283 ; 3 uses
  br i1 %or.cond.i, label %_ZNK10hb_array_tIKN2OT8OffsetToINS0_10CaretValueENS0_7NumTypeILb1EtLj2EEEvLb1EEEE9sub_arrayEjPj.exit.i, label %_ZNK2OT8LigGlyph14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS_18ItemVariationStoreEjPjPi.exit

_ZNK10hb_array_tIKN2OT8OffsetToINS0_10CaretValueENS0_7NumTypeILb1EtLj2EEEvLb1EEEE9sub_arrayEjPj.exit.i: ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_8LigGlyphENS_7NumTypeILb1EtLj2EEEvLb1EEES4_EixEi.exit
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %.pre60.i)
  %.sroa.545.8.extract.trunc.i = zext i16 %i.v to i32
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.545.8.extract.trunc.i, i32 %5)
  %i.w = load i32, ptr %6, align 4, !tbaa !324
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 %i.w) ; 4 uses
  store i32 %.sroa.speculated.i.i, ptr %6, align 4, !tbaa !324
  %.not4.i.i.i = icmp eq i32 %.sroa.speculated.i.i, 0
  br i1 %.not4.i.i.i, label %_ZNK2OT8LigGlyph14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS_18ItemVariationStoreEjPjPi.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %_ZNK10hb_array_tIKN2OT8OffsetToINS0_10CaretValueENS0_7NumTypeILb1EtLj2EEEvLb1EEEE9sub_arrayEjPj.exit.i
  %.sroa.2.8.insert.ext.i.i = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i16, i64 2
  %i.y = zext i32 %5 to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.y
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EEiEppEv.exit.i.i.i", %.lr.ph.i.i.preheader.i
  %.sroa.6.0.i = phi i64 [ %.sroa.6.1.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EEiEppEv.exit.i.i.i" ], [ %.sroa.2.8.insert.ext.i.i, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.sroa.029.0.i = phi ptr [ %.sroa.029.1.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EEiEppEv.exit.i.i.i" ], [ %7, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.val25.i.i.i = phi i32 [ %i.aj, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EEiEppEv.exit.i.i.i" ], [ %.sroa.speculated.i.i, %.lr.ph.i.i.preheader.i ]
  %i.aa = phi ptr [ %i.ak, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EEiEppEv.exit.i.i.i" ], [ %i.z, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.val1.i.i.i.i.i.i.i = load i16, ptr %i.aa, align 1, !tbaa !283 ; 2 uses
  %i.ab = icmp eq i16 %.val1.i.i.i.i.i.i.i, 0
  %i.ac = tail call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i.i.i)
  %i.ad = zext i16 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i16, i64 %i.ad
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ab, ptr @_hb_NullPool, ptr %i.ae, !prof !267
  %i.af = tail call noundef i32 @_ZNK2OT10CaretValue15get_caret_valueEP9hb_font_t14hb_direction_tjRKNS_18ItemVariationStoreE(ptr noundef nonnull align 1 dereferenceable(6) %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(12) %4) ; 2 uses
  %i.ag = and i64 %.sroa.6.0.i, 4294967295
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN9hb_iter_tI10hb_array_tIiERiEdeEv.exit.i.i.i.thread.i, label %bb.f, !prof !267

_ZN9hb_iter_tI10hb_array_tIiERiEdeEv.exit.i.i.i.thread.i: ; preds = %.lr.ph.i.i.i
  store i32 %i.af, ptr @_hb_CrapPool, align 16, !tbaa !324
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EEiEppEv.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i
  store i32 %i.af, ptr %.sroa.029.0.i, align 4, !tbaa !324
  %i.ah = add i64 %.sroa.6.0.i, 4294967295
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.029.0.i, i64 4
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EEiEppEv.exit.i.i.i"

"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EEiEppEv.exit.i.i.i": ; preds = %bb.f, %_ZN9hb_iter_tI10hb_array_tIiERiEdeEv.exit.i.i.i.thread.i
  %.sroa.6.1.i = phi i64 [ %.sroa.6.0.i, %_ZN9hb_iter_tI10hb_array_tIiERiEdeEv.exit.i.i.i.thread.i ], [ %i.ah, %bb.f ]
  %.sroa.029.1.i = phi ptr [ %.sroa.029.0.i, %_ZN9hb_iter_tI10hb_array_tIiERiEdeEv.exit.i.i.i.thread.i ], [ %i.ai, %bb.f ]
  %i.aj = add nsw i32 %.val25.i.i.i, -1           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i, label %"_ZorI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EE9hb_sink_tIS1_IiEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS11_6item_tEEE5valueEvE4typeELSJ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS11_Efp_EEEOS11_OS16_.exit.loopexit.i", label %.lr.ph.i.i.i, !llvm.loop !3770

"_ZorI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EE9hb_sink_tIS1_IiEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS11_6item_tEEE5valueEvE4typeELSJ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS11_Efp_EEEOS11_OS16_.exit.loopexit.i": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EEiEppEv.exit.i.i.i"
  %.pre.i = load i16, ptr %.0.i.i16, align 1, !tbaa !283
  br label %_ZNK2OT8LigGlyph14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS_18ItemVariationStoreEjPjPi.exit

_ZNK2OT8LigGlyph14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS_18ItemVariationStoreEjPjPi.exit: ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_8LigGlyphENS_7NumTypeILb1EtLj2EEEvLb1EEES4_EixEi.exit, %_ZNK10hb_array_tIKN2OT8OffsetToINS0_10CaretValueENS0_7NumTypeILb1EtLj2EEEvLb1EEEE9sub_arrayEjPj.exit.i, %"_ZorI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EE9hb_sink_tIS1_IiEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS11_6item_tEEE5valueEvE4typeELSJ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS11_Efp_EEEOS11_OS16_.exit.loopexit.i"
  %i.al = phi i16 [ %.pre.i, %"_ZorI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_10CaretValueENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_8LigGlyphEEL24hb_function_sortedness_t0ELPv0EEZNKSE_14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS2_18ItemVariationStoreEjPjPiEUlRKS4_E_LSI_0ELSJ_0EE9hb_sink_tIS1_IiEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS11_6item_tEEE5valueEvE4typeELSJ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS11_Efp_EEEOS11_OS16_.exit.loopexit.i" ], [ %.pre60.i, %_ZNK10hb_array_tIKN2OT8OffsetToINS0_10CaretValueENS0_7NumTypeILb1EtLj2EEEvLb1EEEE9sub_arrayEjPj.exit.i ], [ %.pre60.i, %_ZNK2OT7ArrayOfINS_8OffsetToINS_8LigGlyphENS_7NumTypeILb1EtLj2EEEvLb1EEES4_EixEi.exit ]
  %i.am = tail call noundef i16 @llvm.bswap.i16(i16 %i.al)
  %i.an = zext i16 %i.am to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %_ZNK2OT8LigGlyph14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS_18ItemVariationStoreEjPjPi.exit
  %.0 = phi i32 [ %i.an, %_ZNK2OT8LigGlyph14get_lig_caretsEP9hb_font_t14hb_direction_tjRKNS_18ItemVariationStoreEjPjPi.exit ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2OT10CaretValue15get_caret_valueEP9hb_font_t14hb_direction_tjRKNS_18ItemVariationStoreE(ptr noundef nonnull align 1 dereferenceable(6) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(12) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = load i16, ptr %0, align 1, !tbaa !283
  %i.d = tail call noundef i16 @llvm.bswap.i16(i16 %i.c)
  switch i16 %i.d, label %_ZNK2OT17CaretValueFormat315get_caret_valueEP9hb_font_t14hb_direction_tRKNS_18ItemVariationStoreE.exit [
    i16 1, label %bb.b
    i16 2, label %bb.c
    i16 3, label %bb.d
end_hunk_0
begin_hunk_1_@_ZNK2OT21ChainContextFormat1_4INS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tE:bb.a
  store i32 -1, ptr %i.akd, align 8, !tbaa !1507
  br label %_ZN2OT27hb_collect_glyphs_context_t7recurseEj.exit.i.i

_ZN2OT27hb_collect_glyphs_context_t7recurseEj.exit.i.i: ; preds = %bb.eu, %bb.ge, %_ZN12hb_bit_set_t8page_forEjb.exit.i.i.i, %_ZN12hb_bit_set_t6resizeEjbb.exit.i.i, %bb.ew, %bb.ev, %_ZN12hb_bit_set_t8page_forEjb.exit.i18.i.i, %._crit_edge.i.i7.i.i, %bb.eo, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit.i.i.i, %.lr.ph.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK2OT9ChainRuleINS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tERNS_38ChainContextCollectGlyphsLookupContextE.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !165

_ZNK2OT9ChainRuleINS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tERNS_38ChainContextCollectGlyphsLookupContextE.exit.i.i: ; preds = %_ZN2OT27hb_collect_glyphs_context_t7recurseEj.exit.i.i, %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit34.i.i.i.i
  %i.ako = add i32 %.val47.i.i.i.i.i.i.i.i, -1    ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ako, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_12ChainRuleSetINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_21ChainContextFormat1_4IS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i", label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i.i.i.i", !llvm.loop !168

"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_12ChainRuleSetINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_21ChainContextFormat1_4IS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i": ; preds = %_ZNK2OT9ChainRuleINS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tERNS_38ChainContextCollectGlyphsLookupContextE.exit.i.i, %.lr.ph.i.i
  %i.akp = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.akq = add i32 %.val116120.i.i, -1            ; 2 uses
  %.not.i.i = icmp eq i32 %i.akq, 0
  br i1 %.not.i.i, label %"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_12ChainRuleSetINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_21ChainContextFormat1_4IS6_EEEL24hb_function_sortedness_t0ELPv0EE10hb_apply_tIZNKSI_14collect_glyphsEPNS2_27hb_collect_glyphs_context_tEEUlRKS7_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSX_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISX_Efp_EEEOSX_OS12_.exit", label %.lr.ph.i.i, !llvm.loop !3924

"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_12ChainRuleSetINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_21ChainContextFormat1_4IS6_EEEL24hb_function_sortedness_t0ELPv0EE10hb_apply_tIZNKSI_14collect_glyphsEPNS2_27hb_collect_glyphs_context_tEEUlRKS7_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSX_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISX_Efp_EEEOSX_OS12_.exit": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_12ChainRuleSetINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_21ChainContextFormat1_4IS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT21ChainContextFormat2_5INS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tE(ptr noundef nonnull align 1 dereferenceable(14) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283  ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !267
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1756
  %i.i = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common8Coverage16collect_coverageI8hb_set_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, ptr noundef %i.h) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i16, ptr %i.j, align 1, !tbaa !283  ; 2 uses
  %i.l = icmp eq i16 %i.k, 0
  %i.m = tail call i16 @llvm.bswap.i16(i16 %i.k)
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %.0.i.i14 = select i1 %i.l, ptr @_hb_NullPool, ptr %i.o, !prof !267 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.q = load i16, ptr %i.p, align 1, !tbaa !283  ; 2 uses
  %i.r = icmp eq i16 %i.q, 0
  %i.s = tail call i16 @llvm.bswap.i16(i16 %i.q)
  %i.t = zext i16 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %.0.i.i15 = select i1 %i.r, ptr @_hb_NullPool, ptr %i.u, !prof !267 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i16, ptr %i.v, align 1, !tbaa !283  ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  %i.y = tail call i16 @llvm.bswap.i16(i16 %i.w)
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  %.0.i.i16 = select i1 %i.x, ptr @_hb_NullPool, ptr %i.aa, !prof !267 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !283 ; 2 uses
  %.not119.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not119.i.i, label %"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_12ChainRuleSetINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_21ChainContextFormat2_5IS6_EEEL24hb_function_sortedness_t0ELPv0EE10hb_apply_tIZNKSI_14collect_glyphsEPNS2_27hb_collect_glyphs_context_tEEUlRKS7_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSX_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISX_Efp_EEEOSX_OS12_.exit", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.ad = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac)
  %.sroa.434.8.extract.trunc = zext i16 %i.ad to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i14, i64 2 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i14, i64 4 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i14, i64 6
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i15, i64 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i15, i64 4 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i15, i64 6
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i16, i64 2 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i16, i64 4 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i16, i64 6
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_12ChainRuleSetINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_21ChainContextFormat2_5IS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i"
  %.val116120.i.i = phi i32 [ %i.apj, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_12ChainRuleSetINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_21ChainContextFormat2_5IS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i" ], [ %.sroa.434.8.extract.trunc, %.lr.ph.i.i.preheader ]
  %i.au = phi ptr [ %i.api, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_12ChainRuleSetINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_21ChainContextFormat2_5IS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i" ], [ %i.ae, %.lr.ph.i.i.preheader ] ; 2 uses
  %.val1.i.i.i.i = load i16, ptr %i.au, align 1, !tbaa !283 ; 2 uses
  %i.av = icmp eq i16 %.val1.i.i.i.i, 0
  %i.aw = tail call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i)
  %i.ax = zext i16 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.av, ptr @_hb_NullPool, ptr %i.ay, !prof !267 ; 3 uses
  %i.az = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !283 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq i16 %i.az, 0
  br i1 %.not6.i.i.i.i.i.i.i.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_12ChainRuleSetINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_21ChainContextFormat2_5IS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i", label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.preheader.i.i.i.i.i.i"

"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.preheader.i.i.i.i.i.i": ; preds = %.lr.ph.i.i
  %i.ba = tail call noundef i16 @llvm.bswap.i16(i16 %i.az)
  %.sroa.429.8.extract.trunc.i.i.i.i.i.i = zext i16 %i.ba to i32
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i.i.i.i"

"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i.i.i.i": ; preds = %_ZNK2OT9ChainRuleINS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tERNS_38ChainContextCollectGlyphsLookupContextE.exit.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.preheader.i.i.i.i.i.i"
  %.val47.i.i.i.i.i.i.i.i = phi i32 [ %i.aph, %_ZNK2OT9ChainRuleINS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tERNS_38ChainContextCollectGlyphsLookupContextE.exit.i.i ], [ %.sroa.429.8.extract.trunc.i.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.preheader.i.i.i.i.i.i" ]
  %.pn.i.i.i.i.i.i = phi ptr [ %i.bb, %_ZNK2OT9ChainRuleINS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tERNS_38ChainContextCollectGlyphsLookupContextE.exit.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.preheader.i.i.i.i.i.i" ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 2 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.bb, align 1, !tbaa !283 ; 2 uses
  %i.bc = icmp eq i16 %.val1.i.i.i.i.i.i.i.i.i.i, 0
  %i.bd = tail call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i.i.i.i.i.i)
  %i.be = zext i16 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.be
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bc, ptr @_hb_NullPool, ptr %i.bf, !prof !267 ; 3 uses
  %i.bg = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !283 ; 2 uses
  %i.bh = tail call noundef i16 @llvm.bswap.i16(i16 %i.bg) ; 2 uses
  %i.bi = zext i16 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2 ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 1, !tbaa !283 ; 2 uses
  %i.bn = tail call noundef i16 @llvm.bswap.i16(i16 %i.bm) ; 3 uses
  %i.bo = zext i16 %i.bn to i64
  %.not.i.i.i.i4.i.i = icmp eq i16 %i.bm, 0
  %i.bp = shl nuw nsw i64 %i.bo, 1
  %i.bq = select i1 %.not.i.i.i.i4.i.i, i64 2, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bq ; 3 uses
  %i.bs = load i16, ptr %i.br, align 1, !tbaa !283 ; 2 uses
  %i.bt = tail call noundef i16 @llvm.bswap.i16(i16 %i.bs) ; 2 uses
  %i.bu = zext i16 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.by = zext i16 %i.bn to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.ca = zext i16 %i.bt to i32
  %i.cb = load i16, ptr %i.bx, align 1, !tbaa !283 ; 2 uses
  %i.cc = tail call noundef i16 @llvm.bswap.i16(i16 %i.cb)
  %.not5.i.i.i.i.i.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.preheader.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.preheader.i.i.i: ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i.i.i.i"
  %i.cd = load ptr, ptr %i.af, align 8, !tbaa !1778 ; 10 uses
  %i.ce = zext i16 %i.bh to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 64 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 20 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 24 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 36 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 40 ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 52 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 48 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 56 ; 10 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 32 ; 4 uses
  br label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.preheader.i.i.i
  %.sroa.0.07.i.i.i.i.pn.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i.i.i, %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.preheader.i.i.i ]
  %.sroa.4.06.i.i.i.i.i.i.i = phi i32 [ %i.lp, %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit ], [ %i.ce, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.preheader.i.i.i ]
  %.sroa.0.07.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.pn.i.i.i, i64 2 ; 2 uses
  %.val.i.i.i.i.i.i.i = load i16, ptr %.sroa.0.07.i.i.i.i.i.i.i, align 1, !tbaa !283 ; 2 uses
  %i.cp = load i16, ptr %.0.i.i14, align 1, !tbaa !283
  %i.cq = tail call noundef i16 @llvm.bswap.i16(i16 %i.cp)
  switch i16 %i.cq, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit [
    i16 1, label %bb.b
    i16 2, label %bb.ay
  ]

bb.b:                                             ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.cr = load i16, ptr %i.am, align 1, !tbaa !283 ; 2 uses
  %.not.i.i119 = icmp eq i16 %i.cr, 0
  br i1 %.not.i.i119, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit, label %.lr.ph.i.i120

.lr.ph.i.i120:                                    ; preds = %bb.b
  %i.cs = tail call noundef i16 @llvm.bswap.i16(i16 %i.cr)
  %wide.trip.count.i.i = zext i16 %i.cs to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i, %.lr.ph.i.i120
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i120 ], [ %indvars.iv.next.i.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i ] ; 4 uses
  %i.ct = load i16, ptr %i.am, align 1, !tbaa !283
  %i.cu = tail call noundef i16 @llvm.bswap.i16(i16 %i.ct)
  %i.cv = zext i16 %i.cu to i64
  %.not.i.i.i121 = icmp samesign ult i64 %indvars.iv.i.i, %i.cv
  br i1 %.not.i.i.i121, label %bb.d, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i, !prof !268

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.i.i
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.cw, %bb.d ], [ @_hb_NullPool, %bb.c ]
  %i.cx = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.cy = icmp eq i16 %.val.i.i.i.i.i.i.i, %i.cx
  br i1 %i.cy, label %bb.e, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i
  %i.cz = load i16, ptr %i.al, align 1, !tbaa !283
  %i.da = tail call noundef i16 @llvm.bswap.i16(i16 %i.cz)
  %i.db = zext i16 %i.da to i32
  %i.dc = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.dd = add i32 %i.db, %i.dc                    ; 7 uses
  %i.de = load i8, ptr %i.cg, align 8, !tbaa !946, !range !380, !noundef !293
  %i.df = trunc nuw i8 %i.de to i1
  %i.dg = load i8, ptr %i.cf, align 8, !tbaa !550, !range !380, !noundef !293
  %i.dh = trunc nuw i8 %i.dg to i1                ; 2 uses
  br i1 %i.df, label %bb.f, label %bb.n, !prof !267

bb.f:                                             ; preds = %bb.e
  br i1 %i.dh, label %bb.g, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i, !prof !268

bb.g:                                             ; preds = %bb.f
  %i.di = lshr i32 %i.dd, 9                       ; 3 uses
  %i.dj = load atomic i32, ptr %i.ci monotonic, align 8 ; 2 uses
  %i.dk = load i32, ptr %i.cj, align 4, !tbaa !1233 ; 3 uses
  %i.dl = icmp ult i32 %i.dj, %i.dk
  %i.dm = load ptr, ptr %i.ck, align 8, !tbaa !553 ; 3 uses
  br i1 %i.dl, label %bb.h, label %._crit_edge.i.i164, !prof !268

bb.h:                                             ; preds = %bb.g
  %i.dn = zext i32 %i.dj to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !1235
  %.not.i.i179 = icmp eq i32 %i.dp, %i.di
  br i1 %.not.i.i179, label %_ZN12hb_bit_set_t8page_forEjb.exit.i175, label %._crit_edge.i.i164

._crit_edge.i.i164:                               ; preds = %bb.h, %bb.g
  %.not1.i.i.i.i.i.i165 = icmp sgt i32 %i.dk, 0
  br i1 %.not1.i.i.i.i.i.i165, label %.lr.ph.preheader.i.i.i.i.i.i166, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i166:                  ; preds = %._crit_edge.i.i164
  %i.dq = add nsw i32 %i.dk, -1
  br label %.lr.ph.i.i.i.i.i.i167

.lr.ph.i.i.i.i.i.i167:                            ; preds = %bb.l, %.lr.ph.preheader.i.i.i.i.i.i166
  %.0203.i.i.i.i.i.i168 = phi i32 [ %.2.i.i.i.i.i.i172, %bb.l ], [ %i.dq, %.lr.ph.preheader.i.i.i.i.i.i166 ] ; 2 uses
  %.0212.i.i.i.i.i.i169 = phi i32 [ %.223.i.i.i.i.i.i171, %bb.l ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i166 ] ; 2 uses
  %i.dr = add i32 %.0212.i.i.i.i.i.i169, %.0203.i.i.i.i.i.i168
  %i.ds = lshr i32 %i.dr, 1                       ; 4 uses
  %i.dt = zext nneg i32 %i.ds to i64              ; 2 uses
  %i.du = shl nuw nsw i64 %i.dt, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !1235 ; 2 uses
  %i.dx = icmp slt i32 %i.di, %i.dw
  br i1 %i.dx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i167
  %i.dy = add nsw i32 %i.ds, -1
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i167
  %.not28.i.i.i.i.i.i170 = icmp eq i32 %i.di, %i.dw
  br i1 %.not28.i.i.i.i.i.i170, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i174, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dz = add nuw nsw i32 %i.ds, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.223.i.i.i.i.i.i171 = phi i32 [ %i.dz, %bb.k ], [ %.0212.i.i.i.i.i.i169, %bb.i ] ; 2 uses
  %.2.i.i.i.i.i.i172 = phi i32 [ %.0203.i.i.i.i.i.i168, %bb.k ], [ %i.dy, %bb.i ] ; 2 uses
  %.not.not.i.i.i.i.i.i173 = icmp sgt i32 %.223.i.i.i.i.i.i171, %.2.i.i.i.i.i.i172
  br i1 %.not.not.i.i.i.i.i.i173, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i, label %.lr.ph.i.i.i.i.i.i167, !llvm.loop !135

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i174: ; preds = %bb.j
  store atomic i32 %i.ds, ptr %i.ci monotonic, align 8
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i175

_ZN12hb_bit_set_t8page_forEjb.exit.i175:          ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i174, %bb.h
  %i.ea = phi i64 [ %i.dt, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i174 ], [ %i.dn, %bb.h ]
  %.sink.i.i177 = load ptr, ptr %i.cn, align 8, !tbaa !1236 ; 2 uses
  %.not.i178 = icmp eq ptr %.sink.i.i177, null
  br i1 %.not.i178, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i175
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !1238
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i177, i64 %i.ee ; 2 uses
  store i32 -1, ptr %i.ch, align 4, !tbaa !549
  %i.eg = and i32 %i.dd, 63
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = shl nuw i64 1, %i.eh
  %i.ej = xor i64 %i.ei, -1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.el = lshr i32 %i.dd, 6
  %i.em = and i32 %i.el, 7
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.en ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !1240
  %i.eq = and i64 %i.ep, %i.ej
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !1240
  store i32 -1, ptr %i.ef, align 8, !tbaa !1507
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i

bb.n:                                             ; preds = %bb.e
  %i.er = icmp ne i32 %i.dd, -1
  %or.cond.not.i = and i1 %i.er, %i.dh
  br i1 %or.cond.not.i, label %bb.o, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i, !prof !707

bb.o:                                             ; preds = %bb.n
  store i32 -1, ptr %i.ch, align 4, !tbaa !549
  %i.es = lshr i32 %i.dd, 9                       ; 4 uses
  %i.et = load atomic i32, ptr %i.ci monotonic, align 8 ; 2 uses
  %i.eu = load i32, ptr %i.cj, align 4, !tbaa !1233 ; 3 uses
  %i.ev = icmp ult i32 %i.et, %i.eu
  %i.ew = load ptr, ptr %i.ck, align 8, !tbaa !553 ; 3 uses
  br i1 %i.ev, label %bb.p, label %._crit_edge.i.i, !prof !268

bb.p:                                             ; preds = %bb.o
  %i.ex = zext i32 %i.et to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !1235
  %.not.i.i163 = icmp eq i32 %i.ez, %i.es
  br i1 %.not.i.i163, label %_ZN12hb_bit_set_t8page_forEjb.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.p, %bb.o
  %i.fa = load i32, ptr %i.cl, align 4, !tbaa !546 ; 5 uses
  %.not1.i.i.i.i.i.i = icmp sgt i32 %i.eu, 0
  br i1 %.not1.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i, label %.loopexit585

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %._crit_edge.i.i
  %i.fb = add nsw i32 %i.eu, -1
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.t, %.lr.ph.preheader.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i, %bb.t ], [ %i.fb, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i, %bb.t ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.fc = add i32 %.0212.i.i.i.i.i.i, %.0203.i.i.i.i.i.i
  %i.fd = lshr i32 %i.fc, 1                       ; 4 uses
  %i.fe = zext nneg i32 %i.fd to i64              ; 2 uses
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !1235 ; 2 uses
  %i.fi = icmp slt i32 %i.es, %i.fh
  br i1 %i.fi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fj = add nsw i32 %i.fd, -1
  br label %bb.t

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i = icmp eq i32 %i.es, %i.fh
  br i1 %.not28.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fk = add nuw nsw i32 %i.fd, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.223.i.i.i.i.i.i = phi i32 [ %i.fk, %bb.s ], [ %.0212.i.i.i.i.i.i, %bb.q ] ; 3 uses
  %.2.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i, %bb.s ], [ %i.fj, %bb.q ] ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i, %.2.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i, label %.loopexit585, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !135

.loopexit585:                                     ; preds = %bb.t, %._crit_edge.i.i
  %storemerge.i.i.ph.sink.i.i.ph.i.i = phi i32 [ 0, %._crit_edge.i.i ], [ %.223.i.i.i.i.i.i, %bb.t ] ; 3 uses
  %i.fl = add i32 %i.fa, 1                        ; 14 uses
  %.not = icmp eq i32 %i.fa, -1
  %.pr = load i32, ptr %i.cm, align 8, !tbaa !554 ; 7 uses
  br i1 %.not, label %.thread850, label %bb.u

bb.u:                                             ; preds = %.loopexit585
  %i.fm = icmp ult i32 %.pr, %i.fl
  %i.fn = icmp ult i32 %i.fl, 3
  %or.cond.i = and i1 %i.fn, %i.fm                ; 2 uses
  %i.fo = icmp slt i32 %i.fl, 0
  %i.fp = icmp slt i32 %.pr, 0
  %or.cond = select i1 %i.fo, i1 true, i1 %i.fp, !prof !1609
  br i1 %or.cond, label %.critedge.i, label %bb.v, !prof !1609

.thread850:                                       ; preds = %.loopexit585
  %i.fq = icmp slt i32 %.pr, 0
  br i1 %i.fq, label %.critedge.i, label %.thread853, !prof !267

bb.v:                                             ; preds = %bb.u
  br i1 %or.cond.i, label %bb.w, label %.thread853

bb.w:                                             ; preds = %bb.v
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.fl, i32 %i.fa)
  br label %.thread.i306

.thread853:                                       ; preds = %.thread850, %bb.v
  %.not.i302 = icmp samesign ugt i32 %i.fl, %.pr
  br i1 %.not.i302, label %.preheader.i304, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit.thread, !prof !267

.preheader.i304:                                  ; preds = %.thread853, %.preheader.i304
  %.043.i305 = phi i32 [ %i.ft, %.preheader.i304 ], [ %.pr, %.thread853 ] ; 2 uses
  %i.fr = lshr i32 %.043.i305, 1
  %i.fs = add nuw i32 %.043.i305, 8
  %i.ft = add nuw i32 %i.fs, %i.fr                ; 3 uses
  %i.fu = icmp ugt i32 %i.fl, %i.ft
  br i1 %i.fu, label %.preheader.i304, label %.thread.i306, !llvm.loop !141

.thread.i306:                                     ; preds = %.preheader.i304, %bb.w
  %.0.shrunk.i848852856 = phi i1 [ true, %bb.w ], [ false, %.preheader.i304 ] ; 3 uses
  %.138.i = phi i32 [ %.sroa.speculated.i, %bb.w ], [ %i.ft, %.preheader.i304 ] ; 5 uses
  %i.fv = icmp ugt i32 %.138.i, 59652323
  br i1 %i.fv, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit.thread514, label %bb.x, !prof !267

bb.x:                                             ; preds = %.thread.i306
end_hunk_1
begin_hunk_2_@_ZNK2OT21ChainContextFormat2_5INS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tE:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jq, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.jp, align 8, !tbaa !1507
  %i.jr = getelementptr inbounds nuw [72 x i8], ptr %i.jc, i64 %indvars.iv.i.i295 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 216
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jt, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.js, align 8, !tbaa !1507
  %indvars.iv.next.i.i296.3 = add nuw nsw i64 %indvars.iv.i.i295, 4 ; 2 uses
  %exitcond.not.i.i297.3 = icmp eq i64 %indvars.iv.next.i.i296.3, %wide.trip.count.i.i294
  br i1 %exitcond.not.i.i297.3, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, label %.lr.ph.i.i293.new, !llvm.loop !142

_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i: ; preds = %.prol.loopexit1043, %.lr.ph.i.i293.new, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit457.thread
  store i32 %i.ic, ptr %i.cl, align 4, !tbaa !547
  br label %_ZN12hb_bit_set_t6resizeEjbb.exit

_ZN12hb_bit_set_t6resizeEjbb.exit:                ; preds = %bb.ak, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, %.critedge.i, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit457.thread528
  store i8 0, ptr %i.cf, align 8, !tbaa !550
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i

bb.aw:                                            ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5allocEjb.exit.thread, %bb.ai, %bb.aj
  store i32 %i.fl, ptr %i.cj, align 4, !tbaa !548
  %i.ju = load ptr, ptr %i.cn, align 8, !tbaa !1236
  %i.jv = zext i32 %i.fa to i64                   ; 2 uses
  %i.jw = getelementptr inbounds nuw [72 x i8], ptr %i.ju, i64 %i.jv ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jx, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.jw, align 8, !tbaa !1507
  %i.jy = load ptr, ptr %i.ck, align 8, !tbaa !1232
  %i.jz = zext nneg i32 %storemerge.i.i.ph.sink.i.i.ph.i.i to i64 ; 3 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.jz ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = sub i32 %i.fa, %storemerge.i.i.ph.sink.i.i.ph.i.i
  %i.kd = shl i32 %i.kc, 3
  %i.ke = zext i32 %i.kd to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kb, ptr align 4 %i.ka, i64 %i.ke, i1 false)
  %i.kf = load ptr, ptr %i.ck, align 8, !tbaa !1232 ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.jz
  %.sroa.5.0.insert.shift.i.i = shl nuw i64 %i.jv, 32
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %i.es to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.5.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.kg, align 4, !tbaa !324
  br label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i: ; preds = %bb.r, %bb.aw
  %.pre-phi.i.i = phi i64 [ %i.jz, %bb.aw ], [ %i.fe, %bb.r ]
  %i.kh = phi ptr [ %i.kf, %bb.aw ], [ %i.ew, %bb.r ]
  %storemerge.i.i.ph.sink.i.i17.i.i = phi i32 [ %storemerge.i.i.ph.sink.i.i.ph.i.i, %bb.aw ], [ %i.fd, %bb.r ]
  store atomic i32 %storemerge.i.i.ph.sink.i.i17.i.i, ptr %i.ci monotonic, align 8
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %.pre-phi.i.i
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i

_ZN12hb_bit_set_t8page_forEjb.exit.i:             ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i, %bb.p
  %.sink29.i.i = phi ptr [ %i.ki, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i ], [ %i.ey, %bb.p ]
  %.sink.i.i = load ptr, ptr %i.cn, align 8, !tbaa !1236 ; 2 uses
  %.not.i = icmp eq ptr %.sink.i.i, null
  br i1 %.not.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i, label %bb.ax, !prof !1610

bb.ax:                                            ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i
  %i.kj = getelementptr inbounds nuw i8, ptr %.sink29.i.i, i64 4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !1238
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i, i64 %i.kl ; 2 uses
  %i.kn = and i32 %i.dd, 63
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = shl nuw i64 1, %i.ko
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.kr = lshr i32 %i.dd, 6
  %i.ks = and i32 %i.kr, 7
  %i.kt = zext nneg i32 %i.ks to i64
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.kt ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !1240
  %i.kw = or i64 %i.kv, %i.kp
  store i64 %i.kw, ptr %i.ku, align 8, !tbaa !1240
  store i32 -1, ptr %i.km, align 8, !tbaa !1507
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i: ; preds = %bb.l, %bb.ax, %_ZN12hb_bit_set_t8page_forEjb.exit.i, %bb.n, %_ZN12hb_bit_set_t6resizeEjbb.exit, %bb.m, %_ZN12hb_bit_set_t8page_forEjb.exit.i175, %._crit_edge.i.i164, %bb.f, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit, label %bb.c, !llvm.loop !163

bb.ay:                                            ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.kx = load i16, ptr %i.al, align 1, !tbaa !283 ; 2 uses
  %i.ky = tail call noundef i16 @llvm.bswap.i16(i16 %i.kx)
  %i.kz = zext i16 %i.ky to i64
  %.idx.i.i = mul nuw nsw i64 %i.kz, 6
  %i.la = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i ; 2 uses
  %.not16.i.i = icmp eq i16 %i.kx, 0
  br i1 %.not16.i.i, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %bb.ay, %.lr.ph.i5.i.backedge
  %.01317.i.i = phi ptr [ %.01317.i.i.be, %.lr.ph.i5.i.backedge ], [ %i.am, %bb.ay ] ; 5 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.01317.i.i, i64 4
  %i.lc = load i16, ptr %i.lb, align 1, !tbaa !283
  %i.ld = icmp eq i16 %.val.i.i.i.i.i.i.i, %i.lc
  br i1 %i.ld, label %bb.az, label %.critedge.i.i

bb.az:                                            ; preds = %.lr.ph.i5.i
  %i.le = load i16, ptr %.01317.i.i, align 1, !tbaa !283
  %i.lf = tail call noundef i16 @llvm.bswap.i16(i16 %i.le)
  %i.lg = zext i16 %i.lf to i32                   ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.01317.i.i, i64 2
  %i.li = load i16, ptr %i.lh, align 1, !tbaa !283
  %i.lj = tail call noundef i16 @llvm.bswap.i16(i16 %i.li)
  %i.lk = zext i16 %i.lj to i32                   ; 2 uses
  %i.ll = load i8, ptr %i.cg, align 8, !tbaa !946, !range !380, !noundef !293
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i, !prof !267

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i: ; preds = %bb.az
  tail call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.cf, i32 noundef %i.lg, i32 noundef %i.lk)
  br label %.critedge.i.i

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i: ; preds = %bb.az
  %i.ln = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.cf, i32 noundef %i.lg, i32 noundef %i.lk)
  %i.lo = getelementptr inbounds nuw i8, ptr %.01317.i.i, i64 6 ; 2 uses
  %.not.i6.i = icmp ne ptr %i.lo, %i.la
  %or.cond.not = select i1 %i.ln, i1 %.not.i6.i, i1 false, !prof !3986
  br i1 %or.cond.not, label %.lr.ph.i5.i.backedge, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit, !prof !3986

.critedge.i.i:                                    ; preds = %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i, %.lr.ph.i5.i
  %.old = getelementptr inbounds nuw i8, ptr %.01317.i.i, i64 6 ; 2 uses
  %.not.i6.i.old = icmp eq ptr %.old, %i.la
  br i1 %.not.i6.i.old, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit, label %.lr.ph.i5.i.backedge

.lr.ph.i5.i.backedge:                             ; preds = %.critedge.i.i, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i
  %.01317.i.i.be = phi ptr [ %i.lo, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i ], [ %.old, %.critedge.i.i ]
  br label %.lr.ph.i5.i

_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit: ; preds = %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i, %.critedge.i.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i.i.i, %bb.b, %bb.ay
  %i.lp = add i32 %.sroa.4.06.i.i.i.i.i.i.i, -1   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.lp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i.i.i, !llvm.loop !164

_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit.i.i.i.i: ; preds = %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i.i.i.i"
  %.not5.i.i.i21.i.i.i.i = icmp ult i16 %i.bn, 2
  br i1 %.not5.i.i.i21.i.i.i.i, label %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit27.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.preheader.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.preheader.i.i.i.i: ; preds = %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit.i.i.i.i
  %i.lq = load ptr, ptr %i.g, align 8, !tbaa !1756 ; 10 uses
  %i.lr = add nsw i32 %i.by, -1
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 16 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 64 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 20 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 24 ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lq, i64 36 ; 6 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lq, i64 40 ; 7 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 52 ; 8 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lq, i64 48 ; 8 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lq, i64 56 ; 10 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lq, i64 32 ; 4 uses
  br label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.i.i.i.i: ; preds = %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.preheader.i.i.i.i
  %.sroa.0.07.i.i.i23.i.i.i.i = phi ptr [ %i.vd, %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141 ], [ %i.bz, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.preheader.i.i.i.i ] ; 2 uses
  %.sroa.4.06.i.i.i24.i.i.i.i = phi i32 [ %i.vc, %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141 ], [ %i.lr, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.preheader.i.i.i.i ]
  %.val.i.i.i25.i.i.i.i = load i16, ptr %.sroa.0.07.i.i.i23.i.i.i.i, align 1, !tbaa !283 ; 2 uses
  %i.mc = load i16, ptr %.0.i.i15, align 1, !tbaa !283
  %i.md = tail call noundef i16 @llvm.bswap.i16(i16 %i.mc)
  switch i16 %i.md, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141 [
    i16 1, label %bb.ba
    i16 2, label %bb.cx
  ]

bb.ba:                                            ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.me = load i16, ptr %i.ap, align 1, !tbaa !283 ; 2 uses
  %.not.i.i131 = icmp eq i16 %i.me, 0
  br i1 %.not.i.i131, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141, label %.lr.ph.i.i132

.lr.ph.i.i132:                                    ; preds = %bb.ba
  %i.mf = tail call noundef i16 @llvm.bswap.i16(i16 %i.me)
  %wide.trip.count.i.i133 = zext i16 %i.mf to i64
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138, %.lr.ph.i.i132
  %indvars.iv.i.i134 = phi i64 [ 0, %.lr.ph.i.i132 ], [ %indvars.iv.next.i.i139, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138 ] ; 4 uses
  %i.mg = load i16, ptr %i.ap, align 1, !tbaa !283
  %i.mh = tail call noundef i16 @llvm.bswap.i16(i16 %i.mg)
  %i.mi = zext i16 %i.mh to i64
  %.not.i.i.i135 = icmp samesign ult i64 %indvars.iv.i.i134, %i.mi
  br i1 %.not.i.i.i135, label %bb.bc, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i136, !prof !268

bb.bc:                                            ; preds = %bb.bb
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.i.i134
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i136

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i136: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i137 = phi ptr [ %i.mj, %bb.bc ], [ @_hb_NullPool, %bb.bb ]
  %i.mk = load i16, ptr %.0.i.i.i137, align 1, !tbaa !283
  %i.ml = icmp eq i16 %.val.i.i.i25.i.i.i.i, %i.mk
  br i1 %i.ml, label %bb.bd, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138

bb.bd:                                            ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i136
  %i.mm = load i16, ptr %i.ao, align 1, !tbaa !283
  %i.mn = tail call noundef i16 @llvm.bswap.i16(i16 %i.mm)
  %i.mo = zext i16 %i.mn to i32
  %i.mp = trunc nuw nsw i64 %indvars.iv.i.i134 to i32
  %i.mq = add i32 %i.mo, %i.mp                    ; 7 uses
  %i.mr = load i8, ptr %i.lt, align 8, !tbaa !946, !range !380, !noundef !293
  %i.ms = trunc nuw i8 %i.mr to i1
  %i.mt = load i8, ptr %i.ls, align 8, !tbaa !550, !range !380, !noundef !293
  %i.mu = trunc nuw i8 %i.mt to i1                ; 2 uses
  br i1 %i.ms, label %bb.be, label %bb.bm, !prof !267

bb.be:                                            ; preds = %bb.bd
  br i1 %i.mu, label %bb.bf, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138, !prof !268

bb.bf:                                            ; preds = %bb.be
  %i.mv = lshr i32 %i.mq, 9                       ; 3 uses
  %i.mw = load atomic i32, ptr %i.lv monotonic, align 8 ; 2 uses
  %i.mx = load i32, ptr %i.lw, align 4, !tbaa !1233 ; 3 uses
  %i.my = icmp ult i32 %i.mw, %i.mx
  %i.mz = load ptr, ptr %i.lx, align 8, !tbaa !553 ; 3 uses
  br i1 %i.my, label %bb.bg, label %._crit_edge.i.i206, !prof !268

bb.bg:                                            ; preds = %bb.bf
  %i.na = zext i32 %i.mw to i64                   ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !1235
  %.not.i.i221 = icmp eq i32 %i.nc, %i.mv
  br i1 %.not.i.i221, label %_ZN12hb_bit_set_t8page_forEjb.exit.i217, label %._crit_edge.i.i206

._crit_edge.i.i206:                               ; preds = %bb.bg, %bb.bf
  %.not1.i.i.i.i.i.i207 = icmp sgt i32 %i.mx, 0
  br i1 %.not1.i.i.i.i.i.i207, label %.lr.ph.preheader.i.i.i.i.i.i208, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138

.lr.ph.preheader.i.i.i.i.i.i208:                  ; preds = %._crit_edge.i.i206
  %i.nd = add nsw i32 %i.mx, -1
  br label %.lr.ph.i.i.i.i.i.i209

.lr.ph.i.i.i.i.i.i209:                            ; preds = %bb.bk, %.lr.ph.preheader.i.i.i.i.i.i208
  %.0203.i.i.i.i.i.i210 = phi i32 [ %.2.i.i.i.i.i.i214, %bb.bk ], [ %i.nd, %.lr.ph.preheader.i.i.i.i.i.i208 ] ; 2 uses
  %.0212.i.i.i.i.i.i211 = phi i32 [ %.223.i.i.i.i.i.i213, %bb.bk ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i208 ] ; 2 uses
  %i.ne = add i32 %.0212.i.i.i.i.i.i211, %.0203.i.i.i.i.i.i210
  %i.nf = lshr i32 %i.ne, 1                       ; 4 uses
  %i.ng = zext nneg i32 %i.nf to i64              ; 2 uses
  %i.nh = shl nuw nsw i64 %i.ng, 3
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.nh
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !1235 ; 2 uses
  %i.nk = icmp slt i32 %i.mv, %i.nj
  br i1 %i.nk, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph.i.i.i.i.i.i209
  %i.nl = add nsw i32 %i.nf, -1
  br label %bb.bk

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i.i.i209
  %.not28.i.i.i.i.i.i212 = icmp eq i32 %i.mv, %i.nj
  br i1 %.not28.i.i.i.i.i.i212, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i216, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.nm = add nuw nsw i32 %i.nf, 1
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bh
  %.223.i.i.i.i.i.i213 = phi i32 [ %i.nm, %bb.bj ], [ %.0212.i.i.i.i.i.i211, %bb.bh ] ; 2 uses
  %.2.i.i.i.i.i.i214 = phi i32 [ %.0203.i.i.i.i.i.i210, %bb.bj ], [ %i.nl, %bb.bh ] ; 2 uses
  %.not.not.i.i.i.i.i.i215 = icmp sgt i32 %.223.i.i.i.i.i.i213, %.2.i.i.i.i.i.i214
  br i1 %.not.not.i.i.i.i.i.i215, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138, label %.lr.ph.i.i.i.i.i.i209, !llvm.loop !135

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i216: ; preds = %bb.bi
  store atomic i32 %i.nf, ptr %i.lv monotonic, align 8
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i217

_ZN12hb_bit_set_t8page_forEjb.exit.i217:          ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i216, %bb.bg
  %i.nn = phi i64 [ %i.ng, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i216 ], [ %i.na, %bb.bg ]
  %.sink.i.i219 = load ptr, ptr %i.ma, align 8, !tbaa !1236 ; 2 uses
  %.not.i220 = icmp eq ptr %.sink.i.i219, null
  br i1 %.not.i220, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138, label %bb.bl

bb.bl:                                            ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i217
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !1238
  %i.nr = zext i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i219, i64 %i.nr ; 2 uses
  store i32 -1, ptr %i.lu, align 4, !tbaa !549
  %i.nt = and i32 %i.mq, 63
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = shl nuw i64 1, %i.nu
  %i.nw = xor i64 %i.nv, -1
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.ny = lshr i32 %i.mq, 6
  %i.nz = and i32 %i.ny, 7
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.oa ; 2 uses
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !1240
  %i.od = and i64 %i.oc, %i.nw
  store i64 %i.od, ptr %i.ob, align 8, !tbaa !1240
  store i32 -1, ptr %i.ns, align 8, !tbaa !1507
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138

bb.bm:                                            ; preds = %bb.bd
  %i.oe = icmp ne i32 %i.mq, -1
  %or.cond.not.i180 = and i1 %i.oe, %i.mu
  br i1 %or.cond.not.i180, label %bb.bn, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138, !prof !707

bb.bn:                                            ; preds = %bb.bm
  store i32 -1, ptr %i.lu, align 4, !tbaa !549
  %i.of = lshr i32 %i.mq, 9                       ; 4 uses
  %i.og = load atomic i32, ptr %i.lv monotonic, align 8 ; 2 uses
  %i.oh = load i32, ptr %i.lw, align 4, !tbaa !1233 ; 3 uses
  %i.oi = icmp ult i32 %i.og, %i.oh
  %i.oj = load ptr, ptr %i.lx, align 8, !tbaa !553 ; 3 uses
  br i1 %i.oi, label %bb.bo, label %._crit_edge.i.i181, !prof !268

bb.bo:                                            ; preds = %bb.bn
  %i.ok = zext i32 %i.og to i64
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.ok ; 2 uses
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !1235
  %.not.i.i204 = icmp eq i32 %i.om, %i.of
  br i1 %.not.i.i204, label %_ZN12hb_bit_set_t8page_forEjb.exit.i191, label %._crit_edge.i.i181

._crit_edge.i.i181:                               ; preds = %bb.bo, %bb.bn
  %i.on = load i32, ptr %i.ly, align 4, !tbaa !546 ; 5 uses
  %.not1.i.i.i.i.i.i182 = icmp sgt i32 %i.oh, 0
  br i1 %.not1.i.i.i.i.i.i182, label %.lr.ph.preheader.i.i.i.i.i.i196, label %.loopexit584

.lr.ph.preheader.i.i.i.i.i.i196:                  ; preds = %._crit_edge.i.i181
  %i.oo = add nsw i32 %i.oh, -1
  br label %.lr.ph.i.i.i.i.i.i197

.lr.ph.i.i.i.i.i.i197:                            ; preds = %bb.bs, %.lr.ph.preheader.i.i.i.i.i.i196
  %.0203.i.i.i.i.i.i198 = phi i32 [ %.2.i.i.i.i.i.i202, %bb.bs ], [ %i.oo, %.lr.ph.preheader.i.i.i.i.i.i196 ] ; 2 uses
  %.0212.i.i.i.i.i.i199 = phi i32 [ %.223.i.i.i.i.i.i201, %bb.bs ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i196 ] ; 2 uses
  %i.op = add i32 %.0212.i.i.i.i.i.i199, %.0203.i.i.i.i.i.i198
  %i.oq = lshr i32 %i.op, 1                       ; 4 uses
  %i.or = zext nneg i32 %i.oq to i64              ; 2 uses
  %i.os = shl nuw nsw i64 %i.or, 3
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.os
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !1235 ; 2 uses
  %i.ov = icmp slt i32 %i.of, %i.ou
  br i1 %i.ov, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i.i197
  %i.ow = add nsw i32 %i.oq, -1
  br label %bb.bs

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i.i197
  %.not28.i.i.i.i.i.i200 = icmp eq i32 %i.of, %i.ou
  br i1 %.not28.i.i.i.i.i.i200, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i188, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ox = add nuw nsw i32 %i.oq, 1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bp
  %.223.i.i.i.i.i.i201 = phi i32 [ %i.ox, %bb.br ], [ %.0212.i.i.i.i.i.i199, %bb.bp ] ; 3 uses
  %.2.i.i.i.i.i.i202 = phi i32 [ %.0203.i.i.i.i.i.i198, %bb.br ], [ %i.ow, %bb.bp ] ; 2 uses
  %.not.not.i.i.i.i.i.i203 = icmp sgt i32 %.223.i.i.i.i.i.i201, %.2.i.i.i.i.i.i202
  br i1 %.not.not.i.i.i.i.i.i203, label %.loopexit584, label %.lr.ph.i.i.i.i.i.i197, !llvm.loop !135

.loopexit584:                                     ; preds = %bb.bs, %._crit_edge.i.i181
  %storemerge.i.i.ph.sink.i.i.ph.i.i184 = phi i32 [ 0, %._crit_edge.i.i181 ], [ %.223.i.i.i.i.i.i201, %bb.bs ] ; 3 uses
  %i.oy = add i32 %i.on, 1                        ; 14 uses
  %.not582 = icmp eq i32 %i.on, -1
  %.pr863 = load i32, ptr %i.lz, align 8, !tbaa !554 ; 7 uses
  br i1 %.not582, label %.thread864, label %bb.bt

bb.bt:                                            ; preds = %.loopexit584
  %i.oz = icmp ult i32 %.pr863, %i.oy
  %i.pa = icmp ult i32 %i.oy, 3
  %or.cond.i278 = and i1 %i.pa, %i.oz             ; 2 uses
  %i.pb = icmp slt i32 %i.oy, 0
  %i.pc = icmp slt i32 %.pr863, 0
  %or.cond939 = select i1 %i.pb, i1 true, i1 %i.pc, !prof !1609
  br i1 %or.cond939, label %.critedge.i269, label %bb.bu, !prof !1609

.thread864:                                       ; preds = %.loopexit584
  %i.pd = icmp slt i32 %.pr863, 0
  br i1 %i.pd, label %.critedge.i269, label %.thread867, !prof !267

bb.bu:                                            ; preds = %bb.bt
  br i1 %or.cond.i278, label %bb.bv, label %.thread867

bb.bv:                                            ; preds = %bb.bu
  %.sroa.speculated.i371 = tail call i32 @llvm.umax.i32(i32 %i.oy, i32 %i.on)
  br label %.thread.i354

.thread867:                                       ; preds = %.thread864, %bb.bu
  %.not.i350 = icmp samesign ugt i32 %i.oy, %.pr863
  br i1 %.not.i350, label %.preheader.i352, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit375.thread, !prof !267

.preheader.i352:                                  ; preds = %.thread867, %.preheader.i352
  %.043.i353 = phi i32 [ %i.pg, %.preheader.i352 ], [ %.pr863, %.thread867 ] ; 2 uses
  %i.pe = lshr i32 %.043.i353, 1
  %i.pf = add nuw i32 %.043.i353, 8
  %i.pg = add nuw i32 %i.pf, %i.pe                ; 3 uses
  %i.ph = icmp ugt i32 %i.oy, %i.pg
  br i1 %i.ph, label %.preheader.i352, label %.thread.i354, !llvm.loop !141

.thread.i354:                                     ; preds = %.preheader.i352, %bb.bv
  %.0.shrunk.i268861866870 = phi i1 [ true, %bb.bv ], [ false, %.preheader.i352 ] ; 3 uses
  %.138.i355 = phi i32 [ %.sroa.speculated.i371, %bb.bv ], [ %i.pg, %.preheader.i352 ] ; 5 uses
  %i.pi = icmp ugt i32 %.138.i355, 59652323
  br i1 %i.pi, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit375.thread536, label %bb.bw, !prof !267

bb.bw:                                            ; preds = %.thread.i354
end_hunk_2
begin_hunk_3_@_ZNK2OT21ChainContextFormat2_5INS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tE:bb.a
  store i32 0, ptr %i.tc, align 8, !tbaa !1507
  %i.te = getelementptr inbounds nuw [72 x i8], ptr %i.sp, i64 %indvars.iv.i.i324 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 216
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.tg, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.tf, align 8, !tbaa !1507
  %indvars.iv.next.i.i325.3 = add nuw nsw i64 %indvars.iv.i.i324, 4 ; 2 uses
  %exitcond.not.i.i326.3 = icmp eq i64 %indvars.iv.next.i.i325.3, %wide.trip.count.i.i323
  br i1 %exitcond.not.i.i326.3, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i321, label %.lr.ph.i.i322.new, !llvm.loop !142

_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i321: ; preds = %.prol.loopexit1053, %.lr.ph.i.i322.new, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit483.thread
  store i32 %i.rp, ptr %i.ly, align 4, !tbaa !547
  br label %_ZN12hb_bit_set_t6resizeEjbb.exit279

_ZN12hb_bit_set_t6resizeEjbb.exit279:             ; preds = %bb.cj, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i321, %.critedge.i269, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit483.thread550
  store i8 0, ptr %i.ls, align 8, !tbaa !550
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138

bb.cv:                                            ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5allocEjb.exit349.thread, %bb.ch, %bb.ci
  store i32 %i.oy, ptr %i.lw, align 4, !tbaa !548
  %i.th = load ptr, ptr %i.ma, align 8, !tbaa !1236
  %i.ti = zext i32 %i.on to i64                   ; 2 uses
  %i.tj = getelementptr inbounds nuw [72 x i8], ptr %i.th, i64 %i.ti ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.tk, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.tj, align 8, !tbaa !1507
  %i.tl = load ptr, ptr %i.lx, align 8, !tbaa !1232
  %i.tm = zext nneg i32 %storemerge.i.i.ph.sink.i.i.ph.i.i184 to i64 ; 3 uses
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.tl, i64 %i.tm ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tp = sub i32 %i.on, %storemerge.i.i.ph.sink.i.i.ph.i.i184
  %i.tq = shl i32 %i.tp, 3
  %i.tr = zext i32 %i.tq to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.to, ptr align 4 %i.tn, i64 %i.tr, i1 false)
  %i.ts = load ptr, ptr %i.lx, align 8, !tbaa !1232 ; 2 uses
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %i.tm
  %.sroa.5.0.insert.shift.i.i185 = shl nuw i64 %i.ti, 32
  %.sroa.0.0.insert.ext.i.i186 = zext nneg i32 %i.of to i64
  %.sroa.0.0.insert.insert.i.i187 = or disjoint i64 %.sroa.5.0.insert.shift.i.i185, %.sroa.0.0.insert.ext.i.i186
  store i64 %.sroa.0.0.insert.insert.i.i187, ptr %i.tt, align 4, !tbaa !324
  br label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i188

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i188: ; preds = %bb.bq, %bb.cv
  %.pre-phi.i.i189 = phi i64 [ %i.tm, %bb.cv ], [ %i.or, %bb.bq ]
  %i.tu = phi ptr [ %i.ts, %bb.cv ], [ %i.oj, %bb.bq ]
  %storemerge.i.i.ph.sink.i.i17.i.i190 = phi i32 [ %storemerge.i.i.ph.sink.i.i.ph.i.i184, %bb.cv ], [ %i.oq, %bb.bq ]
  store atomic i32 %storemerge.i.i.ph.sink.i.i17.i.i190, ptr %i.lv monotonic, align 8
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %.pre-phi.i.i189
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i191

_ZN12hb_bit_set_t8page_forEjb.exit.i191:          ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i188, %bb.bo
  %.sink29.i.i192 = phi ptr [ %i.tv, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i188 ], [ %i.ol, %bb.bo ]
  %.sink.i.i194 = load ptr, ptr %i.ma, align 8, !tbaa !1236 ; 2 uses
  %.not.i195 = icmp eq ptr %.sink.i.i194, null
  br i1 %.not.i195, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138, label %bb.cw, !prof !1610

bb.cw:                                            ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i191
  %i.tw = getelementptr inbounds nuw i8, ptr %.sink29.i.i192, i64 4
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !1238
  %i.ty = zext i32 %i.tx to i64
  %i.tz = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i194, i64 %i.ty ; 2 uses
  %i.ua = and i32 %i.mq, 63
  %i.ub = zext nneg i32 %i.ua to i64
  %i.uc = shl nuw i64 1, %i.ub
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ue = lshr i32 %i.mq, 6
  %i.uf = and i32 %i.ue, 7
  %i.ug = zext nneg i32 %i.uf to i64
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %i.ug ; 2 uses
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !1240
  %i.uj = or i64 %i.ui, %i.uc
  store i64 %i.uj, ptr %i.uh, align 8, !tbaa !1240
  store i32 -1, ptr %i.tz, align 8, !tbaa !1507
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138: ; preds = %bb.bk, %bb.cw, %_ZN12hb_bit_set_t8page_forEjb.exit.i191, %bb.bm, %_ZN12hb_bit_set_t6resizeEjbb.exit279, %bb.bl, %_ZN12hb_bit_set_t8page_forEjb.exit.i217, %._crit_edge.i.i206, %bb.be, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i136
  %indvars.iv.next.i.i139 = add nuw nsw i64 %indvars.iv.i.i134, 1 ; 2 uses
  %exitcond.not.i.i140 = icmp eq i64 %indvars.iv.next.i.i139, %wide.trip.count.i.i133
  br i1 %exitcond.not.i.i140, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141, label %bb.bb, !llvm.loop !163

bb.cx:                                            ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.uk = load i16, ptr %i.ao, align 1, !tbaa !283 ; 2 uses
  %i.ul = tail call noundef i16 @llvm.bswap.i16(i16 %i.uk)
  %i.um = zext i16 %i.ul to i64
  %.idx.i.i122 = mul nuw nsw i64 %i.um, 6
  %i.un = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.i.i122 ; 2 uses
  %.not16.i.i123 = icmp eq i16 %i.uk, 0
  br i1 %.not16.i.i123, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141, label %.lr.ph.i5.i124

.lr.ph.i5.i124:                                   ; preds = %bb.cx, %.lr.ph.i5.i124.backedge
  %.01317.i.i125 = phi ptr [ %.01317.i.i125.be, %.lr.ph.i5.i124.backedge ], [ %i.ap, %bb.cx ] ; 5 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %.01317.i.i125, i64 4
  %i.up = load i16, ptr %i.uo, align 1, !tbaa !283
  %i.uq = icmp eq i16 %.val.i.i.i25.i.i.i.i, %i.up
  br i1 %i.uq, label %bb.cy, label %.critedge.i.i126

bb.cy:                                            ; preds = %.lr.ph.i5.i124
  %i.ur = load i16, ptr %.01317.i.i125, align 1, !tbaa !283
  %i.us = tail call noundef i16 @llvm.bswap.i16(i16 %i.ur)
  %i.ut = zext i16 %i.us to i32                   ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.01317.i.i125, i64 2
  %i.uv = load i16, ptr %i.uu, align 1, !tbaa !283
  %i.uw = tail call noundef i16 @llvm.bswap.i16(i16 %i.uv)
  %i.ux = zext i16 %i.uw to i32                   ; 2 uses
  %i.uy = load i8, ptr %i.lt, align 8, !tbaa !946, !range !380, !noundef !293
  %i.uz = trunc nuw i8 %i.uy to i1
  br i1 %i.uz, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i130, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i129, !prof !267

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i130: ; preds = %bb.cy
  tail call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.ls, i32 noundef %i.ut, i32 noundef %i.ux)
  br label %.critedge.i.i126

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i129: ; preds = %bb.cy
  %i.va = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.ls, i32 noundef %i.ut, i32 noundef %i.ux)
  %i.vb = getelementptr inbounds nuw i8, ptr %.01317.i.i125, i64 6 ; 2 uses
  %.not.i6.i127 = icmp ne ptr %i.vb, %i.un
  %or.cond578.not = select i1 %i.va, i1 %.not.i6.i127, i1 false, !prof !3986
  br i1 %or.cond578.not, label %.lr.ph.i5.i124.backedge, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141, !prof !3986

.critedge.i.i126:                                 ; preds = %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i130, %.lr.ph.i5.i124
  %.old577 = getelementptr inbounds nuw i8, ptr %.01317.i.i125, i64 6 ; 2 uses
  %.not.i6.i127.old = icmp eq ptr %.old577, %i.un
  br i1 %.not.i6.i127.old, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141, label %.lr.ph.i5.i124.backedge

.lr.ph.i5.i124.backedge:                          ; preds = %.critedge.i.i126, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i129
  %.01317.i.i125.be = phi ptr [ %i.vb, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i129 ], [ %.old577, %.critedge.i.i126 ]
  br label %.lr.ph.i5.i124

_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141: ; preds = %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i129, %.critedge.i.i126, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.i.i.i.i, %bb.ba, %bb.cx
  %i.vc = add nsw i32 %.sroa.4.06.i.i.i24.i.i.i.i, -1 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i23.i.i.i.i, i64 2
  %.not.i.i.i26.i.i.i.i = icmp eq i32 %i.vc, 0
  br i1 %.not.i.i.i26.i.i.i.i, label %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit27.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.i.i.i.i, !llvm.loop !164

_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit27.i.i.i.i: ; preds = %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141, %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit.i.i.i.i
  %.not5.i.i.i28.i.i.i.i = icmp eq i16 %i.bs, 0
  br i1 %.not5.i.i.i28.i.i.i.i, label %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit34.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i.preheader

_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i.preheader: ; preds = %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit27.i.i.i.i
  %i.ve = load ptr, ptr %i.ag, align 8, !tbaa !1777 ; 10 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 16 ; 4 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ve, i64 64 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ve, i64 20 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ve, i64 24 ; 4 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ve, i64 36 ; 6 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ve, i64 40 ; 7 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ve, i64 52 ; 8 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ve, i64 48 ; 8 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ve, i64 56 ; 10 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.ve, i64 32 ; 4 uses
  br label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i.preheader, %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit161
  %.sroa.0.07.i.i.i30.i.pn.i.i.i = phi ptr [ %.sroa.0.07.i.i.i30.i.i.i.i, %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit161 ], [ %i.br, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i.preheader ]
  %.sroa.4.06.i.i.i31.i.i.i.i = phi i32 [ %i.aep, %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit161 ], [ %i.ca, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i.preheader ]
  %.sroa.0.07.i.i.i30.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i30.i.pn.i.i.i, i64 2 ; 2 uses
  %.val.i.i.i32.i.i.i.i = load i16, ptr %.sroa.0.07.i.i.i30.i.i.i.i, align 1, !tbaa !283 ; 2 uses
  %i.vp = load i16, ptr %.0.i.i16, align 1, !tbaa !283
  %i.vq = tail call noundef i16 @llvm.bswap.i16(i16 %i.vp)
  switch i16 %i.vq, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit161 [
    i16 1, label %bb.cz
    i16 2, label %bb.ew
  ]

bb.cz:                                            ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.vr = load i16, ptr %i.as, align 1, !tbaa !283 ; 2 uses
  %.not.i.i151 = icmp eq i16 %i.vr, 0
  br i1 %.not.i.i151, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit161, label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %bb.cz
  %i.vs = tail call noundef i16 @llvm.bswap.i16(i16 %i.vr)
  %wide.trip.count.i.i153 = zext i16 %i.vs to i64
  br label %bb.da

bb.da:                                            ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158, %.lr.ph.i.i152
  %indvars.iv.i.i154 = phi i64 [ 0, %.lr.ph.i.i152 ], [ %indvars.iv.next.i.i159, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158 ] ; 4 uses
  %i.vt = load i16, ptr %i.as, align 1, !tbaa !283
  %i.vu = tail call noundef i16 @llvm.bswap.i16(i16 %i.vt)
  %i.vv = zext i16 %i.vu to i64
  %.not.i.i.i155 = icmp samesign ult i64 %indvars.iv.i.i154, %i.vv
  br i1 %.not.i.i.i155, label %bb.db, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i156, !prof !268

bb.db:                                            ; preds = %bb.da
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.i.i154
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i156

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i156: ; preds = %bb.db, %bb.da
  %.0.i.i.i157 = phi ptr [ %i.vw, %bb.db ], [ @_hb_NullPool, %bb.da ]
  %i.vx = load i16, ptr %.0.i.i.i157, align 1, !tbaa !283
  %i.vy = icmp eq i16 %.val.i.i.i32.i.i.i.i, %i.vx
  br i1 %i.vy, label %bb.dc, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158

bb.dc:                                            ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i156
  %i.vz = load i16, ptr %i.ar, align 1, !tbaa !283
  %i.wa = tail call noundef i16 @llvm.bswap.i16(i16 %i.vz)
  %i.wb = zext i16 %i.wa to i32
  %i.wc = trunc nuw nsw i64 %indvars.iv.i.i154 to i32
  %i.wd = add i32 %i.wb, %i.wc                    ; 7 uses
  %i.we = load i8, ptr %i.vg, align 8, !tbaa !946, !range !380, !noundef !293
  %i.wf = trunc nuw i8 %i.we to i1
  %i.wg = load i8, ptr %i.vf, align 8, !tbaa !550, !range !380, !noundef !293
  %i.wh = trunc nuw i8 %i.wg to i1                ; 2 uses
  br i1 %i.wf, label %bb.dd, label %bb.dl, !prof !267

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.wh, label %bb.de, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158, !prof !268

bb.de:                                            ; preds = %bb.dd
  %i.wi = lshr i32 %i.wd, 9                       ; 3 uses
  %i.wj = load atomic i32, ptr %i.vi monotonic, align 8 ; 2 uses
  %i.wk = load i32, ptr %i.vj, align 4, !tbaa !1233 ; 3 uses
  %i.wl = icmp ult i32 %i.wj, %i.wk
  %i.wm = load ptr, ptr %i.vk, align 8, !tbaa !553 ; 3 uses
  br i1 %i.wl, label %bb.df, label %._crit_edge.i.i249, !prof !268

bb.df:                                            ; preds = %bb.de
  %i.wn = zext i32 %i.wj to i64                   ; 2 uses
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %i.wn
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !1235
  %.not.i.i264 = icmp eq i32 %i.wp, %i.wi
  br i1 %.not.i.i264, label %_ZN12hb_bit_set_t8page_forEjb.exit.i260, label %._crit_edge.i.i249

._crit_edge.i.i249:                               ; preds = %bb.df, %bb.de
  %.not1.i.i.i.i.i.i250 = icmp sgt i32 %i.wk, 0
  br i1 %.not1.i.i.i.i.i.i250, label %.lr.ph.preheader.i.i.i.i.i.i251, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158

.lr.ph.preheader.i.i.i.i.i.i251:                  ; preds = %._crit_edge.i.i249
  %i.wq = add nsw i32 %i.wk, -1
  br label %.lr.ph.i.i.i.i.i.i252

.lr.ph.i.i.i.i.i.i252:                            ; preds = %bb.dj, %.lr.ph.preheader.i.i.i.i.i.i251
  %.0203.i.i.i.i.i.i253 = phi i32 [ %.2.i.i.i.i.i.i257, %bb.dj ], [ %i.wq, %.lr.ph.preheader.i.i.i.i.i.i251 ] ; 2 uses
  %.0212.i.i.i.i.i.i254 = phi i32 [ %.223.i.i.i.i.i.i256, %bb.dj ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i251 ] ; 2 uses
  %i.wr = add i32 %.0212.i.i.i.i.i.i254, %.0203.i.i.i.i.i.i253
  %i.ws = lshr i32 %i.wr, 1                       ; 4 uses
  %i.wt = zext nneg i32 %i.ws to i64              ; 2 uses
  %i.wu = shl nuw nsw i64 %i.wt, 3
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wm, i64 %i.wu
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !1235 ; 2 uses
  %i.wx = icmp slt i32 %i.wi, %i.ww
  br i1 %i.wx, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %.lr.ph.i.i.i.i.i.i252
  %i.wy = add nsw i32 %i.ws, -1
  br label %bb.dj

bb.dh:                                            ; preds = %.lr.ph.i.i.i.i.i.i252
  %.not28.i.i.i.i.i.i255 = icmp eq i32 %i.wi, %i.ww
  br i1 %.not28.i.i.i.i.i.i255, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i259, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.wz = add nuw nsw i32 %i.ws, 1
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dg
  %.223.i.i.i.i.i.i256 = phi i32 [ %i.wz, %bb.di ], [ %.0212.i.i.i.i.i.i254, %bb.dg ] ; 2 uses
  %.2.i.i.i.i.i.i257 = phi i32 [ %.0203.i.i.i.i.i.i253, %bb.di ], [ %i.wy, %bb.dg ] ; 2 uses
  %.not.not.i.i.i.i.i.i258 = icmp sgt i32 %.223.i.i.i.i.i.i256, %.2.i.i.i.i.i.i257
  br i1 %.not.not.i.i.i.i.i.i258, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158, label %.lr.ph.i.i.i.i.i.i252, !llvm.loop !135

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i259: ; preds = %bb.dh
  store atomic i32 %i.ws, ptr %i.vi monotonic, align 8
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i260

_ZN12hb_bit_set_t8page_forEjb.exit.i260:          ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i259, %bb.df
  %i.xa = phi i64 [ %i.wt, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i259 ], [ %i.wn, %bb.df ]
  %.sink.i.i262 = load ptr, ptr %i.vn, align 8, !tbaa !1236 ; 2 uses
  %.not.i263 = icmp eq ptr %.sink.i.i262, null
  br i1 %.not.i263, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158, label %bb.dk

bb.dk:                                            ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i260
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %i.xa
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 4
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !1238
  %i.xe = zext i32 %i.xd to i64
  %i.xf = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i262, i64 %i.xe ; 2 uses
  store i32 -1, ptr %i.vh, align 4, !tbaa !549
  %i.xg = and i32 %i.wd, 63
  %i.xh = zext nneg i32 %i.xg to i64
  %i.xi = shl nuw i64 1, %i.xh
  %i.xj = xor i64 %i.xi, -1
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  %i.xl = lshr i32 %i.wd, 6
  %i.xm = and i32 %i.xl, 7
  %i.xn = zext nneg i32 %i.xm to i64
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.xk, i64 %i.xn ; 2 uses
  %i.xp = load i64, ptr %i.xo, align 8, !tbaa !1240
  %i.xq = and i64 %i.xp, %i.xj
  store i64 %i.xq, ptr %i.xo, align 8, !tbaa !1240
  store i32 -1, ptr %i.xf, align 8, !tbaa !1507
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158

bb.dl:                                            ; preds = %bb.dc
  %i.xr = icmp ne i32 %i.wd, -1
  %or.cond.not.i223 = and i1 %i.xr, %i.wh
  br i1 %or.cond.not.i223, label %bb.dm, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158, !prof !707

bb.dm:                                            ; preds = %bb.dl
  store i32 -1, ptr %i.vh, align 4, !tbaa !549
  %i.xs = lshr i32 %i.wd, 9                       ; 4 uses
  %i.xt = load atomic i32, ptr %i.vi monotonic, align 8 ; 2 uses
  %i.xu = load i32, ptr %i.vj, align 4, !tbaa !1233 ; 3 uses
  %i.xv = icmp ult i32 %i.xt, %i.xu
  %i.xw = load ptr, ptr %i.vk, align 8, !tbaa !553 ; 3 uses
  br i1 %i.xv, label %bb.dn, label %._crit_edge.i.i224, !prof !268

bb.dn:                                            ; preds = %bb.dm
  %i.xx = zext i32 %i.xt to i64
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %i.xx ; 2 uses
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !1235
  %.not.i.i247 = icmp eq i32 %i.xz, %i.xs
  br i1 %.not.i.i247, label %_ZN12hb_bit_set_t8page_forEjb.exit.i234, label %._crit_edge.i.i224

._crit_edge.i.i224:                               ; preds = %bb.dn, %bb.dm
  %i.ya = load i32, ptr %i.vl, align 4, !tbaa !546 ; 5 uses
  %.not1.i.i.i.i.i.i225 = icmp sgt i32 %i.xu, 0
  br i1 %.not1.i.i.i.i.i.i225, label %.lr.ph.preheader.i.i.i.i.i.i239, label %.loopexit

.lr.ph.preheader.i.i.i.i.i.i239:                  ; preds = %._crit_edge.i.i224
  %i.yb = add nsw i32 %i.xu, -1
  br label %.lr.ph.i.i.i.i.i.i240

.lr.ph.i.i.i.i.i.i240:                            ; preds = %bb.dr, %.lr.ph.preheader.i.i.i.i.i.i239
  %.0203.i.i.i.i.i.i241 = phi i32 [ %.2.i.i.i.i.i.i245, %bb.dr ], [ %i.yb, %.lr.ph.preheader.i.i.i.i.i.i239 ] ; 2 uses
  %.0212.i.i.i.i.i.i242 = phi i32 [ %.223.i.i.i.i.i.i244, %bb.dr ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i239 ] ; 2 uses
  %i.yc = add i32 %.0212.i.i.i.i.i.i242, %.0203.i.i.i.i.i.i241
  %i.yd = lshr i32 %i.yc, 1                       ; 4 uses
  %i.ye = zext nneg i32 %i.yd to i64              ; 2 uses
  %i.yf = shl nuw nsw i64 %i.ye, 3
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.yf
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !1235 ; 2 uses
  %i.yi = icmp slt i32 %i.xs, %i.yh
  br i1 %i.yi, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %.lr.ph.i.i.i.i.i.i240
  %i.yj = add nsw i32 %i.yd, -1
  br label %bb.dr

bb.dp:                                            ; preds = %.lr.ph.i.i.i.i.i.i240
  %.not28.i.i.i.i.i.i243 = icmp eq i32 %i.xs, %i.yh
  br i1 %.not28.i.i.i.i.i.i243, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i231, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.yk = add nuw nsw i32 %i.yd, 1
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.do
  %.223.i.i.i.i.i.i244 = phi i32 [ %i.yk, %bb.dq ], [ %.0212.i.i.i.i.i.i242, %bb.do ] ; 3 uses
  %.2.i.i.i.i.i.i245 = phi i32 [ %.0203.i.i.i.i.i.i241, %bb.dq ], [ %i.yj, %bb.do ] ; 2 uses
  %.not.not.i.i.i.i.i.i246 = icmp sgt i32 %.223.i.i.i.i.i.i244, %.2.i.i.i.i.i.i245
  br i1 %.not.not.i.i.i.i.i.i246, label %.loopexit, label %.lr.ph.i.i.i.i.i.i240, !llvm.loop !135

.loopexit:                                        ; preds = %bb.dr, %._crit_edge.i.i224
  %storemerge.i.i.ph.sink.i.i.ph.i.i227 = phi i32 [ 0, %._crit_edge.i.i224 ], [ %.223.i.i.i.i.i.i244, %bb.dr ] ; 3 uses
  %i.yl = add i32 %i.ya, 1                        ; 14 uses
  %.not583 = icmp eq i32 %i.ya, -1
  %.pr877 = load i32, ptr %i.vm, align 8, !tbaa !554 ; 7 uses
  br i1 %.not583, label %.thread878, label %bb.ds

bb.ds:                                            ; preds = %.loopexit
  %i.ym = icmp ult i32 %.pr877, %i.yl
  %i.yn = icmp ult i32 %i.yl, 3
  %or.cond.i291 = and i1 %i.yn, %i.ym             ; 2 uses
  %i.yo = icmp slt i32 %i.yl, 0
  %i.yp = icmp slt i32 %.pr877, 0
  %or.cond941 = select i1 %i.yo, i1 true, i1 %i.yp, !prof !1609
  br i1 %or.cond941, label %.critedge.i282, label %bb.dt, !prof !1609

.thread878:                                       ; preds = %.loopexit
  %i.yq = icmp slt i32 %.pr877, 0
  br i1 %i.yq, label %.critedge.i282, label %.thread881, !prof !267

bb.dt:                                            ; preds = %bb.ds
  br i1 %or.cond.i291, label %bb.du, label %.thread881

bb.du:                                            ; preds = %bb.dt
  %.sroa.speculated.i427 = tail call i32 @llvm.umax.i32(i32 %i.yl, i32 %i.ya)
  br label %.thread.i410

.thread881:                                       ; preds = %.thread878, %bb.dt
  %.not.i406 = icmp samesign ugt i32 %i.yl, %.pr877
  br i1 %.not.i406, label %.preheader.i408, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit431.thread, !prof !267

.preheader.i408:                                  ; preds = %.thread881, %.preheader.i408
  %.043.i409 = phi i32 [ %i.yt, %.preheader.i408 ], [ %.pr877, %.thread881 ] ; 2 uses
  %i.yr = lshr i32 %.043.i409, 1
  %i.ys = add nuw i32 %.043.i409, 8
  %i.yt = add nuw i32 %i.ys, %i.yr                ; 3 uses
  %i.yu = icmp ugt i32 %i.yl, %i.yt
  br i1 %i.yu, label %.preheader.i408, label %.thread.i410, !llvm.loop !141

.thread.i410:                                     ; preds = %.preheader.i408, %bb.du
  %.0.shrunk.i281875880884 = phi i1 [ true, %bb.du ], [ false, %.preheader.i408 ] ; 3 uses
  %.138.i411 = phi i32 [ %.sroa.speculated.i427, %bb.du ], [ %i.yt, %.preheader.i408 ] ; 5 uses
  %i.yv = icmp ugt i32 %.138.i411, 59652323
  br i1 %i.yv, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit431.thread558, label %bb.dv, !prof !267

bb.dv:                                            ; preds = %.thread.i410
end_hunk_3
begin_hunk_4_@_ZNK2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE10intersectsEPK8hb_set_t:bb.a
  %.sroa.0.07.i = phi ptr [ %i.bs, %.lr.ph.i ], [ %i.co, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS3_10SmallTypesEEEEZNKS4_17CoverageFormat2_4IS6_E10intersectsEPK8hb_set_tEUlRS8_E_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i ] ; 3 uses
  %.sroa.6.06.i = phi i32 [ %i.n, %.lr.ph.i ], [ %i.cn, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS3_10SmallTypesEEEEZNKS4_17CoverageFormat2_4IS6_E10intersectsEPK8hb_set_tEUlRS8_E_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i ]
  %.val1.i.i.i = load i16, ptr %.sroa.0.07.i, align 1, !tbaa !283
  %i.bu = getelementptr i8, ptr %.sroa.0.07.i, i64 2
  %.val2.i.i.i = load i16, ptr %i.bu, align 1, !tbaa !283
  %i.bv = call noundef i16 @llvm.bswap.i16(i16 %.val1.i.i.i)
  %i.bw = zext i16 %i.bv to i32                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  %i.bx = add nsw i32 %i.bw, -1                   ; 4 uses
  store i32 %i.bx, ptr %i.c, align 4, !tbaa !324
  %i.by = load i8, ptr %i.bt, align 8, !tbaa !946, !range !380, !noundef !293
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.q, label %bb.p, !prof !267

bb.p:                                             ; preds = %bb.o
  %i.ca = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef nonnull %i.c)
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.c, align 4
  br label %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS3_10SmallTypesEEEEZNKS4_17CoverageFormat2_4IS6_E10intersectsEPK8hb_set_tEUlRS8_E_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i32 %i.bx, ptr %i.a, align 4, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store i32 %i.bx, ptr %i.b, align 4, !tbaa !324
  %i.cb = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef nonnull %i.b) ; 0 uses
  %i.cc = load i32, ptr %i.b, align 4, !tbaa !324
  %i.cd = icmp ugt i32 %i.cc, %i.bw
  br i1 %i.cd, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.bx, ptr %i.b, align 4, !tbaa !324
  %i.ce = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.cf = load i32, ptr %i.b, align 4, !tbaa !324
  %i.cg = add i32 %i.cf, 1                        ; 2 uses
  %i.ch = icmp ne i32 %i.cg, -1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cg, %bb.r ], [ %i.bw, %bb.q ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %i.ch, %bb.r ], [ true, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS3_10SmallTypesEEEEZNKS4_17CoverageFormat2_4IS6_E10intersectsEPK8hb_set_tEUlRS8_E_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i

_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS3_10SmallTypesEEEEZNKS4_17CoverageFormat2_4IS6_E10intersectsEPK8hb_set_tEUlRS8_E_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i: ; preds = %bb.s, %bb.p
  %i.ci = phi i32 [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.p ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s ]
  %.2.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %i.ca, %bb.p ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s ]
  %i.cj = call noundef i16 @llvm.bswap.i16(i16 %.val2.i.i.i)
  %i.ck = zext i16 %i.cj to i32
  %i.cl = icmp ule i32 %i.ci, %i.ck
  %i.cm = select i1 %.2.i.i.i.i.i.i.i.i.i.i.i.i, i1 %i.cl, i1 false ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  %i.cn = add i32 %.sroa.6.06.i, -1               ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 6
  %.not.not.i = icmp eq i32 %i.cn, 0
  %or.cond = select i1 %i.cm, i1 true, i1 %.not.not.i
  br i1 %or.cond, label %"_ZNK4$_44clI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS4_10SmallTypesEEEEZNKS5_17CoverageFormat2_4IS7_E10intersectsEPK8hb_set_tEUlRS9_E_L24hb_function_sortedness_t0ELPv0EERK3$_8SN_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSJ_0EEEbOSP_OT0_OT1_.exit", label %bb.o, !llvm.loop !4155

"_ZNK4$_44clI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS4_10SmallTypesEEEEZNKS5_17CoverageFormat2_4IS7_E10intersectsEPK8hb_set_tEUlRS9_E_L24hb_function_sortedness_t0ELPv0EERK3$_8SN_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSJ_0EEEbOSP_OT0_OT1_.exit.sink.split": ; preds = %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit, %_ZNK2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE12get_coverageEj.exit, %bb.b
  %.3.ph = phi i1 [ false, %bb.b ], [ true, %_ZNK2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE12get_coverageEj.exit ], [ false, %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  br label %"_ZNK4$_44clI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS4_10SmallTypesEEEEZNKS5_17CoverageFormat2_4IS7_E10intersectsEPK8hb_set_tEUlRS9_E_L24hb_function_sortedness_t0ELPv0EERK3$_8SN_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSJ_0EEEbOSP_OT0_OT1_.exit"

"_ZNK4$_44clI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS4_10SmallTypesEEEEZNKS5_17CoverageFormat2_4IS7_E10intersectsEPK8hb_set_tEUlRS9_E_L24hb_function_sortedness_t0ELPv0EERK3$_8SN_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSJ_0EEEbOSP_OT0_OT1_.exit": ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS3_10SmallTypesEEEEZNKS4_17CoverageFormat2_4IS6_E10intersectsEPK8hb_set_tEUlRS8_E_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i, %"_ZNK4$_44clI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS4_10SmallTypesEEEEZNKS5_17CoverageFormat2_4IS7_E10intersectsEPK8hb_set_tEUlRS9_E_L24hb_function_sortedness_t0ELPv0EERK3$_8SN_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSJ_0EEEbOSP_OT0_OT1_.exit.sink.split", %bb.n
  %.3 = phi i1 [ false, %bb.n ], [ %.3.ph, %"_ZNK4$_44clI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS4_10SmallTypesEEEEZNKS5_17CoverageFormat2_4IS7_E10intersectsEPK8hb_set_tEUlRS9_E_L24hb_function_sortedness_t0ELPv0EERK3$_8SN_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSJ_0EEEbOSP_OT0_OT1_.exit.sink.split" ], [ %i.cm, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS3_10SmallTypesEEEEZNKS4_17CoverageFormat2_4IS6_E10intersectsEPK8hb_set_tEUlRS8_E_L24hb_function_sortedness_t0ELPv0EEbEdeEv.exit.i ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = tail call noundef i16 @llvm.bswap.i16(i16 %i.g) ; 2 uses
  %i.i = zext i16 %i.h to i32
  %i.j = icmp eq i16 %2, 0
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #59
  store i32 -1, ptr %i.e, align 4, !tbaa !324
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !946, !range !380, !noundef !293
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %.split, !prof !267

.split:                                           ; preds = %bb.b
  %i.o = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.e)
  br i1 %i.o, label %.split._crit_edge, label %.loopexit.sink.split

.split._crit_edge:                                ; preds = %.split
  %.pre = load i32, ptr %i.e, align 4, !tbaa !324
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  store i32 -1, ptr %i.c, align 4, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  store i32 -1, ptr %i.d, align 4, !tbaa !324
  %i.p = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.d) ; 0 uses
  %i.q = load i32, ptr %i.d, align 4, !tbaa !324
  %.not29 = icmp eq i32 %i.q, 0
  br i1 %.not29, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  br label %bb.d

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit: ; preds = %bb.c
  store i32 -1, ptr %i.d, align 4, !tbaa !324
  %i.r = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 0 uses
  %i.s = load i32, ptr %i.d, align 4, !tbaa !324
  %i.t = add i32 %i.s, 1                          ; 2 uses
  %.not30 = icmp eq i32 %i.t, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  br i1 %.not30, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %.split._crit_edge, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit
  %i.u = phi i32 [ %.pre, %.split._crit_edge ], [ 0, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread ], [ %i.t, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.w = load i16, ptr %i.v, align 1, !tbaa !283
  %i.x = call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = icmp ult i32 %i.u, %i.y
  br i1 %i.z, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = add nuw nsw i32 %i.y, %i.i              ; 2 uses
  %i.ab = add nsw i32 %i.aa, -1                   ; 4 uses
  store i32 %i.ab, ptr %i.e, align 4, !tbaa !324
  %i.ac = load i8, ptr %i.l, align 8, !tbaa !946, !range !380, !noundef !293
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %.split48, !prof !267

.split48:                                         ; preds = %bb.e
  %i.ae = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #59
  br i1 %i.ae, label %.loopexit, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store i32 %i.ab, ptr %i.b, align 4, !tbaa !324
  %i.af = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.b) ; 0 uses
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !324
  %i.ah = icmp ult i32 %i.aa, %i.ag
  br i1 %i.ah, label %.thread49, label %bb.g

.thread49:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %.loopexit.sink.split

bb.g:                                             ; preds = %bb.f
  store i32 %i.ab, ptr %i.b, align 4, !tbaa !324
  %i.ai = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.aj = load i32, ptr %i.b, align 4, !tbaa !324
  %.not = icmp eq i32 %i.aj, -2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #59
  br i1 %.not, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.split48, %bb.g, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.not35.not = icmp eq i16 %i.g, 0
  br i1 %.not35.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sink.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %wide.trip.count = zext i16 %i.h to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !283
  %i.as = call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = icmp eq i16 %i.as, %2
  br i1 %i.at, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.au = load i16, ptr %i.al, align 1, !tbaa !283
  %i.av = call noundef i16 @llvm.bswap.i16(i16 %i.au)
  %i.aw = zext i16 %i.av to i32
  %i.ax = trunc nuw nsw i64 %indvars.iv to i32
  %i.ay = add i32 %i.ax, %i.aw                    ; 3 uses
  %i.az = lshr i32 %i.ay, 9                       ; 3 uses
  %i.ba = load atomic i32, ptr %i.am monotonic, align 4 ; 2 uses
  %i.bb = load i32, ptr %i.an, align 4, !tbaa !1233 ; 3 uses
  %i.bc = icmp ult i32 %i.ba, %i.bb
  %i.bd = load ptr, ptr %i.ao, align 8, !tbaa !553 ; 3 uses
  br i1 %i.bc, label %bb.k, label %._crit_edge.i.i.i.i.i.i, !prof !268

bb.k:                                             ; preds = %bb.j
  %i.be = zext i32 %i.ba to i64                   ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !1235
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bg, %i.az
  br i1 %.not.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.k, %bb.j
  %.not1.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.bb, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bh = add nsw i32 %i.bb, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.o, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i, %bb.o ], [ %i.bh, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i, %bb.o ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bi = add i32 %.0212.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i
  %i.bj = lshr i32 %i.bi, 1                       ; 4 uses
  %i.bk = zext nneg i32 %i.bj to i64              ; 2 uses
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !1235 ; 2 uses
  %i.bo = icmp slt i32 %i.az, %i.bn
  br i1 %i.bo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bp = add nsw i32 %i.bj, -1
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.az, %i.bn
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = add nuw nsw i32 %i.bj, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.223.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.n ], [ %.0212.i.i.i.i.i.i.i.i.i.i, %bb.l ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i, %bb.n ], [ %i.bp, %bb.l ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !135

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i: ; preds = %bb.m
  store atomic i32 %i.bj, ptr %i.am monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i:     ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, %bb.k
  %i.br = phi i64 [ %i.bk, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i ], [ %i.be, %bb.k ]
  %.sink.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i, align 8, !tbaa !1236 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !1238
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = lshr i32 %i.ay, 6
  %i.bz = and i32 %i.by, 7
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !1240
  %i.cd = and i32 %i.ay, 63
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = lshr i64 %i.cc, %i.ce
  %i.cg = trunc i64 %i.cf to i8
  %i.ch = and i8 %i.cg, 1
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit: ; preds = %bb.o, %._crit_edge.i.i.i.i.i.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, %bb.p
  %.0.i.i.i.i.i = phi i8 [ %i.ch, %bb.p ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.o ]
  %i.ci = load i8, ptr %i.ap, align 8, !tbaa !946, !range !380, !noundef !293
  %.not31 = icmp eq i8 %i.ci, %.0.i.i.i.i.i
  br i1 %.not31, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.i, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !4156

.loopexit.sink.split:                             ; preds = %.split, %bb.d, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit, %.thread49
  %.4.ph = phi i1 [ true, %.thread49 ], [ false, %.split ], [ true, %bb.d ], [ false, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #59
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, %bb.q, %.loopexit.sink.split, %.split48, %bb.h, %bb.g
  %.4 = phi i1 [ true, %.split48 ], [ true, %bb.g ], [ false, %bb.h ], [ %.4.ph, %.loopexit.sink.split ], [ true, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit ], [ false, %bb.q ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 9 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = icmp eq i16 %2, 0
  br i1 %i.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #59
  store i32 -1, ptr %i.h, align 4, !tbaa !324
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.l = load i16, ptr %i.j, align 1, !tbaa !283  ; 2 uses
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  %i.n = zext i16 %i.m to i64                     ; 2 uses
  %.idx = mul nuw nsw i64 %i.n, 6
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %.not79 = icmp eq i16 %i.l, 0
  br i1 %.not79, label %.thread59.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit
  %i.r = phi i32 [ -1, %.lr.ph ], [ %.131, %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit ] ; 6 uses
  %.03782 = phi ptr [ %i.k, %.lr.ph ], [ %i.as, %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit ] ; 3 uses
  %.sroa.0.081 = phi ptr [ %i.k, %.lr.ph ], [ %.sroa.0.1, %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit ] ; 4 uses
  %.sroa.8.080 = phi i64 [ %i.n, %.lr.ph ], [ %.sroa.8.1, %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit ] ; 4 uses
  %i.s = and i64 %.sroa.8.080, 4294967295
  %.not.i.i.i = icmp eq i64 %i.s, 0               ; 2 uses
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr @_hb_Null_OT_RangeRecord, ptr %.sroa.0.081, !prof !267
  %i.t = load i16, ptr %spec.select.i.i.i, align 1, !tbaa !283
  %i.u = call noundef i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = zext i16 %i.u to i32
  %i.w = add nsw i32 %i.r, 1                      ; 3 uses
  %i.x = icmp eq i32 %i.w, %i.v
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i.i, label %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit, label %bb.e, !prof !267

bb.e:                                             ; preds = %bb.d
  %i.y = add i64 %.sroa.8.080, 4294967295
  %.sroa.8.12.insert.insert = or i64 %i.y, 4294967296
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.081, i64 6
  br label %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit

bb.f:                                             ; preds = %bb.c
  %i.aa = load i8, ptr %i.q, align 8, !tbaa !946, !range !380, !noundef !293
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %.split, !prof !267

.split:                                           ; preds = %bb.f
  %i.ac = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.p, ptr noundef nonnull %i.h)
  %.pr.pre.pre = load i32, ptr %i.h, align 4, !tbaa !324 ; 2 uses
  br i1 %i.ac, label %.split._crit_edge, label %.thread59

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #59
  store i32 %i.r, ptr %i.f, align 4, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #59
  store i32 %i.r, ptr %i.g, align 4, !tbaa !324
  %i.ad = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.p, ptr noundef nonnull %i.g) ; 0 uses
  %i.ae = load i32, ptr %i.g, align 4, !tbaa !324
  %i.af = icmp ult i32 %i.w, %i.ae
  br i1 %i.af, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread52, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread52: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #59
  br label %.split._crit_edge

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit: ; preds = %bb.g
  store i32 %i.r, ptr %i.g, align 4, !tbaa !324
  %i.ag = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.p, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) ; 0 uses
  %i.ah = load i32, ptr %i.g, align 4, !tbaa !324
  %i.ai = add i32 %i.ah, 1                        ; 2 uses
  %.not77 = icmp eq i32 %i.ai, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #59
  br i1 %.not77, label %.thread59.thread, label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread52, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit
  %i.aj = phi i32 [ %i.ai, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit ], [ %i.w, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread52 ], [ %.pr.pre.pre, %.split ]
  %i.ak = load i16, ptr %.03782, align 1, !tbaa !283
  %i.al = call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32
  %i.an = icmp ult i32 %i.aj, %i.am
  br i1 %i.an, label %.thread72, label %bb.h
end_hunk_4
begin_hunk_5_@_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE24intersected_class_glyphsEPK8hb_set_tjPS4_:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  %wide.trip.count = zext i16 %i.i to i64
  br label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.u = load i16, ptr %i.t, align 1, !tbaa !283
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  %i.w = zext i16 %i.v to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #59
  store i32 -1, ptr %i.e, align 4, !tbaa !324
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit: ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.backedge, %bb.b
  %i.ab = load i8, ptr %i.y, align 8, !tbaa !946, !range !380, !noundef !293
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.d, label %bb.c, !prof !267

bb.c:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  %i.ad = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.x, ptr noundef nonnull %i.e)
  %.pre = load i32, ptr %i.e, align 4
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit

bb.d:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  %i.ae = load i32, ptr %i.e, align 4, !tbaa !324 ; 5 uses
  store i32 %i.ae, ptr %i.c, align 4, !tbaa !324
  %i.af = icmp eq i32 %i.ae, -2
  br i1 %i.af, label %bb.e, label %bb.f, !prof !267

bb.e:                                             ; preds = %bb.d
  store i32 -1, ptr %i.e, align 4, !tbaa !324
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  store i32 %i.ae, ptr %i.d, align 4, !tbaa !324
  %i.ag = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.x, ptr noundef nonnull %i.d) ; 0 uses
  %i.ah = add i32 %i.ae, 1                        ; 2 uses
  %i.ai = load i32, ptr %i.d, align 4, !tbaa !324
  %i.aj = icmp ult i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.ae, ptr %i.d, align 4, !tbaa !324
  %i.ak = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.x, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 0 uses
  %i.al = load i32, ptr %i.d, align 4, !tbaa !324
  %i.am = add i32 %i.al, 1                        ; 2 uses
  %i.an = icmp ne i32 %i.am, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i.i = phi i32 [ %i.am, %bb.g ], [ %i.ah, %bb.f ] ; 2 uses
  %.0.i.i = phi i1 [ %i.an, %bb.g ], [ true, %bb.f ]
  store i32 %.sink.i.i, ptr %i.e, align 4, !tbaa !324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.ao = phi i32 [ -1, %bb.e ], [ %.sink.i.i, %bb.h ]
  %.1.i.i = phi i1 [ false, %bb.e ], [ %.0.i.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit: ; preds = %bb.c, %bb.i
  %i.ap = phi i32 [ %.pre, %bb.c ], [ %i.ao, %bb.i ] ; 3 uses
  %.2.i.i = phi i1 [ %i.ad, %bb.c ], [ %.1.i.i, %bb.i ]
  %i.aq = icmp ult i32 %i.ap, %i.w
  %i.ar = select i1 %.2.i.i, i1 %i.aq, i1 false
  br i1 %i.ar, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #59
  %i.as = load i16, ptr %i.t, align 1, !tbaa !283
  %i.at = call noundef i16 @llvm.bswap.i16(i16 %i.as)
  %i.au = zext i16 %i.at to i32
  %i.av = add nsw i32 %i.j, -1
  %i.aw = add nsw i32 %i.av, %i.au
  store i32 %i.aw, ptr %i.f, align 4, !tbaa !324
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit23

bb.k:                                             ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit
  %i.ax = load i8, ptr %i.aa, align 8, !tbaa !946, !range !380, !noundef !293
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.l, label %bb.m, !prof !267

bb.l:                                             ; preds = %bb.k
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.z, i32 noundef %i.ap)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.backedge

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.backedge: ; preds = %bb.l, %bb.m
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, !llvm.loop !4157

bb.m:                                             ; preds = %bb.k
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.z, i32 noundef %i.ap)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.backedge

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit23: ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit23.backedge, %bb.j
  %i.az = load i8, ptr %i.y, align 8, !tbaa !946, !range !380, !noundef !293
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.n, label %.split, !prof !267

.split:                                           ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit23
  %i.bb = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.x, ptr noundef nonnull %i.f)
  br i1 %i.bb, label %.split._crit_edge, label %.loopexit

.split._crit_edge:                                ; preds = %.split
  %.pre42 = load i32, ptr %i.f, align 4, !tbaa !324
  br label %bb.p

bb.n:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.bc = load i32, ptr %i.f, align 4, !tbaa !324 ; 5 uses
  store i32 %i.bc, ptr %i.a, align 4, !tbaa !324
  %i.bd = icmp eq i32 %i.bc, -2
  br i1 %i.bd, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22.thread, label %bb.o, !prof !267

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22.thread: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %.loopexit

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store i32 %i.bc, ptr %i.b, align 4, !tbaa !324
  %i.be = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.x, ptr noundef nonnull %i.b) ; 0 uses
  %i.bf = add i32 %i.bc, 1                        ; 3 uses
  %i.bg = load i32, ptr %i.b, align 4, !tbaa !324
  %i.bh = icmp ult i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22.thread26, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22.thread26: ; preds = %bb.o
  store i32 %i.bf, ptr %i.f, align 4, !tbaa !324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %bb.p

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22: ; preds = %bb.o
  store i32 %i.bc, ptr %i.b, align 4, !tbaa !324
  %i.bi = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.x, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.bj = load i32, ptr %i.b, align 4, !tbaa !324
  %i.bk = add i32 %i.bj, 1                        ; 3 uses
  %.not29 = icmp eq i32 %i.bk, -1
  store i32 %i.bk, ptr %i.f, align 4, !tbaa !324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br i1 %.not29, label %.loopexit, label %bb.p

.loopexit:                                        ; preds = %.split, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #59
  br label %.loopexit30

bb.p:                                             ; preds = %.split._crit_edge, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22.thread26, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22
  %i.bl = phi i32 [ %.pre42, %.split._crit_edge ], [ %i.bf, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22.thread26 ], [ %i.bk, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit22 ] ; 2 uses
  %i.bm = load i8, ptr %i.aa, align 8, !tbaa !946, !range !380, !noundef !293
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.q, label %bb.r, !prof !267

bb.q:                                             ; preds = %bb.p
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.z, i32 noundef %i.bl)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit23.backedge

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit23.backedge: ; preds = %bb.q, %bb.r
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit23, !llvm.loop !4158

bb.r:                                             ; preds = %bb.p
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.z, i32 noundef %i.bl)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit23.backedge

bb.s:                                             ; preds = %.lr.ph, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit24
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit24 ] ; 4 uses
  %i.bo = load i16, ptr %i.g, align 1, !tbaa !283
  %i.bp = tail call noundef i16 @llvm.bswap.i16(i16 %i.bo)
  %i.bq = zext i16 %i.bp to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.bq
  br i1 %.not.i, label %bb.t, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit, !prof !268

bb.t:                                             ; preds = %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit: ; preds = %bb.s, %bb.t
  %.0.i = phi ptr [ %i.br, %bb.t ], [ @_hb_NullPool, %bb.s ]
  %i.bs = load i16, ptr %.0.i, align 1, !tbaa !283
  %i.bt = tail call noundef i16 @llvm.bswap.i16(i16 %i.bs)
  %i.bu = zext i16 %i.bt to i32
  %i.bv = icmp eq i32 %2, %i.bu
  br i1 %i.bv, label %bb.u, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit24

bb.u:                                             ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit
  %i.bw = load i16, ptr %i.m, align 1, !tbaa !283
  %i.bx = tail call noundef i16 @llvm.bswap.i16(i16 %i.bw)
  %i.by = zext i16 %i.bx to i32
  %i.bz = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ca = add i32 %i.bz, %i.by                    ; 3 uses
  %i.cb = lshr i32 %i.ca, 9                       ; 3 uses
  %i.cc = load atomic i32, ptr %i.n monotonic, align 4 ; 2 uses
  %i.cd = load i32, ptr %i.o, align 4, !tbaa !1233 ; 3 uses
  %i.ce = icmp ult i32 %i.cc, %i.cd
  %i.cf = load ptr, ptr %i.p, align 8, !tbaa !553 ; 3 uses
  br i1 %i.ce, label %bb.v, label %._crit_edge.i.i.i.i.i.i, !prof !268

bb.v:                                             ; preds = %bb.u
  %i.cg = zext i32 %i.cc to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !1235
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ci, %i.cb
  br i1 %.not.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.v, %bb.u
  %.not1.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.cd, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.cj = add nsw i32 %i.cd, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.z, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i, %bb.z ], [ %i.cj, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i, %bb.z ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ck = add i32 %.0212.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i
  %i.cl = lshr i32 %i.ck, 1                       ; 4 uses
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !1235 ; 2 uses
  %i.cq = icmp slt i32 %i.cb, %i.cp
  br i1 %i.cq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cr = add nsw i32 %i.cl, -1
  br label %bb.z

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.cb, %i.cp
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = add nuw nsw i32 %i.cl, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %.223.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cs, %bb.y ], [ %.0212.i.i.i.i.i.i.i.i.i.i, %bb.w ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i, %bb.y ], [ %i.cr, %bb.w ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !135

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i: ; preds = %bb.x
  store atomic i32 %i.cl, ptr %i.n monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i:     ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, %bb.v
  %i.ct = phi i64 [ %i.cm, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i ], [ %i.cg, %bb.v ]
  %.sink.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i, align 8, !tbaa !1236 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !1238
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = lshr i32 %i.ca, 6
  %i.db = and i32 %i.da, 7
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !1240
  %i.df = and i32 %i.ca, 63
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = lshr i64 %i.de, %i.dg
  %i.di = trunc i64 %i.dh to i8
  %i.dj = and i8 %i.di, 1
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit: ; preds = %bb.z, %._crit_edge.i.i.i.i.i.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, %bb.aa
  %.0.i.i.i.i.i = phi i8 [ %i.dj, %bb.aa ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.z ]
  %i.dk = load i8, ptr %i.q, align 8, !tbaa !946, !range !380, !noundef !293
  %.not = icmp eq i8 %i.dk, %.0.i.i.i.i.i
  br i1 %.not, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit24, label %bb.ab

bb.ab:                                            ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  %i.dl = load i16, ptr %i.m, align 1, !tbaa !283
  %i.dm = tail call noundef i16 @llvm.bswap.i16(i16 %i.dl)
  %i.dn = zext i16 %i.dm to i32
  %i.do = add i32 %i.bz, %i.dn                    ; 2 uses
  %i.dp = load i8, ptr %i.s, align 8, !tbaa !946, !range !380, !noundef !293
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.ac, label %bb.ad, !prof !267

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.r, i32 noundef %i.do)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit24

bb.ad:                                            ; preds = %bb.ab
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.r, i32 noundef %i.do)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit24

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit24: ; preds = %bb.ad, %bb.ac, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit30, label %bb.s, !llvm.loop !4159

.loopexit30:                                      ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit24, %.preheader, %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE24intersected_class_glyphsEPK8hb_set_tjPS4_(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %4 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 3 uses
  %5 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 5 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 9 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 9 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 9 uses
  %i.l = alloca i32, align 4                      ; 18 uses
  %6 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 6 uses
  %i.m = icmp eq i32 %2, 0
  br i1 %i.m, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #59
  store i32 -1, ptr %i.l, align 4, !tbaa !324
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.p = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = zext i16 %i.q to i64
  %.idx169 = mul nuw nsw i64 %i.r, 6
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx169
  %.not42165 = icmp eq i16 %i.p, 0
  br i1 %.not42165, label %.preheader, label %.lr.ph168

.lr.ph168:                                        ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sink.in.i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 20
  br label %bb.c

.preheader:                                       ; preds = %._crit_edge164, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit54

bb.c:                                             ; preds = %.lr.ph168, %._crit_edge164
  %i.af = phi i32 [ -1, %.lr.ph168 ], [ %i.dd, %._crit_edge164 ] ; 4 uses
  %.038166 = phi ptr [ %i.o, %.lr.ph168 ], [ %i.de, %._crit_edge164 ] ; 4 uses
  %i.ag = load i8, ptr %i.u, align 8, !tbaa !946, !range !380, !noundef !293
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.d, label %.split, !prof !267

.split:                                           ; preds = %bb.c
  %i.ai = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.t, ptr noundef nonnull %i.l)
  br i1 %i.ai, label %.split..preheader136_crit_edge, label %.thread119

.split..preheader136_crit_edge:                   ; preds = %.split
  %.pre192 = load i32, ptr %i.l, align 4, !tbaa !324
  br label %.preheader136

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #59
  store i32 %i.af, ptr %i.j, align 4, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #59
  store i32 %i.af, ptr %i.k, align 4, !tbaa !324
  %i.aj = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.t, ptr noundef nonnull %i.k) ; 0 uses
  %i.ak = add nsw i32 %i.af, 1                    ; 3 uses
  %i.al = load i32, ptr %i.k, align 4, !tbaa !324
  %i.am = icmp ult i32 %i.ak, %i.al
  br i1 %i.am, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit, label %.split113

.split113:                                        ; preds = %bb.d
  store i32 %i.af, ptr %i.k, align 4, !tbaa !324
  %i.an = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.t, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) ; 0 uses
  %i.ao = load i32, ptr %i.k, align 4, !tbaa !324
  %i.ap = add i32 %i.ao, 1                        ; 3 uses
  %.not133 = icmp eq i32 %i.ap, -1
  store i32 %i.ap, ptr %i.l, align 4, !tbaa !324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #59
  br i1 %.not133, label %.thread119, label %.preheader136

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit: ; preds = %bb.d
  store i32 %i.ak, ptr %i.l, align 4, !tbaa !324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #59
  br label %.preheader136

.preheader136:                                    ; preds = %.split..preheader136_crit_edge, %.split113, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit
  %i.aq = phi i32 [ %.pre192, %.split..preheader136_crit_edge ], [ %i.ap, %.split113 ], [ %i.ak, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit ] ; 2 uses
  %i.ar = load i16, ptr %.038166, align 1, !tbaa !283
  %i.as = call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i32
  %i.au = icmp ult i32 %i.aq, %i.at
  br i1 %i.au, label %.lr.ph163, label %._crit_edge164

.lr.ph163:                                        ; preds = %.preheader136, %.backedge
  %i.av = phi i32 [ %i.cm, %.backedge ], [ %i.aq, %.preheader136 ] ; 4 uses
  %i.aw = load i8, ptr %i.w, align 8, !tbaa !946, !range !380, !noundef !293
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.e, label %bb.m, !prof !267

bb.e:                                             ; preds = %.lr.ph163
  %i.ay = load i8, ptr %i.v, align 8, !tbaa !550, !range !380, !noundef !293
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.f, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, !prof !268

bb.f:                                             ; preds = %bb.e
  %i.ba = lshr i32 %i.av, 9                       ; 3 uses
  %i.bb = load atomic i32, ptr %i.x monotonic, align 8 ; 2 uses
  %i.bc = load i32, ptr %i.y, align 4, !tbaa !1233 ; 3 uses
  %i.bd = icmp ult i32 %i.bb, %i.bc
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !553 ; 3 uses
  br i1 %i.bd, label %bb.g, label %._crit_edge.i.i, !prof !268

bb.g:                                             ; preds = %bb.f
  %i.bf = zext i32 %i.bb to i64                   ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !1235
  %.not.i.i66 = icmp eq i32 %i.bh, %i.ba
  br i1 %.not.i.i66, label %_ZN12hb_bit_set_t8page_forEjb.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.f
  %.not1.i.i.i.i.i.i = icmp sgt i32 %i.bc, 0
  br i1 %.not1.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %._crit_edge.i.i
  %i.bi = add nsw i32 %i.bc, -1
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.k, %.lr.ph.preheader.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i, %bb.k ], [ %i.bi, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i, %bb.k ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.bj = add i32 %.0212.i.i.i.i.i.i, %.0203.i.i.i.i.i.i
  %i.bk = lshr i32 %i.bj, 1                       ; 4 uses
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !1235 ; 2 uses
  %i.bp = icmp slt i32 %i.ba, %i.bo
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bq = add nsw i32 %i.bk, -1
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i = icmp eq i32 %i.ba, %i.bo
  br i1 %.not28.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = add nuw nsw i32 %i.bk, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.223.i.i.i.i.i.i = phi i32 [ %i.br, %bb.j ], [ %.0212.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %.2.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i, %bb.j ], [ %i.bq, %bb.h ] ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i, %.2.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !135

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i: ; preds = %bb.i
  store atomic i32 %i.bk, ptr %i.x monotonic, align 8
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i

_ZN12hb_bit_set_t8page_forEjb.exit.i:             ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i, %bb.g
  %i.bs = phi i64 [ %i.bl, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i ], [ %i.bf, %bb.g ]
  %.sink.i.i65 = load ptr, ptr %.sink.in.i.i, align 8, !tbaa !1236 ; 2 uses
  %.not.i = icmp eq ptr %.sink.i.i65, null
  br i1 %.not.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, label %bb.l

bb.l:                                             ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i
end_hunk_5
