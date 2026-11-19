Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/COFFDumper?download=true
inline.NumInlined: 6522
inline.NumDeleted: 2471
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN12_GLOBAL__N_110COFFDumper19printSectionHeadersEv:bb.a
  store i64 %i.dk, ptr %9, align 8
  store ptr %i.dl, ptr %i.w, align 8
  %.not.i.i.i.i67.not167 = icmp eq i64 %i.dk, %i.dr
  br i1 %.not.i.i.i.i67.not167, label %_ZN4llvm9ListScopeD2Ev.exit69, label %.lr.ph

_ZN4llvm9ListScopeD2Ev.exit69:                    ; preds = %.lr.ph, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.ds = load ptr, ptr %i.db, align 8, !tbaa !73
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 280
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(44) %i.db) #24, !inline_history !1
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  call fastcc void @_ZN12_GLOBAL__N_110COFFDumper15printRelocationERKN4llvm6object10SectionRefERKNS2_13RelocationRefEm(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef 0)
  %i.dv = load ptr, ptr %i.w, align 8, !tbaa !240 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !73
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 296
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(48) %i.dv, ptr noundef nonnull align 8 dereferenceable(16) %9) #24, !inline_history !17
  %lhsv.i.i.i.i65 = load i64, ptr %9, align 8
  %.not.i.i.i.i67.not = icmp eq i64 %lhsv.i.i.i.i65, %i.dr
  br i1 %.not.i.i.i.i67.not, label %_ZN4llvm9ListScopeD2Ev.exit69, label %.lr.ph

bb.d:                                             ; preds = %_ZN4llvm9ListScopeD2Ev.exit69, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit
  %i.dz = load i8, ptr @_ZN4opts14SectionSymbolsE, align 1, !tbaa !143, !range !144, !noundef !145
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !217, !nonnull !145, !align !161 ; 4 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !73
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 272
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(44) %i.eb, ptr nonnull @.str.100, i64 7) #24, !inline_history !0
  %i.ef = load ptr, ptr %i.f, align 8, !tbaa !136 ; 4 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !73, !noalias !484
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !484
  %i.ej = call { i64, ptr } %i.ei(ptr noundef nonnull align 8 dereferenceable(48) %i.ef) #24, !noalias !484, !inline_history !18 ; 2 uses
  %i.ek = extractvalue { i64, ptr } %i.ej, 0      ; 3 uses
  %i.el = extractvalue { i64, ptr } %i.ej, 1
  %i.em = load ptr, ptr %i.ef, align 8, !tbaa !73, !noalias !484
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !484
  %i.ep = call { i64, ptr } %i.eo(ptr noundef nonnull align 8 dereferenceable(48) %i.ef) #24, !noalias !484, !inline_history !18
  %i.eq = extractvalue { i64, ptr } %i.ep, 0      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store i64 %i.ek, ptr %10, align 8
  store ptr %i.el, ptr %i.x, align 8
  %.not.i.i.i.i84.not169 = icmp eq i64 %i.ek, %i.eq
  br i1 %.not.i.i.i.i84.not169, label %_ZN4llvm9ListScopeD2Ev.exit86, label %.lr.ph171

_ZN4llvm9ListScopeD2Ev.exit86:                    ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.er = load ptr, ptr %i.eb, align 8, !tbaa !73
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 280
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(44) %i.eb) #24, !inline_history !1
  br label %bb.h

.lr.ph171:                                        ; preds = %bb.e, %bb.g
  %lhsv.i.i.i.i82170 = phi i64 [ %lhsv.i.i.i.i82, %bb.g ], [ %i.ek, %bb.e ]
  %.sroa.25.0.copyload = load ptr, ptr %i.x, align 8
  %i.eu = call noundef zeroext i1 @_ZNK4llvm6object10SectionRef14containsSymbolENS0_9SymbolRefE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 %lhsv.i.i.i.i82170, ptr %.sroa.25.0.copyload) #24
  br i1 %i.eu, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph171
  call fastcc void @_ZN12_GLOBAL__N_110COFFDumper11printSymbolERKN4llvm6object9SymbolRefE(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(16) %10)
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph171, %bb.f
  %i.ev = load ptr, ptr %i.x, align 8, !tbaa !243 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !73
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(48) %i.ev, ptr noundef nonnull align 8 dereferenceable(16) %10) #24, !inline_history !19
  %lhsv.i.i.i.i82 = load i64, ptr %10, align 8    ; 2 uses
  %.not.i.i.i.i84.not = icmp eq i64 %lhsv.i.i.i.i82, %i.eq
  br i1 %.not.i.i.i.i84.not, label %_ZN4llvm9ListScopeD2Ev.exit86, label %.lr.ph171

bb.h:                                             ; preds = %_ZN4llvm9ListScopeD2Ev.exit86, %bb.d
  %i.ez = load i8, ptr @_ZN4opts11SectionDataE, align 1, !tbaa !143, !range !144, !noundef !145
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.i, label %_ZN4llvm9DictScopeD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %.0.copyload.i.i.i87 = load i32, ptr %i.cy, align 1
  %i.fb = and i32 %.0.copyload.i.i.i87, 128
  %.not = icmp eq i32 %i.fb, 0
  br i1 %.not, label %_ZNK4llvm6object10SectionRef11getContentsEv.exit, label %_ZN4llvm9DictScopeD2Ev.exit

_ZNK4llvm6object10SectionRef11getContentsEv.exit: ; preds = %bb.i
  %i.fc = load ptr, ptr %i.f, align 8, !tbaa !136
  %i.fd = call { ptr, i64 } @_ZNK4llvm6object6Binary11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fc) #24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !485
  %i.fe = load ptr, ptr %i.t, align 8, !tbaa !237, !noalias !485 ; 2 uses
  %.sroa.0.0.copyload.i88 = load i64, ptr %6, align 8, !tbaa !182, !noalias !485
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !73, !noalias !485
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 176
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !485
  call void %i.fh(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.151") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.fe, i64 %.sroa.0.0.copyload.i88) #24, !noalias !485, !inline_history !20
  %i.fi = load i8, ptr %i.y, align 8, !noalias !485
  %i.fj = trunc i8 %i.fi to i1
  %i.fk = load i64, ptr %3, align 8
  %i.fl = load i64, ptr %i.z, align 8
  %.sink.i = inttoptr i64 %i.fk to ptr            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !485
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  br i1 %i.fj, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i95, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit99

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i95: ; preds = %_ZNK4llvm6object10SectionRef11getContentsEv.exit
  %i.fm = extractvalue { ptr, i64 } %i.fd, 1
  %i.fn = extractvalue { ptr, i64 } %i.fd, 0
  store ptr %.sink.i, ptr %2, align 8, !tbaa !155, !alias.scope !486
  call void @_ZN4llvm11reportErrorENS_5ErrorENS_9StringRefE(ptr nofree noundef nonnull align 8 dereferenceable(8) %2, ptr %i.fn, i64 %i.fm) #25
  unreachable

_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit99:     ; preds = %_ZNK4llvm6object10SectionRef11getContentsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.fo = load ptr, ptr %i.a, align 8, !tbaa !217, !nonnull !145, !align !161 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %.sink.i, ptr %1, align 8, !tbaa !228
  store i64 %i.fl, ptr %.sroa.4.0..sroa_idx.i100, align 8, !tbaa !216
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !73
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 304
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(44) %i.fo, ptr nonnull @.str.101, i64 11, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef.94") align 8 %1, i1 noundef zeroext true, i32 noundef 0) #24, !inline_history !21
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %_ZN4llvm9DictScopeD2Ev.exit

_ZN4llvm9DictScopeD2Ev.exit:                      ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit99, %bb.i, %bb.h
  %i.fs = load ptr, ptr %i.as, align 8, !tbaa !73
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 256
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(44) %i.as) #24, !inline_history !11
  %i.fv = load ptr, ptr %i.t, align 8, !tbaa !237 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !73
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 136
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(48) %i.fv, ptr noundef nonnull align 8 dereferenceable(16) %6) #24, !inline_history !22
  %i.fz = load ptr, ptr %i.t, align 8, !tbaa !237
  %i.ga = icmp ne ptr %i.fz, %i.s
  %lhsv.i.i.i.i = load i64, ptr %6, align 8
  %.not.i.i.i.i = icmp ne i64 %lhsv.i.i.i.i, %i.r
  %.not2.i = select i1 %i.ga, i1 true, i1 %.not.i.i.i.i
  br i1 %.not2.i, label %bb.b, label %_ZN4llvm9ListScopeD2Ev.exit
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_110COFFDumper16printRelocationsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %2 = alloca %"class.llvm::object::content_iterator", align 8 ; 9 uses
  %3 = alloca %"class.llvm::Expected", align 8    ; 6 uses
  %4 = alloca %"class.llvm::object::content_iterator.91", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217, !nonnull !145, !align !161 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(44) %i.b, ptr nonnull @.str.99, i64 11) #24, !inline_history !0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !136  ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73, !noalias !496
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  %i.j = load ptr, ptr %i.i, align 8, !noalias !496
  %i.k = tail call { i64, ptr } %i.j(ptr noundef nonnull align 8 dereferenceable(48) %i.g) #24, !noalias !496, !inline_history !12 ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0        ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !73, !noalias !496
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 360
  %i.p = load ptr, ptr %i.o, align 8, !noalias !496
  %i.q = tail call { i64, ptr } %i.p(ptr noundef nonnull align 8 dereferenceable(48) %i.g) #24, !noalias !496, !inline_history !12 ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0        ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.q, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store i64 %i.l, ptr %2, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store ptr %i.m, ptr %i.t, align 8
  %i.u = icmp ne ptr %i.m, %i.s
  %.not.i.i.i.i62 = icmp ne i64 %i.l, %i.r
  %.not2.i63 = select i1 %i.u, i1 true, i1 %.not.i.i.i.i62
  br i1 %.not2.i63, label %.lr.ph66, label %_ZN4llvm9ListScopeD2Ev.exit

.lr.ph66:                                         ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.b

_ZN4llvm9ListScopeD2Ev.exit:                      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit46, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 280
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #24, !inline_history !1
  ret void

bb.b:                                             ; preds = %.lr.ph66, %_ZN4llvm11raw_ostreamlsEPKc.exit46
  %indvars.iv = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next, %_ZN4llvm11raw_ostreamlsEPKc.exit46 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !136
  %i.ab = call { ptr, i64 } @_ZNK4llvm6object6Binary11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aa) #24 ; 2 uses
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !237, !noalias !497 ; 2 uses
  %.sroa.0.0.copyload.i21 = load i64, ptr %2, align 8, !tbaa !182, !noalias !497
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !73, !noalias !497
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !497
  call void %i.af(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 %.sroa.0.0.copyload.i21) #24, !inline_history !13
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ag = load i8, ptr %i.v, align 8
  %i.ah = trunc i8 %i.ag to i1
  br i1 %i.ah, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %bb.b
  %i.ai = extractvalue { ptr, i64 } %i.ab, 1
  %i.aj = extractvalue { ptr, i64 } %i.ab, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.ak = load i64, ptr %3, align 8, !tbaa !238, !noalias !498
  %i.al = inttoptr i64 %i.ak to ptr
  store ptr null, ptr %3, align 8, !tbaa !238, !noalias !498
  store ptr %i.al, ptr %1, align 8, !tbaa !155, !alias.scope !498
  call void @_ZN4llvm11reportErrorENS_5ErrorENS_9StringRefE(ptr nofree noundef nonnull align 8 dereferenceable(8) %1, ptr %i.aj, i64 %i.ai) #25
  unreachable

_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit:       ; preds = %bb.b
  %.sroa.03.0.copyload.i = load ptr, ptr %3, align 8, !tbaa !228 ; 2 uses
  %.sroa.24.0.copyload.i = load i64, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !216 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !237, !noalias !499 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !182, !noalias !499
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !73, !noalias !499
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 272
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !499
  %i.aq = call { i64, ptr } %i.ap(ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 %.sroa.0.0.copyload.i.i) #24, !noalias !499, !inline_history !15 ; 2 uses
  %i.ar = extractvalue { i64, ptr } %i.aq, 0      ; 2 uses
  %i.as = extractvalue { i64, ptr } %i.aq, 1
  %i.at = load ptr, ptr %i.t, align 8, !tbaa !237, !noalias !499 ; 2 uses
  %.sroa.0.0.copyload.i3.i = load i64, ptr %2, align 8, !tbaa !182, !noalias !499
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !73, !noalias !499
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 280
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !499
  %i.ax = call { i64, ptr } %i.aw(ptr noundef nonnull align 8 dereferenceable(48) %i.at, i64 %.sroa.0.0.copyload.i3.i) #24, !noalias !499, !inline_history !16
  %i.ay = extractvalue { i64, ptr } %i.ax, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i64 %i.ar, ptr %4, align 8
  store ptr %i.as, ptr %i.w, align 8
  %.not.i.i.i.i36.not59 = icmp eq i64 %i.ar, %i.ay
  br i1 %.not.i.i.i.i36.not59, label %_ZN4llvm11raw_ostreamlsEPKc.exit46.critedge, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit
  %.not.i40 = icmp eq i64 %.sroa.24.0.copyload.i, 0
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !217, !nonnull !145, !align !161 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !73
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 288
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call noundef nonnull align 8 dereferenceable(48) ptr %i.bc(ptr noundef nonnull align 8 dereferenceable(44) %i.az) #24 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !225
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !165 ; 2 uses
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = icmp ult i64 %i.bk, 9
  br i1 %i.bl, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.bh, ptr noundef nonnull align 1 dereferenceable(9) @.str.146, i64 9, i1 false)
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !165
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 9
  store ptr %i.bn, ptr %i.bg, align 8, !tbaa !165
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.peel

bb.e:                                             ; preds = %bb.c
  %i.bo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull @.str.146, i64 noundef 9) #24
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.peel

_ZN4llvm11raw_ostreamlsEPKc.exit.peel:            ; preds = %bb.e, %bb.d
  %.0.i.i.peel = phi ptr [ %i.bo, %bb.e ], [ %i.bd, %bb.d ]
  %i.bp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.peel, i64 noundef %indvars.iv.next) #24 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !225
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !165 ; 2 uses
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = icmp ult i64 %i.bw, 2
  br i1 %i.bx, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.peel
  store i16 8233, ptr %i.bt, align 1
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !165
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2 ; 2 uses
  store ptr %i.bz, ptr %i.bs, align 8, !tbaa !165
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit39.peel

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.peel
  %i.ca = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bp, ptr noundef nonnull @.str.147, i64 noundef 2) #24 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !165
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit39.peel

_ZN4llvm11raw_ostreamlsEPKc.exit39.peel:          ; preds = %bb.g, %bb.f
  %i.cb = phi ptr [ %.pre, %bb.g ], [ %i.bz, %bb.f ] ; 3 uses
  %.0.i.i38.peel = phi ptr [ %i.ca, %bb.g ], [ %i.bp, %bb.f ] ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i38.peel, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !225
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i38.peel, i64 32 ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.cb to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = icmp ugt i64 %.sroa.24.0.copyload.i, %i.ch
  br i1 %i.ci, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit39.peel
  br i1 %.not.i40, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr align 1 %.sroa.03.0.copyload.i, i64 %.sroa.24.0.copyload.i, i1 false)
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !165
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.24.0.copyload.i ; 2 uses
  store ptr %i.ck, ptr %i.ce, align 8, !tbaa !165
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.peel

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit39.peel
  %i.cl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i38.peel, ptr noundef %.sroa.03.0.copyload.i, i64 noundef %.sroa.24.0.copyload.i) #24 ; 2 uses
  %.phi.trans.insert70 = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %.pre71 = load ptr, ptr %.phi.trans.insert70, align 8, !tbaa !165
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.peel

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.peel: ; preds = %bb.j, %bb.i, %bb.h
  %i.cm = phi ptr [ %.pre71, %bb.j ], [ %i.ck, %bb.i ], [ %i.cb, %bb.h ] ; 2 uses
  %.0.i.peel = phi ptr [ %i.cl, %bb.j ], [ %.0.i.i38.peel, %bb.i ], [ %.0.i.i38.peel, %bb.h ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.peel, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !225
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = icmp ult i64 %i.cr, 3
  br i1 %i.cs, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.peel
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i.peel, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cm, ptr noundef nonnull align 1 dereferenceable(3) @.str.148, i64 3, i1 false)
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !165
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 3
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !165
  br label %bb.m

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.peel
  %i.cw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.peel, ptr noundef nonnull @.str.148, i64 noundef 3) #24 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.cx = load ptr, ptr %i.a, align 8, !tbaa !217, !nonnull !145, !align !161
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !500
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cy, align 8, !tbaa !500
  call fastcc void @_ZN12_GLOBAL__N_110COFFDumper15printRelocationERKN4llvm6object10SectionRefERKNS2_13RelocationRefEm(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 0)
  %i.db = load ptr, ptr %i.w, align 8, !tbaa !240 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !73
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 296
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(48) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %4) #24, !inline_history !17
  %lhsv.i.i.i.i34.peel = load i64, ptr %4, align 8
  %.not.i.i.i.i36.not.peel = icmp eq i64 %lhsv.i.i.i.i34.peel, %i.ay
  br i1 %.not.i.i.i.i36.not.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %.peel.next, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !217, !nonnull !145, !align !161 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !500
  %i.di = call i32 @llvm.smax.i32(i32 %i.dh, i32 1)
  %spec.select.i = add nsw i32 %i.di, -1
  store i32 %spec.select.i, ptr %i.dg, align 8, !tbaa !500
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !73
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 288
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = call noundef nonnull align 8 dereferenceable(48) ptr %i.dl(ptr noundef nonnull align 8 dereferenceable(44) %i.df) #24 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !225
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 32 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !165 ; 2 uses
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = icmp ult i64 %i.dt, 2
  br i1 %i.du, label %bb.n, label %bb.o

.peel.next:                                       ; preds = %bb.m, %.peel.next
  call fastcc void @_ZN12_GLOBAL__N_110COFFDumper15printRelocationERKN4llvm6object10SectionRefERKNS2_13RelocationRefEm(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 0)
  %i.dv = load ptr, ptr %i.w, align 8, !tbaa !240 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !73
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 296
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(48) %i.dv, ptr noundef nonnull align 8 dereferenceable(16) %4) #24, !inline_history !17
  %lhsv.i.i.i.i34 = load i64, ptr %4, align 8
  %.not.i.i.i.i36.not = icmp eq i64 %lhsv.i.i.i.i34, %i.ay
  br i1 %.not.i.i.i.i36.not, label %._crit_edge, label %.peel.next, !llvm.loop !495

bb.n:                                             ; preds = %._crit_edge
  %i.dz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dm, ptr noundef nonnull @.str.149, i64 noundef 2) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit46

bb.o:                                             ; preds = %._crit_edge
  store i16 2685, ptr %i.dq, align 1
  %i.ea = load ptr, ptr %i.dp, align 8, !tbaa !165
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store ptr %i.eb, ptr %i.dp, align 8, !tbaa !165
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit46

_ZN4llvm11raw_ostreamlsEPKc.exit46.critedge:      ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit46

_ZN4llvm11raw_ostreamlsEPKc.exit46:               ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit46.critedge, %bb.o, %bb.n
  %i.ec = load ptr, ptr %i.t, align 8, !tbaa !237 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !73
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 136
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(48) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %2) #24, !inline_history !22
  %i.eg = load ptr, ptr %i.t, align 8, !tbaa !237
  %i.eh = icmp ne ptr %i.eg, %i.s
  %lhsv.i.i.i.i = load i64, ptr %2, align 8
  %.not.i.i.i.i = icmp ne i64 %lhsv.i.i.i.i, %i.r
  %.not2.i = select i1 %i.eh, i1 true, i1 %.not.i.i.i.i
  br i1 %.not2.i, label %bb.b, label %_ZN4llvm9ListScopeD2Ev.exit
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9ObjDumper12printSymbolsEbbb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 {
bb.a:
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext %3) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 488
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(72) %0) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9ObjDumper12printSymbolsEbbbSt8optionalINS_16SymbolComparatorEE(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr nofree noundef align 8 dereferenceable(88) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.std::optional.23", align 8  ; 9 uses
  %6 = alloca %"class.std::optional.23", align 8  ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !504, !range !144, !noundef !145
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.c, label %_ZNSt14_Optional_baseIN4llvm16SymbolComparatorELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 4 uses
  store i8 0, ptr %i.d, align 8, !tbaa !504
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !171
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !172
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 2, ptr %i.g, align 4, !tbaa !244
end_hunk_0
