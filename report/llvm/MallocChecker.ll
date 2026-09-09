Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MallocChecker?download=true
inline.NumInlined: 9660
inline.NumDeleted: 4701
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN5clang4ento4eval4Call9_evalCallIN12_GLOBAL__N_113MallocCheckerEEEbPvRKNS0_9CallEventERNS0_14CheckerContextE:bb.a
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit155.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit155.i: ; preds = %bb.ao, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit153.thread.i, %bb.am
  %.sroa.0.0.i = phi ptr [ %i.m, %bb.am ], [ %i.da, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit153.thread.i ], [ %i.db, %bb.ao ] ; 8 uses
  %.not.i.i156.i = icmp eq ptr %.sroa.0.0.i, null ; 2 uses
  br i1 %.not.i.i156.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit157.i, label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit155.i
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.0.i) #25
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit157.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit157.i: ; preds = %bb.ap, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit155.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.dc = load ptr, ptr %1, align 8, !tbaa !106
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call noundef ptr %i.de(ptr noundef nonnull align 8 dereferenceable(72) %1) #25, !inline_history !2454 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i3, label %_ZNK12_GLOBAL__N_113MallocChecker18checkOwnershipAttrEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS4_9CallEventERNS4_14CheckerContextE.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit157.i
  %i.dg = load i16, ptr %i.df, align 8
  %i.dh = and i16 %i.dg, 511
  %i.di = add nsw i16 %i.dh, -91
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.di, 5
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.i, label %_ZNK12_GLOBAL__N_113MallocChecker18checkOwnershipAttrEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS4_9CallEventERNS4_14CheckerContextE.exit

_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.i: ; preds = %bb.aq
  %i.dj = call noundef ptr @_ZNK5clang4ento14CheckerContext13getCalleeDeclEPKNS_8CallExprE(ptr noundef nonnull align 8 dereferenceable(81) %2, ptr noundef nonnull %i.df) #25 ; 4 uses
  %.not21.i = icmp eq ptr %i.dj, null
  br i1 %.not21.i, label %_ZNK12_GLOBAL__N_113MallocChecker18checkOwnershipAttrEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS4_9CallEventERNS4_14CheckerContextE.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.i
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !172, !range !100, !noundef !101
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1552 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !106
  %i.dp = getelementptr i8, ptr %i.do, i64 -24
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds i8, ptr %i.dn, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !111, !range !100, !noundef !101
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.at, label %_ZN5clangneENS_22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread.i

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 28 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = and i32 %i.dw, 256
  %.not.i4 = icmp eq i32 %i.dx, 0
  br i1 %.not.i4, label %_ZN5clangneENS_22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread.i, label %_ZNK5clang4Decl19specific_attr_beginINS_13OwnershipAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i.i

_ZNK5clang4Decl19specific_attr_beginINS_13OwnershipAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i.i: ; preds = %bb.at
  %i.dy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.dj) #25
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !179
  %.pre.i.i = load i32, ptr %i.dv, align 4
  %.pre4.i.i = and i32 %.pre.i.i, 256
  %i.ea = icmp eq i32 %.pre4.i.i, 0
  br i1 %i.ea, label %_ZNK5clang4Decl14specific_attrsINS_13OwnershipAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.i, label %bb.au

bb.au:                                            ; preds = %_ZNK5clang4Decl19specific_attr_beginINS_13OwnershipAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i.i
  %i.eb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.dj) #25 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !179
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !176
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ef
  br label %_ZNK5clang4Decl14specific_attrsINS_13OwnershipAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.i

_ZNK5clang4Decl14specific_attrsINS_13OwnershipAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.i: ; preds = %bb.au, %_ZNK5clang4Decl19specific_attr_beginINS_13OwnershipAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i.i
  %i.eh = phi ptr [ %i.eg, %bb.au ], [ null, %_ZNK5clang4Decl19specific_attr_beginINS_13OwnershipAttrEEENS_22specific_attr_iteratorIT_N4llvm11SmallVectorIPNS_4AttrELj4EEEEEv.exit.i.i ] ; 5 uses
  %.sroa.331.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.351.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.452.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.553.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.sroa.641.0..sroa_idx42.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.8.0..sroa_idx44.i.i = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.9.0..sroa_idx46.i.i = getelementptr inbounds nuw i8, ptr %13, i64 24
  br label %bb.av

bb.av:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit28.i, %_ZNK5clang4Decl14specific_attrsINS_13OwnershipAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.i
  %.sroa.0.1 = phi ptr [ %.sroa.0.0.i, %_ZNK5clang4Decl14specific_attrsINS_13OwnershipAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.i ], [ %.sroa.0.3, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit28.i ] ; 20 uses
  %.sroa.064.0.i = phi ptr [ %i.dz, %_ZNK5clang4Decl14specific_attrsINS_13OwnershipAttrEEEN4llvm14iterator_rangeINS_22specific_attr_iteratorIT_NS3_11SmallVectorIPNS_4AttrELj4EEEEEEEv.exit.i ], [ %i.ij, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit28.i ] ; 8 uses
  %i.ej = icmp ult ptr %.sroa.064.0.i, %i.eh
  br i1 %i.ej, label %.lr.ph.i.i.i.i, label %bb.ax

.lr.ph.i.i.i.i:                                   ; preds = %bb.av, %bb.aw
  %.sroa.07.1.i.i.i = phi ptr [ %i.eo, %bb.aw ], [ %.sroa.064.0.i, %bb.av ] ; 3 uses
  %i.ek = load ptr, ptr %.sroa.07.1.i.i.i, align 8, !tbaa !1026
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 36
  %i.em = load i16, ptr %i.el, align 4
  %i.en = icmp eq i16 %i.em, 345
  br i1 %i.en, label %_ZN5clangneENS_22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i23.i = icmp eq ptr %i.eo, %i.eh
  br i1 %.not.i.i.i23.i, label %_ZN5clangneENS_22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread.i, label %.lr.ph.i.i.i.i, !llvm.loop !16

bb.ax:                                            ; preds = %bb.av
  %.not2.i3.i.i.i = icmp eq ptr %i.eh, %.sroa.064.0.i
  br i1 %.not2.i3.i.i.i, label %_ZN5clangneENS_22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread.i, label %.lr.ph.i4.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %bb.ax, %bb.ay
  %.sroa.0.1.i.i.i = phi ptr [ %i.et, %bb.ay ], [ %i.eh, %bb.ax ] ; 3 uses
  %i.ep = load ptr, ptr %.sroa.0.1.i.i.i, align 8, !tbaa !1026
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 36
  %i.er = load i16, ptr %i.eq, align 4
  %i.es = icmp eq i16 %i.er, 345
  br i1 %i.es, label %_ZN5clangneENS_22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i4.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8 ; 2 uses
  %.not.i5.i.i.i = icmp eq ptr %i.et, %.sroa.064.0.i
  br i1 %.not.i5.i.i.i, label %_ZN5clangneENS_22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread.i, label %.lr.ph.i4.i.i.i, !llvm.loop !16

_ZN5clangneENS_22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i: ; preds = %.lr.ph.i4.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.07.1.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.064.0.i, %.lr.ph.i4.i.i.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i.i ], [ %.sroa.0.1.i.i.i, %.lr.ph.i4.i.i.i ]
  %.not74.i = icmp eq ptr %.sroa.07.0.i.i.i, %.sroa.0.0.i.i.i
  br i1 %.not74.i, label %_ZN5clangneENS_22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread.i, label %bb.az

bb.az:                                            ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i
  %i.eu = load ptr, ptr %.sroa.064.0.i, align 8, !tbaa !1026 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 36
  %i.ew = load i16, ptr %i.ev, align 4
  %i.ex = icmp eq i16 %i.ew, 345
  br i1 %i.ex, label %_ZNK5clang22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.az, %.lr.ph.i.i.i
  %i.ey = phi ptr [ %i.ez, %.lr.ph.i.i.i ], [ %.sroa.064.0.i, %bb.az ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1026 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 36
  %i.fc = load i16, ptr %i.fb, align 4
  %i.fd = icmp eq i16 %i.fc, 345
  br i1 %i.fd, label %_ZNK5clang22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !17

_ZNK5clang22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.az
  %.sroa.064.1.i = phi ptr [ %.sroa.064.0.i, %bb.az ], [ %i.ez, %.lr.ph.i.i.i ]
  %i.fe = phi ptr [ %i.eu, %bb.az ], [ %i.fa, %.lr.ph.i.i.i ] ; 8 uses
  %i.ff = call noundef i32 @_ZNK5clang13OwnershipAttr10getOwnKindEv(ptr noundef nonnull align 8 dereferenceable(64) %i.fe)
  switch i32 %i.ff, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit28.i [
    i32 1, label %bb.ba
    i32 2, label %bb.bd
    i32 0, label %bb.bd
  ]

bb.ba:                                            ; preds = %_ZNK5clang22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit.i
  %.not.i.i24.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i24.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i5.thread, label %_ZNRSt8optionalIN4llvm9StringRefEE5valueEv.exit.i.i.i

_ZNRSt8optionalIN4llvm9StringRefEE5valueEv.exit.i.i.i: ; preds = %bb.ba
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !1033, !noalias !2465
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !986, !noalias !2465 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 4 uses
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !988, !noalias !2465
  %i.fm = and i64 %i.fl, 4294967295               ; 3 uses
  %.not.i.i.i25.i = icmp eq i64 %i.fm, 6
  br i1 %.not.i.i.i25.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i, label %_ZN12_GLOBAL__N_116AllocationFamilyC2ENS_20AllocationFamilyKindESt8optionalIN4llvm9StringRefEE.exit.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i:          ; preds = %_ZNRSt8optionalIN4llvm9StringRefEE5valueEv.exit.i.i.i
  %i.fn = load i32, ptr %i.fk, align 1
  %i.fo = xor i32 %i.fn, 1819042157
  %i.fp = getelementptr i8, ptr %i.fk, i64 4
  %i.fq = load i16, ptr %i.fp, align 1
  %i.fr = zext i16 %i.fq to i32
  %i.fs = xor i32 %i.fr, 25455
  %i.ft = or i32 %i.fo, %i.fs
  %i.fu = icmp ne i32 %i.ft, 0                    ; 3 uses
  %i.fv = zext i1 %i.fu to i32                    ; 0 uses
  %spec.select.i.i = select i1 %i.fu, i32 7, i32 1
  %spec.select64.i.i = zext i1 %i.fu to i8
  br label %_ZN12_GLOBAL__N_116AllocationFamilyC2ENS_20AllocationFamilyKindESt8optionalIN4llvm9StringRefEE.exit.i.i

_ZN12_GLOBAL__N_116AllocationFamilyC2ENS_20AllocationFamilyKindESt8optionalIN4llvm9StringRefEE.exit.i.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i, %_ZNRSt8optionalIN4llvm9StringRefEE5valueEv.exit.i.i.i
  %.sroa.037.0.i.i = phi i32 [ 7, %_ZNRSt8optionalIN4llvm9StringRefEE5valueEv.exit.i.i.i ], [ %spec.select.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i ] ; 2 uses
  %.sroa.9.0.i.i = phi i8 [ 1, %_ZNRSt8optionalIN4llvm9StringRefEE5valueEv.exit.i.i.i ], [ %spec.select64.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i.i ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !2466, !noalias !2465
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit16.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i: ; preds = %_ZN12_GLOBAL__N_116AllocationFamilyC2ENS_20AllocationFamilyKindESt8optionalIN4llvm9StringRefEE.exit.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fe, i64 56
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !2467, !noalias !2465
  %i.gb = load i32, ptr %i.ga, align 4, !noalias !2465 ; 2 uses
  %i.gc = and i32 %i.gb, 1073741823
  %31 = lshr i32 %i.gb, 30
  %32 = and i32 %31, 1
  %33 = xor i32 %32, -1
  %i.gd = add nsw i32 %i.gc, %33
  %i.ge = load ptr, ptr %1, align 8, !tbaa !106, !noalias !2465
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 96
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !2465
  %i.gh = call noundef ptr %i.gg(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.gd) #25, !noalias !2465, !inline_history !2457
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.1) #25, !noalias !2465
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !2465
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !2465
  store i32 %.sroa.037.0.i.i, ptr %11, align 8, !noalias !2465
  store ptr %i.fk, ptr %.sroa.351.0..sroa_idx.i.i, align 8, !noalias !2465
  store i64 %i.fm, ptr %.sroa.452.0..sroa_idx.i.i, align 8, !noalias !2465
  store i8 %.sroa.9.0.i.i, ptr %.sroa.553.0..sroa_idx.i.i, align 8, !noalias !2465
  %i.gi = load ptr, ptr %i.j, align 8, !tbaa !324, !noalias !2468 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !53, !noalias !2468 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %.sroa.3.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !240, !noalias !2468
  %i.gl = and i64 %.sroa.3.0.copyload.i.i.i.i.i.i, -8
  %i.gm = inttoptr i64 %i.gl to ptr
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !2468
  call void @_ZN5clang4ento16EnvironmentEntryC1EPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %i.gh, ptr noundef %i.gm) #25, !noalias !2468
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !74, !noalias !2468
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 240
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !888, !noalias !2468
  %i.gs = call { ptr, i8 } @_ZNK5clang4ento11Environment7getSValERKNS0_16EnvironmentEntryERNS0_11SValBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(412) %i.gr) #25, !noalias !2468 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !2468
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.gs, 0
  %.fca.1.extract.i.i.i = extractvalue { ptr, i8 } %i.gs, 1
  store ptr %.sroa.0.1, ptr %10, align 8, !tbaa !53, !noalias !2468
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.1) #25, !noalias !2468
  call fastcc void @_ZNK12_GLOBAL__N_113MallocChecker12MallocMemAuxERN5clang4ento14CheckerContextERKNS2_9CallEventENS2_4SValES8_N4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEENS_16AllocationFamilyE(ptr dead_on_unwind noalias nonnull writable align 8 %14, ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull align 8 dereferenceable(81) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr %.fca.0.extract.i.i.i, i8 %.fca.1.extract.i.i.i, ptr null, i8 1, ptr nofree noundef align 8 dereferenceable(8) %10, ptr noundef nonnull byval(%"struct.(anonymous namespace)::AllocationFamily") align 8 %11)
  %i.gt = load ptr, ptr %10, align 8, !tbaa !53, !noalias !2468 ; 2 uses
  %.not.i.i8.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i8.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.gt) #25
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !2465
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !2465
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i5.sink.split

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit16.i.i: ; preds = %_ZN12_GLOBAL__N_116AllocationFamilyC2ENS_20AllocationFamilyKindESt8optionalIN4llvm9StringRefEE.exit.i.i
  store ptr %.sroa.0.1, ptr %12, align 8, !tbaa !53, !noalias !2465
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.1) #25, !noalias !2465
  store i32 %.sroa.037.0.i.i, ptr %13, align 8, !noalias !2465
  store ptr %i.fk, ptr %.sroa.641.0..sroa_idx42.i.i, align 8, !noalias !2465
  store i64 %i.fm, ptr %.sroa.8.0..sroa_idx44.i.i, align 8, !noalias !2465
  store i8 %.sroa.9.0.i.i, ptr %.sroa.9.0..sroa_idx46.i.i, align 8, !noalias !2465
  call fastcc void @_ZNK12_GLOBAL__N_113MallocChecker12MallocMemAuxERN5clang4ento14CheckerContextERKNS2_9CallEventENS2_4SValES8_N4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEENS_16AllocationFamilyE(ptr dead_on_unwind noalias nonnull writable align 8 %14, ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull align 8 dereferenceable(81) %2, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr null, i8 1, ptr null, i8 1, ptr nofree noundef align 8 dereferenceable(8) %12, ptr noundef nonnull byval(%"struct.(anonymous namespace)::AllocationFamily") align 8 %13)
  %i.gu = load ptr, ptr %12, align 8, !tbaa !53, !noalias !2465 ; 2 uses
  %.not.i.i17.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i17.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i5, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i5.sink.split

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i5.thread: ; preds = %bb.ba
  store ptr null, ptr %14, align 8, !tbaa !53
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit28.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i5.sink.split: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit16.i.i, %bb.bc
  %.sroa.0.1.sink = phi ptr [ %.sroa.0.1, %bb.bc ], [ %i.gu, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit16.i.i ]
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.1.sink) #25
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i5

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i5: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i5.sink.split, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit16.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.gv = load ptr, ptr %14, align 8, !tbaa !53
  store ptr %.sroa.0.1, ptr %14, align 8, !tbaa !53
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.1) #25
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit28.sink.split.i

bb.bd:                                            ; preds = %_ZNK5clang22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit.i, %_ZNK5clang22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit.i
  %.not.i.i29.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i29.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit28.i, label %_ZNRSt8optionalIN4llvm9StringRefEE5valueEv.exit.i.i31.i

_ZNRSt8optionalIN4llvm9StringRefEE5valueEv.exit.i.i31.i: ; preds = %bb.bd
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.1) #25
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !1033, !noalias !2469
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !986, !noalias !2469 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 3 uses
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !988, !noalias !2469
  %i.hc = and i64 %i.hb, 4294967295               ; 2 uses
  %.not.i.i.i32.i = icmp eq i64 %i.hc, 6
  br i1 %.not.i.i.i32.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i39.i, label %_ZN12_GLOBAL__N_116AllocationFamilyC2ENS_20AllocationFamilyKindESt8optionalIN4llvm9StringRefEE.exit.i33.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i39.i:        ; preds = %_ZNRSt8optionalIN4llvm9StringRefEE5valueEv.exit.i.i31.i
  %i.hd = load i32, ptr %i.ha, align 1
  %i.he = xor i32 %i.hd, 1819042157
  %i.hf = getelementptr i8, ptr %i.ha, i64 4
  %i.hg = load i16, ptr %i.hf, align 1
  %i.hh = zext i16 %i.hg to i32
  %i.hi = xor i32 %i.hh, 25455
  %i.hj = or i32 %i.he, %i.hi
  %i.hk = icmp ne i32 %i.hj, 0                    ; 3 uses
  %i.hl = zext i1 %i.hk to i32                    ; 0 uses
  %spec.select.i41.i = zext i1 %i.hk to i8
  %spec.select42.i.i = select i1 %i.hk, i32 7, i32 1
  br label %_ZN12_GLOBAL__N_116AllocationFamilyC2ENS_20AllocationFamilyKindESt8optionalIN4llvm9StringRefEE.exit.i33.i

_ZN12_GLOBAL__N_116AllocationFamilyC2ENS_20AllocationFamilyKindESt8optionalIN4llvm9StringRefEE.exit.i33.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i39.i, %_ZNRSt8optionalIN4llvm9StringRefEE5valueEv.exit.i.i31.i
  %.sroa.8.0.i.i = phi i8 [ 1, %_ZNRSt8optionalIN4llvm9StringRefEE5valueEv.exit.i.i31.i ], [ %spec.select.i41.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i39.i ]
  %.sroa.027.0.i.i = phi i32 [ 7, %_ZNRSt8optionalIN4llvm9StringRefEE5valueEv.exit.i.i31.i ], [ %spec.select42.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i.i39.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !2469
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fe, i64 56
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !2467, !noalias !2469 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !2466, !noalias !2469 ; 2 uses
  %i.hq = zext i32 %i.hp to i64
  %.idx.i.i = shl nuw nsw i64 %i.hq, 2
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 %.idx.i.i
  %.not45.i.i = icmp eq i32 %i.hp, 0
  br i1 %.not45.i.i, label %_ZNK12_GLOBAL__N_113MallocChecker11FreeMemAttrERN5clang4ento14CheckerContextERKNS2_9CallEventEPKNS1_13OwnershipAttrEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEE.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN12_GLOBAL__N_116AllocationFamilyC2ENS_20AllocationFamilyKindESt8optionalIN4llvm9StringRefEE.exit.i33.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit20.i.i
  %.sroa.055.0.i = phi ptr [ %.sroa.055.1.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit20.i.i ], [ %.sroa.0.1, %_ZN12_GLOBAL__N_116AllocationFamilyC2ENS_20AllocationFamilyKindESt8optionalIN4llvm9StringRefEE.exit.i33.i ] ; 6 uses
  %.046.i.i = phi ptr [ %i.ih, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit20.i.i ], [ %i.hn, %_ZN12_GLOBAL__N_116AllocationFamilyC2ENS_20AllocationFamilyKindESt8optionalIN4llvm9StringRefEE.exit.i33.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !2469
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.055.0.i) #25, !noalias !2469
  %i.hs = load i32, ptr %.046.i.i, align 4, !noalias !2469 ; 2 uses
  %i.ht = and i32 %i.hs, 1073741823               ; 2 uses
  %34 = lshr i32 %i.hs, 30
  %35 = and i32 %34, 1                            ; 2 uses
  %i.hu = call noundef i32 @_ZNK5clang13OwnershipAttr10getOwnKindEv(ptr noundef nonnull align 8 dereferenceable(64) %i.fe), !noalias !2469
  call void @llvm.experimental.noalias.scope.decl(metadata !2470)
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !2469
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !2469
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !2469
  store i32 %.sroa.027.0.i.i, ptr %7, align 8, !noalias !2469
  store ptr %i.ha, ptr %.sroa.331.0..sroa_idx.i.i, align 8, !noalias !2469
  store i64 %i.hc, ptr %.sroa.432.0..sroa_idx.i.i, align 8, !noalias !2469
  store i8 %.sroa.8.0.i.i, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !noalias !2469
  %i.hv = load ptr, ptr %1, align 8, !tbaa !106, !noalias !2471
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 72
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !2471
  %i.hy = call noundef i32 %i.hx(ptr noundef nonnull align 8 dereferenceable(72) %1) #25, !noalias !2471, !inline_history !2464
  %36 = sub nsw i32 %i.ht, %35
  %i.hz = icmp ult i32 %i.hy, %36
  br i1 %i.hz, label %bb.be, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i

bb.be:                                            ; preds = %.lr.ph.i.preheader.i
  store ptr null, ptr %8, align 8, !tbaa !53, !alias.scope !2470, !noalias !2469
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i: ; preds = %.lr.ph.i.preheader.i
  %i.ia = icmp eq i32 %i.hu, 0
  %37 = xor i32 %35, -1
  %i.ib = add nsw i32 %i.ht, %37
  %i.ic = load ptr, ptr %1, align 8, !tbaa !106, !noalias !2471
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 96
  %i.ie = load ptr, ptr %i.id, align 8, !noalias !2471
  %i.if = call noundef ptr %i.ie(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.ib) #25, !noalias !2471, !inline_history !2464
  store ptr %.sroa.055.0.i, ptr %5, align 8, !tbaa !53, !noalias !2471
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.055.0.i) #25, !noalias !2471
  store i8 0, ptr %i.ei, align 8, !tbaa !310, !noalias !2471
  call fastcc void @_ZNK12_GLOBAL__N_113MallocChecker10FreeMemAuxERN5clang4ento14CheckerContextEPKNS1_4ExprERKNS2_9CallEventEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEEbRbNS_16AllocationFamilyEbSt8optionalINS2_4SValEE(ptr dead_on_unwind noalias nonnull writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull align 8 dereferenceable(81) %2, ptr noundef %i.if, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef align 8 dereferenceable(8) %5, i1 noundef zeroext %i.ia, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull byval(%"struct.(anonymous namespace)::AllocationFamily") align 8 %7, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.std::optional.1261") align 8 %6), !noalias !2469
  %i.ig = load ptr, ptr %5, align 8, !tbaa !53, !noalias !2471 ; 2 uses
  %.not.i.i9.i.i.i = icmp eq ptr %i.ig, null
  br i1 %.not.i.i9.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ig) #25, !noalias !2469
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i.i: ; preds = %bb.bf, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !2469
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !2469
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !2469
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.055.0.i) #25, !noalias !2469
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !53, !noalias !2469 ; 4 uses
  %.not44.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not44.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit20.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit18.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit18.i.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i.i
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.pr.i.i) #25, !noalias !2469
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.055.0.i) #25, !noalias !2469
  %.pr40.i.i = load ptr, ptr %8, align 8, !tbaa !53, !noalias !2469 ; 2 uses
  %.not.i.i19.i.i = icmp eq ptr %.pr40.i.i, null
  br i1 %.not.i.i19.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit20.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit18.i.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.pr40.i.i) #25, !noalias !2469
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit20.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit20.i.i: ; preds = %bb.bg, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit18.i.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i.i
  %.sroa.055.1.i = phi ptr [ %.pr.i.i, %bb.bg ], [ %.sroa.055.0.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i.i ], [ %.pr.i.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit18.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !2469
  %i.ih = getelementptr inbounds nuw i8, ptr %.046.i.i, i64 4 ; 2 uses
  %.not.i37.i = icmp eq ptr %i.ih, %i.hr
  br i1 %.not.i37.i, label %_ZNK12_GLOBAL__N_113MallocChecker11FreeMemAttrERN5clang4ento14CheckerContextERKNS2_9CallEventEPKNS1_13OwnershipAttrEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEE.exit.i, label %.lr.ph.i.preheader.i

_ZNK12_GLOBAL__N_113MallocChecker11FreeMemAttrERN5clang4ento14CheckerContextERKNS2_9CallEventEPKNS1_13OwnershipAttrEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEE.exit.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit20.i.i, %_ZN12_GLOBAL__N_116AllocationFamilyC2ENS_20AllocationFamilyKindESt8optionalIN4llvm9StringRefEE.exit.i33.i
  %i.ii = phi ptr [ %.sroa.0.1, %_ZN12_GLOBAL__N_116AllocationFamilyC2ENS_20AllocationFamilyKindESt8optionalIN4llvm9StringRefEE.exit.i33.i ], [ %.sroa.055.1.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit20.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !2469
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit28.sink.split.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit28.sink.split.i: ; preds = %_ZNK12_GLOBAL__N_113MallocChecker11FreeMemAttrERN5clang4ento14CheckerContextERKNS2_9CallEventEPKNS1_13OwnershipAttrEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEE.exit.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i5
  %.sroa.0.2 = phi ptr [ %i.gv, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i5 ], [ %i.ii, %_ZNK12_GLOBAL__N_113MallocChecker11FreeMemAttrERN5clang4ento14CheckerContextERKNS2_9CallEventEPKNS1_13OwnershipAttrEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEE.exit.i ]
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.1) #25
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit28.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit28.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i5.thread, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit28.sink.split.i, %bb.bd, %_ZNK5clang22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit.i
  %.sroa.0.3 = phi ptr [ %.sroa.0.1, %_ZNK5clang22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEdeEv.exit.i ], [ null, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i5.thread ], [ %.sroa.0.2, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit28.sink.split.i ], [ null, %bb.bd ]
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.064.1.i, i64 8
  br label %bb.av

_ZN5clangneENS_22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread.i: ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i, %bb.ax, %bb.ay, %bb.aw, %bb.at, %bb.as
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.at ], [ %.sroa.0.1, %bb.ay ], [ %.sroa.0.0.i, %bb.as ], [ %.sroa.0.1, %bb.aw ], [ %.sroa.0.1, %bb.ax ], [ %.sroa.0.1, %_ZN5clangneENS_22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i ] ; 5 uses
  %.not.i.i46.i = icmp eq ptr %.sroa.0.0, null    ; 2 uses
  br i1 %.not.i.i46.i, label %bb.bh, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit47.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit47.i: ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread.i
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.0) #25
  br label %.thread.i.i

bb.bh:                                            ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_13OwnershipAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.thread.i
  %i.ik = load ptr, ptr %i.j, align 8, !tbaa !324
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 56
  %.pr.i50.i = load ptr, ptr %i.il, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i51.i = icmp eq ptr %.pr.i50.i, null
  br i1 %.not.i.i.i51.i, label %_ZNK12_GLOBAL__N_113MallocChecker18checkOwnershipAttrEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS4_9CallEventERNS4_14CheckerContextE.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bh, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit47.i
  %i.im = phi ptr [ %.pr.i50.i, %bb.bh ], [ %.sroa.0.0, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit47.i ] ; 5 uses
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.im) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !324 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 56
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !53
  %.not75.i = icmp eq ptr %i.im, %i.io
  br i1 %.not75.i, label %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit.i, label %bb.bi

bb.bi:                                            ; preds = %.thread.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.ip, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.iq, i64 48, i1 false), !tbaa.struct !327
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !328, !nonnull !101, !align !131
  store ptr %i.im, ptr %4, align 8, !tbaa !53
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.im) #25
  %i.it = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %i.is, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.pre.i.i.i, i1 noundef zeroext false) #25 ; 0 uses
  %i.iu = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %.not.i.i23.i.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i.i23.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i.i: ; preds = %bb.bi
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.iu) #25
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i.i, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit.i

_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i.i, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.im) #25
  br i1 %.not.i.i46.i, label %_ZNK12_GLOBAL__N_113MallocChecker18checkOwnershipAttrEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS4_9CallEventERNS4_14CheckerContextE.exit.thread, label %_ZNK12_GLOBAL__N_113MallocChecker18checkOwnershipAttrEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS4_9CallEventERNS4_14CheckerContextE.exit.thread13

_ZNK12_GLOBAL__N_113MallocChecker18checkOwnershipAttrEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS4_9CallEventERNS4_14CheckerContextE.exit.thread13: ; preds = %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.0) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.bj

_ZNK12_GLOBAL__N_113MallocChecker18checkOwnershipAttrEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS4_9CallEventERNS4_14CheckerContextE.exit.thread: ; preds = %bb.bh, %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i

_ZNK12_GLOBAL__N_113MallocChecker18checkOwnershipAttrEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS4_9CallEventERNS4_14CheckerContextE.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit157.i, %bb.aq, %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br i1 %.not.i.i156.i, label %_ZNK12_GLOBAL__N_113MallocChecker8evalCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZNK12_GLOBAL__N_113MallocChecker18checkOwnershipAttrEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS4_9CallEventERNS4_14CheckerContextE.exit.thread13, %_ZNK12_GLOBAL__N_113MallocChecker18checkOwnershipAttrEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS4_9CallEventERNS4_14CheckerContextE.exit
  %.sroa.0.416 = phi ptr [ %.sroa.0.0, %_ZNK12_GLOBAL__N_113MallocChecker18checkOwnershipAttrEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS4_9CallEventERNS4_14CheckerContextE.exit.thread13 ], [ %.sroa.0.0.i, %_ZNK12_GLOBAL__N_113MallocChecker18checkOwnershipAttrEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS4_9CallEventERNS4_14CheckerContextE.exit ]
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.416) #25
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i: ; preds = %_ZNK12_GLOBAL__N_113MallocChecker18checkOwnershipAttrEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS4_9CallEventERNS4_14CheckerContextE.exit.thread, %bb.bj, %_ZN12_GLOBAL__N_113MallocChecker26isFreeingOwnershipAttrCallERKN5clang4ento9CallEventE.exit.thread, %bb.ak, %_ZNKSt8functionIFvPKN12_GLOBAL__N_113MallocCheckerEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS7_9CallEventERNS7_14CheckerContextEEEclES3_SA_SD_SF_.exit147.i, %bb.ad, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit129.i, %bb.aa, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit125.i, %bb.t, %_ZNKSt8functionIFvPKN12_GLOBAL__N_113MallocCheckerEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS7_9CallEventERNS7_14CheckerContextEEEclES3_SA_SD_SF_.exit113.i, %bb.n, %_ZNKSt8functionIFvPKN12_GLOBAL__N_113MallocCheckerEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS7_9CallEventERNS7_14CheckerContextEEEclES3_SA_SD_SF_.exit95.i, %bb.h, %_ZNKSt8functionIFvPKN12_GLOBAL__N_113MallocCheckerEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS7_9CallEventERNS7_14CheckerContextEEEclES3_SA_SD_SF_.exit.i
  %.sroa.0.1.i = phi ptr [ %i.ar, %bb.t ], [ %i.bx, %bb.aa ], [ %i.ci, %bb.ak ], [ %i.m, %_ZN12_GLOBAL__N_113MallocChecker26isFreeingOwnershipAttrCallERKN5clang4ento9CallEventE.exit.thread ], [ %i.m, %bb.ad ], [ %i.ae, %bb.n ], [ %i.m, %bb.h ], [ %i.m, %_ZNKSt8functionIFvPKN12_GLOBAL__N_113MallocCheckerEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS7_9CallEventERNS7_14CheckerContextEEEclES3_SA_SD_SF_.exit.i ], [ %i.ae, %_ZNKSt8functionIFvPKN12_GLOBAL__N_113MallocCheckerEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS7_9CallEventERNS7_14CheckerContextEEEclES3_SA_SD_SF_.exit95.i ], [ %i.ar, %_ZNKSt8functionIFvPKN12_GLOBAL__N_113MallocCheckerEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS7_9CallEventERNS7_14CheckerContextEEEclES3_SA_SD_SF_.exit113.i ], [ %i.bx, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit125.i ], [ %i.m, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit129.i ], [ %i.ci, %_ZNKSt8functionIFvPKN12_GLOBAL__N_113MallocCheckerEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS7_9CallEventERNS7_14CheckerContextEEEclES3_SA_SD_SF_.exit147.i ], [ %.sroa.0.0.i, %_ZNK12_GLOBAL__N_113MallocChecker18checkOwnershipAttrEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS4_9CallEventERNS4_14CheckerContextE.exit.thread ], [ %.sroa.0.0.i, %bb.bj ] ; 2 uses
  %.4.i = phi i1 [ true, %bb.t ], [ true, %bb.aa ], [ true, %bb.ak ], [ false, %_ZN12_GLOBAL__N_113MallocChecker26isFreeingOwnershipAttrCallERKN5clang4ento9CallEventE.exit.thread ], [ true, %bb.ad ], [ true, %bb.n ], [ true, %bb.h ], [ true, %_ZNKSt8functionIFvPKN12_GLOBAL__N_113MallocCheckerEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS7_9CallEventERNS7_14CheckerContextEEEclES3_SA_SD_SF_.exit.i ], [ true, %_ZNKSt8functionIFvPKN12_GLOBAL__N_113MallocCheckerEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS7_9CallEventERNS7_14CheckerContextEEEclES3_SA_SD_SF_.exit95.i ], [ true, %_ZNKSt8functionIFvPKN12_GLOBAL__N_113MallocCheckerEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS7_9CallEventERNS7_14CheckerContextEEEclES3_SA_SD_SF_.exit113.i ], [ true, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit125.i ], [ true, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit129.i ], [ true, %_ZNKSt8functionIFvPKN12_GLOBAL__N_113MallocCheckerEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS7_9CallEventERNS7_14CheckerContextEEEclES3_SA_SD_SF_.exit147.i ], [ true, %_ZNK12_GLOBAL__N_113MallocChecker18checkOwnershipAttrEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS4_9CallEventERNS4_14CheckerContextE.exit.thread ], [ true, %bb.bj ] ; 2 uses
  %.not.i.i160.i = icmp eq ptr %.sroa.0.1.i, null
  br i1 %.not.i.i160.i, label %_ZNK12_GLOBAL__N_113MallocChecker8evalCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.1.i) #25
  br label %_ZNK12_GLOBAL__N_113MallocChecker8evalCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit

_ZNK12_GLOBAL__N_113MallocChecker8evalCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit: ; preds = %_ZNK12_GLOBAL__N_113MallocChecker18checkOwnershipAttrEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS4_9CallEventERNS4_14CheckerContextE.exit, %bb.a, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i, %bb.bk
  %.5.i = phi i1 [ false, %bb.a ], [ %.4.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i ], [ %.4.i, %bb.bk ], [ true, %_ZNK12_GLOBAL__N_113MallocChecker18checkOwnershipAttrEN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERKNS4_9CallEventERNS4_14CheckerContextE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  ret i1 %.5.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_113MallocChecker16MallocBindRetValERN5clang4ento14CheckerContextERKNS2_9CallEventEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEEb(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(81) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, i1 noundef zeroext %4) unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.clang::ento::BlockCounter", align 8 ; 4 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !106
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(72) %2) #25 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !240
  %i.f = and i64 %.sroa.0.0.copyload.i, -16
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !891
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !240
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !891
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = load i8, ptr %i.m, align 16              ; 3 uses
  switch i8 %i.n, label %bb.b [
    i8 40, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread
    i8 31, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread
    i8 11, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.o = and i8 %i.n, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.o, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq i8 %i.n, 13
  br i1 %i.p, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread1

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit:  ; preds = %bb.c
  %i.q = load i32, ptr %i.m, align 16
  %i.r = and i32 %i.q, 536346624
  %i.s = icmp eq i32 %i.r, 264765440
end_hunk_0
