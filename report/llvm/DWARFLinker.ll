Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DWARFLinker?download=true
inline.NumInlined: 7993
inline.NumDeleted: 3953
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4llvm12dwarf_linker7classic11DWARFLinker15loadClangModuleESt8functionIFNS_7ErrorOrIRNS0_9DWARFFileEEENS_9StringRefES8_EERKNS_8DWARFDieERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS2_11LinkContextENS_12function_refIFvRKNS_9DWARFUnitEEEEj:bb.a
  %i.if = load i64, ptr %i.al, align 8, !tbaa !62
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ig) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZN4llvm11SmallVectorIcLj0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  ret void
}

declare noundef zeroext i1 @_ZN4llvm3sys4path11is_relativeERKNS_5TwineENS1_5StyleE(ptr noundef nonnull align 8 dereferenceable(34), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvmL25resolveRelativeObjectPathERNS_15SmallVectorImplIcEENS_8DWARFDieE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %4 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %5 = alloca %class.anon.647, align 1            ; 3 uses
  %6 = alloca %"class.llvm::Expected.619", align 8 ; 8 uses
  %7 = alloca %"class.llvm::DWARFDie", align 8    ; 3 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.std::optional.161", align 8 ; 5 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  store ptr %1, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @_ZNK4llvm8DWARFDie4findENS_5dwarf9AttributeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.161") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %7, i16 noundef zeroext 27) #26
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.c = load i8, ptr %i.b, align 8, !tbaa !131, !range !132, !noundef !122
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZNK4llvm14DWARFFormValue12getAsCStringEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.619") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %9) #26
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8               ; 2 uses
  %i.g = trunc i8 %i.f to i1                      ; 2 uses
  br i1 %i.g, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %bb.d

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %6, align 8, !tbaa !134, !noalias !1214
  %i.i = inttoptr i64 %i.h to ptr
  store ptr null, ptr %6, align 8, !tbaa !134, !noalias !1214
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.i, ptr %4, align 8, !tbaa !136
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %i.j = load ptr, ptr %4, align 8, !tbaa !136    ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN4llvm5ErrorD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !138
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #26, !inline_history !12
  br label %_ZN4llvm5ErrorD2Ev.exit.i.i

_ZN4llvm5ErrorD2Ev.exit.i.i:                      ; preds = %bb.c, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.pre.i.i = load i8, ptr %i.e, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %6, align 8, !tbaa !66
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4llvm5ErrorD2Ev.exit.i.i
  %i.p = phi i8 [ %i.f, %bb.d ], [ %.pre.i.i, %_ZN4llvm5ErrorD2Ev.exit.i.i ]
  %.sroa.04.0.i.i = phi ptr [ %i.o, %bb.d ], [ undef, %_ZN4llvm5ErrorD2Ev.exit.i.i ]
  %i.q = trunc i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %_ZN4llvm5dwarf8toStringERKSt8optionalINS_14DWARFFormValueEE.exit.i

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %6, align 8, !tbaa !134    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm5dwarf8toStringERKSt8optionalINS_14DWARFFormValueEE.exit.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i: ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !138
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #26, !inline_history !13
  br label %_ZN4llvm5dwarf8toStringERKSt8optionalINS_14DWARFFormValueEE.exit.i

_ZN4llvm5dwarf8toStringERKSt8optionalINS_14DWARFFormValueEE.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br i1 %i.g, label %.thread.i, label %_ZN4llvm5dwarf8toStringERKSt8optionalINS_14DWARFFormValueEEPKc.exit

.thread.i:                                        ; preds = %_ZN4llvm5dwarf8toStringERKSt8optionalINS_14DWARFFormValueEE.exit.i, %bb.a
  br label %_ZN4llvm5dwarf8toStringERKSt8optionalINS_14DWARFFormValueEEPKc.exit

_ZN4llvm5dwarf8toStringERKSt8optionalINS_14DWARFFormValueEEPKc.exit: ; preds = %_ZN4llvm5dwarf8toStringERKSt8optionalINS_14DWARFFormValueEE.exit.i, %.thread.i
  %i.v = phi ptr [ @.str.28, %.thread.i ], [ %.sroa.04.0.i.i, %_ZN4llvm5dwarf8toStringERKSt8optionalINS_14DWARFFormValueEE.exit.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store i8 1, ptr %i.w, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !61
  %i.y = load i8, ptr %i.v, align 1, !tbaa !62
  %.not.i = icmp eq i8 %i.y, 0
  br i1 %.not.i, label %_ZN4llvm5TwineC2EPKc.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm5dwarf8toStringERKSt8optionalINS_14DWARFFormValueEEPKc.exit
  store ptr %i.v, ptr %8, align 8, !tbaa !62
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %_ZN4llvm5dwarf8toStringERKSt8optionalINS_14DWARFFormValueEEPKc.exit, %bb.g
  %storemerge.i = phi i8 [ 3, %bb.g ], [ 1, %_ZN4llvm5dwarf8toStringERKSt8optionalINS_14DWARFFormValueEEPKc.exit ]
  store i8 %storemerge.i, ptr %i.w, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i16 257, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i16 257, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i16 257, ptr %i.ab, align 8
  call void @_ZN4llvm3sys4path6appendERNS_15SmallVectorImplIcEERKNS_5TwineES7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef nonnull align 8 dereferenceable(34) %10, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr noundef nonnull align 8 dereferenceable(34) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret void
}

declare void @_ZN4llvm3sys4path6appendERNS_15SmallVectorImplIcEERKNS_5TwineES7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(34), ptr noundef nonnull align 8 dereferenceable(34), ptr noundef nonnull align 8 dereferenceable(34), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm12dwarf_linker7classic11DWARFLinker9DIECloner20cloneAllCompileUnitsERNS_12DWARFContextERKNS0_9DWARFFileEb(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.526") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(177) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %5 = alloca %"class.llvm::DWARFDie", align 8    ; 6 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %7 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %8 = alloca %class.anon.529, align 8            ; 9 uses
  %9 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %10 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %i.b = zext i1 %4 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !502
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !486  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !138
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !159, !nonnull !122, !align !123 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !73   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !73   ; 2 uses
  %.not90111 = icmp eq ptr %i.m, %i.o
  br i1 %.not90111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = ptrtoint ptr %8 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.q
  %.0113 = phi i64 [ %i.j, %.lr.ph ], [ %.1, %bb.q ] ; 2 uses
  %.sroa.083.0112 = phi ptr [ %i.m, %.lr.ph ], [ %i.de, %bb.q ] ; 13 uses
  %i.z = load ptr, ptr %.sroa.083.0112, align 8, !tbaa !75
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !118, !nonnull !122, !align !123
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !420 ; 4 uses
  %i.ad = icmp ugt i16 %i.ac, 4
  %i.ae = select i1 %i.ad, i32 12, i32 11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.af = load ptr, ptr %.sroa.083.0112, align 8, !tbaa !75
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !118, !nonnull !122, !align !123 ; 4 uses
  call void @_ZN4llvm9DWARFUnit19extractDIEsIfNeededEb(ptr noundef nonnull align 8 dereferenceable(448) %i.ag, i1 noundef zeroext true) #26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 288
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !125 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 296
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !125
  %11 = icmp ne ptr %i.ai, %i.ak                  ; 3 uses
  %spec.select.i = select i1 %11, ptr %i.ag, ptr null
  %spec.select1.i = select i1 %11, ptr %i.ai, ptr null
  store ptr %spec.select.i, ptr %5, align 8
  store ptr %spec.select1.i, ptr %i.p, align 8
  %i.al = load ptr, ptr %.sroa.083.0112, align 8, !tbaa !75 ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 128 ; 2 uses
  store i64 %.0113, ptr %i.am, align 8, !tbaa !470
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !492, !range !132, !noundef !122
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.e, label %_ZN4llvm12dwarf_linker7classic11CompileUnit14setStartOffsetEm.exit

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  store i64 %.0113, ptr %i.aq, align 8, !tbaa !1225
  br label %_ZN4llvm12dwarf_linker7classic11CompileUnit14setStartOffsetEm.exit

_ZN4llvm12dwarf_linker7classic11CompileUnit14setStartOffsetEm.exit: ; preds = %bb.d, %bb.e
  %12 = icmp ne ptr %i.ai, null
  %13 = and i1 %12, %11
  br i1 %13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12dwarf_linker7classic11CompileUnit14setStartOffsetEm.exit
  %i.ar = call noundef i64 @_ZN4llvm12dwarf_linker7classic11CompileUnit21computeNextUnitOffsetEt(ptr noundef nonnull align 8 dereferenceable(672) %i.al, i16 noundef zeroext %i.ac) #26
  br label %bb.q

bb.g:                                             ; preds = %_ZN4llvm12dwarf_linker7classic11CompileUnit14setStartOffsetEm.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !163
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  %i.av = load i8, ptr %i.au, align 4
  %i.aw = trunc i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.al, align 8, !tbaa !118, !nonnull !122, !align !123 ; 2 uses
  call void @_ZN4llvm9DWARFUnit19extractDIEsIfNeededEb(ptr noundef nonnull align 8 dereferenceable(448) %i.ax, i1 noundef zeroext true) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 288
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !125
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !129 ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i68, label %_ZN4llvm12dwarf_linker7classic11CompileUnit15createOutputDIEEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i16, ptr %i.bc, align 4, !tbaa !186
  br label %_ZN4llvm12dwarf_linker7classic11CompileUnit15createOutputDIEEv.exit

_ZN4llvm12dwarf_linker7classic11CompileUnit15createOutputDIEEv.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi i16 [ %i.bd, %bb.i ], [ 0, %bb.h ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 2 uses
  store i8 0, ptr %i.an, align 8, !tbaa !492
  call void @_ZN4llvm7DIEUnitC2ENS_5dwarf3TagE(ptr noundef nonnull align 8 dereferenceable(80) %i.be, i16 noundef zeroext %.0.i.i) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm12BasicDIEUnitE, i64 16), ptr %i.be, align 8, !tbaa !138
  store i8 1, ptr %i.an, align 8, !tbaa !492
  %i.bf = load i64, ptr %i.am, align 8, !tbaa !470
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !1225
  %i.bh = load ptr, ptr %.sroa.083.0112, align 8, !tbaa !75
  call void @_ZN4llvm12dwarf_linker7classic11DWARFLinker9DIECloner26rememberUnitForMacroOffsetERNS1_11CompileUnitE(ptr noundef nonnull align 8 dereferenceable(177) %1, ptr noundef nonnull align 8 dereferenceable(672) %i.bh)
  %i.bi = load ptr, ptr %.sroa.083.0112, align 8, !tbaa !75 ; 3 uses
  %i.bj = load i8, ptr %i.a, align 1, !tbaa !502, !range !132, !noundef !122
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !492, !range !132, !noundef !122
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %spec.select.i69 = select i1 %i.bn, ptr %i.bo, ptr null
  %i.bp = call noundef ptr @_ZN4llvm12dwarf_linker7classic11DWARFLinker9DIECloner8cloneDIEERKNS_8DWARFDieERKNS0_9DWARFFileERNS1_11CompileUnitEljjbPNS_3DIEE(ptr noundef nonnull align 8 dereferenceable(177) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(672) %i.bi, i64 noundef 0, i32 noundef %i.ae, i32 noundef 0, i1 noundef zeroext %i.bk, ptr noundef %spec.select.i69) ; 0 uses
  %.pre = load ptr, ptr %.sroa.083.0112, align 8, !tbaa !75
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvm12dwarf_linker7classic11CompileUnit15createOutputDIEEv.exit, %bb.g
  %i.bq = phi ptr [ %.pre, %_ZN4llvm12dwarf_linker7classic11CompileUnit15createOutputDIEEv.exit ], [ %i.al, %bb.g ]
  %i.br = call noundef i64 @_ZN4llvm12dwarf_linker7classic11CompileUnit21computeNextUnitOffsetEt(ptr noundef nonnull align 8 dereferenceable(672) %i.bq, i16 noundef zeroext %i.ac) #26 ; 2 uses
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !486
  %.not = icmp eq ptr %i.bs, null
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bt = load ptr, ptr %.sroa.083.0112, align 8, !tbaa !75
  call void @_ZN4llvm12dwarf_linker7classic11DWARFLinker9DIECloner24generateLineTableForUnitERNS1_11CompileUnitE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %6, ptr noundef nonnull align 8 dereferenceable(177) %1, ptr noundef nonnull align 8 dereferenceable(672) %i.bt)
  %i.bu = load ptr, ptr %6, align 8, !tbaa !136   ; 2 uses
  %.not94.a = icmp eq ptr %i.bu, null
  br i1 %.not94.a, label %_ZN4llvm5ErrorD2Ev.exit70, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 8
  %i.bx = or i8 %i.bw, 1
  store i8 %i.bx, ptr %i.bv, align 8
  store ptr %i.bu, ptr %0, align 8, !tbaa !134, !alias.scope !1226
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.thread88

_ZN4llvm5ErrorD2Ev.exit70:                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.by = load ptr, ptr %1, align 8, !tbaa !158, !nonnull !122, !align !123
  %i.bz = load ptr, ptr %.sroa.083.0112, align 8, !tbaa !75
  call void @_ZN4llvm12dwarf_linker7classic11DWARFLinker29emitAcceleratorEntriesForUnitERNS1_11CompileUnitE(ptr noundef nonnull align 8 dereferenceable(1456) %i.by, ptr noundef nonnull align 8 dereferenceable(672) %i.bz)
  %i.ca = load ptr, ptr %1, align 8, !tbaa !158, !nonnull !122, !align !123 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1334
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !451, !range !132, !noundef !122
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.q, label %bb.l, !prof !344

bb.l:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ce = load ptr, ptr %.sroa.083.0112, align 8, !tbaa !75
  call void @_ZNK4llvm12dwarf_linker7classic11DWARFLinker18generateUnitRangesERNS1_11CompileUnitERKNS0_9DWARFFileERNS0_16IndexedValuesMapImEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %7, ptr noundef nonnull align 8 dereferenceable(1456) %i.ca, ptr noundef nonnull align 8 dereferenceable(672) %i.ce, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(88) %i.q)
  %i.cf = load ptr, ptr %7, align 8, !tbaa !136   ; 2 uses
  %.not95.a = icmp eq ptr %i.cf, null
  br i1 %.not95.a, label %_ZN4llvm5ErrorD2Ev.exit72, label %_ZN4llvm5ErrorD2Ev.exit71

_ZN4llvm5ErrorD2Ev.exit71:                        ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 8
  %i.ci = or i8 %i.ch, 1
  store i8 %i.ci, ptr %i.cg, align 8
  store ptr %i.cf, ptr %0, align 8, !tbaa !134, !alias.scope !1227
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.thread88

_ZN4llvm5ErrorD2Ev.exit72:                        ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %.sroa.083.0112, ptr %8, align 8, !tbaa !73
  store ptr %i.a, ptr %i.r, align 8, !tbaa !594
  store ptr %1, ptr %i.s, align 8, !tbaa !597
  store ptr %3, ptr %i.t, align 8, !tbaa !591
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.cj = load ptr, ptr %.sroa.083.0112, align 8, !tbaa !75
  call void @_ZN4llvm12dwarf_linker7classic11DWARFLinker9DIECloner21generateUnitLocationsERNS1_11CompileUnitERKNS0_9DWARFFileENS_12function_refIFvRNS_15SmallVectorImplIhEESC_lEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %9, ptr noundef nonnull align 8 dereferenceable(177) %1, ptr noundef nonnull align 8 dereferenceable(672) %i.cj, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr nonnull @"_ZN4llvm12function_refIFvRNS_15SmallVectorImplIhEES3_lEE11callback_fnIZNS_12dwarf_linker7classic11DWARFLinker9DIECloner20cloneAllCompileUnitsERNS_12DWARFContextERKNS7_9DWARFFileEbE3$_0EEvlS3_S3_l", i64 %i.u)
  %i.ck = load ptr, ptr %9, align 8, !tbaa !136   ; 2 uses
  %.not96 = icmp eq ptr %i.ck, null
  br i1 %.not96, label %_ZN4llvm5ErrorD2Ev.exit74, label %_ZN4llvm5ErrorD2Ev.exit73

_ZN4llvm5ErrorD2Ev.exit73:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit72
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 8
  %i.cn = or i8 %i.cm, 1
  store i8 %i.cn, ptr %i.cl, align 8
  store ptr %i.ck, ptr %0, align 8, !tbaa !134, !alias.scope !1228
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.thread88

_ZN4llvm5ErrorD2Ev.exit74:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit72
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.co = load ptr, ptr %.sroa.083.0112, align 8, !tbaa !75
  call void @_ZNK4llvm12dwarf_linker7classic11DWARFLinker9DIECloner20emitDebugAddrSectionERNS1_11CompileUnitEt(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %10, ptr noundef nonnull align 8 dereferenceable(177) %1, ptr noundef nonnull align 8 dereferenceable(672) %i.co, i16 noundef zeroext %i.ac)
  %i.cp = load ptr, ptr %10, align 8, !tbaa !136  ; 2 uses
  %.not97 = icmp eq ptr %i.cp, null
  br i1 %.not97, label %_ZN4llvm5ErrorD2Ev.exit75.thread, label %_ZN4llvm5ErrorD2Ev.exit75

_ZN4llvm5ErrorD2Ev.exit75.thread:                 ; preds = %_ZN4llvm5ErrorD2Ev.exit74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.m

_ZN4llvm5ErrorD2Ev.exit75:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit74
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 8
  %i.cs = or i8 %i.cr, 1
  store i8 %i.cs, ptr %i.cq, align 8
  store ptr %i.cp, ptr %0, align 8, !tbaa !134, !alias.scope !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.thread88

bb.m:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit75.thread, %bb.j
  %i.ct = load i32, ptr %i.v, align 8, !tbaa !598 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %_ZN4llvm12dwarf_linker16IndexedValuesMapImE5clearEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = shl i32 %i.ct, 2
  %i.cw = load i32, ptr %i.w, align 4, !tbaa !513 ; 3 uses
  %i.cx = icmp ult i32 %i.cv, %i.cw
  %i.cy = icmp ugt i32 %i.cw, 64
  %or.cond.i.i = and i1 %i.cx, %i.cy
  br i1 %or.cond.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(88) %i.q)
  br label %_ZN4llvm12dwarf_linker16IndexedValuesMapImE5clearEv.exit

bb.p:                                             ; preds = %bb.n
  %i.cz = load ptr, ptr %i.x, align 8, !tbaa !512
  %i.da = zext i32 %i.cw to i64
  %i.db = add nuw nsw i64 %i.da, 31
  %i.dc = lshr i64 %i.db, 3
  %i.dd = and i64 %i.dc, 1073741820
  call void @llvm.memset.p0.i64(ptr align 4 %i.cz, i8 0, i64 %i.dd, i1 false)
  store i32 0, ptr %i.v, align 8, !tbaa !598
  br label %_ZN4llvm12dwarf_linker16IndexedValuesMapImE5clearEv.exit

_ZN4llvm12dwarf_linker16IndexedValuesMapImE5clearEv.exit: ; preds = %bb.m, %bb.o, %bb.p
  store i32 0, ptr %i.y, align 8, !tbaa !197
  br label %bb.q

.thread88:                                        ; preds = %_ZN4llvm5ErrorD2Ev.exit73, %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit71, %_ZN4llvm5ErrorD2Ev.exit75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.u

bb.q:                                             ; preds = %bb.f, %_ZN4llvm12dwarf_linker16IndexedValuesMapImE5clearEv.exit, %_ZN4llvm5ErrorD2Ev.exit70
  %.1 = phi i64 [ %i.ar, %bb.f ], [ %i.br, %_ZN4llvm12dwarf_linker16IndexedValuesMapImE5clearEv.exit ], [ %i.br, %_ZN4llvm5ErrorD2Ev.exit70 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.083.0112, i64 8 ; 2 uses
  %.not90 = icmp eq ptr %i.de, %i.o
  br i1 %.not90, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.q, %bb.c
  %.0.lcssa = phi i64 [ %i.j, %bb.c ], [ %.1, %bb.q ]
  %i.df = load ptr, ptr %i.c, align 8, !tbaa !486 ; 3 uses
  %.not60 = icmp eq ptr %i.df, null
  br i1 %.not60, label %.loopexit, label %bb.r

end_hunk_0
begin_hunk_1_@_ZN4llvm12dwarf_linker7classic11CompileUnitD2Ev:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1542
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #27
  br label %_ZNSt6vectorISt5tupleIJPN4llvm3DIEEPKNS1_12dwarf_linker7classic11CompileUnitEPNS5_11DeclContextENS5_13PatchLocationEEESaISC_EED2Ev.exit

_ZNSt6vectorISt5tupleIJPN4llvm3DIEEPKNS1_12dwarf_linker7classic11CompileUnitEPNS5_11DeclContextENS5_13PatchLocationEEESaISC_EED2Ev.exit: ; preds = %_ZN4llvm17AddressRangesBaseINS_21AddressRangeValuePairEED2Ev.exit, %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt5tupleIJPN4llvm3DIEEPKNS1_12dwarf_linker7classic11CompileUnitEPNS5_11DeclContextENS5_13PatchLocationEEESaISC_EED2Ev.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !667
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cf) #27
  br label %_ZNSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EED2Ev.exit

_ZNSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt5tupleIJPN4llvm3DIEEPKNS1_12dwarf_linker7classic11CompileUnitEPNS5_11DeclContextENS5_13PatchLocationEEESaISC_EED2Ev.exit, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7DIEUnitD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN4llvm7DIEUnitC2ENS_5dwarf3TagE(ptr noundef nonnull align 8 dereferenceable(72), i16 noundef zeroext) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12BasicDIEUnitD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm7DIEUnit34getCrossSectionRelativeBaseAddressEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12dwarf_linker7classic11CompileUnitC2ERNS_9DWARFUnitEjbNS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(448) %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, i64 %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.llvm::DWARFDie", align 8    ; 5 uses
  store ptr %1, ptr %0, align 8, !tbaa !160
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.b, align 8, !tbaa !533
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.d, align 8, !tbaa !492
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr null, ptr %i.e, align 8, !tbaa !1543
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.f, align 8, !tbaa !1544
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  store ptr %i.i, ptr %i.h, align 8, !tbaa !196
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.j, align 8, !tbaa !197
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 2, ptr %i.k, align 4, !tbaa !276
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 1, ptr %i.l, align 8
  store i32 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.o, ptr %i.n, align 8, !tbaa !196
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.p, align 8, !tbaa !197
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 3, ptr %i.q, align 4, !tbaa !276
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i8 0, ptr %i.r, align 8, !tbaa !1545
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.t, ptr %i.s, align 8, !tbaa !196
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 0, ptr %i.u, align 8, !tbaa !197
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 388
  store i32 3, ptr %i.v, align 4, !tbaa !276
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.x, ptr %i.w, align 8, !tbaa !196
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i32 0, ptr %i.y, align 8, !tbaa !197
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 452
  store i32 3, ptr %i.z, align 4, !tbaa !276
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 602
  store i16 0, ptr %i.ab, align 2, !tbaa !1546
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aa, i8 0, i64 96, i1 false)
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !362
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 0, ptr %i.ae, align 8, !tbaa !363
  store i8 0, ptr %i.ad, align 8, !tbaa !62
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 3 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !362
  %i.ah = icmp eq ptr %4, null
  %i.ai = icmp ne i64 %5, 0
  %or.cond.i.i.i = and i1 %i.ah, %i.ai
  br i1 %or.cond.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.62) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %5, ptr %i.a, align 8, !tbaa !67
  %i.aj = icmp ugt i64 %5, 15
  br i1 %i.aj, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ak = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !367
  %i.al = load i64, ptr %i.a, align 8, !tbaa !67
  store i64 %i.al, ptr %i.ag, align 8, !tbaa !62
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %i.am = phi ptr [ %i.ak, %bb.d ], [ %i.ag, %bb.c ] ; 2 uses
  switch i64 %5, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.an = load i8, ptr %4, align 1, !tbaa !62
  store i8 %i.an, ptr %i.am, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %4, i64 %5, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !363
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !367
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @_ZN4llvm9DWARFUnit19extractDIEsIfNeededEb(ptr noundef nonnull align 8 dereferenceable(448) %1, i1 noundef zeroext false) #26
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !471
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !162
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = sdiv exact i64 %i.ay, 24
  %i.ba = and i64 %i.az, 4294967295               ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !668 ; 2 uses
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !163 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 5                 ; 3 uses
  %i.bi = icmp ugt i64 %i.ba, %i.bh
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.bj = sub nuw nsw i64 %i.ba, %i.bh
  call void @_ZNSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.bj)
  br label %_ZNSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE6resizeEm.exit

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.bk = icmp ult i64 %i.ba, %i.bh
  br i1 %i.bk, label %bb.i, label %_ZNSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE6resizeEm.exit

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.bd, i64 %i.ba ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, %i.bl
  br i1 %.not.i.i, label %_ZNSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE6resizeEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.bl, ptr %i.bb, align 8, !tbaa !668
  br label %_ZNSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE6resizeEm.exit

_ZNSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE6resizeEm.exit: ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN4llvm9DWARFUnit19extractDIEsIfNeededEb(ptr noundef nonnull align 8 dereferenceable(448) %1, i1 noundef zeroext false) #26
  %i.bm = load ptr, ptr %i.as, align 8, !tbaa !125 ; 3 uses
  %i.bn = load ptr, ptr %i.at, align 8, !tbaa !125
  %7 = icmp ne ptr %i.bm, %i.bn                   ; 3 uses
  %spec.select.i = select i1 %7, ptr %1, ptr null
  %spec.select1.i = select i1 %7, ptr %i.bm, ptr null
  store ptr %spec.select.i, ptr %6, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %spec.select1.i, ptr %i.bo, align 8
  %8 = icmp ne ptr %i.bm, null
  %9 = and i1 %8, %7
  br i1 %9, label %bb.k, label %switch.lookup

bb.k:                                             ; preds = %_ZNSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE6resizeEm.exit
  %i.bp = call { i64, i8 } @_ZNK4llvm8DWARFDie11getLanguageEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #26 ; 2 uses
  %i.bq = extractvalue { i64, i8 } %i.bp, 0       ; 2 uses
  %i.br = extractvalue { i64, i8 } %i.bp, 1
  %i.bs = trunc nuw i8 %i.br to i1
  %brmerge.demorgan = and i1 %3, %i.bs
  br i1 %brmerge.demorgan, label %bb.l, label %switch.lookup

bb.l:                                             ; preds = %bb.k
  %switch.tableidx = add i64 %i.bq, -4            ; 2 uses
  %i.bt = icmp ult i64 %switch.tableidx, 30
  %switch.maskindex = trunc i64 %switch.tableidx to i32
  %switch.shifted = lshr i32 543162369, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.bt, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = icmp eq i64 %i.bq, 17
  %i.bv = zext i1 %i.bu to i8
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.l, %bb.k, %bb.m, %_ZNSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE6resizeEm.exit
  %.sink = phi i8 [ 0, %_ZNSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE6resizeEm.exit ], [ %i.bv, %bb.m ], [ 0, %bb.k ], [ 1, %bb.l ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i8 %.sink, ptr %i.bw, align 8, !tbaa !382
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret void
}

declare { i64, i8 } @_ZNK4llvm8DWARFDie11getLanguageEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !668  ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !163    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !667
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 288230376151711743         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoEmS4_ET_S6_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 5
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.t = add i64 %1, 576460752303423486
  %i.u = and i64 %i.t, 576460752303423487
  %i.v = add i64 %1, 3
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.p, %bb.d ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.06.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !tbaa.struct !1550
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !1547

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %bb.d
  %.06.i.i.i.i.i.i.i.unr = phi ptr [ %i.p, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.x = icmp samesign ult i64 %i.u, 3
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.06.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !tbaa.struct !1550
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !tbaa.struct !1550
  %i.z = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !tbaa.struct !1550
  %i.aa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !tbaa.struct !1550
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq ptr %i.ab, %i.s
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1548

_ZSt27__uninitialized_default_n_aIPN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !668
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %i.n, %1
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #29
  unreachable

_ZNKSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ad = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 288230376151711743) ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 5
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #28 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.f ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i8 0, i64 32, i1 false)
  %i.ai = add nsw i64 %1, -1                      ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZSt27__uninitialized_default_n_aIPN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoEmS4_ET_S6_T0_RSaIT1_E.exit30, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE12_M_check_lenEmPKc.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  %.idx.i.i.i.i.i25 = shl nuw nsw i64 %i.ai, 5
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i.i.i25
  %i.am = add i64 %1, 576460752303423486
  %i.an = and i64 %i.am, 576460752303423487
  %i.ao = add i64 %1, 3
  %xtraiter38 = and i64 %i.ao, 3                  ; 2 uses
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.lr.ph.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i.i.i26.prol:                      ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i26.prol
  %.06.i.i.i.i.i.i.i27.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i26.prol ], [ %i.ak, %bb.g ] ; 2 uses
  %prol.iter40 = phi i64 [ %prol.iter40.next, %.lr.ph.i.i.i.i.i.i.i26.prol ], [ 0, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.06.i.i.i.i.i.i.i27.prol, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !tbaa.struct !1550
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i27.prol, i64 32 ; 2 uses
  %prol.iter40.next = add i64 %prol.iter40, 1     ; 2 uses
  %prol.iter40.cmp.not = icmp eq i64 %prol.iter40.next, %xtraiter38
  br i1 %prol.iter40.cmp.not, label %.lr.ph.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i26.prol, !llvm.loop !1549

.lr.ph.i.i.i.i.i.i.i26.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i26.prol, %bb.g
  %.06.i.i.i.i.i.i.i27.unr = phi ptr [ %i.ak, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i26.prol ]
  %i.aq = icmp samesign ult i64 %i.an, 3
  br i1 %i.aq, label %_ZSt27__uninitialized_default_n_aIPN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoEmS4_ET_S6_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i26:                           ; preds = %.lr.ph.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i26
  %.06.i.i.i.i.i.i.i27 = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i26 ], [ %.06.i.i.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i.i.i26.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.06.i.i.i.i.i.i.i27, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !tbaa.struct !1550
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i27, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !tbaa.struct !1550
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i27, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !tbaa.struct !1550
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i27, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !tbaa.struct !1550
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i27, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i28.3 = icmp eq ptr %i.au, %i.al
  br i1 %.not.i.i.i.i.i.i.i28.3, label %_ZSt27__uninitialized_default_n_aIPN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoEmS4_ET_S6_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i.i.i.i.i26, !llvm.loop !1548

_ZSt27__uninitialized_default_n_aIPN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoEmS4_ET_S6_T0_RSaIT1_E.exit30: ; preds = %.lr.ph.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i26, %_ZNKSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE12_M_check_lenEmPKc.exit
  %i.av = icmp sgt i64 %i.f, 0
  br i1 %i.av, label %bb.h, label %_ZNSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoEmS4_ET_S6_T0_RSaIT1_E.exit30
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit

_ZNSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoEmS4_ET_S6_T0_RSaIT1_E.exit30, %bb.h
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !667
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ay) #27
  br label %_ZNSt12_Vector_baseIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !163
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %1
  store ptr %i.az, ptr %i.a, align 8, !tbaa !668
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !667
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4llvm12dwarf_linker7classic11CompileUnit7DIEInfoESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN4llvm5TwineERKNS0_8DWARFDieEEZZNS0_12dwarf_linker7classic11DWARFLinker4linkEvENK3$_0clEmEUlS3_S6_E_E9_M_invokeERKSt9_Any_dataS3_S6_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #0 align 2 {
end_hunk_1
