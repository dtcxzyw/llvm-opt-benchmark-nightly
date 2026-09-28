Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELF_hexagon?download=true
inline.NumInlined: 3605
inline.NumDeleted: 1700
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN4llvm7jitlink7hexagon10applyFixupERNS0_9LinkGraphERNS0_5BlockERKNS0_4EdgeE:bb.a
bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.114.i306.1 = phi i32 [ %i.sr, %bb.eu ], [ %.114.i306, %bb.et ] ; 2 uses
  %.1.i307.1 = phi i32 [ %i.ss, %bb.eu ], [ %.1.i307, %bb.et ]
  %i.st = add nuw nsw i64 %.018.i302, 2           ; 2 uses
  %.not.i308.1 = icmp eq i64 %i.st, 32
  br i1 %.not.i308.1, label %_ZN4llvm8ExpectedIjED2Ev.exit314, label %bb.er, !llvm.loop !1453

_ZN4llvm8ExpectedIjED2Ev.exit314:                 ; preds = %bb.ev
  %.0.copyload.i.i.i.i.i.i.i310 = load i32, ptr %i.f, align 1
  %i.su = or i32 %.0.copyload.i.i.i.i.i.i.i310, %.114.i306.1
  store i32 %i.su, ptr %i.f, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %_ZN4llvm5ErrorD2Ev.exit

bb.ew:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !33, !noalias !1484
  %i.sx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !34, !noalias !1484 ; 3 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.sz, ptr %11, align 8, !tbaa !30, !alias.scope !1485
  %i.ta = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 0, ptr %i.ta, align 8, !tbaa !34, !alias.scope !1485
  store i8 0, ptr %i.sz, align 8, !tbaa !35, !alias.scope !1485
  %i.tb = add i64 %i.sy, 9
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.tb) #19
  %i.tc = load i64, ptr %i.ta, align 8, !tbaa !34, !alias.scope !1485
  %i.td = add i64 %i.tc, -4611686018427387895
  %i.te = icmp ult i64 %i.td, 9
  br i1 %i.te, label %bb.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.ex:                                            ; preds = %bb.ew
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.ew
  %i.tf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.62, i64 noundef 9) #19 ; 0 uses
  %i.tg = load i64, ptr %i.ta, align 8, !tbaa !34, !alias.scope !1485
  %i.th = sub i64 4611686018427387903, %i.tg
  %i.ti = icmp ult i64 %i.th, %i.sy
  br i1 %i.ti, label %bb.ey, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit

bb.ey:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.tj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.sw, i64 noundef %i.sy) #19 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %i.tk = load i64, ptr %i.ta, align 8, !tbaa !34, !noalias !1486
  %i.tl = add i64 %i.tk, -4611686018427387894
  %i.tm = icmp ult i64 %i.tl, 10
  br i1 %i.tm, label %bb.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ez:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22, !noalias !1486
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.tn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.38, i64 noundef 10) #19, !noalias !1486 ; 6 uses
  %i.to = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.to, ptr %10, align 8, !tbaa !30, !alias.scope !1486
  %i.tp = load ptr, ptr %i.tn, align 8, !tbaa !33 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 16 ; 5 uses
  %i.tr = icmp eq ptr %i.tp, %i.tq
  br i1 %i.tr, label %bb.fa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.fa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !34 ; 3 uses
  %i.tu = icmp ult i64 %i.tt, 16
  call void @llvm.assume(i1 %i.tu)
  %i.tv = add nuw nsw i64 %i.tt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.to, ptr noundef nonnull align 8 dereferenceable(1) %i.tq, i64 %i.tv, i1 false)
  br label %_ZN4llvmplERKNS_5TwineES2_.exit333

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.tp, ptr %10, align 8, !tbaa !33, !alias.scope !1486
  %i.tw = load i64, ptr %i.tq, align 8, !tbaa !35
  store i64 %i.tw, ptr %i.to, align 8, !tbaa !35, !alias.scope !1486
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !34
  br label %_ZN4llvmplERKNS_5TwineES2_.exit333

_ZN4llvmplERKNS_5TwineES2_.exit333:               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.fa
  %i.tx = phi i64 [ %i.tt, %bb.fa ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.tx, ptr %i.tz, align 8, !tbaa !34, !alias.scope !1486
  store ptr %i.tq, ptr %i.tn, align 8, !tbaa !33
  store i64 0, ptr %i.ty, align 8, !tbaa !34
  store i8 0, ptr %i.tq, align 8, !tbaa !35
  %i.ua = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !189 ; 2 uses
  %.sroa.0.0.copyload.i315 = load ptr, ptr %i.ub, align 8, !tbaa !36
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !37
  store ptr %10, ptr %9, align 8, !alias.scope !1487
  %i.uc = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %.sroa.0.0.copyload.i315, ptr %i.uc, align 8, !alias.scope !1487
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !35, !alias.scope !1487
  %i.ud = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 4, ptr %i.ud, align 8, !tbaa !118, !alias.scope !1487
  %i.ue = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 5, ptr %i.ue, align 1, !tbaa !117, !alias.scope !1487
  store ptr %9, ptr %8, align 8, !alias.scope !1488
  %i.uf = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.63, ptr %i.uf, align 8, !alias.scope !1488
  %i.ug = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 2, ptr %i.ug, align 8, !tbaa !118, !alias.scope !1488
  %i.uh = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 3, ptr %i.uh, align 1, !tbaa !117, !alias.scope !1488
  %i.ui = load i8, ptr %i.t, align 8, !tbaa !245
  %i.uj = call noundef ptr @_ZN4llvm7jitlink7hexagon15getEdgeKindNameEh(i8 noundef zeroext %i.ui) #19 ; 2 uses
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !35
  %.not.i334 = icmp eq i8 %i.uk, 0
  br i1 %.not.i334, label %bb.fb, label %_ZN4llvmplERKNS_5TwineES2_.exit350

bb.fb:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit333
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !35
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !35
  br label %_ZN4llvmplERKNS_5TwineES2_.exit350

_ZN4llvmplERKNS_5TwineES2_.exit350:               ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit333, %bb.fb
  %.sroa.8.0 = phi i64 [ %.sroa.8.0.copyload, %bb.fb ], [ undef, %_ZN4llvmplERKNS_5TwineES2_.exit333 ]
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload, %bb.fb ], [ %i.uj, %_ZN4llvmplERKNS_5TwineES2_.exit333 ]
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload, %bb.fb ], [ undef, %_ZN4llvmplERKNS_5TwineES2_.exit333 ]
  %.sroa.0356.0 = phi ptr [ %9, %bb.fb ], [ %8, %_ZN4llvmplERKNS_5TwineES2_.exit333 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  %i.ul = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21, !noalias !1490 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !1490
  store ptr %.sroa.0356.0, ptr %4, align 8, !noalias !1490
  %.sroa.6.0..sroa_idx361 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx361, align 8, !noalias !1490
  %.sroa.7.0..sroa_idx365 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx365, align 8, !noalias !1490
  %.sroa.8.0..sroa_idx369 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx369, align 8, !noalias !1490
  %.sroa.9.0..sroa_idx373 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %.sroa.9.0..sroa_idx373, align 8, !noalias !1490
  %.sroa.11.0..sroa_idx377 = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %.sroa.11.0..sroa_idx377, align 1, !noalias !1490
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm7jitlink12JITLinkErrorE, i64 16), ptr %i.ul, align 8, !tbaa !22, !noalias !1490
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.um, ptr noundef nonnull align 8 dereferenceable(34) %4) #19, !noalias !1490
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !1490
  store ptr %i.ul, ptr %0, align 8, !tbaa !77, !alias.scope !1489
  %i.un = load ptr, ptr %10, align 8, !tbaa !33   ; 2 uses
  %i.uo = icmp eq ptr %i.un, %i.to
  br i1 %i.uo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit350
  %i.up = load i64, ptr %i.to, align 8, !tbaa !35
  %i.uq = add i64 %i.up, 1
  call void @_ZdlPvm(ptr noundef %i.un, i64 noundef %i.uq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit350, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351
  %i.ur = load ptr, ptr %11, align 8, !tbaa !33   ; 2 uses
  %i.us = icmp eq ptr %i.ur, %i.sz
  br i1 %i.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ut = load i64, ptr %i.sz, align 8, !tbaa !35
  %i.uu = add i64 %i.ut, 1
  call void @_ZdlPvm(ptr noundef %i.ur, i64 noundef %i.uu) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.fc

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm8ExpectedIjED2Ev.exit314, %_ZN4llvm8ExpectedIjED2Ev.exit238, %_ZN4llvm8ExpectedIjED2Ev.exit, %bb.dp, %bb.ei, %bb.b, %bb.c, %_ZN4llvm7jitlink7hexagon9applyMaskEjj.exit, %_ZN4llvm7jitlink7hexagon9applyMaskEjj.exit103, %_ZN4llvm7jitlink7hexagon9applyMaskEjj.exit112, %_ZN4llvm7jitlink7hexagon9applyMaskEjj.exit121, %_ZN4llvm7jitlink7hexagon9applyMaskEjj.exit130, %_ZN4llvm7jitlink7hexagon9applyMaskEjj.exit139, %_ZN4llvm7jitlink7hexagon9applyMaskEjj.exit148, %_ZN4llvm7jitlink7hexagon9applyMaskEjj.exit157, %_ZN4llvm7jitlink7hexagon9applyMaskEjj.exit166, %_ZN4llvm7jitlink7hexagon9applyMaskEjj.exit175, %_ZN4llvm7jitlink7hexagon9applyMaskEjj.exit184, %_ZN4llvm7jitlink7hexagon9applyMaskEjj.exit193, %_ZN4llvm7jitlink7hexagon9applyMaskEjj.exit202, %_ZN4llvm7jitlink7hexagon9applyMaskEjj.exit211, %_ZN4llvm7jitlink7hexagon9applyMaskEjj.exit262, %_ZN4llvm7jitlink7hexagon9applyMaskEjj.exit271, %_ZN4llvm7jitlink7hexagon9applyMaskEjj.exit297
  store ptr null, ptr %0, align 8, !tbaa !77
  br label %bb.fc

bb.fc:                                            ; preds = %.thread455, %.thread450, %.thread445, %_ZN4llvm5ErrorD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, %bb.ak, %bb.ac, %bb.u, %bb.m, %bb.e
  ret void
}

declare void @_ZN4llvm7jitlink25makeTargetOutOfRangeErrorERKNS0_9LinkGraphERKNS0_5BlockERKNS0_4EdgeE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(312), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7jitlink7hexagon10findMaskR6Ej(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.277") align 8 %0, i32 noundef %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [17 x i8], align 16               ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = and i32 %1, 49152
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = add i32 %1, 1711276032
  %i.f = lshr i32 %i.e, 24
  %trunc = trunc nuw i32 %i.f to i8
  switch i8 %trunc, label %bb.c [
    i8 -98, label %bb.d
    i8 -97, label %.fold.split
    i8 -92, label %.fold.split31
    i8 -91, label %.fold.split32
    i8 -90, label %.fold.split33
    i8 -89, label %.fold.split34
    i8 -88, label %.fold.split35
    i8 -87, label %.fold.split36
    i8 -86, label %.fold.split37
    i8 -85, label %.fold.split38
    i8 -84, label %.fold.split39
    i8 -83, label %.fold.split40
    i8 -48, label %.fold.split41
    i8 -30, label %.fold.split42
    i8 0, label %.fold.split43
    i8 1, label %.fold.split44
    i8 2, label %.fold.split45
    i8 3, label %.fold.split46
    i8 5, label %.fold.split47
    i8 17, label %.fold.split48
    i8 19, label %.fold.split49
    i8 21, label %.fold.split50
    i8 61, label %.fold.split51
    i8 62, label %.fold.split52
    i8 65, label %.fold.split53
    i8 69, label %.fold.split54
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, -2
  store i8 %i.i, ptr %i.g, align 8
  store i32 66060288, ptr %0, align 8, !tbaa !41
  br label %bb.i

bb.c:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %5 = zext i32 %1 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !1501
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 17 ; 2 uses
  br label %.lr.ph.i

.fold.split:                                      ; preds = %.preheader
  br label %bb.d

.fold.split31:                                    ; preds = %.preheader
  br label %bb.d

.fold.split32:                                    ; preds = %.preheader
  br label %bb.d

.fold.split33:                                    ; preds = %.preheader
  br label %bb.d

.fold.split34:                                    ; preds = %.preheader
  br label %bb.d

.fold.split35:                                    ; preds = %.preheader
  br label %bb.d

.fold.split36:                                    ; preds = %.preheader
  br label %bb.d

.fold.split37:                                    ; preds = %.preheader
  br label %bb.d

.fold.split38:                                    ; preds = %.preheader
  br label %bb.d

.fold.split39:                                    ; preds = %.preheader
  br label %bb.d

.fold.split40:                                    ; preds = %.preheader
  br label %bb.d

.fold.split41:                                    ; preds = %.preheader
  br label %bb.d

.fold.split42:                                    ; preds = %.preheader
  br label %bb.d

.fold.split43:                                    ; preds = %.preheader
  br label %bb.d

.fold.split44:                                    ; preds = %.preheader
  br label %bb.d

.fold.split45:                                    ; preds = %.preheader
  br label %bb.d

.fold.split46:                                    ; preds = %.preheader
  br label %bb.d

.fold.split47:                                    ; preds = %.preheader
  br label %bb.d

.fold.split48:                                    ; preds = %.preheader
  br label %bb.d

.fold.split49:                                    ; preds = %.preheader
  br label %bb.d

.fold.split50:                                    ; preds = %.preheader
  br label %bb.d

.fold.split51:                                    ; preds = %.preheader
  br label %bb.d

.fold.split52:                                    ; preds = %.preheader
  br label %bb.d

.fold.split53:                                    ; preds = %.preheader
  br label %bb.d

.fold.split54:                                    ; preds = %.preheader
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.fold.split54, %.fold.split53, %.fold.split52, %.fold.split51, %.fold.split50, %.fold.split49, %.fold.split48, %.fold.split47, %.fold.split46, %.fold.split45, %.fold.split44, %.fold.split43, %.fold.split42, %.fold.split41, %.fold.split40, %.fold.split39, %.fold.split38, %.fold.split37, %.fold.split36, %.fold.split35, %.fold.split34, %.fold.split33, %.fold.split32, %.fold.split31, %.fold.split
  %.010.ptr23.lcssa = phi ptr [ @_ZN4llvm7jitlink7hexagon7R6MasksE, %.preheader ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 192), %.fold.split53 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 8), %.fold.split ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 16), %.fold.split31 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 24), %.fold.split32 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 32), %.fold.split33 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 40), %.fold.split34 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 48), %.fold.split35 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 56), %.fold.split36 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 64), %.fold.split37 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 72), %.fold.split38 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 80), %.fold.split39 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 88), %.fold.split40 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 96), %.fold.split41 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 104), %.fold.split42 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 112), %.fold.split43 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 120), %.fold.split44 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 128), %.fold.split45 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 136), %.fold.split46 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 144), %.fold.split47 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 152), %.fold.split48 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 160), %.fold.split49 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 168), %.fold.split50 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 176), %.fold.split51 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 184), %.fold.split52 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink7hexagon7R6MasksE, i64 200), %.fold.split54 ]
  %i.k = getelementptr inbounds nuw i8, ptr %.010.ptr23.lcssa, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = and i8 %i.m, -2
  store i8 %i.n, ptr %i.l, align 8
  %i.o = load i32, ptr %i.k, align 4, !tbaa !41
  store i32 %i.o, ptr %0, align 8, !tbaa !41
  br label %bb.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !30, !alias.scope !1501
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.q, align 8, !tbaa !34, !alias.scope !1501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !1501
  %i.r = ptrtoint ptr %i.j to i64
  %i.s = ptrtoint ptr %i.ac to i64
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  store i64 %i.t, ptr %i.a, align 8, !tbaa !37, !noalias !1501
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #19 ; 2 uses
  store ptr %i.v, ptr %4, align 8, !tbaa !33, !alias.scope !1501
  %i.w = load i64, ptr %i.a, align 8, !tbaa !37, !noalias !1501
  store i64 %i.w, ptr %i.p, align 8, !tbaa !35, !alias.scope !1501
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e, %._crit_edge.i
  %i.x = phi ptr [ %i.v, %bb.e ], [ %i.p, %._crit_edge.i ] ; 2 uses
  switch i64 %i.t, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN4llvm9utohexstrB5cxx11Embj.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.y = load i8, ptr %i.ac, align 1, !tbaa !35, !noalias !1501
  store i8 %i.y, ptr %i.x, align 1, !tbaa !35
  br label %_ZN4llvm9utohexstrB5cxx11Embj.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.x, ptr noundef nonnull align 1 dereferenceable(1) %i.ac, i64 %i.t, i1 false)
  br label %_ZN4llvm9utohexstrB5cxx11Embj.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.020.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %5, %bb.c ] ; 2 uses
  %.118.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.j, %bb.c ]
  %i.z = and i64 %.020.i, 15
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZZN4llvm8hexdigitEjbE3LUT, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35, !noalias !1501
  %i.ac = getelementptr inbounds i8, ptr %.118.i, i64 -1 ; 5 uses
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !35, !noalias !1501
  %i.ad = lshr i64 %.020.i, 4                     ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !9

_ZN4llvm9utohexstrB5cxx11Embj.exit:               ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.af = load i64, ptr %i.a, align 8, !tbaa !37, !noalias !1501 ; 2 uses
  store i64 %i.af, ptr %i.q, align 8, !tbaa !34, !alias.scope !1501
  %i.ag = load ptr, ptr %4, align 8, !tbaa !33, !alias.scope !1501
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store i8 0, ptr %i.ah, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !1501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !1501
  call void @llvm.experimental.noalias.scope.decl(metadata !1502)
  %i.ai = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.64, i64 noundef 53) #19, !noalias !1502 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.aj, ptr %3, align 8, !tbaa !30, !alias.scope !1502
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !33 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.h:                                             ; preds = %_ZN4llvm9utohexstrB5cxx11Embj.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !34 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm9utohexstrB5cxx11Embj.exit
  store ptr %i.ak, ptr %3, align 8, !tbaa !33, !alias.scope !1502
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !35
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !35, !alias.scope !1502
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !34
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %i.as = phi i64 [ %i.ao, %bb.h ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.as, ptr %i.au, align 8, !tbaa !34, !alias.scope !1502
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !33
  store i64 0, ptr %i.at, align 8, !tbaa !34
  store i8 0, ptr %i.al, align 8, !tbaa !35
  %i.av = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21, !noalias !1503 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !1503
  store ptr %3, ptr %2, align 8, !noalias !1503
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 4, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !noalias !1503
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %.sroa.3.0..sroa_idx.i.i, align 1, !noalias !1503
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm7jitlink12JITLinkErrorE, i64 16), ptr %i.av, align 8, !tbaa !22, !noalias !1503
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.aw, ptr noundef nonnull align 8 dereferenceable(34) %2) #19, !noalias !1503
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !1503
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 8
  %i.az = or i8 %i.ay, 1
  store i8 %i.az, ptr %i.ax, align 8
  store ptr %i.av, ptr %0, align 8, !tbaa !20, !alias.scope !1504
  %i.ba = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.aj
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.bc = load i64, ptr %i.aj, align 8, !tbaa !35
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  %i.be = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.p
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.p, align 8, !tbaa !35
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7jitlink7hexagon11findMaskR16Ej(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.277") align 8 %0, i32 noundef %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = and i32 %1, 49152
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, -2
  store i8 %i.e, ptr %i.c, align 8
  store i32 66060288, ptr %0, align 8, !tbaa !41
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.f = and i32 %1, -49153
  %i.g = and i32 %1, -16777216
  switch i32 %i.g, label %bb.h [
    i32 1207959552, label %bb.d
    i32 1224736768, label %bb.e
    i32 2013265920, label %bb.f
    i32 -1342177280, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8
  %i.j = and i8 %i.i, -2
  store i8 %i.j, ptr %i.h, align 8
  store i32 102703359, ptr %0, align 8, !tbaa !41
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  %i.m = and i8 %i.l, -2
  store i8 %i.m, ptr %i.k, align 8
  store i32 102711264, ptr %0, align 8, !tbaa !41
  br label %bb.n

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8
  %i.p = and i8 %i.o, -2
  store i8 %i.p, ptr %i.n, align 8
  store i32 14630880, ptr %0, align 8, !tbaa !41
  br label %bb.n

bb.g:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8
  %i.s = and i8 %i.r, -2
  store i8 %i.s, ptr %i.q, align 8
  store i32 266354656, ptr %0, align 8, !tbaa !41
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  %i.t = and i32 %1, -8380416
  switch i32 %i.t, label %.critedge.preheader [
    i32 1946157056, label %bb.i
    i32 1946165248, label %bb.j
    i32 1954545664, label %bb.k
    i32 1954553856, label %bb.l
  ]

.critedge.preheader:                              ; preds = %bb.h
  %i.u = add i32 %1, 1711276032
  %i.v = lshr i32 %i.u, 24
  %trunc = trunc nuw i32 %i.v to i8
  switch i8 %trunc, label %_ZN4llvm5ErrorD2Ev.exit [
    i8 -98, label %bb.m
    i8 -97, label %.fold.split
    i8 -92, label %.fold.split43
    i8 -91, label %.fold.split44
    i8 -90, label %.fold.split45
    i8 -89, label %.fold.split46
    i8 -88, label %.fold.split47
    i8 -87, label %.fold.split48
    i8 -86, label %.fold.split49
    i8 -85, label %.fold.split50
    i8 -84, label %.fold.split51
    i8 -83, label %.fold.split52
    i8 -48, label %.fold.split53
    i8 -30, label %.fold.split54
    i8 0, label %.fold.split55
    i8 1, label %.fold.split56
    i8 2, label %.fold.split57
    i8 3, label %.fold.split58
    i8 5, label %.fold.split59
    i8 17, label %.fold.split60
    i8 19, label %.fold.split61
    i8 21, label %.fold.split62
    i8 61, label %.fold.split63
    i8 62, label %.fold.split64
    i8 65, label %.fold.split65
    i8 69, label %.fold.split66
  ]

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8
  %i.y = and i8 %i.x, -2
  store i8 %i.y, ptr %i.w, align 8
end_hunk_0
