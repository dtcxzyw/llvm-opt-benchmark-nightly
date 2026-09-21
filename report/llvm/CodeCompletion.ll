Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CodeCompletion?download=true
inline.NumInlined: 2024
inline.NumDeleted: 1281
begin_hunk_0_@_ZN5clang24CompletionContextHandler17handleDeclarationERKNS_20CodeCompletionResultE:bb.a
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit32.thread: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30
  %i.dw = phi i64 [ %.pre93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30 ], [ %i.ds, %bb.t ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !917
  store i64 0, ptr %i.dh, align 8, !tbaa !917
  %i.dy = load ptr, ptr %i.dk, align 8, !tbaa !1412
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  store ptr %i.dz, ptr %i.dk, align 8, !tbaa !1412
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit32: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit28
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %.pre94 = load ptr, ptr %3, align 8, !tbaa !1384 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %.pre94, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit32
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !1380
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %.pre94, i64 noundef %i.ed) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit32, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit32.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.u

bb.u:                                             ; preds = %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.ad

bb.v:                                             ; preds = %bb.j
  %i.ee = and i64 %.sroa.0.0.copyload.i14, -16
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !1380
  %i.ei = and i64 %.sroa.0.0.copyload.i14, 7
  %i.ej = or i64 %i.eh, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !1380
  %i.em = and i64 %.sroa.0.0.copyload.i, 7
  %i.en = or i64 %i.el, %i.em
  %i.eo = icmp eq i64 %i.ej, %i.en
  br i1 %i.eo, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1410, !nonnull !700, !align !701 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.er = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.es = load i64, ptr %i.er, align 8, !tbaa !1405 ; 2 uses
  %i.et = and i64 %i.es, 7
  %i.eu = icmp ne i64 %i.et, 0
  %i.ev = and i64 %i.es, -8                       ; 2 uses
  %.not2.i36 = icmp eq i64 %i.ev, 0
  %.not.i37 = or i1 %i.eu, %.not2.i36
  br i1 %.not.i37, label %._crit_edge.i.i.i44.thread, label %bb.x

._crit_edge.i.i.i44.thread:                       ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ew, ptr %4, align 8, !tbaa !1398, !alias.scope !1708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !1708
  store i64 0, ptr %i.a, align 8, !tbaa !933, !noalias !1708
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit46

bb.x:                                             ; preds = %bb.w
  %i.ex = inttoptr i64 %i.ev to ptr
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !905 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !907 ; 2 uses
  %i.fc = and i64 %i.fb, 4294967295               ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.fd, ptr %4, align 8, !tbaa !1398, !alias.scope !1709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !1709
  store i64 %i.fc, ptr %i.a, align 8, !tbaa !933, !noalias !1709
  %i.fe = icmp samesign ugt i64 %i.fc, 15
  br i1 %i.fe, label %bb.y, label %._crit_edge.i.i.i44

bb.y:                                             ; preds = %bb.x
  %i.ff = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21 ; 2 uses
  store ptr %i.ff, ptr %4, align 8, !tbaa !1384, !alias.scope !1709
  %i.fg = load i64, ptr %i.a, align 8, !tbaa !933, !noalias !1709
  store i64 %i.fg, ptr %i.fd, align 8, !tbaa !1380, !alias.scope !1709
  br label %._crit_edge.i.i.i44

._crit_edge.i.i.i44:                              ; preds = %bb.y, %bb.x
  %i.fh = phi ptr [ %i.ff, %bb.y ], [ %i.fd, %bb.x ] ; 2 uses
  %trunc = trunc i64 %i.fb to i32
  switch i32 %trunc, label %bb.aa [
    i32 1, label %bb.z
    i32 0, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit46
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i44
  %i.fi = load i8, ptr %i.fa, align 8, !tbaa !1380
  store i8 %i.fi, ptr %i.fh, align 1, !tbaa !1380
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit46

bb.aa:                                            ; preds = %._crit_edge.i.i.i44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fh, ptr nonnull align 8 %i.fa, i64 %i.fc, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit46

_ZNK4llvm9StringRef3strB5cxx11Ev.exit46:          ; preds = %._crit_edge.i.i.i44, %bb.z, %bb.aa, %._crit_edge.i.i.i44.thread
  %i.fj = load i64, ptr %i.a, align 8, !tbaa !933, !noalias !1709 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !917, !alias.scope !1709
  %i.fl = load ptr, ptr %4, align 8, !tbaa !1384, !alias.scope !1709
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fj
  store i8 0, ptr %i.fm, align 1, !tbaa !1380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !1709
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 3 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !1412 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !1413
  %.not.i.i47 = icmp eq ptr %i.fo, %i.fq
  br i1 %.not.i.i47, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50, label %bb.ab

bb.ab:                                            ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit46
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 3 uses
  store ptr %i.fr, ptr %i.fo, align 8, !tbaa !1398
  %i.fs = load ptr, ptr %4, align 8, !tbaa !1384  ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

bb.ac:                                            ; preds = %bb.ab
  %i.fv = load i64, ptr %i.fk, align 8, !tbaa !917 ; 3 uses
  %i.fw = icmp ult i64 %i.fv, 16
  call void @llvm.assume(i1 %i.fw)
  %i.fx = add nuw nsw i64 %i.fv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fr, ptr noundef nonnull align 8 dereferenceable(1) %i.ft, i64 %i.fx, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.ab
  store ptr %i.fs, ptr %i.fo, align 8, !tbaa !1384
  %i.fy = load i64, ptr %i.ft, align 8, !tbaa !1380
  store i64 %i.fy, ptr %i.fr, align 8, !tbaa !1380
  %.pre = load i64, ptr %i.fk, align 8, !tbaa !917
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50.thread: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48
  %i.fz = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48 ], [ %i.fv, %bb.ac ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i64 %i.fz, ptr %i.ga, align 8, !tbaa !917
  store i64 0, ptr %i.fk, align 8, !tbaa !917
  %i.gb = load ptr, ptr %i.fn, align 8, !tbaa !1412
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  store ptr %i.gc, ptr %i.fn, align 8, !tbaa !1412
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit46
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.eq, ptr %i.fo, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %.pre92 = load ptr, ptr %4, align 8, !tbaa !1384 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ge = icmp eq ptr %.pre92, %i.gd
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50
  %i.gf = load i64, ptr %i.gd, align 8, !tbaa !1380
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %.pre92, i64 noundef %i.gg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ad

bb.ad:                                            ; preds = %bb.i, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang24CompletionContextHandler13handleKeywordERKNS_20CodeCompletionResultE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1414, !nonnull !700, !align !701
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !699, !nonnull !700, !align !701
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 952
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !902  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN5clang12Preprocessor23getCodeCompletionFilterEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !905  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.i, align 8, !tbaa !907
  %i.l = and i64 %i.k, 4294967295
  br label %_ZN5clang12Preprocessor23getCodeCompletionFilterEv.exit

_ZN5clang12Preprocessor23getCodeCompletionFilterEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.a = load i64, ptr %i.m, align 8, !tbaa !1380
  %i.n = icmp ult i64 %.sroa.0.0.copyload.i.a, 16
  br i1 %i.n, label %3, label %.critedge

3:                                                ; preds = %_ZN5clang12Preprocessor23getCodeCompletionFilterEv.exit
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i4 = load i64, ptr %4, align 8, !tbaa !1380
  %5 = icmp ult i64 %.sroa.0.0.copyload.i4, 16
  br i1 %5, label %bb.c, label %.critedge

bb.c:                                             ; preds = %3
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1380 ; 6 uses
  %.not.i6 = icmp eq ptr %i.p, null               ; 2 uses
  br i1 %.not.i6, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #21
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.c, %bb.d
  %.sroa.0.0.i7 = phi i64 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %.not.i8 = icmp ult i64 %.sroa.0.0.i7, %.sroa.4.0.i
  br i1 %.not.i8, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.r = icmp eq i64 %.sroa.4.0.i, 0
  br i1 %i.r, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %bb.e
  %bcmp.i = tail call i32 @bcmp(ptr %i.p, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i)
  %i.s = icmp eq i32 %bcmp.i, 0
  br i1 %i.s, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %.critedge

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %bb.e, %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1410, !nonnull !700, !align !701 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !1398
  br i1 %.not.i6, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #25
  unreachable

bb.g:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %i.w = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.w, ptr %i.a, align 8, !tbaa !933
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %bb.h, label %._crit_edge.i.i

bb.h:                                             ; preds = %bb.g
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21 ; 2 uses
  store ptr %i.y, ptr %2, align 8, !tbaa !1384
  %i.z = load i64, ptr %i.a, align 8, !tbaa !933
  store i64 %i.z, ptr %i.v, align 8, !tbaa !1380
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.h, %bb.g
  %i.aa = phi ptr [ %i.y, %bb.h ], [ %i.v, %bb.g ] ; 2 uses
  switch i64 %i.w, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i8, ptr %i.p, align 1, !tbaa !1380
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !1380
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr nonnull align 1 %i.p, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.i, %bb.j
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !933 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !917
  %i.ae = load ptr, ptr %2, align 8, !tbaa !1384
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !1380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1412 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1413
  %.not.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !1398
  %i.al = load ptr, ptr %2, align 8, !tbaa !1384  ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.v
  br i1 %i.am, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.an = load i64, ptr %i.ad, align 8, !tbaa !917 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !1384
  %i.aq = load i64, ptr %i.v, align 8, !tbaa !1380
  store i64 %i.aq, ptr %i.ak, align 8, !tbaa !1380
  %.pre = load i64, ptr %i.ad, align 8, !tbaa !917
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ar = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.an, %bb.l ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !917
  store i64 0, ptr %i.ad, align 8, !tbaa !917
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !1412
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store ptr %i.au, ptr %i.ag, align 8, !tbaa !1412
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.pre13 = load ptr, ptr %2, align 8, !tbaa !1384 ; 2 uses
  %i.av = icmp eq ptr %.pre13, %i.v
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.aw = load i64, ptr %i.v, align 8, !tbaa !1380
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %.pre13, i64 noundef %i.ax) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm9StringRefC2EPKc.exit, %_ZN5clang12Preprocessor23getCodeCompletionFilterEv.exit, %_ZNK4llvm9StringRef11starts_withES0_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %3
  ret void
}

declare noundef i32 @_ZN5clang4Sema28CompareReferenceRelationshipENS_14SourceLocationENS_8QualTypeES2_PNS0_25ReferenceConversionsScope20ReferenceConversionsE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i64, i64, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1412 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1717   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !1398
  %i.s = load ptr, ptr %2, align 8, !tbaa !1384   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !917  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !1384
  %i.z = load i64, ptr %i.t, align 8, !tbaa !1380
  store i64 %i.z, ptr %i.r, align 8, !tbaa !1380
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !917
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !917
  store ptr %i.t, ptr %2, align 8, !tbaa !1384
  store i64 0, ptr %i.ab, align 8, !tbaa !917
  store i8 0, ptr %i.t, align 8, !tbaa !1380
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1719)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !1398, !alias.scope !1718, !noalias !1719
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !1384, !alias.scope !1719, !noalias !1718 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !917, !alias.scope !1719, !noalias !1718 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !1720
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !1384, !alias.scope !1718, !noalias !1719
  %i.al = load i64, ptr %i.af, align 8, !tbaa !1380, !alias.scope !1719, !noalias !1718
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !1380, !alias.scope !1718, !noalias !1719
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !917, !alias.scope !1719, !noalias !1718
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !917, !alias.scope !1718, !noalias !1719
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !1384, !alias.scope !1719, !noalias !1718
  store i64 0, ptr %i.an, align 8, !tbaa !917, !alias.scope !1719, !noalias !1718
  store i8 0, ptr %i.af, align 8, !tbaa !1380, !alias.scope !1719, !noalias !1718
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1713

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1722)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !1398, !alias.scope !1721, !noalias !1722
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !1384, !alias.scope !1722, !noalias !1721 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !917, !alias.scope !1722, !noalias !1721 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !1723
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !1384, !alias.scope !1721, !noalias !1722
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !1380, !alias.scope !1722, !noalias !1721
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !1380, !alias.scope !1721, !noalias !1722
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !917, !alias.scope !1722, !noalias !1721
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !917, !alias.scope !1721, !noalias !1722
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !1384, !alias.scope !1722, !noalias !1721
  store i64 0, ptr %i.bc, align 8, !tbaa !917, !alias.scope !1722, !noalias !1721
  store i8 0, ptr %i.au, align 8, !tbaa !1380, !alias.scope !1722, !noalias !1721
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !1713

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1413
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !1717
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !1412
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !1413
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #5

declare noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1750 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1751 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
end_hunk_0
