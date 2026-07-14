inline.NumInlined: 3208
inline.NumDeleted: 1027
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN4LIEF2PE17CHPEMetadataARM645parseERNS0_6ParserERNS_12BinaryStreamEj:bb.a
  %i.ds = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.58) #23 ; 0 uses
  store ptr null, ptr %0, align 8
  br label %bb.bb

bb.as:                                            ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %i.dt = call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24, !noalias !7 ; 30 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 1, ptr %i.du, align 8, !noalias !7
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  store i32 %3, ptr %i.dv, align 4, !noalias !7
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4LIEF2PE17CHPEMetadataARM64E, i64 16), ptr %i.dt, align 8, !noalias !7
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dx, i8 0, i64 72, i1 false), !noalias !7
  store ptr %i.dt, ptr %0, align 8, !alias.scope !7
  store i32 %i.s, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  store i32 %i.ad, ptr %i.dy, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store i32 %i.ao, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 28
  store i32 %i.az, ptr %i.ea, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  store i32 %i.bk, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 36
  store i32 %i.bv, ptr %i.ec, align 4
  %.sroa.091.0.extract.trunc = trunc i64 %i.bx to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  store i32 %.sroa.091.0.extract.trunc, ptr %i.ed, align 8
  %.sroa.089.0.extract.trunc = trunc i64 %i.ca to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 44
  store i32 %.sroa.089.0.extract.trunc, ptr %i.ee, align 4
  %.sroa.087.0.extract.trunc = trunc i64 %i.cd to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  store i32 %.sroa.087.0.extract.trunc, ptr %i.ef, align 8
  %.sroa.085.0.extract.trunc = trunc i64 %i.cg to i32
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dt, i64 52
  store i32 %.sroa.085.0.extract.trunc, ptr %i.eg, align 4
  %.sroa.083.0.extract.trunc = trunc i64 %i.cj to i32
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dt, i64 56
  store i32 %.sroa.083.0.extract.trunc, ptr %i.eh, align 8
  %.sroa.081.0.extract.trunc = trunc i64 %i.cm to i32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dt, i64 60 ; 2 uses
  store i32 %.sroa.081.0.extract.trunc, ptr %i.ei, align 4
  %.sroa.079.0.extract.trunc = trunc i64 %i.cp to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dt, i64 64 ; 2 uses
  store i32 %.sroa.079.0.extract.trunc, ptr %i.ej, align 8
  %.sroa.077.0.extract.trunc = trunc i64 %i.cs to i32
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dt, i64 68
  store i32 %.sroa.077.0.extract.trunc, ptr %i.ek, align 4
  %.sroa.075.0.extract.trunc = trunc i64 %i.cv to i32
  %i.el = getelementptr inbounds nuw i8, ptr %i.dt, i64 72
  store i32 %.sroa.075.0.extract.trunc, ptr %i.el, align 8
  %.sroa.073.0.extract.trunc = trunc i64 %i.cy to i32
  %i.em = getelementptr inbounds nuw i8, ptr %i.dt, i64 76
  store i32 %.sroa.073.0.extract.trunc, ptr %i.em, align 4
  %.sroa.071.0.extract.trunc = trunc i64 %i.db to i32
  %i.en = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  store i32 %.sroa.071.0.extract.trunc, ptr %i.en, align 8
  %.sroa.069.0.extract.trunc = trunc i64 %i.de to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dt, i64 84
  store i32 %.sroa.069.0.extract.trunc, ptr %i.eo, align 4
  %.sroa.067.0.extract.trunc = trunc i64 %i.dh to i32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  store i32 %.sroa.067.0.extract.trunc, ptr %i.ep, align 8
  %.sroa.065.0.extract.trunc = trunc i64 %i.dk to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dt, i64 92
  store i32 %.sroa.065.0.extract.trunc, ptr %i.eq, align 4
  %.sroa.063.0.extract.trunc = trunc i64 %i.dn to i32
  %i.er = getelementptr inbounds nuw i8, ptr %i.dt, i64 96
  store i32 %.sroa.063.0.extract.trunc, ptr %i.er, align 8
  %.sroa.062.0.extract.trunc = trunc i64 %i.dq to i32
  %i.es = getelementptr inbounds nuw i8, ptr %i.dt, i64 100
  store i32 %.sroa.062.0.extract.trunc, ptr %i.es, align 4
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.et = call i64 @_ZN4LIEF2PE17CHPEMetadataARM6414parse_code_mapERNS0_6ParserERS1_(ptr noundef nonnull align 8 dereferenceable(215) %1, ptr noundef nonnull align 8 dereferenceable(176) %i.dt)
  %.not156 = icmp samesign ult i64 %i.et, 4294967296
  br i1 %.not156, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.eu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.58) #23 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %bb.as
  %i.ev = load i32, ptr %i.ej, align 8
  %.not26 = icmp eq i32 %i.ev, 0
  br i1 %.not26, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ew = call i64 @_ZN4LIEF2PE17CHPEMetadataARM6418parse_redirectionsERNS0_6ParserERS1_(ptr noundef nonnull align 8 dereferenceable(215) %1, ptr noundef nonnull align 8 dereferenceable(176) %i.dt)
  %.not158 = icmp samesign ult i64 %i.ew, 4294967296
  br i1 %.not158, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ex = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.58) #23 ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.av
  %i.ey = load i32, ptr %i.ei, align 4
  %.not27 = icmp eq i32 %i.ey, 0
  br i1 %.not27, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ez = call i64 @_ZN4LIEF2PE17CHPEMetadataARM6433parse_code_ranges_to_entry_pointsERNS0_6ParserERS1_(ptr noundef nonnull align 8 dereferenceable(215) %1, ptr noundef nonnull align 8 dereferenceable(176) %i.dt)
  %.not160 = icmp samesign ult i64 %i.ez, 4294967296
  br i1 %.not160, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fa = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.58) #23 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit33.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit45.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit57.thread, %bb.p, %bb.t, %bb.x, %bb.ab, %bb.af, %bb.aj, %bb.an, %bb.ar, %bb.az, %bb.ba, %bb.ay, %bb.ap, %bb.al, %bb.ah, %bb.ad, %bb.z, %bb.v, %bb.r, %bb.n, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit51.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit39.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call i64 %i.f(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.a, i64 noundef %i.c, i64 noundef 4, i64 noundef 0) #23, !inline_history !10
  %i.h = and i64 %i.g, 4294967296
  %.not.i = icmp eq i64 %i.h, 0
  store i64 %i.c, ptr %i.b, align 8
  br i1 %.not.i, label %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit.thread, label %bb.b

_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i8, ptr %i.i, align 8, !range !5, !noundef !6
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #23
  %.pre = load i64, ptr %i.b, align 8
  br label %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i64 [ %i.c, %bb.b ], [ %.pre, %bb.c ]
  %i.m = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.n = add i64 %i.l, 4
  store i64 %i.n, ptr %i.b, align 8
  %i.o = zext i32 %i.m to i64
  %i.p = or disjoint i64 %i.o, 4294967296
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit.thread, %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit
  %.sroa.0.sroa.2.0.extract.trunc6 = phi i64 [ 1, %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit.thread ], [ %i.p, %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit ]
  ret i64 %.sroa.0.sroa.2.0.extract.trunc6
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 1, 4294967298) i64 @_ZN4LIEF2PE17CHPEMetadataARM6414parse_code_mapERNS0_6ParserERS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(215) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = zext i32 %i.f to i64
  %i.h = tail call noundef i64 @_ZNK4LIEF2PE6Binary13rva_to_offsetEm(ptr noundef nonnull align 8 dereferenceable(736) %i.d, i64 noundef %i.g) #23
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8              ; 6 uses
  %i.n = and i64 %i.h, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 10 uses
  %i.p = load i64, ptr %i.o, align 8
  store i64 %i.n, ptr %i.o, align 8
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.k, i64 15) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.q, align 8              ; 7 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 4 uses
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = ashr exact i64 %i.w, 3
  %i.y = icmp ult i64 %i.x, %.sroa.speculated
  br i1 %i.y, label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = sub i64 %i.ab, %i.v
  %i.ad = shl nuw nsw i64 %.sroa.speculated, 3
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.t, %i.aa
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_M_allocateEm.exit.i
  %i.af = ptrtoaddr ptr %i.ae to i64
  %2 = add i64 %i.ab, -8
  %i.ag = sub i64 %2, %i.v                        ; 2 uses
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ag, 72
  %i.aj = sub i64 %i.v, %i.af
  %diff.check = icmp ugt i64 %i.aj, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader91, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ai, 4611686018427387900     ; 3 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.ae, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.t, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.an ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.t, i64 %i.an ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %i.ao = getelementptr i8, ptr %next.gep68, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep68, align 4, !alias.scope !14, !noalias !11
  %wide.load69 = load <2 x i64>, ptr %i.ao, align 4, !alias.scope !14, !noalias !11
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !11, !noalias !14
  store <2 x i64> %wide.load69, ptr %i.ap, align 4, !alias.scope !11, !noalias !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i.preheader91

.lr.ph.i.i.i.i.preheader91:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader91, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader91 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader91 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %i.ar = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !14, !noalias !11
  store i64 %i.ar, ptr %.012.i.i.i.i, align 4, !alias.scope !11, !noalias !14
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.aa
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !20

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.t, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.w) #25
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.b, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.ae, ptr %i.q, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store ptr %i.au, ptr %i.z, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.sroa.speculated
  store ptr %i.av, ptr %i.r, align 8
  br label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE7reserveEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %.not60.not = icmp eq i32 %i.j, 0
  br i1 %.not60.not, label %.critedge14, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE7reserveEm.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %.01261 = phi i64 [ 0, %.lr.ph ], [ %i.dc, %bb.l ]
  %i.ay = load i64, ptr %i.o, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4
  %i.az = load ptr, ptr %i.m, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call i64 %i.bb(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull %i.b, i64 noundef %i.ay, i64 noundef 4, i64 noundef 0) #23, !inline_history !4
  %i.bd = and i64 %i.bc, 4294967296
  %.not.i.i = icmp eq i64 %i.bd, 0
  store i64 %i.ay, ptr %i.o, align 8
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.d

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.critedge14

bb.d:                                             ; preds = %bb.c
  %i.be = load i8, ptr %i.aw, align 8, !range !5, !noundef !6
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.e, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.b) #23
  %.pre.i = load i64, ptr %i.o, align 8
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.d, %bb.e
  %i.bg = phi i64 [ %i.ay, %bb.d ], [ %.pre.i, %bb.e ]
  %i.bh = load i32, ptr %i.b, align 4             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.bi = add i64 %i.bg, 4                        ; 4 uses
  store i64 %i.bi, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4
  %i.bj = load ptr, ptr %i.m, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call i64 %i.bl(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull %i.a, i64 noundef %i.bi, i64 noundef 4, i64 noundef 0) #23, !inline_history !4
  %i.bn = and i64 %i.bm, 4294967296
  %.not.i.i15 = icmp eq i64 %i.bn, 0
  store i64 %i.bi, ptr %i.o, align 8
  br i1 %.not.i.i15, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20.thread, label %bb.f

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.critedge14

bb.f:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %i.bo = load i8, ptr %i.aw, align 8, !range !5, !noundef !6
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.g, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20

bb.g:                                             ; preds = %bb.f
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #23
  %.pre.i18 = load i64, ptr %i.o, align 8
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20: ; preds = %bb.f, %bb.g
  %i.bq = phi i64 [ %i.bi, %bb.f ], [ %.pre.i18, %bb.g ]
  %i.br = load i32, ptr %i.a, align 4             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bs = add i64 %i.bq, 4
  store i64 %i.bs, ptr %i.o, align 8
  %i.bt = load ptr, ptr %i.ax, align 8            ; 5 uses
  %i.bu = load ptr, ptr %i.r, align 8
  %.not.i.i21 = icmp eq ptr %i.bt, %i.bu
  br i1 %.not.i.i21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20
  %.sroa.5.0.insert.ext = zext i32 %i.br to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.023.0.insert.ext = zext i32 %i.bh to i64
  %.sroa.023.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.023.0.insert.ext
  store i64 %.sroa.023.0.insert.insert, ptr %i.bt, align 4
  %i.bv = load ptr, ptr %i.ax, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bw, ptr %i.ax, align 8
  br label %bb.l

bb.i:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20
  %i.bx = load ptr, ptr %i.q, align 8             ; 7 uses
  %i.by = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64               ; 3 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 4 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %bb.j, label %_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #26
  unreachable

_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.cc = ashr exact i64 %i.ca, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = call i64 @llvm.umin.i64(i64 %i.cd, i64 1152921504606846975)
  %i.cg = select i1 %i.ce, i64 1152921504606846975, i64 %i.cf ; 3 uses
  %.not.i.i.i.i22 = icmp ne i64 %i.cg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i22)
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #24 ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ca
  %.sroa.5.0.insert.ext29 = zext i32 %i.br to i64
  %.sroa.5.0.insert.shift30 = shl nuw i64 %.sroa.5.0.insert.ext29, 32
  %.sroa.023.0.insert.ext25 = zext i32 %i.bh to i64
  %.sroa.023.0.insert.insert27 = or disjoint i64 %.sroa.5.0.insert.shift30, %.sroa.023.0.insert.ext25
  store i64 %.sroa.023.0.insert.insert27, ptr %i.cj, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.bt
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ck = ptrtoaddr ptr %i.ci to i64
  %i.cl = sub i64 %i.by, %i.bz
  %i.cm = add i64 %i.cl, -8                       ; 2 uses
  %i.cn = lshr i64 %i.cm, 3
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.cm, 24
  %i.cp = sub i64 %i.bz, %i.ck
  %diff.check72 = icmp ugt i64 %i.cp, -32
  %or.cond89 = or i1 %min.iters.check74, %diff.check72
  br i1 %or.cond89, label %.lr.ph.i.i.i.i.i.i.preheader90, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec77 = and i64 %i.co, 4611686018427387900   ; 3 uses
  %i.cq = shl i64 %n.vec77, 3                     ; 2 uses
  %i.cr = getelementptr i8, ptr %i.ci, i64 %i.cq  ; 2 uses
  %i.cs = getelementptr i8, ptr %i.bx, i64 %i.cq
  br label %vector.body78

vector.body78:                                    ; preds = %vector.body78, %vector.ph75
  %index79 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body78 ] ; 2 uses
  %i.ct = shl i64 %index79, 3                     ; 2 uses
  %next.gep80 = getelementptr i8, ptr %i.ci, i64 %i.ct ; 2 uses
  %next.gep81 = getelementptr i8, ptr %i.bx, i64 %i.ct ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.cu = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load82 = load <2 x i64>, ptr %next.gep81, align 4, !alias.scope !24, !noalias !21
  %wide.load83 = load <2 x i64>, ptr %i.cu, align 4, !alias.scope !24, !noalias !21
  %i.cv = getelementptr i8, ptr %next.gep80, i64 16
  store <2 x i64> %wide.load82, ptr %next.gep80, align 4, !alias.scope !21, !noalias !24
  store <2 x i64> %wide.load83, ptr %i.cv, align 4, !alias.scope !21, !noalias !24
  %index.next84 = add nuw i64 %index79, 4         ; 2 uses
  %i.cw = icmp eq i64 %index.next84, %n.vec77
  br i1 %i.cw, label %middle.block85, label %vector.body78, !llvm.loop !26

middle.block85:                                   ; preds = %vector.body78
  %cmp.n86 = icmp eq i64 %i.co, %n.vec77
  br i1 %cmp.n86, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader90

.lr.ph.i.i.i.i.i.i.preheader90:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block85
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cr, %middle.block85 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cs, %middle.block85 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader90, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader90 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader90 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.cx = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !24, !noalias !21
  store i64 %i.cx, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !21, !noalias !24
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cy, %i.bt
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !27

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block85, %_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ci, %_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cr, %middle.block85 ], [ %i.cz, %.lr.ph.i.i.i.i.i.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.ca) #25
  br label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.ci, ptr %i.q, align 8
  store ptr %i.da, ptr %i.ax, align 8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  store ptr %i.db, ptr %i.r, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.dc = add nuw nsw i64 %.01261, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dc, %i.k
  br i1 %exitcond.not, label %.critedge14, label %bb.c, !llvm.loop !28

.critedge14:                                      ; preds = %bb.l, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE7reserveEm.exit, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20.thread
  %.sroa.3.3 = phi i64 [ 1, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread ], [ 1, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20.thread ], [ 4294967297, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE7reserveEm.exit ], [ 4294967297, %bb.l ]
  store i64 %i.p, ptr %i.o, align 8
  ret i64 %.sroa.3.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 1, 4294967298) i64 @_ZN4LIEF2PE17CHPEMetadataARM6418parse_redirectionsERNS0_6ParserERS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(215) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4
  %i.g = zext i32 %i.f to i64
  %i.h = tail call noundef i64 @_ZNK4LIEF2PE6Binary13rva_to_offsetEm(ptr noundef nonnull align 8 dereferenceable(736) %i.d, i64 noundef %i.g) #23
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8              ; 6 uses
  %i.n = and i64 %i.h, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 10 uses
  %i.p = load i64, ptr %i.o, align 8
  store i64 %i.n, ptr %i.o, align 8
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.k, i64 15) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.q, align 8              ; 7 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 4 uses
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = ashr exact i64 %i.w, 3
  %i.y = icmp ult i64 %i.x, %.sroa.speculated
  br i1 %i.y, label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = sub i64 %i.ab, %i.v
  %i.ad = shl nuw nsw i64 %.sroa.speculated, 3
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.t, %i.aa
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_M_allocateEm.exit.i
  %i.af = ptrtoaddr ptr %i.ae to i64
  %2 = add i64 %i.ab, -8
  %i.ag = sub i64 %2, %i.v                        ; 2 uses
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ag, 72
  %i.aj = sub i64 %i.v, %i.af
  %diff.check = icmp ugt i64 %i.aj, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader91, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ai, 4611686018427387900     ; 3 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.ae, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.t, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.an ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.t, i64 %i.an ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.ao = getelementptr i8, ptr %next.gep68, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep68, align 4, !alias.scope !32, !noalias !29
  %wide.load69 = load <2 x i64>, ptr %i.ao, align 4, !alias.scope !32, !noalias !29
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !29, !noalias !32
  store <2 x i64> %wide.load69, ptr %i.ap, align 4, !alias.scope !29, !noalias !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i.preheader91

.lr.ph.i.i.i.i.preheader91:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader91, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader91 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader91 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.ar = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !32, !noalias !29
  store i64 %i.ar, ptr %.012.i.i.i.i, align 4, !alias.scope !29, !noalias !32
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.aa
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !35

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.t, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.w) #25
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.b, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.ae, ptr %i.q, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store ptr %i.au, ptr %i.z, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.sroa.speculated
  store ptr %i.av, ptr %i.r, align 8
  br label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE7reserveEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %.not60.not = icmp eq i32 %i.j, 0
  br i1 %.not60.not, label %.critedge14, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE7reserveEm.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %.01261 = phi i64 [ 0, %.lr.ph ], [ %i.dc, %bb.l ]
  %i.ay = load i64, ptr %i.o, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4
  %i.az = load ptr, ptr %i.m, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call i64 %i.bb(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull %i.b, i64 noundef %i.ay, i64 noundef 4, i64 noundef 0) #23, !inline_history !4
  %i.bd = and i64 %i.bc, 4294967296
  %.not.i.i = icmp eq i64 %i.bd, 0
  store i64 %i.ay, ptr %i.o, align 8
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.d

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.critedge14

bb.d:                                             ; preds = %bb.c
  %i.be = load i8, ptr %i.aw, align 8, !range !5, !noundef !6
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.e, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.b) #23
  %.pre.i = load i64, ptr %i.o, align 8
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.d, %bb.e
  %i.bg = phi i64 [ %i.ay, %bb.d ], [ %.pre.i, %bb.e ]
  %i.bh = load i32, ptr %i.b, align 4             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.bi = add i64 %i.bg, 4                        ; 4 uses
  store i64 %i.bi, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4
  %i.bj = load ptr, ptr %i.m, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call i64 %i.bl(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull %i.a, i64 noundef %i.bi, i64 noundef 4, i64 noundef 0) #23, !inline_history !4
  %i.bn = and i64 %i.bm, 4294967296
  %.not.i.i15 = icmp eq i64 %i.bn, 0
  store i64 %i.bi, ptr %i.o, align 8
  br i1 %.not.i.i15, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20.thread, label %bb.f

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.critedge14

bb.f:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %i.bo = load i8, ptr %i.aw, align 8, !range !5, !noundef !6
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.g, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20

bb.g:                                             ; preds = %bb.f
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #23
  %.pre.i18 = load i64, ptr %i.o, align 8
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20: ; preds = %bb.f, %bb.g
  %i.bq = phi i64 [ %i.bi, %bb.f ], [ %.pre.i18, %bb.g ]
  %i.br = load i32, ptr %i.a, align 4             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bs = add i64 %i.bq, 4
  store i64 %i.bs, ptr %i.o, align 8
  %i.bt = load ptr, ptr %i.ax, align 8            ; 5 uses
  %i.bu = load ptr, ptr %i.r, align 8
  %.not.i.i21 = icmp eq ptr %i.bt, %i.bu
  br i1 %.not.i.i21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20
  %.sroa.5.0.insert.ext = zext i32 %i.br to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.023.0.insert.ext = zext i32 %i.bh to i64
  %.sroa.023.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.023.0.insert.ext
  store i64 %.sroa.023.0.insert.insert, ptr %i.bt, align 4
  %i.bv = load ptr, ptr %i.ax, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bw, ptr %i.ax, align 8
  br label %bb.l

bb.i:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20
  %i.bx = load ptr, ptr %i.q, align 8             ; 7 uses
  %i.by = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64               ; 3 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 4 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %bb.j, label %_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #26
  unreachable

_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.cc = ashr exact i64 %i.ca, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = call i64 @llvm.umin.i64(i64 %i.cd, i64 1152921504606846975)
  %i.cg = select i1 %i.ce, i64 1152921504606846975, i64 %i.cf ; 3 uses
  %.not.i.i.i.i22 = icmp ne i64 %i.cg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i22)
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #24 ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ca
  %.sroa.5.0.insert.ext29 = zext i32 %i.br to i64
  %.sroa.5.0.insert.shift30 = shl nuw i64 %.sroa.5.0.insert.ext29, 32
  %.sroa.023.0.insert.ext25 = zext i32 %i.bh to i64
  %.sroa.023.0.insert.insert27 = or disjoint i64 %.sroa.5.0.insert.shift30, %.sroa.023.0.insert.ext25
  store i64 %.sroa.023.0.insert.insert27, ptr %i.cj, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.bt
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ck = ptrtoaddr ptr %i.ci to i64
  %i.cl = sub i64 %i.by, %i.bz
  %i.cm = add i64 %i.cl, -8                       ; 2 uses
  %i.cn = lshr i64 %i.cm, 3
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.cm, 24
  %i.cp = sub i64 %i.bz, %i.ck
  %diff.check72 = icmp ugt i64 %i.cp, -32
  %or.cond89 = or i1 %min.iters.check74, %diff.check72
  br i1 %or.cond89, label %.lr.ph.i.i.i.i.i.i.preheader90, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec77 = and i64 %i.co, 4611686018427387900   ; 3 uses
  %i.cq = shl i64 %n.vec77, 3                     ; 2 uses
  %i.cr = getelementptr i8, ptr %i.ci, i64 %i.cq  ; 2 uses
  %i.cs = getelementptr i8, ptr %i.bx, i64 %i.cq
  br label %vector.body78

vector.body78:                                    ; preds = %vector.body78, %vector.ph75
  %index79 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body78 ] ; 2 uses
  %i.ct = shl i64 %index79, 3                     ; 2 uses
  %next.gep80 = getelementptr i8, ptr %i.ci, i64 %i.ct ; 2 uses
  %next.gep81 = getelementptr i8, ptr %i.bx, i64 %i.ct ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.cu = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load82 = load <2 x i64>, ptr %next.gep81, align 4, !alias.scope !39, !noalias !36
  %wide.load83 = load <2 x i64>, ptr %i.cu, align 4, !alias.scope !39, !noalias !36
  %i.cv = getelementptr i8, ptr %next.gep80, i64 16
  store <2 x i64> %wide.load82, ptr %next.gep80, align 4, !alias.scope !36, !noalias !39
  store <2 x i64> %wide.load83, ptr %i.cv, align 4, !alias.scope !36, !noalias !39
  %index.next84 = add nuw i64 %index79, 4         ; 2 uses
  %i.cw = icmp eq i64 %index.next84, %n.vec77
  br i1 %i.cw, label %middle.block85, label %vector.body78, !llvm.loop !41

middle.block85:                                   ; preds = %vector.body78
  %cmp.n86 = icmp eq i64 %i.co, %n.vec77
  br i1 %cmp.n86, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader90

.lr.ph.i.i.i.i.i.i.preheader90:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block85
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cr, %middle.block85 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cs, %middle.block85 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader90, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader90 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader90 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.cx = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !39, !noalias !36
  store i64 %i.cx, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !36, !noalias !39
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cy, %i.bt
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !42

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block85, %_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ci, %_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cr, %middle.block85 ], [ %i.cz, %.lr.ph.i.i.i.i.i.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.ca) #25
  br label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.ci, ptr %i.q, align 8
  store ptr %i.da, ptr %i.ax, align 8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  store ptr %i.db, ptr %i.r, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.dc = add nuw nsw i64 %.01261, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dc, %i.k
  br i1 %exitcond.not, label %.critedge14, label %bb.c, !llvm.loop !43

.critedge14:                                      ; preds = %bb.l, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE7reserveEm.exit, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20.thread
  %.sroa.3.3 = phi i64 [ 1, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread ], [ 1, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20.thread ], [ 4294967297, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE7reserveEm.exit ], [ 4294967297, %bb.l ]
  store i64 %i.p, ptr %i.o, align 8
  ret i64 %.sroa.3.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 1, 4294967298) i64 @_ZN4LIEF2PE17CHPEMetadataARM6433parse_code_ranges_to_entry_pointsERNS0_6ParserERS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(215) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8
  %i.h = zext i32 %i.g to i64
  %i.i = tail call noundef i64 @_ZNK4LIEF2PE6Binary13rva_to_offsetEm(ptr noundef nonnull align 8 dereferenceable(736) %i.e, i64 noundef %i.h) #23
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8              ; 8 uses
  %i.o = and i64 %i.i, 4294967295
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 13 uses
  %i.q = load i64, ptr %i.p, align 8
  store i64 %i.o, ptr %i.p, align 8
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 15) ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.r, align 8              ; 7 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 4 uses
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = ashr exact i64 %i.x, 3
  %i.z = icmp ult i64 %i.y, %.sroa.speculated
  br i1 %i.z, label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ad = sub i64 %i.ac, %i.w
  %i.ae = shl nuw nsw i64 %.sroa.speculated, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #24 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.u, %i.ab
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_M_allocateEm.exit.i
  %i.ag = ptrtoaddr ptr %i.af to i64
  %2 = add i64 %i.ac, -8
  %i.ah = sub i64 %2, %i.w                        ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 72
  %i.ak = sub i64 %i.w, %i.ag
  %diff.check = icmp ugt i64 %i.ak, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader85, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.af, i64 %i.al
  %i.an = getelementptr i8, ptr %i.u, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.ao ; 2 uses
  %next.gep82 = getelementptr i8, ptr %i.u, i64 %i.ao ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.ap = getelementptr i8, ptr %next.gep82, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep82, align 4, !alias.scope !47, !noalias !44
  %wide.load83 = load <2 x i64>, ptr %i.ap, align 4, !alias.scope !47, !noalias !44
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !44, !noalias !47
  store <2 x i64> %wide.load83, ptr %i.aq, align 4, !alias.scope !44, !noalias !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i.preheader85

.lr.ph.i.i.i.i.preheader85:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader85, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader85 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader85 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.as = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !47, !noalias !44
  store i64 %i.as, ptr %.012.i.i.i.i, align 4, !alias.scope !44, !noalias !47
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.at, %i.ab
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !50

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.u, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.x) #25
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.b, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.af, ptr %i.r, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store ptr %i.av, ptr %i.aa, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.sroa.speculated
  store ptr %i.aw, ptr %i.s, align 8
  br label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE7reserveEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %.not74.not = icmp eq i32 %i.k, 0
  br i1 %.not74.not, label %.critedge14, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE7reserveEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.n
  %.01275 = phi i64 [ 0, %.lr.ph ], [ %i.db, %bb.n ]
  %i.bb = load i64, ptr %i.p, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 0, ptr %i.c, align 4
  %i.bc = load ptr, ptr %i.n, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call i64 %i.be(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull %i.c, i64 noundef %i.bb, i64 noundef 4, i64 noundef 0) #23, !inline_history !4
  %i.bg = and i64 %i.bf, 4294967296
  %.not.i.i = icmp eq i64 %i.bg, 0
  store i64 %i.bb, ptr %i.p, align 8
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.d

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %.critedge14.sink.split

bb.d:                                             ; preds = %bb.c
  %i.bh = load i8, ptr %i.ax, align 8, !range !5, !noundef !6
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.e, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.c) #23
  %.pre.i = load i64, ptr %i.p, align 8
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.d, %bb.e
  %i.bj = phi i64 [ %i.bb, %bb.d ], [ %.pre.i, %bb.e ]
  %i.bk = load i32, ptr %i.c, align 4             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.bl = add i64 %i.bj, 4                        ; 4 uses
  store i64 %i.bl, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4
  %i.bm = load ptr, ptr %i.n, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call i64 %i.bo(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull %i.b, i64 noundef %i.bl, i64 noundef 4, i64 noundef 0) #23, !inline_history !4
  %i.bq = and i64 %i.bp, 4294967296
  %.not.i.i17 = icmp eq i64 %i.bq, 0
  store i64 %i.bl, ptr %i.p, align 8
  br i1 %.not.i.i17, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread, label %bb.f

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.critedge14.sink.split

bb.f:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %i.br = load i8, ptr %i.ax, align 8, !range !5, !noundef !6
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.g, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22

bb.g:                                             ; preds = %bb.f
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.b) #23
  %.pre.i20 = load i64, ptr %i.p, align 8
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22: ; preds = %bb.f, %bb.g
  %i.bt = phi i64 [ %i.bl, %bb.f ], [ %.pre.i20, %bb.g ]
  %i.bu = load i32, ptr %i.b, align 4             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.bv = add i64 %i.bt, 4                        ; 4 uses
  store i64 %i.bv, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4
  %i.bw = load ptr, ptr %i.n, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call i64 %i.by(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull %i.a, i64 noundef %i.bv, i64 noundef 4, i64 noundef 0) #23, !inline_history !4
  %i.ca = and i64 %i.bz, 4294967296
  %.not.i.i23 = icmp eq i64 %i.ca, 0
  store i64 %i.bv, ptr %i.p, align 8
  br i1 %.not.i.i23, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28.thread, label %bb.h

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.critedge14.sink.split

bb.h:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22
  %i.cb = load i8, ptr %i.ax, align 8, !range !5, !noundef !6
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28

bb.i:                                             ; preds = %bb.h
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #23
  %.pre.i26 = load i64, ptr %i.p, align 8
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28: ; preds = %bb.h, %bb.i
  %i.cd = phi i64 [ %i.bv, %bb.h ], [ %.pre.i26, %bb.i ]
  %i.ce = load i32, ptr %i.a, align 4             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.cf = add i64 %i.cd, 4
  store i64 %i.cf, ptr %i.p, align 8
  %i.cg = load ptr, ptr %i.az, align 8            ; 7 uses
  %i.ch = load ptr, ptr %i.ba, align 8
  %.not.i.i29 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not.i.i29, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28
  store i32 %i.bk, ptr %i.cg, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 %i.bu, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i32 %i.ce, ptr %.sroa.6.0..sroa_idx, align 4
  %i.ci = load ptr, ptr %i.az, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store ptr %i.cj, ptr %i.az, align 8
  br label %bb.n

bb.k:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit28
  %i.ck = load ptr, ptr %i.ay, align 8            ; 5 uses
  %i.cl = ptrtoint ptr %i.cg to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 4 uses
  %i.co = icmp eq i64 %i.cn, 9223372036854775800
  br i1 %i.co, label %bb.l, label %_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #26
  unreachable
end_hunk_0
begin_hunk_1_@_ZN4LIEF2PE9to_stringENS0_17CHPEMetadataARM6413range_entry_t4TYPEE:bb.a
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4LIEF2PE17CHPEMetadataARM645cloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.251") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #1 comdat align 2 {
_ZNSt10unique_ptrIN4LIEF2PE17CHPEMetadataARM64ESt14default_deleteIS2_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24 ; 2 uses
  tail call void @_ZN4LIEF2PE17CHPEMetadataARM64C2ERKS1_(ptr noundef nonnull align 8 dereferenceable(176) %i.a, ptr noundef nonnull align 8 dereferenceable(176) %1)
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF2PE17CHPEMetadataARM64D2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4LIEF2PE17CHPEMetadataARM64E, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EED2Ev.exit

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #25
  br label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EED2Ev.exit

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25
  br label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EED2Ev.exit

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF2PE17CHPEMetadataARM64D0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4LIEF2PE17CHPEMetadataARM64E, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25, !inline_history !322
  br label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #25, !inline_history !322
  br label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2.i, label %_ZN4LIEF2PE17CHPEMetadataARM64D2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !322
  br label %_ZN4LIEF2PE17CHPEMetadataARM64D2Ev.exit

_ZN4LIEF2PE17CHPEMetadataARM64D2Ev.exit:          ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EED2Ev.exit.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #4 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF2PE17CHPEMetadataARM64C2ERKS1_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4LIEF2PE12CHPEMetadataE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  store i64 %i.c, ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4LIEF2PE17CHPEMetadataARM64E, i64 16), ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %i.e, i64 88, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2EmRKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.c, label %_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tEE8allocateEmPKv.exit.i.i.i.i, !prof !323

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #24
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.p = phi ptr [ %i.o, %_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  store ptr %i.p, ptr %i.f, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.r, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.g, align 8              ; 6 uses
  %i.u = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2EmRKS4_.exit.i
  %i.v = ptrtoaddr ptr %i.t to i64
  %i.w = ptrtoaddr ptr %i.p to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.t to i64
  %2 = add i64 %i.x, -8
  %3 = sub i64 %2, %i.y                           ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.ab = sub i64 %i.v, %i.w
  %diff.check = icmp ugt i64 %i.ab, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader59, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.t, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.af ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.t, i64 %i.af ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 4
  %wide.load36 = load <2 x i64>, ptr %i.ag, align 4
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load36, ptr %i.ah, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !324

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader59

.lr.ph.i.i.i.i.i.preheader59:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader59, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader59 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader59 ] ; 2 uses
  %i.aj = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i64 %i.aj, ptr %.09.i.i.i.i.i, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !325

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2EmRKS4_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2EmRKS4_.exit.i ], [ %i.ad, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.q, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %.not.i.i.i.i6 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i.i6, label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2EmRKS4_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2ERKS5_.exit
  %i.au = icmp ugt i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.e, label %_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tEE8allocateEmPKv.exit.i.i.i.i, !prof !323

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #24
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2ERKS5_.exit
  %i.aw = phi ptr [ %i.av, %_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tEE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2ERKS5_.exit ] ; 8 uses
  store ptr %i.aw, ptr %i.am, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.at
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.ay, ptr %i.az, align 8
  %i.ba = load ptr, ptr %i.an, align 8            ; 6 uses
  %i.bb = load ptr, ptr %i.ao, align 8            ; 3 uses
  %.not7.i.i.i.i.i7 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not7.i.i.i.i.i7, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i8.preheader

.lr.ph.i.i.i.i.i8.preheader:                      ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2EmRKS4_.exit.i
  %i.bc = ptrtoaddr ptr %i.ba to i64
  %i.bd = ptrtoaddr ptr %i.aw to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = ptrtoint ptr %i.ba to i64
  %4 = add i64 %i.be, -8
  %5 = sub i64 %4, %i.bf                          ; 2 uses
  %i.bg = lshr i64 %5, 3
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check41 = icmp ult i64 %5, 72
  %i.bi = sub i64 %i.bc, %i.bd
  %diff.check39 = icmp ugt i64 %i.bi, -32
  %or.cond56 = or i1 %min.iters.check41, %diff.check39
  br i1 %or.cond56, label %.lr.ph.i.i.i.i.i8.preheader57, label %vector.ph42

vector.ph42:                                      ; preds = %.lr.ph.i.i.i.i.i8.preheader
  %n.vec44 = and i64 %i.bh, 4611686018427387900   ; 3 uses
  %i.bj = shl i64 %n.vec44, 3                     ; 2 uses
  %i.bk = getelementptr i8, ptr %i.aw, i64 %i.bj  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ba, i64 %i.bj
  br label %vector.body45

vector.body45:                                    ; preds = %vector.body45, %vector.ph42
  %index46 = phi i64 [ 0, %vector.ph42 ], [ %index.next51, %vector.body45 ] ; 2 uses
  %i.bm = shl i64 %index46, 3                     ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.aw, i64 %i.bm ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.ba, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep48, i64 16
  %wide.load49 = load <2 x i64>, ptr %next.gep48, align 4
  %wide.load50 = load <2 x i64>, ptr %i.bn, align 4
  %i.bo = getelementptr i8, ptr %next.gep47, i64 16
  store <2 x i64> %wide.load49, ptr %next.gep47, align 4
  store <2 x i64> %wide.load50, ptr %i.bo, align 4
  %index.next51 = add nuw i64 %index46, 4         ; 2 uses
  %i.bp = icmp eq i64 %index.next51, %n.vec44
  br i1 %i.bp, label %middle.block52, label %vector.body45, !llvm.loop !326

middle.block52:                                   ; preds = %vector.body45
  %cmp.n53 = icmp eq i64 %i.bh, %n.vec44
  br i1 %cmp.n53, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i8.preheader57

.lr.ph.i.i.i.i.i8.preheader57:                    ; preds = %.lr.ph.i.i.i.i.i8.preheader, %middle.block52
  %.09.i.i.i.i.i9.ph = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i8.preheader ], [ %i.bk, %middle.block52 ]
  %.sroa.04.08.i.i.i.i.i10.ph = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i8.preheader ], [ %i.bl, %middle.block52 ]
  br label %.lr.ph.i.i.i.i.i8

.lr.ph.i.i.i.i.i8:                                ; preds = %.lr.ph.i.i.i.i.i8.preheader57, %.lr.ph.i.i.i.i.i8
  %.09.i.i.i.i.i9 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i8 ], [ %.09.i.i.i.i.i9.ph, %.lr.ph.i.i.i.i.i8.preheader57 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i10 = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i8 ], [ %.sroa.04.08.i.i.i.i.i10.ph, %.lr.ph.i.i.i.i.i8.preheader57 ] ; 2 uses
  %i.bq = load i64, ptr %.sroa.04.08.i.i.i.i.i10, align 4
  store i64 %i.bq, ptr %.09.i.i.i.i.i9, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i10, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i9, i64 8 ; 2 uses
  %.not.i.i.i.i.i11 = icmp eq ptr %i.br, %i.bb
  br i1 %.not.i.i.i.i.i11, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i8, !llvm.loop !327

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i8, %middle.block52, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2EmRKS4_.exit.i
  %.0.lcssa.i.i.i.i.i12 = phi ptr [ %i.aw, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2EmRKS4_.exit.i ], [ %i.bk, %middle.block52 ], [ %i.bs, %.lr.ph.i.i.i.i.i8 ]
  store ptr %.0.lcssa.i.i.i.i.i12, ptr %i.ax, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i8 0, i64 24, i1 false)
  %.not.i.i.i.i13 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i.i.i13, label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2EmRKS4_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2ERKS5_.exit
  %i.cb = sdiv exact i64 %i.ca, 12
  %i.cc = icmp ugt i64 %i.cb, 768614336404564650
  br i1 %i.cc, label %bb.g, label %_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tEE8allocateEmPKv.exit.i.i.i.i, !prof !323

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #24
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2ERKS5_.exit
  %i.ce = phi ptr [ %i.cd, %_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tEE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2ERKS5_.exit ] ; 5 uses
  store ptr %i.ce, ptr %i.bt, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr %i.ce, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ca
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.cg, ptr %i.ch, align 8
  %i.ci = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.cj = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not7.i.i.i.i.i14 = icmp eq ptr %i.ci, %i.cj
  br i1 %.not7.i.i.i.i.i14, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i15

.lr.ph.i.i.i.i.i15:                               ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2EmRKS4_.exit.i, %.lr.ph.i.i.i.i.i15
  %.09.i.i.i.i.i16 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i15 ], [ %i.ce, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2EmRKS4_.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i17 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i15 ], [ %i.ci, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2EmRKS4_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i16, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i.i.i17, i64 12, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i17, i64 12 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i16, i64 12 ; 2 uses
  %.not.i.i.i.i.i18 = icmp eq ptr %i.ck, %i.cj
  br i1 %.not.i.i.i.i.i18, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i15, !llvm.loop !328

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i15, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2EmRKS4_.exit.i
  %.0.lcssa.i.i.i.i.i19 = phi ptr [ %i.ce, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2EmRKS4_.exit.i ], [ %i.cl, %.lr.ph.i.i.i.i.i15 ]
  store ptr %.0.lcssa.i.i.i.i.i19, ptr %i.cf, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4LIEF2PE12CHPEMetadata5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.251") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4LIEF2PE12CHPEMetadataE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  store i64 %i.d, ptr %i.b, align 8
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4LIEF2PE12CHPEMetadata9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 23, ptr %i.a, align 8
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load i64, ptr %i.a, align 8              ; 3 uses
  store i64 %i.d, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.c, ptr noundef nonnull align 1 dereferenceable(23) @.str.59, i64 23, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.d, ptr %i.e, align 8
  %i.f = load ptr, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4              ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.j = icmp ult i32 %i.i, 10
  br i1 %i.j, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %bb.f
  %.02230.i.i = phi i32 [ %i.q, %bb.f ], [ %i.i, %._crit_edge.i.i ] ; 5 uses
  %.02329.i.i = phi i32 [ %i.r, %bb.f ], [ 1, %._crit_edge.i.i ] ; 4 uses
  %i.k = icmp ult i32 %.02230.i.i, 100
  br i1 %i.k, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i.i
  %i.l = add i32 %.02329.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.m = icmp ult i32 %.02230.i.i, 1000
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %.02329.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = icmp ult i32 %.02230.i.i, 10000
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = add i32 %.02329.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.f:                                             ; preds = %bb.d
  %i.q = udiv i32 %.02230.i.i, 10000
  %i.r = add i32 %.02329.i.i, 4                   ; 2 uses
  %i.s = icmp ult i32 %.02230.i.i, 100000
  br i1 %i.s, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !332

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.f, %bb.e, %bb.c, %bb.a, %._crit_edge.i.i
  %.0.i.i = phi i32 [ %i.p, %bb.e ], [ %i.l, %bb.a ], [ %i.n, %bb.c ], [ 1, %._crit_edge.i.i ], [ %i.r, %bb.f ]
  %i.t = zext i32 %.0.i.i to i64
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.u, ptr %4, align 8, !alias.scope !329
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.t, i8 noundef signext 0) #23
  %i.v = load ptr, ptr %4, align 8, !alias.scope !329 ; 4 uses
  %i.w = icmp ugt i32 %i.i, 99
  br i1 %i.w, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i1

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !329
  %i.z = trunc i64 %i.y to i32
  %i.aa = add i32 %i.z, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.ad, %.lr.ph.i2.i ], [ %i.i, %.lr.ph.preheader.i.i ] ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN3fmt3v116detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i104

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i104: ; preds = %bb.k, %bb.j
  %.pre-phi.i.i105 = phi i64 [ %i.cg, %bb.j ], [ %.pre2.i.i107, %bb.k ]
  %i.ck = phi i64 [ %i.cf, %bb.j ], [ %.pre.i.i106, %bb.k ]
  %i.cl = load ptr, ptr %8, align 8
  store i64 %.pre-phi.i.i105, ptr %i.m, align 8
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ck
  store i32 %i.cd, ptr %i.cm, align 4
  br label %_ZN3fmt3v116detail6bigintlSEi.exit108

_ZN3fmt3v116detail6bigintlSEi.exit108:            ; preds = %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit, %.lr.ph.i98, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i104
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit108
  %i.cn = load ptr, ptr %9, align 8
  store i32 1, ptr %i.cn, align 4
  %i.co = load i64, ptr %i.p, align 8
  %.not8.i.i112.not = icmp eq i64 %i.co, 0
  br i1 %.not8.i.i112.not, label %bb.m, label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114

bb.m:                                             ; preds = %bb.l
  %i.cp = load ptr, ptr %i.q, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef 1) #23, !inline_history !482
  %.pre.i.i.i.i113 = load i64, ptr %i.p, align 8
  %i.cq = icmp ne i64 %.pre.i.i.i.i113, 0
  %i.cr = zext i1 %i.cq to i64
  br label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114

_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114:       ; preds = %bb.l, %bb.m
  %i.cs = phi i64 [ 1, %bb.l ], [ %i.cr, %bb.m ]  ; 2 uses
  store i64 %i.cs, ptr %i.r, align 8
  %i.ct = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.cu = lshr i32 %i.ct, 5
  store i32 %i.cu, ptr %i.t, align 8
  %i.cv = and i32 %i.ct, 31                       ; 3 uses
  %i.cw = icmp eq i32 %i.cv, 0
  %.not19.i115 = icmp eq i64 %i.cs, 0
  %or.cond488 = or i1 %i.cw, %.not19.i115
  br i1 %or.cond488, label %bb.p, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114
  %i.cx = sub nuw nsw i32 32, %i.cv
  %i.cy = load ptr, ptr %9, align 8               ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 2 uses
  %i.da = lshr i32 %i.cz, %i.cx                   ; 2 uses
  %i.db = shl i32 %i.cz, %i.cv
  store i32 %i.db, ptr %i.cy, align 4
  %.not.i121 = icmp eq i32 %i.da, 0
  br i1 %.not.i121, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i116
  %i.dc = load i64, ptr %i.r, align 8             ; 2 uses
  %i.dd = add i64 %i.dc, 1                        ; 3 uses
  %i.de = load i64, ptr %i.p, align 8
  %i.df = icmp ugt i64 %i.dd, %i.de
  br i1 %i.df, label %bb.o, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122

bb.o:                                             ; preds = %bb.n
  %i.dg = load ptr, ptr %i.q, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef %i.dd) #23, !inline_history !481
  %.pre.i.i124 = load i64, ptr %i.r, align 8      ; 2 uses
  %.pre2.i.i125 = add i64 %.pre.i.i124, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122: ; preds = %bb.o, %bb.n
  %.pre-phi.i.i123 = phi i64 [ %i.dd, %bb.n ], [ %.pre2.i.i125, %bb.o ]
  %i.dh = phi i64 [ %i.dc, %bb.n ], [ %.pre.i.i124, %bb.o ]
  %i.di = load ptr, ptr %9, align 8
  store i64 %.pre-phi.i.i123, ptr %i.r, align 8
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dh
  store i32 %i.da, ptr %i.dj, align 4
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit108, %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114, %.lr.ph.i116, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122
  %.074 = phi ptr [ null, %_ZN3fmt3v116detail6bigintlSEi.exit108 ], [ %9, %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114 ], [ %9, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122 ], [ %9, %.lr.ph.i116 ] ; 3 uses
  %i.dk = load i32, ptr %4, align 4
  call void @_ZN3fmt3v116detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %7, i32 noundef %i.dk)
  %i.dl = load i64, ptr %i.h, align 8             ; 5 uses
  %.not19.i127 = icmp eq i64 %i.dl, 0
  %extract.t725 = trunc i128 %i.z to i32
  br i1 %.not19.i127, label %_ZN3fmt3v116detail6bigintlSEi.exit138, label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %bb.p
  %i.dm = xor i32 %i.u, 31                        ; 3 uses
  %xtraiter977 = and i64 %i.dl, 1
  %i.dn = icmp eq i64 %i.dl, 1
  br i1 %i.dn, label %.epil.preheader976, label %.lr.ph.i128.new

.lr.ph.i128.new:                                  ; preds = %.lr.ph.i128
  %unroll_iter981 = and i64 %i.dl, -2
  br label %bb.q

._crit_edge.i132.unr-lcssa:                       ; preds = %bb.q
  %lcmp.mod978.not = icmp eq i64 %xtraiter977, 0
  br i1 %lcmp.mod978.not, label %._crit_edge.i132, label %.epil.preheader976

.epil.preheader976:                               ; preds = %._crit_edge.i132.unr-lcssa, %.lr.ph.i128
  %.01418.i129.epil.init = phi i64 [ 0, %.lr.ph.i128 ], [ %i.eh, %._crit_edge.i132.unr-lcssa ]
  %.017.i130.epil.init = phi i32 [ 0, %.lr.ph.i128 ], [ %i.ee, %._crit_edge.i132.unr-lcssa ]
  %lcmp.mod980 = trunc i64 %i.dl to i1
  call void @llvm.assume(i1 %lcmp.mod980)
  %i.do = load ptr, ptr %7, align 8
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.01418.i129.epil.init ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.dr = lshr i32 %i.dq, %i.dm
  %i.ds = shl i32 %i.dq, %i.v
  %i.dt = add i32 %i.ds, %.017.i130.epil.init
  store i32 %i.dt, ptr %i.dp, align 4
  br label %._crit_edge.i132

._crit_edge.i132:                                 ; preds = %._crit_edge.i132.unr-lcssa, %.epil.preheader976
  %.lcssa936 = phi i32 [ %i.ee, %._crit_edge.i132.unr-lcssa ], [ %i.dr, %.epil.preheader976 ] ; 2 uses
  %.not.i133 = icmp eq i32 %.lcssa936, 0
  %extract.t726 = trunc i128 %i.z to i32
  br i1 %.not.i133, label %_ZN3fmt3v116detail6bigintlSEi.exit138, label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph.i128.new
  %.01418.i129 = phi i64 [ 0, %.lr.ph.i128.new ], [ %i.eh, %bb.q ] ; 3 uses
  %.017.i130 = phi i32 [ 0, %.lr.ph.i128.new ], [ %i.ee, %bb.q ]
  %niter982 = phi i64 [ 0, %.lr.ph.i128.new ], [ %niter982.next.1, %bb.q ]
  %i.du = load ptr, ptr %7, align 8
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %.01418.i129 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.dx = lshr i32 %i.dw, %i.dm
  %i.dy = shl i32 %i.dw, %i.v
  %i.dz = add i32 %i.dy, %.017.i130
  store i32 %i.dz, ptr %i.dv, align 4
  %i.ea = load ptr, ptr %7, align 8
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.01418.i129
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4            ; 2 uses
  %i.ee = lshr i32 %i.ed, %i.dm                   ; 3 uses
  %i.ef = shl i32 %i.ed, %i.v
  %i.eg = add i32 %i.ef, %i.dx
  store i32 %i.eg, ptr %i.ec, align 4
  %i.eh = add nuw i64 %.01418.i129, 2             ; 2 uses
  %niter982.next.1 = add i64 %niter982, 2         ; 2 uses
  %niter982.ncmp.1 = icmp eq i64 %niter982.next.1, %unroll_iter981
  br i1 %niter982.ncmp.1, label %._crit_edge.i132.unr-lcssa, label %bb.q, !llvm.loop !480

bb.r:                                             ; preds = %._crit_edge.i132
  %i.ei = load i64, ptr %i.h, align 8             ; 2 uses
  %i.ej = add i64 %i.ei, 1                        ; 3 uses
  %i.ek = load i64, ptr %i.f, align 8
  %i.el = icmp ugt i64 %i.ej, %i.ek
  br i1 %i.el, label %bb.s, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i134

bb.s:                                             ; preds = %bb.r
  %i.em = load ptr, ptr %i.g, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.ej) #23, !inline_history !481
  %.pre.i.i136 = load i64, ptr %i.h, align 8      ; 2 uses
  %.pre2.i.i137 = add i64 %.pre.i.i136, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i134

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i134: ; preds = %bb.s, %bb.r
  %.pre-phi.i.i135 = phi i64 [ %i.ej, %bb.r ], [ %.pre2.i.i137, %bb.s ]
  %i.en = phi i64 [ %i.ei, %bb.r ], [ %.pre.i.i136, %bb.s ]
  %i.eo = load ptr, ptr %7, align 8
  store i64 %.pre-phi.i.i135, ptr %i.h, align 8
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.en
  store i32 %.lcssa936, ptr %i.ep, align 4
  %extract.t723 = trunc i128 %i.z to i32
  br label %_ZN3fmt3v116detail6bigintlSEi.exit138

bb.t:                                             ; preds = %bb.a
  %i.eq = load i32, ptr %4, align 4               ; 2 uses
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %bb.u, label %bb.ag

bb.u:                                             ; preds = %bb.t
  %i.es = sub nsw i32 0, %i.eq
  call void @_ZN3fmt3v116detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.es)
  %i.et = load i64, ptr %i.c, align 8             ; 7 uses
  %i.eu = load i64, ptr %i.k, align 8
  %i.ev = icmp ugt i64 %i.et, %i.eu
  br i1 %i.ev, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i: ; preds = %bb.u
  %i.ew = load ptr, ptr %i.l, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.et) #23, !inline_history !483
  %.pre.i.i.i = load i64, ptr %i.k, align 8
  %i.ex = call noundef i64 @llvm.umin.i64(i64 %i.et, i64 %.pre.i.i.i)
  store i64 %i.ex, ptr %i.m, align 8
  %i.ey = load ptr, ptr %6, align 8               ; 2 uses
  %.idx8.i = shl nuw nsw i64 %i.et, 2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.idx8.i
  br label %.lr.ph.i.preheader.i

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.u
  store i64 %i.et, ptr %i.m, align 8
  %i.fa = load ptr, ptr %6, align 8               ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.et, 2
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.et, 0
  br i1 %.not6.i.i, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i
  %i.fc = phi ptr [ %i.ez, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i ], [ %i.fb, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 2 uses
  %i.fd = phi ptr [ %i.ey, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i ], [ %i.fa, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 5 uses
  %10 = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %i.fd to i64
  %11 = load ptr, ptr %8, align 8                 ; 4 uses
  %12 = add i64 %10, -4
  %13 = sub i64 %12, %i.fe                        ; 2 uses
  %i.ff = lshr i64 %13, 2
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 44
  %i.fh = ptrtoaddr ptr %11 to i64
  %i.fi = ptrtoaddr ptr %i.fd to i64
  %i.fj = sub i64 %i.fi, %i.fh
  %diff.check = icmp ugt i64 %i.fj, -32
  %or.cond884 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond884, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.fg, 9223372036854775800     ; 3 uses
  %i.fk = shl i64 %n.vec, 2                       ; 2 uses
  %i.fl = getelementptr i8, ptr %11, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fd, i64 %i.fk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %11, i64 %i.fn ; 2 uses
  %next.gep861 = getelementptr i8, ptr %i.fd, i64 %i.fn ; 2 uses
  %i.fo = getelementptr i8, ptr %next.gep861, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep861, align 4
  %wide.load862 = load <4 x i32>, ptr %i.fo, align 4
  %i.fp = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load862, ptr %i.fp, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !484

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fg, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.08.i.i.ph = phi ptr [ %11, %.lr.ph.i.preheader.i ], [ %i.fl, %middle.block ]
  %.057.i.i.ph = phi ptr [ %i.fd, %.lr.ph.i.preheader.i ], [ %i.fm, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ft, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.fr, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %i.fs = load i32, ptr %.057.i.i, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.fs, ptr %.08.i.i, align 4
  %.not.i.i139 = icmp eq ptr %i.fr, %i.fc
  br i1 %.not.i.i139, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit, label %.lr.ph.i.i, !llvm.loop !485

_ZN3fmt3v116detail6bigint6assignERKS2_.exit:      ; preds = %.lr.ph.i.i, %middle.block, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.fu = load i32, ptr %i.e, align 8             ; 2 uses
  store i32 %i.fu, ptr %i.o, align 8
  br i1 %.not, label %_ZN3fmt3v116detail6bigintlSEi.exit163, label %bb.v

bb.v:                                             ; preds = %_ZN3fmt3v116detail6bigint6assignERKS2_.exit
  %i.fv = load i64, ptr %i.c, align 8             ; 7 uses
  %i.fw = load i64, ptr %i.p, align 8
  %i.fx = icmp ugt i64 %i.fv, %i.fw
  br i1 %i.fx, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148: ; preds = %bb.v
  %i.fy = load ptr, ptr %i.q, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef %i.fv) #23, !inline_history !483
  %.pre.i.i.i149 = load i64, ptr %i.p, align 8
  %i.fz = call noundef i64 @llvm.umin.i64(i64 %i.fv, i64 %.pre.i.i.i149)
  store i64 %i.fz, ptr %i.r, align 8
  %i.ga = load ptr, ptr %6, align 8               ; 2 uses
  %.idx8.i150 = shl nuw nsw i64 %i.fv, 2
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.idx8.i150
  br label %.lr.ph.i.preheader.i143

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140: ; preds = %bb.v
  store i64 %i.fv, ptr %i.r, align 8
  %i.gc = load ptr, ptr %6, align 8               ; 2 uses
  %.idx.i141 = shl nuw nsw i64 %i.fv, 2
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx.i141
  %.not6.i.i142 = icmp eq i64 %i.fv, 0
  br i1 %.not6.i.i142, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread, label %.lr.ph.i.preheader.i143

_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread: ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140
  store i32 %i.fu, ptr %i.t, align 8
  br label %_ZN3fmt3v116detail6bigintlSEi.exit163

.lr.ph.i.preheader.i143:                          ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148
  %i.ge = phi ptr [ %i.gb, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148 ], [ %i.gd, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140 ] ; 2 uses
  %i.gf = phi ptr [ %i.ga, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148 ], [ %i.gc, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140 ] ; 5 uses
  %14 = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.gf to i64
  %15 = load ptr, ptr %9, align 8                 ; 4 uses
  %16 = add i64 %14, -4
  %17 = sub i64 %16, %i.gg                        ; 2 uses
  %i.gh = lshr i64 %17, 2
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %min.iters.check867 = icmp ult i64 %17, 44
  %i.gj = ptrtoaddr ptr %15 to i64
  %i.gk = ptrtoaddr ptr %i.gf to i64
  %i.gl = sub i64 %i.gk, %i.gj
  %diff.check865 = icmp ugt i64 %i.gl, -32
  %or.cond887 = select i1 %min.iters.check867, i1 true, i1 %diff.check865
  br i1 %or.cond887, label %.lr.ph.i.i144.preheader, label %vector.ph868

vector.ph868:                                     ; preds = %.lr.ph.i.preheader.i143
  %n.vec870 = and i64 %i.gi, 9223372036854775800  ; 3 uses
  %i.gm = shl i64 %n.vec870, 2                    ; 2 uses
  %i.gn = getelementptr i8, ptr %15, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.gf, i64 %i.gm
  br label %vector.body871

vector.body871:                                   ; preds = %vector.body871, %vector.ph868
  %index872 = phi i64 [ 0, %vector.ph868 ], [ %index.next877, %vector.body871 ] ; 2 uses
  %i.gp = shl i64 %index872, 2                    ; 2 uses
  %next.gep873 = getelementptr i8, ptr %15, i64 %i.gp ; 2 uses
  %next.gep874 = getelementptr i8, ptr %i.gf, i64 %i.gp ; 2 uses
  %i.gq = getelementptr i8, ptr %next.gep874, i64 16
  %wide.load875 = load <4 x i32>, ptr %next.gep874, align 4
  %wide.load876 = load <4 x i32>, ptr %i.gq, align 4
  %i.gr = getelementptr i8, ptr %next.gep873, i64 16
  store <4 x i32> %wide.load875, ptr %next.gep873, align 4
  store <4 x i32> %wide.load876, ptr %i.gr, align 4
  %index.next877 = add nuw i64 %index872, 8       ; 2 uses
  %i.gs = icmp eq i64 %index.next877, %n.vec870
  br i1 %i.gs, label %middle.block878, label %vector.body871, !llvm.loop !486

middle.block878:                                  ; preds = %vector.body871
  %cmp.n879 = icmp eq i64 %i.gi, %n.vec870
  br i1 %cmp.n879, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151, label %.lr.ph.i.i144.preheader

.lr.ph.i.i144.preheader:                          ; preds = %.lr.ph.i.preheader.i143, %middle.block878
  %.08.i.i145.ph = phi ptr [ %15, %.lr.ph.i.preheader.i143 ], [ %i.gn, %middle.block878 ]
  %.057.i.i146.ph = phi ptr [ %i.gf, %.lr.ph.i.preheader.i143 ], [ %i.go, %middle.block878 ]
  br label %.lr.ph.i.i144

.lr.ph.i.i144:                                    ; preds = %.lr.ph.i.i144.preheader, %.lr.ph.i.i144
  %.08.i.i145 = phi ptr [ %i.gv, %.lr.ph.i.i144 ], [ %.08.i.i145.ph, %.lr.ph.i.i144.preheader ] ; 2 uses
  %.057.i.i146 = phi ptr [ %i.gt, %.lr.ph.i.i144 ], [ %.057.i.i146.ph, %.lr.ph.i.i144.preheader ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.057.i.i146, i64 4 ; 2 uses
  %i.gu = load i32, ptr %.057.i.i146, align 4
  %i.gv = getelementptr inbounds nuw i8, ptr %.08.i.i145, i64 4
  store i32 %i.gu, ptr %.08.i.i145, align 4
  %.not.i.i147 = icmp eq ptr %i.gt, %i.ge
  br i1 %.not.i.i147, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151, label %.lr.ph.i.i144, !llvm.loop !487

_ZN3fmt3v116detail6bigint6assignERKS2_.exit151:   ; preds = %.lr.ph.i.i144, %middle.block878
  %.pr = load i64, ptr %i.r, align 8              ; 5 uses
  %i.gw = load i32, ptr %i.e, align 8
  store i32 %i.gw, ptr %i.t, align 8
  %.not19.i152 = icmp eq i64 %.pr, 0
  br i1 %.not19.i152, label %_ZN3fmt3v116detail6bigintlSEi.exit163, label %.lr.ph.i153.preheader

.lr.ph.i153.preheader:                            ; preds = %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151
  %xtraiter955 = and i64 %.pr, 1
  %i.gx = icmp eq i64 %.pr, 1
  br i1 %i.gx, label %.lr.ph.i153.epil.preheader, label %.lr.ph.i153.preheader.new

.lr.ph.i153.preheader.new:                        ; preds = %.lr.ph.i153.preheader
  %unroll_iter960 = and i64 %.pr, -2
  br label %.lr.ph.i153

._crit_edge.i157.unr-lcssa:                       ; preds = %.lr.ph.i153
  %lcmp.mod956.not = icmp eq i64 %xtraiter955, 0
  br i1 %lcmp.mod956.not, label %._crit_edge.i157, label %.lr.ph.i153.epil.preheader

.lr.ph.i153.epil.preheader:                       ; preds = %._crit_edge.i157.unr-lcssa, %.lr.ph.i153.preheader
  %.01418.i154.epil.init = phi i64 [ 0, %.lr.ph.i153.preheader ], [ %i.hp, %._crit_edge.i157.unr-lcssa ]
  %.017.i155.epil.init = phi i32 [ 0, %.lr.ph.i153.preheader ], [ %i.hn, %._crit_edge.i157.unr-lcssa ]
  %lcmp.mod959 = trunc i64 %.pr to i1
  call void @llvm.assume(i1 %lcmp.mod959)
  %i.gy = load ptr, ptr %9, align 8
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.01418.i154.epil.init ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4            ; 3 uses
  %i.hb = lshr i32 %i.ha, 31
  %i.hc = shl i32 %i.ha, 1
  %i.hd = or disjoint i32 %i.hc, %.017.i155.epil.init
  store i32 %i.hd, ptr %i.gz, align 4
  br label %._crit_edge.i157

._crit_edge.i157:                                 ; preds = %._crit_edge.i157.unr-lcssa, %.lr.ph.i153.epil.preheader
  %.lcssa942 = phi i32 [ %i.hm, %._crit_edge.i157.unr-lcssa ], [ %i.ha, %.lr.ph.i153.epil.preheader ]
  %.lcssa941 = phi i32 [ %i.hn, %._crit_edge.i157.unr-lcssa ], [ %i.hb, %.lr.ph.i153.epil.preheader ]
  %.not.i158 = icmp sgt i32 %.lcssa942, -1
  br i1 %.not.i158, label %_ZN3fmt3v116detail6bigintlSEi.exit163, label %bb.w

.lr.ph.i153:                                      ; preds = %.lr.ph.i153, %.lr.ph.i153.preheader.new
  %.01418.i154 = phi i64 [ 0, %.lr.ph.i153.preheader.new ], [ %i.hp, %.lr.ph.i153 ] ; 3 uses
  %.017.i155 = phi i32 [ 0, %.lr.ph.i153.preheader.new ], [ %i.hn, %.lr.ph.i153 ]
  %niter961 = phi i64 [ 0, %.lr.ph.i153.preheader.new ], [ %niter961.next.1, %.lr.ph.i153 ]
  %i.he = load ptr, ptr %9, align 8
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.01418.i154 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4            ; 2 uses
  %i.hh = shl i32 %i.hg, 1
  %i.hi = or disjoint i32 %i.hh, %.017.i155
  store i32 %i.hi, ptr %i.hf, align 4
  %i.hj = load ptr, ptr %9, align 8
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %.01418.i154
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4            ; 3 uses
  %i.hn = lshr i32 %i.hm, 31                      ; 3 uses
  %i.ho = call i32 @llvm.fshl.i32(i32 %i.hm, i32 %i.hg, i32 1)
  store i32 %i.ho, ptr %i.hl, align 4
  %i.hp = add nuw i64 %.01418.i154, 2             ; 2 uses
  %niter961.next.1 = add i64 %niter961, 2         ; 2 uses
  %niter961.ncmp.1 = icmp eq i64 %niter961.next.1, %unroll_iter960
  br i1 %niter961.ncmp.1, label %._crit_edge.i157.unr-lcssa, label %.lr.ph.i153, !llvm.loop !480

bb.w:                                             ; preds = %._crit_edge.i157
  %i.hq = load i64, ptr %i.r, align 8             ; 2 uses
  %i.hr = add i64 %i.hq, 1                        ; 3 uses
  %i.hs = load i64, ptr %i.p, align 8
  %i.ht = icmp ugt i64 %i.hr, %i.hs
  br i1 %i.ht, label %bb.x, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159

bb.x:                                             ; preds = %bb.w
  %i.hu = load ptr, ptr %i.q, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef %i.hr) #23, !inline_history !481
  %.pre.i.i161 = load i64, ptr %i.r, align 8      ; 2 uses
  %.pre2.i.i162 = add i64 %.pre.i.i161, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159: ; preds = %bb.x, %bb.w
  %.pre-phi.i.i160 = phi i64 [ %i.hr, %bb.w ], [ %.pre2.i.i162, %bb.x ]
  %i.hv = phi i64 [ %i.hq, %bb.w ], [ %.pre.i.i161, %bb.x ]
  %i.hw = load ptr, ptr %9, align 8
  store i64 %.pre-phi.i.i160, ptr %i.r, align 8
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hv
  store i32 %.lcssa941, ptr %i.hx, align 4
  br label %_ZN3fmt3v116detail6bigintlSEi.exit163

_ZN3fmt3v116detail6bigintlSEi.exit163:            ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159, %._crit_edge.i157, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit
  %.1 = phi ptr [ null, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit ], [ %9, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread ], [ %9, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151 ], [ %9, %._crit_edge.i157 ], [ %9, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159 ] ; 3 uses
  %i.hy = load i128, ptr %0, align 16             ; 5 uses
  %i.hz = and i128 %i.hy, 18446744073709551615
  %i.ia = load i64, ptr %i.c, align 8             ; 2 uses
  %.not23.i.i = icmp eq i64 %i.ia, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v116detail6bigintlSEi.exit178, label %.lr.ph.i.i164

.lr.ph.i.i164:                                    ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit163
  %i.ib = lshr i128 %i.hy, 32
  %i.ic = and i128 %i.ib, 79228162514264337589248983040
  br label %bb.y

.preheader.i.i:                                   ; preds = %bb.y
  %.not20.i.i = icmp eq i128 %i.io, 0
  br i1 %.not20.i.i, label %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i164
  %.019.i.i = phi i128 [ 0, %.lr.ph.i.i164 ], [ %i.io, %bb.y ] ; 2 uses
  %.01718.i.i = phi i64 [ 0, %.lr.ph.i.i164 ], [ %i.iq, %bb.y ] ; 2 uses
  %i.id = load ptr, ptr %6, align 8
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %.01718.i.i ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4
  %i.ig = zext i32 %i.if to i128                  ; 2 uses
  %i.ih = mul nuw nsw i128 %i.hz, %i.ig
  %i.ii = and i128 %.019.i.i, 4294967295
  %i.ij = add nuw nsw i128 %i.ih, %i.ii           ; 2 uses
  %i.ik = mul nuw i128 %i.ic, %i.ig
  %i.il = lshr i128 %i.ij, 32
  %i.im = lshr i128 %.019.i.i, 32
  %i.in = add nuw i128 %i.ik, %i.im
  %i.io = add nuw i128 %i.in, %i.il               ; 3 uses
  %i.ip = trunc i128 %i.ij to i32
  store i32 %i.ip, ptr %i.ie, align 4
  %i.iq = add nuw i64 %.01718.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.iq, %i.ia
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.y, !llvm.loop !488

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i
  %.121.i.i = phi i128 [ %i.ja, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.io, %.preheader.i.i ] ; 2 uses
  %i.ir = trunc i128 %.121.i.i to i32
  %i.is = load i64, ptr %i.c, align 8             ; 2 uses
  %i.it = add i64 %i.is, 1                        ; 3 uses
  %i.iu = load i64, ptr %i.a, align 8
  %i.iv = icmp ugt i64 %i.it, %i.iu
  br i1 %i.iv, label %bb.z, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i

bb.z:                                             ; preds = %.lr.ph22.i.i
  %i.iw = load ptr, ptr %i.b, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.it) #23, !inline_history !489
  %.pre.i.i.i166 = load i64, ptr %i.c, align 8    ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i166, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %bb.z, %.lr.ph22.i.i
  %.pre-phi.i.i.i = phi i64 [ %i.it, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %bb.z ]
  %i.ix = phi i64 [ %i.is, %.lr.ph22.i.i ], [ %.pre.i.i.i166, %bb.z ]
  %i.iy = load ptr, ptr %6, align 8
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.ix
  store i32 %i.ir, ptr %i.iz, align 4
  %i.ja = lshr i128 %.121.i.i, 32                 ; 2 uses
  %.not.i.i165 = icmp eq i128 %i.ja, 0
  br i1 %.not.i.i165, label %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i, !llvm.loop !490

_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit:       ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i, %.preheader.i.i
  %.pr731 = load i64, ptr %i.c, align 8           ; 5 uses
  %.not19.i167 = icmp eq i64 %.pr731, 0
  br i1 %.not19.i167, label %_ZN3fmt3v116detail6bigintlSEi.exit178, label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit
  %i.jb = xor i32 %i.u, 31                        ; 3 uses
  %xtraiter963 = and i64 %.pr731, 1
  %i.jc = icmp eq i64 %.pr731, 1
  br i1 %i.jc, label %.epil.preheader962, label %.lr.ph.i168.new

.lr.ph.i168.new:                                  ; preds = %.lr.ph.i168
  %unroll_iter967 = and i64 %.pr731, -2
  br label %bb.aa

._crit_edge.i172.unr-lcssa:                       ; preds = %bb.aa
  %lcmp.mod964.not = icmp eq i64 %xtraiter963, 0
  br i1 %lcmp.mod964.not, label %._crit_edge.i172, label %.epil.preheader962

.epil.preheader962:                               ; preds = %._crit_edge.i172.unr-lcssa, %.lr.ph.i168
  %.01418.i169.epil.init = phi i64 [ 0, %.lr.ph.i168 ], [ %i.jw, %._crit_edge.i172.unr-lcssa ]
  %.017.i170.epil.init = phi i32 [ 0, %.lr.ph.i168 ], [ %i.jt, %._crit_edge.i172.unr-lcssa ]
  %lcmp.mod966 = trunc i64 %.pr731 to i1
  call void @llvm.assume(i1 %lcmp.mod966)
  %i.jd = load ptr, ptr %6, align 8
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %.01418.i169.epil.init ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4            ; 2 uses
  %i.jg = lshr i32 %i.jf, %i.jb
  %i.jh = shl i32 %i.jf, %i.v
  %i.ji = add i32 %i.jh, %.017.i170.epil.init
  store i32 %i.ji, ptr %i.je, align 4
  br label %._crit_edge.i172

._crit_edge.i172:                                 ; preds = %._crit_edge.i172.unr-lcssa, %.epil.preheader962
  %.lcssa939 = phi i32 [ %i.jt, %._crit_edge.i172.unr-lcssa ], [ %i.jg, %.epil.preheader962 ] ; 2 uses
  %.not.i173 = icmp eq i32 %.lcssa939, 0
  br i1 %.not.i173, label %_ZN3fmt3v116detail6bigintlSEi.exit178, label %bb.ab
end_hunk_2
