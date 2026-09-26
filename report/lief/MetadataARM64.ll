Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/MetadataARM64?download=true
inline.NumInlined: 3563
inline.NumDeleted: 1086
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN4LIEF2PE17CHPEMetadataARM645parseERNS0_6ParserERNS_12BinaryStreamEj:bb.a
  store i32 %.sroa.081.0.extract.trunc, ptr %i.en, align 4, !tbaa !91
  %.sroa.079.0.extract.trunc = trunc i64 %i.cu to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dy, i64 64 ; 2 uses
  store i32 %.sroa.079.0.extract.trunc, ptr %i.eo, align 8, !tbaa !92
  %.sroa.077.0.extract.trunc = trunc i64 %i.cx to i32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dy, i64 68
  store i32 %.sroa.077.0.extract.trunc, ptr %i.ep, align 4, !tbaa !93
  %.sroa.075.0.extract.trunc = trunc i64 %i.da to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dy, i64 72
  store i32 %.sroa.075.0.extract.trunc, ptr %i.eq, align 8, !tbaa !94
  %.sroa.073.0.extract.trunc = trunc i64 %i.dd to i32
  %i.er = getelementptr inbounds nuw i8, ptr %i.dy, i64 76
  store i32 %.sroa.073.0.extract.trunc, ptr %i.er, align 4, !tbaa !95
  %.sroa.071.0.extract.trunc = trunc i64 %i.dg to i32
  %i.es = getelementptr inbounds nuw i8, ptr %i.dy, i64 80
  store i32 %.sroa.071.0.extract.trunc, ptr %i.es, align 8, !tbaa !96
  %.sroa.069.0.extract.trunc = trunc i64 %i.dj to i32
  %i.et = getelementptr inbounds nuw i8, ptr %i.dy, i64 84
  store i32 %.sroa.069.0.extract.trunc, ptr %i.et, align 4, !tbaa !97
  %.sroa.067.0.extract.trunc = trunc i64 %i.dm to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dy, i64 88
  store i32 %.sroa.067.0.extract.trunc, ptr %i.eu, align 8, !tbaa !98
  %.sroa.065.0.extract.trunc = trunc i64 %i.dp to i32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dy, i64 92
  store i32 %.sroa.065.0.extract.trunc, ptr %i.ev, align 4, !tbaa !99
  %.sroa.063.0.extract.trunc = trunc i64 %i.ds to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dy, i64 96
  store i32 %.sroa.063.0.extract.trunc, ptr %i.ew, align 8, !tbaa !100
  %.sroa.062.0.extract.trunc = trunc i64 %i.dv to i32
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dy, i64 100
  store i32 %.sroa.062.0.extract.trunc, ptr %i.ex, align 4, !tbaa !101
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ey = call i64 @_ZN4LIEF2PE17CHPEMetadataARM6414parse_code_mapERNS0_6ParserERS1_(ptr noundef nonnull align 8 dereferenceable(232) %1, ptr noundef nonnull align 8 dereferenceable(176) %i.dy)
  %.not156 = icmp samesign ult i64 %i.ey, 4294967296
  br i1 %.not156, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ez = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.162) #24
  call void @_ZN4LIEF7logging6Logger5debugIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull @.str.22)
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %bb.as
  %i.fa = load i32, ptr %i.eo, align 8, !tbaa !92
  %.not26 = icmp eq i32 %i.fa, 0
  br i1 %.not26, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fb = call i64 @_ZN4LIEF2PE17CHPEMetadataARM6418parse_redirectionsERNS0_6ParserERS1_(ptr noundef nonnull align 8 dereferenceable(232) %1, ptr noundef nonnull align 8 dereferenceable(176) %i.dy)
  %.not158 = icmp samesign ult i64 %i.fb, 4294967296
  br i1 %.not158, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.162) #24
  call void @_ZN4LIEF7logging6Logger5debugIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef nonnull @.str.23)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.av
  %i.fd = load i32, ptr %i.en, align 4, !tbaa !91
  %.not27 = icmp eq i32 %i.fd, 0
  br i1 %.not27, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fe = call i64 @_ZN4LIEF2PE17CHPEMetadataARM6433parse_code_ranges_to_entry_pointsERNS0_6ParserERS1_(ptr noundef nonnull align 8 dereferenceable(232) %1, ptr noundef nonnull align 8 dereferenceable(176) %i.dy)
  %.not160 = icmp samesign ult i64 %i.fe, 4294967296
  br i1 %.not160, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ff = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.162) #24
  call void @_ZN4LIEF7logging6Logger5debugIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull @.str.24)
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit33.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit45.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit57.thread, %bb.p, %bb.t, %bb.x, %bb.ab, %bb.af, %bb.aj, %bb.an, %bb.ar, %bb.az, %bb.ba, %bb.ay, %bb.ap, %bb.al, %bb.ah, %bb.ad, %bb.z, %bb.v, %bb.r, %bb.n, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit51.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit39.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i64 @_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !48   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !49
  %i.d = load ptr, ptr %0, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call i64 %i.f(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.a, i64 noundef %i.c, i64 noundef 4, i64 noundef 0) #24, !inline_history !293
  %i.h = and i64 %i.g, 4294967296
  %.not.i = icmp eq i64 %i.h, 0
  store i64 %i.c, ptr %i.b, align 8, !tbaa !48
  br i1 %.not.i, label %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit.thread, label %bb.b

_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !58, !range !59, !noundef !60
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #24
  %.pre = load i64, ptr %i.b, align 8, !tbaa !48
  br label %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i64 [ %i.c, %bb.b ], [ %.pre, %bb.c ]
  %i.m = load i32, ptr %i.a, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.n = add i64 %i.l, 4
  store i64 %i.n, ptr %i.b, align 8, !tbaa !48
  %i.o = zext i32 %i.m to i64
  %i.p = or disjoint i64 %i.o, 4294967296
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit.thread, %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit
  %.sroa.0.sroa.2.0.extract.trunc6 = phi i64 [ 1, %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit.thread ], [ %i.p, %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEv.exit ]
  ret i64 %.sroa.0.sroa.2.0.extract.trunc6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7logging6Logger5debugIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 1, ptr nonnull %1, i64 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i64 1, 4294967298) i64 @_ZN4LIEF2PE17CHPEMetadataARM6414parse_code_mapERNS0_6ParserERS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !80
  %i.g = zext i32 %i.f to i64
  %i.h = tail call noundef i64 @_ZNK4LIEF2PE6Binary13rva_to_offsetEm(ptr noundef nonnull align 8 dereferenceable(736) %i.d, i64 noundef %i.g) #24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !81
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !105  ; 10 uses
  %i.n = and i64 %i.h, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 11 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !48
  store i64 %i.n, ptr %i.o, align 8, !tbaa !48
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(24) %i.m) #24
  %i.u = load i64, ptr %i.o, align 8, !tbaa !48
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i64 %i.x(ptr noundef nonnull align 8 dereferenceable(24) %i.m) #24
  %.sroa.speculated51 = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.u)
  %i.z = sub i64 %i.t, %.sroa.speculated51
  %i.aa = lshr i64 %i.z, 3
  %.sroa.speculated45 = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.k) ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 5 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated45, i64 15) ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 6 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !106
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !107
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = icmp ult i64 %i.ai, %.sroa.speculated
  br i1 %i.aj, label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !108
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.ag
  %i.ao = shl nuw nsw i64 %.sroa.speculated, 3
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #25 ; 4 uses
  %i.aq = load ptr, ptr %i.ab, align 8, !tbaa !107 ; 5 uses
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !108 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %i.ap, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %i.aq, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.as = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !303, !noalias !302
  store i64 %i.as, ptr %.012.i.i.i.i, align 4, !alias.scope !302, !noalias !303
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.at, %i.ar
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !297

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aq, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.av = load ptr, ptr %i.ac, align 8, !tbaa !106
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.ay) #26
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.b, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.ap, ptr %i.ab, align 8, !tbaa !107
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store ptr %i.az, ptr %i.ak, align 8, !tbaa !108
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.sroa.speculated
  store ptr %i.ba, ptr %i.ac, align 8, !tbaa !106
  br label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE7reserveEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %.not76.not = icmp eq i64 %.sroa.speculated45, 0
  br i1 %.not76.not, label %.critedge14, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE7reserveEm.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %.01277 = phi i64 [ 0, %.lr.ph ], [ %i.cw, %bb.l ]
  %i.bd = load i64, ptr %i.o, align 8, !tbaa !48  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4, !tbaa !49
  %i.be = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call i64 %i.bg(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull %i.b, i64 noundef %i.bd, i64 noundef 4, i64 noundef 0) #24, !inline_history !0
  %i.bi = and i64 %i.bh, 4294967296
  %.not.i.i = icmp eq i64 %i.bi, 0
  store i64 %i.bd, ptr %i.o, align 8, !tbaa !48
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.d

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.critedge14

bb.d:                                             ; preds = %bb.c
  %i.bj = load i8, ptr %i.bb, align 8, !tbaa !58, !range !59, !noundef !60
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.e, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.b) #24
  %.pre.i = load i64, ptr %i.o, align 8, !tbaa !48
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.d, %bb.e
  %i.bl = phi i64 [ %i.bd, %bb.d ], [ %.pre.i, %bb.e ]
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !49  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.bn = add i64 %i.bl, 4                        ; 4 uses
  store i64 %i.bn, ptr %i.o, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !49
  %i.bo = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call i64 %i.bq(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull %i.a, i64 noundef %i.bn, i64 noundef 4, i64 noundef 0) #24, !inline_history !0
  %i.bs = and i64 %i.br, 4294967296
  %.not.i.i17 = icmp eq i64 %i.bs, 0
  store i64 %i.bn, ptr %i.o, align 8, !tbaa !48
  br i1 %.not.i.i17, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread, label %bb.f

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.critedge14

bb.f:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %i.bt = load i8, ptr %i.bb, align 8, !tbaa !58, !range !59, !noundef !60
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.g, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22

bb.g:                                             ; preds = %bb.f
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #24
  %.pre.i20 = load i64, ptr %i.o, align 8, !tbaa !48
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22: ; preds = %bb.f, %bb.g
  %i.bv = phi i64 [ %i.bn, %bb.f ], [ %.pre.i20, %bb.g ]
  %i.bw = load i32, ptr %i.a, align 4, !tbaa !49  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bx = add i64 %i.bv, 4
  store i64 %i.bx, ptr %i.o, align 8, !tbaa !48
  %i.by = load ptr, ptr %i.bc, align 8, !tbaa !108 ; 5 uses
  %i.bz = load ptr, ptr %i.ac, align 8, !tbaa !106
  %.not.i.i23 = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i.i23, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22
  %.sroa.5.0.insert.ext = zext i32 %i.bw to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.025.0.insert.ext = zext i32 %i.bm to i64
  %.sroa.025.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.025.0.insert.ext
  store i64 %.sroa.025.0.insert.insert, ptr %i.by, align 4
  %2 = load ptr, ptr %i.bc, align 8, !tbaa !108
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ca, ptr %i.bc, align 8, !tbaa !108
  br label %bb.l

bb.i:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22
  %i.cb = load ptr, ptr %i.ab, align 8, !tbaa !107 ; 5 uses
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 3 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775800
  br i1 %i.cf, label %bb.j, label %_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #27
  unreachable

_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.cg = ashr exact i64 %i.ce, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = call i64 @llvm.umin.i64(i64 %i.ch, i64 1152921504606846975)
  %i.ck = select i1 %i.ci, i64 1152921504606846975, i64 %i.cj ; 3 uses
  %.not.i.i.i.i24 = icmp ne i64 %i.ck, 0
  call void @llvm.assume(i1 %.not.i.i.i.i24)
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #25 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ce
  %.sroa.5.0.insert.ext31 = zext i32 %i.bw to i64
  %.sroa.5.0.insert.shift32 = shl nuw i64 %.sroa.5.0.insert.ext31, 32
  %.sroa.025.0.insert.ext27 = zext i32 %i.bm to i64
  %.sroa.025.0.insert.insert29 = or disjoint i64 %.sroa.5.0.insert.shift32, %.sroa.025.0.insert.ext27
  store i64 %.sroa.025.0.insert.insert29, ptr %i.cn, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cb, %i.by
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i ], [ %i.cm, %_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i ], [ %i.cb, %_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.co = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !305, !noalias !304
  store i64 %i.co, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !304, !noalias !305
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cp, %i.by
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !297

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cm, %_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cq, %.lr.ph.i.i.i.i.i.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.cs = load ptr, ptr %i.ac, align 8, !tbaa !106
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cu) #26
  br label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.cm, ptr %i.ab, align 8, !tbaa !107
  store ptr %i.cr, ptr %i.bc, align 8, !tbaa !108
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ck
  store ptr %i.cv, ptr %i.ac, align 8, !tbaa !106
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.cw = add nuw nsw i64 %.01277, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cw, %.sroa.speculated45
  br i1 %exitcond.not, label %.critedge14, label %bb.c, !llvm.loop !301

.critedge14:                                      ; preds = %bb.l, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE7reserveEm.exit, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread
  %.sroa.3.3 = phi i64 [ 1, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread ], [ 1, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread ], [ 4294967297, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EE7reserveEm.exit ], [ 4294967297, %bb.l ]
  store i64 %i.p, ptr %i.o, align 8, !tbaa !48
  ret i64 %.sroa.3.3
}

; Function Attrs: mustprogress nounwind uwtable
define range(i64 1, 4294967298) i64 @_ZN4LIEF2PE17CHPEMetadataARM6418parse_redirectionsERNS0_6ParserERS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !83
  %i.g = zext i32 %i.f to i64
  %i.h = tail call noundef i64 @_ZNK4LIEF2PE6Binary13rva_to_offsetEm(ptr noundef nonnull align 8 dereferenceable(736) %i.d, i64 noundef %i.g) #24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !92
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !105  ; 10 uses
  %i.n = and i64 %i.h, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 11 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !48
  store i64 %i.n, ptr %i.o, align 8, !tbaa !48
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(24) %i.m) #24
  %i.u = load i64, ptr %i.o, align 8, !tbaa !48
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i64 %i.x(ptr noundef nonnull align 8 dereferenceable(24) %i.m) #24
  %.sroa.speculated51 = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.u)
  %i.z = sub i64 %i.t, %.sroa.speculated51
  %i.aa = lshr i64 %i.z, 3
  %.sroa.speculated45 = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.k) ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated45, i64 15) ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 6 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !110
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !111
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = icmp ult i64 %i.ai, %.sroa.speculated
  br i1 %i.aj, label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !112
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.ag
  %i.ao = shl nuw nsw i64 %.sroa.speculated, 3
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #25 ; 4 uses
  %i.aq = load ptr, ptr %i.ab, align 8, !tbaa !111 ; 5 uses
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !112 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %i.ap, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %i.aq, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.as = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !315, !noalias !314
  store i64 %i.as, ptr %.012.i.i.i.i, align 4, !alias.scope !314, !noalias !315
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.at, %i.ar
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !309

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aq, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.av = load ptr, ptr %i.ac, align 8, !tbaa !110
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.ay) #26
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.b, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.ap, ptr %i.ab, align 8, !tbaa !111
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store ptr %i.az, ptr %i.ak, align 8, !tbaa !112
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.sroa.speculated
  store ptr %i.ba, ptr %i.ac, align 8, !tbaa !110
  br label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE7reserveEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %.not76.not = icmp eq i64 %.sroa.speculated45, 0
  br i1 %.not76.not, label %.critedge14, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE7reserveEm.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %.01277 = phi i64 [ 0, %.lr.ph ], [ %i.cw, %bb.l ]
  %i.bd = load i64, ptr %i.o, align 8, !tbaa !48  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4, !tbaa !49
  %i.be = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call i64 %i.bg(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull %i.b, i64 noundef %i.bd, i64 noundef 4, i64 noundef 0) #24, !inline_history !0
  %i.bi = and i64 %i.bh, 4294967296
  %.not.i.i = icmp eq i64 %i.bi, 0
  store i64 %i.bd, ptr %i.o, align 8, !tbaa !48
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.d

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.critedge14

bb.d:                                             ; preds = %bb.c
  %i.bj = load i8, ptr %i.bb, align 8, !tbaa !58, !range !59, !noundef !60
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.e, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.b) #24
  %.pre.i = load i64, ptr %i.o, align 8, !tbaa !48
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.d, %bb.e
  %i.bl = phi i64 [ %i.bd, %bb.d ], [ %.pre.i, %bb.e ]
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !49  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.bn = add i64 %i.bl, 4                        ; 4 uses
  store i64 %i.bn, ptr %i.o, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !49
  %i.bo = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call i64 %i.bq(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull %i.a, i64 noundef %i.bn, i64 noundef 4, i64 noundef 0) #24, !inline_history !0
  %i.bs = and i64 %i.br, 4294967296
  %.not.i.i17 = icmp eq i64 %i.bs, 0
  store i64 %i.bn, ptr %i.o, align 8, !tbaa !48
  br i1 %.not.i.i17, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread, label %bb.f

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.critedge14

bb.f:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %i.bt = load i8, ptr %i.bb, align 8, !tbaa !58, !range !59, !noundef !60
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.g, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22

bb.g:                                             ; preds = %bb.f
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #24
  %.pre.i20 = load i64, ptr %i.o, align 8, !tbaa !48
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22: ; preds = %bb.f, %bb.g
  %i.bv = phi i64 [ %i.bn, %bb.f ], [ %.pre.i20, %bb.g ]
  %i.bw = load i32, ptr %i.a, align 4, !tbaa !49  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bx = add i64 %i.bv, 4
  store i64 %i.bx, ptr %i.o, align 8, !tbaa !48
  %i.by = load ptr, ptr %i.bc, align 8, !tbaa !112 ; 5 uses
  %i.bz = load ptr, ptr %i.ac, align 8, !tbaa !110
  %.not.i.i23 = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i.i23, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22
  %.sroa.5.0.insert.ext = zext i32 %i.bw to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.025.0.insert.ext = zext i32 %i.bm to i64
  %.sroa.025.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.025.0.insert.ext
  store i64 %.sroa.025.0.insert.insert, ptr %i.by, align 4
  %2 = load ptr, ptr %i.bc, align 8, !tbaa !112
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ca, ptr %i.bc, align 8, !tbaa !112
  br label %bb.l

bb.i:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22
  %i.cb = load ptr, ptr %i.ab, align 8, !tbaa !111 ; 5 uses
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 3 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775800
  br i1 %i.cf, label %bb.j, label %_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #27
  unreachable

_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.cg = ashr exact i64 %i.ce, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = call i64 @llvm.umin.i64(i64 %i.ch, i64 1152921504606846975)
  %i.ck = select i1 %i.ci, i64 1152921504606846975, i64 %i.cj ; 3 uses
  %.not.i.i.i.i24 = icmp ne i64 %i.ck, 0
  call void @llvm.assume(i1 %.not.i.i.i.i24)
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #25 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ce
  %.sroa.5.0.insert.ext31 = zext i32 %i.bw to i64
  %.sroa.5.0.insert.shift32 = shl nuw i64 %.sroa.5.0.insert.ext31, 32
  %.sroa.025.0.insert.ext27 = zext i32 %i.bm to i64
  %.sroa.025.0.insert.insert29 = or disjoint i64 %.sroa.5.0.insert.shift32, %.sroa.025.0.insert.ext27
  store i64 %.sroa.025.0.insert.insert29, ptr %i.cn, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cb, %i.by
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i ], [ %i.cm, %_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i ], [ %i.cb, %_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.co = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !317, !noalias !316
  store i64 %i.co, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !316, !noalias !317
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cp, %i.by
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !309

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cm, %_ZNKSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cq, %.lr.ph.i.i.i.i.i.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.cs = load ptr, ptr %i.ac, align 8, !tbaa !110
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cu) #26
  br label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.cm, ptr %i.ab, align 8, !tbaa !111
  store ptr %i.cr, ptr %i.bc, align 8, !tbaa !112
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ck
  store ptr %i.cv, ptr %i.ac, align 8, !tbaa !110
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.cw = add nuw nsw i64 %.01277, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cw, %.sroa.speculated45
  br i1 %exitcond.not, label %.critedge14, label %bb.c, !llvm.loop !313

.critedge14:                                      ; preds = %bb.l, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE7reserveEm.exit, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread
  %.sroa.3.3 = phi i64 [ 1, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread ], [ 1, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit22.thread ], [ 4294967297, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EE7reserveEm.exit ], [ 4294967297, %bb.l ]
  store i64 %i.p, ptr %i.o, align 8, !tbaa !48
  ret i64 %.sroa.3.3
}

; Function Attrs: mustprogress nounwind uwtable
define range(i64 1, 4294967298) i64 @_ZN4LIEF2PE17CHPEMetadataARM6433parse_code_ranges_to_entry_pointsERNS0_6ParserERS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !82
  %i.h = zext i32 %i.g to i64
  %i.i = tail call noundef i64 @_ZNK4LIEF2PE6Binary13rva_to_offsetEm(ptr noundef nonnull align 8 dereferenceable(736) %i.e, i64 noundef %i.h) #24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.k = load i32, ptr %i.j, align 4, !tbaa !91
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105  ; 12 uses
  %i.o = and i64 %i.i, 4294967295
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 14 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !48
  store i64 %i.o, ptr %i.p, align 8, !tbaa !48
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(24) %i.n) #24
  %i.v = load i64, ptr %i.p, align 8, !tbaa !48
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(24) %i.n) #24
  %.sroa.speculated60 = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.v)
  %i.aa = sub i64 %i.u, %.sroa.speculated60
  %i.ab = udiv i64 %i.aa, 12
  %.sroa.speculated54 = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.l) ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 5 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated54, i64 15) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 6 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !113
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !114
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 12
  %i.ak = icmp ult i64 %i.aj, %.sroa.speculated
  br i1 %i.ak, label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !115
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.ah
  %i.ap = mul nuw nsw i64 %.sroa.speculated, 12
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #25 ; 4 uses
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !114 ; 5 uses
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !115 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ar, %i.as
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %i.aq, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %i.ar, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !tbaa.struct !116, !alias.scope !326
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 12
  %.not.i.i.i.i = icmp eq ptr %i.at, %i.as
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !321

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ar, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !113
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.ay) #26
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.b, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.aq, ptr %i.ac, align 8, !tbaa !114
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store ptr %i.az, ptr %i.al, align 8, !tbaa !115
  %i.ba = getelementptr inbounds nuw [12 x i8], ptr %i.aq, i64 %.sroa.speculated
  store ptr %i.ba, ptr %i.ad, align 8, !tbaa !113
  br label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EE7reserveEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %.not90.not = icmp eq i64 %.sroa.speculated54, 0
  br i1 %.not90.not, label %.critedge14, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EE7reserveEm.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.n
  %.01291 = phi i64 [ 0, %.lr.ph ], [ %i.dl, %bb.n ]
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !48  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 0, ptr %i.c, align 4, !tbaa !49
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call i64 %i.bg(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull %i.c, i64 noundef %i.bd, i64 noundef 4, i64 noundef 0) #24, !inline_history !0
  %i.bi = and i64 %i.bh, 4294967296
  %.not.i.i = icmp eq i64 %i.bi, 0
  store i64 %i.bd, ptr %i.p, align 8, !tbaa !48
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.d

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.bj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.162) #24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bk, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 1, ptr nonnull @.str.25, i64 60)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.critedge14

bb.d:                                             ; preds = %bb.c
  %i.bl = load i8, ptr %i.bb, align 8, !tbaa !58, !range !59, !noundef !60
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.e, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.c) #24
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !48
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.d, %bb.e
  %i.bn = phi i64 [ %i.bd, %bb.d ], [ %.pre.i, %bb.e ]
  %i.bo = load i32, ptr %i.c, align 4, !tbaa !49  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.bp = add i64 %i.bn, 4                        ; 4 uses
  store i64 %i.bp, ptr %i.p, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4, !tbaa !49
  %i.bq = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call i64 %i.bs(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull %i.b, i64 noundef %i.bp, i64 noundef 4, i64 noundef 0) #24, !inline_history !0
  %i.bu = and i64 %i.bt, 4294967296
  %.not.i.i19 = icmp eq i64 %i.bu, 0
  store i64 %i.bp, ptr %i.p, align 8, !tbaa !48
  br i1 %.not.i.i19, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit24.thread, label %bb.f

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit24.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.bv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.162) #24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bw, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 1, ptr nonnull @.str.26, i64 58)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.critedge14

bb.f:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %i.bx = load i8, ptr %i.bb, align 8, !tbaa !58, !range !59, !noundef !60
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.g, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit24
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
.thread:                                          ; preds = %bb.as, %bb.q, %bb.u, %bb.t, %bb.av
  br i1 %i.d, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %.thread
  %i.lj = load i32, ptr %2, align 4, !tbaa !150
  %i.lk = and i32 %i.lj, 8192
  %.not227 = icmp eq i32 %i.lk, 0
  br i1 %.not227, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.ll = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !139 ; 2 uses
  %.not132237 = icmp eq i64 %i.lm, 0
  br i1 %.not132237, label %.critedge3.thread, label %.lr.ph239

.lr.ph239:                                        ; preds = %bb.ax
  %.promoted = load i32, ptr %i.a, align 4
  %i.ln = load ptr, ptr %4, align 8, !tbaa !127
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph239, %bb.az
  %.0238 = phi i64 [ %i.lm, %.lr.ph239 ], [ %i.lp, %bb.az ] ; 5 uses
  %i.lo = phi i32 [ %.promoted, %.lr.ph239 ], [ %i.lt, %bb.az ]
  %i.lp = add i64 %.0238, -1                      ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lp
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !124
  %i.ls = icmp eq i8 %i.lr, 48
  br i1 %i.ls, label %bb.az, label %.critedge3

bb.az:                                            ; preds = %bb.ay
  %i.lt = add nsw i32 %i.lo, 1                    ; 2 uses
  store i32 %i.lt, ptr %i.a, align 4, !tbaa !49
  %.not132 = icmp eq i64 %i.lp, 0
  br i1 %.not132, label %.critedge3.thread, label %bb.ay, !llvm.loop !925

.critedge3.thread:                                ; preds = %bb.az, %bb.ax
  %i.lu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !128
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

.critedge3:                                       ; preds = %bb.ay
  %i.lw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !128 ; 2 uses
  %i.ly = icmp ugt i64 %.0238, %i.lx
  br i1 %i.ly, label %bb.ba, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

bb.ba:                                            ; preds = %.critedge3
  %i.lz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !126
  call void %i.ma(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.0238) #24, !inline_history !22
  %.pre.i153 = load i64, ptr %i.lw, align 8, !tbaa !128
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154: ; preds = %.critedge3.thread, %.critedge3, %bb.ba
  %.0.lcssa278 = phi i64 [ %.0238, %.critedge3 ], [ %.0238, %bb.ba ], [ 0, %.critedge3.thread ]
  %i.mb = phi i64 [ %i.lx, %.critedge3 ], [ %.pre.i153, %bb.ba ], [ %i.lv, %.critedge3.thread ]
  %i.mc = call noundef i64 @llvm.umin.i64(i64 %.0.lcssa278, i64 %i.mb)
  store i64 %i.mc, ptr %i.ll, align 8, !tbaa !139
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154, %bb.aw, %.thread
  %i.md = load i32, ptr %i.a, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %.0105 = phi i32 [ %i.ab, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit ], [ 0, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %i.md, %bb.bb ]
  ret i32 %.0105
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #2 comdat {
bb.a:
  %6 = alloca %"class.std::locale", align 8       ; 6 uses
  %7 = alloca %class.anon.727, align 4            ; 11 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !150    ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #24
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #24
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i: ; preds = %bb.d, %bb.c
  %i.c = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIcE2idE) #24
  %i.d = load ptr, ptr %6, align 8, !tbaa !163
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !168
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !170  ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.not.i.i.i, label %bb.e, label %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit

bb.e:                                             ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit: ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef signext i8 %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #24, !inline_history !29
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.pre = load i32, ptr %2, align 4, !tbaa !150
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit
  %i.m = phi i32 [ %.pre, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.n = phi i8 [ %i.l, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ 46, %bb.a ] ; 3 uses
  %i.o = load i32, ptr %1, align 4, !tbaa !216    ; 2 uses
  %i.p = or i32 %i.o, 1
  %i.q = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.p, i1 true)
  %i.r = xor i32 %i.q, 31
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !130
  %i.v = zext i32 %i.o to i64
  %i.w = add i64 %i.u, %i.v
  %i.x = lshr i64 %i.w, 32                        ; 3 uses
  %i.y = trunc nuw i64 %i.x to i32                ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !208
  %i.ab = add nsw i32 %i.aa, %i.y                 ; 3 uses
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.ad = trunc i32 %i.m to i8
  %i.ae = and i8 %i.ad, 7
  switch i8 %i.ae, label %bb.g [
    i8 2, label %bb.h
    i8 1, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !152 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  %. = select i1 %i.ah, i32 %i.ag, i32 %4
  %i.ai = icmp sgt i32 %i.ab, -4
  %i.aj = icmp sle i32 %i.ab, %.
  %i.ak = and i1 %i.ai, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.al = ptrtoint ptr %5 to i64
  %i.am = call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %i.y, i8 noundef signext %i.n, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i64 %i.al)
  br label %bb.t

bb.i:                                             ; preds = %bb.f, %bb.g
  %.not51 = icmp ne i32 %3, 0
  %i.an = zext i1 %.not51 to i64
  %i.ao = add nuw nsw i64 %i.x, %i.an
  %sext = shl i64 %i.ao, 32
  %i.ap = ashr exact i64 %sext, 32                ; 2 uses
  %i.aq = and i32 %i.m, 8192
  %.not53 = icmp eq i32 %i.aq, 0
  br i1 %.not53, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !152
  %i.at = sub nsw i32 %i.as, %i.y
  %i.au = call noundef i32 @llvm.smax.i32(i32 %i.at, i32 0) ; 2 uses
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = add nsw i64 %i.ap, %i.av
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ax = icmp eq i64 %i.x, 1
  %spec.select = select i1 %i.ax, i8 0, i8 %i.n
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.049 = phi i32 [ %i.au, %bb.j ], [ 0, %bb.k ]
  %.048 = phi i64 [ %i.aw, %bb.j ], [ %i.ap, %bb.k ]
  %.0 = phi i8 [ %i.n, %bb.j ], [ %spec.select, %bb.k ] ; 2 uses
  %.not52 = icmp ne i8 %.0, 0
  %i.ay = zext i1 %.not52 to i64
  %i.az = call i32 @llvm.abs.i32(i32 %i.ac, i1 true) ; 2 uses
  %i.ba = icmp samesign ult i32 %i.az, 100
  %i.bb = icmp samesign ugt i32 %i.az, 999
  %i.bc = select i1 %i.bb, i64 6, i64 5
  %.0.i = select i1 %i.ba, i64 4, i64 %i.bc
  %i.bd = add nsw i64 %.048, %.0.i
  %i.be = add nsw i64 %i.bd, %i.ay                ; 3 uses
  %i.bf = and i32 %i.m, 4096
  %.not54 = icmp eq i32 %i.bf, 0
  %i.bg = select i1 %.not54, i8 101, i8 69
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i32 %3, ptr %7, align 4, !tbaa !259
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bi = load i64, ptr %1, align 4
  store i64 %i.bi, ptr %i.bh, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.y, ptr %i.bj, align 4, !tbaa !260
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 %.0, ptr %i.bk, align 4, !tbaa !261
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %.049, ptr %i.bl, align 4, !tbaa !262
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 %i.bg, ptr %i.bm, align 4, !tbaa !263
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 %i.ac, ptr %i.bn, align 4, !tbaa !264
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !175 ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.br = zext nneg i32 %i.bp to i64
  %i.bs = call i64 @llvm.usub.sat.i64(i64 %i.br, i64 %i.be) ; 4 uses
  %i.bt = lshr i32 %i.m, 3
  %i.bu = and i32 %i.bt, 7
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @.str.72, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !124
  %i.by = sext i8 %i.bx to i64
  %i.bz = and i64 %i.by, 4294967295
  %i.ca = lshr i64 %i.bs, %i.bz                   ; 4 uses
  %i.cb = sub nsw i64 %i.bs, %i.ca
  %i.cc = lshr i32 %i.m, 15
  %i.cd = and i32 %i.cc, 7
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = mul nuw nsw i64 %i.bs, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !139
  %i.ci = add nsw i64 %i.cf, %i.be
  %i.cj = add i64 %i.ci, %i.ch                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !128
  %i.cm = icmp ugt i64 %i.cj, %i.cl
  br i1 %i.cm, label %bb.n, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !126
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cj) #24, !inline_history !928
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i: ; preds = %bb.n, %bb.m
  %.not.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %i.cp = call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.ca, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %.sroa.09.0.i.i = phi ptr [ %i.cp, %bb.o ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i ]
  %i.cq = call ptr @_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr %.sroa.09.0.i.i) ; 2 uses
  %.not31.i.i = icmp eq i64 %i.bs, %i.ca
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.cq, i64 noundef %i.cb, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit

bb.r:                                             ; preds = %bb.l
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !139
  %i.cu = add i64 %i.ct, %i.be                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !128
  %i.cx = icmp ugt i64 %i.cu, %i.cw
  br i1 %i.cx, label %bb.s, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !126
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cu) #24, !inline_history !11
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.r, %bb.s
  %i.da = call ptr @_ZZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEENKUlS6_E_clES6_(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr nonnull %0)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit

_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit: ; preds = %bb.q, %bb.p, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.047.0 = phi ptr [ %i.da, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ], [ %i.cr, %bb.q ], [ %i.cq, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.t

bb.t:                                             ; preds = %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit, %bb.h
  %.sroa.047.1 = phi ptr [ %i.am, %bb.h ], [ %.sroa.047.0, %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit ]
  ret ptr %.sroa.047.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #2 comdat {
bb.a:
  %7 = alloca %"struct.fmt::v12::detail::thousands_sep_result", align 8 ; 7 uses
  %8 = alloca %"struct.fmt::v12::detail::thousands_sep_result", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.fmt::v12::detail::digit_grouping", align 8 ; 12 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.fmt::v12::detail::digit_grouping", align 8 ; 12 uses
  %11 = alloca %class.anon.729, align 8           ; 10 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %12 = alloca %class.anon.730, align 8           ; 9 uses
  %i.h = inttoptr i64 %6 to ptr                   ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !49
  store i8 %3, ptr %i.b, align 1, !tbaa !124
  store i32 %5, ptr %i.c, align 4, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !208  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 6 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !49
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !152
  %i.t = sub nsw i32 %i.s, %i.k                   ; 5 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !150    ; 3 uses
  %i.v = and i32 %i.u, 8192
  %.not88 = icmp eq i32 %i.v, 0
  br i1 %.not88, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i64 %i.q, 1                      ; 2 uses
  %i.x = icmp slt i32 %i.t, 1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = and i32 %i.u, 7
  %.not41 = icmp eq i32 %i.y, 2
  %spec.select = select i1 %.not41, i32 %i.t, i32 0
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi i32 [ %i.t, %bb.e ], [ %i.t, %bb.b ], [ %spec.select, %bb.d ] ; 2 uses
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.q, %bb.b ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.ab = and i32 %i.u, 16384
  %.not89 = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.ac, ptr %9, align 8, !tbaa !122
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !123
  store i8 0, ptr %i.ac, align 8, !tbaa !124
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 4 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !122
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !123
  store i8 0, ptr %i.af, align 8, !tbaa !124
  br i1 %.not89, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit, label %bb.f

bb.f:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZN3fmt3v126detail13thousands_sepIcEENS1_20thousands_sep_resultIT_EENS0_10locale_refE(ptr dead_on_unwind nonnull writable sret(%"struct.fmt::v12::detail::thousands_sep_result") align 8 %8, ptr %i.h)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(32) %8) #24
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !245 ; 2 uses
  %.not.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i64, ptr %i.ag, align 8, !tbaa !123
  %i.ak = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef 0, i64 noundef %i.aj, i64 noundef 1, i8 noundef signext %i.ai) #24 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = load ptr, ptr %8, align 8, !tbaa !140   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN3fmt3v126detail14digit_groupingIcEC2ENS0_10locale_refEb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !124
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #26
  br label %_ZN3fmt3v126detail14digit_groupingIcEC2ENS0_10locale_refEb.exit

_ZN3fmt3v126detail14digit_groupingIcEC2ENS0_10locale_refEb.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.pr = load i64, ptr %i.ag, align 8, !tbaa !123
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail15write_codepointILm8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SH_cj:bb.a
  %i.bj = add i64 %i.bi, 1                        ; 3 uses
  %i.bk = load i64, ptr %i.ae, align 8, !tbaa !128
  %i.bl = icmp ugt i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.m, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3

bb.m:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %i.af, align 8, !tbaa !126
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bj) #24, !inline_history !35
  %.pre.i.i.i.i.3 = load i64, ptr %i.ad, align 8, !tbaa !139 ; 2 uses
  %.pre2.i.i.i.i.3 = add i64 %.pre.i.i.i.i.3, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3: ; preds = %bb.l, %bb.m
  %.pre-phi.i.i.i.i.3 = phi i64 [ %i.bj, %bb.l ], [ %.pre2.i.i.i.i.3, %bb.m ]
  %i.bn = phi i64 [ %i.bi, %bb.l ], [ %.pre.i.i.i.i.3, %bb.m ]
  %i.bo = load ptr, ptr %0, align 8, !tbaa !127
  store i64 %.pre-phi.i.i.i.i.3, ptr %i.ad, align 8, !tbaa !139
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store i8 %i.bh, ptr %i.bp, align 1, !tbaa !124
  %.07.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bq = load i8, ptr %.07.i.ptr.4, align 4, !tbaa !124
  %.not.i.i11.4 = icmp eq i64 %.sroa.4.1, 4
  br i1 %.not.i.i11.4, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.n

bb.n:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3
  %i.br = load i64, ptr %i.ad, align 8, !tbaa !139 ; 2 uses
  %i.bs = add i64 %i.br, 1                        ; 3 uses
  %i.bt = load i64, ptr %i.ae, align 8, !tbaa !128
  %i.bu = icmp ugt i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.o, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %i.af, align 8, !tbaa !126
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bs) #24, !inline_history !35
  %.pre.i.i.i.i.4 = load i64, ptr %i.ad, align 8, !tbaa !139 ; 2 uses
  %.pre2.i.i.i.i.4 = add i64 %.pre.i.i.i.i.4, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4: ; preds = %bb.n, %bb.o
  %.pre-phi.i.i.i.i.4 = phi i64 [ %i.bs, %bb.n ], [ %.pre2.i.i.i.i.4, %bb.o ]
  %i.bw = phi i64 [ %i.br, %bb.n ], [ %.pre.i.i.i.i.4, %bb.o ]
  %i.bx = load ptr, ptr %0, align 8, !tbaa !127
  store i64 %.pre-phi.i.i.i.i.4, ptr %i.ad, align 8, !tbaa !139
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store i8 %i.bq, ptr %i.by, align 1, !tbaa !124
  %.07.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.bz = load i8, ptr %.07.i.ptr.5, align 1, !tbaa !124
  %.not.i.i11.5 = icmp eq i64 %.sroa.4.1, 5
  br i1 %.not.i.i11.5, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.p

bb.p:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4
  %i.ca = load i64, ptr %i.ad, align 8, !tbaa !139 ; 2 uses
  %i.cb = add i64 %i.ca, 1                        ; 3 uses
  %i.cc = load i64, ptr %i.ae, align 8, !tbaa !128
  %i.cd = icmp ugt i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.q, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5

bb.q:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr %i.af, align 8, !tbaa !126
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cb) #24, !inline_history !35
  %.pre.i.i.i.i.5 = load i64, ptr %i.ad, align 8, !tbaa !139 ; 2 uses
  %.pre2.i.i.i.i.5 = add i64 %.pre.i.i.i.i.5, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5: ; preds = %bb.p, %bb.q
  %.pre-phi.i.i.i.i.5 = phi i64 [ %i.cb, %bb.p ], [ %.pre2.i.i.i.i.5, %bb.q ]
  %i.cf = phi i64 [ %i.ca, %bb.p ], [ %.pre.i.i.i.i.5, %bb.q ]
  %i.cg = load ptr, ptr %0, align 8, !tbaa !127
  store i64 %.pre-phi.i.i.i.i.5, ptr %i.ad, align 8, !tbaa !139
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 %i.bz, ptr %i.ch, align 1, !tbaa !124
  %.07.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ci = load i8, ptr %.07.i.ptr.6, align 2, !tbaa !124
  %.not.i.i11.6 = icmp eq i64 %.sroa.4.1, 6
  br i1 %.not.i.i11.6, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.r

bb.r:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5
  %i.cj = load i64, ptr %i.ad, align 8, !tbaa !139 ; 2 uses
  %i.ck = add i64 %i.cj, 1                        ; 3 uses
  %i.cl = load i64, ptr %i.ae, align 8, !tbaa !128
  %i.cm = icmp ugt i64 %i.ck, %i.cl
  br i1 %i.cm, label %bb.s, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6

bb.s:                                             ; preds = %bb.r
  %i.cn = load ptr, ptr %i.af, align 8, !tbaa !126
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ck) #24, !inline_history !35
  %.pre.i.i.i.i.6 = load i64, ptr %i.ad, align 8, !tbaa !139 ; 2 uses
  %.pre2.i.i.i.i.6 = add i64 %.pre.i.i.i.i.6, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6: ; preds = %bb.r, %bb.s
  %.pre-phi.i.i.i.i.6 = phi i64 [ %i.ck, %bb.r ], [ %.pre2.i.i.i.i.6, %bb.s ]
  %i.co = phi i64 [ %i.cj, %bb.r ], [ %.pre.i.i.i.i.6, %bb.s ]
  %i.cp = load ptr, ptr %0, align 8, !tbaa !127
  store i64 %.pre-phi.i.i.i.i.6, ptr %i.ad, align 8, !tbaa !139
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co
  store i8 %i.ci, ptr %i.cq, align 1, !tbaa !124
  %.07.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.cr = load i8, ptr %.07.i.ptr.7, align 1, !tbaa !124
  %.not.i.i11.7 = icmp eq i64 %.sroa.4.1, 7
  br i1 %.not.i.i11.7, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.t

bb.t:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6
  %i.cs = load i64, ptr %i.ad, align 8, !tbaa !139 ; 2 uses
  %i.ct = add i64 %i.cs, 1                        ; 3 uses
  %i.cu = load i64, ptr %i.ae, align 8, !tbaa !128
  %i.cv = icmp ugt i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.u, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7

bb.u:                                             ; preds = %bb.t
  %i.cw = load ptr, ptr %i.af, align 8, !tbaa !126
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ct) #24, !inline_history !35
  %.pre.i.i.i.i.7 = load i64, ptr %i.ad, align 8, !tbaa !139 ; 2 uses
  %.pre2.i.i.i.i.7 = add i64 %.pre.i.i.i.i.7, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7:    ; preds = %bb.u, %bb.t
  %.pre-phi.i.i.i.i.7 = phi i64 [ %i.ct, %bb.t ], [ %.pre2.i.i.i.i.7, %bb.u ]
  %i.cx = phi i64 [ %i.cs, %bb.t ], [ %.pre.i.i.i.i.7, %bb.u ]
  %i.cy = load ptr, ptr %0, align 8, !tbaa !127
  store i64 %.pre-phi.i.i.i.i.7, ptr %i.ad, align 8, !tbaa !139
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 %i.cr, ptr %i.cz, align 1, !tbaa !124
  %i.da = add i64 %.sroa.4.1, -8
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7: ; preds = %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6
  %.sroa.3.1.i.7 = phi i64 [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6 ], [ %i.da, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i ], [ 0, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.3.1.i.7, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF2PE17CHPEMetadataARM64C2ERKS1_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4LIEF2PE12CHPEMetadataE, i64 16), ptr %0, align 8, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  store i64 %i.c, ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4LIEF2PE17CHPEMetadataARM64E, i64 16), ptr %0, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %i.e, i64 88, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !108  ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !107  ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2EmRKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.c, label %_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tEE8allocateEmPKv.exit.i.i.i.i, !prof !1022

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.p = phi ptr [ %i.o, %_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.p, ptr %i.f, align 8, !tbaa !107
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !108
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.r, ptr %i.s, align 8, !tbaa !106
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !141  ; 2 uses
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !141  ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2EmRKS4_.exit.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2EmRKS4_.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.t, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2EmRKS4_.exit.i ] ; 2 uses
  %i.v = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i64 %i.v, ptr %.09.i.i.i.i.i, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1019

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2EmRKS4_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2EmRKS4_.exit.i ], [ %i.x, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.q, align 8, !tbaa !108
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !112 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !111 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %.not.i.i.i.i6 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i.i.i6, label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2EmRKS4_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2ERKS5_.exit
  %i.ag = icmp ugt i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.e, label %_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tEE8allocateEmPKv.exit.i.i.i.i, !prof !1022

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #25
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2ERKS5_.exit
  %i.ai = phi ptr [ %i.ah, %_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tEE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6413range_entry_tESaIS3_EEC2ERKS5_.exit ] ; 5 uses
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !111
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !112
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !110
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !142 ; 2 uses
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !142 ; 2 uses
  %.not7.i.i.i.i.i7 = icmp eq ptr %i.am, %i.an
  br i1 %.not7.i.i.i.i.i7, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i8

.lr.ph.i.i.i.i.i8:                                ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2EmRKS4_.exit.i, %.lr.ph.i.i.i.i.i8
  %.09.i.i.i.i.i9 = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i8 ], [ %i.ai, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2EmRKS4_.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i10 = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i8 ], [ %i.am, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2EmRKS4_.exit.i ] ; 2 uses
  %i.ao = load i64, ptr %.sroa.04.08.i.i.i.i.i10, align 4
  store i64 %i.ao, ptr %.09.i.i.i.i.i9, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i10, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i9, i64 8 ; 2 uses
  %.not.i.i.i.i.i11 = icmp eq ptr %i.ap, %i.an
  br i1 %.not.i.i.i.i.i11, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i8, !llvm.loop !1020

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i8, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2EmRKS4_.exit.i
  %.0.lcssa.i.i.i.i.i12 = phi ptr [ %i.ai, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2EmRKS4_.exit.i ], [ %i.aq, %.lr.ph.i.i.i.i.i8 ]
  store ptr %.0.lcssa.i.i.i.i.i12, ptr %i.aj, align 8, !tbaa !112
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !115 ; 2 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !114 ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %.not.i.i.i.i13 = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i.i.i13, label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2EmRKS4_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2ERKS5_.exit
  %i.az = sdiv exact i64 %i.ay, 12
  %i.ba = icmp ugt i64 %i.az, 768614336404564650
  br i1 %i.ba, label %bb.g, label %_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tEE8allocateEmPKv.exit.i.i.i.i, !prof !1022

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #25
  br label %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2ERKS5_.exit
  %i.bc = phi ptr [ %i.bb, %_ZNSt15__new_allocatorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tEE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6419redirection_entry_tESaIS3_EEC2ERKS5_.exit ] ; 5 uses
  store ptr %i.bc, ptr %i.ar, align 8, !tbaa !114
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !115
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ay
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !113
  %i.bg = load ptr, ptr %i.as, align 8, !tbaa !143 ; 2 uses
  %i.bh = load ptr, ptr %i.at, align 8, !tbaa !143 ; 2 uses
  %.not7.i.i.i.i.i14 = icmp eq ptr %i.bg, %i.bh
  br i1 %.not7.i.i.i.i.i14, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i15

.lr.ph.i.i.i.i.i15:                               ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2EmRKS4_.exit.i, %.lr.ph.i.i.i.i.i15
  %.09.i.i.i.i.i16 = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i15 ], [ %i.bc, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2EmRKS4_.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i17 = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i15 ], [ %i.bg, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2EmRKS4_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i16, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i.i.i17, i64 12, i1 false), !tbaa.struct !116
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i17, i64 12 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i16, i64 12 ; 2 uses
  %.not.i.i.i.i.i18 = icmp eq ptr %i.bi, %i.bh
  br i1 %.not.i.i.i.i.i18, label %_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i15, !llvm.loop !1021

_ZNSt6vectorIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i15, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2EmRKS4_.exit.i
  %.0.lcssa.i.i.i.i.i19 = phi ptr [ %i.bc, %_ZNSt12_Vector_baseIN4LIEF2PE17CHPEMetadataARM6424code_range_entry_point_tESaIS3_EEC2EmRKS4_.exit.i ], [ %i.bj, %.lr.ph.i.i.i.i.i15 ]
  store ptr %.0.lcssa.i.i.i.i.i19, ptr %i.bd, align 8, !tbaa !115
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4LIEF2PE12CHPEMetadata5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.272") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4LIEF2PE12CHPEMetadataE, i64 16), ptr %i.a, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  store i64 %i.d, ptr %i.b, align 8
  store ptr %i.a, ptr %0, align 8, !tbaa !1023
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4LIEF2PE12CHPEMetadata9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 23, ptr %i.a, align 8, !tbaa !130
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !140
  %i.d = load i64, ptr %i.a, align 8, !tbaa !130  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.c, ptr noundef nonnull align 1 dereferenceable(23) @.str.163, i64 23, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.d, ptr %i.e, align 8, !tbaa !123
  %i.f = load ptr, ptr %3, align 8, !tbaa !140
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !63   ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  %i.j = icmp ult i32 %i.i, 10
  br i1 %i.j, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %bb.f
  %.030.i.i = phi i32 [ %i.r, %bb.f ], [ 1, %._crit_edge.i.i ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.q, %bb.f ], [ %i.i, %._crit_edge.i.i ] ; 5 uses
  %i.k = icmp ult i32 %.02329.i.i, 100
  br i1 %i.k, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i.i
  %i.l = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.m = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.f:                                             ; preds = %bb.d
  %i.q = udiv i32 %.02329.i.i, 10000
  %i.r = add i32 %.030.i.i, 4                     ; 2 uses
  %i.s = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.s, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !1026

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.f, %bb.e, %bb.c, %bb.a, %._crit_edge.i.i
  %.022.i.i = phi i32 [ %i.p, %bb.e ], [ %i.l, %bb.a ], [ %i.n, %bb.c ], [ 1, %._crit_edge.i.i ], [ %i.r, %bb.f ]
  %i.t = zext i32 %.022.i.i to i64
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !122, !alias.scope !1032
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.t, i8 noundef signext 0) #24
  %i.v = load ptr, ptr %4, align 8, !tbaa !140, !alias.scope !1032 ; 4 uses
  %i.w = icmp ugt i32 %i.i, 99
  br i1 %i.w, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i1

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !123, !alias.scope !1032
  %i.z = trunc i64 %i.y to i32
  %i.aa = add i32 %i.z, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.ad, %.lr.ph.i2.i ], [ %i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ao, %.lr.ph.i2.i ], [ %i.aa, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ab = urem i32 %.020.i.i, 100
  %i.ac = shl nuw nsw i32 %i.ab, 1
  %i.ad = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.ae = zext nneg i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !124, !noalias !1032
  %i.ai = zext i32 %.01819.i.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ai
  store i8 %i.ah, ptr %i.aj, align 1, !tbaa !124
  %i.ak = load i8, ptr %i.af, align 2, !tbaa !124, !noalias !1032
  %i.al = add i32 %.01819.i.i, -1
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.am
  store i8 %i.ak, ptr %i.an, align 1, !tbaa !124
  %i.ao = add i32 %.01819.i.i, -2
  %i.ap = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.ap, label %.lr.ph.i2.i, label %._crit_edge.i.i1, !llvm.loop !1027

._crit_edge.i.i1:                                 ; preds = %.lr.ph.i2.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %.0.lcssa.i.i = phi i32 [ %i.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ %i.ad, %.lr.ph.i2.i ] ; 3 uses
  %i.aq = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i1
  %i.ar = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !124, !noalias !1032
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !124
  %i.ax = load i8, ptr %i.at, align 2, !tbaa !124, !noalias !1032
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.h:                                             ; preds = %._crit_edge.i.i1
  %i.ay = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.az = or disjoint i8 %i.ay, 48
  br label %_ZNSt7__cxx119to_stringEj.exit

_ZNSt7__cxx119to_stringEj.exit:                   ; preds = %bb.g, %bb.h
  %storemerge.i.i = phi i8 [ %i.az, %bb.h ], [ %i.ax, %bb.g ]
  store i8 %storemerge.i.i, ptr %i.v, align 1, !tbaa !124
end_hunk_2
