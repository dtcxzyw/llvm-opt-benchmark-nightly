inline.NumInlined: 8192
inline.NumDeleted: 1259
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZN2v88internal15JsonStringifier15SerializeStringILb0EEEbNS0_6HandleINS0_6StringEEE:bb.a
  %i.nt = load ptr, ptr %i.ns, align 8, !noalias !102
  %i.nu = tail call noundef ptr %i.nt(ptr noundef nonnull align 8 dereferenceable(16) %i.nf) #21, !noalias !102, !inline_history !80
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit83

bb.da:                                            ; preds = %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit95.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22, !noalias !105
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit83: ; preds = %bb.cy, %bb.cu, %bb.cz, %bb.cv, %bb.cr, %bb.cq
  %.sroa.0402.sroa.0.0.ph = phi ptr [ %i.nq, %bb.cy ], [ %i.my, %bb.cu ], [ %i.nu, %bb.cz ], [ %i.nc, %bb.cv ], [ %i.mk, %bb.cr ], [ %i.mj, %bb.cq ]
  %.sroa.0402.sroa.8.0.ph = phi i32 [ 2, %bb.cy ], [ 1, %bb.cu ], [ 2, %bb.cz ], [ 1, %bb.cv ], [ 2, %bb.cr ], [ 1, %bb.cq ]
  store ptr %.sroa.0402.sroa.0.0.ph, ptr %3, align 8
  %.sroa.0402.sroa.7.0..sroa_idx456 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.md, ptr %.sroa.0402.sroa.7.0..sroa_idx456, align 8
  %.sroa.0402.sroa.8.0..sroa_idx462 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sroa.0402.sroa.8.0.ph, ptr %.sroa.0402.sroa.8.0..sroa_idx462, align 4
  %.sroa.0402.sroa.9.0..sroa_idx468 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %8, ptr %.sroa.0402.sroa.9.0..sroa_idx468, align 8
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i34

bb.db:                                            ; preds = %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit95.i, %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit95.i, %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit95.i, %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit95.i, %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit95.i, %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit95.i
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %3, ptr noundef nonnull align 4 dereferenceable(16) %i.mb, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %2) #21
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i34

_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i34: ; preds = %bb.db, %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit83
  %i.nv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.nw = load i8, ptr %i.nv, align 8, !range !7, !noundef !8
  %i.nx = trunc nuw i8 %i.nw to i1
  store i8 0, ptr %i.nv, align 8
  br i1 %i.nx, label %bb.dc, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit85

bb.dc:                                            ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i34
  %i.ny = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i.i.i84 = icmp eq ptr %i.ny, null
  br i1 %.not.i.i.i.i.i.i84, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit85, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ny) #21
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit85

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit85: ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i34, %bb.dc, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !85
  %i.nz = load ptr, ptr %3, align 8               ; 9 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ob = load i32, ptr %i.oa, align 8            ; 4 uses
  %i.oc = zext i32 %i.ob to i64                   ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.od = icmp ugt i32 %i.ob, 16384
  br i1 %i.od, label %.lr.ph743, label %.split654, !prof !53

_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i35.preheader: ; preds = %.split654
  %.not801 = icmp eq i32 %i.ob, 0
  br i1 %.not801, label %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i35._crit_edge, label %.lr.ph743

.lr.ph743:                                        ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit85, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i35.preheader
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  br label %bb.fl

.split654:                                        ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit85
  %i.of = shl nuw nsw i64 %i.oc, 3
  %i.og = load i64, ptr %i.lx, align 8
  %i.oh = load i64, ptr %i.ls, align 8            ; 2 uses
  %i.oi = sub i64 %i.og, %i.oh
  %i.oj = icmp ugt i64 %i.oi, %i.of
  br i1 %i.oj, label %bb.de, label %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i35.preheader, !prof !11

bb.de:                                            ; preds = %.split654
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ol = load ptr, ptr %i.ok, align 8
  %i.om = getelementptr inbounds nuw [2 x i8], ptr %i.ol, i64 %i.oh ; 3 uses
  %.not800 = icmp eq i32 %i.ob, 0
  br i1 %.not800, label %._crit_edge, label %.lr.ph700

._crit_edge:                                      ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, %bb.de
  %.sroa.6354.0.lcssa = phi ptr [ %i.om, %bb.de ], [ %.sroa.6354.4, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ] ; 19 uses
  %.053.i.lcssa = phi i64 [ 0, %bb.de ], [ %.255.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ] ; 3 uses
  %.0.i56.lcssa = phi i1 [ false, %bb.de ], [ %.2.i61, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ]
  %i.on = icmp eq i64 %.053.i.lcssa, %i.oc
  br i1 %i.on, label %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb0EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit, label %bb.df

bb.df:                                            ; preds = %._crit_edge
  %i.oo = sub i64 %i.oc, %.053.i.lcssa            ; 3 uses
  %i.op = getelementptr inbounds nuw [2 x i8], ptr %i.nz, i64 %.053.i.lcssa ; 17 uses
  switch i64 %i.oo, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i [
    i64 1, label %bb.dg
    i64 2, label %bb.dh
    i64 3, label %bb.di
    i64 4, label %bb.dj
    i64 5, label %bb.dk
    i64 6, label %bb.dl
    i64 7, label %bb.dm
    i64 8, label %bb.dn
    i64 9, label %bb.do
    i64 10, label %bb.dp
    i64 11, label %bb.dq
    i64 12, label %bb.dr
    i64 13, label %bb.ds
    i64 14, label %bb.dt
    i64 15, label %bb.du
    i64 16, label %bb.dv
    i64 0, label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit
  ]

bb.dg:                                            ; preds = %bb.df
  %i.oq = load i16, ptr %i.op, align 2
  store i16 %i.oq, ptr %.sroa.6354.0.lcssa, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dh:                                            ; preds = %bb.df
  %i.or = load i32, ptr %i.op, align 2
  store i32 %i.or, ptr %.sroa.6354.0.lcssa, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.di:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(6) %i.op, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dj:                                            ; preds = %bb.df
  %i.os = load i64, ptr %i.op, align 2
  store i64 %i.os, ptr %.sroa.6354.0.lcssa, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dk:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(10) %i.op, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dl:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(12) %i.op, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dm:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(14) %i.op, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dn:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(16) %i.op, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.do:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(18) %i.op, i64 18, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dp:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(20) %i.op, i64 20, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dq:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(22) %i.op, i64 22, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dr:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(24) %i.op, i64 24, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ds:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(26) %i.op, i64 26, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dt:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(28) %i.op, i64 28, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.du:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(30) %i.op, i64 30, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dv:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(32) %i.op, i64 32, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.df
  %.idx.i.i.i = shl nuw nsw i64 %i.oo, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.sroa.6354.0.lcssa, ptr nonnull align 2 %i.op, i64 %.idx.i.i.i, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit:    ; preds = %bb.df, %bb.dg, %bb.dh, %bb.di, %bb.dj, %bb.dk, %bb.dl, %bb.dm, %bb.dn, %bb.do, %bb.dp, %bb.dq, %bb.dr, %bb.ds, %bb.dt, %bb.du, %bb.dv, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i
  %i.ot = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6354.0.lcssa, i64 %i.oo
  br label %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb0EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit

.lr.ph700:                                        ; preds = %bb.de, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread
  %.0.i56699 = phi i1 [ %.2.i61, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ false, %bb.de ] ; 2 uses
  %.053.i698 = phi i64 [ %.255.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %bb.de ] ; 7 uses
  %.056.i697 = phi i64 [ %i.qz, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %bb.de ] ; 12 uses
  %.sroa.6354.0696 = phi ptr [ %.sroa.6354.4, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ %i.om, %bb.de ] ; 40 uses
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %i.nz, i64 %.056.i697
  %i.ov = load i16, ptr %i.ou, align 2            ; 11 uses
  %i.ow = and i16 %i.ov, -2
  %or.cond.i = icmp eq i16 %i.ow, 32
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph700
  %i.ox = icmp ugt i16 %i.ov, 34
  %i.oy = icmp ne i16 %i.ov, 92
  %or.cond5.i = and i1 %i.ox, %i.oy
  %i.oz = add i16 %i.ov, 8192
  %i.pa = icmp ult i16 %i.oz, -2048
  %or.cond = and i1 %or.cond5.i, %i.pa
  br i1 %or.cond, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread655

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread655: ; preds = %bb.dw
  %9 = icmp slt i16 %i.ov, -8192
  %i.pb = icmp eq i64 %.053.i698, %.056.i697      ; 2 uses
  br i1 %9, label %bb.dx, label %bb.et

bb.dx:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread655
  br i1 %i.pb, label %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit61.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.pc = sub i64 %.056.i697, %.053.i698          ; 3 uses
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %i.nz, i64 %.053.i698 ; 17 uses
  switch i64 %i.pc, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i88 [
    i64 1, label %bb.dz
    i64 2, label %bb.ea
    i64 3, label %bb.eb
    i64 4, label %bb.ec
    i64 5, label %bb.ed
    i64 6, label %bb.ee
    i64 7, label %bb.ef
    i64 8, label %bb.eg
    i64 9, label %bb.eh
    i64 10, label %bb.ei
    i64 11, label %bb.ej
    i64 12, label %bb.ek
    i64 13, label %bb.el
    i64 14, label %bb.em
    i64 15, label %bb.en
    i64 16, label %bb.eo
    i64 0, label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.pe = load i16, ptr %i.pd, align 2
  store i16 %i.pe, ptr %.sroa.6354.0696, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.ea:                                            ; preds = %bb.dy
  %i.pf = load i32, ptr %i.pd, align 2
  store i32 %i.pf, ptr %.sroa.6354.0696, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.eb:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(6) %i.pd, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.ec:                                            ; preds = %bb.dy
  %i.pg = load i64, ptr %i.pd, align 2
  store i64 %i.pg, ptr %.sroa.6354.0696, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.ed:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(10) %i.pd, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.ee:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(12) %i.pd, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.ef:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(14) %i.pd, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.eg:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(16) %i.pd, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.eh:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(18) %i.pd, i64 18, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.ei:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(20) %i.pd, i64 20, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.ej:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(22) %i.pd, i64 22, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.ek:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(24) %i.pd, i64 24, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.el:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(26) %i.pd, i64 26, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.em:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(28) %i.pd, i64 28, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.en:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(30) %i.pd, i64 30, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.eo:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(32) %i.pd, i64 32, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i88: ; preds = %bb.dy
  %.idx.i.i.i89 = shl nuw nsw i64 %i.pc, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.sroa.6354.0696, ptr nonnull align 2 %i.pd, i64 %.idx.i.i.i89, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90:  ; preds = %bb.dy, %bb.dz, %bb.ea, %bb.eb, %bb.ec, %bb.ed, %bb.ee, %bb.ef, %bb.eg, %bb.eh, %bb.ei, %bb.ej, %bb.ek, %bb.el, %bb.em, %bb.en, %bb.eo, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i88
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6354.0696, i64 %i.pc
  br label %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit61.i

_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit61.i: ; preds = %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90, %bb.dx
  %.sroa.6354.5 = phi ptr [ %.sroa.6354.0696, %bb.dx ], [ %i.ph, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90 ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.pi = icmp samesign ult i16 %i.ov, -9216
  br i1 %i.pi, label %bb.ep, label %.preheader685.preheader

.preheader685.preheader:                          ; preds = %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit61.i
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.6354.5, i64 2
  store i16 92, ptr %.sroa.6354.5, align 2
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.6354.5, i64 4 ; 2 uses
  store i16 117, ptr %i.pj, align 2
  %i.pl = uitofp i16 %i.ov to double
  %i.pm = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.pl, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.pn = extractvalue { i64, ptr } %i.pm, 0      ; 2 uses
  %i.po = extractvalue { i64, ptr } %i.pm, 1
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.pk, ptr noundef %i.po, i64 noundef %i.pn)
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %i.pk, i64 %i.pn
  br label %bb.es

bb.ep:                                            ; preds = %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit61.i
  %i.pq = add nuw i64 %.056.i697, 1               ; 3 uses
  %i.pr = icmp ult i64 %i.pq, %i.oc
  br i1 %i.pr, label %bb.eq, label %.preheader684.preheader

.preheader684.preheader:                          ; preds = %bb.ep
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.6354.5, i64 2
  store i16 92, ptr %.sroa.6354.5, align 2
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.6354.5, i64 4 ; 2 uses
  store i16 117, ptr %i.ps, align 2
  %i.pu = uitofp i16 %i.ov to double
  %i.pv = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.pu, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.pw = extractvalue { i64, ptr } %i.pv, 0      ; 2 uses
  %i.px = extractvalue { i64, ptr } %i.pv, 1
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.pt, ptr noundef %i.px, i64 noundef %i.pw)
  %i.py = getelementptr inbounds nuw [2 x i8], ptr %i.pt, i64 %i.pw
  br label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %i.nz, i64 %i.pq
  %i.qa = load i16, ptr %i.pz, align 2            ; 2 uses
  %i.qb = and i16 %i.qa, -1024
  %i.qc = icmp eq i16 %i.qb, -9216
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.6354.5, i64 2 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.6354.5, i64 4 ; 3 uses
  br i1 %i.qc, label %bb.er, label %.preheader683.preheader

.preheader683.preheader:                          ; preds = %bb.eq
  store i16 92, ptr %.sroa.6354.5, align 2
  store i16 117, ptr %i.qd, align 2
  %i.qf = uitofp i16 %i.ov to double
  %i.qg = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.qf, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.qh = extractvalue { i64, ptr } %i.qg, 0      ; 2 uses
  %i.qi = extractvalue { i64, ptr } %i.qg, 1
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.qe, ptr noundef %i.qi, i64 noundef %i.qh)
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.qe, i64 %i.qh
  br label %bb.es

bb.er:                                            ; preds = %bb.eq
  store i16 %i.ov, ptr %.sroa.6354.5, align 2
  store i16 %i.qa, ptr %i.qd, align 2
  br label %bb.es

bb.es:                                            ; preds = %.preheader685.preheader, %.preheader684.preheader, %.preheader683.preheader, %bb.er
  %.sroa.6354.7 = phi ptr [ %i.qe, %bb.er ], [ %i.qj, %.preheader683.preheader ], [ %i.py, %.preheader684.preheader ], [ %i.pp, %.preheader685.preheader ]
  %.258.i = phi i64 [ %i.pq, %bb.er ], [ %.056.i697, %.preheader683.preheader ], [ %.056.i697, %.preheader684.preheader ], [ %.056.i697, %.preheader685.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit.i

bb.et:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread655
  br i1 %i.pb, label %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit60.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.qk = sub i64 %.056.i697, %.053.i698          ; 3 uses
  %i.ql = getelementptr inbounds nuw [2 x i8], ptr %i.nz, i64 %.053.i698 ; 17 uses
  switch i64 %i.qk, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i93 [
    i64 1, label %bb.ev
    i64 2, label %bb.ew
    i64 3, label %bb.ex
    i64 4, label %bb.ey
    i64 5, label %bb.ez
    i64 6, label %bb.fa
    i64 7, label %bb.fb
    i64 8, label %bb.fc
    i64 9, label %bb.fd
    i64 10, label %bb.fe
    i64 11, label %bb.ff
    i64 12, label %bb.fg
    i64 13, label %bb.fh
    i64 14, label %bb.fi
    i64 15, label %bb.fj
    i64 16, label %bb.fk
    i64 0, label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95
  ]

bb.ev:                                            ; preds = %bb.eu
  %i.qm = load i16, ptr %i.ql, align 2
  store i16 %i.qm, ptr %.sroa.6354.0696, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.ew:                                            ; preds = %bb.eu
  %i.qn = load i32, ptr %i.ql, align 2
  store i32 %i.qn, ptr %.sroa.6354.0696, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.ex:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(6) %i.ql, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.ey:                                            ; preds = %bb.eu
  %i.qo = load i64, ptr %i.ql, align 2
  store i64 %i.qo, ptr %.sroa.6354.0696, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.ez:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(10) %i.ql, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.fa:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(12) %i.ql, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.fb:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(14) %i.ql, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.fc:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(16) %i.ql, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.fd:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(18) %i.ql, i64 18, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.fe:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(20) %i.ql, i64 20, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.ff:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(22) %i.ql, i64 22, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.fg:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(24) %i.ql, i64 24, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.fh:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(26) %i.ql, i64 26, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.fi:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(28) %i.ql, i64 28, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.fj:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(30) %i.ql, i64 30, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.fk:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(32) %i.ql, i64 32, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i93: ; preds = %bb.eu
  %.idx.i.i.i94 = shl nuw nsw i64 %i.qk, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.sroa.6354.0696, ptr nonnull align 2 %i.ql, i64 %.idx.i.i.i94, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95:  ; preds = %bb.eu, %bb.ev, %bb.ew, %bb.ex, %bb.ey, %bb.ez, %bb.fa, %bb.fb, %bb.fc, %bb.fd, %bb.fe, %bb.ff, %bb.fg, %bb.fh, %bb.fi, %bb.fj, %bb.fk, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i93
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6354.0696, i64 %i.qk
  br label %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit60.i

_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit60.i: ; preds = %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95, %bb.et
  %.sroa.6354.1 = phi ptr [ %.sroa.6354.0696, %bb.et ], [ %i.qp, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95 ] ; 2 uses
  %i.qq = zext i16 %i.ov to i64
  %i.qr = shl nuw nsw i64 %i.qq, 3
  %i.qs = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.qr ; 2 uses
  %i.qt = load i8, ptr %i.qs, align 1             ; 2 uses
  %.not.i.i58687 = icmp eq i8 %i.qt, 0
  br i1 %.not.i.i58687, label %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit60.i, %.lr.ph
  %i.qu = phi i8 [ %i.qy, %.lr.ph ], [ %i.qt, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit60.i ]
  %.0.i.i57689 = phi ptr [ %i.qv, %.lr.ph ], [ %i.qs, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit60.i ]
  %.sroa.6354.2688 = phi ptr [ %i.qx, %.lr.ph ], [ %.sroa.6354.1, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit60.i ] ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.0.i.i57689, i64 1 ; 2 uses
  %i.qw = zext i8 %i.qu to i16
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.6354.2688, i64 2 ; 2 uses
  store i16 %i.qw, ptr %.sroa.6354.2688, align 2
  %i.qy = load i8, ptr %i.qv, align 1             ; 2 uses
  %.not.i.i58 = icmp eq i8 %i.qy, 0
  br i1 %.not.i.i58, label %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit.i, label %.lr.ph, !llvm.loop !82

_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit.i: ; preds = %.lr.ph, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit60.i, %bb.es
  %.sroa.6354.3 = phi ptr [ %.sroa.6354.7, %bb.es ], [ %.sroa.6354.1, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit60.i ], [ %i.qx, %.lr.ph ]
  %.3.i59 = phi i64 [ %.258.i, %bb.es ], [ %.056.i697, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit60.i ], [ %.056.i697, %.lr.ph ] ; 2 uses
  %.154.i = add nuw i64 %.3.i59, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread: ; preds = %bb.dw, %.lr.ph700, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit.i
  %.sroa.6354.4 = phi ptr [ %.sroa.6354.0696, %bb.dw ], [ %.sroa.6354.3, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit.i ], [ %.sroa.6354.0696, %.lr.ph700 ] ; 2 uses
  %.4.i60 = phi i64 [ %.056.i697, %bb.dw ], [ %.3.i59, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit.i ], [ %.056.i697, %.lr.ph700 ]
  %.255.i = phi i64 [ %.053.i698, %bb.dw ], [ %.154.i, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit.i ], [ %.053.i698, %.lr.ph700 ] ; 2 uses
  %.2.i61 = phi i1 [ %.0.i56699, %bb.dw ], [ true, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit.i ], [ %.0.i56699, %.lr.ph700 ] ; 2 uses
  %i.qz = add nuw i64 %.4.i60, 1                  ; 2 uses
  %i.ra = icmp ult i64 %i.qz, %i.oc
  br i1 %i.ra, label %.lr.ph700, label %._crit_edge, !llvm.loop !106

_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb0EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit: ; preds = %._crit_edge, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit
  %.sroa.6354.10 = phi ptr [ %.sroa.6354.0.lcssa, %._crit_edge ], [ %i.ot, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit ]
  %i.rb = ptrtoint ptr %.sroa.6354.10 to i64
  %i.rc = ptrtoint ptr %i.om to i64
  %i.rd = sub i64 %i.rb, %i.rc
  %i.re = ashr exact i64 %i.rd, 1
  %i.rf = load i64, ptr %i.ls, align 8
  %i.rg = add i64 %i.re, %i.rf
  br label %bb.gx

_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i35._crit_edge: ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i35.preheader
  %.045.i.lcssa = phi i64 [ 0, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i35.preheader ], [ %.247.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread ]
  %.0.i36.lcssa = phi i1 [ false, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i35.preheader ], [ %.2.i38, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread ]
  call void @_ZN2v88internal15JsonStringifier15AppendSubstringItEEvPKT_mm(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef %i.nz, i64 noundef %.045.i.lcssa, i64 noundef %i.oc)
  %.pre831 = load i64, ptr %i.ls, align 8
  br label %bb.gx

bb.fl:                                            ; preds = %.lr.ph743, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread
  %.0.i36742 = phi i1 [ false, %.lr.ph743 ], [ %.2.i38, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread ] ; 2 uses
  %.045.i741 = phi i64 [ 0, %.lr.ph743 ], [ %.247.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread ] ; 3 uses
  %.048.i740 = phi i64 [ 0, %.lr.ph743 ], [ %i.aar, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread ] ; 21 uses
  %i.rh = getelementptr inbounds nuw [2 x i8], ptr %i.nz, i64 %.048.i740
  %i.ri = load i16, ptr %i.rh, align 2            ; 11 uses
  %i.rj = and i16 %i.ri, -2
  %or.cond.i96 = icmp eq i16 %i.rj, 32
  br i1 %or.cond.i96, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.rk = icmp ugt i16 %i.ri, 34
  %i.rl = icmp ne i16 %i.ri, 92
  %or.cond5.i97 = and i1 %i.rk, %i.rl
  %i.rm = add i16 %i.ri, 8192
  %i.rn = icmp ult i16 %i.rm, -2048
  %or.cond659 = and i1 %or.cond5.i97, %i.rn
  br i1 %or.cond659, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread656

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread656: ; preds = %bb.fm
  %10 = icmp slt i16 %i.ri, -8192
  call void @_ZN2v88internal15JsonStringifier15AppendSubstringItEEvPKT_mm(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef nonnull %i.nz, i64 noundef %.045.i741, i64 noundef %.048.i740)
  br i1 %10, label %bb.fn, label %bb.gu

bb.fn:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ro = icmp samesign ult i16 %i.ri, -9216
  br i1 %i.ro, label %bb.fo, label %bb.gl

bb.fo:                                            ; preds = %bb.fn
  %i.rp = add nuw i64 %.048.i740, 1               ; 4 uses
  %i.rq = icmp ult i64 %i.rp, %i.oc
  br i1 %i.rq, label %bb.fp, label %bb.gc

bb.fp:                                            ; preds = %bb.fo
  %i.rr = getelementptr inbounds nuw [2 x i8], ptr %i.nz, i64 %i.rp
  %i.rs = load i16, ptr %i.rr, align 2            ; 2 uses
  %i.rt = and i16 %i.rs, -1024
  %i.ru = icmp eq i16 %i.rt, -9216
  br i1 %i.ru, label %bb.fq, label %bb.ft

bb.fq:                                            ; preds = %bb.fp
  %i.rv = load ptr, ptr %i.lq, align 8
  %i.rw = load i64, ptr %i.ls, align 8            ; 2 uses
  %i.rx = add i64 %i.rw, 1
  store i64 %i.rx, ptr %i.ls, align 8
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %i.rv, i64 %i.rw
  store i16 %i.ri, ptr %i.ry, align 2
  %i.rz = load i64, ptr %i.ls, align 8            ; 2 uses
  %i.sa = load i64, ptr %i.lx, align 8
  %i.sb = icmp eq i64 %i.rz, %i.sa
  br i1 %i.sb, label %bb.fr, label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit62, !prof !6

bb.fr:                                            ; preds = %bb.fq
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  %.pre830 = load i64, ptr %i.ls, align 8
  br label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit62

_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit62: ; preds = %bb.fq, %bb.fr
  %i.sc = phi i64 [ %i.rz, %bb.fq ], [ %.pre830, %bb.fr ] ; 2 uses
  %i.sd = load ptr, ptr %i.lq, align 8
  %i.se = add i64 %i.sc, 1
  store i64 %i.se, ptr %i.ls, align 8
  %i.sf = getelementptr inbounds nuw [2 x i8], ptr %i.sd, i64 %i.sc
  store i16 %i.rs, ptr %i.sf, align 2
  %i.sg = load i64, ptr %i.ls, align 8
  %i.sh = load i64, ptr %i.lx, align 8
  %i.si = icmp eq i64 %i.sg, %i.sh
  br i1 %i.si, label %bb.fs, label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit, !prof !6

bb.fs:                                            ; preds = %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit62
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit

bb.ft:                                            ; preds = %bb.fp
  %i.sj = load i32, ptr %i.at, align 8
  %i.sk = icmp eq i32 %i.sj, 0
  %i.sl = load i64, ptr %i.ls, align 8            ; 6 uses
  br i1 %i.sk, label %bb.fu, label %.critedge.preheader.preheader

.critedge.preheader.preheader:                    ; preds = %bb.ft
  %i.sm = load ptr, ptr %i.lq, align 8
  %i.sn = add i64 %i.sl, 1
  store i64 %i.sn, ptr %i.ls, align 8
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %i.sm, i64 %i.sl
  store i16 92, ptr %i.so, align 2
  %i.sp = load i64, ptr %i.ls, align 8            ; 2 uses
  %i.sq = load i64, ptr %i.lx, align 8
  %i.sr = icmp eq i64 %i.sp, %i.sq
  br i1 %i.sr, label %bb.fx, label %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit90.i, !prof !6

bb.fu:                                            ; preds = %bb.ft
  %i.ss = load i64, ptr %i.lx, align 8
  %i.st = sub i64 %i.ss, %i.sl
  %i.su = icmp ugt i64 %i.st, 3
  %i.sv = load ptr, ptr %i.oe, align 8            ; 2 uses
  br i1 %i.su, label %bb.fv, label %.preheader670.preheader

.preheader670.preheader:                          ; preds = %bb.fu
  %i.sw = add i64 %i.sl, 1
  store i64 %i.sw, ptr %i.ls, align 8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.sl
  store i8 92, ptr %i.sx, align 1
  %i.sy = load i64, ptr %i.ls, align 8            ; 2 uses
  %i.sz = load i64, ptr %i.lx, align 8
  %i.ta = icmp eq i64 %i.sy, %i.sz
  br i1 %i.ta, label %bb.fw, label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit84.i, !prof !6

bb.fv:                                            ; preds = %bb.fu
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.sl
  store i16 30044, ptr %i.tb, align 1
  %i.tc = load i64, ptr %i.ls, align 8
  %i.td = add i64 %i.tc, 2                        ; 2 uses
  store i64 %i.td, ptr %i.ls, align 8
  %i.te = load i64, ptr %i.lx, align 8
  %i.tf = icmp eq i64 %i.td, %i.te
  br i1 %i.tf, label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i.sink.split, label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i

bb.fw:                                            ; preds = %.preheader670.preheader
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  %.pre829 = load i64, ptr %i.ls, align 8
  br label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit84.i

_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit84.i: ; preds = %bb.fw, %.preheader670.preheader
  %i.tg = phi i64 [ %.pre829, %bb.fw ], [ %i.sy, %.preheader670.preheader ] ; 2 uses
  %i.th = load ptr, ptr %i.oe, align 8
  %i.ti = add i64 %i.tg, 1
  store i64 %i.ti, ptr %i.ls, align 8
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.tg
  store i8 117, ptr %i.tj, align 1
  %i.tk = load i64, ptr %i.ls, align 8
  %i.tl = load i64, ptr %i.lx, align 8
  %i.tm = icmp eq i64 %i.tk, %i.tl
  br i1 %i.tm, label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i.sink.split, label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i, !prof !6

bb.fx:                                            ; preds = %.critedge.preheader.preheader
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  %.pre828 = load i64, ptr %i.ls, align 8
  br label %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit90.i

_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit90.i: ; preds = %bb.fx, %.critedge.preheader.preheader
  %i.tn = phi i64 [ %.pre828, %bb.fx ], [ %i.sp, %.critedge.preheader.preheader ] ; 2 uses
  %i.to = load ptr, ptr %i.lq, align 8
  %i.tp = add i64 %i.tn, 1
  store i64 %i.tp, ptr %i.ls, align 8
  %i.tq = getelementptr inbounds nuw [2 x i8], ptr %i.to, i64 %i.tn
  store i16 117, ptr %i.tq, align 2
  %i.tr = load i64, ptr %i.ls, align 8
  %i.ts = load i64, ptr %i.lx, align 8
  %i.tt = icmp eq i64 %i.tr, %i.ts
  br i1 %i.tt, label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i.sink.split, label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i, !prof !6

_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i.sink.split: ; preds = %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit90.i, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit84.i, %bb.fv
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i

_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i: ; preds = %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i.sink.split, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit90.i, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit84.i, %bb.fv
  %i.tu = uitofp i16 %i.ri to double
  %i.tv = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.tu, i32 noundef 16, ptr nonnull %i.b, i64 2200) #21 ; 2 uses
  %i.tw = extractvalue { i64, ptr } %i.tv, 0      ; 2 uses
  %i.tx = extractvalue { i64, ptr } %i.tv, 1      ; 3 uses
  %i.ty = load i32, ptr %i.at, align 8
  %i.tz = icmp eq i32 %i.ty, 0
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.tw ; 2 uses
  %.not15.i61.i736 = icmp samesign eq i64 %i.tw, 0 ; 2 uses
  br i1 %i.tz, label %bb.fy, label %bb.ga

bb.fy:                                            ; preds = %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i
  br i1 %.not15.i61.i736, label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit, label %.lr.ph739

.lr.ph739:                                        ; preds = %bb.fy, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit85.i
  %.0.i60.i737 = phi ptr [ %i.uj, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit85.i ], [ %i.tx, %bb.fy ] ; 2 uses
  %i.ub = load i8, ptr %.0.i60.i737, align 1
  %i.uc = load ptr, ptr %i.oe, align 8
  %i.ud = load i64, ptr %i.ls, align 8            ; 2 uses
  %i.ue = add i64 %i.ud, 1
  store i64 %i.ue, ptr %i.ls, align 8
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.ud
  store i8 %i.ub, ptr %i.uf, align 1
  %i.ug = load i64, ptr %i.ls, align 8
  %i.uh = load i64, ptr %i.lx, align 8
  %i.ui = icmp eq i64 %i.ug, %i.uh
  br i1 %i.ui, label %bb.fz, label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit85.i, !prof !6

bb.fz:                                            ; preds = %.lr.ph739
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit85.i

_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit85.i: ; preds = %bb.fz, %.lr.ph739
  %i.uj = getelementptr inbounds nuw i8, ptr %.0.i60.i737, i64 1 ; 2 uses
  %.not15.i61.i = icmp eq ptr %i.uj, %i.ua
  br i1 %.not15.i61.i, label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit, label %.lr.ph739

bb.ga:                                            ; preds = %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i
  br i1 %.not15.i61.i736, label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit, label %.lr.ph735

.lr.ph735:                                        ; preds = %bb.ga, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit91.i
  %.014.i58.i733 = phi ptr [ %i.ut, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit91.i ], [ %i.tx, %bb.ga ] ; 2 uses
  %i.uk = load i8, ptr %.014.i58.i733, align 1
  %i.ul = zext i8 %i.uk to i16
  %i.um = load ptr, ptr %i.lq, align 8
  %i.un = load i64, ptr %i.ls, align 8            ; 2 uses
  %i.uo = add i64 %i.un, 1
  store i64 %i.uo, ptr %i.ls, align 8
  %i.up = getelementptr inbounds nuw [2 x i8], ptr %i.um, i64 %i.un
  store i16 %i.ul, ptr %i.up, align 2
  %i.uq = load i64, ptr %i.ls, align 8
  %i.ur = load i64, ptr %i.lx, align 8
  %i.us = icmp eq i64 %i.uq, %i.ur
  br i1 %i.us, label %bb.gb, label %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit91.i, !prof !6

bb.gb:                                            ; preds = %.lr.ph735
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit91.i

_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit91.i: ; preds = %bb.gb, %.lr.ph735
  %i.ut = getelementptr inbounds nuw i8, ptr %.014.i58.i733, i64 1 ; 2 uses
  %.not.i59.i = icmp eq ptr %i.ut, %i.ua
  br i1 %.not.i59.i, label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit, label %.lr.ph735

bb.gc:                                            ; preds = %bb.fo
  %i.uu = load i32, ptr %i.at, align 8
  %i.uv = icmp eq i32 %i.uu, 0
end_hunk_0
begin_hunk_1_@_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE:bb.a
.preheader368:                                    ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit153
  %i.pm = icmp samesign ugt i32 %i.oy, 3
  br i1 %i.pm, label %.lr.ph395.preheader, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i

.lr.ph395.preheader:                              ; preds = %.preheader368
  %i.pn = and i64 %i.oz, 28
  br label %.lr.ph395

.lr.ph402:                                        ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit153
  %i.po = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.oz
  %i.pp = ptrtoint ptr %i.ox to i64               ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph402, %bb.ax
  %.054.i.i400 = phi i64 [ 0, %.lr.ph402 ], [ %.155.i.i, %bb.ax ] ; 3 uses
  %.056.i.i399 = phi ptr [ %i.ox, %.lr.ph402 ], [ %i.qt, %bb.ax ] ; 4 uses
  %i.pq = load <16 x i8>, ptr %.056.i.i399, align 1 ; 3 uses
  %i.pr = icmp ult <16 x i8> %i.pq, splat (i8 32)
  %i.ps = icmp eq <16 x i8> %i.pq, splat (i8 34)
  %i.pt = icmp eq <16 x i8> %i.pq, splat (i8 92)
  %i.pu = or <16 x i1> %i.pr, %i.ps
  %i.pv = or <16 x i1> %i.pt, %i.pu
  %i.pw = bitcast <16 x i1> %i.pv to i16          ; 2 uses
  %i.px = icmp eq i16 %i.pw, 0
  br i1 %i.px, label %bb.ax, label %bb.au, !prof !11

bb.au:                                            ; preds = %bb.at
  %i.py = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.pw, i1 true)
  %i.pz = zext nneg i16 %i.py to i64              ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.056.i.i399, i64 %i.pz ; 2 uses
  %i.qb = load i8, ptr %i.qa, align 1             ; 2 uses
  %i.qc = ptrtoint ptr %.056.i.i399 to i64
  %i.qd = sub i64 %i.qc, %i.pp
  %i.qe = add i64 %i.qd, %i.pz                    ; 2 uses
  %i.qf = sub i64 %i.qe, %.054.i.i400             ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ox, i64 %.054.i.i400
  %i.qh = load ptr, ptr %i.ll, align 8
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.qh, ptr noundef %i.qg, i64 noundef %i.qf)
  %i.qi = load ptr, ptr %i.ll, align 8
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %i.qf ; 2 uses
  store ptr %i.qj, ptr %i.ll, align 8
  %i.qk = icmp ult i8 %i.qb, 96
  br i1 %i.qk, label %bb.aw, label %bb.av, !prof !11

bb.av:                                            ; preds = %bb.au
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.32) #22
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.ql = zext nneg i8 %i.qb to i64
  %i.qm = shl nuw nsw i64 %i.ql, 3
  %i.qn = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.qm ; 2 uses
  %i.qo = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.qn) #26 ; 2 uses
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.qj, ptr noundef nonnull %i.qn, i64 noundef %i.qo)
  %i.qp = load ptr, ptr %i.ll, align 8
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %i.qo
  store ptr %i.qq, ptr %i.ll, align 8
  %i.qr = add i64 %i.qe, 1
  %i.qs = getelementptr inbounds i8, ptr %i.qa, i64 -15
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.at
  %.157.i.i = phi ptr [ %i.qs, %bb.aw ], [ %.056.i.i399, %bb.at ] ; 2 uses
  %.155.i.i = phi i64 [ %i.qr, %bb.aw ], [ %.054.i.i400, %bb.at ] ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.157.i.i, i64 16 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.157.i.i, i64 31
  %i.qv = icmp ult ptr %i.qu, %i.po
  br i1 %i.qv, label %bb.at, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i, !llvm.loop !346

_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i: ; preds = %bb.ax
  %i.qw = ptrtoint ptr %i.qt to i64
  %i.qx = sub i64 %i.qw, %i.pp                    ; 3 uses
  %i.qy = add i64 %i.qx, 3
  %i.qz = icmp ult i64 %i.qy, %i.oz
  br i1 %i.qz, label %.lr.ph406, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i

.lr.ph406:                                        ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i, %bb.ay
  %.013.i.i405 = phi i64 [ %i.rm, %bb.ay ], [ %i.qx, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i ] ; 4 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.ox, i64 %.013.i.i405
  %i.rb = load i32, ptr %i.ra, align 4            ; 4 uses
  %i.rc = add i32 %i.rb, -538976288
  %i.rd = xor i32 %i.rb, 572662306
  %i.re = add i32 %i.rd, -16843009
  %i.rf = xor i32 %i.rb, 1549556828
  %i.rg = add i32 %i.rf, -16843009
  %i.rh = and i32 %i.rb, -2139062144
  %i.ri = xor i32 %i.rh, -2139062144
  %i.rj = or i32 %i.re, %i.rc
  %i.rk = or i32 %i.rj, %i.rg
  %i.rl = and i32 %i.rk, %i.ri
  %.not359 = icmp eq i32 %i.rl, 0
  br i1 %.not359, label %bb.ay, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i

bb.ay:                                            ; preds = %.lr.ph406
  %i.rm = add i64 %.013.i.i405, 4                 ; 2 uses
  %i.rn = add i64 %.013.i.i405, 7
  %i.ro = icmp ult i64 %i.rn, %i.oz
  br i1 %i.ro, label %.lr.ph406, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i, !llvm.loop !347

_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i: ; preds = %bb.ay, %.lr.ph406, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i
  %.013.i.i.lcssa = phi i64 [ %i.qx, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i ], [ %.013.i.i405, %.lr.ph406 ], [ %i.rm, %bb.ay ]
  %i.rp = call noundef zeroext i1 @_ZN2v88internal19FastJsonStringifierItE18AppendStringScalarIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef nonnull %i.ox, i64 noundef %i.oz, i64 noundef %.013.i.i.lcssa, i64 noundef %.155.i.i, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit

.lr.ph395:                                        ; preds = %.lr.ph395.preheader, %bb.az
  %.013.i8.i394 = phi i64 [ %i.sc, %bb.az ], [ 0, %.lr.ph395.preheader ] ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ox, i64 %.013.i8.i394
  %i.rr = load i32, ptr %i.rq, align 4            ; 4 uses
  %i.rs = add i32 %i.rr, -538976288
  %i.rt = xor i32 %i.rr, 572662306
  %i.ru = add i32 %i.rt, -16843009
  %i.rv = xor i32 %i.rr, 1549556828
  %i.rw = add i32 %i.rv, -16843009
  %i.rx = and i32 %i.rr, -2139062144
  %i.ry = xor i32 %i.rx, -2139062144
  %i.rz = or i32 %i.ru, %i.rs
  %i.sa = or i32 %i.rz, %i.rw
  %i.sb = and i32 %i.sa, %i.ry
  %.not = icmp eq i32 %i.sb, 0
  br i1 %.not, label %bb.az, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i

bb.az:                                            ; preds = %.lr.ph395
  %i.sc = add nuw nsw i64 %.013.i8.i394, 4        ; 2 uses
  %i.sd = or disjoint i64 %i.sc, 3
  %i.se = icmp samesign ult i64 %i.sd, %i.oz
  br i1 %i.se, label %.lr.ph395, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i, !llvm.loop !347

_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i: ; preds = %bb.az, %.lr.ph395, %.preheader368
  %.013.i8.i.lcssa = phi i64 [ 0, %.preheader368 ], [ %.013.i8.i394, %.lr.ph395 ], [ %i.pn, %bb.az ]
  %i.sf = call noundef zeroext i1 @_ZN2v88internal19FastJsonStringifierItE18AppendStringScalarIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef nonnull %i.ox, i64 noundef %i.oz, i64 noundef %.013.i8.i.lcssa, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit: ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i
  %i.sg = load ptr, ptr %i.ll, align 8            ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 2
  store ptr %i.sh, ptr %i.ll, align 8
  store i16 34, ptr %i.sg, align 2
  br label %bb.fa

bb.ba:                                            ; preds = %bb.d, %bb.d
  %i.si = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.sk = load i32, ptr %i.sj, align 4            ; 5 uses
  %i.sl = zext i32 %i.sk to i64                   ; 2 uses
  %i.sm = shl nuw nsw i64 %i.sl, 3
  %i.sn = or disjoint i64 %i.sm, 2                ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.sq = load ptr, ptr %i.sp, align 8
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 31 uses
  %i.ss = load ptr, ptr %i.sr, align 8            ; 2 uses
  %i.st = ptrtoint ptr %i.sq to i64
  %i.su = ptrtoint ptr %i.ss to i64
  %i.sv = sub i64 %i.st, %i.su
  %i.sw = ashr exact i64 %i.sv, 1
  %.not.i154 = icmp ugt i64 %i.sn, %i.sw
  br i1 %.not.i154, label %bb.bb, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit155, !prof !6

bb.bb:                                            ; preds = %bb.ba
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.so, i64 noundef %i.sn)
  %.pre471 = load ptr, ptr %i.sr, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit155

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit155: ; preds = %bb.ba, %bb.bb
  %i.sx = phi ptr [ %i.ss, %bb.ba ], [ %.pre471, %bb.bb ] ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 2
  store ptr %i.sy, ptr %i.sr, align 8
  store i16 34, ptr %i.sx, align 2
  %.not461 = icmp eq i32 %i.sk, 0
  br i1 %.not461, label %._crit_edge392.thread, label %.lr.ph391

._crit_edge392.thread:                            ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit155
  %.pre472539 = load ptr, ptr %i.sr, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit83

._crit_edge392:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread
  %i.sz = icmp ugt i32 %i.sk, %.2.i.i80
  %.pre472 = load ptr, ptr %i.sr, align 8         ; 18 uses
  br i1 %i.sz, label %bb.bn, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit83

.lr.ph391:                                        ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit155, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread
  %.055.i.i75390 = phi i32 [ %.2.i.i80, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit155 ] ; 4 uses
  %.057.i.i74389 = phi i32 [ %i.vl, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit155 ] ; 9 uses
  %i.ta = zext i32 %.057.i.i74389 to i64
  %i.tb = getelementptr inbounds nuw [2 x i8], ptr %i.si, i64 %i.ta
  %i.tc = load i16, ptr %i.tb, align 2            ; 11 uses
  %i.td = and i16 %i.tc, -2
  %or.cond.i = icmp eq i16 %i.td, 32
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph391
  %i.te = icmp ugt i16 %i.tc, 34
  %i.tf = icmp ne i16 %i.tc, 92
  %or.cond5.i = and i1 %i.te, %i.tf
  %i.tg = add i16 %i.tc, 8192
  %i.th = icmp ult i16 %i.tg, -2048
  %or.cond = and i1 %or.cond5.i, %i.th
  br i1 %or.cond, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread347, !prof !349

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread347: ; preds = %bb.bc
  %3 = icmp slt i16 %i.tc, -8192
  %i.ti = zext i32 %.055.i.i75390 to i64
  %i.tj = getelementptr inbounds nuw [2 x i8], ptr %i.si, i64 %i.ti
  %i.tk = sub i32 %.057.i.i74389, %.055.i.i75390
  %i.tl = zext i32 %i.tk to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.so, ptr noundef nonnull %i.tj, i64 noundef %i.tl)
  br i1 %3, label %bb.bd, label %bb.bl

bb.bd:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.tm = icmp samesign ult i16 %i.tc, -9216
  br i1 %i.tm, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %bb.bd
  %i.tn = add nuw i32 %.057.i.i74389, 1           ; 3 uses
  %i.to = icmp ugt i32 %i.sk, %i.tn
  br i1 %i.to, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.tp = zext i32 %i.tn to i64
  %i.tq = getelementptr inbounds nuw [2 x i8], ptr %i.si, i64 %i.tp
  %i.tr = load i16, ptr %i.tq, align 2            ; 2 uses
  %i.ts = and i16 %i.tr, -1024
  %i.tt = icmp eq i16 %i.ts, -9216
  %i.tu = load ptr, ptr %i.sr, align 8            ; 4 uses
  br i1 %i.tt, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 2
  store ptr %i.tv, ptr %i.sr, align 8
  store i16 %i.tc, ptr %i.tu, align 2
  %i.tw = load ptr, ptr %i.sr, align 8            ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 2
  store ptr %i.tx, ptr %i.sr, align 8
  store i16 %i.tr, ptr %i.tw, align 2
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bf
  store i16 92, ptr %i.tu, align 2
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tu, i64 2
  store i16 117, ptr %i.ty, align 2
  %i.tz = load ptr, ptr %i.sr, align 8
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 4
  store ptr %i.ua, ptr %i.sr, align 8
  %i.ub = uitofp i16 %i.tc to double
  %i.uc = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ub, i32 noundef 16, ptr nonnull %i.c, i64 2200) #21 ; 2 uses
  %i.ud = extractvalue { i64, ptr } %i.uc, 0      ; 2 uses
  %i.ue = extractvalue { i64, ptr } %i.uc, 1
  %i.uf = load ptr, ptr %i.sr, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.uf, ptr noundef %i.ue, i64 noundef %i.ud)
  %i.ug = load ptr, ptr %i.sr, align 8
  %i.uh = getelementptr inbounds nuw [2 x i8], ptr %i.ug, i64 %i.ud
  store ptr %i.uh, ptr %i.sr, align 8
  br label %bb.bk

bb.bi:                                            ; preds = %bb.be
  %i.ui = load ptr, ptr %i.sr, align 8            ; 2 uses
  store i16 92, ptr %i.ui, align 2
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 2
  store i16 117, ptr %i.uj, align 2
  %i.uk = load ptr, ptr %i.sr, align 8
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 4
  store ptr %i.ul, ptr %i.sr, align 8
  %i.um = uitofp i16 %i.tc to double
  %i.un = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.um, i32 noundef 16, ptr nonnull %i.c, i64 2200) #21 ; 2 uses
  %i.uo = extractvalue { i64, ptr } %i.un, 0      ; 2 uses
  %i.up = extractvalue { i64, ptr } %i.un, 1
  %i.uq = load ptr, ptr %i.sr, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.uq, ptr noundef %i.up, i64 noundef %i.uo)
  %i.ur = load ptr, ptr %i.sr, align 8
  %i.us = getelementptr inbounds nuw [2 x i8], ptr %i.ur, i64 %i.uo
  store ptr %i.us, ptr %i.sr, align 8
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bd
  %i.ut = load ptr, ptr %i.sr, align 8            ; 2 uses
  store i16 92, ptr %i.ut, align 2
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 2
  store i16 117, ptr %i.uu, align 2
  %i.uv = load ptr, ptr %i.sr, align 8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  store ptr %i.uw, ptr %i.sr, align 8
  %i.ux = uitofp i16 %i.tc to double
  %i.uy = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ux, i32 noundef 16, ptr nonnull %i.c, i64 2200) #21 ; 2 uses
  %i.uz = extractvalue { i64, ptr } %i.uy, 0      ; 2 uses
  %i.va = extractvalue { i64, ptr } %i.uy, 1
  %i.vb = load ptr, ptr %i.sr, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.vb, ptr noundef %i.va, i64 noundef %i.uz)
  %i.vc = load ptr, ptr %i.sr, align 8
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %i.uz
  store ptr %i.vd, ptr %i.sr, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg
  %.259.i.i82 = phi i32 [ %.057.i.i74389, %bb.bj ], [ %.057.i.i74389, %bb.bi ], [ %i.tn, %bb.bg ], [ %.057.i.i74389, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.bm

bb.bl:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread347
  %i.ve = zext i16 %i.tc to i64
  %i.vf = shl nuw nsw i64 %i.ve, 3
  %i.vg = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.vf ; 2 uses
  %i.vh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.vg) #26 ; 2 uses
  %i.vi = load ptr, ptr %i.sr, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.vi, ptr noundef nonnull %i.vg, i64 noundef %i.vh)
  %i.vj = load ptr, ptr %i.sr, align 8
  %i.vk = getelementptr inbounds nuw [2 x i8], ptr %i.vj, i64 %i.vh
  store ptr %i.vk, ptr %i.sr, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.3.i.i77 = phi i32 [ %.259.i.i82, %bb.bk ], [ %.057.i.i74389, %bb.bl ] ; 2 uses
  %.156.i.i78 = add nuw i32 %.3.i.i77, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread: ; preds = %bb.bc, %.lr.ph391, %bb.bm
  %.4.i.i79 = phi i32 [ %.3.i.i77, %bb.bm ], [ %.057.i.i74389, %bb.bc ], [ %.057.i.i74389, %.lr.ph391 ]
  %.2.i.i80 = phi i32 [ %.156.i.i78, %bb.bm ], [ %.055.i.i75390, %bb.bc ], [ %.055.i.i75390, %.lr.ph391 ] ; 3 uses
  %i.vl = add nuw i32 %.4.i.i79, 1                ; 2 uses
  %i.vm = icmp ugt i32 %i.sk, %i.vl
  br i1 %i.vm, label %.lr.ph391, label %._crit_edge392, !llvm.loop !350

bb.bn:                                            ; preds = %._crit_edge392
  %i.vn = zext i32 %.2.i.i80 to i64               ; 2 uses
  %i.vo = getelementptr inbounds nuw [2 x i8], ptr %i.si, i64 %i.vn ; 17 uses
  %i.vp = sub nuw nsw i64 %i.sl, %i.vn            ; 3 uses
  %trunc358 = trunc nuw i64 %i.vp to i32
  switch i32 %trunc358, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i [
    i32 1, label %bb.bo
    i32 2, label %bb.bp
    i32 3, label %bb.bq
    i32 4, label %bb.br
    i32 5, label %bb.bs
    i32 6, label %bb.bt
    i32 7, label %bb.bu
    i32 8, label %bb.bv
    i32 9, label %bb.bw
    i32 10, label %bb.bx
    i32 11, label %bb.by
    i32 12, label %bb.bz
    i32 13, label %bb.ca
    i32 14, label %bb.cb
    i32 15, label %bb.cc
    i32 16, label %bb.cd
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.vq = load i16, ptr %i.vo, align 2
  store i16 %i.vq, ptr %.pre472, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.bp:                                            ; preds = %bb.bn
  %i.vr = load i32, ptr %i.vo, align 2
  store i32 %i.vr, ptr %.pre472, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.bq:                                            ; preds = %bb.bn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre472, ptr noundef nonnull align 2 dereferenceable(6) %i.vo, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.br:                                            ; preds = %bb.bn
  %i.vs = load i64, ptr %i.vo, align 2
  store i64 %i.vs, ptr %.pre472, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.bs:                                            ; preds = %bb.bn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre472, ptr noundef nonnull align 2 dereferenceable(10) %i.vo, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.bt:                                            ; preds = %bb.bn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre472, ptr noundef nonnull align 2 dereferenceable(12) %i.vo, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.bu:                                            ; preds = %bb.bn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre472, ptr noundef nonnull align 2 dereferenceable(14) %i.vo, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.bv:                                            ; preds = %bb.bn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre472, ptr noundef nonnull align 2 dereferenceable(16) %i.vo, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.bw:                                            ; preds = %bb.bn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre472, ptr noundef nonnull align 2 dereferenceable(18) %i.vo, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.bx:                                            ; preds = %bb.bn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre472, ptr noundef nonnull align 2 dereferenceable(20) %i.vo, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.by:                                            ; preds = %bb.bn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre472, ptr noundef nonnull align 2 dereferenceable(22) %i.vo, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.bz:                                            ; preds = %bb.bn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre472, ptr noundef nonnull align 2 dereferenceable(24) %i.vo, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ca:                                            ; preds = %bb.bn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre472, ptr noundef nonnull align 2 dereferenceable(26) %i.vo, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cb:                                            ; preds = %bb.bn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre472, ptr noundef nonnull align 2 dereferenceable(28) %i.vo, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cc:                                            ; preds = %bb.bn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre472, ptr noundef nonnull align 2 dereferenceable(30) %i.vo, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cd:                                            ; preds = %bb.bn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre472, ptr noundef nonnull align 2 dereferenceable(32) %i.vo, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.bn
  %.idx.i.i.i.i = shl nuw nsw i64 %i.vp, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre472, ptr nonnull align 2 %i.vo, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit: ; preds = %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i
  %i.vt = load ptr, ptr %i.sr, align 8
  %i.vu = getelementptr inbounds nuw [2 x i8], ptr %i.vt, i64 %i.vp
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit83

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit83: ; preds = %._crit_edge392.thread, %._crit_edge392, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit
  %i.vv = phi ptr [ %.pre472, %._crit_edge392 ], [ %i.vu, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit ], [ %.pre472539, %._crit_edge392.thread ] ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 2
  store ptr %i.vw, ptr %i.sr, align 8
  store i16 34, ptr %i.vv, align 2
  br label %bb.fa

bb.ce:                                            ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.vx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.vy = load i64, ptr %i.vx, align 8
  %i.vz = inttoptr i64 %i.vy to ptr               ; 6 uses
  %i.wa = load atomic volatile i64, ptr %i.z monotonic, align 8
  %i.wb = add i64 %i.wa, 11
  %i.wc = inttoptr i64 %i.wb to ptr
  %i.wd = load atomic volatile i16, ptr %i.wc monotonic, align 2
  %i.we = and i16 %i.wd, 16
  %.not.i156 = icmp eq i16 %i.we, 0
  br i1 %.not.i156, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.wf = load ptr, ptr %i.vz, align 8
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  %i.wh = load ptr, ptr %i.wg, align 8
  %i.wi = tail call noundef zeroext i1 %i.wh(ptr noundef nonnull align 8 dereferenceable(8) %i.vz) #21, !inline_history !80
  br i1 %i.wi, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vz) #21
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wk = load ptr, ptr %i.wj, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.ch:                                            ; preds = %bb.cf, %bb.ce
  %i.wl = load ptr, ptr %i.vz, align 8
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 72
  %i.wn = load ptr, ptr %i.wm, align 8
  %i.wo = tail call noundef ptr %i.wn(ptr noundef nonnull align 8 dereferenceable(16) %i.vz) #21, !inline_history !80
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.cg, %bb.ch
  %.0.i157 = phi ptr [ %i.wk, %bb.cg ], [ %i.wo, %bb.ch ] ; 4 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.wq = load i32, ptr %i.wp, align 4            ; 5 uses
  %i.wr = zext i32 %i.wq to i64                   ; 2 uses
  %i.ws = shl nuw nsw i64 %i.wr, 3
  %i.wt = or disjoint i64 %i.ws, 2                ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ww = load ptr, ptr %i.wv, align 8
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 31 uses
  %i.wy = load ptr, ptr %i.wx, align 8            ; 2 uses
  %i.wz = ptrtoint ptr %i.ww to i64
  %i.xa = ptrtoint ptr %i.wy to i64
  %i.xb = sub i64 %i.wz, %i.xa
  %i.xc = ashr exact i64 %i.xb, 1
  %.not.i158 = icmp ugt i64 %i.wt, %i.xc
  br i1 %.not.i158, label %bb.ci, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit159, !prof !6

bb.ci:                                            ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.wu, i64 noundef %i.wt)
  %.pre469 = load ptr, ptr %i.wx, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit159

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit159: ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.ci
  %i.xd = phi ptr [ %i.wy, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ], [ %.pre469, %bb.ci ] ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 2
  store ptr %i.xe, ptr %i.wx, align 8
  store i16 34, ptr %i.xd, align 2
  %.not460 = icmp eq i32 %i.wq, 0
  br i1 %.not460, label %._crit_edge387.thread, label %.lr.ph386

._crit_edge387.thread:                            ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit159
  %.pre470541 = load ptr, ptr %i.wx, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit102

._crit_edge387:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit162.thread
  %i.xf = icmp ugt i32 %i.wq, %.2.i.i99
  %.pre470 = load ptr, ptr %i.wx, align 8         ; 18 uses
  br i1 %i.xf, label %bb.cu, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit102

.lr.ph386:                                        ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit159, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit162.thread
  %.055.i.i94385 = phi i32 [ %.2.i.i99, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit162.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit159 ] ; 4 uses
  %.057.i.i93384 = phi i32 [ %i.zr, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit162.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit159 ] ; 9 uses
  %i.xg = zext i32 %.057.i.i93384 to i64
  %i.xh = getelementptr inbounds nuw [2 x i8], ptr %.0.i157, i64 %i.xg
  %i.xi = load i16, ptr %i.xh, align 2            ; 11 uses
  %i.xj = and i16 %i.xi, -2
  %or.cond.i160 = icmp eq i16 %i.xj, 32
  br i1 %or.cond.i160, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit162.thread, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph386
  %i.xk = icmp ugt i16 %i.xi, 34
  %i.xl = icmp ne i16 %i.xi, 92
  %or.cond5.i161 = and i1 %i.xk, %i.xl
  %i.xm = add i16 %i.xi, 8192
  %i.xn = icmp ult i16 %i.xm, -2048
  %or.cond353 = and i1 %or.cond5.i161, %i.xn
  br i1 %or.cond353, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit162.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit162.thread348, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit162.thread348: ; preds = %bb.cj
  %4 = icmp slt i16 %i.xi, -8192
  %i.xo = zext i32 %.055.i.i94385 to i64
  %i.xp = getelementptr inbounds nuw [2 x i8], ptr %.0.i157, i64 %i.xo
  %i.xq = sub i32 %.057.i.i93384, %.055.i.i94385
  %i.xr = zext i32 %i.xq to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.wu, ptr noundef %i.xp, i64 noundef %i.xr)
  br i1 %4, label %bb.ck, label %bb.cs

bb.ck:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit162.thread348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.xs = icmp samesign ult i16 %i.xi, -9216
  br i1 %i.xs, label %bb.cl, label %bb.cq

bb.cl:                                            ; preds = %bb.ck
  %i.xt = add nuw i32 %.057.i.i93384, 1           ; 3 uses
  %i.xu = icmp ugt i32 %i.wq, %i.xt
  br i1 %i.xu, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %i.xv = zext i32 %i.xt to i64
  %i.xw = getelementptr inbounds nuw [2 x i8], ptr %.0.i157, i64 %i.xv
  %i.xx = load i16, ptr %i.xw, align 2            ; 2 uses
  %i.xy = and i16 %i.xx, -1024
  %i.xz = icmp eq i16 %i.xy, -9216
  %i.ya = load ptr, ptr %i.wx, align 8            ; 4 uses
  br i1 %i.xz, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 2
  store ptr %i.yb, ptr %i.wx, align 8
  store i16 %i.xi, ptr %i.ya, align 2
  %i.yc = load ptr, ptr %i.wx, align 8            ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 2
  store ptr %i.yd, ptr %i.wx, align 8
  store i16 %i.xx, ptr %i.yc, align 2
  br label %bb.cr

bb.co:                                            ; preds = %bb.cm
  store i16 92, ptr %i.ya, align 2
  %i.ye = getelementptr inbounds nuw i8, ptr %i.ya, i64 2
  store i16 117, ptr %i.ye, align 2
  %i.yf = load ptr, ptr %i.wx, align 8
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 4
  store ptr %i.yg, ptr %i.wx, align 8
  %i.yh = uitofp i16 %i.xi to double
  %i.yi = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.yh, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.yj = extractvalue { i64, ptr } %i.yi, 0      ; 2 uses
  %i.yk = extractvalue { i64, ptr } %i.yi, 1
  %i.yl = load ptr, ptr %i.wx, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.yl, ptr noundef %i.yk, i64 noundef %i.yj)
  %i.ym = load ptr, ptr %i.wx, align 8
  %i.yn = getelementptr inbounds nuw [2 x i8], ptr %i.ym, i64 %i.yj
  store ptr %i.yn, ptr %i.wx, align 8
  br label %bb.cr

bb.cp:                                            ; preds = %bb.cl
  %i.yo = load ptr, ptr %i.wx, align 8            ; 2 uses
  store i16 92, ptr %i.yo, align 2
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 2
  store i16 117, ptr %i.yp, align 2
  %i.yq = load ptr, ptr %i.wx, align 8
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 4
  store ptr %i.yr, ptr %i.wx, align 8
  %i.ys = uitofp i16 %i.xi to double
  %i.yt = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ys, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.yu = extractvalue { i64, ptr } %i.yt, 0      ; 2 uses
  %i.yv = extractvalue { i64, ptr } %i.yt, 1
  %i.yw = load ptr, ptr %i.wx, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.yw, ptr noundef %i.yv, i64 noundef %i.yu)
  %i.yx = load ptr, ptr %i.wx, align 8
  %i.yy = getelementptr inbounds nuw [2 x i8], ptr %i.yx, i64 %i.yu
  store ptr %i.yy, ptr %i.wx, align 8
  br label %bb.cr

bb.cq:                                            ; preds = %bb.ck
  %i.yz = load ptr, ptr %i.wx, align 8            ; 2 uses
  store i16 92, ptr %i.yz, align 2
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 2
  store i16 117, ptr %i.za, align 2
  %i.zb = load ptr, ptr %i.wx, align 8
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 4
  store ptr %i.zc, ptr %i.wx, align 8
  %i.zd = uitofp i16 %i.xi to double
  %i.ze = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.zd, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.zf = extractvalue { i64, ptr } %i.ze, 0      ; 2 uses
  %i.zg = extractvalue { i64, ptr } %i.ze, 1
  %i.zh = load ptr, ptr %i.wx, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.zh, ptr noundef %i.zg, i64 noundef %i.zf)
  %i.zi = load ptr, ptr %i.wx, align 8
  %i.zj = getelementptr inbounds nuw [2 x i8], ptr %i.zi, i64 %i.zf
  store ptr %i.zj, ptr %i.wx, align 8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %bb.co, %bb.cn
  %.259.i.i101 = phi i32 [ %.057.i.i93384, %bb.cq ], [ %.057.i.i93384, %bb.cp ], [ %i.xt, %bb.cn ], [ %.057.i.i93384, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ct

bb.cs:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit162.thread348
  %i.zk = zext i16 %i.xi to i64
  %i.zl = shl nuw nsw i64 %i.zk, 3
  %i.zm = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.zl ; 2 uses
  %i.zn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.zm) #26 ; 2 uses
  %i.zo = load ptr, ptr %i.wx, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.zo, ptr noundef nonnull %i.zm, i64 noundef %i.zn)
  %i.zp = load ptr, ptr %i.wx, align 8
  %i.zq = getelementptr inbounds nuw [2 x i8], ptr %i.zp, i64 %i.zn
  store ptr %i.zq, ptr %i.wx, align 8
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.3.i.i96 = phi i32 [ %.259.i.i101, %bb.cr ], [ %.057.i.i93384, %bb.cs ] ; 2 uses
  %.156.i.i97 = add nuw i32 %.3.i.i96, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit162.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit162.thread: ; preds = %bb.cj, %.lr.ph386, %bb.ct
  %.4.i.i98 = phi i32 [ %.3.i.i96, %bb.ct ], [ %.057.i.i93384, %bb.cj ], [ %.057.i.i93384, %.lr.ph386 ]
  %.2.i.i99 = phi i32 [ %.156.i.i97, %bb.ct ], [ %.055.i.i94385, %bb.cj ], [ %.055.i.i94385, %.lr.ph386 ] ; 3 uses
  %i.zr = add nuw i32 %.4.i.i98, 1                ; 2 uses
  %i.zs = icmp ugt i32 %i.wq, %i.zr
  br i1 %i.zs, label %.lr.ph386, label %._crit_edge387, !llvm.loop !350

bb.cu:                                            ; preds = %._crit_edge387
  %i.zt = zext i32 %.2.i.i99 to i64               ; 2 uses
  %i.zu = getelementptr inbounds nuw [2 x i8], ptr %.0.i157, i64 %i.zt ; 17 uses
  %i.zv = sub nuw nsw i64 %i.wr, %i.zt            ; 3 uses
  %trunc = trunc nuw i64 %i.zv to i32
  switch i32 %trunc, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i165 [
    i32 1, label %bb.cv
    i32 2, label %bb.cw
    i32 3, label %bb.cx
    i32 4, label %bb.cy
    i32 5, label %bb.cz
    i32 6, label %bb.da
    i32 7, label %bb.db
    i32 8, label %bb.dc
    i32 9, label %bb.dd
    i32 10, label %bb.de
    i32 11, label %bb.df
    i32 12, label %bb.dg
    i32 13, label %bb.dh
    i32 14, label %bb.di
    i32 15, label %bb.dj
    i32 16, label %bb.dk
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit167
  ]

bb.cv:                                            ; preds = %bb.cu
  %i.zw = load i16, ptr %i.zu, align 2
  store i16 %i.zw, ptr %.pre470, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit167

bb.cw:                                            ; preds = %bb.cu
  %i.zx = load i32, ptr %i.zu, align 2
  store i32 %i.zx, ptr %.pre470, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit167

bb.cx:                                            ; preds = %bb.cu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre470, ptr noundef nonnull align 2 dereferenceable(6) %i.zu, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit167

bb.cy:                                            ; preds = %bb.cu
  %i.zy = load i64, ptr %i.zu, align 2
  store i64 %i.zy, ptr %.pre470, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit167

bb.cz:                                            ; preds = %bb.cu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre470, ptr noundef nonnull align 2 dereferenceable(10) %i.zu, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit167

bb.da:                                            ; preds = %bb.cu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre470, ptr noundef nonnull align 2 dereferenceable(12) %i.zu, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit167

bb.db:                                            ; preds = %bb.cu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre470, ptr noundef nonnull align 2 dereferenceable(14) %i.zu, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit167

bb.dc:                                            ; preds = %bb.cu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre470, ptr noundef nonnull align 2 dereferenceable(16) %i.zu, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit167

bb.dd:                                            ; preds = %bb.cu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre470, ptr noundef nonnull align 2 dereferenceable(18) %i.zu, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit167

bb.de:                                            ; preds = %bb.cu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre470, ptr noundef nonnull align 2 dereferenceable(20) %i.zu, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit167

bb.df:                                            ; preds = %bb.cu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre470, ptr noundef nonnull align 2 dereferenceable(22) %i.zu, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit167

bb.dg:                                            ; preds = %bb.cu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre470, ptr noundef nonnull align 2 dereferenceable(24) %i.zu, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit167

bb.dh:                                            ; preds = %bb.cu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre470, ptr noundef nonnull align 2 dereferenceable(26) %i.zu, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit167

bb.di:                                            ; preds = %bb.cu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre470, ptr noundef nonnull align 2 dereferenceable(28) %i.zu, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit167

bb.dj:                                            ; preds = %bb.cu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre470, ptr noundef nonnull align 2 dereferenceable(30) %i.zu, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit167

bb.dk:                                            ; preds = %bb.cu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre470, ptr noundef nonnull align 2 dereferenceable(32) %i.zu, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit167

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i165: ; preds = %bb.cu
  %.idx.i.i.i.i166 = shl nuw nsw i64 %i.zv, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre470, ptr nonnull align 2 %i.zu, i64 %.idx.i.i.i.i166, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit167

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit167: ; preds = %bb.cu, %bb.cv, %bb.cw, %bb.cx, %bb.cy, %bb.cz, %bb.da, %bb.db, %bb.dc, %bb.dd, %bb.de, %bb.df, %bb.dg, %bb.dh, %bb.di, %bb.dj, %bb.dk, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i165
  %i.zz = load ptr, ptr %i.wx, align 8
  %i.aaa = getelementptr inbounds nuw [2 x i8], ptr %i.zz, i64 %i.zv
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit102

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit102: ; preds = %._crit_edge387.thread, %._crit_edge387, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit167
  %i.aab = phi ptr [ %.pre470, %._crit_edge387 ], [ %i.aaa, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit167 ], [ %.pre470541, %._crit_edge387.thread ] ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 2
  store ptr %i.aac, ptr %i.wx, align 8
  store i16 34, ptr %i.aab, align 2
  br label %bb.fa

bb.dl:                                            ; preds = %bb.d
  %i.aad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.aae = load i64, ptr %i.aad, align 8
  %i.aaf = add i64 %i.aae, -1
  %i.aag = inttoptr i64 %i.aaf to ptr             ; 4 uses
  %i.aah = load atomic volatile i64, ptr %i.aag monotonic, align 8
  %i.aai = add i64 %i.aah, 11
  %i.aaj = inttoptr i64 %i.aai to ptr
  %i.aak = load atomic volatile i16, ptr %i.aaj monotonic, align 2
  %i.aal = and i16 %i.aak, -121
  %i.aam = icmp eq i16 %i.aal, 2
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aag, i64 12 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 58 uses
  br i1 %i.aam, label %bb.dm, label %bb.ea

bb.dm:                                            ; preds = %bb.dl
  %i.aar = tail call noundef ptr @_ZNK2v88internal21ExternalTwoByteString8GetCharsEv(ptr noundef nonnull align 4 dereferenceable(32) %i.aag) ; 4 uses
  %i.aas = load i32, ptr %i.aan, align 4          ; 5 uses
  %i.aat = zext i32 %i.aas to i64                 ; 2 uses
  %i.aau = shl nuw nsw i64 %i.aat, 3
  %i.aav = or disjoint i64 %i.aau, 2              ; 2 uses
  %i.aaw = load ptr, ptr %i.aap, align 8
  %i.aax = load ptr, ptr %i.aaq, align 8          ; 2 uses
  %i.aay = ptrtoint ptr %i.aaw to i64
  %i.aaz = ptrtoint ptr %i.aax to i64
  %i.aba = sub i64 %i.aay, %i.aaz
  %i.abb = ashr exact i64 %i.aba, 1
  %.not.i169 = icmp ugt i64 %i.aav, %i.abb
  br i1 %.not.i169, label %bb.dn, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit170, !prof !6

bb.dn:                                            ; preds = %bb.dm
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.aao, i64 noundef %i.aav)
  %.pre468 = load ptr, ptr %i.aaq, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit170

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit170: ; preds = %bb.dm, %bb.dn
  %i.abc = phi ptr [ %i.aax, %bb.dm ], [ %.pre468, %bb.dn ] ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 2
  store ptr %i.abd, ptr %i.aaq, align 8
  store i16 34, ptr %i.abc, align 2
  %.not459 = icmp eq i32 %i.aas, 0
  br i1 %.not459, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit, label %.lr.ph381

._crit_edge382:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread
  %i.abe = icmp ugt i32 %i.aas, %.2.i.i90
  br i1 %i.abe, label %bb.dz, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit

.lr.ph381:                                        ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit170, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread
  %.055.i.i85380 = phi i32 [ %.2.i.i90, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit170 ] ; 4 uses
  %.057.i.i84379 = phi i32 [ %i.adq, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit170 ] ; 9 uses
  %i.abf = zext i32 %.057.i.i84379 to i64
  %i.abg = getelementptr inbounds nuw [2 x i8], ptr %i.aar, i64 %i.abf
  %i.abh = load i16, ptr %i.abg, align 2          ; 11 uses
  %i.abi = and i16 %i.abh, -2
  %or.cond.i171 = icmp eq i16 %i.abi, 32
  br i1 %or.cond.i171, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread, label %bb.do

bb.do:                                            ; preds = %.lr.ph381
  %i.abj = icmp ugt i16 %i.abh, 34
  %i.abk = icmp ne i16 %i.abh, 92
  %or.cond5.i172 = and i1 %i.abj, %i.abk
  %i.abl = add i16 %i.abh, 8192
  %i.abm = icmp ult i16 %i.abl, -2048
  %or.cond355 = and i1 %or.cond5.i172, %i.abm
  br i1 %or.cond355, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread349, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread349: ; preds = %bb.do
  %5 = icmp slt i16 %i.abh, -8192
  %i.abn = zext i32 %.055.i.i85380 to i64
  %i.abo = getelementptr inbounds nuw [2 x i8], ptr %i.aar, i64 %i.abn
  %i.abp = sub i32 %.057.i.i84379, %.055.i.i85380
  %i.abq = zext i32 %i.abp to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.aao, ptr noundef %i.abo, i64 noundef %i.abq)
  br i1 %5, label %bb.dp, label %bb.dx

bb.dp:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.abr = icmp samesign ult i16 %i.abh, -9216
  br i1 %i.abr, label %bb.dq, label %bb.dv

bb.dq:                                            ; preds = %bb.dp
  %i.abs = add nuw i32 %.057.i.i84379, 1          ; 3 uses
  %i.abt = icmp ugt i32 %i.aas, %i.abs
  br i1 %i.abt, label %bb.dr, label %bb.du

bb.dr:                                            ; preds = %bb.dq
  %i.abu = zext i32 %i.abs to i64
  %i.abv = getelementptr inbounds nuw [2 x i8], ptr %i.aar, i64 %i.abu
  %i.abw = load i16, ptr %i.abv, align 2          ; 2 uses
  %i.abx = and i16 %i.abw, -1024
  %i.aby = icmp eq i16 %i.abx, -9216
  %i.abz = load ptr, ptr %i.aaq, align 8          ; 4 uses
  br i1 %i.aby, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 2
  store ptr %i.aca, ptr %i.aaq, align 8
  store i16 %i.abh, ptr %i.abz, align 2
  %i.acb = load ptr, ptr %i.aaq, align 8          ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 2
  store ptr %i.acc, ptr %i.aaq, align 8
  store i16 %i.abw, ptr %i.acb, align 2
  br label %bb.dw

bb.dt:                                            ; preds = %bb.dr
  store i16 92, ptr %i.abz, align 2
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abz, i64 2
  store i16 117, ptr %i.acd, align 2
  %i.ace = load ptr, ptr %i.aaq, align 8
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 4
  store ptr %i.acf, ptr %i.aaq, align 8
  %i.acg = uitofp i16 %i.abh to double
  %i.ach = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.acg, i32 noundef 16, ptr nonnull %i.b, i64 2200) #21 ; 2 uses
  %i.aci = extractvalue { i64, ptr } %i.ach, 0    ; 2 uses
  %i.acj = extractvalue { i64, ptr } %i.ach, 1
  %i.ack = load ptr, ptr %i.aaq, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ack, ptr noundef %i.acj, i64 noundef %i.aci)
  %i.acl = load ptr, ptr %i.aaq, align 8
  %i.acm = getelementptr inbounds nuw [2 x i8], ptr %i.acl, i64 %i.aci
  store ptr %i.acm, ptr %i.aaq, align 8
  br label %bb.dw

bb.du:                                            ; preds = %bb.dq
  %i.acn = load ptr, ptr %i.aaq, align 8          ; 2 uses
  store i16 92, ptr %i.acn, align 2
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 2
  store i16 117, ptr %i.aco, align 2
  %i.acp = load ptr, ptr %i.aaq, align 8
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 4
  store ptr %i.acq, ptr %i.aaq, align 8
  %i.acr = uitofp i16 %i.abh to double
  %i.acs = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.acr, i32 noundef 16, ptr nonnull %i.b, i64 2200) #21 ; 2 uses
  %i.act = extractvalue { i64, ptr } %i.acs, 0    ; 2 uses
  %i.acu = extractvalue { i64, ptr } %i.acs, 1
  %i.acv = load ptr, ptr %i.aaq, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.acv, ptr noundef %i.acu, i64 noundef %i.act)
  %i.acw = load ptr, ptr %i.aaq, align 8
  %i.acx = getelementptr inbounds nuw [2 x i8], ptr %i.acw, i64 %i.act
  store ptr %i.acx, ptr %i.aaq, align 8
  br label %bb.dw

bb.dv:                                            ; preds = %bb.dp
  %i.acy = load ptr, ptr %i.aaq, align 8          ; 2 uses
  store i16 92, ptr %i.acy, align 2
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 2
  store i16 117, ptr %i.acz, align 2
  %i.ada = load ptr, ptr %i.aaq, align 8
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 4
  store ptr %i.adb, ptr %i.aaq, align 8
  %i.adc = uitofp i16 %i.abh to double
  %i.add = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.adc, i32 noundef 16, ptr nonnull %i.b, i64 2200) #21 ; 2 uses
  %i.ade = extractvalue { i64, ptr } %i.add, 0    ; 2 uses
  %i.adf = extractvalue { i64, ptr } %i.add, 1
  %i.adg = load ptr, ptr %i.aaq, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.adg, ptr noundef %i.adf, i64 noundef %i.ade)
  %i.adh = load ptr, ptr %i.aaq, align 8
  %i.adi = getelementptr inbounds nuw [2 x i8], ptr %i.adh, i64 %i.ade
  store ptr %i.adi, ptr %i.aaq, align 8
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt, %bb.ds
  %.259.i.i92 = phi i32 [ %.057.i.i84379, %bb.dv ], [ %.057.i.i84379, %bb.du ], [ %i.abs, %bb.ds ], [ %.057.i.i84379, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.dy

bb.dx:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread349
  %i.adj = zext i16 %i.abh to i64
  %i.adk = shl nuw nsw i64 %i.adj, 3
  %i.adl = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.adk ; 2 uses
  %i.adm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.adl) #26 ; 2 uses
  %i.adn = load ptr, ptr %i.aaq, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.adn, ptr noundef nonnull %i.adl, i64 noundef %i.adm)
  %i.ado = load ptr, ptr %i.aaq, align 8
  %i.adp = getelementptr inbounds nuw [2 x i8], ptr %i.ado, i64 %i.adm
  store ptr %i.adp, ptr %i.aaq, align 8
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.3.i.i87 = phi i32 [ %.259.i.i92, %bb.dw ], [ %.057.i.i84379, %bb.dx ] ; 2 uses
  %.156.i.i88 = add nuw i32 %.3.i.i87, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread: ; preds = %bb.do, %.lr.ph381, %bb.dy
  %.4.i.i89 = phi i32 [ %.3.i.i87, %bb.dy ], [ %.057.i.i84379, %bb.do ], [ %.057.i.i84379, %.lr.ph381 ]
  %.2.i.i90 = phi i32 [ %.156.i.i88, %bb.dy ], [ %.055.i.i85380, %bb.do ], [ %.055.i.i85380, %.lr.ph381 ] ; 3 uses
  %i.adq = add nuw i32 %.4.i.i89, 1               ; 2 uses
  %i.adr = icmp ugt i32 %i.aas, %i.adq
  br i1 %i.adr, label %.lr.ph381, label %._crit_edge382, !llvm.loop !350

bb.dz:                                            ; preds = %._crit_edge382
  %i.ads = zext i32 %.2.i.i90 to i64              ; 2 uses
  %i.adt = getelementptr inbounds nuw [2 x i8], ptr %i.aar, i64 %i.ads
  %i.adu = sub nuw nsw i64 %i.aat, %i.ads
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.aao, ptr noundef %i.adt, i64 noundef %i.adu)
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit170, %._crit_edge382, %bb.dz
  %i.adv = load ptr, ptr %i.aaq, align 8          ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 2
  store ptr %i.adw, ptr %i.aaq, align 8
  store i16 34, ptr %i.adv, align 2
  br label %bb.fa

bb.ea:                                            ; preds = %bb.dl
  %i.adx = getelementptr inbounds nuw i8, ptr %i.aag, i64 16 ; 4 uses
  %i.ady = load i32, ptr %i.aan, align 4          ; 5 uses
  %i.adz = zext i32 %i.ady to i64                 ; 2 uses
  %i.aea = shl nuw nsw i64 %i.adz, 3
  %i.aeb = or disjoint i64 %i.aea, 2              ; 2 uses
  %i.aec = load ptr, ptr %i.aap, align 8
  %i.aed = load ptr, ptr %i.aaq, align 8          ; 2 uses
  %i.aee = ptrtoint ptr %i.aec to i64
  %i.aef = ptrtoint ptr %i.aed to i64
  %i.aeg = sub i64 %i.aee, %i.aef
  %i.aeh = ashr exact i64 %i.aeg, 1
  %.not.i176 = icmp ugt i64 %i.aeb, %i.aeh
  br i1 %.not.i176, label %bb.eb, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit177, !prof !6

bb.eb:                                            ; preds = %bb.ea
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.aao, i64 noundef %i.aeb)
  %.pre467 = load ptr, ptr %i.aaq, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit177

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit177: ; preds = %bb.ea, %bb.eb
  %i.aei = phi ptr [ %i.aed, %bb.ea ], [ %.pre467, %bb.eb ] ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 2
  store ptr %i.aej, ptr %i.aaq, align 8
  store i16 34, ptr %i.aei, align 2
  %.not458 = icmp eq i32 %i.ady, 0
  br i1 %.not458, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit180.thread
  %i.aek = icmp ugt i32 %i.ady, %.2.i.i
  br i1 %i.aek, label %bb.en, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit

.lr.ph:                                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit177, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit180.thread
  %.055.i.i378 = phi i32 [ %.2.i.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit180.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit177 ] ; 4 uses
  %.057.i.i377 = phi i32 [ %i.agw, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit180.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit177 ] ; 9 uses
  %i.ael = zext i32 %.057.i.i377 to i64
  %i.aem = getelementptr inbounds nuw [2 x i8], ptr %i.adx, i64 %i.ael
  %i.aen = load i16, ptr %i.aem, align 2          ; 11 uses
  %i.aeo = and i16 %i.aen, -2
  %or.cond.i178 = icmp eq i16 %i.aeo, 32
  br i1 %or.cond.i178, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit180.thread, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph
  %i.aep = icmp ugt i16 %i.aen, 34
  %i.aeq = icmp ne i16 %i.aen, 92
  %or.cond5.i179 = and i1 %i.aep, %i.aeq
  %i.aer = add i16 %i.aen, 8192
  %i.aes = icmp ult i16 %i.aer, -2048
  %or.cond357 = and i1 %or.cond5.i179, %i.aes
  br i1 %or.cond357, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit180.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit180.thread350, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit180.thread350: ; preds = %bb.ec
  %6 = icmp slt i16 %i.aen, -8192
  %i.aet = zext i32 %.055.i.i378 to i64
  %i.aeu = getelementptr inbounds nuw [2 x i8], ptr %i.adx, i64 %i.aet
  %i.aev = sub i32 %.057.i.i377, %.055.i.i378
  %i.aew = zext i32 %i.aev to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.aao, ptr noundef nonnull %i.aeu, i64 noundef %i.aew)
  br i1 %6, label %bb.ed, label %bb.el

bb.ed:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit180.thread350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.aex = icmp samesign ult i16 %i.aen, -9216
  br i1 %i.aex, label %bb.ee, label %bb.ej

bb.ee:                                            ; preds = %bb.ed
  %i.aey = add nuw i32 %.057.i.i377, 1            ; 3 uses
  %i.aez = icmp ugt i32 %i.ady, %i.aey
  br i1 %i.aez, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  %i.afa = zext i32 %i.aey to i64
  %i.afb = getelementptr inbounds nuw [2 x i8], ptr %i.adx, i64 %i.afa
  %i.afc = load i16, ptr %i.afb, align 2          ; 2 uses
  %i.afd = and i16 %i.afc, -1024
  %i.afe = icmp eq i16 %i.afd, -9216
  %i.aff = load ptr, ptr %i.aaq, align 8          ; 4 uses
  br i1 %i.afe, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 2
  store ptr %i.afg, ptr %i.aaq, align 8
  store i16 %i.aen, ptr %i.aff, align 2
  %i.afh = load ptr, ptr %i.aaq, align 8          ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 2
  store ptr %i.afi, ptr %i.aaq, align 8
  store i16 %i.afc, ptr %i.afh, align 2
  br label %bb.ek

bb.eh:                                            ; preds = %bb.ef
  store i16 92, ptr %i.aff, align 2
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aff, i64 2
  store i16 117, ptr %i.afj, align 2
  %i.afk = load ptr, ptr %i.aaq, align 8
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 4
  store ptr %i.afl, ptr %i.aaq, align 8
  %i.afm = uitofp i16 %i.aen to double
  %i.afn = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.afm, i32 noundef 16, ptr nonnull %i.d, i64 2200) #21 ; 2 uses
  %i.afo = extractvalue { i64, ptr } %i.afn, 0    ; 2 uses
  %i.afp = extractvalue { i64, ptr } %i.afn, 1
  %i.afq = load ptr, ptr %i.aaq, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.afq, ptr noundef %i.afp, i64 noundef %i.afo)
  %i.afr = load ptr, ptr %i.aaq, align 8
  %i.afs = getelementptr inbounds nuw [2 x i8], ptr %i.afr, i64 %i.afo
  store ptr %i.afs, ptr %i.aaq, align 8
  br label %bb.ek

bb.ei:                                            ; preds = %bb.ee
  %i.aft = load ptr, ptr %i.aaq, align 8          ; 2 uses
  store i16 92, ptr %i.aft, align 2
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 2
  store i16 117, ptr %i.afu, align 2
  %i.afv = load ptr, ptr %i.aaq, align 8
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 4
  store ptr %i.afw, ptr %i.aaq, align 8
  %i.afx = uitofp i16 %i.aen to double
  %i.afy = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.afx, i32 noundef 16, ptr nonnull %i.d, i64 2200) #21 ; 2 uses
  %i.afz = extractvalue { i64, ptr } %i.afy, 0    ; 2 uses
  %i.aga = extractvalue { i64, ptr } %i.afy, 1
  %i.agb = load ptr, ptr %i.aaq, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.agb, ptr noundef %i.aga, i64 noundef %i.afz)
  %i.agc = load ptr, ptr %i.aaq, align 8
  %i.agd = getelementptr inbounds nuw [2 x i8], ptr %i.agc, i64 %i.afz
  store ptr %i.agd, ptr %i.aaq, align 8
  br label %bb.ek

bb.ej:                                            ; preds = %bb.ed
  %i.age = load ptr, ptr %i.aaq, align 8          ; 2 uses
  store i16 92, ptr %i.age, align 2
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 2
  store i16 117, ptr %i.agf, align 2
  %i.agg = load ptr, ptr %i.aaq, align 8
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 4
  store ptr %i.agh, ptr %i.aaq, align 8
  %i.agi = uitofp i16 %i.aen to double
  %i.agj = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.agi, i32 noundef 16, ptr nonnull %i.d, i64 2200) #21 ; 2 uses
  %i.agk = extractvalue { i64, ptr } %i.agj, 0    ; 2 uses
  %i.agl = extractvalue { i64, ptr } %i.agj, 1
  %i.agm = load ptr, ptr %i.aaq, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.agm, ptr noundef %i.agl, i64 noundef %i.agk)
  %i.agn = load ptr, ptr %i.aaq, align 8
  %i.ago = getelementptr inbounds nuw [2 x i8], ptr %i.agn, i64 %i.agk
  store ptr %i.ago, ptr %i.aaq, align 8
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei, %bb.eh, %bb.eg
  %.259.i.i = phi i32 [ %.057.i.i377, %bb.ej ], [ %.057.i.i377, %bb.ei ], [ %i.aey, %bb.eg ], [ %.057.i.i377, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.em

bb.el:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit180.thread350
  %i.agp = zext i16 %i.aen to i64
  %i.agq = shl nuw nsw i64 %i.agp, 3
  %i.agr = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.agq ; 2 uses
  %i.ags = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.agr) #26 ; 2 uses
  %i.agt = load ptr, ptr %i.aaq, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.agt, ptr noundef nonnull %i.agr, i64 noundef %i.ags)
  %i.agu = load ptr, ptr %i.aaq, align 8
  %i.agv = getelementptr inbounds nuw [2 x i8], ptr %i.agu, i64 %i.ags
  store ptr %i.agv, ptr %i.aaq, align 8
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.3.i.i = phi i32 [ %.259.i.i, %bb.ek ], [ %.057.i.i377, %bb.el ] ; 2 uses
  %.156.i.i = add nuw i32 %.3.i.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit180.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit180.thread: ; preds = %bb.ec, %.lr.ph, %bb.em
  %.4.i.i = phi i32 [ %.3.i.i, %bb.em ], [ %.057.i.i377, %bb.ec ], [ %.057.i.i377, %.lr.ph ]
  %.2.i.i = phi i32 [ %.156.i.i, %bb.em ], [ %.055.i.i378, %bb.ec ], [ %.055.i.i378, %.lr.ph ] ; 3 uses
  %i.agw = add nuw i32 %.4.i.i, 1                 ; 2 uses
  %i.agx = icmp ugt i32 %i.ady, %i.agw
  br i1 %i.agx, label %.lr.ph, label %._crit_edge, !llvm.loop !350

bb.en:                                            ; preds = %._crit_edge
  %i.agy = zext i32 %.2.i.i to i64                ; 2 uses
  %i.agz = getelementptr inbounds nuw [2 x i8], ptr %i.adx, i64 %i.agy
  %i.aha = sub nuw nsw i64 %i.adz, %i.agy
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.aao, ptr noundef nonnull %i.agz, i64 noundef %i.aha)
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit177, %._crit_edge, %bb.en
  %i.ahb = load ptr, ptr %i.aaq, align 8          ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 2
  store ptr %i.ahc, ptr %i.aaq, align 8
  store i16 34, ptr %i.ahb, align 2
  br label %bb.fa

bb.eo:                                            ; preds = %bb.d
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.ahd, align 8
  tail call void @_ZN2v88internal19FastJsonStringifierItE15SerializeDoubleEd(ptr noundef nonnull align 8 dereferenceable(1200) %0, double noundef %.0.copyload.i.i.i.i)
  br label %bb.fa

bb.ep:                                            ; preds = %bb.d
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ahf = load i64, ptr %i.ahe, align 8
  %i.ahg = lshr i64 %i.ahf, 32
  %i.ahh = trunc i64 %i.ahg to i8
  switch i8 %i.ahh, label %bb.fa [
    i8 0, label %bb.eq
    i8 1, label %bb.es
    i8 3, label %bb.eu
  ]

bb.eq:                                            ; preds = %bb.ep
  %i.ahi = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ahj = load ptr, ptr %i.ahi, align 8
  %i.ahk = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 4 uses
  %i.ahl = load ptr, ptr %i.ahk, align 8          ; 2 uses
  %i.ahm = ptrtoint ptr %i.ahj to i64
  %i.ahn = ptrtoint ptr %i.ahl to i64
  %i.aho = sub i64 %i.ahm, %i.ahn
  %.not.i183 = icmp ult i64 %i.aho, 9
  br i1 %.not.i183, label %bb.er, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit184, !prof !6

bb.er:                                            ; preds = %bb.eq
  %i.ahp = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.ahp, i64 noundef 5)
  %.pre466 = load ptr, ptr %i.ahk, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit184

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit184: ; preds = %bb.eq, %bb.er
  %i.ahq = phi ptr [ %i.ahl, %bb.eq ], [ %.pre466, %bb.er ] ; 2 uses
  store <4 x i16> <i16 102, i16 97, i16 108, i16 115>, ptr %i.ahq, align 2
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8
  store i16 101, ptr %i.ahr, align 2
  %i.ahs = load ptr, ptr %i.ahk, align 8
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 10
  store ptr %i.aht, ptr %i.ahk, align 8
  br label %bb.fa

bb.es:                                            ; preds = %bb.ep
  %i.ahu = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ahv = load ptr, ptr %i.ahu, align 8
  %i.ahw = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 4 uses
  %i.ahx = load ptr, ptr %i.ahw, align 8          ; 2 uses
  %i.ahy = ptrtoint ptr %i.ahv to i64
  %i.ahz = ptrtoint ptr %i.ahx to i64
  %i.aia = sub i64 %i.ahy, %i.ahz
  %.not.i185 = icmp ult i64 %i.aia, 8
  br i1 %.not.i185, label %bb.et, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit186, !prof !6

bb.et:                                            ; preds = %bb.es
  %i.aib = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.aib, i64 noundef 4)
  %.pre465 = load ptr, ptr %i.ahw, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit186

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit186: ; preds = %bb.es, %bb.et
  %i.aic = phi ptr [ %i.ahx, %bb.es ], [ %.pre465, %bb.et ]
  store <4 x i16> <i16 116, i16 114, i16 117, i16 101>, ptr %i.aic, align 2
  %i.aid = load ptr, ptr %i.ahw, align 8
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 8
  store ptr %i.aie, ptr %i.ahw, align 8
  br label %bb.fa

bb.eu:                                            ; preds = %bb.ep
  %i.aif = getelementptr inbounds nuw i8, ptr %0, i64 544
end_hunk_1
begin_hunk_2_@_ZN2v88internal19FastJsonStringifierItE15SerializeObjectENS0_18ContinuationRecordERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS5_2EEEE:bb.a
  br i1 %i.aeu, label %.lr.ph3462, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i62.i, !llvm.loop !347

_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i62.i: ; preds = %bb.de, %.lr.ph3462, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i60.i
  %.013.i.i61.i.lcssa = phi i64 [ %i.aed, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i60.i ], [ %.013.i.i61.i3461, %.lr.ph3462 ], [ %i.aes, %bb.de ] ; 2 uses
  %i.aev = icmp ult i64 %.013.i.i61.i.lcssa, %i.acg
  br i1 %i.aev, label %.lr.ph.i499, label %._crit_edge.i496

._crit_edge.i496:                                 ; preds = %bb.dg, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i62.i
  %.0.lcssa.i498 = phi i64 [ %.155.i.i64.i, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i62.i ], [ %.1.i505, %bb.dg ] ; 2 uses
  %i.aew = icmp ult i64 %.0.lcssa.i498, %i.acg
  %.pre3853 = load ptr, ptr %i.y, align 8         ; 2 uses
  br i1 %i.aew, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit66.i.sink.split, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit66.i, !prof !11

.lr.ph.i499:                                      ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i62.i, %bb.dg
  %.026.i500 = phi i64 [ %.1.i505, %bb.dg ], [ %.155.i.i64.i, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i62.i ] ; 3 uses
  %.02025.i501 = phi i64 [ %.pre-phi.i503, %bb.dg ], [ %.013.i.i61.i.lcssa, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i62.i ] ; 4 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.wo, i64 %.02025.i501
  %i.aey = load i8, ptr %i.aex, align 1
  %i.aez = zext i8 %i.aey to i64                  ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.aez
  %i.afb = load i8, ptr %i.afa, align 1, !range !7, !noundef !8
  %i.afc = trunc nuw i8 %i.afb to i1
  br i1 %i.afc, label %._crit_edge28.i507, label %bb.df, !prof !11

._crit_edge28.i507:                               ; preds = %.lr.ph.i499
  %.pre.i508 = add i64 %.02025.i501, 1
  br label %bb.dg

bb.df:                                            ; preds = %.lr.ph.i499
  %i.afd = getelementptr inbounds nuw i8, ptr %i.wo, i64 %.026.i500
  %i.afe = sub i64 %.02025.i501, %.026.i500       ; 2 uses
  %i.aff = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.aff, ptr noundef %i.afd, i64 noundef %i.afe)
  %i.afg = load ptr, ptr %i.y, align 8
  %i.afh = getelementptr inbounds nuw [2 x i8], ptr %i.afg, i64 %i.afe ; 2 uses
  store ptr %i.afh, ptr %i.y, align 8
  %i.afi = shl nuw nsw i64 %i.aez, 3
  %i.afj = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.afi ; 2 uses
  %i.afk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.afj) #26 ; 2 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.afh, ptr noundef nonnull %i.afj, i64 noundef %i.afk)
  %i.afl = load ptr, ptr %i.y, align 8
  %i.afm = getelementptr inbounds nuw [2 x i8], ptr %i.afl, i64 %i.afk
  store ptr %i.afm, ptr %i.y, align 8
  %i.afn = add i64 %.02025.i501, 1                ; 2 uses
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %._crit_edge28.i507
  %.pre-phi.i503 = phi i64 [ %.pre.i508, %._crit_edge28.i507 ], [ %i.afn, %bb.df ] ; 2 uses
  %.1.i505 = phi i64 [ %.026.i500, %._crit_edge28.i507 ], [ %i.afn, %bb.df ] ; 2 uses
  %exitcond.not.i506 = icmp eq i64 %.pre-phi.i503, %i.acg
  br i1 %exitcond.not.i506, label %._crit_edge.i496, label %.lr.ph.i499, !llvm.loop !348

.lr.ph3451:                                       ; preds = %.lr.ph3451.preheader, %bb.dh
  %.013.i8.i54.i3450 = phi i64 [ %i.aga, %bb.dh ], [ 0, %.lr.ph3451.preheader ] ; 3 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.wo, i64 %.013.i8.i54.i3450
  %i.afp = load i32, ptr %i.afo, align 4          ; 4 uses
  %i.afq = add i32 %i.afp, -538976288
  %i.afr = xor i32 %i.afp, 572662306
  %i.afs = add i32 %i.afr, -16843009
  %i.aft = xor i32 %i.afp, 1549556828
  %i.afu = add i32 %i.aft, -16843009
  %i.afv = and i32 %i.afp, -2139062144
  %i.afw = xor i32 %i.afv, -2139062144
  %i.afx = or i32 %i.afs, %i.afq
  %i.afy = or i32 %i.afx, %i.afu
  %i.afz = and i32 %i.afy, %i.afw
  %.not2919 = icmp eq i32 %i.afz, 0
  br i1 %.not2919, label %bb.dh, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i55.i

bb.dh:                                            ; preds = %.lr.ph3451
  %i.aga = add nuw nsw i64 %.013.i8.i54.i3450, 4  ; 2 uses
  %i.agb = or disjoint i64 %i.aga, 3
  %i.agc = icmp samesign ult i64 %i.agb, %i.acg
  br i1 %i.agc, label %.lr.ph3451, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i55.i, !llvm.loop !347

_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i55.i: ; preds = %bb.dh, %.lr.ph3451, %.preheader2932
  %.013.i8.i54.i.lcssa = phi i64 [ 0, %.preheader2932 ], [ %.013.i8.i54.i3450, %.lr.ph3451 ], [ %i.act, %bb.dh ] ; 2 uses
  %i.agd = icmp samesign ult i64 %.013.i8.i54.i.lcssa, %i.acg
  br i1 %i.agd, label %.lr.ph.i513, label %._crit_edge.i510

._crit_edge.i510:                                 ; preds = %bb.dj, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i55.i
  %.0.lcssa.i512 = phi i64 [ 0, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i55.i ], [ %.1.i519, %bb.dj ] ; 2 uses
  %i.age = icmp ult i64 %.0.lcssa.i512, %i.acg
  %.pre3854 = load ptr, ptr %i.y, align 8         ; 2 uses
  br i1 %i.age, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit66.i.sink.split, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit66.i, !prof !11

.lr.ph.i513:                                      ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i55.i, %bb.dj
  %.026.i514 = phi i64 [ %.1.i519, %bb.dj ], [ 0, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i55.i ] ; 3 uses
  %.02025.i515 = phi i64 [ %.pre-phi.i517, %bb.dj ], [ %.013.i8.i54.i.lcssa, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i55.i ] ; 4 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.wo, i64 %.02025.i515
  %i.agg = load i8, ptr %i.agf, align 1
  %i.agh = zext i8 %i.agg to i64                  ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.agh
  %i.agj = load i8, ptr %i.agi, align 1, !range !7, !noundef !8
  %i.agk = trunc nuw i8 %i.agj to i1
  br i1 %i.agk, label %._crit_edge28.i521, label %bb.di, !prof !11

._crit_edge28.i521:                               ; preds = %.lr.ph.i513
  %.pre.i522 = add i64 %.02025.i515, 1
  br label %bb.dj

bb.di:                                            ; preds = %.lr.ph.i513
  %i.agl = getelementptr inbounds nuw i8, ptr %i.wo, i64 %.026.i514
  %i.agm = sub i64 %.02025.i515, %.026.i514       ; 2 uses
  %i.agn = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.agn, ptr noundef %i.agl, i64 noundef %i.agm)
  %i.ago = load ptr, ptr %i.y, align 8
  %i.agp = getelementptr inbounds nuw [2 x i8], ptr %i.ago, i64 %i.agm ; 2 uses
  store ptr %i.agp, ptr %i.y, align 8
  %i.agq = shl nuw nsw i64 %i.agh, 3
  %i.agr = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.agq ; 2 uses
  %i.ags = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.agr) #26 ; 2 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.agp, ptr noundef nonnull %i.agr, i64 noundef %i.ags)
  %i.agt = load ptr, ptr %i.y, align 8
  %i.agu = getelementptr inbounds nuw [2 x i8], ptr %i.agt, i64 %i.ags
  store ptr %i.agu, ptr %i.y, align 8
  %i.agv = add i64 %.02025.i515, 1                ; 2 uses
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %._crit_edge28.i521
  %.pre-phi.i517 = phi i64 [ %.pre.i522, %._crit_edge28.i521 ], [ %i.agv, %bb.di ] ; 2 uses
  %.1.i519 = phi i64 [ %.026.i514, %._crit_edge28.i521 ], [ %i.agv, %bb.di ] ; 2 uses
  %exitcond.not.i520 = icmp eq i64 %.pre-phi.i517, %i.acg
  br i1 %exitcond.not.i520, label %._crit_edge.i510, label %.lr.ph.i513, !llvm.loop !348

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit66.i.sink.split: ; preds = %._crit_edge.i510, %._crit_edge.i496
  %.0.lcssa.i498.sink4457 = phi i64 [ %.0.lcssa.i498, %._crit_edge.i496 ], [ %.0.lcssa.i512, %._crit_edge.i510 ] ; 2 uses
  %.pre3853.sink = phi ptr [ %.pre3853, %._crit_edge.i496 ], [ %.pre3854, %._crit_edge.i510 ]
  %i.agw = getelementptr inbounds nuw i8, ptr %i.wo, i64 %.0.lcssa.i498.sink4457
  %i.agx = sub nuw nsw i64 %i.acg, %.0.lcssa.i498.sink4457 ; 2 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %.pre3853.sink, ptr noundef %i.agw, i64 noundef %i.agx)
  %i.agy = load ptr, ptr %i.y, align 8
  %i.agz = getelementptr inbounds nuw [2 x i8], ptr %i.agy, i64 %i.agx
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit66.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit66.i: ; preds = %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit66.i.sink.split, %._crit_edge.i496, %._crit_edge.i510
  %i.aha = phi ptr [ %.pre3854, %._crit_edge.i510 ], [ %.pre3853, %._crit_edge.i496 ], [ %i.agz, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit66.i.sink.split ] ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 2
  store ptr %i.ahb, ptr %i.y, align 8
  store i16 34, ptr %i.aha, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.dk:                                            ; preds = %bb.bc, %bb.bc
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.lk, i64 16 ; 4 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.lk, i64 12
  %i.ahe = load i32, ptr %i.ahd, align 4          ; 5 uses
  %i.ahf = zext i32 %i.ahe to i64                 ; 2 uses
  %i.ahg = shl nuw nsw i64 %i.ahf, 3
  %i.ahh = or disjoint i64 %i.ahg, 2              ; 2 uses
  %i.ahi = load ptr, ptr %i.x, align 8
  %i.ahj = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.ahk = ptrtoint ptr %i.ahi to i64
  %i.ahl = ptrtoint ptr %i.ahj to i64
  %i.ahm = sub i64 %i.ahk, %i.ahl
  %i.ahn = ashr exact i64 %i.ahm, 1
  %.not.i524 = icmp ugt i64 %i.ahh, %i.ahn
  br i1 %.not.i524, label %bb.dl, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit525, !prof !6

bb.dl:                                            ; preds = %bb.dk
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i64 noundef %i.ahh)
  %.pre3850 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit525

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit525: ; preds = %bb.dk, %bb.dl
  %i.aho = phi ptr [ %i.ahj, %bb.dk ], [ %.pre3850, %bb.dl ] ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 2
  store ptr %i.ahp, ptr %i.y, align 8
  store i16 34, ptr %i.aho, align 2
  %.not3544 = icmp eq i32 %i.ahe, 0
  br i1 %.not3544, label %._crit_edge3448.thread, label %.lr.ph3447

._crit_edge3448.thread:                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit525
  %.pre38514226 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

._crit_edge3448:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread
  %i.ahq = icmp ugt i32 %i.ahe, %.2.i.i.i
  %.pre3851 = load ptr, ptr %i.y, align 8         ; 18 uses
  br i1 %i.ahq, label %bb.dx, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

.lr.ph3447:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit525, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread
  %.055.i.i.i3446 = phi i32 [ %.2.i.i.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit525 ] ; 4 uses
  %.057.i.i.i3445 = phi i32 [ %i.akc, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit525 ] ; 9 uses
  %i.ahr = zext i32 %.057.i.i.i3445 to i64
  %i.ahs = getelementptr inbounds nuw [2 x i8], ptr %i.ahc, i64 %i.ahr
  %i.aht = load i16, ptr %i.ahs, align 2          ; 11 uses
  %i.ahu = and i16 %i.aht, -2
  %or.cond.i = icmp eq i16 %i.ahu, 32
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph3447
  %i.ahv = icmp ugt i16 %i.aht, 34
  %i.ahw = icmp ne i16 %i.aht, 92
  %or.cond5.i = and i1 %i.ahv, %i.ahw
  %i.ahx = add i16 %i.aht, 8192
  %i.ahy = icmp ult i16 %i.ahx, -2048
  %or.cond = and i1 %or.cond5.i, %i.ahy
  br i1 %or.cond, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread2654, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread2654: ; preds = %bb.dm
  %7 = icmp slt i16 %i.aht, -8192
  %i.ahz = zext i32 %.055.i.i.i3446 to i64
  %i.aia = getelementptr inbounds nuw [2 x i8], ptr %i.ahc, i64 %i.ahz
  %i.aib = sub i32 %.057.i.i.i3445, %.055.i.i.i3446
  %i.aic = zext i32 %i.aib to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.z, ptr noundef nonnull %i.aia, i64 noundef %i.aic)
  br i1 %7, label %bb.dn, label %bb.dv

bb.dn:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread2654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #21
  %i.aid = icmp samesign ult i16 %i.aht, -9216
  br i1 %i.aid, label %bb.do, label %bb.dt

bb.do:                                            ; preds = %bb.dn
  %i.aie = add nuw i32 %.057.i.i.i3445, 1         ; 3 uses
  %i.aif = icmp ugt i32 %i.ahe, %i.aie
  br i1 %i.aif, label %bb.dp, label %bb.ds

bb.dp:                                            ; preds = %bb.do
  %i.aig = zext i32 %i.aie to i64
  %i.aih = getelementptr inbounds nuw [2 x i8], ptr %i.ahc, i64 %i.aig
  %i.aii = load i16, ptr %i.aih, align 2          ; 2 uses
  %i.aij = and i16 %i.aii, -1024
  %i.aik = icmp eq i16 %i.aij, -9216
  %i.ail = load ptr, ptr %i.y, align 8            ; 4 uses
  br i1 %i.aik, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 2
  store ptr %i.aim, ptr %i.y, align 8
  store i16 %i.aht, ptr %i.ail, align 2
  %i.ain = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 2
  store ptr %i.aio, ptr %i.y, align 8
  store i16 %i.aii, ptr %i.ain, align 2
  br label %bb.du

bb.dr:                                            ; preds = %bb.dp
  store i16 92, ptr %i.ail, align 2
  %i.aip = getelementptr inbounds nuw i8, ptr %i.ail, i64 2
  store i16 117, ptr %i.aip, align 2
  %i.aiq = load ptr, ptr %i.y, align 8
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 4
  store ptr %i.air, ptr %i.y, align 8
  %i.ais = uitofp i16 %i.aht to double
  %i.ait = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ais, i32 noundef 16, ptr nonnull %i.s, i64 2200) #21 ; 2 uses
  %i.aiu = extractvalue { i64, ptr } %i.ait, 0    ; 2 uses
  %i.aiv = extractvalue { i64, ptr } %i.ait, 1
  %i.aiw = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.aiw, ptr noundef %i.aiv, i64 noundef %i.aiu)
  %i.aix = load ptr, ptr %i.y, align 8
  %i.aiy = getelementptr inbounds nuw [2 x i8], ptr %i.aix, i64 %i.aiu
  store ptr %i.aiy, ptr %i.y, align 8
  br label %bb.du

bb.ds:                                            ; preds = %bb.do
  %i.aiz = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.aiz, align 2
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 2
  store i16 117, ptr %i.aja, align 2
  %i.ajb = load ptr, ptr %i.y, align 8
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 4
  store ptr %i.ajc, ptr %i.y, align 8
  %i.ajd = uitofp i16 %i.aht to double
  %i.aje = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ajd, i32 noundef 16, ptr nonnull %i.s, i64 2200) #21 ; 2 uses
  %i.ajf = extractvalue { i64, ptr } %i.aje, 0    ; 2 uses
  %i.ajg = extractvalue { i64, ptr } %i.aje, 1
  %i.ajh = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ajh, ptr noundef %i.ajg, i64 noundef %i.ajf)
  %i.aji = load ptr, ptr %i.y, align 8
  %i.ajj = getelementptr inbounds nuw [2 x i8], ptr %i.aji, i64 %i.ajf
  store ptr %i.ajj, ptr %i.y, align 8
  br label %bb.du

bb.dt:                                            ; preds = %bb.dn
  %i.ajk = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.ajk, align 2
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 2
  store i16 117, ptr %i.ajl, align 2
  %i.ajm = load ptr, ptr %i.y, align 8
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 4
  store ptr %i.ajn, ptr %i.y, align 8
  %i.ajo = uitofp i16 %i.aht to double
  %i.ajp = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ajo, i32 noundef 16, ptr nonnull %i.s, i64 2200) #21 ; 2 uses
  %i.ajq = extractvalue { i64, ptr } %i.ajp, 0    ; 2 uses
  %i.ajr = extractvalue { i64, ptr } %i.ajp, 1
  %i.ajs = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ajs, ptr noundef %i.ajr, i64 noundef %i.ajq)
  %i.ajt = load ptr, ptr %i.y, align 8
  %i.aju = getelementptr inbounds nuw [2 x i8], ptr %i.ajt, i64 %i.ajq
  store ptr %i.aju, ptr %i.y, align 8
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds, %bb.dr, %bb.dq
  %.259.i.i.i = phi i32 [ %.057.i.i.i3445, %bb.dt ], [ %.057.i.i.i3445, %bb.ds ], [ %i.aie, %bb.dq ], [ %.057.i.i.i3445, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #21
  br label %bb.dw

bb.dv:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread2654
  %i.ajv = zext i16 %i.aht to i64
  %i.ajw = shl nuw nsw i64 %i.ajv, 3
  %i.ajx = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.ajw ; 2 uses
  %i.ajy = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ajx) #26 ; 2 uses
  %i.ajz = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ajz, ptr noundef nonnull %i.ajx, i64 noundef %i.ajy)
  %i.aka = load ptr, ptr %i.y, align 8
  %i.akb = getelementptr inbounds nuw [2 x i8], ptr %i.aka, i64 %i.ajy
  store ptr %i.akb, ptr %i.y, align 8
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.3.i.i.i = phi i32 [ %.259.i.i.i, %bb.du ], [ %.057.i.i.i3445, %bb.dv ] ; 2 uses
  %.156.i.i.i = add nuw i32 %.3.i.i.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread: ; preds = %bb.dm, %.lr.ph3447, %bb.dw
  %.4.i.i.i = phi i32 [ %.3.i.i.i, %bb.dw ], [ %.057.i.i.i3445, %bb.dm ], [ %.057.i.i.i3445, %.lr.ph3447 ]
  %.2.i.i.i = phi i32 [ %.156.i.i.i, %bb.dw ], [ %.055.i.i.i3446, %bb.dm ], [ %.055.i.i.i3446, %.lr.ph3447 ] ; 3 uses
  %i.akc = add nuw i32 %.4.i.i.i, 1               ; 2 uses
  %i.akd = icmp ugt i32 %i.ahe, %i.akc
  br i1 %i.akd, label %.lr.ph3447, label %._crit_edge3448, !llvm.loop !350

bb.dx:                                            ; preds = %._crit_edge3448
  %i.ake = zext i32 %.2.i.i.i to i64              ; 2 uses
  %i.akf = getelementptr inbounds nuw [2 x i8], ptr %i.ahc, i64 %i.ake ; 17 uses
  %i.akg = sub nuw nsw i64 %i.ahf, %i.ake         ; 3 uses
  %trunc2918 = trunc nuw i64 %i.akg to i32
  switch i32 %trunc2918, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i [
    i32 1, label %bb.dy
    i32 2, label %bb.dz
    i32 3, label %bb.ea
    i32 4, label %bb.eb
    i32 5, label %bb.ec
    i32 6, label %bb.ed
    i32 7, label %bb.ee
    i32 8, label %bb.ef
    i32 9, label %bb.eg
    i32 10, label %bb.eh
    i32 11, label %bb.ei
    i32 12, label %bb.ej
    i32 13, label %bb.ek
    i32 14, label %bb.el
    i32 15, label %bb.em
    i32 16, label %bb.en
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit
  ]

bb.dy:                                            ; preds = %bb.dx
  %i.akh = load i16, ptr %i.akf, align 2
  store i16 %i.akh, ptr %.pre3851, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.dz:                                            ; preds = %bb.dx
  %i.aki = load i32, ptr %i.akf, align 2
  store i32 %i.aki, ptr %.pre3851, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ea:                                            ; preds = %bb.dx
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre3851, ptr noundef nonnull align 2 dereferenceable(6) %i.akf, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.eb:                                            ; preds = %bb.dx
  %i.akj = load i64, ptr %i.akf, align 2
  store i64 %i.akj, ptr %.pre3851, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ec:                                            ; preds = %bb.dx
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre3851, ptr noundef nonnull align 2 dereferenceable(10) %i.akf, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ed:                                            ; preds = %bb.dx
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre3851, ptr noundef nonnull align 2 dereferenceable(12) %i.akf, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ee:                                            ; preds = %bb.dx
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre3851, ptr noundef nonnull align 2 dereferenceable(14) %i.akf, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ef:                                            ; preds = %bb.dx
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre3851, ptr noundef nonnull align 2 dereferenceable(16) %i.akf, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.eg:                                            ; preds = %bb.dx
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre3851, ptr noundef nonnull align 2 dereferenceable(18) %i.akf, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.eh:                                            ; preds = %bb.dx
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre3851, ptr noundef nonnull align 2 dereferenceable(20) %i.akf, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ei:                                            ; preds = %bb.dx
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre3851, ptr noundef nonnull align 2 dereferenceable(22) %i.akf, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ej:                                            ; preds = %bb.dx
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre3851, ptr noundef nonnull align 2 dereferenceable(24) %i.akf, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ek:                                            ; preds = %bb.dx
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre3851, ptr noundef nonnull align 2 dereferenceable(26) %i.akf, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.el:                                            ; preds = %bb.dx
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre3851, ptr noundef nonnull align 2 dereferenceable(28) %i.akf, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.em:                                            ; preds = %bb.dx
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre3851, ptr noundef nonnull align 2 dereferenceable(30) %i.akf, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.en:                                            ; preds = %bb.dx
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre3851, ptr noundef nonnull align 2 dereferenceable(32) %i.akf, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.dx
  %.idx.i.i.i.i = shl nuw nsw i64 %i.akg, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre3851, ptr nonnull align 2 %i.akf, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit: ; preds = %bb.dx, %bb.dy, %bb.dz, %bb.ea, %bb.eb, %bb.ec, %bb.ed, %bb.ee, %bb.ef, %bb.eg, %bb.eh, %bb.ei, %bb.ej, %bb.ek, %bb.el, %bb.em, %bb.en, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i
  %i.akk = load ptr, ptr %i.y, align 8
  %i.akl = getelementptr inbounds nuw [2 x i8], ptr %i.akk, i64 %i.akg
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i: ; preds = %._crit_edge3448.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit, %._crit_edge3448
  %i.akm = phi ptr [ %i.akl, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit ], [ %.pre3851, %._crit_edge3448 ], [ %.pre38514226, %._crit_edge3448.thread ] ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 2
  store ptr %i.akn, ptr %i.y, align 8
  store i16 34, ptr %i.akm, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.eo:                                            ; preds = %bb.bc, %bb.bc, %bb.bc, %bb.bc
  %i.ako = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.akp = load i64, ptr %i.ako, align 8
  %i.akq = inttoptr i64 %i.akp to ptr             ; 6 uses
  %i.akr = load atomic volatile i64, ptr %i.lk monotonic, align 8
  %i.aks = add i64 %i.akr, 11
  %i.akt = inttoptr i64 %i.aks to ptr
  %i.aku = load atomic volatile i16, ptr %i.akt monotonic, align 2
  %i.akv = and i16 %i.aku, 16
  %.not.i526 = icmp eq i16 %i.akv, 0
  br i1 %.not.i526, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.akw = load ptr, ptr %i.akq, align 8
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 16
  %i.aky = load ptr, ptr %i.akx, align 8
  %i.akz = call noundef zeroext i1 %i.aky(ptr noundef nonnull align 8 dereferenceable(8) %i.akq) #21, !inline_history !80
  br i1 %i.akz, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.akq) #21
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akq, i64 8
  %i.alb = load ptr, ptr %i.ala, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.er:                                            ; preds = %bb.ep, %bb.eo
  %i.alc = load ptr, ptr %i.akq, align 8
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 72
  %i.ale = load ptr, ptr %i.ald, align 8
  %i.alf = call noundef ptr %i.ale(ptr noundef nonnull align 8 dereferenceable(16) %i.akq) #21, !inline_history !80
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.eq, %bb.er
  %.0.i527 = phi ptr [ %i.alb, %bb.eq ], [ %i.alf, %bb.er ] ; 4 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.lk, i64 12
  %i.alh = load i32, ptr %i.alg, align 4          ; 5 uses
  %i.ali = zext i32 %i.alh to i64                 ; 2 uses
  %i.alj = shl nuw nsw i64 %i.ali, 3
  %i.alk = or disjoint i64 %i.alj, 2              ; 2 uses
  %i.all = load ptr, ptr %i.x, align 8
  %i.alm = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.aln = ptrtoint ptr %i.all to i64
  %i.alo = ptrtoint ptr %i.alm to i64
  %i.alp = sub i64 %i.aln, %i.alo
  %i.alq = ashr exact i64 %i.alp, 1
  %.not.i528 = icmp ugt i64 %i.alk, %i.alq
  br i1 %.not.i528, label %bb.es, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit529, !prof !6

bb.es:                                            ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i64 noundef %i.alk)
  %.pre3848 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit529

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit529: ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.es
  %i.alr = phi ptr [ %i.alm, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ], [ %.pre3848, %bb.es ] ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 2
  store ptr %i.als, ptr %i.y, align 8
  store i16 34, ptr %i.alr, align 2
  %.not3543 = icmp eq i32 %i.alh, 0
  br i1 %.not3543, label %._crit_edge3443.thread, label %.lr.ph3442

._crit_edge3443.thread:                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit529
  %.pre38494228 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

._crit_edge3443:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit532.thread
  %i.alt = icmp ugt i32 %i.alh, %.2.i.i107.i
  %.pre3849 = load ptr, ptr %i.y, align 8         ; 18 uses
  br i1 %i.alt, label %bb.fe, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

.lr.ph3442:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit529, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit532.thread
  %.055.i.i102.i3441 = phi i32 [ %.2.i.i107.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit532.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit529 ] ; 4 uses
  %.057.i.i101.i3440 = phi i32 [ %i.aof, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit532.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit529 ] ; 9 uses
  %i.alu = zext i32 %.057.i.i101.i3440 to i64
  %i.alv = getelementptr inbounds nuw [2 x i8], ptr %.0.i527, i64 %i.alu
  %i.alw = load i16, ptr %i.alv, align 2          ; 11 uses
  %i.alx = and i16 %i.alw, -2
  %or.cond.i530 = icmp eq i16 %i.alx, 32
  br i1 %or.cond.i530, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit532.thread, label %bb.et

bb.et:                                            ; preds = %.lr.ph3442
  %i.aly = icmp ugt i16 %i.alw, 34
  %i.alz = icmp ne i16 %i.alw, 92
  %or.cond5.i531 = and i1 %i.aly, %i.alz
  %i.ama = add i16 %i.alw, 8192
  %i.amb = icmp ult i16 %i.ama, -2048
  %or.cond2833 = and i1 %or.cond5.i531, %i.amb
  br i1 %or.cond2833, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit532.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit532.thread2655, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit532.thread2655: ; preds = %bb.et
  %8 = icmp slt i16 %i.alw, -8192
  %i.amc = zext i32 %.055.i.i102.i3441 to i64
  %i.amd = getelementptr inbounds nuw [2 x i8], ptr %.0.i527, i64 %i.amc
  %i.ame = sub i32 %.057.i.i101.i3440, %.055.i.i102.i3441
  %i.amf = zext i32 %i.ame to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.z, ptr noundef %i.amd, i64 noundef %i.amf)
  br i1 %8, label %bb.eu, label %bb.fc

bb.eu:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit532.thread2655
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #21
  %i.amg = icmp samesign ult i16 %i.alw, -9216
  br i1 %i.amg, label %bb.ev, label %bb.fa

bb.ev:                                            ; preds = %bb.eu
  %i.amh = add nuw i32 %.057.i.i101.i3440, 1      ; 3 uses
  %i.ami = icmp ugt i32 %i.alh, %i.amh
  br i1 %i.ami, label %bb.ew, label %bb.ez

bb.ew:                                            ; preds = %bb.ev
  %i.amj = zext i32 %i.amh to i64
  %i.amk = getelementptr inbounds nuw [2 x i8], ptr %.0.i527, i64 %i.amj
  %i.aml = load i16, ptr %i.amk, align 2          ; 2 uses
  %i.amm = and i16 %i.aml, -1024
  %i.amn = icmp eq i16 %i.amm, -9216
  %i.amo = load ptr, ptr %i.y, align 8            ; 4 uses
  br i1 %i.amn, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 2
  store ptr %i.amp, ptr %i.y, align 8
  store i16 %i.alw, ptr %i.amo, align 2
  %i.amq = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 2
  store ptr %i.amr, ptr %i.y, align 8
  store i16 %i.aml, ptr %i.amq, align 2
  br label %bb.fb

bb.ey:                                            ; preds = %bb.ew
  store i16 92, ptr %i.amo, align 2
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amo, i64 2
  store i16 117, ptr %i.ams, align 2
  %i.amt = load ptr, ptr %i.y, align 8
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 4
  store ptr %i.amu, ptr %i.y, align 8
  %i.amv = uitofp i16 %i.alw to double
  %i.amw = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.amv, i32 noundef 16, ptr nonnull %i.q, i64 2200) #21 ; 2 uses
  %i.amx = extractvalue { i64, ptr } %i.amw, 0    ; 2 uses
  %i.amy = extractvalue { i64, ptr } %i.amw, 1
  %i.amz = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.amz, ptr noundef %i.amy, i64 noundef %i.amx)
  %i.ana = load ptr, ptr %i.y, align 8
  %i.anb = getelementptr inbounds nuw [2 x i8], ptr %i.ana, i64 %i.amx
  store ptr %i.anb, ptr %i.y, align 8
  br label %bb.fb

bb.ez:                                            ; preds = %bb.ev
  %i.anc = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.anc, align 2
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 2
  store i16 117, ptr %i.and, align 2
  %i.ane = load ptr, ptr %i.y, align 8
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 4
  store ptr %i.anf, ptr %i.y, align 8
  %i.ang = uitofp i16 %i.alw to double
  %i.anh = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ang, i32 noundef 16, ptr nonnull %i.q, i64 2200) #21 ; 2 uses
  %i.ani = extractvalue { i64, ptr } %i.anh, 0    ; 2 uses
  %i.anj = extractvalue { i64, ptr } %i.anh, 1
  %i.ank = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ank, ptr noundef %i.anj, i64 noundef %i.ani)
  %i.anl = load ptr, ptr %i.y, align 8
  %i.anm = getelementptr inbounds nuw [2 x i8], ptr %i.anl, i64 %i.ani
  store ptr %i.anm, ptr %i.y, align 8
  br label %bb.fb

bb.fa:                                            ; preds = %bb.eu
  %i.ann = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.ann, align 2
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 2
  store i16 117, ptr %i.ano, align 2
  %i.anp = load ptr, ptr %i.y, align 8
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 4
  store ptr %i.anq, ptr %i.y, align 8
  %i.anr = uitofp i16 %i.alw to double
  %i.ans = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.anr, i32 noundef 16, ptr nonnull %i.q, i64 2200) #21 ; 2 uses
  %i.ant = extractvalue { i64, ptr } %i.ans, 0    ; 2 uses
  %i.anu = extractvalue { i64, ptr } %i.ans, 1
  %i.anv = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.anv, ptr noundef %i.anu, i64 noundef %i.ant)
  %i.anw = load ptr, ptr %i.y, align 8
  %i.anx = getelementptr inbounds nuw [2 x i8], ptr %i.anw, i64 %i.ant
  store ptr %i.anx, ptr %i.y, align 8
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez, %bb.ey, %bb.ex
  %.259.i.i109.i = phi i32 [ %.057.i.i101.i3440, %bb.fa ], [ %.057.i.i101.i3440, %bb.ez ], [ %i.amh, %bb.ex ], [ %.057.i.i101.i3440, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #21
  br label %bb.fd

bb.fc:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit532.thread2655
  %i.any = zext i16 %i.alw to i64
  %i.anz = shl nuw nsw i64 %i.any, 3
  %i.aoa = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.anz ; 2 uses
  %i.aob = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aoa) #26 ; 2 uses
  %i.aoc = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.aoc, ptr noundef nonnull %i.aoa, i64 noundef %i.aob)
  %i.aod = load ptr, ptr %i.y, align 8
  %i.aoe = getelementptr inbounds nuw [2 x i8], ptr %i.aod, i64 %i.aob
  store ptr %i.aoe, ptr %i.y, align 8
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.3.i.i104.i = phi i32 [ %.259.i.i109.i, %bb.fb ], [ %.057.i.i101.i3440, %bb.fc ] ; 2 uses
  %.156.i.i105.i = add nuw i32 %.3.i.i104.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit532.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit532.thread: ; preds = %bb.et, %.lr.ph3442, %bb.fd
  %.4.i.i106.i = phi i32 [ %.3.i.i104.i, %bb.fd ], [ %.057.i.i101.i3440, %bb.et ], [ %.057.i.i101.i3440, %.lr.ph3442 ]
  %.2.i.i107.i = phi i32 [ %.156.i.i105.i, %bb.fd ], [ %.055.i.i102.i3441, %bb.et ], [ %.055.i.i102.i3441, %.lr.ph3442 ] ; 3 uses
  %i.aof = add nuw i32 %.4.i.i106.i, 1            ; 2 uses
  %i.aog = icmp ugt i32 %i.alh, %i.aof
  br i1 %i.aog, label %.lr.ph3442, label %._crit_edge3443, !llvm.loop !350

bb.fe:                                            ; preds = %._crit_edge3443
  %i.aoh = zext i32 %.2.i.i107.i to i64           ; 2 uses
  %i.aoi = getelementptr inbounds nuw [2 x i8], ptr %.0.i527, i64 %i.aoh ; 17 uses
  %i.aoj = sub nuw nsw i64 %i.ali, %i.aoh         ; 3 uses
  %trunc2917 = trunc nuw i64 %i.aoj to i32
  switch i32 %trunc2917, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i535 [
    i32 1, label %bb.ff
    i32 2, label %bb.fg
    i32 3, label %bb.fh
    i32 4, label %bb.fi
    i32 5, label %bb.fj
    i32 6, label %bb.fk
    i32 7, label %bb.fl
    i32 8, label %bb.fm
    i32 9, label %bb.fn
    i32 10, label %bb.fo
    i32 11, label %bb.fp
    i32 12, label %bb.fq
    i32 13, label %bb.fr
    i32 14, label %bb.fs
    i32 15, label %bb.ft
    i32 16, label %bb.fu
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit537
  ]

bb.ff:                                            ; preds = %bb.fe
  %i.aok = load i16, ptr %i.aoi, align 2
  store i16 %i.aok, ptr %.pre3849, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit537

bb.fg:                                            ; preds = %bb.fe
  %i.aol = load i32, ptr %i.aoi, align 2
  store i32 %i.aol, ptr %.pre3849, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit537

bb.fh:                                            ; preds = %bb.fe
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre3849, ptr noundef nonnull align 2 dereferenceable(6) %i.aoi, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit537

bb.fi:                                            ; preds = %bb.fe
  %i.aom = load i64, ptr %i.aoi, align 2
  store i64 %i.aom, ptr %.pre3849, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit537

bb.fj:                                            ; preds = %bb.fe
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre3849, ptr noundef nonnull align 2 dereferenceable(10) %i.aoi, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit537

bb.fk:                                            ; preds = %bb.fe
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre3849, ptr noundef nonnull align 2 dereferenceable(12) %i.aoi, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit537

bb.fl:                                            ; preds = %bb.fe
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre3849, ptr noundef nonnull align 2 dereferenceable(14) %i.aoi, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit537

bb.fm:                                            ; preds = %bb.fe
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre3849, ptr noundef nonnull align 2 dereferenceable(16) %i.aoi, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit537

bb.fn:                                            ; preds = %bb.fe
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre3849, ptr noundef nonnull align 2 dereferenceable(18) %i.aoi, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit537

bb.fo:                                            ; preds = %bb.fe
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre3849, ptr noundef nonnull align 2 dereferenceable(20) %i.aoi, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit537

bb.fp:                                            ; preds = %bb.fe
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre3849, ptr noundef nonnull align 2 dereferenceable(22) %i.aoi, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit537

bb.fq:                                            ; preds = %bb.fe
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre3849, ptr noundef nonnull align 2 dereferenceable(24) %i.aoi, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit537

bb.fr:                                            ; preds = %bb.fe
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre3849, ptr noundef nonnull align 2 dereferenceable(26) %i.aoi, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit537

bb.fs:                                            ; preds = %bb.fe
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre3849, ptr noundef nonnull align 2 dereferenceable(28) %i.aoi, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit537

bb.ft:                                            ; preds = %bb.fe
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre3849, ptr noundef nonnull align 2 dereferenceable(30) %i.aoi, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit537

bb.fu:                                            ; preds = %bb.fe
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre3849, ptr noundef nonnull align 2 dereferenceable(32) %i.aoi, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit537

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i535: ; preds = %bb.fe
  %.idx.i.i.i.i536 = shl nuw nsw i64 %i.aoj, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre3849, ptr nonnull align 2 %i.aoi, i64 %.idx.i.i.i.i536, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit537

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit537: ; preds = %bb.fe, %bb.ff, %bb.fg, %bb.fh, %bb.fi, %bb.fj, %bb.fk, %bb.fl, %bb.fm, %bb.fn, %bb.fo, %bb.fp, %bb.fq, %bb.fr, %bb.fs, %bb.ft, %bb.fu, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i535
  %i.aon = load ptr, ptr %i.y, align 8
  %i.aoo = getelementptr inbounds nuw [2 x i8], ptr %i.aon, i64 %i.aoj
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i: ; preds = %._crit_edge3443.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit537, %._crit_edge3443
  %i.aop = phi ptr [ %i.aoo, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit537 ], [ %.pre3849, %._crit_edge3443 ], [ %.pre38494228, %._crit_edge3443.thread ] ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 2
  store ptr %i.aoq, ptr %i.y, align 8
  store i16 34, ptr %i.aop, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.fv:                                            ; preds = %bb.bc
  %i.aor = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.aos = load i64, ptr %i.aor, align 8
  %i.aot = add i64 %i.aos, -1
  %i.aou = inttoptr i64 %i.aot to ptr             ; 5 uses
  %i.aov = load atomic volatile i64, ptr %i.aou monotonic, align 8
  %i.aow = add i64 %i.aov, 11
  %i.aox = inttoptr i64 %i.aow to ptr
  %i.aoy = load atomic volatile i16, ptr %i.aox monotonic, align 2
  %i.aoz = and i16 %i.aoy, -121
  %i.apa = icmp eq i16 %i.aoz, 2
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aou, i64 16 ; 5 uses
  br i1 %i.apa, label %bb.fw, label %bb.hd

bb.fw:                                            ; preds = %bb.fv
  %i.apc = load i64, ptr %i.apb, align 8
  %i.apd = inttoptr i64 %i.apc to ptr             ; 6 uses
  %i.ape = load atomic volatile i64, ptr %i.aou monotonic, align 8
  %i.apf = add i64 %i.ape, 11
  %i.apg = inttoptr i64 %i.apf to ptr
  %i.aph = load atomic volatile i16, ptr %i.apg monotonic, align 2
  %i.api = and i16 %i.aph, 16
  %.not.i539 = icmp eq i16 %i.api, 0
  br i1 %.not.i539, label %bb.fz, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.apj = load ptr, ptr %i.apd, align 8
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 16
  %i.apl = load ptr, ptr %i.apk, align 8
  %i.apm = call noundef zeroext i1 %i.apl(ptr noundef nonnull align 8 dereferenceable(8) %i.apd) #21, !inline_history !80
  br i1 %i.apm, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.apd) #21
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apd, i64 8
  %i.apo = load ptr, ptr %i.apn, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit541

bb.fz:                                            ; preds = %bb.fx, %bb.fw
  %i.app = load ptr, ptr %i.apd, align 8
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 72
  %i.apr = load ptr, ptr %i.apq, align 8
  %i.aps = call noundef ptr %i.apr(ptr noundef nonnull align 8 dereferenceable(16) %i.apd) #21, !inline_history !80
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit541

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit541: ; preds = %bb.fy, %bb.fz
  %.0.i540 = phi ptr [ %i.apo, %bb.fy ], [ %i.aps, %bb.fz ] ; 4 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aou, i64 12
  %i.apu = load i32, ptr %i.apt, align 4          ; 5 uses
  %i.apv = zext i32 %i.apu to i64                 ; 2 uses
  %i.apw = shl nuw nsw i64 %i.apv, 3
  %i.apx = or disjoint i64 %i.apw, 2              ; 2 uses
  %i.apy = load ptr, ptr %i.x, align 8
  %i.apz = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.aqa = ptrtoint ptr %i.apy to i64
  %i.aqb = ptrtoint ptr %i.apz to i64
  %i.aqc = sub i64 %i.aqa, %i.aqb
  %i.aqd = ashr exact i64 %i.aqc, 1
  %.not.i542 = icmp ugt i64 %i.apx, %i.aqd
  br i1 %.not.i542, label %bb.ga, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit543, !prof !6

bb.ga:                                            ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit541
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i64 noundef %i.apx)
  %.pre3846 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit543

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit543: ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit541, %bb.ga
  %i.aqe = phi ptr [ %i.apz, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit541 ], [ %.pre3846, %bb.ga ] ; 2 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 2
  store ptr %i.aqf, ptr %i.y, align 8
  store i16 34, ptr %i.aqe, align 2
  %.not3542 = icmp eq i32 %i.apu, 0
  br i1 %.not3542, label %._crit_edge3438.thread, label %.lr.ph3437

._crit_edge3438.thread:                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit543
  %.pre38474230 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit119.i

._crit_edge3438:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit546.thread
  %i.aqg = icmp ugt i32 %i.apu, %.2.i.i116.i
  %.pre3847 = load ptr, ptr %i.y, align 8         ; 18 uses
  br i1 %i.aqg, label %bb.gm, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit119.i

.lr.ph3437:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit543, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit546.thread
  %.055.i.i111.i3436 = phi i32 [ %.2.i.i116.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit546.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit543 ] ; 4 uses
  %.057.i.i110.i3435 = phi i32 [ %i.ass, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit546.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit543 ] ; 9 uses
  %i.aqh = zext i32 %.057.i.i110.i3435 to i64
  %i.aqi = getelementptr inbounds nuw [2 x i8], ptr %.0.i540, i64 %i.aqh
  %i.aqj = load i16, ptr %i.aqi, align 2          ; 11 uses
  %i.aqk = and i16 %i.aqj, -2
  %or.cond.i544 = icmp eq i16 %i.aqk, 32
  br i1 %or.cond.i544, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit546.thread, label %bb.gb

bb.gb:                                            ; preds = %.lr.ph3437
  %i.aql = icmp ugt i16 %i.aqj, 34
  %i.aqm = icmp ne i16 %i.aqj, 92
  %or.cond5.i545 = and i1 %i.aql, %i.aqm
  %i.aqn = add i16 %i.aqj, 8192
  %i.aqo = icmp ult i16 %i.aqn, -2048
  %or.cond2835 = and i1 %or.cond5.i545, %i.aqo
  br i1 %or.cond2835, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit546.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit546.thread2656, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit546.thread2656: ; preds = %bb.gb
  %9 = icmp slt i16 %i.aqj, -8192
  %i.aqp = zext i32 %.055.i.i111.i3436 to i64
  %i.aqq = getelementptr inbounds nuw [2 x i8], ptr %.0.i540, i64 %i.aqp
  %i.aqr = sub i32 %.057.i.i110.i3435, %.055.i.i111.i3436
  %i.aqs = zext i32 %i.aqr to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.z, ptr noundef %i.aqq, i64 noundef %i.aqs)
  br i1 %9, label %bb.gc, label %bb.gk

bb.gc:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit546.thread2656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #21
  %i.aqt = icmp samesign ult i16 %i.aqj, -9216
  br i1 %i.aqt, label %bb.gd, label %bb.gi

bb.gd:                                            ; preds = %bb.gc
  %i.aqu = add nuw i32 %.057.i.i110.i3435, 1      ; 3 uses
  %i.aqv = icmp ugt i32 %i.apu, %i.aqu
  br i1 %i.aqv, label %bb.ge, label %bb.gh

bb.ge:                                            ; preds = %bb.gd
  %i.aqw = zext i32 %i.aqu to i64
  %i.aqx = getelementptr inbounds nuw [2 x i8], ptr %.0.i540, i64 %i.aqw
  %i.aqy = load i16, ptr %i.aqx, align 2          ; 2 uses
  %i.aqz = and i16 %i.aqy, -1024
  %i.ara = icmp eq i16 %i.aqz, -9216
  %i.arb = load ptr, ptr %i.y, align 8            ; 4 uses
  br i1 %i.ara, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.arc = getelementptr inbounds nuw i8, ptr %i.arb, i64 2
  store ptr %i.arc, ptr %i.y, align 8
  store i16 %i.aqj, ptr %i.arb, align 2
  %i.ard = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 2
  store ptr %i.are, ptr %i.y, align 8
  store i16 %i.aqy, ptr %i.ard, align 2
  br label %bb.gj

bb.gg:                                            ; preds = %bb.ge
  store i16 92, ptr %i.arb, align 2
  %i.arf = getelementptr inbounds nuw i8, ptr %i.arb, i64 2
  store i16 117, ptr %i.arf, align 2
  %i.arg = load ptr, ptr %i.y, align 8
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 4
  store ptr %i.arh, ptr %i.y, align 8
  %i.ari = uitofp i16 %i.aqj to double
  %i.arj = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ari, i32 noundef 16, ptr nonnull %i.p, i64 2200) #21 ; 2 uses
  %i.ark = extractvalue { i64, ptr } %i.arj, 0    ; 2 uses
  %i.arl = extractvalue { i64, ptr } %i.arj, 1
  %i.arm = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.arm, ptr noundef %i.arl, i64 noundef %i.ark)
  %i.arn = load ptr, ptr %i.y, align 8
  %i.aro = getelementptr inbounds nuw [2 x i8], ptr %i.arn, i64 %i.ark
  store ptr %i.aro, ptr %i.y, align 8
  br label %bb.gj

bb.gh:                                            ; preds = %bb.gd
  %i.arp = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.arp, align 2
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 2
  store i16 117, ptr %i.arq, align 2
  %i.arr = load ptr, ptr %i.y, align 8
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 4
  store ptr %i.ars, ptr %i.y, align 8
  %i.art = uitofp i16 %i.aqj to double
  %i.aru = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.art, i32 noundef 16, ptr nonnull %i.p, i64 2200) #21 ; 2 uses
  %i.arv = extractvalue { i64, ptr } %i.aru, 0    ; 2 uses
  %i.arw = extractvalue { i64, ptr } %i.aru, 1
  %i.arx = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.arx, ptr noundef %i.arw, i64 noundef %i.arv)
  %i.ary = load ptr, ptr %i.y, align 8
  %i.arz = getelementptr inbounds nuw [2 x i8], ptr %i.ary, i64 %i.arv
  store ptr %i.arz, ptr %i.y, align 8
  br label %bb.gj

bb.gi:                                            ; preds = %bb.gc
  %i.asa = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.asa, align 2
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 2
  store i16 117, ptr %i.asb, align 2
  %i.asc = load ptr, ptr %i.y, align 8
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asc, i64 4
  store ptr %i.asd, ptr %i.y, align 8
  %i.ase = uitofp i16 %i.aqj to double
  %i.asf = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ase, i32 noundef 16, ptr nonnull %i.p, i64 2200) #21 ; 2 uses
  %i.asg = extractvalue { i64, ptr } %i.asf, 0    ; 2 uses
  %i.ash = extractvalue { i64, ptr } %i.asf, 1
  %i.asi = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.asi, ptr noundef %i.ash, i64 noundef %i.asg)
  %i.asj = load ptr, ptr %i.y, align 8
  %i.ask = getelementptr inbounds nuw [2 x i8], ptr %i.asj, i64 %i.asg
  store ptr %i.ask, ptr %i.y, align 8
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh, %bb.gg, %bb.gf
  %.259.i.i118.i = phi i32 [ %.057.i.i110.i3435, %bb.gi ], [ %.057.i.i110.i3435, %bb.gh ], [ %i.aqu, %bb.gf ], [ %.057.i.i110.i3435, %bb.gg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #21
  br label %bb.gl

bb.gk:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit546.thread2656
  %i.asl = zext i16 %i.aqj to i64
  %i.asm = shl nuw nsw i64 %i.asl, 3
  %i.asn = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.asm ; 2 uses
  %i.aso = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.asn) #26 ; 2 uses
  %i.asp = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.asp, ptr noundef nonnull %i.asn, i64 noundef %i.aso)
  %i.asq = load ptr, ptr %i.y, align 8
  %i.asr = getelementptr inbounds nuw [2 x i8], ptr %i.asq, i64 %i.aso
  store ptr %i.asr, ptr %i.y, align 8
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %.3.i.i113.i = phi i32 [ %.259.i.i118.i, %bb.gj ], [ %.057.i.i110.i3435, %bb.gk ] ; 2 uses
  %.156.i.i114.i = add nuw i32 %.3.i.i113.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit546.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit546.thread: ; preds = %bb.gb, %.lr.ph3437, %bb.gl
  %.4.i.i115.i = phi i32 [ %.3.i.i113.i, %bb.gl ], [ %.057.i.i110.i3435, %bb.gb ], [ %.057.i.i110.i3435, %.lr.ph3437 ]
  %.2.i.i116.i = phi i32 [ %.156.i.i114.i, %bb.gl ], [ %.055.i.i111.i3436, %bb.gb ], [ %.055.i.i111.i3436, %.lr.ph3437 ] ; 3 uses
  %i.ass = add nuw i32 %.4.i.i115.i, 1            ; 2 uses
  %i.ast = icmp ugt i32 %i.apu, %i.ass
  br i1 %i.ast, label %.lr.ph3437, label %._crit_edge3438, !llvm.loop !350

bb.gm:                                            ; preds = %._crit_edge3438
  %i.asu = zext i32 %.2.i.i116.i to i64           ; 2 uses
  %i.asv = getelementptr inbounds nuw [2 x i8], ptr %.0.i540, i64 %i.asu ; 17 uses
  %i.asw = sub nuw nsw i64 %i.apv, %i.asu         ; 3 uses
  %trunc2916 = trunc nuw i64 %i.asw to i32
  switch i32 %trunc2916, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i549 [
    i32 1, label %bb.gn
    i32 2, label %bb.go
    i32 3, label %bb.gp
    i32 4, label %bb.gq
    i32 5, label %bb.gr
    i32 6, label %bb.gs
    i32 7, label %bb.gt
    i32 8, label %bb.gu
    i32 9, label %bb.gv
    i32 10, label %bb.gw
    i32 11, label %bb.gx
    i32 12, label %bb.gy
    i32 13, label %bb.gz
    i32 14, label %bb.ha
    i32 15, label %bb.hb
    i32 16, label %bb.hc
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit551
  ]

bb.gn:                                            ; preds = %bb.gm
  %i.asx = load i16, ptr %i.asv, align 2
  store i16 %i.asx, ptr %.pre3847, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit551

bb.go:                                            ; preds = %bb.gm
  %i.asy = load i32, ptr %i.asv, align 2
  store i32 %i.asy, ptr %.pre3847, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit551

bb.gp:                                            ; preds = %bb.gm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre3847, ptr noundef nonnull align 2 dereferenceable(6) %i.asv, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit551

bb.gq:                                            ; preds = %bb.gm
  %i.asz = load i64, ptr %i.asv, align 2
  store i64 %i.asz, ptr %.pre3847, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit551

bb.gr:                                            ; preds = %bb.gm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre3847, ptr noundef nonnull align 2 dereferenceable(10) %i.asv, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit551

bb.gs:                                            ; preds = %bb.gm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre3847, ptr noundef nonnull align 2 dereferenceable(12) %i.asv, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit551

bb.gt:                                            ; preds = %bb.gm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre3847, ptr noundef nonnull align 2 dereferenceable(14) %i.asv, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit551

bb.gu:                                            ; preds = %bb.gm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre3847, ptr noundef nonnull align 2 dereferenceable(16) %i.asv, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit551

bb.gv:                                            ; preds = %bb.gm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre3847, ptr noundef nonnull align 2 dereferenceable(18) %i.asv, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit551

bb.gw:                                            ; preds = %bb.gm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre3847, ptr noundef nonnull align 2 dereferenceable(20) %i.asv, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit551

bb.gx:                                            ; preds = %bb.gm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre3847, ptr noundef nonnull align 2 dereferenceable(22) %i.asv, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit551

bb.gy:                                            ; preds = %bb.gm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre3847, ptr noundef nonnull align 2 dereferenceable(24) %i.asv, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit551

bb.gz:                                            ; preds = %bb.gm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre3847, ptr noundef nonnull align 2 dereferenceable(26) %i.asv, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit551

bb.ha:                                            ; preds = %bb.gm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre3847, ptr noundef nonnull align 2 dereferenceable(28) %i.asv, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit551

bb.hb:                                            ; preds = %bb.gm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre3847, ptr noundef nonnull align 2 dereferenceable(30) %i.asv, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit551

bb.hc:                                            ; preds = %bb.gm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre3847, ptr noundef nonnull align 2 dereferenceable(32) %i.asv, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit551

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i549: ; preds = %bb.gm
  %.idx.i.i.i.i550 = shl nuw nsw i64 %i.asw, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre3847, ptr nonnull align 2 %i.asv, i64 %.idx.i.i.i.i550, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit551

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit551: ; preds = %bb.gm, %bb.gn, %bb.go, %bb.gp, %bb.gq, %bb.gr, %bb.gs, %bb.gt, %bb.gu, %bb.gv, %bb.gw, %bb.gx, %bb.gy, %bb.gz, %bb.ha, %bb.hb, %bb.hc, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i549
  %i.ata = load ptr, ptr %i.y, align 8
  %i.atb = getelementptr inbounds nuw [2 x i8], ptr %i.ata, i64 %i.asw
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit119.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit119.i: ; preds = %._crit_edge3438.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit551, %._crit_edge3438
  %i.atc = phi ptr [ %i.atb, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit551 ], [ %.pre3847, %._crit_edge3438 ], [ %.pre38474230, %._crit_edge3438.thread ] ; 2 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atc, i64 2
  store ptr %i.atd, ptr %i.y, align 8
  store i16 34, ptr %i.atc, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.hd:                                            ; preds = %bb.fv
  %i.ate = getelementptr inbounds nuw i8, ptr %i.aou, i64 12
  %i.atf = load i32, ptr %i.ate, align 4          ; 5 uses
  %i.atg = zext i32 %i.atf to i64                 ; 2 uses
  %i.ath = shl nuw nsw i64 %i.atg, 3
  %i.ati = or disjoint i64 %i.ath, 2              ; 2 uses
  %i.atj = load ptr, ptr %i.x, align 8
  %i.atk = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.atl = ptrtoint ptr %i.atj to i64
  %i.atm = ptrtoint ptr %i.atk to i64
  %i.atn = sub i64 %i.atl, %i.atm
  %i.ato = ashr exact i64 %i.atn, 1
  %.not.i552 = icmp ugt i64 %i.ati, %i.ato
  br i1 %.not.i552, label %bb.he, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit553, !prof !6

bb.he:                                            ; preds = %bb.hd
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i64 noundef %i.ati)
  %.pre3844 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit553

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit553: ; preds = %bb.hd, %bb.he
  %i.atp = phi ptr [ %i.atk, %bb.hd ], [ %.pre3844, %bb.he ] ; 2 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atp, i64 2
  store ptr %i.atq, ptr %i.y, align 8
  store i16 34, ptr %i.atp, align 2
  %.not3541 = icmp eq i32 %i.atf, 0
  br i1 %.not3541, label %._crit_edge3433.thread, label %.lr.ph3432

._crit_edge3433.thread:                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit553
  %.pre38454232 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit100.i

._crit_edge3433:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit556.thread
  %i.atr = icmp ugt i32 %i.atf, %.2.i.i97.i
  %.pre3845 = load ptr, ptr %i.y, align 8         ; 18 uses
  br i1 %i.atr, label %bb.hq, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit100.i

.lr.ph3432:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit553, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit556.thread
  %.055.i.i92.i3431 = phi i32 [ %.2.i.i97.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit556.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit553 ] ; 4 uses
  %.057.i.i91.i3430 = phi i32 [ %i.awd, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit556.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit553 ] ; 9 uses
  %i.ats = zext i32 %.057.i.i91.i3430 to i64
  %i.att = getelementptr inbounds nuw [2 x i8], ptr %i.apb, i64 %i.ats
  %i.atu = load i16, ptr %i.att, align 2          ; 11 uses
  %i.atv = and i16 %i.atu, -2
  %or.cond.i554 = icmp eq i16 %i.atv, 32
  br i1 %or.cond.i554, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit556.thread, label %bb.hf

bb.hf:                                            ; preds = %.lr.ph3432
  %i.atw = icmp ugt i16 %i.atu, 34
  %i.atx = icmp ne i16 %i.atu, 92
  %or.cond5.i555 = and i1 %i.atw, %i.atx
  %i.aty = add i16 %i.atu, 8192
  %i.atz = icmp ult i16 %i.aty, -2048
  %or.cond2837 = and i1 %or.cond5.i555, %i.atz
  br i1 %or.cond2837, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit556.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit556.thread2657, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit556.thread2657: ; preds = %bb.hf
  %10 = icmp slt i16 %i.atu, -8192
  %i.aua = zext i32 %.055.i.i92.i3431 to i64
  %i.aub = getelementptr inbounds nuw [2 x i8], ptr %i.apb, i64 %i.aua
  %i.auc = sub i32 %.057.i.i91.i3430, %.055.i.i92.i3431
  %i.aud = zext i32 %i.auc to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.z, ptr noundef nonnull %i.aub, i64 noundef %i.aud)
  br i1 %10, label %bb.hg, label %bb.ho

bb.hg:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit556.thread2657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #21
  %i.aue = icmp samesign ult i16 %i.atu, -9216
  br i1 %i.aue, label %bb.hh, label %bb.hm

bb.hh:                                            ; preds = %bb.hg
  %i.auf = add nuw i32 %.057.i.i91.i3430, 1       ; 3 uses
  %i.aug = icmp ugt i32 %i.atf, %i.auf
  br i1 %i.aug, label %bb.hi, label %bb.hl

bb.hi:                                            ; preds = %bb.hh
  %i.auh = zext i32 %i.auf to i64
  %i.aui = getelementptr inbounds nuw [2 x i8], ptr %i.apb, i64 %i.auh
  %i.auj = load i16, ptr %i.aui, align 2          ; 2 uses
  %i.auk = and i16 %i.auj, -1024
  %i.aul = icmp eq i16 %i.auk, -9216
  %i.aum = load ptr, ptr %i.y, align 8            ; 4 uses
  br i1 %i.aul, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 2
  store ptr %i.aun, ptr %i.y, align 8
  store i16 %i.atu, ptr %i.aum, align 2
  %i.auo = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auo, i64 2
  store ptr %i.aup, ptr %i.y, align 8
  store i16 %i.auj, ptr %i.auo, align 2
  br label %bb.hn

bb.hk:                                            ; preds = %bb.hi
  store i16 92, ptr %i.aum, align 2
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aum, i64 2
  store i16 117, ptr %i.auq, align 2
  %i.aur = load ptr, ptr %i.y, align 8
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aur, i64 4
  store ptr %i.aus, ptr %i.y, align 8
  %i.aut = uitofp i16 %i.atu to double
  %i.auu = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.aut, i32 noundef 16, ptr nonnull %i.r, i64 2200) #21 ; 2 uses
  %i.auv = extractvalue { i64, ptr } %i.auu, 0    ; 2 uses
  %i.auw = extractvalue { i64, ptr } %i.auu, 1
  %i.aux = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.aux, ptr noundef %i.auw, i64 noundef %i.auv)
  %i.auy = load ptr, ptr %i.y, align 8
  %i.auz = getelementptr inbounds nuw [2 x i8], ptr %i.auy, i64 %i.auv
  store ptr %i.auz, ptr %i.y, align 8
  br label %bb.hn

bb.hl:                                            ; preds = %bb.hh
  %i.ava = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.ava, align 2
  %i.avb = getelementptr inbounds nuw i8, ptr %i.ava, i64 2
  store i16 117, ptr %i.avb, align 2
  %i.avc = load ptr, ptr %i.y, align 8
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 4
  store ptr %i.avd, ptr %i.y, align 8
  %i.ave = uitofp i16 %i.atu to double
  %i.avf = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ave, i32 noundef 16, ptr nonnull %i.r, i64 2200) #21 ; 2 uses
  %i.avg = extractvalue { i64, ptr } %i.avf, 0    ; 2 uses
  %i.avh = extractvalue { i64, ptr } %i.avf, 1
  %i.avi = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.avi, ptr noundef %i.avh, i64 noundef %i.avg)
  %i.avj = load ptr, ptr %i.y, align 8
  %i.avk = getelementptr inbounds nuw [2 x i8], ptr %i.avj, i64 %i.avg
  store ptr %i.avk, ptr %i.y, align 8
  br label %bb.hn

bb.hm:                                            ; preds = %bb.hg
  %i.avl = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.avl, align 2
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 2
  store i16 117, ptr %i.avm, align 2
  %i.avn = load ptr, ptr %i.y, align 8
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avn, i64 4
  store ptr %i.avo, ptr %i.y, align 8
  %i.avp = uitofp i16 %i.atu to double
  %i.avq = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.avp, i32 noundef 16, ptr nonnull %i.r, i64 2200) #21 ; 2 uses
  %i.avr = extractvalue { i64, ptr } %i.avq, 0    ; 2 uses
  %i.avs = extractvalue { i64, ptr } %i.avq, 1
  %i.avt = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.avt, ptr noundef %i.avs, i64 noundef %i.avr)
  %i.avu = load ptr, ptr %i.y, align 8
  %i.avv = getelementptr inbounds nuw [2 x i8], ptr %i.avu, i64 %i.avr
  store ptr %i.avv, ptr %i.y, align 8
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl, %bb.hk, %bb.hj
  %.259.i.i99.i = phi i32 [ %.057.i.i91.i3430, %bb.hm ], [ %.057.i.i91.i3430, %bb.hl ], [ %i.auf, %bb.hj ], [ %.057.i.i91.i3430, %bb.hk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #21
  br label %bb.hp

bb.ho:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit556.thread2657
  %i.avw = zext i16 %i.atu to i64
  %i.avx = shl nuw nsw i64 %i.avw, 3
  %i.avy = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.avx ; 2 uses
  %i.avz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.avy) #26 ; 2 uses
  %i.awa = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.awa, ptr noundef nonnull %i.avy, i64 noundef %i.avz)
  %i.awb = load ptr, ptr %i.y, align 8
  %i.awc = getelementptr inbounds nuw [2 x i8], ptr %i.awb, i64 %i.avz
  store ptr %i.awc, ptr %i.y, align 8
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %.3.i.i94.i = phi i32 [ %.259.i.i99.i, %bb.hn ], [ %.057.i.i91.i3430, %bb.ho ] ; 2 uses
  %.156.i.i95.i = add nuw i32 %.3.i.i94.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit556.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit556.thread: ; preds = %bb.hf, %.lr.ph3432, %bb.hp
  %.4.i.i96.i = phi i32 [ %.3.i.i94.i, %bb.hp ], [ %.057.i.i91.i3430, %bb.hf ], [ %.057.i.i91.i3430, %.lr.ph3432 ]
  %.2.i.i97.i = phi i32 [ %.156.i.i95.i, %bb.hp ], [ %.055.i.i92.i3431, %bb.hf ], [ %.055.i.i92.i3431, %.lr.ph3432 ] ; 3 uses
  %i.awd = add nuw i32 %.4.i.i96.i, 1             ; 2 uses
  %i.awe = icmp ugt i32 %i.atf, %i.awd
  br i1 %i.awe, label %.lr.ph3432, label %._crit_edge3433, !llvm.loop !350

bb.hq:                                            ; preds = %._crit_edge3433
  %i.awf = zext i32 %.2.i.i97.i to i64            ; 2 uses
  %i.awg = getelementptr inbounds nuw [2 x i8], ptr %i.apb, i64 %i.awf ; 17 uses
  %i.awh = sub nuw nsw i64 %i.atg, %i.awf         ; 3 uses
  %trunc2915 = trunc nuw i64 %i.awh to i32
  switch i32 %trunc2915, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i559 [
    i32 1, label %bb.hr
    i32 2, label %bb.hs
    i32 3, label %bb.ht
    i32 4, label %bb.hu
    i32 5, label %bb.hv
    i32 6, label %bb.hw
    i32 7, label %bb.hx
    i32 8, label %bb.hy
    i32 9, label %bb.hz
    i32 10, label %bb.ia
    i32 11, label %bb.ib
    i32 12, label %bb.ic
    i32 13, label %bb.id
    i32 14, label %bb.ie
    i32 15, label %bb.if
    i32 16, label %bb.ig
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit561
  ]

bb.hr:                                            ; preds = %bb.hq
  %i.awi = load i16, ptr %i.awg, align 2
  store i16 %i.awi, ptr %.pre3845, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit561

bb.hs:                                            ; preds = %bb.hq
  %i.awj = load i32, ptr %i.awg, align 2
  store i32 %i.awj, ptr %.pre3845, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit561

bb.ht:                                            ; preds = %bb.hq
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre3845, ptr noundef nonnull align 2 dereferenceable(6) %i.awg, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit561

bb.hu:                                            ; preds = %bb.hq
  %i.awk = load i64, ptr %i.awg, align 2
  store i64 %i.awk, ptr %.pre3845, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit561

bb.hv:                                            ; preds = %bb.hq
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre3845, ptr noundef nonnull align 2 dereferenceable(10) %i.awg, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit561

bb.hw:                                            ; preds = %bb.hq
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre3845, ptr noundef nonnull align 2 dereferenceable(12) %i.awg, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit561

bb.hx:                                            ; preds = %bb.hq
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre3845, ptr noundef nonnull align 2 dereferenceable(14) %i.awg, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit561

bb.hy:                                            ; preds = %bb.hq
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre3845, ptr noundef nonnull align 2 dereferenceable(16) %i.awg, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit561

bb.hz:                                            ; preds = %bb.hq
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre3845, ptr noundef nonnull align 2 dereferenceable(18) %i.awg, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit561

bb.ia:                                            ; preds = %bb.hq
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre3845, ptr noundef nonnull align 2 dereferenceable(20) %i.awg, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit561

bb.ib:                                            ; preds = %bb.hq
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre3845, ptr noundef nonnull align 2 dereferenceable(22) %i.awg, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit561

bb.ic:                                            ; preds = %bb.hq
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre3845, ptr noundef nonnull align 2 dereferenceable(24) %i.awg, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit561

bb.id:                                            ; preds = %bb.hq
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre3845, ptr noundef nonnull align 2 dereferenceable(26) %i.awg, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit561

bb.ie:                                            ; preds = %bb.hq
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre3845, ptr noundef nonnull align 2 dereferenceable(28) %i.awg, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit561

bb.if:                                            ; preds = %bb.hq
end_hunk_2
begin_hunk_3_@_ZN2v88internal19FastJsonStringifierItE15SerializeObjectENS0_18ContinuationRecordERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS5_2EEEE:bb.a
  br i1 %i.cep, label %.lr.ph3360, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i62.i158, !llvm.loop !347

_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i62.i158: ; preds = %bb.nb, %.lr.ph3360, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i60.i156
  %.013.i.i61.i157.lcssa = phi i64 [ %i.cdy, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i60.i156 ], [ %.013.i.i61.i1573359, %.lr.ph3360 ], [ %i.cen, %bb.nb ] ; 2 uses
  %i.ceq = icmp ult i64 %.013.i.i61.i157.lcssa, %i.ccb
  br i1 %i.ceq, label %.lr.ph.i745, label %._crit_edge.i742

._crit_edge.i742:                                 ; preds = %bb.nd, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i62.i158
  %.0.lcssa.i744 = phi i64 [ %.155.i.i64.i160, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i62.i158 ], [ %.1.i751, %bb.nd ] ; 2 uses
  %i.cer = icmp ult i64 %.0.lcssa.i744, %i.ccb
  %.pre3812 = load ptr, ptr %i.y, align 8         ; 2 uses
  br i1 %i.cer, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit66.i151.sink.split, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit66.i151, !prof !11

.lr.ph.i745:                                      ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i62.i158, %bb.nd
  %.026.i746 = phi i64 [ %.1.i751, %bb.nd ], [ %.155.i.i64.i160, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i62.i158 ] ; 3 uses
  %.02025.i747 = phi i64 [ %.pre-phi.i749, %bb.nd ], [ %.013.i.i61.i157.lcssa, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i62.i158 ] ; 4 uses
  %i.ces = getelementptr inbounds nuw i8, ptr %i.bwj, i64 %.02025.i747
  %i.cet = load i8, ptr %i.ces, align 1
  %i.ceu = zext i8 %i.cet to i64                  ; 2 uses
  %i.cev = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.ceu
  %i.cew = load i8, ptr %i.cev, align 1, !range !7, !noundef !8
  %i.cex = trunc nuw i8 %i.cew to i1
  br i1 %i.cex, label %._crit_edge28.i753, label %bb.nc, !prof !11

._crit_edge28.i753:                               ; preds = %.lr.ph.i745
  %.pre.i754 = add i64 %.02025.i747, 1
  br label %bb.nd

bb.nc:                                            ; preds = %.lr.ph.i745
  %i.cey = getelementptr inbounds nuw i8, ptr %i.bwj, i64 %.026.i746
  %i.cez = sub i64 %.02025.i747, %.026.i746       ; 2 uses
  %i.cfa = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.cfa, ptr noundef %i.cey, i64 noundef %i.cez)
  %i.cfb = load ptr, ptr %i.y, align 8
  %i.cfc = getelementptr inbounds nuw [2 x i8], ptr %i.cfb, i64 %i.cez ; 2 uses
  store ptr %i.cfc, ptr %i.y, align 8
  %i.cfd = shl nuw nsw i64 %i.ceu, 3
  %i.cfe = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.cfd ; 2 uses
  %i.cff = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cfe) #26 ; 2 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.cfc, ptr noundef nonnull %i.cfe, i64 noundef %i.cff)
  %i.cfg = load ptr, ptr %i.y, align 8
  %i.cfh = getelementptr inbounds nuw [2 x i8], ptr %i.cfg, i64 %i.cff
  store ptr %i.cfh, ptr %i.y, align 8
  %i.cfi = add i64 %.02025.i747, 1                ; 2 uses
  br label %bb.nd

bb.nd:                                            ; preds = %bb.nc, %._crit_edge28.i753
  %.pre-phi.i749 = phi i64 [ %.pre.i754, %._crit_edge28.i753 ], [ %i.cfi, %bb.nc ] ; 2 uses
  %.1.i751 = phi i64 [ %.026.i746, %._crit_edge28.i753 ], [ %i.cfi, %bb.nc ] ; 2 uses
  %exitcond.not.i752 = icmp eq i64 %.pre-phi.i749, %i.ccb
  br i1 %exitcond.not.i752, label %._crit_edge.i742, label %.lr.ph.i745, !llvm.loop !348

.lr.ph3349:                                       ; preds = %.lr.ph3349.preheader, %bb.ne
  %.013.i8.i54.i1493348 = phi i64 [ %i.cfv, %bb.ne ], [ 0, %.lr.ph3349.preheader ] ; 3 uses
  %i.cfj = getelementptr inbounds nuw i8, ptr %i.bwj, i64 %.013.i8.i54.i1493348
  %i.cfk = load i32, ptr %i.cfj, align 4          ; 4 uses
  %i.cfl = add i32 %i.cfk, -538976288
  %i.cfm = xor i32 %i.cfk, 572662306
  %i.cfn = add i32 %i.cfm, -16843009
  %i.cfo = xor i32 %i.cfk, 1549556828
  %i.cfp = add i32 %i.cfo, -16843009
  %i.cfq = and i32 %i.cfk, -2139062144
  %i.cfr = xor i32 %i.cfq, -2139062144
  %i.cfs = or i32 %i.cfn, %i.cfl
  %i.cft = or i32 %i.cfs, %i.cfp
  %i.cfu = and i32 %i.cft, %i.cfr
  %.not2896 = icmp eq i32 %i.cfu, 0
  br i1 %.not2896, label %bb.ne, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i55.i150

bb.ne:                                            ; preds = %.lr.ph3349
  %i.cfv = add nuw nsw i64 %.013.i8.i54.i1493348, 4 ; 2 uses
  %i.cfw = or disjoint i64 %i.cfv, 3
  %i.cfx = icmp samesign ult i64 %i.cfw, %i.ccb
  br i1 %i.cfx, label %.lr.ph3349, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i55.i150, !llvm.loop !347

_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i55.i150: ; preds = %bb.ne, %.lr.ph3349, %.preheader2936
  %.013.i8.i54.i149.lcssa = phi i64 [ 0, %.preheader2936 ], [ %.013.i8.i54.i1493348, %.lr.ph3349 ], [ %i.cco, %bb.ne ] ; 2 uses
  %i.cfy = icmp samesign ult i64 %.013.i8.i54.i149.lcssa, %i.ccb
  br i1 %i.cfy, label %.lr.ph.i759, label %._crit_edge.i756

._crit_edge.i756:                                 ; preds = %bb.ng, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i55.i150
  %.0.lcssa.i758 = phi i64 [ 0, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i55.i150 ], [ %.1.i765, %bb.ng ] ; 2 uses
  %i.cfz = icmp ult i64 %.0.lcssa.i758, %i.ccb
  %.pre3813 = load ptr, ptr %i.y, align 8         ; 2 uses
  br i1 %i.cfz, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit66.i151.sink.split, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit66.i151, !prof !11

.lr.ph.i759:                                      ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i55.i150, %bb.ng
  %.026.i760 = phi i64 [ %.1.i765, %bb.ng ], [ 0, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i55.i150 ] ; 3 uses
  %.02025.i761 = phi i64 [ %.pre-phi.i763, %bb.ng ], [ %.013.i8.i54.i149.lcssa, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i55.i150 ] ; 4 uses
  %i.cga = getelementptr inbounds nuw i8, ptr %i.bwj, i64 %.02025.i761
  %i.cgb = load i8, ptr %i.cga, align 1
  %i.cgc = zext i8 %i.cgb to i64                  ; 2 uses
  %i.cgd = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.cgc
  %i.cge = load i8, ptr %i.cgd, align 1, !range !7, !noundef !8
  %i.cgf = trunc nuw i8 %i.cge to i1
  br i1 %i.cgf, label %._crit_edge28.i767, label %bb.nf, !prof !11

._crit_edge28.i767:                               ; preds = %.lr.ph.i759
  %.pre.i768 = add i64 %.02025.i761, 1
  br label %bb.ng

bb.nf:                                            ; preds = %.lr.ph.i759
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.bwj, i64 %.026.i760
  %i.cgh = sub i64 %.02025.i761, %.026.i760       ; 2 uses
  %i.cgi = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.cgi, ptr noundef %i.cgg, i64 noundef %i.cgh)
  %i.cgj = load ptr, ptr %i.y, align 8
  %i.cgk = getelementptr inbounds nuw [2 x i8], ptr %i.cgj, i64 %i.cgh ; 2 uses
  store ptr %i.cgk, ptr %i.y, align 8
  %i.cgl = shl nuw nsw i64 %i.cgc, 3
  %i.cgm = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.cgl ; 2 uses
  %i.cgn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cgm) #26 ; 2 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.cgk, ptr noundef nonnull %i.cgm, i64 noundef %i.cgn)
  %i.cgo = load ptr, ptr %i.y, align 8
  %i.cgp = getelementptr inbounds nuw [2 x i8], ptr %i.cgo, i64 %i.cgn
  store ptr %i.cgp, ptr %i.y, align 8
  %i.cgq = add i64 %.02025.i761, 1                ; 2 uses
  br label %bb.ng

bb.ng:                                            ; preds = %bb.nf, %._crit_edge28.i767
  %.pre-phi.i763 = phi i64 [ %.pre.i768, %._crit_edge28.i767 ], [ %i.cgq, %bb.nf ] ; 2 uses
  %.1.i765 = phi i64 [ %.026.i760, %._crit_edge28.i767 ], [ %i.cgq, %bb.nf ] ; 2 uses
  %exitcond.not.i766 = icmp eq i64 %.pre-phi.i763, %i.ccb
  br i1 %exitcond.not.i766, label %._crit_edge.i756, label %.lr.ph.i759, !llvm.loop !348

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit66.i151.sink.split: ; preds = %._crit_edge.i756, %._crit_edge.i742
  %.0.lcssa.i744.sink4470 = phi i64 [ %.0.lcssa.i744, %._crit_edge.i742 ], [ %.0.lcssa.i758, %._crit_edge.i756 ] ; 2 uses
  %.pre3812.sink = phi ptr [ %.pre3812, %._crit_edge.i742 ], [ %.pre3813, %._crit_edge.i756 ]
  %i.cgr = getelementptr inbounds nuw i8, ptr %i.bwj, i64 %.0.lcssa.i744.sink4470
  %i.cgs = sub nuw nsw i64 %i.ccb, %.0.lcssa.i744.sink4470 ; 2 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %.pre3812.sink, ptr noundef %i.cgr, i64 noundef %i.cgs)
  %i.cgt = load ptr, ptr %i.y, align 8
  %i.cgu = getelementptr inbounds nuw [2 x i8], ptr %i.cgt, i64 %i.cgs
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit66.i151

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit66.i151: ; preds = %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit66.i151.sink.split, %._crit_edge.i742, %._crit_edge.i756
  %i.cgv = phi ptr [ %.pre3813, %._crit_edge.i756 ], [ %.pre3812, %._crit_edge.i742 ], [ %i.cgu, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit66.i151.sink.split ] ; 2 uses
  %i.cgw = getelementptr inbounds nuw i8, ptr %i.cgv, i64 2
  store ptr %i.cgw, ptr %i.y, align 8
  store i16 34, ptr %i.cgv, align 2
  br label %.critedge.i94.sink.split

bb.nh:                                            ; preds = %bb.kz, %bb.kz
  %i.cgx = getelementptr inbounds nuw i8, ptr %i.blf, i64 16 ; 4 uses
  %i.cgy = getelementptr inbounds nuw i8, ptr %i.blf, i64 12
  %i.cgz = load i32, ptr %i.cgy, align 4          ; 5 uses
  %i.cha = zext i32 %i.cgz to i64                 ; 2 uses
  %i.chb = shl nuw nsw i64 %i.cha, 3
  %i.chc = or disjoint i64 %i.chb, 2              ; 2 uses
  %i.chd = load ptr, ptr %i.x, align 8
  %i.che = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.chf = ptrtoint ptr %i.chd to i64
  %i.chg = ptrtoint ptr %i.che to i64
  %i.chh = sub i64 %i.chf, %i.chg
  %i.chi = ashr exact i64 %i.chh, 1
  %.not.i770 = icmp ugt i64 %i.chc, %i.chi
  br i1 %.not.i770, label %bb.ni, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit771, !prof !6

bb.ni:                                            ; preds = %bb.nh
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i64 noundef %i.chc)
  %.pre3809 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit771

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit771: ; preds = %bb.nh, %bb.ni
  %i.chj = phi ptr [ %i.che, %bb.nh ], [ %.pre3809, %bb.ni ] ; 2 uses
  %i.chk = getelementptr inbounds nuw i8, ptr %i.chj, i64 2
  store ptr %i.chk, ptr %i.y, align 8
  store i16 34, ptr %i.chj, align 2
  %.not3540 = icmp eq i32 %i.cgz, 0
  br i1 %.not3540, label %._crit_edge3346.thread, label %.lr.ph3345

._crit_edge3346.thread:                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit771
  %.pre38104234 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i141

._crit_edge3346:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit774.thread
  %i.chl = icmp ugt i32 %i.cgz, %.2.i.i.i145
  %.pre3810 = load ptr, ptr %i.y, align 8         ; 18 uses
  br i1 %i.chl, label %bb.pa, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i141

.lr.ph3345:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit771, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit774.thread
  %.055.i.i.i1393344 = phi i32 [ %.2.i.i.i145, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit774.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit771 ] ; 4 uses
  %.057.i.i.i1383343 = phi i32 [ %i.cke, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit774.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit771 ] ; 9 uses
  %i.chm = zext i32 %.057.i.i.i1383343 to i64
  %i.chn = getelementptr inbounds nuw [2 x i8], ptr %i.cgx, i64 %i.chm
  %i.cho = load i16, ptr %i.chn, align 2          ; 11 uses
  %i.chp = and i16 %i.cho, -2
  %or.cond.i772 = icmp eq i16 %i.chp, 32
  br i1 %or.cond.i772, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit774.thread, label %bb.nj

bb.nj:                                            ; preds = %.lr.ph3345
  %i.chq = icmp ugt i16 %i.cho, 34
  %i.chr = icmp ne i16 %i.cho, 92
  %or.cond5.i773 = and i1 %i.chq, %i.chr
  %i.chs = add i16 %i.cho, 8192
  %i.cht = icmp ult i16 %i.chs, -2048
  %or.cond2839 = and i1 %or.cond5.i773, %i.cht
  br i1 %or.cond2839, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit774.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit774.thread2725, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit774.thread2725: ; preds = %bb.nj
  %11 = icmp slt i16 %i.cho, -8192
  %i.chu = zext i32 %.055.i.i.i1393344 to i64
  %i.chv = getelementptr inbounds nuw [2 x i8], ptr %i.cgx, i64 %i.chu ; 34 uses
  %i.chw = sub i32 %.057.i.i.i1383343, %.055.i.i.i1393344 ; 3 uses
  %i.chx = zext i32 %i.chw to i64                 ; 4 uses
  %i.chy = load ptr, ptr %i.y, align 8            ; 34 uses
  br i1 %11, label %bb.nk, label %bb.oi

bb.nk:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit774.thread2725
  switch i32 %i.chw, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i775 [
    i32 1, label %bb.nl
    i32 2, label %bb.nm
    i32 3, label %bb.nn
    i32 4, label %bb.no
    i32 5, label %bb.np
    i32 6, label %bb.nq
    i32 7, label %bb.nr
    i32 8, label %bb.ns
    i32 9, label %bb.nt
    i32 10, label %bb.nu
    i32 11, label %bb.nv
    i32 12, label %bb.nw
    i32 13, label %bb.nx
    i32 14, label %bb.ny
    i32 15, label %bb.nz
    i32 16, label %bb.oa
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit777
  ]

bb.nl:                                            ; preds = %bb.nk
  %i.chz = load i16, ptr %i.chv, align 2
  store i16 %i.chz, ptr %i.chy, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit777

bb.nm:                                            ; preds = %bb.nk
  %i.cia = load i32, ptr %i.chv, align 2
  store i32 %i.cia, ptr %i.chy, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit777

bb.nn:                                            ; preds = %bb.nk
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.chy, ptr noundef nonnull align 2 dereferenceable(6) %i.chv, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit777

bb.no:                                            ; preds = %bb.nk
  %i.cib = load i64, ptr %i.chv, align 2
  store i64 %i.cib, ptr %i.chy, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit777

bb.np:                                            ; preds = %bb.nk
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.chy, ptr noundef nonnull align 2 dereferenceable(10) %i.chv, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit777

bb.nq:                                            ; preds = %bb.nk
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.chy, ptr noundef nonnull align 2 dereferenceable(12) %i.chv, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit777

bb.nr:                                            ; preds = %bb.nk
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.chy, ptr noundef nonnull align 2 dereferenceable(14) %i.chv, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit777

bb.ns:                                            ; preds = %bb.nk
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.chy, ptr noundef nonnull align 2 dereferenceable(16) %i.chv, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit777

bb.nt:                                            ; preds = %bb.nk
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.chy, ptr noundef nonnull align 2 dereferenceable(18) %i.chv, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit777

bb.nu:                                            ; preds = %bb.nk
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.chy, ptr noundef nonnull align 2 dereferenceable(20) %i.chv, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit777

bb.nv:                                            ; preds = %bb.nk
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.chy, ptr noundef nonnull align 2 dereferenceable(22) %i.chv, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit777

bb.nw:                                            ; preds = %bb.nk
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.chy, ptr noundef nonnull align 2 dereferenceable(24) %i.chv, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit777

bb.nx:                                            ; preds = %bb.nk
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.chy, ptr noundef nonnull align 2 dereferenceable(26) %i.chv, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit777

bb.ny:                                            ; preds = %bb.nk
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %i.chy, ptr noundef nonnull align 2 dereferenceable(28) %i.chv, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit777

bb.nz:                                            ; preds = %bb.nk
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.chy, ptr noundef nonnull align 2 dereferenceable(30) %i.chv, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit777

bb.oa:                                            ; preds = %bb.nk
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.chy, ptr noundef nonnull align 2 dereferenceable(32) %i.chv, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit777

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i775: ; preds = %bb.nk
  %.idx.i.i.i.i776 = shl nuw nsw i64 %i.chx, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.chy, ptr nonnull align 2 %i.chv, i64 %.idx.i.i.i.i776, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit777

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit777: ; preds = %bb.nk, %bb.nl, %bb.nm, %bb.nn, %bb.no, %bb.np, %bb.nq, %bb.nr, %bb.ns, %bb.nt, %bb.nu, %bb.nv, %bb.nw, %bb.nx, %bb.ny, %bb.nz, %bb.oa, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i775
  %i.cic = load ptr, ptr %i.y, align 8
  %i.cid = getelementptr inbounds nuw [2 x i8], ptr %i.cic, i64 %i.chx ; 9 uses
  store ptr %i.cid, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #21
  %i.cie = icmp samesign ult i16 %i.cho, -9216
  br i1 %i.cie, label %bb.ob, label %bb.og

bb.ob:                                            ; preds = %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit777
  %i.cif = add nuw i32 %.057.i.i.i1383343, 1      ; 3 uses
  %i.cig = icmp ugt i32 %i.cgz, %i.cif
  br i1 %i.cig, label %bb.oc, label %bb.of

bb.oc:                                            ; preds = %bb.ob
  %i.cih = zext i32 %i.cif to i64
  %i.cii = getelementptr inbounds nuw [2 x i8], ptr %i.cgx, i64 %i.cih
  %i.cij = load i16, ptr %i.cii, align 2          ; 2 uses
  %i.cik = and i16 %i.cij, -1024
  %i.cil = icmp eq i16 %i.cik, -9216
  br i1 %i.cil, label %bb.od, label %bb.oe

bb.od:                                            ; preds = %bb.oc
  %i.cim = getelementptr inbounds nuw i8, ptr %i.cid, i64 2
  store ptr %i.cim, ptr %i.y, align 8
  store i16 %i.cho, ptr %i.cid, align 2
  %i.cin = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.cio = getelementptr inbounds nuw i8, ptr %i.cin, i64 2
  store ptr %i.cio, ptr %i.y, align 8
  store i16 %i.cij, ptr %i.cin, align 2
  br label %bb.oh

bb.oe:                                            ; preds = %bb.oc
  store i16 92, ptr %i.cid, align 2
  %i.cip = getelementptr inbounds nuw i8, ptr %i.cid, i64 2
  store i16 117, ptr %i.cip, align 2
  %i.ciq = load ptr, ptr %i.y, align 8
  %i.cir = getelementptr inbounds nuw i8, ptr %i.ciq, i64 4
  store ptr %i.cir, ptr %i.y, align 8
  %i.cis = uitofp i16 %i.cho to double
  %i.cit = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.cis, i32 noundef 16, ptr nonnull %i.n, i64 2200) #21 ; 2 uses
  %i.ciu = extractvalue { i64, ptr } %i.cit, 0    ; 2 uses
  %i.civ = extractvalue { i64, ptr } %i.cit, 1
  %i.ciw = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ciw, ptr noundef %i.civ, i64 noundef %i.ciu)
  %i.cix = load ptr, ptr %i.y, align 8
  %i.ciy = getelementptr inbounds nuw [2 x i8], ptr %i.cix, i64 %i.ciu
  store ptr %i.ciy, ptr %i.y, align 8
  br label %bb.oh

bb.of:                                            ; preds = %bb.ob
  store i16 92, ptr %i.cid, align 2
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.cid, i64 2
  store i16 117, ptr %i.ciz, align 2
  %i.cja = load ptr, ptr %i.y, align 8
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.cja, i64 4
  store ptr %i.cjb, ptr %i.y, align 8
  %i.cjc = uitofp i16 %i.cho to double
  %i.cjd = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.cjc, i32 noundef 16, ptr nonnull %i.n, i64 2200) #21 ; 2 uses
  %i.cje = extractvalue { i64, ptr } %i.cjd, 0    ; 2 uses
  %i.cjf = extractvalue { i64, ptr } %i.cjd, 1
  %i.cjg = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.cjg, ptr noundef %i.cjf, i64 noundef %i.cje)
  %i.cjh = load ptr, ptr %i.y, align 8
  %i.cji = getelementptr inbounds nuw [2 x i8], ptr %i.cjh, i64 %i.cje
  store ptr %i.cji, ptr %i.y, align 8
  br label %bb.oh

bb.og:                                            ; preds = %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit777
  store i16 92, ptr %i.cid, align 2
  %i.cjj = getelementptr inbounds nuw i8, ptr %i.cid, i64 2
  store i16 117, ptr %i.cjj, align 2
  %i.cjk = load ptr, ptr %i.y, align 8
  %i.cjl = getelementptr inbounds nuw i8, ptr %i.cjk, i64 4
  store ptr %i.cjl, ptr %i.y, align 8
  %i.cjm = uitofp i16 %i.cho to double
  %i.cjn = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.cjm, i32 noundef 16, ptr nonnull %i.n, i64 2200) #21 ; 2 uses
  %i.cjo = extractvalue { i64, ptr } %i.cjn, 0    ; 2 uses
  %i.cjp = extractvalue { i64, ptr } %i.cjn, 1
  %i.cjq = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.cjq, ptr noundef %i.cjp, i64 noundef %i.cjo)
  %i.cjr = load ptr, ptr %i.y, align 8
  %i.cjs = getelementptr inbounds nuw [2 x i8], ptr %i.cjr, i64 %i.cjo
  store ptr %i.cjs, ptr %i.y, align 8
  br label %bb.oh

bb.oh:                                            ; preds = %bb.og, %bb.of, %bb.oe, %bb.od
  %.259.i.i.i147 = phi i32 [ %.057.i.i.i1383343, %bb.og ], [ %.057.i.i.i1383343, %bb.of ], [ %i.cif, %bb.od ], [ %.057.i.i.i1383343, %bb.oe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #21
  br label %bb.oz

bb.oi:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit774.thread2725
  switch i32 %i.chw, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i780 [
    i32 1, label %bb.oj
    i32 2, label %bb.ok
    i32 3, label %bb.ol
    i32 4, label %bb.om
    i32 5, label %bb.on
    i32 6, label %bb.oo
    i32 7, label %bb.op
    i32 8, label %bb.oq
    i32 9, label %bb.or
    i32 10, label %bb.os
    i32 11, label %bb.ot
    i32 12, label %bb.ou
    i32 13, label %bb.ov
    i32 14, label %bb.ow
end_hunk_3
begin_hunk_4_@_ZN2v88internal19FastJsonStringifierItE15SerializeObjectENS0_18ContinuationRecordERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS5_2EEEE:bb.a

bb.pa:                                            ; preds = %._crit_edge3346
  %i.ckg = zext i32 %.2.i.i.i145 to i64           ; 2 uses
  %i.ckh = getelementptr inbounds nuw [2 x i8], ptr %i.cgx, i64 %i.ckg ; 17 uses
  %i.cki = sub nuw nsw i64 %i.cha, %i.ckg         ; 3 uses
  %trunc2895 = trunc nuw i64 %i.cki to i32
  switch i32 %trunc2895, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i783 [
    i32 1, label %bb.pb
    i32 2, label %bb.pc
    i32 3, label %bb.pd
    i32 4, label %bb.pe
    i32 5, label %bb.pf
    i32 6, label %bb.pg
    i32 7, label %bb.ph
    i32 8, label %bb.pi
    i32 9, label %bb.pj
    i32 10, label %bb.pk
    i32 11, label %bb.pl
    i32 12, label %bb.pm
    i32 13, label %bb.pn
    i32 14, label %bb.po
    i32 15, label %bb.pp
    i32 16, label %bb.pq
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit785
  ]

bb.pb:                                            ; preds = %bb.pa
  %i.ckj = load i16, ptr %i.ckh, align 2
  store i16 %i.ckj, ptr %.pre3810, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit785

bb.pc:                                            ; preds = %bb.pa
  %i.ckk = load i32, ptr %i.ckh, align 2
  store i32 %i.ckk, ptr %.pre3810, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit785

bb.pd:                                            ; preds = %bb.pa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre3810, ptr noundef nonnull align 2 dereferenceable(6) %i.ckh, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit785

bb.pe:                                            ; preds = %bb.pa
  %i.ckl = load i64, ptr %i.ckh, align 2
  store i64 %i.ckl, ptr %.pre3810, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit785

bb.pf:                                            ; preds = %bb.pa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre3810, ptr noundef nonnull align 2 dereferenceable(10) %i.ckh, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit785

bb.pg:                                            ; preds = %bb.pa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre3810, ptr noundef nonnull align 2 dereferenceable(12) %i.ckh, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit785

bb.ph:                                            ; preds = %bb.pa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre3810, ptr noundef nonnull align 2 dereferenceable(14) %i.ckh, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit785

bb.pi:                                            ; preds = %bb.pa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre3810, ptr noundef nonnull align 2 dereferenceable(16) %i.ckh, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit785

bb.pj:                                            ; preds = %bb.pa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre3810, ptr noundef nonnull align 2 dereferenceable(18) %i.ckh, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit785

bb.pk:                                            ; preds = %bb.pa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre3810, ptr noundef nonnull align 2 dereferenceable(20) %i.ckh, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit785

bb.pl:                                            ; preds = %bb.pa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre3810, ptr noundef nonnull align 2 dereferenceable(22) %i.ckh, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit785

bb.pm:                                            ; preds = %bb.pa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre3810, ptr noundef nonnull align 2 dereferenceable(24) %i.ckh, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit785

bb.pn:                                            ; preds = %bb.pa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre3810, ptr noundef nonnull align 2 dereferenceable(26) %i.ckh, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit785

bb.po:                                            ; preds = %bb.pa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre3810, ptr noundef nonnull align 2 dereferenceable(28) %i.ckh, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit785

bb.pp:                                            ; preds = %bb.pa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre3810, ptr noundef nonnull align 2 dereferenceable(30) %i.ckh, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit785

bb.pq:                                            ; preds = %bb.pa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre3810, ptr noundef nonnull align 2 dereferenceable(32) %i.ckh, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit785

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i783: ; preds = %bb.pa
  %.idx.i.i.i.i784 = shl nuw nsw i64 %i.cki, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre3810, ptr nonnull align 2 %i.ckh, i64 %.idx.i.i.i.i784, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit785

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit785: ; preds = %bb.pa, %bb.pb, %bb.pc, %bb.pd, %bb.pe, %bb.pf, %bb.pg, %bb.ph, %bb.pi, %bb.pj, %bb.pk, %bb.pl, %bb.pm, %bb.pn, %bb.po, %bb.pp, %bb.pq, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i783
  %i.ckm = load ptr, ptr %i.y, align 8
  %i.ckn = getelementptr inbounds nuw [2 x i8], ptr %i.ckm, i64 %i.cki
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i141

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i141: ; preds = %._crit_edge3346.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit785, %._crit_edge3346
  %i.cko = phi ptr [ %i.ckn, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit785 ], [ %.pre3810, %._crit_edge3346 ], [ %.pre38104234, %._crit_edge3346.thread ] ; 2 uses
  %i.ckp = getelementptr inbounds nuw i8, ptr %i.cko, i64 2
  store ptr %i.ckp, ptr %i.y, align 8
  store i16 34, ptr %i.cko, align 2
  br label %.critedge.i94.sink.split

bb.pr:                                            ; preds = %bb.kz, %bb.kz, %bb.kz, %bb.kz
  %i.ckq = getelementptr inbounds nuw i8, ptr %i.blf, i64 16
  %i.ckr = load i64, ptr %i.ckq, align 8
  %i.cks = inttoptr i64 %i.ckr to ptr             ; 6 uses
  %i.ckt = load atomic volatile i64, ptr %i.blf monotonic, align 8
  %i.cku = add i64 %i.ckt, 11
  %i.ckv = inttoptr i64 %i.cku to ptr
  %i.ckw = load atomic volatile i16, ptr %i.ckv monotonic, align 2
  %i.ckx = and i16 %i.ckw, 16
  %.not.i786 = icmp eq i16 %i.ckx, 0
  br i1 %.not.i786, label %bb.pu, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %i.cky = load ptr, ptr %i.cks, align 8
  %i.ckz = getelementptr inbounds nuw i8, ptr %i.cky, i64 16
  %i.cla = load ptr, ptr %i.ckz, align 8
  %i.clb = call noundef zeroext i1 %i.cla(ptr noundef nonnull align 8 dereferenceable(8) %i.cks) #21, !inline_history !80
  br i1 %i.clb, label %bb.pt, label %bb.pu

bb.pt:                                            ; preds = %bb.ps
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cks) #21
  %i.clc = getelementptr inbounds nuw i8, ptr %i.cks, i64 8
  %i.cld = load ptr, ptr %i.clc, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit788

bb.pu:                                            ; preds = %bb.ps, %bb.pr
  %i.cle = load ptr, ptr %i.cks, align 8
  %i.clf = getelementptr inbounds nuw i8, ptr %i.cle, i64 72
  %i.clg = load ptr, ptr %i.clf, align 8
  %i.clh = call noundef ptr %i.clg(ptr noundef nonnull align 8 dereferenceable(16) %i.cks) #21, !inline_history !80
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit788

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit788: ; preds = %bb.pt, %bb.pu
  %.0.i787 = phi ptr [ %i.cld, %bb.pt ], [ %i.clh, %bb.pu ] ; 4 uses
  %i.cli = getelementptr inbounds nuw i8, ptr %i.blf, i64 12
  %i.clj = load i32, ptr %i.cli, align 4          ; 5 uses
  %i.clk = zext i32 %i.clj to i64                 ; 2 uses
  %i.cll = shl nuw nsw i64 %i.clk, 3
  %i.clm = or disjoint i64 %i.cll, 2              ; 2 uses
  %i.cln = load ptr, ptr %i.x, align 8
  %i.clo = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.clp = ptrtoint ptr %i.cln to i64
  %i.clq = ptrtoint ptr %i.clo to i64
  %i.clr = sub i64 %i.clp, %i.clq
  %i.cls = ashr exact i64 %i.clr, 1
  %.not.i789 = icmp ugt i64 %i.clm, %i.cls
  br i1 %.not.i789, label %bb.pv, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit790, !prof !6

bb.pv:                                            ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit788
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i64 noundef %i.clm)
  %.pre3807 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit790

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit790: ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit788, %bb.pv
  %i.clt = phi ptr [ %i.clo, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit788 ], [ %.pre3807, %bb.pv ] ; 2 uses
  %i.clu = getelementptr inbounds nuw i8, ptr %i.clt, i64 2
  store ptr %i.clu, ptr %i.y, align 8
  store i16 34, ptr %i.clt, align 2
  %.not3539 = icmp eq i32 %i.clj, 0
  br i1 %.not3539, label %._crit_edge3341.thread, label %.lr.ph3340

._crit_edge3341.thread:                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit790
  %.pre38084236 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i130

._crit_edge3341:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit793.thread
  %i.clv = icmp ugt i32 %i.clj, %.2.i.i107.i134
  %.pre3808 = load ptr, ptr %i.y, align 8         ; 18 uses
  br i1 %i.clv, label %bb.rn, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i130

.lr.ph3340:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit790, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit793.thread
  %.055.i.i102.i1283339 = phi i32 [ %.2.i.i107.i134, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit793.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit790 ] ; 4 uses
  %.057.i.i101.i1273338 = phi i32 [ %i.coo, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit793.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit790 ] ; 9 uses
  %i.clw = zext i32 %.057.i.i101.i1273338 to i64
  %i.clx = getelementptr inbounds nuw [2 x i8], ptr %.0.i787, i64 %i.clw
  %i.cly = load i16, ptr %i.clx, align 2          ; 11 uses
  %i.clz = and i16 %i.cly, -2
  %or.cond.i791 = icmp eq i16 %i.clz, 32
  br i1 %or.cond.i791, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit793.thread, label %bb.pw

bb.pw:                                            ; preds = %.lr.ph3340
  %i.cma = icmp ugt i16 %i.cly, 34
  %i.cmb = icmp ne i16 %i.cly, 92
  %or.cond5.i792 = and i1 %i.cma, %i.cmb
  %i.cmc = add i16 %i.cly, 8192
  %i.cmd = icmp ult i16 %i.cmc, -2048
  %or.cond2841 = and i1 %or.cond5.i792, %i.cmd
  br i1 %or.cond2841, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit793.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit793.thread2726, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit793.thread2726: ; preds = %bb.pw
  %12 = icmp slt i16 %i.cly, -8192
  %i.cme = zext i32 %.055.i.i102.i1283339 to i64
  %i.cmf = getelementptr inbounds nuw [2 x i8], ptr %.0.i787, i64 %i.cme ; 34 uses
  %i.cmg = sub i32 %.057.i.i101.i1273338, %.055.i.i102.i1283339 ; 3 uses
  %i.cmh = zext i32 %i.cmg to i64                 ; 4 uses
  %i.cmi = load ptr, ptr %i.y, align 8            ; 34 uses
  br i1 %12, label %bb.px, label %bb.qv

bb.px:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit793.thread2726
  switch i32 %i.cmg, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i794 [
    i32 1, label %bb.py
    i32 2, label %bb.pz
    i32 3, label %bb.qa
    i32 4, label %bb.qb
    i32 5, label %bb.qc
    i32 6, label %bb.qd
    i32 7, label %bb.qe
    i32 8, label %bb.qf
    i32 9, label %bb.qg
    i32 10, label %bb.qh
    i32 11, label %bb.qi
    i32 12, label %bb.qj
    i32 13, label %bb.qk
    i32 14, label %bb.ql
    i32 15, label %bb.qm
    i32 16, label %bb.qn
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit796
  ]

bb.py:                                            ; preds = %bb.px
  %i.cmj = load i16, ptr %i.cmf, align 2
  store i16 %i.cmj, ptr %i.cmi, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit796

bb.pz:                                            ; preds = %bb.px
  %i.cmk = load i32, ptr %i.cmf, align 2
  store i32 %i.cmk, ptr %i.cmi, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit796

bb.qa:                                            ; preds = %bb.px
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.cmi, ptr noundef nonnull align 2 dereferenceable(6) %i.cmf, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit796

bb.qb:                                            ; preds = %bb.px
  %i.cml = load i64, ptr %i.cmf, align 2
  store i64 %i.cml, ptr %i.cmi, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit796

bb.qc:                                            ; preds = %bb.px
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.cmi, ptr noundef nonnull align 2 dereferenceable(10) %i.cmf, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit796

bb.qd:                                            ; preds = %bb.px
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.cmi, ptr noundef nonnull align 2 dereferenceable(12) %i.cmf, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit796

bb.qe:                                            ; preds = %bb.px
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.cmi, ptr noundef nonnull align 2 dereferenceable(14) %i.cmf, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit796

bb.qf:                                            ; preds = %bb.px
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.cmi, ptr noundef nonnull align 2 dereferenceable(16) %i.cmf, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit796

bb.qg:                                            ; preds = %bb.px
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.cmi, ptr noundef nonnull align 2 dereferenceable(18) %i.cmf, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit796

bb.qh:                                            ; preds = %bb.px
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.cmi, ptr noundef nonnull align 2 dereferenceable(20) %i.cmf, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit796

bb.qi:                                            ; preds = %bb.px
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.cmi, ptr noundef nonnull align 2 dereferenceable(22) %i.cmf, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit796

bb.qj:                                            ; preds = %bb.px
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.cmi, ptr noundef nonnull align 2 dereferenceable(24) %i.cmf, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit796

bb.qk:                                            ; preds = %bb.px
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.cmi, ptr noundef nonnull align 2 dereferenceable(26) %i.cmf, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit796

bb.ql:                                            ; preds = %bb.px
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %i.cmi, ptr noundef nonnull align 2 dereferenceable(28) %i.cmf, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit796

bb.qm:                                            ; preds = %bb.px
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.cmi, ptr noundef nonnull align 2 dereferenceable(30) %i.cmf, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit796

bb.qn:                                            ; preds = %bb.px
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.cmi, ptr noundef nonnull align 2 dereferenceable(32) %i.cmf, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit796

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i794: ; preds = %bb.px
  %.idx.i.i.i.i795 = shl nuw nsw i64 %i.cmh, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cmi, ptr nonnull align 2 %i.cmf, i64 %.idx.i.i.i.i795, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit796

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit796: ; preds = %bb.px, %bb.py, %bb.pz, %bb.qa, %bb.qb, %bb.qc, %bb.qd, %bb.qe, %bb.qf, %bb.qg, %bb.qh, %bb.qi, %bb.qj, %bb.qk, %bb.ql, %bb.qm, %bb.qn, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i794
  %i.cmm = load ptr, ptr %i.y, align 8
  %i.cmn = getelementptr inbounds nuw [2 x i8], ptr %i.cmm, i64 %i.cmh ; 9 uses
  store ptr %i.cmn, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #21
  %i.cmo = icmp samesign ult i16 %i.cly, -9216
  br i1 %i.cmo, label %bb.qo, label %bb.qt

bb.qo:                                            ; preds = %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit796
  %i.cmp = add nuw i32 %.057.i.i101.i1273338, 1   ; 3 uses
  %i.cmq = icmp ugt i32 %i.clj, %i.cmp
  br i1 %i.cmq, label %bb.qp, label %bb.qs

bb.qp:                                            ; preds = %bb.qo
  %i.cmr = zext i32 %i.cmp to i64
  %i.cms = getelementptr inbounds nuw [2 x i8], ptr %.0.i787, i64 %i.cmr
  %i.cmt = load i16, ptr %i.cms, align 2          ; 2 uses
  %i.cmu = and i16 %i.cmt, -1024
  %i.cmv = icmp eq i16 %i.cmu, -9216
  br i1 %i.cmv, label %bb.qq, label %bb.qr

bb.qq:                                            ; preds = %bb.qp
  %i.cmw = getelementptr inbounds nuw i8, ptr %i.cmn, i64 2
  store ptr %i.cmw, ptr %i.y, align 8
  store i16 %i.cly, ptr %i.cmn, align 2
  %i.cmx = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.cmy = getelementptr inbounds nuw i8, ptr %i.cmx, i64 2
  store ptr %i.cmy, ptr %i.y, align 8
  store i16 %i.cmt, ptr %i.cmx, align 2
  br label %bb.qu

bb.qr:                                            ; preds = %bb.qp
  store i16 92, ptr %i.cmn, align 2
  %i.cmz = getelementptr inbounds nuw i8, ptr %i.cmn, i64 2
  store i16 117, ptr %i.cmz, align 2
  %i.cna = load ptr, ptr %i.y, align 8
  %i.cnb = getelementptr inbounds nuw i8, ptr %i.cna, i64 4
  store ptr %i.cnb, ptr %i.y, align 8
  %i.cnc = uitofp i16 %i.cly to double
  %i.cnd = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.cnc, i32 noundef 16, ptr nonnull %i.l, i64 2200) #21 ; 2 uses
  %i.cne = extractvalue { i64, ptr } %i.cnd, 0    ; 2 uses
  %i.cnf = extractvalue { i64, ptr } %i.cnd, 1
  %i.cng = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.cng, ptr noundef %i.cnf, i64 noundef %i.cne)
  %i.cnh = load ptr, ptr %i.y, align 8
  %i.cni = getelementptr inbounds nuw [2 x i8], ptr %i.cnh, i64 %i.cne
  store ptr %i.cni, ptr %i.y, align 8
  br label %bb.qu

bb.qs:                                            ; preds = %bb.qo
  store i16 92, ptr %i.cmn, align 2
  %i.cnj = getelementptr inbounds nuw i8, ptr %i.cmn, i64 2
  store i16 117, ptr %i.cnj, align 2
  %i.cnk = load ptr, ptr %i.y, align 8
  %i.cnl = getelementptr inbounds nuw i8, ptr %i.cnk, i64 4
  store ptr %i.cnl, ptr %i.y, align 8
  %i.cnm = uitofp i16 %i.cly to double
  %i.cnn = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.cnm, i32 noundef 16, ptr nonnull %i.l, i64 2200) #21 ; 2 uses
  %i.cno = extractvalue { i64, ptr } %i.cnn, 0    ; 2 uses
  %i.cnp = extractvalue { i64, ptr } %i.cnn, 1
  %i.cnq = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.cnq, ptr noundef %i.cnp, i64 noundef %i.cno)
  %i.cnr = load ptr, ptr %i.y, align 8
  %i.cns = getelementptr inbounds nuw [2 x i8], ptr %i.cnr, i64 %i.cno
  store ptr %i.cns, ptr %i.y, align 8
  br label %bb.qu

bb.qt:                                            ; preds = %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit796
  store i16 92, ptr %i.cmn, align 2
  %i.cnt = getelementptr inbounds nuw i8, ptr %i.cmn, i64 2
  store i16 117, ptr %i.cnt, align 2
  %i.cnu = load ptr, ptr %i.y, align 8
  %i.cnv = getelementptr inbounds nuw i8, ptr %i.cnu, i64 4
  store ptr %i.cnv, ptr %i.y, align 8
  %i.cnw = uitofp i16 %i.cly to double
  %i.cnx = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.cnw, i32 noundef 16, ptr nonnull %i.l, i64 2200) #21 ; 2 uses
  %i.cny = extractvalue { i64, ptr } %i.cnx, 0    ; 2 uses
  %i.cnz = extractvalue { i64, ptr } %i.cnx, 1
  %i.coa = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.coa, ptr noundef %i.cnz, i64 noundef %i.cny)
  %i.cob = load ptr, ptr %i.y, align 8
  %i.coc = getelementptr inbounds nuw [2 x i8], ptr %i.cob, i64 %i.cny
  store ptr %i.coc, ptr %i.y, align 8
  br label %bb.qu

bb.qu:                                            ; preds = %bb.qt, %bb.qs, %bb.qr, %bb.qq
  %.259.i.i109.i136 = phi i32 [ %.057.i.i101.i1273338, %bb.qt ], [ %.057.i.i101.i1273338, %bb.qs ], [ %i.cmp, %bb.qq ], [ %.057.i.i101.i1273338, %bb.qr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #21
  br label %bb.rm

bb.qv:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit793.thread2726
  switch i32 %i.cmg, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i799 [
    i32 1, label %bb.qw
    i32 2, label %bb.qx
    i32 3, label %bb.qy
    i32 4, label %bb.qz
    i32 5, label %bb.ra
    i32 6, label %bb.rb
    i32 7, label %bb.rc
    i32 8, label %bb.rd
    i32 9, label %bb.re
    i32 10, label %bb.rf
    i32 11, label %bb.rg
    i32 12, label %bb.rh
    i32 13, label %bb.ri
    i32 14, label %bb.rj
end_hunk_4
begin_hunk_5_@_ZN2v88internal19FastJsonStringifierItE15SerializeObjectENS0_18ContinuationRecordERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS5_2EEEE:bb.a
    i32 7, label %bb.ru
    i32 8, label %bb.rv
    i32 9, label %bb.rw
    i32 10, label %bb.rx
    i32 11, label %bb.ry
    i32 12, label %bb.rz
    i32 13, label %bb.sa
    i32 14, label %bb.sb
    i32 15, label %bb.sc
    i32 16, label %bb.sd
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit804
  ]

bb.ro:                                            ; preds = %bb.rn
  %i.cot = load i16, ptr %i.cor, align 2
  store i16 %i.cot, ptr %.pre3808, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit804

bb.rp:                                            ; preds = %bb.rn
  %i.cou = load i32, ptr %i.cor, align 2
  store i32 %i.cou, ptr %.pre3808, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit804

bb.rq:                                            ; preds = %bb.rn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre3808, ptr noundef nonnull align 2 dereferenceable(6) %i.cor, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit804

bb.rr:                                            ; preds = %bb.rn
  %i.cov = load i64, ptr %i.cor, align 2
  store i64 %i.cov, ptr %.pre3808, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit804

bb.rs:                                            ; preds = %bb.rn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre3808, ptr noundef nonnull align 2 dereferenceable(10) %i.cor, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit804

bb.rt:                                            ; preds = %bb.rn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre3808, ptr noundef nonnull align 2 dereferenceable(12) %i.cor, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit804

bb.ru:                                            ; preds = %bb.rn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre3808, ptr noundef nonnull align 2 dereferenceable(14) %i.cor, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit804

bb.rv:                                            ; preds = %bb.rn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre3808, ptr noundef nonnull align 2 dereferenceable(16) %i.cor, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit804

bb.rw:                                            ; preds = %bb.rn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre3808, ptr noundef nonnull align 2 dereferenceable(18) %i.cor, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit804

bb.rx:                                            ; preds = %bb.rn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre3808, ptr noundef nonnull align 2 dereferenceable(20) %i.cor, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit804

bb.ry:                                            ; preds = %bb.rn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre3808, ptr noundef nonnull align 2 dereferenceable(22) %i.cor, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit804

bb.rz:                                            ; preds = %bb.rn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre3808, ptr noundef nonnull align 2 dereferenceable(24) %i.cor, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit804

bb.sa:                                            ; preds = %bb.rn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre3808, ptr noundef nonnull align 2 dereferenceable(26) %i.cor, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit804

bb.sb:                                            ; preds = %bb.rn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre3808, ptr noundef nonnull align 2 dereferenceable(28) %i.cor, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit804

bb.sc:                                            ; preds = %bb.rn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre3808, ptr noundef nonnull align 2 dereferenceable(30) %i.cor, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit804

bb.sd:                                            ; preds = %bb.rn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre3808, ptr noundef nonnull align 2 dereferenceable(32) %i.cor, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit804

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i802: ; preds = %bb.rn
  %.idx.i.i.i.i803 = shl nuw nsw i64 %i.cos, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre3808, ptr nonnull align 2 %i.cor, i64 %.idx.i.i.i.i803, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit804

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit804: ; preds = %bb.rn, %bb.ro, %bb.rp, %bb.rq, %bb.rr, %bb.rs, %bb.rt, %bb.ru, %bb.rv, %bb.rw, %bb.rx, %bb.ry, %bb.rz, %bb.sa, %bb.sb, %bb.sc, %bb.sd, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i802
  %i.cow = load ptr, ptr %i.y, align 8
  %i.cox = getelementptr inbounds nuw [2 x i8], ptr %i.cow, i64 %i.cos
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i130

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i130: ; preds = %._crit_edge3341.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit804, %._crit_edge3341
  %i.coy = phi ptr [ %i.cox, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit804 ], [ %.pre3808, %._crit_edge3341 ], [ %.pre38084236, %._crit_edge3341.thread ] ; 2 uses
  %i.coz = getelementptr inbounds nuw i8, ptr %i.coy, i64 2
  store ptr %i.coz, ptr %i.y, align 8
  store i16 34, ptr %i.coy, align 2
  br label %.critedge.i94.sink.split

bb.se:                                            ; preds = %bb.kz
  %i.cpa = getelementptr inbounds nuw i8, ptr %i.blf, i64 16
  %i.cpb = load i64, ptr %i.cpa, align 8
  %i.cpc = add i64 %i.cpb, -1
  %i.cpd = inttoptr i64 %i.cpc to ptr             ; 5 uses
  %i.cpe = load atomic volatile i64, ptr %i.cpd monotonic, align 8
  %i.cpf = add i64 %i.cpe, 11
  %i.cpg = inttoptr i64 %i.cpf to ptr
  %i.cph = load atomic volatile i16, ptr %i.cpg monotonic, align 2
  %i.cpi = and i16 %i.cph, -121
  %i.cpj = icmp eq i16 %i.cpi, 2
  %i.cpk = getelementptr inbounds nuw i8, ptr %i.cpd, i64 16 ; 5 uses
  br i1 %i.cpj, label %bb.sf, label %bb.tm

bb.sf:                                            ; preds = %bb.se
  %i.cpl = load i64, ptr %i.cpk, align 8
  %i.cpm = inttoptr i64 %i.cpl to ptr             ; 6 uses
  %i.cpn = load atomic volatile i64, ptr %i.cpd monotonic, align 8
  %i.cpo = add i64 %i.cpn, 11
  %i.cpp = inttoptr i64 %i.cpo to ptr
  %i.cpq = load atomic volatile i16, ptr %i.cpp monotonic, align 2
  %i.cpr = and i16 %i.cpq, 16
  %.not.i806 = icmp eq i16 %i.cpr, 0
  br i1 %.not.i806, label %bb.si, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %i.cps = load ptr, ptr %i.cpm, align 8
  %i.cpt = getelementptr inbounds nuw i8, ptr %i.cps, i64 16
  %i.cpu = load ptr, ptr %i.cpt, align 8
  %i.cpv = call noundef zeroext i1 %i.cpu(ptr noundef nonnull align 8 dereferenceable(8) %i.cpm) #21, !inline_history !80
  br i1 %i.cpv, label %bb.sh, label %bb.si

bb.sh:                                            ; preds = %bb.sg
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cpm) #21
  %i.cpw = getelementptr inbounds nuw i8, ptr %i.cpm, i64 8
  %i.cpx = load ptr, ptr %i.cpw, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit808

bb.si:                                            ; preds = %bb.sg, %bb.sf
  %i.cpy = load ptr, ptr %i.cpm, align 8
  %i.cpz = getelementptr inbounds nuw i8, ptr %i.cpy, i64 72
  %i.cqa = load ptr, ptr %i.cpz, align 8
  %i.cqb = call noundef ptr %i.cqa(ptr noundef nonnull align 8 dereferenceable(16) %i.cpm) #21, !inline_history !80
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit808

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit808: ; preds = %bb.sh, %bb.si
  %.0.i807 = phi ptr [ %i.cpx, %bb.sh ], [ %i.cqb, %bb.si ] ; 4 uses
  %i.cqc = getelementptr inbounds nuw i8, ptr %i.cpd, i64 12
  %i.cqd = load i32, ptr %i.cqc, align 4          ; 5 uses
  %i.cqe = zext i32 %i.cqd to i64                 ; 2 uses
  %i.cqf = shl nuw nsw i64 %i.cqe, 3
  %i.cqg = or disjoint i64 %i.cqf, 2              ; 2 uses
  %i.cqh = load ptr, ptr %i.x, align 8
  %i.cqi = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.cqj = ptrtoint ptr %i.cqh to i64
  %i.cqk = ptrtoint ptr %i.cqi to i64
  %i.cql = sub i64 %i.cqj, %i.cqk
  %i.cqm = ashr exact i64 %i.cql, 1
  %.not.i809 = icmp ugt i64 %i.cqg, %i.cqm
  br i1 %.not.i809, label %bb.sj, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit810, !prof !6

bb.sj:                                            ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit808
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i64 noundef %i.cqg)
  %.pre3805 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit810

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit810: ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit808, %bb.sj
  %i.cqn = phi ptr [ %i.cqi, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit808 ], [ %.pre3805, %bb.sj ] ; 2 uses
  %i.cqo = getelementptr inbounds nuw i8, ptr %i.cqn, i64 2
  store ptr %i.cqo, ptr %i.y, align 8
  store i16 34, ptr %i.cqn, align 2
  %.not3538 = icmp eq i32 %i.cqd, 0
  br i1 %.not3538, label %._crit_edge3336.thread, label %.lr.ph3335

._crit_edge3336.thread:                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit810
  %.pre38064238 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit119.i119

._crit_edge3336:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit813.thread
  %i.cqp = icmp ugt i32 %i.cqd, %.2.i.i116.i123
  %.pre3806 = load ptr, ptr %i.y, align 8         ; 18 uses
  br i1 %i.cqp, label %bb.sv, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit119.i119

.lr.ph3335:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit810, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit813.thread
  %.055.i.i111.i1173334 = phi i32 [ %.2.i.i116.i123, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit813.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit810 ] ; 4 uses
  %.057.i.i110.i1163333 = phi i32 [ %i.ctb, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit813.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit810 ] ; 9 uses
  %i.cqq = zext i32 %.057.i.i110.i1163333 to i64
  %i.cqr = getelementptr inbounds nuw [2 x i8], ptr %.0.i807, i64 %i.cqq
  %i.cqs = load i16, ptr %i.cqr, align 2          ; 11 uses
  %i.cqt = and i16 %i.cqs, -2
  %or.cond.i811 = icmp eq i16 %i.cqt, 32
  br i1 %or.cond.i811, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit813.thread, label %bb.sk

bb.sk:                                            ; preds = %.lr.ph3335
  %i.cqu = icmp ugt i16 %i.cqs, 34
  %i.cqv = icmp ne i16 %i.cqs, 92
  %or.cond5.i812 = and i1 %i.cqu, %i.cqv
  %i.cqw = add i16 %i.cqs, 8192
  %i.cqx = icmp ult i16 %i.cqw, -2048
  %or.cond2843 = and i1 %or.cond5.i812, %i.cqx
  br i1 %or.cond2843, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit813.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit813.thread2727, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit813.thread2727: ; preds = %bb.sk
  %13 = icmp slt i16 %i.cqs, -8192
  %i.cqy = zext i32 %.055.i.i111.i1173334 to i64
  %i.cqz = getelementptr inbounds nuw [2 x i8], ptr %.0.i807, i64 %i.cqy
  %i.cra = sub i32 %.057.i.i110.i1163333, %.055.i.i111.i1173334
  %i.crb = zext i32 %i.cra to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.z, ptr noundef %i.cqz, i64 noundef %i.crb)
  br i1 %13, label %bb.sl, label %bb.st

bb.sl:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit813.thread2727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #21
  %i.crc = icmp samesign ult i16 %i.cqs, -9216
  br i1 %i.crc, label %bb.sm, label %bb.sr

bb.sm:                                            ; preds = %bb.sl
  %i.crd = add nuw i32 %.057.i.i110.i1163333, 1   ; 3 uses
  %i.cre = icmp ugt i32 %i.cqd, %i.crd
  br i1 %i.cre, label %bb.sn, label %bb.sq

bb.sn:                                            ; preds = %bb.sm
  %i.crf = zext i32 %i.crd to i64
  %i.crg = getelementptr inbounds nuw [2 x i8], ptr %.0.i807, i64 %i.crf
  %i.crh = load i16, ptr %i.crg, align 2          ; 2 uses
  %i.cri = and i16 %i.crh, -1024
  %i.crj = icmp eq i16 %i.cri, -9216
  %i.crk = load ptr, ptr %i.y, align 8            ; 4 uses
  br i1 %i.crj, label %bb.so, label %bb.sp

bb.so:                                            ; preds = %bb.sn
  %i.crl = getelementptr inbounds nuw i8, ptr %i.crk, i64 2
  store ptr %i.crl, ptr %i.y, align 8
  store i16 %i.cqs, ptr %i.crk, align 2
  %i.crm = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.crn = getelementptr inbounds nuw i8, ptr %i.crm, i64 2
  store ptr %i.crn, ptr %i.y, align 8
  store i16 %i.crh, ptr %i.crm, align 2
  br label %bb.ss

bb.sp:                                            ; preds = %bb.sn
  store i16 92, ptr %i.crk, align 2
  %i.cro = getelementptr inbounds nuw i8, ptr %i.crk, i64 2
  store i16 117, ptr %i.cro, align 2
  %i.crp = load ptr, ptr %i.y, align 8
  %i.crq = getelementptr inbounds nuw i8, ptr %i.crp, i64 4
  store ptr %i.crq, ptr %i.y, align 8
  %i.crr = uitofp i16 %i.cqs to double
  %i.crs = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.crr, i32 noundef 16, ptr nonnull %i.k, i64 2200) #21 ; 2 uses
  %i.crt = extractvalue { i64, ptr } %i.crs, 0    ; 2 uses
  %i.cru = extractvalue { i64, ptr } %i.crs, 1
  %i.crv = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.crv, ptr noundef %i.cru, i64 noundef %i.crt)
  %i.crw = load ptr, ptr %i.y, align 8
  %i.crx = getelementptr inbounds nuw [2 x i8], ptr %i.crw, i64 %i.crt
  store ptr %i.crx, ptr %i.y, align 8
  br label %bb.ss

bb.sq:                                            ; preds = %bb.sm
  %i.cry = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.cry, align 2
  %i.crz = getelementptr inbounds nuw i8, ptr %i.cry, i64 2
  store i16 117, ptr %i.crz, align 2
  %i.csa = load ptr, ptr %i.y, align 8
  %i.csb = getelementptr inbounds nuw i8, ptr %i.csa, i64 4
  store ptr %i.csb, ptr %i.y, align 8
  %i.csc = uitofp i16 %i.cqs to double
  %i.csd = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.csc, i32 noundef 16, ptr nonnull %i.k, i64 2200) #21 ; 2 uses
  %i.cse = extractvalue { i64, ptr } %i.csd, 0    ; 2 uses
  %i.csf = extractvalue { i64, ptr } %i.csd, 1
  %i.csg = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.csg, ptr noundef %i.csf, i64 noundef %i.cse)
  %i.csh = load ptr, ptr %i.y, align 8
  %i.csi = getelementptr inbounds nuw [2 x i8], ptr %i.csh, i64 %i.cse
  store ptr %i.csi, ptr %i.y, align 8
  br label %bb.ss

bb.sr:                                            ; preds = %bb.sl
  %i.csj = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.csj, align 2
  %i.csk = getelementptr inbounds nuw i8, ptr %i.csj, i64 2
  store i16 117, ptr %i.csk, align 2
  %i.csl = load ptr, ptr %i.y, align 8
  %i.csm = getelementptr inbounds nuw i8, ptr %i.csl, i64 4
  store ptr %i.csm, ptr %i.y, align 8
  %i.csn = uitofp i16 %i.cqs to double
  %i.cso = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.csn, i32 noundef 16, ptr nonnull %i.k, i64 2200) #21 ; 2 uses
  %i.csp = extractvalue { i64, ptr } %i.cso, 0    ; 2 uses
  %i.csq = extractvalue { i64, ptr } %i.cso, 1
  %i.csr = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.csr, ptr noundef %i.csq, i64 noundef %i.csp)
  %i.css = load ptr, ptr %i.y, align 8
  %i.cst = getelementptr inbounds nuw [2 x i8], ptr %i.css, i64 %i.csp
  store ptr %i.cst, ptr %i.y, align 8
  br label %bb.ss

bb.ss:                                            ; preds = %bb.sr, %bb.sq, %bb.sp, %bb.so
  %.259.i.i118.i125 = phi i32 [ %.057.i.i110.i1163333, %bb.sr ], [ %.057.i.i110.i1163333, %bb.sq ], [ %i.crd, %bb.so ], [ %.057.i.i110.i1163333, %bb.sp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #21
  br label %bb.su

bb.st:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit813.thread2727
  %i.csu = zext i16 %i.cqs to i64
  %i.csv = shl nuw nsw i64 %i.csu, 3
  %i.csw = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.csv ; 2 uses
  %i.csx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.csw) #26 ; 2 uses
  %i.csy = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.csy, ptr noundef nonnull %i.csw, i64 noundef %i.csx)
  %i.csz = load ptr, ptr %i.y, align 8
  %i.cta = getelementptr inbounds nuw [2 x i8], ptr %i.csz, i64 %i.csx
  store ptr %i.cta, ptr %i.y, align 8
  br label %bb.su

bb.su:                                            ; preds = %bb.st, %bb.ss
  %.3.i.i113.i120 = phi i32 [ %.259.i.i118.i125, %bb.ss ], [ %.057.i.i110.i1163333, %bb.st ] ; 2 uses
  %.156.i.i114.i121 = add nuw i32 %.3.i.i113.i120, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit813.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit813.thread: ; preds = %bb.sk, %.lr.ph3335, %bb.su
  %.4.i.i115.i122 = phi i32 [ %.3.i.i113.i120, %bb.su ], [ %.057.i.i110.i1163333, %bb.sk ], [ %.057.i.i110.i1163333, %.lr.ph3335 ]
  %.2.i.i116.i123 = phi i32 [ %.156.i.i114.i121, %bb.su ], [ %.055.i.i111.i1173334, %bb.sk ], [ %.055.i.i111.i1173334, %.lr.ph3335 ] ; 3 uses
  %i.ctb = add nuw i32 %.4.i.i115.i122, 1         ; 2 uses
  %i.ctc = icmp ugt i32 %i.cqd, %i.ctb
  br i1 %i.ctc, label %.lr.ph3335, label %._crit_edge3336, !llvm.loop !350

bb.sv:                                            ; preds = %._crit_edge3336
  %i.ctd = zext i32 %.2.i.i116.i123 to i64        ; 2 uses
  %i.cte = getelementptr inbounds nuw [2 x i8], ptr %.0.i807, i64 %i.ctd ; 17 uses
  %i.ctf = sub nuw nsw i64 %i.cqe, %i.ctd         ; 3 uses
  %trunc2893 = trunc nuw i64 %i.ctf to i32
  switch i32 %trunc2893, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i816 [
    i32 1, label %bb.sw
    i32 2, label %bb.sx
    i32 3, label %bb.sy
    i32 4, label %bb.sz
    i32 5, label %bb.ta
    i32 6, label %bb.tb
    i32 7, label %bb.tc
    i32 8, label %bb.td
    i32 9, label %bb.te
    i32 10, label %bb.tf
    i32 11, label %bb.tg
    i32 12, label %bb.th
    i32 13, label %bb.ti
    i32 14, label %bb.tj
    i32 15, label %bb.tk
    i32 16, label %bb.tl
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit818
  ]

bb.sw:                                            ; preds = %bb.sv
  %i.ctg = load i16, ptr %i.cte, align 2
  store i16 %i.ctg, ptr %.pre3806, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit818

bb.sx:                                            ; preds = %bb.sv
  %i.cth = load i32, ptr %i.cte, align 2
  store i32 %i.cth, ptr %.pre3806, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit818

bb.sy:                                            ; preds = %bb.sv
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre3806, ptr noundef nonnull align 2 dereferenceable(6) %i.cte, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit818

bb.sz:                                            ; preds = %bb.sv
  %i.cti = load i64, ptr %i.cte, align 2
  store i64 %i.cti, ptr %.pre3806, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit818

bb.ta:                                            ; preds = %bb.sv
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre3806, ptr noundef nonnull align 2 dereferenceable(10) %i.cte, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit818

bb.tb:                                            ; preds = %bb.sv
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre3806, ptr noundef nonnull align 2 dereferenceable(12) %i.cte, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit818

bb.tc:                                            ; preds = %bb.sv
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre3806, ptr noundef nonnull align 2 dereferenceable(14) %i.cte, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit818

bb.td:                                            ; preds = %bb.sv
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre3806, ptr noundef nonnull align 2 dereferenceable(16) %i.cte, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit818

bb.te:                                            ; preds = %bb.sv
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre3806, ptr noundef nonnull align 2 dereferenceable(18) %i.cte, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit818

bb.tf:                                            ; preds = %bb.sv
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre3806, ptr noundef nonnull align 2 dereferenceable(20) %i.cte, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit818

bb.tg:                                            ; preds = %bb.sv
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre3806, ptr noundef nonnull align 2 dereferenceable(22) %i.cte, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit818

bb.th:                                            ; preds = %bb.sv
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre3806, ptr noundef nonnull align 2 dereferenceable(24) %i.cte, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit818

bb.ti:                                            ; preds = %bb.sv
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre3806, ptr noundef nonnull align 2 dereferenceable(26) %i.cte, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit818

bb.tj:                                            ; preds = %bb.sv
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre3806, ptr noundef nonnull align 2 dereferenceable(28) %i.cte, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit818

bb.tk:                                            ; preds = %bb.sv
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre3806, ptr noundef nonnull align 2 dereferenceable(30) %i.cte, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit818

bb.tl:                                            ; preds = %bb.sv
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre3806, ptr noundef nonnull align 2 dereferenceable(32) %i.cte, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit818

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i816: ; preds = %bb.sv
  %.idx.i.i.i.i817 = shl nuw nsw i64 %i.ctf, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre3806, ptr nonnull align 2 %i.cte, i64 %.idx.i.i.i.i817, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit818

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit818: ; preds = %bb.sv, %bb.sw, %bb.sx, %bb.sy, %bb.sz, %bb.ta, %bb.tb, %bb.tc, %bb.td, %bb.te, %bb.tf, %bb.tg, %bb.th, %bb.ti, %bb.tj, %bb.tk, %bb.tl, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i816
  %i.ctj = load ptr, ptr %i.y, align 8
  %i.ctk = getelementptr inbounds nuw [2 x i8], ptr %i.ctj, i64 %i.ctf
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit119.i119

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit119.i119: ; preds = %._crit_edge3336.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit818, %._crit_edge3336
  %i.ctl = phi ptr [ %i.ctk, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit818 ], [ %.pre3806, %._crit_edge3336 ], [ %.pre38064238, %._crit_edge3336.thread ] ; 2 uses
  %i.ctm = getelementptr inbounds nuw i8, ptr %i.ctl, i64 2
  store ptr %i.ctm, ptr %i.y, align 8
  store i16 34, ptr %i.ctl, align 2
  br label %.critedge.i94.sink.split

bb.tm:                                            ; preds = %bb.se
  %i.ctn = getelementptr inbounds nuw i8, ptr %i.cpd, i64 12
  %i.cto = load i32, ptr %i.ctn, align 4          ; 5 uses
  %i.ctp = zext i32 %i.cto to i64                 ; 2 uses
  %i.ctq = shl nuw nsw i64 %i.ctp, 3
  %i.ctr = or disjoint i64 %i.ctq, 2              ; 2 uses
  %i.cts = load ptr, ptr %i.x, align 8
  %i.ctt = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.ctu = ptrtoint ptr %i.cts to i64
  %i.ctv = ptrtoint ptr %i.ctt to i64
  %i.ctw = sub i64 %i.ctu, %i.ctv
  %i.ctx = ashr exact i64 %i.ctw, 1
  %.not.i819 = icmp ugt i64 %i.ctr, %i.ctx
  br i1 %.not.i819, label %bb.tn, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit820, !prof !6

bb.tn:                                            ; preds = %bb.tm
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i64 noundef %i.ctr)
  %.pre3803 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit820

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit820: ; preds = %bb.tm, %bb.tn
  %i.cty = phi ptr [ %i.ctt, %bb.tm ], [ %.pre3803, %bb.tn ] ; 2 uses
  %i.ctz = getelementptr inbounds nuw i8, ptr %i.cty, i64 2
  store ptr %i.ctz, ptr %i.y, align 8
  store i16 34, ptr %i.cty, align 2
  %.not3537 = icmp eq i32 %i.cto, 0
  br i1 %.not3537, label %._crit_edge3331.thread, label %.lr.ph3330

._crit_edge3331.thread:                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit820
  %.pre38044240 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit100.i109

._crit_edge3331:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit823.thread
  %i.cua = icmp ugt i32 %i.cto, %.2.i.i97.i113
  %.pre3804 = load ptr, ptr %i.y, align 8         ; 18 uses
  br i1 %i.cua, label %bb.tz, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit100.i109

.lr.ph3330:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit820, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit823.thread
  %.055.i.i92.i1073329 = phi i32 [ %.2.i.i97.i113, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit823.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit820 ] ; 4 uses
  %.057.i.i91.i1063328 = phi i32 [ %i.cwm, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit823.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit820 ] ; 9 uses
  %i.cub = zext i32 %.057.i.i91.i1063328 to i64
  %i.cuc = getelementptr inbounds nuw [2 x i8], ptr %i.cpk, i64 %i.cub
  %i.cud = load i16, ptr %i.cuc, align 2          ; 11 uses
  %i.cue = and i16 %i.cud, -2
  %or.cond.i821 = icmp eq i16 %i.cue, 32
  br i1 %or.cond.i821, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit823.thread, label %bb.to

bb.to:                                            ; preds = %.lr.ph3330
  %i.cuf = icmp ugt i16 %i.cud, 34
  %i.cug = icmp ne i16 %i.cud, 92
  %or.cond5.i822 = and i1 %i.cuf, %i.cug
  %i.cuh = add i16 %i.cud, 8192
  %i.cui = icmp ult i16 %i.cuh, -2048
  %or.cond2845 = and i1 %or.cond5.i822, %i.cui
  br i1 %or.cond2845, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit823.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit823.thread2728, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit823.thread2728: ; preds = %bb.to
  %14 = icmp slt i16 %i.cud, -8192
  %i.cuj = zext i32 %.055.i.i92.i1073329 to i64
  %i.cuk = getelementptr inbounds nuw [2 x i8], ptr %i.cpk, i64 %i.cuj
  %i.cul = sub i32 %.057.i.i91.i1063328, %.055.i.i92.i1073329
  %i.cum = zext i32 %i.cul to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.z, ptr noundef nonnull %i.cuk, i64 noundef %i.cum)
  br i1 %14, label %bb.tp, label %bb.tx

bb.tp:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit823.thread2728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #21
  %i.cun = icmp samesign ult i16 %i.cud, -9216
  br i1 %i.cun, label %bb.tq, label %bb.tv

bb.tq:                                            ; preds = %bb.tp
  %i.cuo = add nuw i32 %.057.i.i91.i1063328, 1    ; 3 uses
  %i.cup = icmp ugt i32 %i.cto, %i.cuo
  br i1 %i.cup, label %bb.tr, label %bb.tu

bb.tr:                                            ; preds = %bb.tq
  %i.cuq = zext i32 %i.cuo to i64
  %i.cur = getelementptr inbounds nuw [2 x i8], ptr %i.cpk, i64 %i.cuq
  %i.cus = load i16, ptr %i.cur, align 2          ; 2 uses
  %i.cut = and i16 %i.cus, -1024
  %i.cuu = icmp eq i16 %i.cut, -9216
  %i.cuv = load ptr, ptr %i.y, align 8            ; 4 uses
  br i1 %i.cuu, label %bb.ts, label %bb.tt

bb.ts:                                            ; preds = %bb.tr
  %i.cuw = getelementptr inbounds nuw i8, ptr %i.cuv, i64 2
  store ptr %i.cuw, ptr %i.y, align 8
  store i16 %i.cud, ptr %i.cuv, align 2
  %i.cux = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.cuy = getelementptr inbounds nuw i8, ptr %i.cux, i64 2
  store ptr %i.cuy, ptr %i.y, align 8
  store i16 %i.cus, ptr %i.cux, align 2
  br label %bb.tw

bb.tt:                                            ; preds = %bb.tr
  store i16 92, ptr %i.cuv, align 2
  %i.cuz = getelementptr inbounds nuw i8, ptr %i.cuv, i64 2
  store i16 117, ptr %i.cuz, align 2
  %i.cva = load ptr, ptr %i.y, align 8
  %i.cvb = getelementptr inbounds nuw i8, ptr %i.cva, i64 4
  store ptr %i.cvb, ptr %i.y, align 8
  %i.cvc = uitofp i16 %i.cud to double
  %i.cvd = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.cvc, i32 noundef 16, ptr nonnull %i.m, i64 2200) #21 ; 2 uses
  %i.cve = extractvalue { i64, ptr } %i.cvd, 0    ; 2 uses
  %i.cvf = extractvalue { i64, ptr } %i.cvd, 1
  %i.cvg = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.cvg, ptr noundef %i.cvf, i64 noundef %i.cve)
  %i.cvh = load ptr, ptr %i.y, align 8
  %i.cvi = getelementptr inbounds nuw [2 x i8], ptr %i.cvh, i64 %i.cve
  store ptr %i.cvi, ptr %i.y, align 8
  br label %bb.tw

bb.tu:                                            ; preds = %bb.tq
  %i.cvj = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.cvj, align 2
  %i.cvk = getelementptr inbounds nuw i8, ptr %i.cvj, i64 2
  store i16 117, ptr %i.cvk, align 2
  %i.cvl = load ptr, ptr %i.y, align 8
  %i.cvm = getelementptr inbounds nuw i8, ptr %i.cvl, i64 4
  store ptr %i.cvm, ptr %i.y, align 8
  %i.cvn = uitofp i16 %i.cud to double
  %i.cvo = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.cvn, i32 noundef 16, ptr nonnull %i.m, i64 2200) #21 ; 2 uses
  %i.cvp = extractvalue { i64, ptr } %i.cvo, 0    ; 2 uses
  %i.cvq = extractvalue { i64, ptr } %i.cvo, 1
  %i.cvr = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.cvr, ptr noundef %i.cvq, i64 noundef %i.cvp)
  %i.cvs = load ptr, ptr %i.y, align 8
  %i.cvt = getelementptr inbounds nuw [2 x i8], ptr %i.cvs, i64 %i.cvp
  store ptr %i.cvt, ptr %i.y, align 8
  br label %bb.tw

bb.tv:                                            ; preds = %bb.tp
  %i.cvu = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.cvu, align 2
  %i.cvv = getelementptr inbounds nuw i8, ptr %i.cvu, i64 2
  store i16 117, ptr %i.cvv, align 2
  %i.cvw = load ptr, ptr %i.y, align 8
  %i.cvx = getelementptr inbounds nuw i8, ptr %i.cvw, i64 4
  store ptr %i.cvx, ptr %i.y, align 8
  %i.cvy = uitofp i16 %i.cud to double
  %i.cvz = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.cvy, i32 noundef 16, ptr nonnull %i.m, i64 2200) #21 ; 2 uses
  %i.cwa = extractvalue { i64, ptr } %i.cvz, 0    ; 2 uses
  %i.cwb = extractvalue { i64, ptr } %i.cvz, 1
  %i.cwc = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.cwc, ptr noundef %i.cwb, i64 noundef %i.cwa)
  %i.cwd = load ptr, ptr %i.y, align 8
  %i.cwe = getelementptr inbounds nuw [2 x i8], ptr %i.cwd, i64 %i.cwa
  store ptr %i.cwe, ptr %i.y, align 8
  br label %bb.tw

bb.tw:                                            ; preds = %bb.tv, %bb.tu, %bb.tt, %bb.ts
  %.259.i.i99.i115 = phi i32 [ %.057.i.i91.i1063328, %bb.tv ], [ %.057.i.i91.i1063328, %bb.tu ], [ %i.cuo, %bb.ts ], [ %.057.i.i91.i1063328, %bb.tt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #21
  br label %bb.ty

bb.tx:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit823.thread2728
  %i.cwf = zext i16 %i.cud to i64
  %i.cwg = shl nuw nsw i64 %i.cwf, 3
  %i.cwh = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.cwg ; 2 uses
  %i.cwi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cwh) #26 ; 2 uses
  %i.cwj = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.cwj, ptr noundef nonnull %i.cwh, i64 noundef %i.cwi)
  %i.cwk = load ptr, ptr %i.y, align 8
  %i.cwl = getelementptr inbounds nuw [2 x i8], ptr %i.cwk, i64 %i.cwi
  store ptr %i.cwl, ptr %i.y, align 8
  br label %bb.ty

bb.ty:                                            ; preds = %bb.tx, %bb.tw
  %.3.i.i94.i110 = phi i32 [ %.259.i.i99.i115, %bb.tw ], [ %.057.i.i91.i1063328, %bb.tx ] ; 2 uses
  %.156.i.i95.i111 = add nuw i32 %.3.i.i94.i110, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit823.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit823.thread: ; preds = %bb.to, %.lr.ph3330, %bb.ty
  %.4.i.i96.i112 = phi i32 [ %.3.i.i94.i110, %bb.ty ], [ %.057.i.i91.i1063328, %bb.to ], [ %.057.i.i91.i1063328, %.lr.ph3330 ]
  %.2.i.i97.i113 = phi i32 [ %.156.i.i95.i111, %bb.ty ], [ %.055.i.i92.i1073329, %bb.to ], [ %.055.i.i92.i1073329, %.lr.ph3330 ] ; 3 uses
  %i.cwm = add nuw i32 %.4.i.i96.i112, 1          ; 2 uses
  %i.cwn = icmp ugt i32 %i.cto, %i.cwm
  br i1 %i.cwn, label %.lr.ph3330, label %._crit_edge3331, !llvm.loop !350

bb.tz:                                            ; preds = %._crit_edge3331
  %i.cwo = zext i32 %.2.i.i97.i113 to i64         ; 2 uses
  %i.cwp = getelementptr inbounds nuw [2 x i8], ptr %i.cpk, i64 %i.cwo ; 17 uses
  %i.cwq = sub nuw nsw i64 %i.ctp, %i.cwo         ; 3 uses
  %trunc2892 = trunc nuw i64 %i.cwq to i32
  switch i32 %trunc2892, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i826 [
    i32 1, label %bb.ua
    i32 2, label %bb.ub
    i32 3, label %bb.uc
    i32 4, label %bb.ud
    i32 5, label %bb.ue
    i32 6, label %bb.uf
    i32 7, label %bb.ug
    i32 8, label %bb.uh
    i32 9, label %bb.ui
    i32 10, label %bb.uj
    i32 11, label %bb.uk
    i32 12, label %bb.ul
    i32 13, label %bb.um
    i32 14, label %bb.un
    i32 15, label %bb.uo
    i32 16, label %bb.up
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit828
  ]

bb.ua:                                            ; preds = %bb.tz
  %i.cwr = load i16, ptr %i.cwp, align 2
  store i16 %i.cwr, ptr %.pre3804, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit828

bb.ub:                                            ; preds = %bb.tz
  %i.cws = load i32, ptr %i.cwp, align 2
  store i32 %i.cws, ptr %.pre3804, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit828

bb.uc:                                            ; preds = %bb.tz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre3804, ptr noundef nonnull align 2 dereferenceable(6) %i.cwp, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit828

bb.ud:                                            ; preds = %bb.tz
  %i.cwt = load i64, ptr %i.cwp, align 2
  store i64 %i.cwt, ptr %.pre3804, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit828

bb.ue:                                            ; preds = %bb.tz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre3804, ptr noundef nonnull align 2 dereferenceable(10) %i.cwp, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit828

bb.uf:                                            ; preds = %bb.tz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre3804, ptr noundef nonnull align 2 dereferenceable(12) %i.cwp, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit828

bb.ug:                                            ; preds = %bb.tz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre3804, ptr noundef nonnull align 2 dereferenceable(14) %i.cwp, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit828

bb.uh:                                            ; preds = %bb.tz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre3804, ptr noundef nonnull align 2 dereferenceable(16) %i.cwp, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit828

bb.ui:                                            ; preds = %bb.tz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre3804, ptr noundef nonnull align 2 dereferenceable(18) %i.cwp, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit828

bb.uj:                                            ; preds = %bb.tz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre3804, ptr noundef nonnull align 2 dereferenceable(20) %i.cwp, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit828

bb.uk:                                            ; preds = %bb.tz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre3804, ptr noundef nonnull align 2 dereferenceable(22) %i.cwp, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit828

bb.ul:                                            ; preds = %bb.tz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre3804, ptr noundef nonnull align 2 dereferenceable(24) %i.cwp, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit828

bb.um:                                            ; preds = %bb.tz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre3804, ptr noundef nonnull align 2 dereferenceable(26) %i.cwp, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit828

bb.un:                                            ; preds = %bb.tz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre3804, ptr noundef nonnull align 2 dereferenceable(28) %i.cwp, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit828

bb.uo:                                            ; preds = %bb.tz
end_hunk_5
begin_hunk_6_@_ZN2v88internal19FastJsonStringifierItE15SerializeObjectENS0_18ContinuationRecordERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS5_2EEEE:bb.a
  br i1 %i.dxb, label %.lr.ph3265, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i, !llvm.loop !347

_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i: ; preds = %bb.yc, %.lr.ph3265, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i22.i
  %.013.i.i23.i.lcssa = phi i64 [ %i.dwk, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i22.i ], [ %.013.i.i23.i3264, %.lr.ph3265 ], [ %i.dwz, %bb.yc ] ; 2 uses
  %i.dxc = icmp ult i64 %.013.i.i23.i.lcssa, %i.dun
  br i1 %i.dxc, label %.lr.ph.i974, label %._crit_edge.i971

._crit_edge.i971:                                 ; preds = %bb.ye, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i
  %.0.lcssa.i973 = phi i64 [ %.155.i.i26.i, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i ], [ %.1.i980, %bb.ye ] ; 2 uses
  %i.dxd = icmp ult i64 %.0.lcssa.i973, %i.dun
  %.pre3779 = load ptr, ptr %i.y, align 8         ; 2 uses
  br i1 %i.dxd, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i.sink.split, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i, !prof !11

.lr.ph.i974:                                      ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i, %bb.ye
  %.026.i975 = phi i64 [ %.1.i980, %bb.ye ], [ %.155.i.i26.i, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i ] ; 3 uses
  %.02025.i976 = phi i64 [ %.pre-phi.i978, %bb.ye ], [ %.013.i.i23.i.lcssa, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i ] ; 4 uses
  %i.dxe = getelementptr inbounds nuw i8, ptr %i.dov, i64 %.02025.i976
  %i.dxf = load i8, ptr %i.dxe, align 1
  %i.dxg = zext i8 %i.dxf to i64                  ; 2 uses
  %i.dxh = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.dxg
  %i.dxi = load i8, ptr %i.dxh, align 1, !range !7, !noundef !8
  %i.dxj = trunc nuw i8 %i.dxi to i1
  br i1 %i.dxj, label %._crit_edge28.i982, label %bb.yd, !prof !11

._crit_edge28.i982:                               ; preds = %.lr.ph.i974
  %.pre.i983 = add i64 %.02025.i976, 1
  br label %bb.ye

bb.yd:                                            ; preds = %.lr.ph.i974
  %i.dxk = getelementptr inbounds nuw i8, ptr %i.dov, i64 %.026.i975
  %i.dxl = sub i64 %.02025.i976, %.026.i975       ; 2 uses
  %i.dxm = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.dxm, ptr noundef %i.dxk, i64 noundef %i.dxl)
  %i.dxn = load ptr, ptr %i.y, align 8
  %i.dxo = getelementptr inbounds nuw [2 x i8], ptr %i.dxn, i64 %i.dxl ; 2 uses
  store ptr %i.dxo, ptr %i.y, align 8
  %i.dxp = shl nuw nsw i64 %i.dxg, 3
  %i.dxq = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.dxp ; 2 uses
  %i.dxr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dxq) #26 ; 2 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.dxo, ptr noundef nonnull %i.dxq, i64 noundef %i.dxr)
  %i.dxs = load ptr, ptr %i.y, align 8
  %i.dxt = getelementptr inbounds nuw [2 x i8], ptr %i.dxs, i64 %i.dxr
  store ptr %i.dxt, ptr %i.y, align 8
  %i.dxu = add i64 %.02025.i976, 1                ; 2 uses
  br label %bb.ye

bb.ye:                                            ; preds = %bb.yd, %._crit_edge28.i982
  %.pre-phi.i978 = phi i64 [ %.pre.i983, %._crit_edge28.i982 ], [ %i.dxu, %bb.yd ] ; 2 uses
  %.1.i980 = phi i64 [ %.026.i975, %._crit_edge28.i982 ], [ %i.dxu, %bb.yd ] ; 2 uses
  %exitcond.not.i981 = icmp eq i64 %.pre-phi.i978, %i.dun
  br i1 %exitcond.not.i981, label %._crit_edge.i971, label %.lr.ph.i974, !llvm.loop !348

.lr.ph3254:                                       ; preds = %.lr.ph3254.preheader, %bb.yf
  %.013.i8.i16.i3253 = phi i64 [ %i.dyh, %bb.yf ], [ 0, %.lr.ph3254.preheader ] ; 3 uses
  %i.dxv = getelementptr inbounds nuw i8, ptr %i.dov, i64 %.013.i8.i16.i3253
  %i.dxw = load i32, ptr %i.dxv, align 4          ; 4 uses
  %i.dxx = add i32 %i.dxw, -538976288
  %i.dxy = xor i32 %i.dxw, 572662306
  %i.dxz = add i32 %i.dxy, -16843009
  %i.dya = xor i32 %i.dxw, 1549556828
  %i.dyb = add i32 %i.dya, -16843009
  %i.dyc = and i32 %i.dxw, -2139062144
  %i.dyd = xor i32 %i.dyc, -2139062144
  %i.dye = or i32 %i.dxz, %i.dxx
  %i.dyf = or i32 %i.dye, %i.dyb
  %i.dyg = and i32 %i.dyf, %i.dyd
  %.not2880 = icmp eq i32 %i.dyg, 0
  br i1 %.not2880, label %bb.yf, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i17.i

bb.yf:                                            ; preds = %.lr.ph3254
  %i.dyh = add nuw nsw i64 %.013.i8.i16.i3253, 4  ; 2 uses
  %i.dyi = or disjoint i64 %i.dyh, 3
  %i.dyj = icmp samesign ult i64 %i.dyi, %i.dun
  br i1 %i.dyj, label %.lr.ph3254, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i17.i, !llvm.loop !347

_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i17.i: ; preds = %bb.yf, %.lr.ph3254, %.preheader2940
  %.013.i8.i16.i.lcssa = phi i64 [ 0, %.preheader2940 ], [ %.013.i8.i16.i3253, %.lr.ph3254 ], [ %i.dva, %bb.yf ] ; 2 uses
  %i.dyk = icmp samesign ult i64 %.013.i8.i16.i.lcssa, %i.dun
  br i1 %i.dyk, label %.lr.ph.i988, label %._crit_edge.i985

._crit_edge.i985:                                 ; preds = %bb.yh, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i17.i
  %.0.lcssa.i987 = phi i64 [ 0, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i17.i ], [ %.1.i994, %bb.yh ] ; 2 uses
  %i.dyl = icmp ult i64 %.0.lcssa.i987, %i.dun
  %.pre3780 = load ptr, ptr %i.y, align 8         ; 2 uses
  br i1 %i.dyl, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i.sink.split, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i, !prof !11

.lr.ph.i988:                                      ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i17.i, %bb.yh
  %.026.i989 = phi i64 [ %.1.i994, %bb.yh ], [ 0, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i17.i ] ; 3 uses
  %.02025.i990 = phi i64 [ %.pre-phi.i992, %bb.yh ], [ %.013.i8.i16.i.lcssa, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i17.i ] ; 4 uses
  %i.dym = getelementptr inbounds nuw i8, ptr %i.dov, i64 %.02025.i990
  %i.dyn = load i8, ptr %i.dym, align 1
  %i.dyo = zext i8 %i.dyn to i64                  ; 2 uses
  %i.dyp = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.dyo
  %i.dyq = load i8, ptr %i.dyp, align 1, !range !7, !noundef !8
  %i.dyr = trunc nuw i8 %i.dyq to i1
  br i1 %i.dyr, label %._crit_edge28.i996, label %bb.yg, !prof !11

._crit_edge28.i996:                               ; preds = %.lr.ph.i988
  %.pre.i997 = add i64 %.02025.i990, 1
  br label %bb.yh

bb.yg:                                            ; preds = %.lr.ph.i988
  %i.dys = getelementptr inbounds nuw i8, ptr %i.dov, i64 %.026.i989
  %i.dyt = sub i64 %.02025.i990, %.026.i989       ; 2 uses
  %i.dyu = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.dyu, ptr noundef %i.dys, i64 noundef %i.dyt)
  %i.dyv = load ptr, ptr %i.y, align 8
  %i.dyw = getelementptr inbounds nuw [2 x i8], ptr %i.dyv, i64 %i.dyt ; 2 uses
  store ptr %i.dyw, ptr %i.y, align 8
  %i.dyx = shl nuw nsw i64 %i.dyo, 3
  %i.dyy = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.dyx ; 2 uses
  %i.dyz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dyy) #26 ; 2 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.dyw, ptr noundef nonnull %i.dyy, i64 noundef %i.dyz)
  %i.dza = load ptr, ptr %i.y, align 8
  %i.dzb = getelementptr inbounds nuw [2 x i8], ptr %i.dza, i64 %i.dyz
  store ptr %i.dzb, ptr %i.y, align 8
  %i.dzc = add i64 %.02025.i990, 1                ; 2 uses
  br label %bb.yh

bb.yh:                                            ; preds = %bb.yg, %._crit_edge28.i996
  %.pre-phi.i992 = phi i64 [ %.pre.i997, %._crit_edge28.i996 ], [ %i.dzc, %bb.yg ] ; 2 uses
  %.1.i994 = phi i64 [ %.026.i989, %._crit_edge28.i996 ], [ %i.dzc, %bb.yg ] ; 2 uses
  %exitcond.not.i995 = icmp eq i64 %.pre-phi.i992, %i.dun
  br i1 %exitcond.not.i995, label %._crit_edge.i985, label %.lr.ph.i988, !llvm.loop !348

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i.sink.split: ; preds = %._crit_edge.i985, %._crit_edge.i971
  %.0.lcssa.i973.sink4482 = phi i64 [ %.0.lcssa.i973, %._crit_edge.i971 ], [ %.0.lcssa.i987, %._crit_edge.i985 ] ; 2 uses
  %.pre3779.sink = phi ptr [ %.pre3779, %._crit_edge.i971 ], [ %.pre3780, %._crit_edge.i985 ]
  %i.dzd = getelementptr inbounds nuw i8, ptr %i.dov, i64 %.0.lcssa.i973.sink4482
  %i.dze = sub nuw nsw i64 %i.dun, %.0.lcssa.i973.sink4482 ; 2 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %.pre3779.sink, ptr noundef %i.dzd, i64 noundef %i.dze)
  %i.dzf = load ptr, ptr %i.y, align 8
  %i.dzg = getelementptr inbounds nuw [2 x i8], ptr %i.dzf, i64 %i.dze
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i: ; preds = %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i.sink.split, %._crit_edge.i971, %._crit_edge.i985
  %i.dzh = phi ptr [ %.pre3780, %._crit_edge.i985 ], [ %.pre3779, %._crit_edge.i971 ], [ %i.dzg, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i.sink.split ] ; 2 uses
  %i.dzi = getelementptr inbounds nuw i8, ptr %i.dzh, i64 2
  store ptr %i.dzi, ptr %i.y, align 8
  store i16 34, ptr %i.dzh, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i285.thread

bb.yi:                                            ; preds = %bb.wa, %bb.wa
  %i.dzj = getelementptr inbounds nuw i8, ptr %i.ddr, i64 16 ; 4 uses
  %i.dzk = getelementptr inbounds nuw i8, ptr %i.ddr, i64 12
  %i.dzl = load i32, ptr %i.dzk, align 4          ; 5 uses
  %i.dzm = zext i32 %i.dzl to i64                 ; 2 uses
  %i.dzn = shl nuw nsw i64 %i.dzm, 3
  %i.dzo = or disjoint i64 %i.dzn, 2              ; 2 uses
  %i.dzp = load ptr, ptr %i.x, align 8
  %i.dzq = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.dzr = ptrtoint ptr %i.dzp to i64
  %i.dzs = ptrtoint ptr %i.dzq to i64
  %i.dzt = sub i64 %i.dzr, %i.dzs
  %i.dzu = ashr exact i64 %i.dzt, 1
  %.not.i999 = icmp ugt i64 %i.dzo, %i.dzu
  br i1 %.not.i999, label %bb.yj, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1000, !prof !6

bb.yj:                                            ; preds = %bb.yi
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i64 noundef %i.dzo)
  %.pre3776 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1000

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1000: ; preds = %bb.yi, %bb.yj
  %i.dzv = phi ptr [ %i.dzq, %bb.yi ], [ %.pre3776, %bb.yj ] ; 2 uses
  %i.dzw = getelementptr inbounds nuw i8, ptr %i.dzv, i64 2
  store ptr %i.dzw, ptr %i.y, align 8
  store i16 34, ptr %i.dzv, align 2
  %.not3536 = icmp eq i32 %i.dzl, 0
  br i1 %.not3536, label %._crit_edge3251.thread, label %.lr.ph3250

._crit_edge3251.thread:                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1000
  %.pre37774242 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i298

._crit_edge3251:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1003.thread
  %i.dzx = icmp ugt i32 %i.dzl, %.2.i.i.i302
  %.pre3777 = load ptr, ptr %i.y, align 8         ; 18 uses
  br i1 %i.dzx, label %bb.aab, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i298

.lr.ph3250:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1000, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1003.thread
  %.055.i.i.i2973249 = phi i32 [ %.2.i.i.i302, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1003.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1000 ] ; 4 uses
  %.057.i.i.i2963248 = phi i32 [ %i.ecq, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1003.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1000 ] ; 9 uses
  %i.dzy = zext i32 %.057.i.i.i2963248 to i64
  %i.dzz = getelementptr inbounds nuw [2 x i8], ptr %i.dzj, i64 %i.dzy
  %i.eaa = load i16, ptr %i.dzz, align 2          ; 11 uses
  %i.eab = and i16 %i.eaa, -2
  %or.cond.i1001 = icmp eq i16 %i.eab, 32
  br i1 %or.cond.i1001, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1003.thread, label %bb.yk

bb.yk:                                            ; preds = %.lr.ph3250
  %i.eac = icmp ugt i16 %i.eaa, 34
  %i.ead = icmp ne i16 %i.eaa, 92
  %or.cond5.i1002 = and i1 %i.eac, %i.ead
  %i.eae = add i16 %i.eaa, 8192
  %i.eaf = icmp ult i16 %i.eae, -2048
  %or.cond2847 = and i1 %or.cond5.i1002, %i.eaf
  br i1 %or.cond2847, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1003.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1003.thread2769, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1003.thread2769: ; preds = %bb.yk
  %15 = icmp slt i16 %i.eaa, -8192
  %i.eag = zext i32 %.055.i.i.i2973249 to i64
  %i.eah = getelementptr inbounds nuw [2 x i8], ptr %i.dzj, i64 %i.eag ; 34 uses
  %i.eai = sub i32 %.057.i.i.i2963248, %.055.i.i.i2973249 ; 3 uses
  %i.eaj = zext i32 %i.eai to i64                 ; 4 uses
  %i.eak = load ptr, ptr %i.y, align 8            ; 34 uses
  br i1 %15, label %bb.yl, label %bb.zj

bb.yl:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1003.thread2769
  switch i32 %i.eai, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1004 [
    i32 1, label %bb.ym
    i32 2, label %bb.yn
    i32 3, label %bb.yo
    i32 4, label %bb.yp
    i32 5, label %bb.yq
    i32 6, label %bb.yr
    i32 7, label %bb.ys
    i32 8, label %bb.yt
    i32 9, label %bb.yu
    i32 10, label %bb.yv
    i32 11, label %bb.yw
    i32 12, label %bb.yx
    i32 13, label %bb.yy
    i32 14, label %bb.yz
    i32 15, label %bb.za
    i32 16, label %bb.zb
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1006
  ]

bb.ym:                                            ; preds = %bb.yl
  %i.eal = load i16, ptr %i.eah, align 2
  store i16 %i.eal, ptr %i.eak, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1006

bb.yn:                                            ; preds = %bb.yl
  %i.eam = load i32, ptr %i.eah, align 2
  store i32 %i.eam, ptr %i.eak, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1006

bb.yo:                                            ; preds = %bb.yl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.eak, ptr noundef nonnull align 2 dereferenceable(6) %i.eah, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1006

bb.yp:                                            ; preds = %bb.yl
  %i.ean = load i64, ptr %i.eah, align 2
  store i64 %i.ean, ptr %i.eak, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1006

bb.yq:                                            ; preds = %bb.yl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.eak, ptr noundef nonnull align 2 dereferenceable(10) %i.eah, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1006

bb.yr:                                            ; preds = %bb.yl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.eak, ptr noundef nonnull align 2 dereferenceable(12) %i.eah, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1006

bb.ys:                                            ; preds = %bb.yl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.eak, ptr noundef nonnull align 2 dereferenceable(14) %i.eah, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1006

bb.yt:                                            ; preds = %bb.yl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.eak, ptr noundef nonnull align 2 dereferenceable(16) %i.eah, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1006

bb.yu:                                            ; preds = %bb.yl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.eak, ptr noundef nonnull align 2 dereferenceable(18) %i.eah, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1006

bb.yv:                                            ; preds = %bb.yl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.eak, ptr noundef nonnull align 2 dereferenceable(20) %i.eah, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1006

bb.yw:                                            ; preds = %bb.yl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.eak, ptr noundef nonnull align 2 dereferenceable(22) %i.eah, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1006

bb.yx:                                            ; preds = %bb.yl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.eak, ptr noundef nonnull align 2 dereferenceable(24) %i.eah, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1006

bb.yy:                                            ; preds = %bb.yl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.eak, ptr noundef nonnull align 2 dereferenceable(26) %i.eah, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1006

bb.yz:                                            ; preds = %bb.yl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %i.eak, ptr noundef nonnull align 2 dereferenceable(28) %i.eah, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1006

bb.za:                                            ; preds = %bb.yl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.eak, ptr noundef nonnull align 2 dereferenceable(30) %i.eah, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1006

bb.zb:                                            ; preds = %bb.yl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.eak, ptr noundef nonnull align 2 dereferenceable(32) %i.eah, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1006

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1004: ; preds = %bb.yl
  %.idx.i.i.i.i1005 = shl nuw nsw i64 %i.eaj, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.eak, ptr nonnull align 2 %i.eah, i64 %.idx.i.i.i.i1005, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1006

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1006: ; preds = %bb.yl, %bb.ym, %bb.yn, %bb.yo, %bb.yp, %bb.yq, %bb.yr, %bb.ys, %bb.yt, %bb.yu, %bb.yv, %bb.yw, %bb.yx, %bb.yy, %bb.yz, %bb.za, %bb.zb, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1004
  %i.eao = load ptr, ptr %i.y, align 8
  %i.eap = getelementptr inbounds nuw [2 x i8], ptr %i.eao, i64 %i.eaj ; 9 uses
  store ptr %i.eap, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #21
  %i.eaq = icmp samesign ult i16 %i.eaa, -9216
  br i1 %i.eaq, label %bb.zc, label %bb.zh

bb.zc:                                            ; preds = %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1006
  %i.ear = add nuw i32 %.057.i.i.i2963248, 1      ; 3 uses
  %i.eas = icmp ugt i32 %i.dzl, %i.ear
  br i1 %i.eas, label %bb.zd, label %bb.zg

bb.zd:                                            ; preds = %bb.zc
  %i.eat = zext i32 %i.ear to i64
  %i.eau = getelementptr inbounds nuw [2 x i8], ptr %i.dzj, i64 %i.eat
  %i.eav = load i16, ptr %i.eau, align 2          ; 2 uses
  %i.eaw = and i16 %i.eav, -1024
  %i.eax = icmp eq i16 %i.eaw, -9216
  br i1 %i.eax, label %bb.ze, label %bb.zf

bb.ze:                                            ; preds = %bb.zd
  %i.eay = getelementptr inbounds nuw i8, ptr %i.eap, i64 2
  store ptr %i.eay, ptr %i.y, align 8
  store i16 %i.eaa, ptr %i.eap, align 2
  %i.eaz = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.eba = getelementptr inbounds nuw i8, ptr %i.eaz, i64 2
  store ptr %i.eba, ptr %i.y, align 8
  store i16 %i.eav, ptr %i.eaz, align 2
  br label %bb.zi

bb.zf:                                            ; preds = %bb.zd
  store i16 92, ptr %i.eap, align 2
  %i.ebb = getelementptr inbounds nuw i8, ptr %i.eap, i64 2
  store i16 117, ptr %i.ebb, align 2
  %i.ebc = load ptr, ptr %i.y, align 8
  %i.ebd = getelementptr inbounds nuw i8, ptr %i.ebc, i64 4
  store ptr %i.ebd, ptr %i.y, align 8
  %i.ebe = uitofp i16 %i.eaa to double
  %i.ebf = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ebe, i32 noundef 16, ptr nonnull %i.i, i64 2200) #21 ; 2 uses
  %i.ebg = extractvalue { i64, ptr } %i.ebf, 0    ; 2 uses
  %i.ebh = extractvalue { i64, ptr } %i.ebf, 1
  %i.ebi = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ebi, ptr noundef %i.ebh, i64 noundef %i.ebg)
  %i.ebj = load ptr, ptr %i.y, align 8
  %i.ebk = getelementptr inbounds nuw [2 x i8], ptr %i.ebj, i64 %i.ebg
  store ptr %i.ebk, ptr %i.y, align 8
  br label %bb.zi

bb.zg:                                            ; preds = %bb.zc
  store i16 92, ptr %i.eap, align 2
  %i.ebl = getelementptr inbounds nuw i8, ptr %i.eap, i64 2
  store i16 117, ptr %i.ebl, align 2
  %i.ebm = load ptr, ptr %i.y, align 8
  %i.ebn = getelementptr inbounds nuw i8, ptr %i.ebm, i64 4
  store ptr %i.ebn, ptr %i.y, align 8
  %i.ebo = uitofp i16 %i.eaa to double
  %i.ebp = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ebo, i32 noundef 16, ptr nonnull %i.i, i64 2200) #21 ; 2 uses
  %i.ebq = extractvalue { i64, ptr } %i.ebp, 0    ; 2 uses
  %i.ebr = extractvalue { i64, ptr } %i.ebp, 1
  %i.ebs = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ebs, ptr noundef %i.ebr, i64 noundef %i.ebq)
  %i.ebt = load ptr, ptr %i.y, align 8
  %i.ebu = getelementptr inbounds nuw [2 x i8], ptr %i.ebt, i64 %i.ebq
  store ptr %i.ebu, ptr %i.y, align 8
  br label %bb.zi

bb.zh:                                            ; preds = %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1006
  store i16 92, ptr %i.eap, align 2
  %i.ebv = getelementptr inbounds nuw i8, ptr %i.eap, i64 2
  store i16 117, ptr %i.ebv, align 2
  %i.ebw = load ptr, ptr %i.y, align 8
  %i.ebx = getelementptr inbounds nuw i8, ptr %i.ebw, i64 4
  store ptr %i.ebx, ptr %i.y, align 8
  %i.eby = uitofp i16 %i.eaa to double
  %i.ebz = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.eby, i32 noundef 16, ptr nonnull %i.i, i64 2200) #21 ; 2 uses
  %i.eca = extractvalue { i64, ptr } %i.ebz, 0    ; 2 uses
  %i.ecb = extractvalue { i64, ptr } %i.ebz, 1
  %i.ecc = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ecc, ptr noundef %i.ecb, i64 noundef %i.eca)
  %i.ecd = load ptr, ptr %i.y, align 8
  %i.ece = getelementptr inbounds nuw [2 x i8], ptr %i.ecd, i64 %i.eca
  store ptr %i.ece, ptr %i.y, align 8
  br label %bb.zi

bb.zi:                                            ; preds = %bb.zh, %bb.zg, %bb.zf, %bb.ze
  %.259.i.i.i303 = phi i32 [ %.057.i.i.i2963248, %bb.zh ], [ %.057.i.i.i2963248, %bb.zg ], [ %i.ear, %bb.ze ], [ %.057.i.i.i2963248, %bb.zf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #21
  br label %bb.aaa

bb.zj:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1003.thread2769
  switch i32 %i.eai, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1009 [
    i32 1, label %bb.zk
    i32 2, label %bb.zl
    i32 3, label %bb.zm
    i32 4, label %bb.zn
    i32 5, label %bb.zo
    i32 6, label %bb.zp
    i32 7, label %bb.zq
    i32 8, label %bb.zr
    i32 9, label %bb.zs
    i32 10, label %bb.zt
    i32 11, label %bb.zu
    i32 12, label %bb.zv
    i32 13, label %bb.zw
    i32 14, label %bb.zx
end_hunk_6
begin_hunk_7_@_ZN2v88internal19FastJsonStringifierItE15SerializeObjectENS0_18ContinuationRecordERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS5_2EEEE:bb.a

bb.aab:                                           ; preds = %._crit_edge3251
  %i.ecs = zext i32 %.2.i.i.i302 to i64           ; 2 uses
  %i.ect = getelementptr inbounds nuw [2 x i8], ptr %i.dzj, i64 %i.ecs ; 17 uses
  %i.ecu = sub nuw nsw i64 %i.dzm, %i.ecs         ; 3 uses
  %trunc2879 = trunc nuw i64 %i.ecu to i32
  switch i32 %trunc2879, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1012 [
    i32 1, label %bb.aac
    i32 2, label %bb.aad
    i32 3, label %bb.aae
    i32 4, label %bb.aaf
    i32 5, label %bb.aag
    i32 6, label %bb.aah
    i32 7, label %bb.aai
    i32 8, label %bb.aaj
    i32 9, label %bb.aak
    i32 10, label %bb.aal
    i32 11, label %bb.aam
    i32 12, label %bb.aan
    i32 13, label %bb.aao
    i32 14, label %bb.aap
    i32 15, label %bb.aaq
    i32 16, label %bb.aar
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1014
  ]

bb.aac:                                           ; preds = %bb.aab
  %i.ecv = load i16, ptr %i.ect, align 2
  store i16 %i.ecv, ptr %.pre3777, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1014

bb.aad:                                           ; preds = %bb.aab
  %i.ecw = load i32, ptr %i.ect, align 2
  store i32 %i.ecw, ptr %.pre3777, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1014

bb.aae:                                           ; preds = %bb.aab
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre3777, ptr noundef nonnull align 2 dereferenceable(6) %i.ect, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1014

bb.aaf:                                           ; preds = %bb.aab
  %i.ecx = load i64, ptr %i.ect, align 2
  store i64 %i.ecx, ptr %.pre3777, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1014

bb.aag:                                           ; preds = %bb.aab
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre3777, ptr noundef nonnull align 2 dereferenceable(10) %i.ect, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1014

bb.aah:                                           ; preds = %bb.aab
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre3777, ptr noundef nonnull align 2 dereferenceable(12) %i.ect, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1014

bb.aai:                                           ; preds = %bb.aab
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre3777, ptr noundef nonnull align 2 dereferenceable(14) %i.ect, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1014

bb.aaj:                                           ; preds = %bb.aab
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre3777, ptr noundef nonnull align 2 dereferenceable(16) %i.ect, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1014

bb.aak:                                           ; preds = %bb.aab
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre3777, ptr noundef nonnull align 2 dereferenceable(18) %i.ect, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1014

bb.aal:                                           ; preds = %bb.aab
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre3777, ptr noundef nonnull align 2 dereferenceable(20) %i.ect, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1014

bb.aam:                                           ; preds = %bb.aab
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre3777, ptr noundef nonnull align 2 dereferenceable(22) %i.ect, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1014

bb.aan:                                           ; preds = %bb.aab
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre3777, ptr noundef nonnull align 2 dereferenceable(24) %i.ect, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1014

bb.aao:                                           ; preds = %bb.aab
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre3777, ptr noundef nonnull align 2 dereferenceable(26) %i.ect, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1014

bb.aap:                                           ; preds = %bb.aab
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre3777, ptr noundef nonnull align 2 dereferenceable(28) %i.ect, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1014

bb.aaq:                                           ; preds = %bb.aab
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre3777, ptr noundef nonnull align 2 dereferenceable(30) %i.ect, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1014

bb.aar:                                           ; preds = %bb.aab
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre3777, ptr noundef nonnull align 2 dereferenceable(32) %i.ect, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1014

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1012: ; preds = %bb.aab
  %.idx.i.i.i.i1013 = shl nuw nsw i64 %i.ecu, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre3777, ptr nonnull align 2 %i.ect, i64 %.idx.i.i.i.i1013, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1014

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1014: ; preds = %bb.aab, %bb.aac, %bb.aad, %bb.aae, %bb.aaf, %bb.aag, %bb.aah, %bb.aai, %bb.aaj, %bb.aak, %bb.aal, %bb.aam, %bb.aan, %bb.aao, %bb.aap, %bb.aaq, %bb.aar, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1012
  %i.ecy = load ptr, ptr %i.y, align 8
  %i.ecz = getelementptr inbounds nuw [2 x i8], ptr %i.ecy, i64 %i.ecu
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i298

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i298: ; preds = %._crit_edge3251.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1014, %._crit_edge3251
  %i.eda = phi ptr [ %i.ecz, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1014 ], [ %.pre3777, %._crit_edge3251 ], [ %.pre37774242, %._crit_edge3251.thread ] ; 2 uses
  %i.edb = getelementptr inbounds nuw i8, ptr %i.eda, i64 2
  store ptr %i.edb, ptr %i.y, align 8
  store i16 34, ptr %i.eda, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i285.thread

bb.aas:                                           ; preds = %bb.wa, %bb.wa, %bb.wa, %bb.wa
  %i.edc = getelementptr inbounds nuw i8, ptr %i.ddr, i64 16
  %i.edd = load i64, ptr %i.edc, align 8
  %i.ede = inttoptr i64 %i.edd to ptr             ; 6 uses
  %i.edf = load atomic volatile i64, ptr %i.ddr monotonic, align 8
  %i.edg = add i64 %i.edf, 11
  %i.edh = inttoptr i64 %i.edg to ptr
  %i.edi = load atomic volatile i16, ptr %i.edh monotonic, align 2
  %i.edj = and i16 %i.edi, 16
  %.not.i1015 = icmp eq i16 %i.edj, 0
  br i1 %.not.i1015, label %bb.aav, label %bb.aat

bb.aat:                                           ; preds = %bb.aas
  %i.edk = load ptr, ptr %i.ede, align 8
  %i.edl = getelementptr inbounds nuw i8, ptr %i.edk, i64 16
  %i.edm = load ptr, ptr %i.edl, align 8
  %i.edn = call noundef zeroext i1 %i.edm(ptr noundef nonnull align 8 dereferenceable(8) %i.ede) #21, !inline_history !80
  br i1 %i.edn, label %bb.aau, label %bb.aav

bb.aau:                                           ; preds = %bb.aat
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ede) #21
  %i.edo = getelementptr inbounds nuw i8, ptr %i.ede, i64 8
  %i.edp = load ptr, ptr %i.edo, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1017

bb.aav:                                           ; preds = %bb.aat, %bb.aas
  %i.edq = load ptr, ptr %i.ede, align 8
  %i.edr = getelementptr inbounds nuw i8, ptr %i.edq, i64 72
  %i.eds = load ptr, ptr %i.edr, align 8
  %i.edt = call noundef ptr %i.eds(ptr noundef nonnull align 8 dereferenceable(16) %i.ede) #21, !inline_history !80
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1017

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1017: ; preds = %bb.aau, %bb.aav
  %.0.i1016 = phi ptr [ %i.edp, %bb.aau ], [ %i.edt, %bb.aav ] ; 4 uses
  %i.edu = getelementptr inbounds nuw i8, ptr %i.ddr, i64 12
  %i.edv = load i32, ptr %i.edu, align 4          ; 5 uses
  %i.edw = zext i32 %i.edv to i64                 ; 2 uses
  %i.edx = shl nuw nsw i64 %i.edw, 3
  %i.edy = or disjoint i64 %i.edx, 2              ; 2 uses
  %i.edz = load ptr, ptr %i.x, align 8
  %i.eea = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.eeb = ptrtoint ptr %i.edz to i64
  %i.eec = ptrtoint ptr %i.eea to i64
  %i.eed = sub i64 %i.eeb, %i.eec
  %i.eee = ashr exact i64 %i.eed, 1
  %.not.i1018 = icmp ugt i64 %i.edy, %i.eee
  br i1 %.not.i1018, label %bb.aaw, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1019, !prof !6

bb.aaw:                                           ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1017
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i64 noundef %i.edy)
  %.pre3774 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1019

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1019: ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1017, %bb.aaw
  %i.eef = phi ptr [ %i.eea, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1017 ], [ %.pre3774, %bb.aaw ] ; 2 uses
  %i.eeg = getelementptr inbounds nuw i8, ptr %i.eef, i64 2
  store ptr %i.eeg, ptr %i.y, align 8
  store i16 34, ptr %i.eef, align 2
  %.not3535 = icmp eq i32 %i.edv, 0
  br i1 %.not3535, label %._crit_edge3246.thread, label %.lr.ph3245

._crit_edge3246.thread:                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1019
  %.pre37754244 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i294

._crit_edge3246:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1022.thread
  %i.eeh = icmp ugt i32 %i.edv, %.2.i.i69.i
  %.pre3775 = load ptr, ptr %i.y, align 8         ; 18 uses
  br i1 %i.eeh, label %bb.aco, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i294

.lr.ph3245:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1019, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1022.thread
  %.055.i.i64.i3244 = phi i32 [ %.2.i.i69.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1022.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1019 ] ; 4 uses
  %.057.i.i63.i3243 = phi i32 [ %i.eha, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1022.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1019 ] ; 9 uses
  %i.eei = zext i32 %.057.i.i63.i3243 to i64
  %i.eej = getelementptr inbounds nuw [2 x i8], ptr %.0.i1016, i64 %i.eei
  %i.eek = load i16, ptr %i.eej, align 2          ; 11 uses
  %i.eel = and i16 %i.eek, -2
  %or.cond.i1020 = icmp eq i16 %i.eel, 32
  br i1 %or.cond.i1020, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1022.thread, label %bb.aax

bb.aax:                                           ; preds = %.lr.ph3245
  %i.eem = icmp ugt i16 %i.eek, 34
  %i.een = icmp ne i16 %i.eek, 92
  %or.cond5.i1021 = and i1 %i.eem, %i.een
  %i.eeo = add i16 %i.eek, 8192
  %i.eep = icmp ult i16 %i.eeo, -2048
  %or.cond2849 = and i1 %or.cond5.i1021, %i.eep
  br i1 %or.cond2849, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1022.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1022.thread2770, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1022.thread2770: ; preds = %bb.aax
  %16 = icmp slt i16 %i.eek, -8192
  %i.eeq = zext i32 %.055.i.i64.i3244 to i64
  %i.eer = getelementptr inbounds nuw [2 x i8], ptr %.0.i1016, i64 %i.eeq ; 34 uses
  %i.ees = sub i32 %.057.i.i63.i3243, %.055.i.i64.i3244 ; 3 uses
  %i.eet = zext i32 %i.ees to i64                 ; 4 uses
  %i.eeu = load ptr, ptr %i.y, align 8            ; 34 uses
  br i1 %16, label %bb.aay, label %bb.abw

bb.aay:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1022.thread2770
  switch i32 %i.ees, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1023 [
    i32 1, label %bb.aaz
    i32 2, label %bb.aba
    i32 3, label %bb.abb
    i32 4, label %bb.abc
    i32 5, label %bb.abd
    i32 6, label %bb.abe
    i32 7, label %bb.abf
    i32 8, label %bb.abg
    i32 9, label %bb.abh
    i32 10, label %bb.abi
    i32 11, label %bb.abj
    i32 12, label %bb.abk
    i32 13, label %bb.abl
    i32 14, label %bb.abm
    i32 15, label %bb.abn
    i32 16, label %bb.abo
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1025
  ]

bb.aaz:                                           ; preds = %bb.aay
  %i.eev = load i16, ptr %i.eer, align 2
  store i16 %i.eev, ptr %i.eeu, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1025

bb.aba:                                           ; preds = %bb.aay
  %i.eew = load i32, ptr %i.eer, align 2
  store i32 %i.eew, ptr %i.eeu, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1025

bb.abb:                                           ; preds = %bb.aay
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.eeu, ptr noundef nonnull align 2 dereferenceable(6) %i.eer, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1025

bb.abc:                                           ; preds = %bb.aay
  %i.eex = load i64, ptr %i.eer, align 2
  store i64 %i.eex, ptr %i.eeu, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1025

bb.abd:                                           ; preds = %bb.aay
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.eeu, ptr noundef nonnull align 2 dereferenceable(10) %i.eer, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1025

bb.abe:                                           ; preds = %bb.aay
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.eeu, ptr noundef nonnull align 2 dereferenceable(12) %i.eer, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1025

bb.abf:                                           ; preds = %bb.aay
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.eeu, ptr noundef nonnull align 2 dereferenceable(14) %i.eer, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1025

bb.abg:                                           ; preds = %bb.aay
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.eeu, ptr noundef nonnull align 2 dereferenceable(16) %i.eer, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1025

bb.abh:                                           ; preds = %bb.aay
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.eeu, ptr noundef nonnull align 2 dereferenceable(18) %i.eer, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1025

bb.abi:                                           ; preds = %bb.aay
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.eeu, ptr noundef nonnull align 2 dereferenceable(20) %i.eer, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1025

bb.abj:                                           ; preds = %bb.aay
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.eeu, ptr noundef nonnull align 2 dereferenceable(22) %i.eer, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1025

bb.abk:                                           ; preds = %bb.aay
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.eeu, ptr noundef nonnull align 2 dereferenceable(24) %i.eer, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1025

bb.abl:                                           ; preds = %bb.aay
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.eeu, ptr noundef nonnull align 2 dereferenceable(26) %i.eer, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1025

bb.abm:                                           ; preds = %bb.aay
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %i.eeu, ptr noundef nonnull align 2 dereferenceable(28) %i.eer, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1025

bb.abn:                                           ; preds = %bb.aay
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.eeu, ptr noundef nonnull align 2 dereferenceable(30) %i.eer, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1025

bb.abo:                                           ; preds = %bb.aay
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.eeu, ptr noundef nonnull align 2 dereferenceable(32) %i.eer, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1025

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1023: ; preds = %bb.aay
  %.idx.i.i.i.i1024 = shl nuw nsw i64 %i.eet, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.eeu, ptr nonnull align 2 %i.eer, i64 %.idx.i.i.i.i1024, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1025

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1025: ; preds = %bb.aay, %bb.aaz, %bb.aba, %bb.abb, %bb.abc, %bb.abd, %bb.abe, %bb.abf, %bb.abg, %bb.abh, %bb.abi, %bb.abj, %bb.abk, %bb.abl, %bb.abm, %bb.abn, %bb.abo, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1023
  %i.eey = load ptr, ptr %i.y, align 8
  %i.eez = getelementptr inbounds nuw [2 x i8], ptr %i.eey, i64 %i.eet ; 9 uses
  store ptr %i.eez, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  %i.efa = icmp samesign ult i16 %i.eek, -9216
  br i1 %i.efa, label %bb.abp, label %bb.abu

bb.abp:                                           ; preds = %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1025
  %i.efb = add nuw i32 %.057.i.i63.i3243, 1       ; 3 uses
  %i.efc = icmp ugt i32 %i.edv, %i.efb
  br i1 %i.efc, label %bb.abq, label %bb.abt

bb.abq:                                           ; preds = %bb.abp
  %i.efd = zext i32 %i.efb to i64
  %i.efe = getelementptr inbounds nuw [2 x i8], ptr %.0.i1016, i64 %i.efd
  %i.eff = load i16, ptr %i.efe, align 2          ; 2 uses
  %i.efg = and i16 %i.eff, -1024
  %i.efh = icmp eq i16 %i.efg, -9216
  br i1 %i.efh, label %bb.abr, label %bb.abs

bb.abr:                                           ; preds = %bb.abq
  %i.efi = getelementptr inbounds nuw i8, ptr %i.eez, i64 2
  store ptr %i.efi, ptr %i.y, align 8
  store i16 %i.eek, ptr %i.eez, align 2
  %i.efj = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.efk = getelementptr inbounds nuw i8, ptr %i.efj, i64 2
  store ptr %i.efk, ptr %i.y, align 8
  store i16 %i.eff, ptr %i.efj, align 2
  br label %bb.abv

bb.abs:                                           ; preds = %bb.abq
  store i16 92, ptr %i.eez, align 2
  %i.efl = getelementptr inbounds nuw i8, ptr %i.eez, i64 2
  store i16 117, ptr %i.efl, align 2
  %i.efm = load ptr, ptr %i.y, align 8
  %i.efn = getelementptr inbounds nuw i8, ptr %i.efm, i64 4
  store ptr %i.efn, ptr %i.y, align 8
  %i.efo = uitofp i16 %i.eek to double
  %i.efp = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.efo, i32 noundef 16, ptr nonnull %i.g, i64 2200) #21 ; 2 uses
  %i.efq = extractvalue { i64, ptr } %i.efp, 0    ; 2 uses
  %i.efr = extractvalue { i64, ptr } %i.efp, 1
  %i.efs = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.efs, ptr noundef %i.efr, i64 noundef %i.efq)
  %i.eft = load ptr, ptr %i.y, align 8
  %i.efu = getelementptr inbounds nuw [2 x i8], ptr %i.eft, i64 %i.efq
  store ptr %i.efu, ptr %i.y, align 8
  br label %bb.abv

bb.abt:                                           ; preds = %bb.abp
  store i16 92, ptr %i.eez, align 2
  %i.efv = getelementptr inbounds nuw i8, ptr %i.eez, i64 2
  store i16 117, ptr %i.efv, align 2
  %i.efw = load ptr, ptr %i.y, align 8
  %i.efx = getelementptr inbounds nuw i8, ptr %i.efw, i64 4
  store ptr %i.efx, ptr %i.y, align 8
  %i.efy = uitofp i16 %i.eek to double
  %i.efz = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.efy, i32 noundef 16, ptr nonnull %i.g, i64 2200) #21 ; 2 uses
  %i.ega = extractvalue { i64, ptr } %i.efz, 0    ; 2 uses
  %i.egb = extractvalue { i64, ptr } %i.efz, 1
  %i.egc = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.egc, ptr noundef %i.egb, i64 noundef %i.ega)
  %i.egd = load ptr, ptr %i.y, align 8
  %i.ege = getelementptr inbounds nuw [2 x i8], ptr %i.egd, i64 %i.ega
  store ptr %i.ege, ptr %i.y, align 8
  br label %bb.abv

bb.abu:                                           ; preds = %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1025
  store i16 92, ptr %i.eez, align 2
  %i.egf = getelementptr inbounds nuw i8, ptr %i.eez, i64 2
  store i16 117, ptr %i.egf, align 2
  %i.egg = load ptr, ptr %i.y, align 8
  %i.egh = getelementptr inbounds nuw i8, ptr %i.egg, i64 4
  store ptr %i.egh, ptr %i.y, align 8
  %i.egi = uitofp i16 %i.eek to double
  %i.egj = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.egi, i32 noundef 16, ptr nonnull %i.g, i64 2200) #21 ; 2 uses
  %i.egk = extractvalue { i64, ptr } %i.egj, 0    ; 2 uses
  %i.egl = extractvalue { i64, ptr } %i.egj, 1
  %i.egm = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.egm, ptr noundef %i.egl, i64 noundef %i.egk)
  %i.egn = load ptr, ptr %i.y, align 8
  %i.ego = getelementptr inbounds nuw [2 x i8], ptr %i.egn, i64 %i.egk
  store ptr %i.ego, ptr %i.y, align 8
  br label %bb.abv

bb.abv:                                           ; preds = %bb.abu, %bb.abt, %bb.abs, %bb.abr
  %.259.i.i71.i = phi i32 [ %.057.i.i63.i3243, %bb.abu ], [ %.057.i.i63.i3243, %bb.abt ], [ %i.efb, %bb.abr ], [ %.057.i.i63.i3243, %bb.abs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  br label %bb.acn

bb.abw:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1022.thread2770
  switch i32 %i.ees, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1028 [
    i32 1, label %bb.abx
    i32 2, label %bb.aby
    i32 3, label %bb.abz
    i32 4, label %bb.aca
    i32 5, label %bb.acb
    i32 6, label %bb.acc
    i32 7, label %bb.acd
    i32 8, label %bb.ace
    i32 9, label %bb.acf
    i32 10, label %bb.acg
    i32 11, label %bb.ach
    i32 12, label %bb.aci
    i32 13, label %bb.acj
    i32 14, label %bb.ack
end_hunk_7
begin_hunk_8_@_ZN2v88internal19FastJsonStringifierItE15SerializeObjectENS0_18ContinuationRecordERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS5_2EEEE:bb.a
    i32 7, label %bb.acv
    i32 8, label %bb.acw
    i32 9, label %bb.acx
    i32 10, label %bb.acy
    i32 11, label %bb.acz
    i32 12, label %bb.ada
    i32 13, label %bb.adb
    i32 14, label %bb.adc
    i32 15, label %bb.add
    i32 16, label %bb.ade
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1033
  ]

bb.acp:                                           ; preds = %bb.aco
  %i.ehf = load i16, ptr %i.ehd, align 2
  store i16 %i.ehf, ptr %.pre3775, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1033

bb.acq:                                           ; preds = %bb.aco
  %i.ehg = load i32, ptr %i.ehd, align 2
  store i32 %i.ehg, ptr %.pre3775, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1033

bb.acr:                                           ; preds = %bb.aco
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre3775, ptr noundef nonnull align 2 dereferenceable(6) %i.ehd, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1033

bb.acs:                                           ; preds = %bb.aco
  %i.ehh = load i64, ptr %i.ehd, align 2
  store i64 %i.ehh, ptr %.pre3775, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1033

bb.act:                                           ; preds = %bb.aco
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre3775, ptr noundef nonnull align 2 dereferenceable(10) %i.ehd, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1033

bb.acu:                                           ; preds = %bb.aco
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre3775, ptr noundef nonnull align 2 dereferenceable(12) %i.ehd, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1033

bb.acv:                                           ; preds = %bb.aco
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre3775, ptr noundef nonnull align 2 dereferenceable(14) %i.ehd, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1033

bb.acw:                                           ; preds = %bb.aco
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre3775, ptr noundef nonnull align 2 dereferenceable(16) %i.ehd, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1033

bb.acx:                                           ; preds = %bb.aco
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre3775, ptr noundef nonnull align 2 dereferenceable(18) %i.ehd, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1033

bb.acy:                                           ; preds = %bb.aco
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre3775, ptr noundef nonnull align 2 dereferenceable(20) %i.ehd, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1033

bb.acz:                                           ; preds = %bb.aco
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre3775, ptr noundef nonnull align 2 dereferenceable(22) %i.ehd, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1033

bb.ada:                                           ; preds = %bb.aco
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre3775, ptr noundef nonnull align 2 dereferenceable(24) %i.ehd, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1033

bb.adb:                                           ; preds = %bb.aco
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre3775, ptr noundef nonnull align 2 dereferenceable(26) %i.ehd, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1033

bb.adc:                                           ; preds = %bb.aco
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre3775, ptr noundef nonnull align 2 dereferenceable(28) %i.ehd, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1033

bb.add:                                           ; preds = %bb.aco
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre3775, ptr noundef nonnull align 2 dereferenceable(30) %i.ehd, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1033

bb.ade:                                           ; preds = %bb.aco
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre3775, ptr noundef nonnull align 2 dereferenceable(32) %i.ehd, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1033

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1031: ; preds = %bb.aco
  %.idx.i.i.i.i1032 = shl nuw nsw i64 %i.ehe, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre3775, ptr nonnull align 2 %i.ehd, i64 %.idx.i.i.i.i1032, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1033

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1033: ; preds = %bb.aco, %bb.acp, %bb.acq, %bb.acr, %bb.acs, %bb.act, %bb.acu, %bb.acv, %bb.acw, %bb.acx, %bb.acy, %bb.acz, %bb.ada, %bb.adb, %bb.adc, %bb.add, %bb.ade, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1031
  %i.ehi = load ptr, ptr %i.y, align 8
  %i.ehj = getelementptr inbounds nuw [2 x i8], ptr %i.ehi, i64 %i.ehe
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i294

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i294: ; preds = %._crit_edge3246.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1033, %._crit_edge3246
  %i.ehk = phi ptr [ %i.ehj, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1033 ], [ %.pre3775, %._crit_edge3246 ], [ %.pre37754244, %._crit_edge3246.thread ] ; 2 uses
  %i.ehl = getelementptr inbounds nuw i8, ptr %i.ehk, i64 2
  store ptr %i.ehl, ptr %i.y, align 8
  store i16 34, ptr %i.ehk, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i285.thread

bb.adf:                                           ; preds = %bb.wa
  %i.ehm = getelementptr inbounds nuw i8, ptr %i.ddr, i64 16
  %i.ehn = load i64, ptr %i.ehm, align 8
  %i.eho = add i64 %i.ehn, -1
  %i.ehp = inttoptr i64 %i.eho to ptr             ; 5 uses
  %i.ehq = load atomic volatile i64, ptr %i.ehp monotonic, align 8
  %i.ehr = add i64 %i.ehq, 11
  %i.ehs = inttoptr i64 %i.ehr to ptr
  %i.eht = load atomic volatile i16, ptr %i.ehs monotonic, align 2
  %i.ehu = and i16 %i.eht, -121
  %i.ehv = icmp eq i16 %i.ehu, 2
  %i.ehw = getelementptr inbounds nuw i8, ptr %i.ehp, i64 16 ; 5 uses
  br i1 %i.ehv, label %bb.adg, label %bb.aen

bb.adg:                                           ; preds = %bb.adf
  %i.ehx = load i64, ptr %i.ehw, align 8
  %i.ehy = inttoptr i64 %i.ehx to ptr             ; 6 uses
  %i.ehz = load atomic volatile i64, ptr %i.ehp monotonic, align 8
  %i.eia = add i64 %i.ehz, 11
  %i.eib = inttoptr i64 %i.eia to ptr
  %i.eic = load atomic volatile i16, ptr %i.eib monotonic, align 2
  %i.eid = and i16 %i.eic, 16
  %.not.i1035 = icmp eq i16 %i.eid, 0
  br i1 %.not.i1035, label %bb.adj, label %bb.adh

bb.adh:                                           ; preds = %bb.adg
  %i.eie = load ptr, ptr %i.ehy, align 8
  %i.eif = getelementptr inbounds nuw i8, ptr %i.eie, i64 16
  %i.eig = load ptr, ptr %i.eif, align 8
  %i.eih = call noundef zeroext i1 %i.eig(ptr noundef nonnull align 8 dereferenceable(8) %i.ehy) #21, !inline_history !80
  br i1 %i.eih, label %bb.adi, label %bb.adj

bb.adi:                                           ; preds = %bb.adh
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ehy) #21
  %i.eii = getelementptr inbounds nuw i8, ptr %i.ehy, i64 8
  %i.eij = load ptr, ptr %i.eii, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1037

bb.adj:                                           ; preds = %bb.adh, %bb.adg
  %i.eik = load ptr, ptr %i.ehy, align 8
  %i.eil = getelementptr inbounds nuw i8, ptr %i.eik, i64 72
  %i.eim = load ptr, ptr %i.eil, align 8
  %i.ein = call noundef ptr %i.eim(ptr noundef nonnull align 8 dereferenceable(16) %i.ehy) #21, !inline_history !80
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1037

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1037: ; preds = %bb.adi, %bb.adj
  %.0.i1036 = phi ptr [ %i.eij, %bb.adi ], [ %i.ein, %bb.adj ] ; 4 uses
  %i.eio = getelementptr inbounds nuw i8, ptr %i.ehp, i64 12
  %i.eip = load i32, ptr %i.eio, align 4          ; 5 uses
  %i.eiq = zext i32 %i.eip to i64                 ; 2 uses
  %i.eir = shl nuw nsw i64 %i.eiq, 3
  %i.eis = or disjoint i64 %i.eir, 2              ; 2 uses
  %i.eit = load ptr, ptr %i.x, align 8
  %i.eiu = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.eiv = ptrtoint ptr %i.eit to i64
  %i.eiw = ptrtoint ptr %i.eiu to i64
  %i.eix = sub i64 %i.eiv, %i.eiw
  %i.eiy = ashr exact i64 %i.eix, 1
  %.not.i1038 = icmp ugt i64 %i.eis, %i.eiy
  br i1 %.not.i1038, label %bb.adk, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1039, !prof !6

bb.adk:                                           ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1037
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i64 noundef %i.eis)
  %.pre3772 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1039

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1039: ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1037, %bb.adk
  %i.eiz = phi ptr [ %i.eiu, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1037 ], [ %.pre3772, %bb.adk ] ; 2 uses
  %i.eja = getelementptr inbounds nuw i8, ptr %i.eiz, i64 2
  store ptr %i.eja, ptr %i.y, align 8
  store i16 34, ptr %i.eiz, align 2
  %.not3534 = icmp eq i32 %i.eip, 0
  br i1 %.not3534, label %._crit_edge3241.thread, label %.lr.ph3240

._crit_edge3241.thread:                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1039
  %.pre37734246 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit81.i

._crit_edge3241:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1042.thread
  %i.ejb = icmp ugt i32 %i.eip, %.2.i.i78.i
  %.pre3773 = load ptr, ptr %i.y, align 8         ; 18 uses
  br i1 %i.ejb, label %bb.adw, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit81.i

.lr.ph3240:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1039, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1042.thread
  %.055.i.i73.i3239 = phi i32 [ %.2.i.i78.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1042.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1039 ] ; 4 uses
  %.057.i.i72.i3238 = phi i32 [ %i.eln, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1042.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1039 ] ; 9 uses
  %i.ejc = zext i32 %.057.i.i72.i3238 to i64
  %i.ejd = getelementptr inbounds nuw [2 x i8], ptr %.0.i1036, i64 %i.ejc
  %i.eje = load i16, ptr %i.ejd, align 2          ; 11 uses
  %i.ejf = and i16 %i.eje, -2
  %or.cond.i1040 = icmp eq i16 %i.ejf, 32
  br i1 %or.cond.i1040, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1042.thread, label %bb.adl

bb.adl:                                           ; preds = %.lr.ph3240
  %i.ejg = icmp ugt i16 %i.eje, 34
  %i.ejh = icmp ne i16 %i.eje, 92
  %or.cond5.i1041 = and i1 %i.ejg, %i.ejh
  %i.eji = add i16 %i.eje, 8192
  %i.ejj = icmp ult i16 %i.eji, -2048
  %or.cond2851 = and i1 %or.cond5.i1041, %i.ejj
  br i1 %or.cond2851, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1042.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1042.thread2771, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1042.thread2771: ; preds = %bb.adl
  %17 = icmp slt i16 %i.eje, -8192
  %i.ejk = zext i32 %.055.i.i73.i3239 to i64
  %i.ejl = getelementptr inbounds nuw [2 x i8], ptr %.0.i1036, i64 %i.ejk
  %i.ejm = sub i32 %.057.i.i72.i3238, %.055.i.i73.i3239
  %i.ejn = zext i32 %i.ejm to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.z, ptr noundef %i.ejl, i64 noundef %i.ejn)
  br i1 %17, label %bb.adm, label %bb.adu

bb.adm:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1042.thread2771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  %i.ejo = icmp samesign ult i16 %i.eje, -9216
  br i1 %i.ejo, label %bb.adn, label %bb.ads

bb.adn:                                           ; preds = %bb.adm
  %i.ejp = add nuw i32 %.057.i.i72.i3238, 1       ; 3 uses
  %i.ejq = icmp ugt i32 %i.eip, %i.ejp
  br i1 %i.ejq, label %bb.ado, label %bb.adr

bb.ado:                                           ; preds = %bb.adn
  %i.ejr = zext i32 %i.ejp to i64
  %i.ejs = getelementptr inbounds nuw [2 x i8], ptr %.0.i1036, i64 %i.ejr
  %i.ejt = load i16, ptr %i.ejs, align 2          ; 2 uses
  %i.eju = and i16 %i.ejt, -1024
  %i.ejv = icmp eq i16 %i.eju, -9216
  %i.ejw = load ptr, ptr %i.y, align 8            ; 4 uses
  br i1 %i.ejv, label %bb.adp, label %bb.adq

bb.adp:                                           ; preds = %bb.ado
  %i.ejx = getelementptr inbounds nuw i8, ptr %i.ejw, i64 2
  store ptr %i.ejx, ptr %i.y, align 8
  store i16 %i.eje, ptr %i.ejw, align 2
  %i.ejy = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.ejz = getelementptr inbounds nuw i8, ptr %i.ejy, i64 2
  store ptr %i.ejz, ptr %i.y, align 8
  store i16 %i.ejt, ptr %i.ejy, align 2
  br label %bb.adt

bb.adq:                                           ; preds = %bb.ado
  store i16 92, ptr %i.ejw, align 2
  %i.eka = getelementptr inbounds nuw i8, ptr %i.ejw, i64 2
  store i16 117, ptr %i.eka, align 2
  %i.ekb = load ptr, ptr %i.y, align 8
  %i.ekc = getelementptr inbounds nuw i8, ptr %i.ekb, i64 4
  store ptr %i.ekc, ptr %i.y, align 8
  %i.ekd = uitofp i16 %i.eje to double
  %i.eke = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ekd, i32 noundef 16, ptr nonnull %i.f, i64 2200) #21 ; 2 uses
  %i.ekf = extractvalue { i64, ptr } %i.eke, 0    ; 2 uses
  %i.ekg = extractvalue { i64, ptr } %i.eke, 1
  %i.ekh = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ekh, ptr noundef %i.ekg, i64 noundef %i.ekf)
  %i.eki = load ptr, ptr %i.y, align 8
  %i.ekj = getelementptr inbounds nuw [2 x i8], ptr %i.eki, i64 %i.ekf
  store ptr %i.ekj, ptr %i.y, align 8
  br label %bb.adt

bb.adr:                                           ; preds = %bb.adn
  %i.ekk = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.ekk, align 2
  %i.ekl = getelementptr inbounds nuw i8, ptr %i.ekk, i64 2
  store i16 117, ptr %i.ekl, align 2
  %i.ekm = load ptr, ptr %i.y, align 8
  %i.ekn = getelementptr inbounds nuw i8, ptr %i.ekm, i64 4
  store ptr %i.ekn, ptr %i.y, align 8
  %i.eko = uitofp i16 %i.eje to double
  %i.ekp = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.eko, i32 noundef 16, ptr nonnull %i.f, i64 2200) #21 ; 2 uses
  %i.ekq = extractvalue { i64, ptr } %i.ekp, 0    ; 2 uses
  %i.ekr = extractvalue { i64, ptr } %i.ekp, 1
  %i.eks = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.eks, ptr noundef %i.ekr, i64 noundef %i.ekq)
  %i.ekt = load ptr, ptr %i.y, align 8
  %i.eku = getelementptr inbounds nuw [2 x i8], ptr %i.ekt, i64 %i.ekq
  store ptr %i.eku, ptr %i.y, align 8
  br label %bb.adt

bb.ads:                                           ; preds = %bb.adm
  %i.ekv = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.ekv, align 2
  %i.ekw = getelementptr inbounds nuw i8, ptr %i.ekv, i64 2
  store i16 117, ptr %i.ekw, align 2
  %i.ekx = load ptr, ptr %i.y, align 8
  %i.eky = getelementptr inbounds nuw i8, ptr %i.ekx, i64 4
  store ptr %i.eky, ptr %i.y, align 8
  %i.ekz = uitofp i16 %i.eje to double
  %i.ela = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ekz, i32 noundef 16, ptr nonnull %i.f, i64 2200) #21 ; 2 uses
  %i.elb = extractvalue { i64, ptr } %i.ela, 0    ; 2 uses
  %i.elc = extractvalue { i64, ptr } %i.ela, 1
  %i.eld = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.eld, ptr noundef %i.elc, i64 noundef %i.elb)
  %i.ele = load ptr, ptr %i.y, align 8
  %i.elf = getelementptr inbounds nuw [2 x i8], ptr %i.ele, i64 %i.elb
  store ptr %i.elf, ptr %i.y, align 8
  br label %bb.adt

bb.adt:                                           ; preds = %bb.ads, %bb.adr, %bb.adq, %bb.adp
  %.259.i.i80.i = phi i32 [ %.057.i.i72.i3238, %bb.ads ], [ %.057.i.i72.i3238, %bb.adr ], [ %i.ejp, %bb.adp ], [ %.057.i.i72.i3238, %bb.adq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br label %bb.adv

bb.adu:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1042.thread2771
  %i.elg = zext i16 %i.eje to i64
  %i.elh = shl nuw nsw i64 %i.elg, 3
  %i.eli = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.elh ; 2 uses
  %i.elj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eli) #26 ; 2 uses
  %i.elk = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.elk, ptr noundef nonnull %i.eli, i64 noundef %i.elj)
  %i.ell = load ptr, ptr %i.y, align 8
  %i.elm = getelementptr inbounds nuw [2 x i8], ptr %i.ell, i64 %i.elj
  store ptr %i.elm, ptr %i.y, align 8
  br label %bb.adv

bb.adv:                                           ; preds = %bb.adu, %bb.adt
  %.3.i.i75.i = phi i32 [ %.259.i.i80.i, %bb.adt ], [ %.057.i.i72.i3238, %bb.adu ] ; 2 uses
  %.156.i.i76.i = add nuw i32 %.3.i.i75.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1042.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1042.thread: ; preds = %bb.adl, %.lr.ph3240, %bb.adv
  %.4.i.i77.i = phi i32 [ %.3.i.i75.i, %bb.adv ], [ %.057.i.i72.i3238, %bb.adl ], [ %.057.i.i72.i3238, %.lr.ph3240 ]
  %.2.i.i78.i = phi i32 [ %.156.i.i76.i, %bb.adv ], [ %.055.i.i73.i3239, %bb.adl ], [ %.055.i.i73.i3239, %.lr.ph3240 ] ; 3 uses
  %i.eln = add nuw i32 %.4.i.i77.i, 1             ; 2 uses
  %i.elo = icmp ugt i32 %i.eip, %i.eln
  br i1 %i.elo, label %.lr.ph3240, label %._crit_edge3241, !llvm.loop !350

bb.adw:                                           ; preds = %._crit_edge3241
  %i.elp = zext i32 %.2.i.i78.i to i64            ; 2 uses
  %i.elq = getelementptr inbounds nuw [2 x i8], ptr %.0.i1036, i64 %i.elp ; 17 uses
  %i.elr = sub nuw nsw i64 %i.eiq, %i.elp         ; 3 uses
  %trunc2877 = trunc nuw i64 %i.elr to i32
  switch i32 %trunc2877, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1045 [
    i32 1, label %bb.adx
    i32 2, label %bb.ady
    i32 3, label %bb.adz
    i32 4, label %bb.aea
    i32 5, label %bb.aeb
    i32 6, label %bb.aec
    i32 7, label %bb.aed
    i32 8, label %bb.aee
    i32 9, label %bb.aef
    i32 10, label %bb.aeg
    i32 11, label %bb.aeh
    i32 12, label %bb.aei
    i32 13, label %bb.aej
    i32 14, label %bb.aek
    i32 15, label %bb.ael
    i32 16, label %bb.aem
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1047
  ]

bb.adx:                                           ; preds = %bb.adw
  %i.els = load i16, ptr %i.elq, align 2
  store i16 %i.els, ptr %.pre3773, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1047

bb.ady:                                           ; preds = %bb.adw
  %i.elt = load i32, ptr %i.elq, align 2
  store i32 %i.elt, ptr %.pre3773, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1047

bb.adz:                                           ; preds = %bb.adw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre3773, ptr noundef nonnull align 2 dereferenceable(6) %i.elq, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1047

bb.aea:                                           ; preds = %bb.adw
  %i.elu = load i64, ptr %i.elq, align 2
  store i64 %i.elu, ptr %.pre3773, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1047

bb.aeb:                                           ; preds = %bb.adw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre3773, ptr noundef nonnull align 2 dereferenceable(10) %i.elq, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1047

bb.aec:                                           ; preds = %bb.adw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre3773, ptr noundef nonnull align 2 dereferenceable(12) %i.elq, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1047

bb.aed:                                           ; preds = %bb.adw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre3773, ptr noundef nonnull align 2 dereferenceable(14) %i.elq, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1047

bb.aee:                                           ; preds = %bb.adw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre3773, ptr noundef nonnull align 2 dereferenceable(16) %i.elq, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1047

bb.aef:                                           ; preds = %bb.adw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre3773, ptr noundef nonnull align 2 dereferenceable(18) %i.elq, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1047

bb.aeg:                                           ; preds = %bb.adw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre3773, ptr noundef nonnull align 2 dereferenceable(20) %i.elq, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1047

bb.aeh:                                           ; preds = %bb.adw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre3773, ptr noundef nonnull align 2 dereferenceable(22) %i.elq, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1047

bb.aei:                                           ; preds = %bb.adw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre3773, ptr noundef nonnull align 2 dereferenceable(24) %i.elq, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1047

bb.aej:                                           ; preds = %bb.adw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre3773, ptr noundef nonnull align 2 dereferenceable(26) %i.elq, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1047

bb.aek:                                           ; preds = %bb.adw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre3773, ptr noundef nonnull align 2 dereferenceable(28) %i.elq, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1047

bb.ael:                                           ; preds = %bb.adw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre3773, ptr noundef nonnull align 2 dereferenceable(30) %i.elq, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1047

bb.aem:                                           ; preds = %bb.adw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre3773, ptr noundef nonnull align 2 dereferenceable(32) %i.elq, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1047

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1045: ; preds = %bb.adw
  %.idx.i.i.i.i1046 = shl nuw nsw i64 %i.elr, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre3773, ptr nonnull align 2 %i.elq, i64 %.idx.i.i.i.i1046, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1047

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1047: ; preds = %bb.adw, %bb.adx, %bb.ady, %bb.adz, %bb.aea, %bb.aeb, %bb.aec, %bb.aed, %bb.aee, %bb.aef, %bb.aeg, %bb.aeh, %bb.aei, %bb.aej, %bb.aek, %bb.ael, %bb.aem, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1045
  %i.elv = load ptr, ptr %i.y, align 8
  %i.elw = getelementptr inbounds nuw [2 x i8], ptr %i.elv, i64 %i.elr
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit81.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit81.i: ; preds = %._crit_edge3241.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1047, %._crit_edge3241
  %i.elx = phi ptr [ %i.elw, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1047 ], [ %.pre3773, %._crit_edge3241 ], [ %.pre37734246, %._crit_edge3241.thread ] ; 2 uses
  %i.ely = getelementptr inbounds nuw i8, ptr %i.elx, i64 2
  store ptr %i.ely, ptr %i.y, align 8
  store i16 34, ptr %i.elx, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i285.thread

bb.aen:                                           ; preds = %bb.adf
  %i.elz = getelementptr inbounds nuw i8, ptr %i.ehp, i64 12
  %i.ema = load i32, ptr %i.elz, align 4          ; 5 uses
  %i.emb = zext i32 %i.ema to i64                 ; 2 uses
  %i.emc = shl nuw nsw i64 %i.emb, 3
  %i.emd = or disjoint i64 %i.emc, 2              ; 2 uses
  %i.eme = load ptr, ptr %i.x, align 8
  %i.emf = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.emg = ptrtoint ptr %i.eme to i64
  %i.emh = ptrtoint ptr %i.emf to i64
  %i.emi = sub i64 %i.emg, %i.emh
  %i.emj = ashr exact i64 %i.emi, 1
  %.not.i1048 = icmp ugt i64 %i.emd, %i.emj
  br i1 %.not.i1048, label %bb.aeo, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1049, !prof !6

bb.aeo:                                           ; preds = %bb.aen
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i64 noundef %i.emd)
  %.pre3770 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1049

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1049: ; preds = %bb.aen, %bb.aeo
  %i.emk = phi ptr [ %i.emf, %bb.aen ], [ %.pre3770, %bb.aeo ] ; 2 uses
  %i.eml = getelementptr inbounds nuw i8, ptr %i.emk, i64 2
  store ptr %i.eml, ptr %i.y, align 8
  store i16 34, ptr %i.emk, align 2
  %.not3533 = icmp eq i32 %i.ema, 0
  br i1 %.not3533, label %._crit_edge3236.thread, label %.lr.ph3235

._crit_edge3236.thread:                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1049
  %.pre37714248 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit62.i

._crit_edge3236:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1052.thread
  %i.emm = icmp ugt i32 %i.ema, %.2.i.i59.i
  %.pre3771 = load ptr, ptr %i.y, align 8         ; 18 uses
  br i1 %i.emm, label %bb.afa, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit62.i

.lr.ph3235:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1049, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1052.thread
  %.055.i.i54.i3234 = phi i32 [ %.2.i.i59.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1052.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1049 ] ; 4 uses
  %.057.i.i53.i3233 = phi i32 [ %i.eoy, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1052.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1049 ] ; 9 uses
  %i.emn = zext i32 %.057.i.i53.i3233 to i64
  %i.emo = getelementptr inbounds nuw [2 x i8], ptr %i.ehw, i64 %i.emn
  %i.emp = load i16, ptr %i.emo, align 2          ; 11 uses
  %i.emq = and i16 %i.emp, -2
  %or.cond.i1050 = icmp eq i16 %i.emq, 32
  br i1 %or.cond.i1050, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1052.thread, label %bb.aep

bb.aep:                                           ; preds = %.lr.ph3235
  %i.emr = icmp ugt i16 %i.emp, 34
  %i.ems = icmp ne i16 %i.emp, 92
  %or.cond5.i1051 = and i1 %i.emr, %i.ems
  %i.emt = add i16 %i.emp, 8192
  %i.emu = icmp ult i16 %i.emt, -2048
  %or.cond2853 = and i1 %or.cond5.i1051, %i.emu
  br i1 %or.cond2853, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1052.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1052.thread2772, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1052.thread2772: ; preds = %bb.aep
  %18 = icmp slt i16 %i.emp, -8192
  %i.emv = zext i32 %.055.i.i54.i3234 to i64
  %i.emw = getelementptr inbounds nuw [2 x i8], ptr %i.ehw, i64 %i.emv
  %i.emx = sub i32 %.057.i.i53.i3233, %.055.i.i54.i3234
  %i.emy = zext i32 %i.emx to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.z, ptr noundef nonnull %i.emw, i64 noundef %i.emy)
  br i1 %18, label %bb.aeq, label %bb.aey

bb.aeq:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1052.thread2772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  %i.emz = icmp samesign ult i16 %i.emp, -9216
  br i1 %i.emz, label %bb.aer, label %bb.aew

bb.aer:                                           ; preds = %bb.aeq
  %i.ena = add nuw i32 %.057.i.i53.i3233, 1       ; 3 uses
  %i.enb = icmp ugt i32 %i.ema, %i.ena
  br i1 %i.enb, label %bb.aes, label %bb.aev

bb.aes:                                           ; preds = %bb.aer
  %i.enc = zext i32 %i.ena to i64
  %i.end = getelementptr inbounds nuw [2 x i8], ptr %i.ehw, i64 %i.enc
  %i.ene = load i16, ptr %i.end, align 2          ; 2 uses
  %i.enf = and i16 %i.ene, -1024
  %i.eng = icmp eq i16 %i.enf, -9216
  %i.enh = load ptr, ptr %i.y, align 8            ; 4 uses
  br i1 %i.eng, label %bb.aet, label %bb.aeu

bb.aet:                                           ; preds = %bb.aes
  %i.eni = getelementptr inbounds nuw i8, ptr %i.enh, i64 2
  store ptr %i.eni, ptr %i.y, align 8
  store i16 %i.emp, ptr %i.enh, align 2
  %i.enj = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.enk = getelementptr inbounds nuw i8, ptr %i.enj, i64 2
  store ptr %i.enk, ptr %i.y, align 8
  store i16 %i.ene, ptr %i.enj, align 2
  br label %bb.aex

bb.aeu:                                           ; preds = %bb.aes
  store i16 92, ptr %i.enh, align 2
  %i.enl = getelementptr inbounds nuw i8, ptr %i.enh, i64 2
  store i16 117, ptr %i.enl, align 2
  %i.enm = load ptr, ptr %i.y, align 8
  %i.enn = getelementptr inbounds nuw i8, ptr %i.enm, i64 4
  store ptr %i.enn, ptr %i.y, align 8
  %i.eno = uitofp i16 %i.emp to double
  %i.enp = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.eno, i32 noundef 16, ptr nonnull %i.h, i64 2200) #21 ; 2 uses
  %i.enq = extractvalue { i64, ptr } %i.enp, 0    ; 2 uses
  %i.enr = extractvalue { i64, ptr } %i.enp, 1
  %i.ens = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ens, ptr noundef %i.enr, i64 noundef %i.enq)
  %i.ent = load ptr, ptr %i.y, align 8
  %i.enu = getelementptr inbounds nuw [2 x i8], ptr %i.ent, i64 %i.enq
  store ptr %i.enu, ptr %i.y, align 8
  br label %bb.aex

bb.aev:                                           ; preds = %bb.aer
  %i.env = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.env, align 2
  %i.enw = getelementptr inbounds nuw i8, ptr %i.env, i64 2
  store i16 117, ptr %i.enw, align 2
  %i.enx = load ptr, ptr %i.y, align 8
  %i.eny = getelementptr inbounds nuw i8, ptr %i.enx, i64 4
  store ptr %i.eny, ptr %i.y, align 8
  %i.enz = uitofp i16 %i.emp to double
  %i.eoa = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.enz, i32 noundef 16, ptr nonnull %i.h, i64 2200) #21 ; 2 uses
  %i.eob = extractvalue { i64, ptr } %i.eoa, 0    ; 2 uses
  %i.eoc = extractvalue { i64, ptr } %i.eoa, 1
  %i.eod = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.eod, ptr noundef %i.eoc, i64 noundef %i.eob)
  %i.eoe = load ptr, ptr %i.y, align 8
  %i.eof = getelementptr inbounds nuw [2 x i8], ptr %i.eoe, i64 %i.eob
  store ptr %i.eof, ptr %i.y, align 8
  br label %bb.aex

bb.aew:                                           ; preds = %bb.aeq
  %i.eog = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.eog, align 2
  %i.eoh = getelementptr inbounds nuw i8, ptr %i.eog, i64 2
  store i16 117, ptr %i.eoh, align 2
  %i.eoi = load ptr, ptr %i.y, align 8
  %i.eoj = getelementptr inbounds nuw i8, ptr %i.eoi, i64 4
  store ptr %i.eoj, ptr %i.y, align 8
  %i.eok = uitofp i16 %i.emp to double
  %i.eol = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.eok, i32 noundef 16, ptr nonnull %i.h, i64 2200) #21 ; 2 uses
  %i.eom = extractvalue { i64, ptr } %i.eol, 0    ; 2 uses
  %i.eon = extractvalue { i64, ptr } %i.eol, 1
  %i.eoo = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.eoo, ptr noundef %i.eon, i64 noundef %i.eom)
  %i.eop = load ptr, ptr %i.y, align 8
  %i.eoq = getelementptr inbounds nuw [2 x i8], ptr %i.eop, i64 %i.eom
  store ptr %i.eoq, ptr %i.y, align 8
  br label %bb.aex

bb.aex:                                           ; preds = %bb.aew, %bb.aev, %bb.aeu, %bb.aet
  %.259.i.i61.i = phi i32 [ %.057.i.i53.i3233, %bb.aew ], [ %.057.i.i53.i3233, %bb.aev ], [ %i.ena, %bb.aet ], [ %.057.i.i53.i3233, %bb.aeu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  br label %bb.aez

bb.aey:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1052.thread2772
  %i.eor = zext i16 %i.emp to i64
  %i.eos = shl nuw nsw i64 %i.eor, 3
  %i.eot = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.eos ; 2 uses
  %i.eou = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eot) #26 ; 2 uses
  %i.eov = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.eov, ptr noundef nonnull %i.eot, i64 noundef %i.eou)
  %i.eow = load ptr, ptr %i.y, align 8
  %i.eox = getelementptr inbounds nuw [2 x i8], ptr %i.eow, i64 %i.eou
  store ptr %i.eox, ptr %i.y, align 8
  br label %bb.aez

bb.aez:                                           ; preds = %bb.aey, %bb.aex
  %.3.i.i56.i = phi i32 [ %.259.i.i61.i, %bb.aex ], [ %.057.i.i53.i3233, %bb.aey ] ; 2 uses
  %.156.i.i57.i = add nuw i32 %.3.i.i56.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1052.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1052.thread: ; preds = %bb.aep, %.lr.ph3235, %bb.aez
  %.4.i.i58.i = phi i32 [ %.3.i.i56.i, %bb.aez ], [ %.057.i.i53.i3233, %bb.aep ], [ %.057.i.i53.i3233, %.lr.ph3235 ]
  %.2.i.i59.i = phi i32 [ %.156.i.i57.i, %bb.aez ], [ %.055.i.i54.i3234, %bb.aep ], [ %.055.i.i54.i3234, %.lr.ph3235 ] ; 3 uses
  %i.eoy = add nuw i32 %.4.i.i58.i, 1             ; 2 uses
  %i.eoz = icmp ugt i32 %i.ema, %i.eoy
  br i1 %i.eoz, label %.lr.ph3235, label %._crit_edge3236, !llvm.loop !350

bb.afa:                                           ; preds = %._crit_edge3236
  %i.epa = zext i32 %.2.i.i59.i to i64            ; 2 uses
  %i.epb = getelementptr inbounds nuw [2 x i8], ptr %i.ehw, i64 %i.epa ; 17 uses
  %i.epc = sub nuw nsw i64 %i.emb, %i.epa         ; 3 uses
  %trunc2876 = trunc nuw i64 %i.epc to i32
  switch i32 %trunc2876, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1055 [
    i32 1, label %bb.afb
    i32 2, label %bb.afc
    i32 3, label %bb.afd
    i32 4, label %bb.afe
    i32 5, label %bb.aff
    i32 6, label %bb.afg
    i32 7, label %bb.afh
    i32 8, label %bb.afi
    i32 9, label %bb.afj
    i32 10, label %bb.afk
    i32 11, label %bb.afl
    i32 12, label %bb.afm
    i32 13, label %bb.afn
    i32 14, label %bb.afo
    i32 15, label %bb.afp
    i32 16, label %bb.afq
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1057
  ]

bb.afb:                                           ; preds = %bb.afa
  %i.epd = load i16, ptr %i.epb, align 2
  store i16 %i.epd, ptr %.pre3771, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1057

bb.afc:                                           ; preds = %bb.afa
  %i.epe = load i32, ptr %i.epb, align 2
  store i32 %i.epe, ptr %.pre3771, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1057

bb.afd:                                           ; preds = %bb.afa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre3771, ptr noundef nonnull align 2 dereferenceable(6) %i.epb, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1057

bb.afe:                                           ; preds = %bb.afa
  %i.epf = load i64, ptr %i.epb, align 2
  store i64 %i.epf, ptr %.pre3771, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1057

bb.aff:                                           ; preds = %bb.afa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre3771, ptr noundef nonnull align 2 dereferenceable(10) %i.epb, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1057

bb.afg:                                           ; preds = %bb.afa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre3771, ptr noundef nonnull align 2 dereferenceable(12) %i.epb, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1057

bb.afh:                                           ; preds = %bb.afa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre3771, ptr noundef nonnull align 2 dereferenceable(14) %i.epb, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1057

bb.afi:                                           ; preds = %bb.afa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre3771, ptr noundef nonnull align 2 dereferenceable(16) %i.epb, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1057

bb.afj:                                           ; preds = %bb.afa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre3771, ptr noundef nonnull align 2 dereferenceable(18) %i.epb, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1057

bb.afk:                                           ; preds = %bb.afa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre3771, ptr noundef nonnull align 2 dereferenceable(20) %i.epb, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1057

bb.afl:                                           ; preds = %bb.afa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre3771, ptr noundef nonnull align 2 dereferenceable(22) %i.epb, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1057

bb.afm:                                           ; preds = %bb.afa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre3771, ptr noundef nonnull align 2 dereferenceable(24) %i.epb, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1057

bb.afn:                                           ; preds = %bb.afa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre3771, ptr noundef nonnull align 2 dereferenceable(26) %i.epb, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1057

bb.afo:                                           ; preds = %bb.afa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre3771, ptr noundef nonnull align 2 dereferenceable(28) %i.epb, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1057

bb.afp:                                           ; preds = %bb.afa
end_hunk_8
begin_hunk_9_@_ZN2v88internal19FastJsonStringifierItE15SerializeObjectENS0_18ContinuationRecordERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS5_2EEEE:bb.a
  br i1 %i.fmn, label %.lr.ph3175, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i26.i, !llvm.loop !347

_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i26.i: ; preds = %bb.ait, %.lr.ph3175, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i
  %.013.i.i25.i.lcssa = phi i64 [ %i.flw, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i ], [ %.013.i.i25.i3174, %.lr.ph3175 ], [ %i.fml, %bb.ait ] ; 2 uses
  %i.fmo = icmp ult i64 %.013.i.i25.i.lcssa, %i.fjz
  br i1 %i.fmo, label %.lr.ph.i1183, label %._crit_edge.i1180

._crit_edge.i1180:                                ; preds = %bb.aiv, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i26.i
  %.0.lcssa.i1182 = phi i64 [ %.155.i.i28.i, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i26.i ], [ %.1.i1189, %bb.aiv ] ; 2 uses
  %i.fmp = icmp ult i64 %.0.lcssa.i1182, %i.fjz
  %.pre3750 = load ptr, ptr %i.y, align 8         ; 2 uses
  br i1 %i.fmp, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i.sink.split, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i, !prof !11

.lr.ph.i1183:                                     ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i26.i, %bb.aiv
  %.026.i1184 = phi i64 [ %.1.i1189, %bb.aiv ], [ %.155.i.i28.i, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i26.i ] ; 3 uses
  %.02025.i1185 = phi i64 [ %.pre-phi.i1187, %bb.aiv ], [ %.013.i.i25.i.lcssa, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i26.i ] ; 4 uses
  %i.fmq = getelementptr inbounds nuw i8, ptr %i.feh, i64 %.02025.i1185
  %i.fmr = load i8, ptr %i.fmq, align 1
  %i.fms = zext i8 %i.fmr to i64                  ; 2 uses
  %i.fmt = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.fms
  %i.fmu = load i8, ptr %i.fmt, align 1, !range !7, !noundef !8
  %i.fmv = trunc nuw i8 %i.fmu to i1
  br i1 %i.fmv, label %._crit_edge28.i1191, label %bb.aiu, !prof !11

._crit_edge28.i1191:                              ; preds = %.lr.ph.i1183
  %.pre.i1192 = add i64 %.02025.i1185, 1
  br label %bb.aiv

bb.aiu:                                           ; preds = %.lr.ph.i1183
  %i.fmw = getelementptr inbounds nuw i8, ptr %i.feh, i64 %.026.i1184
  %i.fmx = sub i64 %.02025.i1185, %.026.i1184     ; 2 uses
  %i.fmy = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.fmy, ptr noundef %i.fmw, i64 noundef %i.fmx)
  %i.fmz = load ptr, ptr %i.y, align 8
  %i.fna = getelementptr inbounds nuw [2 x i8], ptr %i.fmz, i64 %i.fmx ; 2 uses
  store ptr %i.fna, ptr %i.y, align 8
  %i.fnb = shl nuw nsw i64 %i.fms, 3
  %i.fnc = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.fnb ; 2 uses
  %i.fnd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fnc) #26 ; 2 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.fna, ptr noundef nonnull %i.fnc, i64 noundef %i.fnd)
  %i.fne = load ptr, ptr %i.y, align 8
  %i.fnf = getelementptr inbounds nuw [2 x i8], ptr %i.fne, i64 %i.fnd
  store ptr %i.fnf, ptr %i.y, align 8
  %i.fng = add i64 %.02025.i1185, 1               ; 2 uses
  br label %bb.aiv

bb.aiv:                                           ; preds = %bb.aiu, %._crit_edge28.i1191
  %.pre-phi.i1187 = phi i64 [ %.pre.i1192, %._crit_edge28.i1191 ], [ %i.fng, %bb.aiu ] ; 2 uses
  %.1.i1189 = phi i64 [ %.026.i1184, %._crit_edge28.i1191 ], [ %i.fng, %bb.aiu ] ; 2 uses
  %exitcond.not.i1190 = icmp eq i64 %.pre-phi.i1187, %i.fjz
  br i1 %exitcond.not.i1190, label %._crit_edge.i1180, label %.lr.ph.i1183, !llvm.loop !348

.lr.ph3164:                                       ; preds = %.lr.ph3164.preheader, %bb.aiw
  %.013.i8.i18.i3163 = phi i64 [ %i.fnt, %bb.aiw ], [ 0, %.lr.ph3164.preheader ] ; 3 uses
  %i.fnh = getelementptr inbounds nuw i8, ptr %i.feh, i64 %.013.i8.i18.i3163
  %i.fni = load i32, ptr %i.fnh, align 4          ; 4 uses
  %i.fnj = add i32 %i.fni, -538976288
  %i.fnk = xor i32 %i.fni, 572662306
  %i.fnl = add i32 %i.fnk, -16843009
  %i.fnm = xor i32 %i.fni, 1549556828
  %i.fnn = add i32 %i.fnm, -16843009
  %i.fno = and i32 %i.fni, -2139062144
  %i.fnp = xor i32 %i.fno, -2139062144
  %i.fnq = or i32 %i.fnl, %i.fnj
  %i.fnr = or i32 %i.fnq, %i.fnn
  %i.fns = and i32 %i.fnr, %i.fnp
  %.not2866 = icmp eq i32 %i.fns, 0
  br i1 %.not2866, label %bb.aiw, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i19.i

bb.aiw:                                           ; preds = %.lr.ph3164
  %i.fnt = add nuw nsw i64 %.013.i8.i18.i3163, 4  ; 2 uses
  %i.fnu = or disjoint i64 %i.fnt, 3
  %i.fnv = icmp samesign ult i64 %i.fnu, %i.fjz
  br i1 %i.fnv, label %.lr.ph3164, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i19.i, !llvm.loop !347

_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i19.i: ; preds = %bb.aiw, %.lr.ph3164, %.preheader2944
  %.013.i8.i18.i.lcssa = phi i64 [ 0, %.preheader2944 ], [ %.013.i8.i18.i3163, %.lr.ph3164 ], [ %i.fkm, %bb.aiw ] ; 2 uses
  %i.fnw = icmp samesign ult i64 %.013.i8.i18.i.lcssa, %i.fjz
  br i1 %i.fnw, label %.lr.ph.i1197, label %._crit_edge.i1194

._crit_edge.i1194:                                ; preds = %bb.aiy, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i19.i
  %.0.lcssa.i1196 = phi i64 [ 0, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i19.i ], [ %.1.i1203, %bb.aiy ] ; 2 uses
  %i.fnx = icmp ult i64 %.0.lcssa.i1196, %i.fjz
  %.pre3751 = load ptr, ptr %i.y, align 8         ; 2 uses
  br i1 %i.fnx, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i.sink.split, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i, !prof !11

.lr.ph.i1197:                                     ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i19.i, %bb.aiy
  %.026.i1198 = phi i64 [ %.1.i1203, %bb.aiy ], [ 0, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i19.i ] ; 3 uses
  %.02025.i1199 = phi i64 [ %.pre-phi.i1201, %bb.aiy ], [ %.013.i8.i18.i.lcssa, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i19.i ] ; 4 uses
  %i.fny = getelementptr inbounds nuw i8, ptr %i.feh, i64 %.02025.i1199
  %i.fnz = load i8, ptr %i.fny, align 1
  %i.foa = zext i8 %i.fnz to i64                  ; 2 uses
  %i.fob = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.foa
  %i.foc = load i8, ptr %i.fob, align 1, !range !7, !noundef !8
  %i.fod = trunc nuw i8 %i.foc to i1
  br i1 %i.fod, label %._crit_edge28.i1205, label %bb.aix, !prof !11

._crit_edge28.i1205:                              ; preds = %.lr.ph.i1197
  %.pre.i1206 = add i64 %.02025.i1199, 1
  br label %bb.aiy

bb.aix:                                           ; preds = %.lr.ph.i1197
  %i.foe = getelementptr inbounds nuw i8, ptr %i.feh, i64 %.026.i1198
  %i.fof = sub i64 %.02025.i1199, %.026.i1198     ; 2 uses
  %i.fog = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.fog, ptr noundef %i.foe, i64 noundef %i.fof)
  %i.foh = load ptr, ptr %i.y, align 8
  %i.foi = getelementptr inbounds nuw [2 x i8], ptr %i.foh, i64 %i.fof ; 2 uses
  store ptr %i.foi, ptr %i.y, align 8
  %i.foj = shl nuw nsw i64 %i.foa, 3
  %i.fok = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.foj ; 2 uses
  %i.fol = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fok) #26 ; 2 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.foi, ptr noundef nonnull %i.fok, i64 noundef %i.fol)
  %i.fom = load ptr, ptr %i.y, align 8
  %i.fon = getelementptr inbounds nuw [2 x i8], ptr %i.fom, i64 %i.fol
  store ptr %i.fon, ptr %i.y, align 8
  %i.foo = add i64 %.02025.i1199, 1               ; 2 uses
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %._crit_edge28.i1205
  %.pre-phi.i1201 = phi i64 [ %.pre.i1206, %._crit_edge28.i1205 ], [ %i.foo, %bb.aix ] ; 2 uses
  %.1.i1203 = phi i64 [ %.026.i1198, %._crit_edge28.i1205 ], [ %i.foo, %bb.aix ] ; 2 uses
  %exitcond.not.i1204 = icmp eq i64 %.pre-phi.i1201, %i.fjz
  br i1 %exitcond.not.i1204, label %._crit_edge.i1194, label %.lr.ph.i1197, !llvm.loop !348

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i.sink.split: ; preds = %._crit_edge.i1194, %._crit_edge.i1180
  %.0.lcssa.i1182.sink4494 = phi i64 [ %.0.lcssa.i1182, %._crit_edge.i1180 ], [ %.0.lcssa.i1196, %._crit_edge.i1194 ] ; 2 uses
  %.pre3750.sink = phi ptr [ %.pre3750, %._crit_edge.i1180 ], [ %.pre3751, %._crit_edge.i1194 ]
  %i.fop = getelementptr inbounds nuw i8, ptr %i.feh, i64 %.0.lcssa.i1182.sink4494
  %i.foq = sub nuw nsw i64 %i.fjz, %.0.lcssa.i1182.sink4494 ; 2 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %.pre3750.sink, ptr noundef %i.fop, i64 noundef %i.foq)
  %i.for = load ptr, ptr %i.y, align 8
  %i.fos = getelementptr inbounds nuw [2 x i8], ptr %i.for, i64 %i.foq
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i: ; preds = %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i.sink.split, %._crit_edge.i1180, %._crit_edge.i1194
  %i.fot = phi ptr [ %.pre3751, %._crit_edge.i1194 ], [ %.pre3750, %._crit_edge.i1180 ], [ %i.fos, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i.sink.split ] ; 2 uses
  %i.fou = getelementptr inbounds nuw i8, ptr %i.fot, i64 2
  store ptr %i.fou, ptr %i.y, align 8
  store i16 34, ptr %i.fot, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i328.thread

bb.aiz:                                           ; preds = %bb.agr, %bb.agr
  %i.fov = getelementptr inbounds nuw i8, ptr %i.etd, i64 16 ; 4 uses
  %i.fow = getelementptr inbounds nuw i8, ptr %i.etd, i64 12
  %i.fox = load i32, ptr %i.fow, align 4          ; 5 uses
  %i.foy = zext i32 %i.fox to i64                 ; 2 uses
  %i.foz = shl nuw nsw i64 %i.foy, 3
  %i.fpa = or disjoint i64 %i.foz, 2              ; 2 uses
  %i.fpb = load ptr, ptr %i.x, align 8
  %i.fpc = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.fpd = ptrtoint ptr %i.fpb to i64
  %i.fpe = ptrtoint ptr %i.fpc to i64
  %i.fpf = sub i64 %i.fpd, %i.fpe
  %i.fpg = ashr exact i64 %i.fpf, 1
  %.not.i1208 = icmp ugt i64 %i.fpa, %i.fpg
  br i1 %.not.i1208, label %bb.aja, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1209, !prof !6

bb.aja:                                           ; preds = %bb.aiz
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i64 noundef %i.fpa)
  %.pre3747 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1209

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1209: ; preds = %bb.aiz, %bb.aja
  %i.fph = phi ptr [ %i.fpc, %bb.aiz ], [ %.pre3747, %bb.aja ] ; 2 uses
  %i.fpi = getelementptr inbounds nuw i8, ptr %i.fph, i64 2
  store ptr %i.fpi, ptr %i.y, align 8
  store i16 34, ptr %i.fph, align 2
  %.not3532 = icmp eq i32 %i.fox, 0
  br i1 %.not3532, label %._crit_edge3161.thread, label %.lr.ph3160

._crit_edge3161.thread:                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1209
  %.pre37484250 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i343

._crit_edge3161:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1212.thread
  %i.fpj = icmp ugt i32 %i.fox, %.2.i.i.i347
  %.pre3748 = load ptr, ptr %i.y, align 8         ; 18 uses
  br i1 %i.fpj, label %bb.ajm, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i343

.lr.ph3160:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1209, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1212.thread
  %.055.i.i.i3423159 = phi i32 [ %.2.i.i.i347, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1212.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1209 ] ; 4 uses
  %.057.i.i.i3413158 = phi i32 [ %i.frv, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1212.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1209 ] ; 9 uses
  %i.fpk = zext i32 %.057.i.i.i3413158 to i64
  %i.fpl = getelementptr inbounds nuw [2 x i8], ptr %i.fov, i64 %i.fpk
  %i.fpm = load i16, ptr %i.fpl, align 2          ; 11 uses
  %i.fpn = and i16 %i.fpm, -2
  %or.cond.i1210 = icmp eq i16 %i.fpn, 32
  br i1 %or.cond.i1210, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1212.thread, label %bb.ajb

bb.ajb:                                           ; preds = %.lr.ph3160
  %i.fpo = icmp ugt i16 %i.fpm, 34
  %i.fpp = icmp ne i16 %i.fpm, 92
  %or.cond5.i1211 = and i1 %i.fpo, %i.fpp
  %i.fpq = add i16 %i.fpm, 8192
  %i.fpr = icmp ult i16 %i.fpq, -2048
  %or.cond2855 = and i1 %or.cond5.i1211, %i.fpr
  br i1 %or.cond2855, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1212.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1212.thread2794, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1212.thread2794: ; preds = %bb.ajb
  %19 = icmp slt i16 %i.fpm, -8192
  %i.fps = zext i32 %.055.i.i.i3423159 to i64
  %i.fpt = getelementptr inbounds nuw [2 x i8], ptr %i.fov, i64 %i.fps
  %i.fpu = sub i32 %.057.i.i.i3413158, %.055.i.i.i3423159
  %i.fpv = zext i32 %i.fpu to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.z, ptr noundef nonnull %i.fpt, i64 noundef %i.fpv)
  br i1 %19, label %bb.ajc, label %bb.ajk

bb.ajc:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1212.thread2794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.fpw = icmp samesign ult i16 %i.fpm, -9216
  br i1 %i.fpw, label %bb.ajd, label %bb.aji

bb.ajd:                                           ; preds = %bb.ajc
  %i.fpx = add nuw i32 %.057.i.i.i3413158, 1      ; 3 uses
  %i.fpy = icmp ugt i32 %i.fox, %i.fpx
  br i1 %i.fpy, label %bb.aje, label %bb.ajh

bb.aje:                                           ; preds = %bb.ajd
  %i.fpz = zext i32 %i.fpx to i64
  %i.fqa = getelementptr inbounds nuw [2 x i8], ptr %i.fov, i64 %i.fpz
  %i.fqb = load i16, ptr %i.fqa, align 2          ; 2 uses
  %i.fqc = and i16 %i.fqb, -1024
  %i.fqd = icmp eq i16 %i.fqc, -9216
  %i.fqe = load ptr, ptr %i.y, align 8            ; 4 uses
  br i1 %i.fqd, label %bb.ajf, label %bb.ajg

bb.ajf:                                           ; preds = %bb.aje
  %i.fqf = getelementptr inbounds nuw i8, ptr %i.fqe, i64 2
  store ptr %i.fqf, ptr %i.y, align 8
  store i16 %i.fpm, ptr %i.fqe, align 2
  %i.fqg = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.fqh = getelementptr inbounds nuw i8, ptr %i.fqg, i64 2
  store ptr %i.fqh, ptr %i.y, align 8
  store i16 %i.fqb, ptr %i.fqg, align 2
  br label %bb.ajj

bb.ajg:                                           ; preds = %bb.aje
  store i16 92, ptr %i.fqe, align 2
  %i.fqi = getelementptr inbounds nuw i8, ptr %i.fqe, i64 2
  store i16 117, ptr %i.fqi, align 2
  %i.fqj = load ptr, ptr %i.y, align 8
  %i.fqk = getelementptr inbounds nuw i8, ptr %i.fqj, i64 4
  store ptr %i.fqk, ptr %i.y, align 8
  %i.fql = uitofp i16 %i.fpm to double
  %i.fqm = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.fql, i32 noundef 16, ptr nonnull %i.d, i64 2200) #21 ; 2 uses
  %i.fqn = extractvalue { i64, ptr } %i.fqm, 0    ; 2 uses
  %i.fqo = extractvalue { i64, ptr } %i.fqm, 1
  %i.fqp = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.fqp, ptr noundef %i.fqo, i64 noundef %i.fqn)
  %i.fqq = load ptr, ptr %i.y, align 8
  %i.fqr = getelementptr inbounds nuw [2 x i8], ptr %i.fqq, i64 %i.fqn
  store ptr %i.fqr, ptr %i.y, align 8
  br label %bb.ajj

bb.ajh:                                           ; preds = %bb.ajd
  %i.fqs = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.fqs, align 2
  %i.fqt = getelementptr inbounds nuw i8, ptr %i.fqs, i64 2
  store i16 117, ptr %i.fqt, align 2
  %i.fqu = load ptr, ptr %i.y, align 8
  %i.fqv = getelementptr inbounds nuw i8, ptr %i.fqu, i64 4
  store ptr %i.fqv, ptr %i.y, align 8
  %i.fqw = uitofp i16 %i.fpm to double
  %i.fqx = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.fqw, i32 noundef 16, ptr nonnull %i.d, i64 2200) #21 ; 2 uses
  %i.fqy = extractvalue { i64, ptr } %i.fqx, 0    ; 2 uses
  %i.fqz = extractvalue { i64, ptr } %i.fqx, 1
  %i.fra = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.fra, ptr noundef %i.fqz, i64 noundef %i.fqy)
  %i.frb = load ptr, ptr %i.y, align 8
  %i.frc = getelementptr inbounds nuw [2 x i8], ptr %i.frb, i64 %i.fqy
  store ptr %i.frc, ptr %i.y, align 8
  br label %bb.ajj

bb.aji:                                           ; preds = %bb.ajc
  %i.frd = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.frd, align 2
  %i.fre = getelementptr inbounds nuw i8, ptr %i.frd, i64 2
  store i16 117, ptr %i.fre, align 2
  %i.frf = load ptr, ptr %i.y, align 8
  %i.frg = getelementptr inbounds nuw i8, ptr %i.frf, i64 4
  store ptr %i.frg, ptr %i.y, align 8
  %i.frh = uitofp i16 %i.fpm to double
  %i.fri = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.frh, i32 noundef 16, ptr nonnull %i.d, i64 2200) #21 ; 2 uses
  %i.frj = extractvalue { i64, ptr } %i.fri, 0    ; 2 uses
  %i.frk = extractvalue { i64, ptr } %i.fri, 1
  %i.frl = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.frl, ptr noundef %i.frk, i64 noundef %i.frj)
  %i.frm = load ptr, ptr %i.y, align 8
  %i.frn = getelementptr inbounds nuw [2 x i8], ptr %i.frm, i64 %i.frj
  store ptr %i.frn, ptr %i.y, align 8
  br label %bb.ajj

bb.ajj:                                           ; preds = %bb.aji, %bb.ajh, %bb.ajg, %bb.ajf
  %.259.i.i.i348 = phi i32 [ %.057.i.i.i3413158, %bb.aji ], [ %.057.i.i.i3413158, %bb.ajh ], [ %i.fpx, %bb.ajf ], [ %.057.i.i.i3413158, %bb.ajg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.ajl

bb.ajk:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1212.thread2794
  %i.fro = zext i16 %i.fpm to i64
  %i.frp = shl nuw nsw i64 %i.fro, 3
  %i.frq = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.frp ; 2 uses
  %i.frr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.frq) #26 ; 2 uses
  %i.frs = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.frs, ptr noundef nonnull %i.frq, i64 noundef %i.frr)
  %i.frt = load ptr, ptr %i.y, align 8
  %i.fru = getelementptr inbounds nuw [2 x i8], ptr %i.frt, i64 %i.frr
  store ptr %i.fru, ptr %i.y, align 8
  br label %bb.ajl

bb.ajl:                                           ; preds = %bb.ajk, %bb.ajj
  %.3.i.i.i344 = phi i32 [ %.259.i.i.i348, %bb.ajj ], [ %.057.i.i.i3413158, %bb.ajk ] ; 2 uses
  %.156.i.i.i345 = add nuw i32 %.3.i.i.i344, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1212.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1212.thread: ; preds = %bb.ajb, %.lr.ph3160, %bb.ajl
  %.4.i.i.i346 = phi i32 [ %.3.i.i.i344, %bb.ajl ], [ %.057.i.i.i3413158, %bb.ajb ], [ %.057.i.i.i3413158, %.lr.ph3160 ]
  %.2.i.i.i347 = phi i32 [ %.156.i.i.i345, %bb.ajl ], [ %.055.i.i.i3423159, %bb.ajb ], [ %.055.i.i.i3423159, %.lr.ph3160 ] ; 3 uses
  %i.frv = add nuw i32 %.4.i.i.i346, 1            ; 2 uses
  %i.frw = icmp ugt i32 %i.fox, %i.frv
  br i1 %i.frw, label %.lr.ph3160, label %._crit_edge3161, !llvm.loop !350

bb.ajm:                                           ; preds = %._crit_edge3161
  %i.frx = zext i32 %.2.i.i.i347 to i64           ; 2 uses
  %i.fry = getelementptr inbounds nuw [2 x i8], ptr %i.fov, i64 %i.frx ; 17 uses
  %i.frz = sub nuw nsw i64 %i.foy, %i.frx         ; 3 uses
  %trunc2865 = trunc nuw i64 %i.frz to i32
  switch i32 %trunc2865, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1215 [
    i32 1, label %bb.ajn
    i32 2, label %bb.ajo
    i32 3, label %bb.ajp
    i32 4, label %bb.ajq
    i32 5, label %bb.ajr
    i32 6, label %bb.ajs
    i32 7, label %bb.ajt
    i32 8, label %bb.aju
    i32 9, label %bb.ajv
    i32 10, label %bb.ajw
    i32 11, label %bb.ajx
    i32 12, label %bb.ajy
    i32 13, label %bb.ajz
    i32 14, label %bb.aka
    i32 15, label %bb.akb
    i32 16, label %bb.akc
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1217
  ]

bb.ajn:                                           ; preds = %bb.ajm
  %i.fsa = load i16, ptr %i.fry, align 2
  store i16 %i.fsa, ptr %.pre3748, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1217

bb.ajo:                                           ; preds = %bb.ajm
  %i.fsb = load i32, ptr %i.fry, align 2
  store i32 %i.fsb, ptr %.pre3748, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1217

bb.ajp:                                           ; preds = %bb.ajm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre3748, ptr noundef nonnull align 2 dereferenceable(6) %i.fry, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1217

bb.ajq:                                           ; preds = %bb.ajm
  %i.fsc = load i64, ptr %i.fry, align 2
  store i64 %i.fsc, ptr %.pre3748, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1217

bb.ajr:                                           ; preds = %bb.ajm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre3748, ptr noundef nonnull align 2 dereferenceable(10) %i.fry, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1217

bb.ajs:                                           ; preds = %bb.ajm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre3748, ptr noundef nonnull align 2 dereferenceable(12) %i.fry, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1217

bb.ajt:                                           ; preds = %bb.ajm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre3748, ptr noundef nonnull align 2 dereferenceable(14) %i.fry, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1217

bb.aju:                                           ; preds = %bb.ajm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre3748, ptr noundef nonnull align 2 dereferenceable(16) %i.fry, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1217

bb.ajv:                                           ; preds = %bb.ajm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre3748, ptr noundef nonnull align 2 dereferenceable(18) %i.fry, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1217

bb.ajw:                                           ; preds = %bb.ajm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre3748, ptr noundef nonnull align 2 dereferenceable(20) %i.fry, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1217

bb.ajx:                                           ; preds = %bb.ajm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre3748, ptr noundef nonnull align 2 dereferenceable(22) %i.fry, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1217

bb.ajy:                                           ; preds = %bb.ajm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre3748, ptr noundef nonnull align 2 dereferenceable(24) %i.fry, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1217

bb.ajz:                                           ; preds = %bb.ajm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre3748, ptr noundef nonnull align 2 dereferenceable(26) %i.fry, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1217

bb.aka:                                           ; preds = %bb.ajm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre3748, ptr noundef nonnull align 2 dereferenceable(28) %i.fry, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1217

bb.akb:                                           ; preds = %bb.ajm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre3748, ptr noundef nonnull align 2 dereferenceable(30) %i.fry, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1217

bb.akc:                                           ; preds = %bb.ajm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre3748, ptr noundef nonnull align 2 dereferenceable(32) %i.fry, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1217

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1215: ; preds = %bb.ajm
  %.idx.i.i.i.i1216 = shl nuw nsw i64 %i.frz, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre3748, ptr nonnull align 2 %i.fry, i64 %.idx.i.i.i.i1216, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1217

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1217: ; preds = %bb.ajm, %bb.ajn, %bb.ajo, %bb.ajp, %bb.ajq, %bb.ajr, %bb.ajs, %bb.ajt, %bb.aju, %bb.ajv, %bb.ajw, %bb.ajx, %bb.ajy, %bb.ajz, %bb.aka, %bb.akb, %bb.akc, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1215
  %i.fsd = load ptr, ptr %i.y, align 8
  %i.fse = getelementptr inbounds nuw [2 x i8], ptr %i.fsd, i64 %i.frz
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i343

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i343: ; preds = %._crit_edge3161.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1217, %._crit_edge3161
  %i.fsf = phi ptr [ %i.fse, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1217 ], [ %.pre3748, %._crit_edge3161 ], [ %.pre37484250, %._crit_edge3161.thread ] ; 2 uses
  %i.fsg = getelementptr inbounds nuw i8, ptr %i.fsf, i64 2
  store ptr %i.fsg, ptr %i.y, align 8
  store i16 34, ptr %i.fsf, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i328.thread

bb.akd:                                           ; preds = %bb.agr, %bb.agr, %bb.agr, %bb.agr
  %i.fsh = getelementptr inbounds nuw i8, ptr %i.etd, i64 16
  %i.fsi = load i64, ptr %i.fsh, align 8
  %i.fsj = inttoptr i64 %i.fsi to ptr             ; 6 uses
  %i.fsk = load atomic volatile i64, ptr %i.etd monotonic, align 8
  %i.fsl = add i64 %i.fsk, 11
  %i.fsm = inttoptr i64 %i.fsl to ptr
  %i.fsn = load atomic volatile i16, ptr %i.fsm monotonic, align 2
  %i.fso = and i16 %i.fsn, 16
  %.not.i1218 = icmp eq i16 %i.fso, 0
  br i1 %.not.i1218, label %bb.akg, label %bb.ake

bb.ake:                                           ; preds = %bb.akd
  %i.fsp = load ptr, ptr %i.fsj, align 8
  %i.fsq = getelementptr inbounds nuw i8, ptr %i.fsp, i64 16
  %i.fsr = load ptr, ptr %i.fsq, align 8
  %i.fss = call noundef zeroext i1 %i.fsr(ptr noundef nonnull align 8 dereferenceable(8) %i.fsj) #21, !inline_history !80
  br i1 %i.fss, label %bb.akf, label %bb.akg

bb.akf:                                           ; preds = %bb.ake
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fsj) #21
  %i.fst = getelementptr inbounds nuw i8, ptr %i.fsj, i64 8
  %i.fsu = load ptr, ptr %i.fst, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1220

bb.akg:                                           ; preds = %bb.ake, %bb.akd
  %i.fsv = load ptr, ptr %i.fsj, align 8
  %i.fsw = getelementptr inbounds nuw i8, ptr %i.fsv, i64 72
  %i.fsx = load ptr, ptr %i.fsw, align 8
  %i.fsy = call noundef ptr %i.fsx(ptr noundef nonnull align 8 dereferenceable(16) %i.fsj) #21, !inline_history !80
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1220

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1220: ; preds = %bb.akf, %bb.akg
  %.0.i1219 = phi ptr [ %i.fsu, %bb.akf ], [ %i.fsy, %bb.akg ] ; 4 uses
  %i.fsz = getelementptr inbounds nuw i8, ptr %i.etd, i64 12
  %i.fta = load i32, ptr %i.fsz, align 4          ; 5 uses
  %i.ftb = zext i32 %i.fta to i64                 ; 2 uses
  %i.ftc = shl nuw nsw i64 %i.ftb, 3
  %i.ftd = or disjoint i64 %i.ftc, 2              ; 2 uses
  %i.fte = load ptr, ptr %i.x, align 8
  %i.ftf = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.ftg = ptrtoint ptr %i.fte to i64
  %i.fth = ptrtoint ptr %i.ftf to i64
  %i.fti = sub i64 %i.ftg, %i.fth
  %i.ftj = ashr exact i64 %i.fti, 1
  %.not.i1221 = icmp ugt i64 %i.ftd, %i.ftj
  br i1 %.not.i1221, label %bb.akh, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1222, !prof !6

bb.akh:                                           ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1220
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i64 noundef %i.ftd)
  %.pre3745 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1222

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1222: ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1220, %bb.akh
  %i.ftk = phi ptr [ %i.ftf, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1220 ], [ %.pre3745, %bb.akh ] ; 2 uses
  %i.ftl = getelementptr inbounds nuw i8, ptr %i.ftk, i64 2
  store ptr %i.ftl, ptr %i.y, align 8
  store i16 34, ptr %i.ftk, align 2
  %.not3531 = icmp eq i32 %i.fta, 0
  br i1 %.not3531, label %._crit_edge3156.thread, label %.lr.ph3155

._crit_edge3156.thread:                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1222
  %.pre37464252 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i339

._crit_edge3156:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1225.thread
  %i.ftm = icmp ugt i32 %i.fta, %.2.i.i71.i
  %.pre3746 = load ptr, ptr %i.y, align 8         ; 18 uses
  br i1 %i.ftm, label %bb.alz, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i339

.lr.ph3155:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1222, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1225.thread
  %.055.i.i66.i3154 = phi i32 [ %.2.i.i71.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1225.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1222 ] ; 4 uses
  %.057.i.i65.i3153 = phi i32 [ %i.fwf, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1225.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1222 ] ; 9 uses
  %i.ftn = zext i32 %.057.i.i65.i3153 to i64
  %i.fto = getelementptr inbounds nuw [2 x i8], ptr %.0.i1219, i64 %i.ftn
  %i.ftp = load i16, ptr %i.fto, align 2          ; 11 uses
  %i.ftq = and i16 %i.ftp, -2
  %or.cond.i1223 = icmp eq i16 %i.ftq, 32
  br i1 %or.cond.i1223, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1225.thread, label %bb.aki

bb.aki:                                           ; preds = %.lr.ph3155
  %i.ftr = icmp ugt i16 %i.ftp, 34
  %i.fts = icmp ne i16 %i.ftp, 92
  %or.cond5.i1224 = and i1 %i.ftr, %i.fts
  %i.ftt = add i16 %i.ftp, 8192
  %i.ftu = icmp ult i16 %i.ftt, -2048
  %or.cond2857 = and i1 %or.cond5.i1224, %i.ftu
  br i1 %or.cond2857, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1225.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1225.thread2795, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1225.thread2795: ; preds = %bb.aki
  %20 = icmp slt i16 %i.ftp, -8192
  %i.ftv = zext i32 %.055.i.i66.i3154 to i64
  %i.ftw = getelementptr inbounds nuw [2 x i8], ptr %.0.i1219, i64 %i.ftv ; 34 uses
  %i.ftx = sub i32 %.057.i.i65.i3153, %.055.i.i66.i3154 ; 3 uses
  %i.fty = zext i32 %i.ftx to i64                 ; 4 uses
  %i.ftz = load ptr, ptr %i.y, align 8            ; 34 uses
  br i1 %20, label %bb.akj, label %bb.alh

bb.akj:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1225.thread2795
  switch i32 %i.ftx, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1226 [
    i32 1, label %bb.akk
    i32 2, label %bb.akl
    i32 3, label %bb.akm
    i32 4, label %bb.akn
    i32 5, label %bb.ako
    i32 6, label %bb.akp
    i32 7, label %bb.akq
    i32 8, label %bb.akr
    i32 9, label %bb.aks
    i32 10, label %bb.akt
    i32 11, label %bb.aku
    i32 12, label %bb.akv
    i32 13, label %bb.akw
    i32 14, label %bb.akx
    i32 15, label %bb.aky
    i32 16, label %bb.akz
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1228
  ]

bb.akk:                                           ; preds = %bb.akj
  %i.fua = load i16, ptr %i.ftw, align 2
  store i16 %i.fua, ptr %i.ftz, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1228

bb.akl:                                           ; preds = %bb.akj
  %i.fub = load i32, ptr %i.ftw, align 2
  store i32 %i.fub, ptr %i.ftz, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1228

bb.akm:                                           ; preds = %bb.akj
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.ftz, ptr noundef nonnull align 2 dereferenceable(6) %i.ftw, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1228

bb.akn:                                           ; preds = %bb.akj
  %i.fuc = load i64, ptr %i.ftw, align 2
  store i64 %i.fuc, ptr %i.ftz, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1228

bb.ako:                                           ; preds = %bb.akj
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.ftz, ptr noundef nonnull align 2 dereferenceable(10) %i.ftw, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1228

bb.akp:                                           ; preds = %bb.akj
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.ftz, ptr noundef nonnull align 2 dereferenceable(12) %i.ftw, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1228

bb.akq:                                           ; preds = %bb.akj
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ftz, ptr noundef nonnull align 2 dereferenceable(14) %i.ftw, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1228

bb.akr:                                           ; preds = %bb.akj
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ftz, ptr noundef nonnull align 2 dereferenceable(16) %i.ftw, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1228

bb.aks:                                           ; preds = %bb.akj
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ftz, ptr noundef nonnull align 2 dereferenceable(18) %i.ftw, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1228

bb.akt:                                           ; preds = %bb.akj
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.ftz, ptr noundef nonnull align 2 dereferenceable(20) %i.ftw, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1228

bb.aku:                                           ; preds = %bb.akj
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.ftz, ptr noundef nonnull align 2 dereferenceable(22) %i.ftw, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1228

bb.akv:                                           ; preds = %bb.akj
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.ftz, ptr noundef nonnull align 2 dereferenceable(24) %i.ftw, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1228

bb.akw:                                           ; preds = %bb.akj
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.ftz, ptr noundef nonnull align 2 dereferenceable(26) %i.ftw, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1228

bb.akx:                                           ; preds = %bb.akj
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %i.ftz, ptr noundef nonnull align 2 dereferenceable(28) %i.ftw, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1228

bb.aky:                                           ; preds = %bb.akj
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.ftz, ptr noundef nonnull align 2 dereferenceable(30) %i.ftw, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1228

bb.akz:                                           ; preds = %bb.akj
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.ftz, ptr noundef nonnull align 2 dereferenceable(32) %i.ftw, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1228

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1226: ; preds = %bb.akj
  %.idx.i.i.i.i1227 = shl nuw nsw i64 %i.fty, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ftz, ptr nonnull align 2 %i.ftw, i64 %.idx.i.i.i.i1227, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1228

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1228: ; preds = %bb.akj, %bb.akk, %bb.akl, %bb.akm, %bb.akn, %bb.ako, %bb.akp, %bb.akq, %bb.akr, %bb.aks, %bb.akt, %bb.aku, %bb.akv, %bb.akw, %bb.akx, %bb.aky, %bb.akz, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1226
  %i.fud = load ptr, ptr %i.y, align 8
  %i.fue = getelementptr inbounds nuw [2 x i8], ptr %i.fud, i64 %i.fty ; 9 uses
  store ptr %i.fue, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.fuf = icmp samesign ult i16 %i.ftp, -9216
  br i1 %i.fuf, label %bb.ala, label %bb.alf

bb.ala:                                           ; preds = %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1228
  %i.fug = add nuw i32 %.057.i.i65.i3153, 1       ; 3 uses
  %i.fuh = icmp ugt i32 %i.fta, %i.fug
  br i1 %i.fuh, label %bb.alb, label %bb.ale

bb.alb:                                           ; preds = %bb.ala
  %i.fui = zext i32 %i.fug to i64
  %i.fuj = getelementptr inbounds nuw [2 x i8], ptr %.0.i1219, i64 %i.fui
  %i.fuk = load i16, ptr %i.fuj, align 2          ; 2 uses
  %i.ful = and i16 %i.fuk, -1024
  %i.fum = icmp eq i16 %i.ful, -9216
  br i1 %i.fum, label %bb.alc, label %bb.ald

bb.alc:                                           ; preds = %bb.alb
  %i.fun = getelementptr inbounds nuw i8, ptr %i.fue, i64 2
  store ptr %i.fun, ptr %i.y, align 8
  store i16 %i.ftp, ptr %i.fue, align 2
  %i.fuo = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.fup = getelementptr inbounds nuw i8, ptr %i.fuo, i64 2
  store ptr %i.fup, ptr %i.y, align 8
  store i16 %i.fuk, ptr %i.fuo, align 2
  br label %bb.alg

bb.ald:                                           ; preds = %bb.alb
  store i16 92, ptr %i.fue, align 2
  %i.fuq = getelementptr inbounds nuw i8, ptr %i.fue, i64 2
  store i16 117, ptr %i.fuq, align 2
  %i.fur = load ptr, ptr %i.y, align 8
  %i.fus = getelementptr inbounds nuw i8, ptr %i.fur, i64 4
  store ptr %i.fus, ptr %i.y, align 8
  %i.fut = uitofp i16 %i.ftp to double
  %i.fuu = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.fut, i32 noundef 16, ptr nonnull %i.b, i64 2200) #21 ; 2 uses
  %i.fuv = extractvalue { i64, ptr } %i.fuu, 0    ; 2 uses
  %i.fuw = extractvalue { i64, ptr } %i.fuu, 1
  %i.fux = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.fux, ptr noundef %i.fuw, i64 noundef %i.fuv)
  %i.fuy = load ptr, ptr %i.y, align 8
  %i.fuz = getelementptr inbounds nuw [2 x i8], ptr %i.fuy, i64 %i.fuv
  store ptr %i.fuz, ptr %i.y, align 8
  br label %bb.alg

bb.ale:                                           ; preds = %bb.ala
  store i16 92, ptr %i.fue, align 2
  %i.fva = getelementptr inbounds nuw i8, ptr %i.fue, i64 2
  store i16 117, ptr %i.fva, align 2
  %i.fvb = load ptr, ptr %i.y, align 8
  %i.fvc = getelementptr inbounds nuw i8, ptr %i.fvb, i64 4
  store ptr %i.fvc, ptr %i.y, align 8
  %i.fvd = uitofp i16 %i.ftp to double
  %i.fve = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.fvd, i32 noundef 16, ptr nonnull %i.b, i64 2200) #21 ; 2 uses
  %i.fvf = extractvalue { i64, ptr } %i.fve, 0    ; 2 uses
  %i.fvg = extractvalue { i64, ptr } %i.fve, 1
  %i.fvh = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.fvh, ptr noundef %i.fvg, i64 noundef %i.fvf)
  %i.fvi = load ptr, ptr %i.y, align 8
  %i.fvj = getelementptr inbounds nuw [2 x i8], ptr %i.fvi, i64 %i.fvf
  store ptr %i.fvj, ptr %i.y, align 8
  br label %bb.alg

bb.alf:                                           ; preds = %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1228
  store i16 92, ptr %i.fue, align 2
  %i.fvk = getelementptr inbounds nuw i8, ptr %i.fue, i64 2
  store i16 117, ptr %i.fvk, align 2
  %i.fvl = load ptr, ptr %i.y, align 8
  %i.fvm = getelementptr inbounds nuw i8, ptr %i.fvl, i64 4
  store ptr %i.fvm, ptr %i.y, align 8
  %i.fvn = uitofp i16 %i.ftp to double
  %i.fvo = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.fvn, i32 noundef 16, ptr nonnull %i.b, i64 2200) #21 ; 2 uses
  %i.fvp = extractvalue { i64, ptr } %i.fvo, 0    ; 2 uses
  %i.fvq = extractvalue { i64, ptr } %i.fvo, 1
  %i.fvr = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.fvr, ptr noundef %i.fvq, i64 noundef %i.fvp)
  %i.fvs = load ptr, ptr %i.y, align 8
  %i.fvt = getelementptr inbounds nuw [2 x i8], ptr %i.fvs, i64 %i.fvp
  store ptr %i.fvt, ptr %i.y, align 8
  br label %bb.alg

bb.alg:                                           ; preds = %bb.alf, %bb.ale, %bb.ald, %bb.alc
  %.259.i.i73.i = phi i32 [ %.057.i.i65.i3153, %bb.alf ], [ %.057.i.i65.i3153, %bb.ale ], [ %i.fug, %bb.alc ], [ %.057.i.i65.i3153, %bb.ald ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.aly

bb.alh:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1225.thread2795
  switch i32 %i.ftx, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1231 [
    i32 1, label %bb.ali
    i32 2, label %bb.alj
    i32 3, label %bb.alk
    i32 4, label %bb.all
    i32 5, label %bb.alm
    i32 6, label %bb.aln
    i32 7, label %bb.alo
    i32 8, label %bb.alp
    i32 9, label %bb.alq
    i32 10, label %bb.alr
    i32 11, label %bb.als
    i32 12, label %bb.alt
    i32 13, label %bb.alu
    i32 14, label %bb.alv
end_hunk_9
begin_hunk_10_@_ZN2v88internal19FastJsonStringifierItE15SerializeObjectENS0_18ContinuationRecordERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS5_2EEEE:bb.a
    i32 7, label %bb.amg
    i32 8, label %bb.amh
    i32 9, label %bb.ami
    i32 10, label %bb.amj
    i32 11, label %bb.amk
    i32 12, label %bb.aml
    i32 13, label %bb.amm
    i32 14, label %bb.amn
    i32 15, label %bb.amo
    i32 16, label %bb.amp
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1236
  ]

bb.ama:                                           ; preds = %bb.alz
  %i.fwk = load i16, ptr %i.fwi, align 2
  store i16 %i.fwk, ptr %.pre3746, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1236

bb.amb:                                           ; preds = %bb.alz
  %i.fwl = load i32, ptr %i.fwi, align 2
  store i32 %i.fwl, ptr %.pre3746, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1236

bb.amc:                                           ; preds = %bb.alz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre3746, ptr noundef nonnull align 2 dereferenceable(6) %i.fwi, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1236

bb.amd:                                           ; preds = %bb.alz
  %i.fwm = load i64, ptr %i.fwi, align 2
  store i64 %i.fwm, ptr %.pre3746, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1236

bb.ame:                                           ; preds = %bb.alz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre3746, ptr noundef nonnull align 2 dereferenceable(10) %i.fwi, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1236

bb.amf:                                           ; preds = %bb.alz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre3746, ptr noundef nonnull align 2 dereferenceable(12) %i.fwi, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1236

bb.amg:                                           ; preds = %bb.alz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre3746, ptr noundef nonnull align 2 dereferenceable(14) %i.fwi, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1236

bb.amh:                                           ; preds = %bb.alz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre3746, ptr noundef nonnull align 2 dereferenceable(16) %i.fwi, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1236

bb.ami:                                           ; preds = %bb.alz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre3746, ptr noundef nonnull align 2 dereferenceable(18) %i.fwi, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1236

bb.amj:                                           ; preds = %bb.alz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre3746, ptr noundef nonnull align 2 dereferenceable(20) %i.fwi, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1236

bb.amk:                                           ; preds = %bb.alz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre3746, ptr noundef nonnull align 2 dereferenceable(22) %i.fwi, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1236

bb.aml:                                           ; preds = %bb.alz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre3746, ptr noundef nonnull align 2 dereferenceable(24) %i.fwi, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1236

bb.amm:                                           ; preds = %bb.alz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre3746, ptr noundef nonnull align 2 dereferenceable(26) %i.fwi, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1236

bb.amn:                                           ; preds = %bb.alz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre3746, ptr noundef nonnull align 2 dereferenceable(28) %i.fwi, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1236

bb.amo:                                           ; preds = %bb.alz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre3746, ptr noundef nonnull align 2 dereferenceable(30) %i.fwi, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1236

bb.amp:                                           ; preds = %bb.alz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre3746, ptr noundef nonnull align 2 dereferenceable(32) %i.fwi, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1236

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1234: ; preds = %bb.alz
  %.idx.i.i.i.i1235 = shl nuw nsw i64 %i.fwj, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre3746, ptr nonnull align 2 %i.fwi, i64 %.idx.i.i.i.i1235, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1236

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1236: ; preds = %bb.alz, %bb.ama, %bb.amb, %bb.amc, %bb.amd, %bb.ame, %bb.amf, %bb.amg, %bb.amh, %bb.ami, %bb.amj, %bb.amk, %bb.aml, %bb.amm, %bb.amn, %bb.amo, %bb.amp, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1234
  %i.fwn = load ptr, ptr %i.y, align 8
  %i.fwo = getelementptr inbounds nuw [2 x i8], ptr %i.fwn, i64 %i.fwj
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i339

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i339: ; preds = %._crit_edge3156.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1236, %._crit_edge3156
  %i.fwp = phi ptr [ %i.fwo, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1236 ], [ %.pre3746, %._crit_edge3156 ], [ %.pre37464252, %._crit_edge3156.thread ] ; 2 uses
  %i.fwq = getelementptr inbounds nuw i8, ptr %i.fwp, i64 2
  store ptr %i.fwq, ptr %i.y, align 8
  store i16 34, ptr %i.fwp, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i328.thread

bb.amq:                                           ; preds = %bb.agr
  %i.fwr = getelementptr inbounds nuw i8, ptr %i.etd, i64 16
  %i.fws = load i64, ptr %i.fwr, align 8
  %i.fwt = add i64 %i.fws, -1
  %i.fwu = inttoptr i64 %i.fwt to ptr             ; 5 uses
  %i.fwv = load atomic volatile i64, ptr %i.fwu monotonic, align 8
  %i.fww = add i64 %i.fwv, 11
  %i.fwx = inttoptr i64 %i.fww to ptr
  %i.fwy = load atomic volatile i16, ptr %i.fwx monotonic, align 2
  %i.fwz = and i16 %i.fwy, -121
  %i.fxa = icmp eq i16 %i.fwz, 2
  %i.fxb = getelementptr inbounds nuw i8, ptr %i.fwu, i64 16 ; 5 uses
  br i1 %i.fxa, label %bb.amr, label %bb.any

bb.amr:                                           ; preds = %bb.amq
  %i.fxc = load i64, ptr %i.fxb, align 8
  %i.fxd = inttoptr i64 %i.fxc to ptr             ; 6 uses
  %i.fxe = load atomic volatile i64, ptr %i.fwu monotonic, align 8
  %i.fxf = add i64 %i.fxe, 11
  %i.fxg = inttoptr i64 %i.fxf to ptr
  %i.fxh = load atomic volatile i16, ptr %i.fxg monotonic, align 2
  %i.fxi = and i16 %i.fxh, 16
  %.not.i1238 = icmp eq i16 %i.fxi, 0
  br i1 %.not.i1238, label %bb.amu, label %bb.ams

bb.ams:                                           ; preds = %bb.amr
  %i.fxj = load ptr, ptr %i.fxd, align 8
  %i.fxk = getelementptr inbounds nuw i8, ptr %i.fxj, i64 16
  %i.fxl = load ptr, ptr %i.fxk, align 8
  %i.fxm = call noundef zeroext i1 %i.fxl(ptr noundef nonnull align 8 dereferenceable(8) %i.fxd) #21, !inline_history !80
  br i1 %i.fxm, label %bb.amt, label %bb.amu

bb.amt:                                           ; preds = %bb.ams
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fxd) #21
  %i.fxn = getelementptr inbounds nuw i8, ptr %i.fxd, i64 8
  %i.fxo = load ptr, ptr %i.fxn, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1240

bb.amu:                                           ; preds = %bb.ams, %bb.amr
  %i.fxp = load ptr, ptr %i.fxd, align 8
  %i.fxq = getelementptr inbounds nuw i8, ptr %i.fxp, i64 72
  %i.fxr = load ptr, ptr %i.fxq, align 8
  %i.fxs = call noundef ptr %i.fxr(ptr noundef nonnull align 8 dereferenceable(16) %i.fxd) #21, !inline_history !80
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1240

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1240: ; preds = %bb.amt, %bb.amu
  %.0.i1239 = phi ptr [ %i.fxo, %bb.amt ], [ %i.fxs, %bb.amu ] ; 4 uses
  %i.fxt = getelementptr inbounds nuw i8, ptr %i.fwu, i64 12
  %i.fxu = load i32, ptr %i.fxt, align 4          ; 5 uses
  %i.fxv = zext i32 %i.fxu to i64                 ; 2 uses
  %i.fxw = shl nuw nsw i64 %i.fxv, 3
  %i.fxx = or disjoint i64 %i.fxw, 2              ; 2 uses
  %i.fxy = load ptr, ptr %i.x, align 8
  %i.fxz = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.fya = ptrtoint ptr %i.fxy to i64
  %i.fyb = ptrtoint ptr %i.fxz to i64
  %i.fyc = sub i64 %i.fya, %i.fyb
  %i.fyd = ashr exact i64 %i.fyc, 1
  %.not.i1241 = icmp ugt i64 %i.fxx, %i.fyd
  br i1 %.not.i1241, label %bb.amv, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1242, !prof !6

bb.amv:                                           ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1240
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i64 noundef %i.fxx)
  %.pre3743 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1242

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1242: ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1240, %bb.amv
  %i.fye = phi ptr [ %i.fxz, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit1240 ], [ %.pre3743, %bb.amv ] ; 2 uses
  %i.fyf = getelementptr inbounds nuw i8, ptr %i.fye, i64 2
  store ptr %i.fyf, ptr %i.y, align 8
  store i16 34, ptr %i.fye, align 2
  %.not3530 = icmp eq i32 %i.fxu, 0
  br i1 %.not3530, label %._crit_edge3151.thread, label %.lr.ph3150

._crit_edge3151.thread:                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1242
  %.pre37444254 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit83.i

._crit_edge3151:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1245.thread
  %i.fyg = icmp ugt i32 %i.fxu, %.2.i.i80.i
  %.pre3744 = load ptr, ptr %i.y, align 8         ; 18 uses
  br i1 %i.fyg, label %bb.anh, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit83.i

.lr.ph3150:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1242, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1245.thread
  %.055.i.i75.i3149 = phi i32 [ %.2.i.i80.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1245.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1242 ] ; 4 uses
  %.057.i.i74.i3148 = phi i32 [ %i.gas, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1245.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1242 ] ; 9 uses
  %i.fyh = zext i32 %.057.i.i74.i3148 to i64
  %i.fyi = getelementptr inbounds nuw [2 x i8], ptr %.0.i1239, i64 %i.fyh
  %i.fyj = load i16, ptr %i.fyi, align 2          ; 11 uses
  %i.fyk = and i16 %i.fyj, -2
  %or.cond.i1243 = icmp eq i16 %i.fyk, 32
  br i1 %or.cond.i1243, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1245.thread, label %bb.amw

bb.amw:                                           ; preds = %.lr.ph3150
  %i.fyl = icmp ugt i16 %i.fyj, 34
  %i.fym = icmp ne i16 %i.fyj, 92
  %or.cond5.i1244 = and i1 %i.fyl, %i.fym
  %i.fyn = add i16 %i.fyj, 8192
  %i.fyo = icmp ult i16 %i.fyn, -2048
  %or.cond2859 = and i1 %or.cond5.i1244, %i.fyo
  br i1 %or.cond2859, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1245.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1245.thread2796, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1245.thread2796: ; preds = %bb.amw
  %21 = icmp slt i16 %i.fyj, -8192
  %i.fyp = zext i32 %.055.i.i75.i3149 to i64
  %i.fyq = getelementptr inbounds nuw [2 x i8], ptr %.0.i1239, i64 %i.fyp
  %i.fyr = sub i32 %.057.i.i74.i3148, %.055.i.i75.i3149
  %i.fys = zext i32 %i.fyr to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.z, ptr noundef %i.fyq, i64 noundef %i.fys)
  br i1 %21, label %bb.amx, label %bb.anf

bb.amx:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1245.thread2796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.fyt = icmp samesign ult i16 %i.fyj, -9216
  br i1 %i.fyt, label %bb.amy, label %bb.and

bb.amy:                                           ; preds = %bb.amx
  %i.fyu = add nuw i32 %.057.i.i74.i3148, 1       ; 3 uses
  %i.fyv = icmp ugt i32 %i.fxu, %i.fyu
  br i1 %i.fyv, label %bb.amz, label %bb.anc

bb.amz:                                           ; preds = %bb.amy
  %i.fyw = zext i32 %i.fyu to i64
  %i.fyx = getelementptr inbounds nuw [2 x i8], ptr %.0.i1239, i64 %i.fyw
  %i.fyy = load i16, ptr %i.fyx, align 2          ; 2 uses
  %i.fyz = and i16 %i.fyy, -1024
  %i.fza = icmp eq i16 %i.fyz, -9216
  %i.fzb = load ptr, ptr %i.y, align 8            ; 4 uses
  br i1 %i.fza, label %bb.ana, label %bb.anb

bb.ana:                                           ; preds = %bb.amz
  %i.fzc = getelementptr inbounds nuw i8, ptr %i.fzb, i64 2
  store ptr %i.fzc, ptr %i.y, align 8
  store i16 %i.fyj, ptr %i.fzb, align 2
  %i.fzd = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.fze = getelementptr inbounds nuw i8, ptr %i.fzd, i64 2
  store ptr %i.fze, ptr %i.y, align 8
  store i16 %i.fyy, ptr %i.fzd, align 2
  br label %bb.ane

bb.anb:                                           ; preds = %bb.amz
  store i16 92, ptr %i.fzb, align 2
  %i.fzf = getelementptr inbounds nuw i8, ptr %i.fzb, i64 2
  store i16 117, ptr %i.fzf, align 2
  %i.fzg = load ptr, ptr %i.y, align 8
  %i.fzh = getelementptr inbounds nuw i8, ptr %i.fzg, i64 4
  store ptr %i.fzh, ptr %i.y, align 8
  %i.fzi = uitofp i16 %i.fyj to double
  %i.fzj = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.fzi, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.fzk = extractvalue { i64, ptr } %i.fzj, 0    ; 2 uses
  %i.fzl = extractvalue { i64, ptr } %i.fzj, 1
  %i.fzm = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.fzm, ptr noundef %i.fzl, i64 noundef %i.fzk)
  %i.fzn = load ptr, ptr %i.y, align 8
  %i.fzo = getelementptr inbounds nuw [2 x i8], ptr %i.fzn, i64 %i.fzk
  store ptr %i.fzo, ptr %i.y, align 8
  br label %bb.ane

bb.anc:                                           ; preds = %bb.amy
  %i.fzp = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.fzp, align 2
  %i.fzq = getelementptr inbounds nuw i8, ptr %i.fzp, i64 2
  store i16 117, ptr %i.fzq, align 2
  %i.fzr = load ptr, ptr %i.y, align 8
  %i.fzs = getelementptr inbounds nuw i8, ptr %i.fzr, i64 4
  store ptr %i.fzs, ptr %i.y, align 8
  %i.fzt = uitofp i16 %i.fyj to double
  %i.fzu = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.fzt, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.fzv = extractvalue { i64, ptr } %i.fzu, 0    ; 2 uses
  %i.fzw = extractvalue { i64, ptr } %i.fzu, 1
  %i.fzx = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.fzx, ptr noundef %i.fzw, i64 noundef %i.fzv)
  %i.fzy = load ptr, ptr %i.y, align 8
  %i.fzz = getelementptr inbounds nuw [2 x i8], ptr %i.fzy, i64 %i.fzv
  store ptr %i.fzz, ptr %i.y, align 8
  br label %bb.ane

bb.and:                                           ; preds = %bb.amx
  %i.gaa = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.gaa, align 2
  %i.gab = getelementptr inbounds nuw i8, ptr %i.gaa, i64 2
  store i16 117, ptr %i.gab, align 2
  %i.gac = load ptr, ptr %i.y, align 8
  %i.gad = getelementptr inbounds nuw i8, ptr %i.gac, i64 4
  store ptr %i.gad, ptr %i.y, align 8
  %i.gae = uitofp i16 %i.fyj to double
  %i.gaf = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.gae, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.gag = extractvalue { i64, ptr } %i.gaf, 0    ; 2 uses
  %i.gah = extractvalue { i64, ptr } %i.gaf, 1
  %i.gai = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.gai, ptr noundef %i.gah, i64 noundef %i.gag)
  %i.gaj = load ptr, ptr %i.y, align 8
  %i.gak = getelementptr inbounds nuw [2 x i8], ptr %i.gaj, i64 %i.gag
  store ptr %i.gak, ptr %i.y, align 8
  br label %bb.ane

bb.ane:                                           ; preds = %bb.and, %bb.anc, %bb.anb, %bb.ana
  %.259.i.i82.i = phi i32 [ %.057.i.i74.i3148, %bb.and ], [ %.057.i.i74.i3148, %bb.anc ], [ %i.fyu, %bb.ana ], [ %.057.i.i74.i3148, %bb.anb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ang

bb.anf:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1245.thread2796
  %i.gal = zext i16 %i.fyj to i64
  %i.gam = shl nuw nsw i64 %i.gal, 3
  %i.gan = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.gam ; 2 uses
  %i.gao = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gan) #26 ; 2 uses
  %i.gap = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.gap, ptr noundef nonnull %i.gan, i64 noundef %i.gao)
  %i.gaq = load ptr, ptr %i.y, align 8
  %i.gar = getelementptr inbounds nuw [2 x i8], ptr %i.gaq, i64 %i.gao
  store ptr %i.gar, ptr %i.y, align 8
  br label %bb.ang

bb.ang:                                           ; preds = %bb.anf, %bb.ane
  %.3.i.i77.i = phi i32 [ %.259.i.i82.i, %bb.ane ], [ %.057.i.i74.i3148, %bb.anf ] ; 2 uses
  %.156.i.i78.i = add nuw i32 %.3.i.i77.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1245.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1245.thread: ; preds = %bb.amw, %.lr.ph3150, %bb.ang
  %.4.i.i79.i = phi i32 [ %.3.i.i77.i, %bb.ang ], [ %.057.i.i74.i3148, %bb.amw ], [ %.057.i.i74.i3148, %.lr.ph3150 ]
  %.2.i.i80.i = phi i32 [ %.156.i.i78.i, %bb.ang ], [ %.055.i.i75.i3149, %bb.amw ], [ %.055.i.i75.i3149, %.lr.ph3150 ] ; 3 uses
  %i.gas = add nuw i32 %.4.i.i79.i, 1             ; 2 uses
  %i.gat = icmp ugt i32 %i.fxu, %i.gas
  br i1 %i.gat, label %.lr.ph3150, label %._crit_edge3151, !llvm.loop !350

bb.anh:                                           ; preds = %._crit_edge3151
  %i.gau = zext i32 %.2.i.i80.i to i64            ; 2 uses
  %i.gav = getelementptr inbounds nuw [2 x i8], ptr %.0.i1239, i64 %i.gau ; 17 uses
  %i.gaw = sub nuw nsw i64 %i.fxv, %i.gau         ; 3 uses
  %trunc2863 = trunc nuw i64 %i.gaw to i32
  switch i32 %trunc2863, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1248 [
    i32 1, label %bb.ani
    i32 2, label %bb.anj
    i32 3, label %bb.ank
    i32 4, label %bb.anl
    i32 5, label %bb.anm
    i32 6, label %bb.ann
    i32 7, label %bb.ano
    i32 8, label %bb.anp
    i32 9, label %bb.anq
    i32 10, label %bb.anr
    i32 11, label %bb.ans
    i32 12, label %bb.ant
    i32 13, label %bb.anu
    i32 14, label %bb.anv
    i32 15, label %bb.anw
    i32 16, label %bb.anx
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1250
  ]

bb.ani:                                           ; preds = %bb.anh
  %i.gax = load i16, ptr %i.gav, align 2
  store i16 %i.gax, ptr %.pre3744, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1250

bb.anj:                                           ; preds = %bb.anh
  %i.gay = load i32, ptr %i.gav, align 2
  store i32 %i.gay, ptr %.pre3744, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1250

bb.ank:                                           ; preds = %bb.anh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre3744, ptr noundef nonnull align 2 dereferenceable(6) %i.gav, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1250

bb.anl:                                           ; preds = %bb.anh
  %i.gaz = load i64, ptr %i.gav, align 2
  store i64 %i.gaz, ptr %.pre3744, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1250

bb.anm:                                           ; preds = %bb.anh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre3744, ptr noundef nonnull align 2 dereferenceable(10) %i.gav, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1250

bb.ann:                                           ; preds = %bb.anh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre3744, ptr noundef nonnull align 2 dereferenceable(12) %i.gav, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1250

bb.ano:                                           ; preds = %bb.anh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre3744, ptr noundef nonnull align 2 dereferenceable(14) %i.gav, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1250

bb.anp:                                           ; preds = %bb.anh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre3744, ptr noundef nonnull align 2 dereferenceable(16) %i.gav, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1250

bb.anq:                                           ; preds = %bb.anh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre3744, ptr noundef nonnull align 2 dereferenceable(18) %i.gav, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1250

bb.anr:                                           ; preds = %bb.anh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre3744, ptr noundef nonnull align 2 dereferenceable(20) %i.gav, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1250

bb.ans:                                           ; preds = %bb.anh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre3744, ptr noundef nonnull align 2 dereferenceable(22) %i.gav, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1250

bb.ant:                                           ; preds = %bb.anh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre3744, ptr noundef nonnull align 2 dereferenceable(24) %i.gav, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1250

bb.anu:                                           ; preds = %bb.anh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre3744, ptr noundef nonnull align 2 dereferenceable(26) %i.gav, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1250

bb.anv:                                           ; preds = %bb.anh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre3744, ptr noundef nonnull align 2 dereferenceable(28) %i.gav, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1250

bb.anw:                                           ; preds = %bb.anh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre3744, ptr noundef nonnull align 2 dereferenceable(30) %i.gav, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1250

bb.anx:                                           ; preds = %bb.anh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre3744, ptr noundef nonnull align 2 dereferenceable(32) %i.gav, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1250

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1248: ; preds = %bb.anh
  %.idx.i.i.i.i1249 = shl nuw nsw i64 %i.gaw, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre3744, ptr nonnull align 2 %i.gav, i64 %.idx.i.i.i.i1249, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1250

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1250: ; preds = %bb.anh, %bb.ani, %bb.anj, %bb.ank, %bb.anl, %bb.anm, %bb.ann, %bb.ano, %bb.anp, %bb.anq, %bb.anr, %bb.ans, %bb.ant, %bb.anu, %bb.anv, %bb.anw, %bb.anx, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1248
  %i.gba = load ptr, ptr %i.y, align 8
  %i.gbb = getelementptr inbounds nuw [2 x i8], ptr %i.gba, i64 %i.gaw
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit83.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit83.i: ; preds = %._crit_edge3151.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1250, %._crit_edge3151
  %i.gbc = phi ptr [ %i.gbb, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1250 ], [ %.pre3744, %._crit_edge3151 ], [ %.pre37444254, %._crit_edge3151.thread ] ; 2 uses
  %i.gbd = getelementptr inbounds nuw i8, ptr %i.gbc, i64 2
  store ptr %i.gbd, ptr %i.y, align 8
  store i16 34, ptr %i.gbc, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i328.thread

bb.any:                                           ; preds = %bb.amq
  %i.gbe = getelementptr inbounds nuw i8, ptr %i.fwu, i64 12
  %i.gbf = load i32, ptr %i.gbe, align 4          ; 5 uses
  %i.gbg = zext i32 %i.gbf to i64                 ; 2 uses
  %i.gbh = shl nuw nsw i64 %i.gbg, 3
  %i.gbi = or disjoint i64 %i.gbh, 2              ; 2 uses
  %i.gbj = load ptr, ptr %i.x, align 8
  %i.gbk = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.gbl = ptrtoint ptr %i.gbj to i64
  %i.gbm = ptrtoint ptr %i.gbk to i64
  %i.gbn = sub i64 %i.gbl, %i.gbm
  %i.gbo = ashr exact i64 %i.gbn, 1
  %.not.i1251 = icmp ugt i64 %i.gbi, %i.gbo
  br i1 %.not.i1251, label %bb.anz, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1252, !prof !6

bb.anz:                                           ; preds = %bb.any
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i64 noundef %i.gbi)
  %.pre3741 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1252

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1252: ; preds = %bb.any, %bb.anz
  %i.gbp = phi ptr [ %i.gbk, %bb.any ], [ %.pre3741, %bb.anz ] ; 2 uses
  %i.gbq = getelementptr inbounds nuw i8, ptr %i.gbp, i64 2
  store ptr %i.gbq, ptr %i.y, align 8
  store i16 34, ptr %i.gbp, align 2
  %.not3529 = icmp eq i32 %i.gbf, 0
  br i1 %.not3529, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1252
  %.pre37424256 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit64.i

._crit_edge:                                      ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1255.thread
  %i.gbr = icmp ugt i32 %i.gbf, %.2.i.i61.i
  %.pre3742 = load ptr, ptr %i.y, align 8         ; 18 uses
  br i1 %i.gbr, label %bb.aol, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit64.i

.lr.ph:                                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1252, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1255.thread
  %.055.i.i56.i3147 = phi i32 [ %.2.i.i61.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1255.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1252 ] ; 4 uses
  %.057.i.i55.i3146 = phi i32 [ %i.ged, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1255.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1252 ] ; 9 uses
  %i.gbs = zext i32 %.057.i.i55.i3146 to i64
  %i.gbt = getelementptr inbounds nuw [2 x i8], ptr %i.fxb, i64 %i.gbs
  %i.gbu = load i16, ptr %i.gbt, align 2          ; 11 uses
  %i.gbv = and i16 %i.gbu, -2
  %or.cond.i1253 = icmp eq i16 %i.gbv, 32
  br i1 %or.cond.i1253, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1255.thread, label %bb.aoa

bb.aoa:                                           ; preds = %.lr.ph
  %i.gbw = icmp ugt i16 %i.gbu, 34
  %i.gbx = icmp ne i16 %i.gbu, 92
  %or.cond5.i1254 = and i1 %i.gbw, %i.gbx
  %i.gby = add i16 %i.gbu, 8192
  %i.gbz = icmp ult i16 %i.gby, -2048
  %or.cond2861 = and i1 %or.cond5.i1254, %i.gbz
  br i1 %or.cond2861, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1255.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1255.thread2797, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1255.thread2797: ; preds = %bb.aoa
  %22 = icmp slt i16 %i.gbu, -8192
  %i.gca = zext i32 %.055.i.i56.i3147 to i64
  %i.gcb = getelementptr inbounds nuw [2 x i8], ptr %i.fxb, i64 %i.gca
  %i.gcc = sub i32 %.057.i.i55.i3146, %.055.i.i56.i3147
  %i.gcd = zext i32 %i.gcc to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.z, ptr noundef nonnull %i.gcb, i64 noundef %i.gcd)
  br i1 %22, label %bb.aob, label %bb.aoj

bb.aob:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1255.thread2797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.gce = icmp samesign ult i16 %i.gbu, -9216
  br i1 %i.gce, label %bb.aoc, label %bb.aoh

bb.aoc:                                           ; preds = %bb.aob
  %i.gcf = add nuw i32 %.057.i.i55.i3146, 1       ; 3 uses
  %i.gcg = icmp ugt i32 %i.gbf, %i.gcf
  br i1 %i.gcg, label %bb.aod, label %bb.aog

bb.aod:                                           ; preds = %bb.aoc
  %i.gch = zext i32 %i.gcf to i64
  %i.gci = getelementptr inbounds nuw [2 x i8], ptr %i.fxb, i64 %i.gch
  %i.gcj = load i16, ptr %i.gci, align 2          ; 2 uses
  %i.gck = and i16 %i.gcj, -1024
  %i.gcl = icmp eq i16 %i.gck, -9216
  %i.gcm = load ptr, ptr %i.y, align 8            ; 4 uses
  br i1 %i.gcl, label %bb.aoe, label %bb.aof

bb.aoe:                                           ; preds = %bb.aod
  %i.gcn = getelementptr inbounds nuw i8, ptr %i.gcm, i64 2
  store ptr %i.gcn, ptr %i.y, align 8
  store i16 %i.gbu, ptr %i.gcm, align 2
  %i.gco = load ptr, ptr %i.y, align 8            ; 2 uses
  %i.gcp = getelementptr inbounds nuw i8, ptr %i.gco, i64 2
  store ptr %i.gcp, ptr %i.y, align 8
  store i16 %i.gcj, ptr %i.gco, align 2
  br label %bb.aoi

bb.aof:                                           ; preds = %bb.aod
  store i16 92, ptr %i.gcm, align 2
  %i.gcq = getelementptr inbounds nuw i8, ptr %i.gcm, i64 2
  store i16 117, ptr %i.gcq, align 2
  %i.gcr = load ptr, ptr %i.y, align 8
  %i.gcs = getelementptr inbounds nuw i8, ptr %i.gcr, i64 4
  store ptr %i.gcs, ptr %i.y, align 8
  %i.gct = uitofp i16 %i.gbu to double
  %i.gcu = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.gct, i32 noundef 16, ptr nonnull %i.c, i64 2200) #21 ; 2 uses
  %i.gcv = extractvalue { i64, ptr } %i.gcu, 0    ; 2 uses
  %i.gcw = extractvalue { i64, ptr } %i.gcu, 1
  %i.gcx = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.gcx, ptr noundef %i.gcw, i64 noundef %i.gcv)
  %i.gcy = load ptr, ptr %i.y, align 8
  %i.gcz = getelementptr inbounds nuw [2 x i8], ptr %i.gcy, i64 %i.gcv
  store ptr %i.gcz, ptr %i.y, align 8
  br label %bb.aoi

bb.aog:                                           ; preds = %bb.aoc
  %i.gda = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.gda, align 2
  %i.gdb = getelementptr inbounds nuw i8, ptr %i.gda, i64 2
  store i16 117, ptr %i.gdb, align 2
  %i.gdc = load ptr, ptr %i.y, align 8
  %i.gdd = getelementptr inbounds nuw i8, ptr %i.gdc, i64 4
  store ptr %i.gdd, ptr %i.y, align 8
  %i.gde = uitofp i16 %i.gbu to double
  %i.gdf = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.gde, i32 noundef 16, ptr nonnull %i.c, i64 2200) #21 ; 2 uses
  %i.gdg = extractvalue { i64, ptr } %i.gdf, 0    ; 2 uses
  %i.gdh = extractvalue { i64, ptr } %i.gdf, 1
  %i.gdi = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.gdi, ptr noundef %i.gdh, i64 noundef %i.gdg)
  %i.gdj = load ptr, ptr %i.y, align 8
  %i.gdk = getelementptr inbounds nuw [2 x i8], ptr %i.gdj, i64 %i.gdg
  store ptr %i.gdk, ptr %i.y, align 8
  br label %bb.aoi

bb.aoh:                                           ; preds = %bb.aob
  %i.gdl = load ptr, ptr %i.y, align 8            ; 2 uses
  store i16 92, ptr %i.gdl, align 2
  %i.gdm = getelementptr inbounds nuw i8, ptr %i.gdl, i64 2
  store i16 117, ptr %i.gdm, align 2
  %i.gdn = load ptr, ptr %i.y, align 8
  %i.gdo = getelementptr inbounds nuw i8, ptr %i.gdn, i64 4
  store ptr %i.gdo, ptr %i.y, align 8
  %i.gdp = uitofp i16 %i.gbu to double
  %i.gdq = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.gdp, i32 noundef 16, ptr nonnull %i.c, i64 2200) #21 ; 2 uses
  %i.gdr = extractvalue { i64, ptr } %i.gdq, 0    ; 2 uses
  %i.gds = extractvalue { i64, ptr } %i.gdq, 1
  %i.gdt = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.gdt, ptr noundef %i.gds, i64 noundef %i.gdr)
  %i.gdu = load ptr, ptr %i.y, align 8
  %i.gdv = getelementptr inbounds nuw [2 x i8], ptr %i.gdu, i64 %i.gdr
  store ptr %i.gdv, ptr %i.y, align 8
  br label %bb.aoi

bb.aoi:                                           ; preds = %bb.aoh, %bb.aog, %bb.aof, %bb.aoe
  %.259.i.i63.i = phi i32 [ %.057.i.i55.i3146, %bb.aoh ], [ %.057.i.i55.i3146, %bb.aog ], [ %i.gcf, %bb.aoe ], [ %.057.i.i55.i3146, %bb.aof ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.aok

bb.aoj:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1255.thread2797
  %i.gdw = zext i16 %i.gbu to i64
  %i.gdx = shl nuw nsw i64 %i.gdw, 3
  %i.gdy = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.gdx ; 2 uses
  %i.gdz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gdy) #26 ; 2 uses
  %i.gea = load ptr, ptr %i.y, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.gea, ptr noundef nonnull %i.gdy, i64 noundef %i.gdz)
  %i.geb = load ptr, ptr %i.y, align 8
  %i.gec = getelementptr inbounds nuw [2 x i8], ptr %i.geb, i64 %i.gdz
  store ptr %i.gec, ptr %i.y, align 8
  br label %bb.aok

bb.aok:                                           ; preds = %bb.aoj, %bb.aoi
  %.3.i.i58.i = phi i32 [ %.259.i.i63.i, %bb.aoi ], [ %.057.i.i55.i3146, %bb.aoj ] ; 2 uses
  %.156.i.i59.i = add nuw i32 %.3.i.i58.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1255.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit1255.thread: ; preds = %bb.aoa, %.lr.ph, %bb.aok
  %.4.i.i60.i = phi i32 [ %.3.i.i58.i, %bb.aok ], [ %.057.i.i55.i3146, %bb.aoa ], [ %.057.i.i55.i3146, %.lr.ph ]
  %.2.i.i61.i = phi i32 [ %.156.i.i59.i, %bb.aok ], [ %.055.i.i56.i3147, %bb.aoa ], [ %.055.i.i56.i3147, %.lr.ph ] ; 3 uses
  %i.ged = add nuw i32 %.4.i.i60.i, 1             ; 2 uses
  %i.gee = icmp ugt i32 %i.gbf, %i.ged
  br i1 %i.gee, label %.lr.ph, label %._crit_edge, !llvm.loop !350

bb.aol:                                           ; preds = %._crit_edge
  %i.gef = zext i32 %.2.i.i61.i to i64            ; 2 uses
  %i.geg = getelementptr inbounds nuw [2 x i8], ptr %i.fxb, i64 %i.gef ; 17 uses
  %i.geh = sub nuw nsw i64 %i.gbg, %i.gef         ; 3 uses
  %trunc = trunc nuw i64 %i.geh to i32
  switch i32 %trunc, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i1258 [
    i32 1, label %bb.aom
    i32 2, label %bb.aon
    i32 3, label %bb.aoo
    i32 4, label %bb.aop
    i32 5, label %bb.aoq
    i32 6, label %bb.aor
    i32 7, label %bb.aos
    i32 8, label %bb.aot
    i32 9, label %bb.aou
    i32 10, label %bb.aov
    i32 11, label %bb.aow
    i32 12, label %bb.aox
    i32 13, label %bb.aoy
    i32 14, label %bb.aoz
    i32 15, label %bb.apa
    i32 16, label %bb.apb
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1260
  ]

bb.aom:                                           ; preds = %bb.aol
  %i.gei = load i16, ptr %i.geg, align 2
  store i16 %i.gei, ptr %.pre3742, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1260

bb.aon:                                           ; preds = %bb.aol
  %i.gej = load i32, ptr %i.geg, align 2
  store i32 %i.gej, ptr %.pre3742, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1260

bb.aoo:                                           ; preds = %bb.aol
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre3742, ptr noundef nonnull align 2 dereferenceable(6) %i.geg, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1260

bb.aop:                                           ; preds = %bb.aol
  %i.gek = load i64, ptr %i.geg, align 2
  store i64 %i.gek, ptr %.pre3742, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1260

bb.aoq:                                           ; preds = %bb.aol
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre3742, ptr noundef nonnull align 2 dereferenceable(10) %i.geg, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1260

bb.aor:                                           ; preds = %bb.aol
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre3742, ptr noundef nonnull align 2 dereferenceable(12) %i.geg, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1260

bb.aos:                                           ; preds = %bb.aol
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre3742, ptr noundef nonnull align 2 dereferenceable(14) %i.geg, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1260

bb.aot:                                           ; preds = %bb.aol
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre3742, ptr noundef nonnull align 2 dereferenceable(16) %i.geg, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1260

bb.aou:                                           ; preds = %bb.aol
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre3742, ptr noundef nonnull align 2 dereferenceable(18) %i.geg, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1260

bb.aov:                                           ; preds = %bb.aol
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre3742, ptr noundef nonnull align 2 dereferenceable(20) %i.geg, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1260

bb.aow:                                           ; preds = %bb.aol
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre3742, ptr noundef nonnull align 2 dereferenceable(22) %i.geg, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1260

bb.aox:                                           ; preds = %bb.aol
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre3742, ptr noundef nonnull align 2 dereferenceable(24) %i.geg, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1260

bb.aoy:                                           ; preds = %bb.aol
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre3742, ptr noundef nonnull align 2 dereferenceable(26) %i.geg, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1260

bb.aoz:                                           ; preds = %bb.aol
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre3742, ptr noundef nonnull align 2 dereferenceable(28) %i.geg, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit1260

bb.apa:                                           ; preds = %bb.aol
end_hunk_10
begin_hunk_11_@_ZN2v88internal19FastJsonStringifierItE15SerializeObjectENS0_18ContinuationRecordERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS5_2EEEE:bb.a
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.aa)
  %.pre.i.i1270 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit1271

_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit1271: ; preds = %.loopexit2952, %bb.apn
  %i.ggd = phi ptr [ %.pre.i.i1270, %bb.apn ], [ %i.gga, %.loopexit2952 ] ; 5 uses
  %i.gge = getelementptr inbounds nuw i8, ptr %i.ggd, i64 32
  store ptr %i.gge, ptr %i.ab, align 8
  store i32 6, ptr %i.ggd, align 8
  %.sroa.52618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ggd, i64 8
  store i64 %.sroa.01.0.copyload.i1073, ptr %.sroa.52618.0..sroa_idx, align 8
  %.sroa.62619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ggd, i64 16
  store i32 %i.gfz, ptr %.sroa.62619.0..sroa_idx, align 8
  %.sroa.72620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ggd, i64 20
  store i32 %i.erp, ptr %.sroa.72620.0..sroa_idx, align 4
  %i.ggf = add nsw i32 %.3.i.i3292806, -1
  %i.ggg = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.ggh = load ptr, ptr %i.ac, align 8
  %i.ggi = icmp eq ptr %i.ggg, %i.ggh
  br i1 %i.ggi, label %bb.apo, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread2811, !prof !6

bb.apo:                                           ; preds = %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit1271
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.aa)
  %.pre.i.i1272 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread2811

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread2811: ; preds = %bb.apo, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit1271
  %i.ggj = phi ptr [ %.pre.i.i1272, %bb.apo ], [ %i.ggg, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit1271 ] ; 5 uses
  %i.ggk = getelementptr inbounds nuw i8, ptr %i.ggj, i64 32
  store ptr %i.ggk, ptr %i.ab, align 8
  store i32 %i.ggf, ptr %i.ggj, align 8
  %.sroa.52624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ggj, i64 8
  store i64 %i.esl, ptr %.sroa.52624.0..sroa_idx, align 8
  %.sroa.62625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ggj, i64 16
  store i32 0, ptr %.sroa.62625.0..sroa_idx, align 8
  %.sroa.72626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ggj, i64 20
  store i32 0, ptr %.sroa.72626.0..sroa_idx, align 4
  br label %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread

bb.app:                                           ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i328
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit: ; preds = %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i328, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i328, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i328, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i328.thread
  %.1.i331 = phi i32 [ %i.gft, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i328 ], [ %.3.i.i329.ph, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i328.thread ], [ %i.gft, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i328 ], [ %i.gft, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i328 ] ; 2 uses
  %.not.i269 = icmp eq i32 %.1.i331, 0
  br i1 %.not.i269, label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread, label %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split: ; preds = %bb.agl, %bb.apl
  %.pre3740 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split: ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split, %bb.apk, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1075
  %.sink = phi ptr [ %.pre3763, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1075 ], [ %i.gfv, %bb.apk ], [ %.pre3740, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split.sink.split ]
  store <4 x i16> <i16 110, i16 117, i16 108, i16 108>, ptr %.sink, align 2
  %i.ggl = load ptr, ptr %i.y, align 8
  %i.ggm = getelementptr inbounds nuw i8, ptr %i.ggl, i64 8
  store ptr %i.ggm, ptr %i.y, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread

_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread: ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread.sink.split, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit
  %i.ggn = add nuw i32 %.014.i2643227, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.ggn, %i.erp
  br i1 %exitcond.not, label %._crit_edge3232, label %bb.agi, !llvm.loop !353

._crit_edge3232:                                  ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread, %bb.agh
  %i.ggo = load ptr, ptr %i.x, align 8
  %i.ggp = load ptr, ptr %i.y, align 8            ; 2 uses
  %.not.i1274 = icmp eq ptr %i.ggo, %i.ggp
  br i1 %.not.i1274, label %bb.apq, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1275, !prof !6

bb.apq:                                           ; preds = %._crit_edge3232
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.z, i64 noundef 1)
  %.pre3764 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1275

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1275: ; preds = %._crit_edge3232, %bb.apq
  %i.ggq = phi ptr [ %i.ggp, %._crit_edge3232 ], [ %.pre3764, %bb.apq ] ; 2 uses
  %i.ggr = getelementptr inbounds nuw i8, ptr %i.ggq, i64 2
  store ptr %i.ggr, ptr %i.y, align 8
  store i16 93, ptr %i.ggq, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread

bb.apr:                                           ; preds = %bb.d
  %.sroa.01.0.copyload.i1276 = load i64, ptr %i.u, align 8
  %i.ggs = load i32, ptr %i.v, align 8
  %i.ggt = load i32, ptr %i.w, align 4
  %i.ggu = call noundef i32 @_ZN2v88internal19FastJsonStringifierItE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %.sroa.01.0.copyload.i1276, i32 noundef %i.ggs, i32 noundef %i.ggt)
  br label %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit

bb.aps:                                           ; preds = %bb.d
  %.sroa.01.0.copyload.i1277 = load i64, ptr %i.u, align 8
  %i.ggv = load i32, ptr %i.v, align 8
  %i.ggw = load i32, ptr %i.w, align 4
  %i.ggx = call noundef i32 @_ZN2v88internal19FastJsonStringifierItE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE3EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %.sroa.01.0.copyload.i1277, i32 noundef %i.ggv, i32 noundef %i.ggw)
  br label %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit

bb.apt:                                           ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit: ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit, %bb.aps, %bb.apr, %bb.vt
  %.023 = phi i32 [ %i.ggx, %bb.aps ], [ %i.ggu, %bb.apr ], [ %i.dcm, %bb.vt ], [ %.0.i287, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ], [ %.1.i331, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit ] ; 2 uses
  %i.ggy = icmp sgt i32 %.023, 2
  br i1 %i.ggy, label %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread2821, label %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread, !prof !312

_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread: ; preds = %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE3ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread2811, %_ZN2v88internal19FastJsonStringifierItE26SerializeFixedArrayElementILNS0_12ElementsKindE2ELb0ENS0_10FixedArrayEEENS0_25FastJsonStringifierResultENS0_6TaggedIT1_EEjj.exit.thread2786, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit385, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit862, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit839, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit615, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit592, %_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE9push_backES3_.exit571, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1275, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit1072, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit864, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit841, %bb.ke, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit617, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit594, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit573, %bb.af, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit387, %bb.ag, %bb.kf, %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit
  %i.ggz = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.gha = load ptr, ptr %i.aa, align 8
  %i.ghb = icmp eq ptr %i.ggz, %i.gha
  br i1 %i.ghb, label %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread2821, label %bb.apu

bb.apu:                                           ; preds = %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread
  %i.ghc = getelementptr inbounds i8, ptr %i.ggz, i64 -32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ghc, i64 32, i1 false)
  store ptr %i.ghc, ptr %i.ab, align 8
  br label %bb.b, !llvm.loop !354

_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread2821: ; preds = %.critedge.i.i, %bb.h, %bb.e, %bb.f, %_ZN2v88internal12_GLOBAL__N_132CanFastSerializeJSObjectFastPathENS0_6TaggedINS0_8JSObjectEEENS2_INS0_10HeapObjectEEENS2_INS0_3MapEEEPNS0_7IsolateE.exit.i, %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread, %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit, %bb.c, %bb.vn, %bb.vn, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i89, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i89, %bb.jy, %bb.jy, %bb.jf, %bb.jf, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i, %bb.x, %bb.x, %.critedge.i250.thread2763, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i89.thread2737, %.thread2719, %.critedge.i219.thread2692, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread2666, %.thread2648
  %.0 = phi i32 [ %i.cyc, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i89 ], [ 5, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i89.thread2737 ], [ %i.dbt, %bb.vn ], [ %i.fj, %bb.x ], [ 5, %.thread2719 ], [ 5, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread2666 ], [ %i.axt, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %i.baz, %bb.jf ], [ 5, %.critedge.i219.thread2692 ], [ %i.ber, %bb.jy ], [ 5, %.critedge.i250.thread2763 ], [ 5, %.thread2648 ], [ %i.fj, %bb.x ], [ %i.axt, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i ], [ %i.baz, %bb.jf ], [ %i.ber, %bb.jy ], [ %i.cyc, %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i89 ], [ %i.dbt, %bb.vn ], [ 5, %.critedge.i.i ], [ 5, %bb.e ], [ 0, %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.thread ], [ 5, %bb.h ], [ %.023, %_ZN2v88internal19FastJsonStringifierItE17SerializeJSObjectENS0_6TaggedINS0_8JSObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit ], [ 5, %_ZN2v88internal12_GLOBAL__N_132CanFastSerializeJSObjectFastPathENS0_6TaggedINS0_8JSObjectEEENS2_INS0_10HeapObjectEEENS2_INS0_3MapEEEPNS0_7IsolateE.exit.i ], [ 5, %bb.f ], [ %i.aj, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZN2v88internal19FastJsonStringifierItE18SerializeObjectKeyINS0_16SeqTwoByteStringELb0EEENS0_34FastJsonStringifierObjectKeyResultENS0_6TaggedINS0_6StringEEEbRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %1, i1 noundef zeroext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [2200 x i8], align 16             ; 5 uses
  %i.b = add i64 %1, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.f = load i32, ptr %i.e, align 4              ; 5 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = or disjoint i64 %i.h, 4                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 35 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 1
  %.not.i = icmp ugt i64 %i.i, %i.r
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.j, i64 noundef %i.i)
  %.pre21.pre = load ptr, ptr %i.m, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit: ; preds = %bb.a, %bb.b
  %.pre21 = phi ptr [ %i.n, %bb.a ], [ %.pre21.pre, %bb.b ] ; 3 uses
  br i1 %2, label %bb.c, label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit

bb.c:                                             ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.pre21, i64 2
  store ptr %i.s, ptr %i.m, align 8
  store i16 44, ptr %.pre21, align 2
  %.pre = load ptr, ptr %i.m, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit

_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit, %bb.c
  %i.t = phi ptr [ %.pre21, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit ], [ %.pre, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store ptr %i.u, ptr %i.m, align 8
  store i16 34, ptr %i.t, align 2
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  %.pre2229 = load ptr, ptr %i.m, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE12AppendStringItQeqstTL0__Lm2EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit

._crit_edge:                                      ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread
  %i.v = icmp ugt i32 %i.f, %.2.i
  %.pre22 = load ptr, ptr %i.m, align 8           ; 18 uses
  br i1 %i.v, label %bb.o, label %_ZN2v88internal19FastJsonStringifierItE12AppendStringItQeqstTL0__Lm2EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit

.lr.ph:                                           ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread
  %.055.i20 = phi i32 [ %.2.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit ] ; 4 uses
  %.057.i19 = phi i32 [ %i.ch, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit ] ; 9 uses
  %i.w = zext i32 %.057.i19 to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2              ; 11 uses
  %i.z = and i16 %i.y, -2
  %or.cond.i = icmp eq i16 %i.z, 32
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.aa = icmp ugt i16 %i.y, 34
  %i.ab = icmp ne i16 %i.y, 92
  %or.cond5.i = and i1 %i.aa, %i.ab
  %i.ac = add i16 %i.y, 8192
  %i.ad = icmp ult i16 %i.ac, -2048
  %or.cond = and i1 %or.cond5.i, %i.ad
  br i1 %or.cond, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread17, !prof !349

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread17: ; preds = %bb.d
  %4 = icmp slt i16 %i.y, -8192
  %i.ae = zext i32 %.055.i20 to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ae
  %i.ag = sub i32 %.057.i19, %.055.i20
  %i.ah = zext i32 %i.ag to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.j, ptr noundef nonnull %i.af, i64 noundef %i.ah)
  br i1 %4, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ai = icmp samesign ult i16 %i.y, -9216
  br i1 %i.ai, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.aj = add nuw i32 %.057.i19, 1                ; 3 uses
  %i.ak = icmp ugt i32 %i.f, %i.aj
  br i1 %i.ak, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2            ; 2 uses
  %i.ao = and i16 %i.an, -1024
  %i.ap = icmp eq i16 %i.ao, -9216
  %i.aq = load ptr, ptr %i.m, align 8             ; 4 uses
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store ptr %i.ar, ptr %i.m, align 8
  store i16 %i.y, ptr %i.aq, align 2
  %i.as = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store ptr %i.at, ptr %i.m, align 8
  store i16 %i.an, ptr %i.as, align 2
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  store i16 92, ptr %i.aq, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store i16 117, ptr %i.au, align 2
  %i.av = load ptr, ptr %i.m, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store ptr %i.aw, ptr %i.m, align 8
  %i.ax = uitofp i16 %i.y to double
  %i.ay = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ax, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.az = extractvalue { i64, ptr } %i.ay, 0      ; 2 uses
  %i.ba = extractvalue { i64, ptr } %i.ay, 1
  %i.bb = load ptr, ptr %i.m, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bb, ptr noundef %i.ba, i64 noundef %i.az)
  %i.bc = load ptr, ptr %i.m, align 8
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.az
  store ptr %i.bd, ptr %i.m, align 8
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.be = load ptr, ptr %i.m, align 8             ; 2 uses
  store i16 92, ptr %i.be, align 2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  store i16 117, ptr %i.bf, align 2
  %i.bg = load ptr, ptr %i.m, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store ptr %i.bh, ptr %i.m, align 8
  %i.bi = uitofp i16 %i.y to double
  %i.bj = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.bi, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.bk = extractvalue { i64, ptr } %i.bj, 0      ; 2 uses
  %i.bl = extractvalue { i64, ptr } %i.bj, 1
  %i.bm = load ptr, ptr %i.m, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bm, ptr noundef %i.bl, i64 noundef %i.bk)
  %i.bn = load ptr, ptr %i.m, align 8
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.bk
  store ptr %i.bo, ptr %i.m, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.bp = load ptr, ptr %i.m, align 8             ; 2 uses
  store i16 92, ptr %i.bp, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  store i16 117, ptr %i.bq, align 2
  %i.br = load ptr, ptr %i.m, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store ptr %i.bs, ptr %i.m, align 8
  %i.bt = uitofp i16 %i.y to double
  %i.bu = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.bt, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.bv = extractvalue { i64, ptr } %i.bu, 0      ; 2 uses
  %i.bw = extractvalue { i64, ptr } %i.bu, 1
  %i.bx = load ptr, ptr %i.m, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bx, ptr noundef %i.bw, i64 noundef %i.bv)
  %i.by = load ptr, ptr %i.m, align 8
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.bv
  store ptr %i.bz, ptr %i.m, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.259.i = phi i32 [ %.057.i19, %bb.k ], [ %.057.i19, %bb.j ], [ %i.aj, %bb.h ], [ %.057.i19, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.n

bb.m:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread17
  %i.ca = zext i16 %i.y to i64
  %i.cb = shl nuw nsw i64 %i.ca, 3
  %i.cc = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.cb ; 2 uses
  %i.cd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cc) #26 ; 2 uses
  %i.ce = load ptr, ptr %i.m, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ce, ptr noundef nonnull %i.cc, i64 noundef %i.cd)
  %i.cf = load ptr, ptr %i.m, align 8
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.cd
  store ptr %i.cg, ptr %i.m, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.3.i = phi i32 [ %.259.i, %bb.l ], [ %.057.i19, %bb.m ] ; 2 uses
  %.156.i = add nuw i32 %.3.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread: ; preds = %bb.d, %.lr.ph, %bb.n
  %.4.i = phi i32 [ %.3.i, %bb.n ], [ %.057.i19, %bb.d ], [ %.057.i19, %.lr.ph ]
  %.2.i = phi i32 [ %.156.i, %bb.n ], [ %.055.i20, %bb.d ], [ %.055.i20, %.lr.ph ] ; 3 uses
  %i.ch = add nuw i32 %.4.i, 1                    ; 2 uses
  %i.ci = icmp ugt i32 %i.f, %i.ch
  br i1 %i.ci, label %.lr.ph, label %._crit_edge, !llvm.loop !350

bb.o:                                             ; preds = %._crit_edge
  %i.cj = zext i32 %.2.i to i64                   ; 2 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.cj ; 17 uses
  %i.cl = sub nuw nsw i64 %i.g, %i.cj             ; 3 uses
  %trunc = trunc nuw i64 %i.cl to i32
  switch i32 %trunc, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i [
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.r
    i32 4, label %bb.s
    i32 5, label %bb.t
    i32 6, label %bb.u
    i32 7, label %bb.v
    i32 8, label %bb.w
    i32 9, label %bb.x
    i32 10, label %bb.y
    i32 11, label %bb.z
    i32 12, label %bb.aa
    i32 13, label %bb.ab
    i32 14, label %bb.ac
    i32 15, label %bb.ad
    i32 16, label %bb.ae
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit
  ]

bb.p:                                             ; preds = %bb.o
  %i.cm = load i16, ptr %i.ck, align 2
  store i16 %i.cm, ptr %.pre22, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.q:                                             ; preds = %bb.o
  %i.cn = load i32, ptr %i.ck, align 2
  store i32 %i.cn, ptr %.pre22, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.r:                                             ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre22, ptr noundef nonnull align 2 dereferenceable(6) %i.ck, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.s:                                             ; preds = %bb.o
  %i.co = load i64, ptr %i.ck, align 2
  store i64 %i.co, ptr %.pre22, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.t:                                             ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre22, ptr noundef nonnull align 2 dereferenceable(10) %i.ck, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.u:                                             ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre22, ptr noundef nonnull align 2 dereferenceable(12) %i.ck, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.v:                                             ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre22, ptr noundef nonnull align 2 dereferenceable(14) %i.ck, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.w:                                             ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre22, ptr noundef nonnull align 2 dereferenceable(16) %i.ck, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.x:                                             ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre22, ptr noundef nonnull align 2 dereferenceable(18) %i.ck, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.y:                                             ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre22, ptr noundef nonnull align 2 dereferenceable(20) %i.ck, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.z:                                             ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre22, ptr noundef nonnull align 2 dereferenceable(22) %i.ck, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.aa:                                            ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre22, ptr noundef nonnull align 2 dereferenceable(24) %i.ck, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ab:                                            ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre22, ptr noundef nonnull align 2 dereferenceable(26) %i.ck, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ac:                                            ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre22, ptr noundef nonnull align 2 dereferenceable(28) %i.ck, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ad:                                            ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre22, ptr noundef nonnull align 2 dereferenceable(30) %i.ck, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ae:                                            ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre22, ptr noundef nonnull align 2 dereferenceable(32) %i.ck, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.o
  %.idx.i.i.i.i = shl nuw nsw i64 %i.cl, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre22, ptr nonnull align 2 %i.ck, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit: ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i
  %i.cp = load ptr, ptr %i.m, align 8
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.cl
  br label %_ZN2v88internal19FastJsonStringifierItE12AppendStringItQeqstTL0__Lm2EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit

_ZN2v88internal19FastJsonStringifierItE12AppendStringItQeqstTL0__Lm2EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit: ; preds = %._crit_edge.thread, %._crit_edge, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit
  %i.cr = phi ptr [ %.pre22, %._crit_edge ], [ %i.cq, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit ], [ %.pre2229, %._crit_edge.thread ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store ptr %i.cs, ptr %i.m, align 8
  store i16 34, ptr %i.cr, align 2
  %i.ct = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  store ptr %i.cu, ptr %i.m, align 8
  store i16 58, ptr %i.ct, align 2
  ret i8 2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZN2v88internal19FastJsonStringifierItE18SerializeObjectKeyINS0_21ExternalTwoByteStringELb0EEENS0_34FastJsonStringifierObjectKeyResultENS0_6TaggedINS0_6StringEEEbRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 %1, i1 noundef zeroext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [2200 x i8], align 16             ; 5 uses
  %i.b = add i64 %1, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 6 uses
  %i.g = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = and i16 %i.j, 16
  %.not.i = icmp eq i16 %i.k, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #21, !inline_history !80
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #21
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.r = load ptr, ptr %i.f, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #21, !inline_history !80
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.c, %bb.d
  %.0.i10 = phi ptr [ %i.q, %bb.c ], [ %i.u, %bb.d ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.w = load i32, ptr %i.v, align 4              ; 5 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = or disjoint i64 %i.y, 4                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 35 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 1
  %.not.i11 = icmp ugt i64 %i.z, %i.ai
  br i1 %.not.i11, label %bb.e, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit, !prof !6

bb.e:                                             ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.aa, i64 noundef %i.z)
  %.pre22.pre = load ptr, ptr %i.ad, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit: ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.e
  %.pre22 = phi ptr [ %i.ae, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ], [ %.pre22.pre, %bb.e ] ; 3 uses
  br i1 %2, label %bb.f, label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit

bb.f:                                             ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre22, i64 2
  store ptr %i.aj, ptr %i.ad, align 8
  store i16 44, ptr %.pre22, align 2
  %.pre = load ptr, ptr %i.ad, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit

_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit, %bb.f
  %i.ak = phi ptr [ %.pre22, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit ], [ %.pre, %bb.f ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store ptr %i.al, ptr %i.ad, align 8
  store i16 34, ptr %i.ak, align 2
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit
  %.pre2330 = load ptr, ptr %i.ad, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE12AppendStringItQeqstTL0__Lm2EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit

._crit_edge:                                      ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread
  %i.am = icmp ugt i32 %i.w, %.2.i
  %.pre23 = load ptr, ptr %i.ad, align 8          ; 18 uses
  br i1 %i.am, label %bb.r, label %_ZN2v88internal19FastJsonStringifierItE12AppendStringItQeqstTL0__Lm2EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit

.lr.ph:                                           ; preds = %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread
  %.055.i21 = phi i32 [ %.2.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit ] ; 4 uses
  %.057.i20 = phi i32 [ %i.cy, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %_ZN2v88internal19FastJsonStringifierItE18SeparatorUncheckedEb.exit ] ; 9 uses
  %i.an = zext i32 %.057.i20 to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.0.i10, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2            ; 11 uses
  %i.aq = and i16 %i.ap, -2
  %or.cond.i = icmp eq i16 %i.aq, 32
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ar = icmp ugt i16 %i.ap, 34
  %i.as = icmp ne i16 %i.ap, 92
  %or.cond5.i = and i1 %i.ar, %i.as
  %i.at = add i16 %i.ap, 8192
  %i.au = icmp ult i16 %i.at, -2048
  %or.cond = and i1 %or.cond5.i, %i.au
  br i1 %or.cond, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread18, !prof !349

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread18: ; preds = %bb.g
  %4 = icmp slt i16 %i.ap, -8192
  %i.av = zext i32 %.055.i21 to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.0.i10, i64 %i.av
  %i.ax = sub i32 %.057.i20, %.055.i21
  %i.ay = zext i32 %i.ax to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.aa, ptr noundef %i.aw, i64 noundef %i.ay)
  br i1 %4, label %bb.h, label %bb.p

bb.h:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.az = icmp samesign ult i16 %i.ap, -9216
  br i1 %i.az, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ba = add nuw i32 %.057.i20, 1                ; 3 uses
  %i.bb = icmp ugt i32 %i.w, %i.ba
  br i1 %i.bb, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bc = zext i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.0.i10, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2            ; 2 uses
  %i.bf = and i16 %i.be, -1024
  %i.bg = icmp eq i16 %i.bf, -9216
  %i.bh = load ptr, ptr %i.ad, align 8            ; 4 uses
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store ptr %i.bi, ptr %i.ad, align 8
  store i16 %i.ap, ptr %i.bh, align 2
  %i.bj = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store ptr %i.bk, ptr %i.ad, align 8
  store i16 %i.be, ptr %i.bj, align 2
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  store i16 92, ptr %i.bh, align 2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i16 117, ptr %i.bl, align 2
  %i.bm = load ptr, ptr %i.ad, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store ptr %i.bn, ptr %i.ad, align 8
  %i.bo = uitofp i16 %i.ap to double
  %i.bp = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.bo, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.bq = extractvalue { i64, ptr } %i.bp, 0      ; 2 uses
  %i.br = extractvalue { i64, ptr } %i.bp, 1
  %i.bs = load ptr, ptr %i.ad, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bs, ptr noundef %i.br, i64 noundef %i.bq)
  %i.bt = load ptr, ptr %i.ad, align 8
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.bq
  store ptr %i.bu, ptr %i.ad, align 8
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.bv = load ptr, ptr %i.ad, align 8            ; 2 uses
  store i16 92, ptr %i.bv, align 2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  store i16 117, ptr %i.bw, align 2
  %i.bx = load ptr, ptr %i.ad, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store ptr %i.by, ptr %i.ad, align 8
  %i.bz = uitofp i16 %i.ap to double
  %i.ca = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.bz, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.cb = extractvalue { i64, ptr } %i.ca, 0      ; 2 uses
  %i.cc = extractvalue { i64, ptr } %i.ca, 1
  %i.cd = load ptr, ptr %i.ad, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.cd, ptr noundef %i.cc, i64 noundef %i.cb)
  %i.ce = load ptr, ptr %i.ad, align 8
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %i.cb
  store ptr %i.cf, ptr %i.ad, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  %i.cg = load ptr, ptr %i.ad, align 8            ; 2 uses
  store i16 92, ptr %i.cg, align 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  store i16 117, ptr %i.ch, align 2
  %i.ci = load ptr, ptr %i.ad, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store ptr %i.cj, ptr %i.ad, align 8
  %i.ck = uitofp i16 %i.ap to double
  %i.cl = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ck, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.cm = extractvalue { i64, ptr } %i.cl, 0      ; 2 uses
  %i.cn = extractvalue { i64, ptr } %i.cl, 1
  %i.co = load ptr, ptr %i.ad, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.co, ptr noundef %i.cn, i64 noundef %i.cm)
  %i.cp = load ptr, ptr %i.ad, align 8
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.cm
  store ptr %i.cq, ptr %i.ad, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %.259.i = phi i32 [ %.057.i20, %bb.n ], [ %.057.i20, %bb.m ], [ %i.ba, %bb.k ], [ %.057.i20, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.q

bb.p:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread18
  %i.cr = zext i16 %i.ap to i64
  %i.cs = shl nuw nsw i64 %i.cr, 3
  %i.ct = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.cs ; 2 uses
  %i.cu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ct) #26 ; 2 uses
  %i.cv = load ptr, ptr %i.ad, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.cv, ptr noundef nonnull %i.ct, i64 noundef %i.cu)
  %i.cw = load ptr, ptr %i.ad, align 8
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.cx, ptr %i.ad, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.3.i = phi i32 [ %.259.i, %bb.o ], [ %.057.i20, %bb.p ] ; 2 uses
  %.156.i = add nuw i32 %.3.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread: ; preds = %bb.g, %.lr.ph, %bb.q
  %.4.i = phi i32 [ %.3.i, %bb.q ], [ %.057.i20, %bb.g ], [ %.057.i20, %.lr.ph ]
  %.2.i = phi i32 [ %.156.i, %bb.q ], [ %.055.i21, %bb.g ], [ %.055.i21, %.lr.ph ] ; 3 uses
  %i.cy = add nuw i32 %.4.i, 1                    ; 2 uses
  %i.cz = icmp ugt i32 %i.w, %i.cy
  br i1 %i.cz, label %.lr.ph, label %._crit_edge, !llvm.loop !350

bb.r:                                             ; preds = %._crit_edge
  %i.da = zext i32 %.2.i to i64                   ; 2 uses
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %.0.i10, i64 %i.da ; 17 uses
  %i.dc = sub nuw nsw i64 %i.x, %i.da             ; 3 uses
  %trunc = trunc nuw i64 %i.dc to i32
  switch i32 %trunc, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i [
    i32 1, label %bb.s
    i32 2, label %bb.t
    i32 3, label %bb.u
    i32 4, label %bb.v
    i32 5, label %bb.w
    i32 6, label %bb.x
    i32 7, label %bb.y
    i32 8, label %bb.z
    i32 9, label %bb.aa
    i32 10, label %bb.ab
    i32 11, label %bb.ac
    i32 12, label %bb.ad
    i32 13, label %bb.ae
    i32 14, label %bb.af
    i32 15, label %bb.ag
    i32 16, label %bb.ah
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit
  ]

bb.s:                                             ; preds = %bb.r
  %i.dd = load i16, ptr %i.db, align 2
  store i16 %i.dd, ptr %.pre23, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.t:                                             ; preds = %bb.r
  %i.de = load i32, ptr %i.db, align 2
  store i32 %i.de, ptr %.pre23, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.u:                                             ; preds = %bb.r
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre23, ptr noundef nonnull align 2 dereferenceable(6) %i.db, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.v:                                             ; preds = %bb.r
  %i.df = load i64, ptr %i.db, align 2
  store i64 %i.df, ptr %.pre23, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.w:                                             ; preds = %bb.r
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre23, ptr noundef nonnull align 2 dereferenceable(10) %i.db, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.x:                                             ; preds = %bb.r
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre23, ptr noundef nonnull align 2 dereferenceable(12) %i.db, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.y:                                             ; preds = %bb.r
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre23, ptr noundef nonnull align 2 dereferenceable(14) %i.db, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.z:                                             ; preds = %bb.r
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre23, ptr noundef nonnull align 2 dereferenceable(16) %i.db, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.aa:                                            ; preds = %bb.r
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre23, ptr noundef nonnull align 2 dereferenceable(18) %i.db, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ab:                                            ; preds = %bb.r
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre23, ptr noundef nonnull align 2 dereferenceable(20) %i.db, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ac:                                            ; preds = %bb.r
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre23, ptr noundef nonnull align 2 dereferenceable(22) %i.db, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ad:                                            ; preds = %bb.r
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre23, ptr noundef nonnull align 2 dereferenceable(24) %i.db, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ae:                                            ; preds = %bb.r
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre23, ptr noundef nonnull align 2 dereferenceable(26) %i.db, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.af:                                            ; preds = %bb.r
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre23, ptr noundef nonnull align 2 dereferenceable(28) %i.db, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ag:                                            ; preds = %bb.r
end_hunk_11
begin_hunk_12_@_ZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE:bb.a
  %.013.i.i.i.lcssa = phi i64 [ %i.ep, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i.i ], [ %.013.i.i.i399, %.lr.ph400 ], [ %i.fe, %bb.s ] ; 2 uses
  %i.fh = icmp ult i64 %.013.i.i.i.lcssa, %i.cp
  br i1 %i.fh, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.u, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i.i
  %.0.lcssa.i = phi i64 [ %.155.i.i.i, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i.i ], [ %.1.i, %bb.u ] ; 2 uses
  %i.fi = icmp ult i64 %.0.lcssa.i, %i.cp
  %.pre424 = load ptr, ptr %i.cu, align 8         ; 2 uses
  br i1 %i.fi, label %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_16SeqOneByteStringEEEE_clESC_.exit.sink.split, label %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_16SeqOneByteStringEEEE_clESC_.exit, !prof !11

.lr.ph.i:                                         ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i.i, %bb.u
  %.026.i = phi i64 [ %.1.i, %bb.u ], [ %.155.i.i.i, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i.i ] ; 3 uses
  %.02025.i = phi i64 [ %.pre-phi.i, %bb.u ], [ %.013.i.i.i.lcssa, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i.i ] ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.02025.i
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = zext i8 %i.fk to i64                    ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !range !7, !noundef !8
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %._crit_edge28.i, label %bb.t, !prof !11

._crit_edge28.i:                                  ; preds = %.lr.ph.i
  %.pre.i = add i64 %.02025.i, 1
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.026.i
  %i.fq = sub i64 %.02025.i, %.026.i              ; 2 uses
  %i.fr = load ptr, ptr %i.cu, align 8
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.fr, ptr noundef %i.fp, i64 noundef %i.fq)
  %i.fs = load ptr, ptr %i.cu, align 8
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %i.fq ; 2 uses
  store ptr %i.ft, ptr %i.cu, align 8
  %i.fu = shl nuw nsw i64 %i.fl, 3
  %i.fv = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.fu ; 2 uses
  %i.fw = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #26 ; 2 uses
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ft, ptr noundef nonnull %i.fv, i64 noundef %i.fw)
  %i.fx = load ptr, ptr %i.cu, align 8
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.fw
  store ptr %i.fy, ptr %i.cu, align 8
  %i.fz = add i64 %.02025.i, 1                    ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge28.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge28.i ], [ %i.fz, %bb.t ] ; 2 uses
  %.1.i = phi i64 [ %.026.i, %._crit_edge28.i ], [ %i.fz, %bb.t ] ; 2 uses
  %exitcond.not.i = icmp eq i64 %.pre-phi.i, %i.cp
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !348

.lr.ph389:                                        ; preds = %.lr.ph389.preheader, %bb.v
  %.013.i8.i.i388 = phi i64 [ %i.gm, %bb.v ], [ 0, %.lr.ph389.preheader ] ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.013.i8.i.i388
  %i.gb = load i32, ptr %i.ga, align 4            ; 4 uses
  %i.gc = add i32 %i.gb, -538976288
  %i.gd = xor i32 %i.gb, 572662306
  %i.ge = add i32 %i.gd, -16843009
  %i.gf = xor i32 %i.gb, 1549556828
  %i.gg = add i32 %i.gf, -16843009
  %i.gh = and i32 %i.gb, -2139062144
  %i.gi = xor i32 %i.gh, -2139062144
  %i.gj = or i32 %i.ge, %i.gc
  %i.gk = or i32 %i.gj, %i.gg
  %i.gl = and i32 %i.gk, %i.gi
  %.not349 = icmp eq i32 %i.gl, 0
  br i1 %.not349, label %bb.v, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i.i

bb.v:                                             ; preds = %.lr.ph389
  %i.gm = add nuw nsw i64 %.013.i8.i.i388, 4      ; 2 uses
  %i.gn = or disjoint i64 %i.gm, 3
  %i.go = icmp samesign ult i64 %i.gn, %i.cp
  br i1 %i.go, label %.lr.ph389, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i.i, !llvm.loop !347

_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i.i: ; preds = %bb.v, %.lr.ph389, %.preheader
  %.013.i8.i.i.lcssa = phi i64 [ 0, %.preheader ], [ %.013.i8.i.i388, %.lr.ph389 ], [ %i.df, %bb.v ] ; 2 uses
  %i.gp = icmp samesign ult i64 %.013.i8.i.i.lcssa, %i.cp
  br i1 %i.gp, label %.lr.ph.i79, label %._crit_edge.i76

._crit_edge.i76:                                  ; preds = %bb.x, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i.i
  %.0.lcssa.i78 = phi i64 [ 0, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i.i ], [ %.1.i85, %bb.x ] ; 2 uses
  %i.gq = icmp ult i64 %.0.lcssa.i78, %i.cp
  %.pre425 = load ptr, ptr %i.cu, align 8         ; 2 uses
  br i1 %i.gq, label %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_16SeqOneByteStringEEEE_clESC_.exit.sink.split, label %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_16SeqOneByteStringEEEE_clESC_.exit, !prof !11

.lr.ph.i79:                                       ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i.i, %bb.x
  %.026.i80 = phi i64 [ %.1.i85, %bb.x ], [ 0, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i.i ] ; 3 uses
  %.02025.i81 = phi i64 [ %.pre-phi.i83, %bb.x ], [ %.013.i8.i.i.lcssa, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i.i ] ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.02025.i81
  %i.gs = load i8, ptr %i.gr, align 1
  %i.gt = zext i8 %i.gs to i64                    ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !range !7, !noundef !8
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %._crit_edge28.i87, label %bb.w, !prof !11

._crit_edge28.i87:                                ; preds = %.lr.ph.i79
  %.pre.i88 = add i64 %.02025.i81, 1
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph.i79
  %i.gx = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.026.i80
  %i.gy = sub i64 %.02025.i81, %.026.i80          ; 2 uses
  %i.gz = load ptr, ptr %i.cu, align 8
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.gz, ptr noundef %i.gx, i64 noundef %i.gy)
  %i.ha = load ptr, ptr %i.cu, align 8
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %i.gy ; 2 uses
  store ptr %i.hb, ptr %i.cu, align 8
  %i.hc = shl nuw nsw i64 %i.gt, 3
  %i.hd = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.hc ; 2 uses
  %i.he = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hd) #26 ; 2 uses
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.hb, ptr noundef nonnull %i.hd, i64 noundef %i.he)
  %i.hf = load ptr, ptr %i.cu, align 8
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.hf, i64 %i.he
  store ptr %i.hg, ptr %i.cu, align 8
  %i.hh = add i64 %.02025.i81, 1                  ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge28.i87
  %.pre-phi.i83 = phi i64 [ %.pre.i88, %._crit_edge28.i87 ], [ %i.hh, %bb.w ] ; 2 uses
  %.1.i85 = phi i64 [ %.026.i80, %._crit_edge28.i87 ], [ %i.hh, %bb.w ] ; 2 uses
  %exitcond.not.i86 = icmp eq i64 %.pre-phi.i83, %i.cp
  br i1 %exitcond.not.i86, label %._crit_edge.i76, label %.lr.ph.i79, !llvm.loop !348

_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_16SeqOneByteStringEEEE_clESC_.exit.sink.split: ; preds = %._crit_edge.i76, %._crit_edge.i
  %.0.lcssa.i.sink472 = phi i64 [ %.0.lcssa.i, %._crit_edge.i ], [ %.0.lcssa.i78, %._crit_edge.i76 ] ; 2 uses
  %.pre424.sink = phi ptr [ %.pre424, %._crit_edge.i ], [ %.pre425, %._crit_edge.i76 ]
  %i.hi = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.0.lcssa.i.sink472
  %i.hj = sub nuw nsw i64 %i.cp, %.0.lcssa.i.sink472 ; 2 uses
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %.pre424.sink, ptr noundef %i.hi, i64 noundef %i.hj)
  %i.hk = load ptr, ptr %i.cu, align 8
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.hk, i64 %i.hj
  br label %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_16SeqOneByteStringEEEE_clESC_.exit

_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_16SeqOneByteStringEEEE_clESC_.exit: ; preds = %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_16SeqOneByteStringEEEE_clESC_.exit.sink.split, %._crit_edge.i, %._crit_edge.i76
  %i.hm = phi ptr [ %.pre425, %._crit_edge.i76 ], [ %.pre424, %._crit_edge.i ], [ %i.hl, %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_16SeqOneByteStringEEEE_clESC_.exit.sink.split ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  store ptr %i.hn, ptr %i.cu, align 8
  store i16 34, ptr %i.hm, align 2
  br label %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit

bb.y:                                             ; preds = %.preheader354
  %i.ho = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.hq = load i32, ptr %i.hp, align 4            ; 5 uses
  %i.hr = zext i32 %i.hq to i64                   ; 2 uses
  %i.hs = shl nuw nsw i64 %i.hr, 3
  %i.ht = or disjoint i64 %i.hs, 2                ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 31 uses
  %i.hy = load ptr, ptr %i.hx, align 8            ; 2 uses
  %i.hz = ptrtoint ptr %i.hw to i64
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = sub i64 %i.hz, %i.ia
  %i.ic = ashr exact i64 %i.ib, 1
  %.not.i90 = icmp ugt i64 %i.ht, %i.ic
  br i1 %.not.i90, label %bb.z, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit91, !prof !6

bb.z:                                             ; preds = %bb.y
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.hu, i64 noundef %i.ht)
  %.pre421 = load ptr, ptr %i.hx, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit91

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit91: ; preds = %bb.y, %bb.z
  %i.id = phi ptr [ %i.hy, %bb.y ], [ %.pre421, %bb.z ] ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  store ptr %i.ie, ptr %i.hx, align 8
  store i16 34, ptr %i.id, align 2
  %.not405 = icmp eq i32 %i.hq, 0
  br i1 %.not405, label %._crit_edge386.thread, label %.lr.ph385

._crit_edge386.thread:                            ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit91
  %.pre422459 = load ptr, ptr %i.hx, align 8
  br label %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_16SeqTwoByteStringEEEE_clESC_.exit

._crit_edge386:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread
  %i.if = icmp ugt i32 %i.hq, %.2.i.i.i
  %.pre422 = load ptr, ptr %i.hx, align 8         ; 18 uses
  br i1 %i.if, label %bb.al, label %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_16SeqTwoByteStringEEEE_clESC_.exit

.lr.ph385:                                        ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit91, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread
  %.055.i.i.i384 = phi i32 [ %.2.i.i.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit91 ] ; 4 uses
  %.057.i.i.i383 = phi i32 [ %i.kr, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit91 ] ; 9 uses
  %i.ig = zext i32 %.057.i.i.i383 to i64
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %i.ig
  %i.ii = load i16, ptr %i.ih, align 2            ; 11 uses
  %i.ij = and i16 %i.ii, -2
  %or.cond.i = icmp eq i16 %i.ij, 32
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph385
  %i.ik = icmp ugt i16 %i.ii, 34
  %i.il = icmp ne i16 %i.ii, 92
  %or.cond5.i = and i1 %i.ik, %i.il
  %i.im = add i16 %i.ii, 8192
  %i.in = icmp ult i16 %i.im, -2048
  %or.cond = and i1 %or.cond5.i, %i.in
  br i1 %or.cond, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread330, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread330: ; preds = %bb.aa
  %3 = icmp slt i16 %i.ii, -8192
  %i.io = zext i32 %.055.i.i.i384 to i64
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %i.io
  %i.iq = sub i32 %.057.i.i.i383, %.055.i.i.i384
  %i.ir = zext i32 %i.iq to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.hu, ptr noundef nonnull %i.ip, i64 noundef %i.ir)
  br i1 %3, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.is = icmp samesign ult i16 %i.ii, -9216
  br i1 %i.is, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.it = add nuw i32 %.057.i.i.i383, 1           ; 3 uses
  %i.iu = icmp ugt i32 %i.hq, %i.it
  br i1 %i.iu, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.iv = zext i32 %i.it to i64
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %i.iv
  %i.ix = load i16, ptr %i.iw, align 2            ; 2 uses
  %i.iy = and i16 %i.ix, -1024
  %i.iz = icmp eq i16 %i.iy, -9216
  %i.ja = load ptr, ptr %i.hx, align 8            ; 4 uses
  br i1 %i.iz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 2
  store ptr %i.jb, ptr %i.hx, align 8
  store i16 %i.ii, ptr %i.ja, align 2
  %i.jc = load ptr, ptr %i.hx, align 8            ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 2
  store ptr %i.jd, ptr %i.hx, align 8
  store i16 %i.ix, ptr %i.jc, align 2
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  store i16 92, ptr %i.ja, align 2
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 2
  store i16 117, ptr %i.je, align 2
  %i.jf = load ptr, ptr %i.hx, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  store ptr %i.jg, ptr %i.hx, align 8
  %i.jh = uitofp i16 %i.ii to double
  %i.ji = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.jh, i32 noundef 16, ptr nonnull %i.b, i64 2200) #21 ; 2 uses
  %i.jj = extractvalue { i64, ptr } %i.ji, 0      ; 2 uses
  %i.jk = extractvalue { i64, ptr } %i.ji, 1
  %i.jl = load ptr, ptr %i.hx, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.jl, ptr noundef %i.jk, i64 noundef %i.jj)
  %i.jm = load ptr, ptr %i.hx, align 8
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.jm, i64 %i.jj
  store ptr %i.jn, ptr %i.hx, align 8
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ac
  %i.jo = load ptr, ptr %i.hx, align 8            ; 2 uses
  store i16 92, ptr %i.jo, align 2
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 2
  store i16 117, ptr %i.jp, align 2
  %i.jq = load ptr, ptr %i.hx, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  store ptr %i.jr, ptr %i.hx, align 8
  %i.js = uitofp i16 %i.ii to double
  %i.jt = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.js, i32 noundef 16, ptr nonnull %i.b, i64 2200) #21 ; 2 uses
  %i.ju = extractvalue { i64, ptr } %i.jt, 0      ; 2 uses
  %i.jv = extractvalue { i64, ptr } %i.jt, 1
  %i.jw = load ptr, ptr %i.hx, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.jw, ptr noundef %i.jv, i64 noundef %i.ju)
  %i.jx = load ptr, ptr %i.hx, align 8
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.jx, i64 %i.ju
  store ptr %i.jy, ptr %i.hx, align 8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ab
  %i.jz = load ptr, ptr %i.hx, align 8            ; 2 uses
  store i16 92, ptr %i.jz, align 2
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 2
  store i16 117, ptr %i.ka, align 2
  %i.kb = load ptr, ptr %i.hx, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  store ptr %i.kc, ptr %i.hx, align 8
  %i.kd = uitofp i16 %i.ii to double
  %i.ke = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.kd, i32 noundef 16, ptr nonnull %i.b, i64 2200) #21 ; 2 uses
  %i.kf = extractvalue { i64, ptr } %i.ke, 0      ; 2 uses
  %i.kg = extractvalue { i64, ptr } %i.ke, 1
  %i.kh = load ptr, ptr %i.hx, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.kh, ptr noundef %i.kg, i64 noundef %i.kf)
  %i.ki = load ptr, ptr %i.hx, align 8
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.ki, i64 %i.kf
  store ptr %i.kj, ptr %i.hx, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %.259.i.i.i = phi i32 [ %.057.i.i.i383, %bb.ah ], [ %.057.i.i.i383, %bb.ag ], [ %i.it, %bb.ae ], [ %.057.i.i.i383, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.ak

bb.aj:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread330
  %i.kk = zext i16 %i.ii to i64
  %i.kl = shl nuw nsw i64 %i.kk, 3
  %i.km = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.kl ; 2 uses
  %i.kn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.km) #26 ; 2 uses
  %i.ko = load ptr, ptr %i.hx, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ko, ptr noundef nonnull %i.km, i64 noundef %i.kn)
  %i.kp = load ptr, ptr %i.hx, align 8
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %i.kp, i64 %i.kn
  store ptr %i.kq, ptr %i.hx, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.3.i.i.i = phi i32 [ %.259.i.i.i, %bb.ai ], [ %.057.i.i.i383, %bb.aj ] ; 2 uses
  %.156.i.i.i = add nuw i32 %.3.i.i.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread: ; preds = %bb.aa, %.lr.ph385, %bb.ak
  %.4.i.i.i = phi i32 [ %.3.i.i.i, %bb.ak ], [ %.057.i.i.i383, %bb.aa ], [ %.057.i.i.i383, %.lr.ph385 ]
  %.2.i.i.i = phi i32 [ %.156.i.i.i, %bb.ak ], [ %.055.i.i.i384, %bb.aa ], [ %.055.i.i.i384, %.lr.ph385 ] ; 3 uses
  %i.kr = add nuw i32 %.4.i.i.i, 1                ; 2 uses
  %i.ks = icmp ugt i32 %i.hq, %i.kr
  br i1 %i.ks, label %.lr.ph385, label %._crit_edge386, !llvm.loop !350

bb.al:                                            ; preds = %._crit_edge386
  %i.kt = zext i32 %.2.i.i.i to i64               ; 2 uses
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %i.kt ; 17 uses
  %i.kv = sub nuw nsw i64 %i.hr, %i.kt            ; 3 uses
  %trunc348 = trunc nuw i64 %i.kv to i32
  switch i32 %trunc348, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i [
    i32 1, label %bb.am
    i32 2, label %bb.an
    i32 3, label %bb.ao
    i32 4, label %bb.ap
    i32 5, label %bb.aq
    i32 6, label %bb.ar
    i32 7, label %bb.as
    i32 8, label %bb.at
    i32 9, label %bb.au
    i32 10, label %bb.av
    i32 11, label %bb.aw
    i32 12, label %bb.ax
    i32 13, label %bb.ay
    i32 14, label %bb.az
    i32 15, label %bb.ba
    i32 16, label %bb.bb
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit
  ]

bb.am:                                            ; preds = %bb.al
  %i.kw = load i16, ptr %i.ku, align 2
  store i16 %i.kw, ptr %.pre422, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.an:                                            ; preds = %bb.al
  %i.kx = load i32, ptr %i.ku, align 2
  store i32 %i.kx, ptr %.pre422, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ao:                                            ; preds = %bb.al
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre422, ptr noundef nonnull align 2 dereferenceable(6) %i.ku, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ap:                                            ; preds = %bb.al
  %i.ky = load i64, ptr %i.ku, align 2
  store i64 %i.ky, ptr %.pre422, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.aq:                                            ; preds = %bb.al
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre422, ptr noundef nonnull align 2 dereferenceable(10) %i.ku, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ar:                                            ; preds = %bb.al
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre422, ptr noundef nonnull align 2 dereferenceable(12) %i.ku, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.as:                                            ; preds = %bb.al
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre422, ptr noundef nonnull align 2 dereferenceable(14) %i.ku, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.at:                                            ; preds = %bb.al
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre422, ptr noundef nonnull align 2 dereferenceable(16) %i.ku, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.au:                                            ; preds = %bb.al
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre422, ptr noundef nonnull align 2 dereferenceable(18) %i.ku, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.av:                                            ; preds = %bb.al
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre422, ptr noundef nonnull align 2 dereferenceable(20) %i.ku, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.aw:                                            ; preds = %bb.al
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre422, ptr noundef nonnull align 2 dereferenceable(22) %i.ku, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ax:                                            ; preds = %bb.al
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre422, ptr noundef nonnull align 2 dereferenceable(24) %i.ku, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ay:                                            ; preds = %bb.al
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre422, ptr noundef nonnull align 2 dereferenceable(26) %i.ku, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.az:                                            ; preds = %bb.al
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre422, ptr noundef nonnull align 2 dereferenceable(28) %i.ku, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ba:                                            ; preds = %bb.al
end_hunk_12
begin_hunk_13_@_ZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE:bb.a
  store ptr %i.pb, ptr %i.mc, align 8
  %i.pc = shl nuw nsw i64 %i.ot, 3
  %i.pd = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.pc ; 2 uses
  %i.pe = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.pd) #26 ; 2 uses
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.pb, ptr noundef nonnull %i.pd, i64 noundef %i.pe)
  %i.pf = load ptr, ptr %i.mc, align 8
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %i.pf, i64 %i.pe
  store ptr %i.pg, ptr %i.mc, align 8
  %i.ph = add i64 %.02025.i101, 1                 ; 2 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %._crit_edge28.i107
  %.pre-phi.i103 = phi i64 [ %.pre.i108, %._crit_edge28.i107 ], [ %i.ph, %bb.bn ] ; 2 uses
  %.1.i105 = phi i64 [ %.026.i100, %._crit_edge28.i107 ], [ %i.ph, %bb.bn ] ; 2 uses
  %exitcond.not.i106 = icmp eq i64 %.pre-phi.i103, %i.lx
  br i1 %exitcond.not.i106, label %._crit_edge.i96, label %.lr.ph.i99, !llvm.loop !348

.lr.ph368:                                        ; preds = %.lr.ph368.preheader, %bb.bp
  %.013.i7.i.i367 = phi i64 [ %i.pu, %bb.bp ], [ 0, %.lr.ph368.preheader ] ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.0.i93, i64 %.013.i7.i.i367
  %i.pj = load i32, ptr %i.pi, align 4            ; 4 uses
  %i.pk = add i32 %i.pj, -538976288
  %i.pl = xor i32 %i.pj, 572662306
  %i.pm = add i32 %i.pl, -16843009
  %i.pn = xor i32 %i.pj, 1549556828
  %i.po = add i32 %i.pn, -16843009
  %i.pp = and i32 %i.pj, -2139062144
  %i.pq = xor i32 %i.pp, -2139062144
  %i.pr = or i32 %i.pm, %i.pk
  %i.ps = or i32 %i.pr, %i.po
  %i.pt = and i32 %i.ps, %i.pq
  %.not346 = icmp eq i32 %i.pt, 0
  br i1 %.not346, label %bb.bp, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit8.i.i

bb.bp:                                            ; preds = %.lr.ph368
  %i.pu = add nuw nsw i64 %.013.i7.i.i367, 4      ; 2 uses
  %i.pv = or disjoint i64 %i.pu, 3
  %i.pw = icmp samesign ult i64 %i.pv, %i.lx
  br i1 %i.pw, label %.lr.ph368, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit8.i.i, !llvm.loop !347

_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit8.i.i: ; preds = %bb.bp, %.lr.ph368, %.preheader353
  %.013.i7.i.i.lcssa = phi i64 [ 0, %.preheader353 ], [ %.013.i7.i.i367, %.lr.ph368 ], [ %i.mn, %bb.bp ] ; 2 uses
  %i.px = icmp samesign ult i64 %.013.i7.i.i.lcssa, %i.lx
  br i1 %i.px, label %.lr.ph.i113, label %._crit_edge.i110

._crit_edge.i110:                                 ; preds = %bb.br, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit8.i.i
  %.0.lcssa.i112 = phi i64 [ 0, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit8.i.i ], [ %.1.i119, %bb.br ] ; 2 uses
  %i.py = icmp ult i64 %.0.lcssa.i112, %i.lx
  %.pre420 = load ptr, ptr %i.mc, align 8         ; 2 uses
  br i1 %i.py, label %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_21ExternalOneByteStringEEEE_clESC_.exit.sink.split, label %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_21ExternalOneByteStringEEEE_clESC_.exit, !prof !11

.lr.ph.i113:                                      ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit8.i.i, %bb.br
  %.026.i114 = phi i64 [ %.1.i119, %bb.br ], [ 0, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit8.i.i ] ; 3 uses
  %.02025.i115 = phi i64 [ %.pre-phi.i117, %bb.br ], [ %.013.i7.i.i.lcssa, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit8.i.i ] ; 4 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.0.i93, i64 %.02025.i115
  %i.qa = load i8, ptr %i.pz, align 1
  %i.qb = zext i8 %i.qa to i64                    ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.qb
  %i.qd = load i8, ptr %i.qc, align 1, !range !7, !noundef !8
  %i.qe = trunc nuw i8 %i.qd to i1
  br i1 %i.qe, label %._crit_edge28.i121, label %bb.bq, !prof !11

._crit_edge28.i121:                               ; preds = %.lr.ph.i113
  %.pre.i122 = add i64 %.02025.i115, 1
  br label %bb.br

bb.bq:                                            ; preds = %.lr.ph.i113
  %i.qf = getelementptr inbounds nuw i8, ptr %.0.i93, i64 %.026.i114
  %i.qg = sub i64 %.02025.i115, %.026.i114        ; 2 uses
  %i.qh = load ptr, ptr %i.mc, align 8
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.qh, ptr noundef %i.qf, i64 noundef %i.qg)
  %i.qi = load ptr, ptr %i.mc, align 8
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %i.qg ; 2 uses
  store ptr %i.qj, ptr %i.mc, align 8
  %i.qk = shl nuw nsw i64 %i.qb, 3
  %i.ql = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.qk ; 2 uses
  %i.qm = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ql) #26 ; 2 uses
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.qj, ptr noundef nonnull %i.ql, i64 noundef %i.qm)
  %i.qn = load ptr, ptr %i.mc, align 8
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %i.qm
  store ptr %i.qo, ptr %i.mc, align 8
  %i.qp = add i64 %.02025.i115, 1                 ; 2 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %._crit_edge28.i121
  %.pre-phi.i117 = phi i64 [ %.pre.i122, %._crit_edge28.i121 ], [ %i.qp, %bb.bq ] ; 2 uses
  %.1.i119 = phi i64 [ %.026.i114, %._crit_edge28.i121 ], [ %i.qp, %bb.bq ] ; 2 uses
  %exitcond.not.i120 = icmp eq i64 %.pre-phi.i117, %i.lx
  br i1 %exitcond.not.i120, label %._crit_edge.i110, label %.lr.ph.i113, !llvm.loop !348

_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_21ExternalOneByteStringEEEE_clESC_.exit.sink.split: ; preds = %._crit_edge.i110, %._crit_edge.i96
  %.0.lcssa.i98.sink475 = phi i64 [ %.0.lcssa.i98, %._crit_edge.i96 ], [ %.0.lcssa.i112, %._crit_edge.i110 ] ; 2 uses
  %.pre419.sink = phi ptr [ %.pre419, %._crit_edge.i96 ], [ %.pre420, %._crit_edge.i110 ]
  %i.qq = getelementptr inbounds nuw i8, ptr %.0.i93, i64 %.0.lcssa.i98.sink475
  %i.qr = sub nuw nsw i64 %i.lx, %.0.lcssa.i98.sink475 ; 2 uses
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %.pre419.sink, ptr noundef %i.qq, i64 noundef %i.qr)
  %i.qs = load ptr, ptr %i.mc, align 8
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %i.qs, i64 %i.qr
  br label %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_21ExternalOneByteStringEEEE_clESC_.exit

_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_21ExternalOneByteStringEEEE_clESC_.exit: ; preds = %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_21ExternalOneByteStringEEEE_clESC_.exit.sink.split, %._crit_edge.i96, %._crit_edge.i110
  %i.qu = phi ptr [ %.pre420, %._crit_edge.i110 ], [ %.pre419, %._crit_edge.i96 ], [ %i.qt, %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_21ExternalOneByteStringEEEE_clESC_.exit.sink.split ] ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 2
  store ptr %i.qv, ptr %i.mc, align 8
  store i16 34, ptr %i.qu, align 2
  br label %_ZN2v88internal28MayHaveInterestingPropertiesEPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEE.exit

bb.bs:                                            ; preds = %.preheader354
  %i.qw = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.qx = load i64, ptr %i.qw, align 8
  %i.qy = inttoptr i64 %i.qx to ptr               ; 6 uses
  %i.qz = load atomic volatile i64, ptr %i.cg monotonic, align 8
  %i.ra = add i64 %i.qz, 11
  %i.rb = inttoptr i64 %i.ra to ptr
  %i.rc = load atomic volatile i16, ptr %i.rb monotonic, align 2
  %i.rd = and i16 %i.rc, 16
  %.not.i124 = icmp eq i16 %i.rd, 0
  br i1 %.not.i124, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.re = load ptr, ptr %i.qy, align 8
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rg = load ptr, ptr %i.rf, align 8
  %i.rh = tail call noundef zeroext i1 %i.rg(ptr noundef nonnull align 8 dereferenceable(8) %i.qy) #21, !inline_history !80
  br i1 %i.rh, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qy) #21
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.bv:                                            ; preds = %bb.bt, %bb.bs
  %i.rk = load ptr, ptr %i.qy, align 8
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 72
  %i.rm = load ptr, ptr %i.rl, align 8
  %i.rn = tail call noundef ptr %i.rm(ptr noundef nonnull align 8 dereferenceable(16) %i.qy) #21, !inline_history !80
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.bu, %bb.bv
  %.0.i125 = phi ptr [ %i.rj, %bb.bu ], [ %i.rn, %bb.bv ] ; 4 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.rp = load i32, ptr %i.ro, align 4            ; 5 uses
  %i.rq = zext i32 %i.rp to i64                   ; 2 uses
  %i.rr = shl nuw nsw i64 %i.rq, 3
  %i.rs = or disjoint i64 %i.rr, 2                ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.rv = load ptr, ptr %i.ru, align 8
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 31 uses
  %i.rx = load ptr, ptr %i.rw, align 8            ; 2 uses
  %i.ry = ptrtoint ptr %i.rv to i64
  %i.rz = ptrtoint ptr %i.rx to i64
  %i.sa = sub i64 %i.ry, %i.rz
  %i.sb = ashr exact i64 %i.sa, 1
  %.not.i126 = icmp ugt i64 %i.rs, %i.sb
  br i1 %.not.i126, label %bb.bw, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit127, !prof !6

bb.bw:                                            ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit
  tail call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.rt, i64 noundef %i.rs)
  %.pre416 = load ptr, ptr %i.rw, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit127

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit127: ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.bw
  %i.sc = phi ptr [ %i.rx, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ], [ %.pre416, %bb.bw ] ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 2
  store ptr %i.sd, ptr %i.rw, align 8
  store i16 34, ptr %i.sc, align 2
  %.not404 = icmp eq i32 %i.rp, 0
  br i1 %.not404, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit127
  %.pre417461 = load ptr, ptr %i.rw, align 8
  br label %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_21ExternalTwoByteStringEEEE_clESC_.exit

._crit_edge:                                      ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit130.thread
  %i.se = icmp ugt i32 %i.rp, %.2.i.i.i67
  %.pre417 = load ptr, ptr %i.rw, align 8         ; 18 uses
  br i1 %i.se, label %bb.ci, label %_ZZN2v88internal19FastJsonStringifierItE27SerializeJSPrimitiveWrapperENS0_6TaggedINS0_18JSPrimitiveWrapperEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEEENKUlNS3_INS0_21ExternalTwoByteStringEEEE_clESC_.exit

.lr.ph:                                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit127, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit130.thread
  %.055.i.i.i62366 = phi i32 [ %.2.i.i.i67, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit130.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit127 ] ; 4 uses
  %.057.i.i.i61365 = phi i32 [ %i.uq, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit130.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit127 ] ; 9 uses
  %i.sf = zext i32 %.057.i.i.i61365 to i64
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %.0.i125, i64 %i.sf
  %i.sh = load i16, ptr %i.sg, align 2            ; 11 uses
  %i.si = and i16 %i.sh, -2
  %or.cond.i128 = icmp eq i16 %i.si, 32
  br i1 %or.cond.i128, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit130.thread, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph
  %i.sj = icmp ugt i16 %i.sh, 34
  %i.sk = icmp ne i16 %i.sh, 92
  %or.cond5.i129 = and i1 %i.sj, %i.sk
  %i.sl = add i16 %i.sh, 8192
  %i.sm = icmp ult i16 %i.sl, -2048
  %or.cond345 = and i1 %or.cond5.i129, %i.sm
  br i1 %or.cond345, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit130.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit130.thread331, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit130.thread331: ; preds = %bb.bx
  %4 = icmp slt i16 %i.sh, -8192
  %i.sn = zext i32 %.055.i.i.i62366 to i64
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %.0.i125, i64 %i.sn
  %i.sp = sub i32 %.057.i.i.i61365, %.055.i.i.i62366
  %i.sq = zext i32 %i.sp to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.rt, ptr noundef %i.so, i64 noundef %i.sq)
  br i1 %4, label %bb.by, label %bb.cg

bb.by:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit130.thread331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.sr = icmp samesign ult i16 %i.sh, -9216
  br i1 %i.sr, label %bb.bz, label %bb.ce

bb.bz:                                            ; preds = %bb.by
  %i.ss = add nuw i32 %.057.i.i.i61365, 1         ; 3 uses
  %i.st = icmp ugt i32 %i.rp, %i.ss
  br i1 %i.st, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %i.su = zext i32 %i.ss to i64
  %i.sv = getelementptr inbounds nuw [2 x i8], ptr %.0.i125, i64 %i.su
  %i.sw = load i16, ptr %i.sv, align 2            ; 2 uses
  %i.sx = and i16 %i.sw, -1024
  %i.sy = icmp eq i16 %i.sx, -9216
  %i.sz = load ptr, ptr %i.rw, align 8            ; 4 uses
  br i1 %i.sy, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 2
  store ptr %i.ta, ptr %i.rw, align 8
  store i16 %i.sh, ptr %i.sz, align 2
  %i.tb = load ptr, ptr %i.rw, align 8            ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 2
  store ptr %i.tc, ptr %i.rw, align 8
  store i16 %i.sw, ptr %i.tb, align 2
  br label %bb.cf

bb.cc:                                            ; preds = %bb.ca
  store i16 92, ptr %i.sz, align 2
  %i.td = getelementptr inbounds nuw i8, ptr %i.sz, i64 2
  store i16 117, ptr %i.td, align 2
  %i.te = load ptr, ptr %i.rw, align 8
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 4
  store ptr %i.tf, ptr %i.rw, align 8
  %i.tg = uitofp i16 %i.sh to double
  %i.th = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.tg, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.ti = extractvalue { i64, ptr } %i.th, 0      ; 2 uses
  %i.tj = extractvalue { i64, ptr } %i.th, 1
  %i.tk = load ptr, ptr %i.rw, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.tk, ptr noundef %i.tj, i64 noundef %i.ti)
  %i.tl = load ptr, ptr %i.rw, align 8
  %i.tm = getelementptr inbounds nuw [2 x i8], ptr %i.tl, i64 %i.ti
  store ptr %i.tm, ptr %i.rw, align 8
  br label %bb.cf

bb.cd:                                            ; preds = %bb.bz
  %i.tn = load ptr, ptr %i.rw, align 8            ; 2 uses
  store i16 92, ptr %i.tn, align 2
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 2
  store i16 117, ptr %i.to, align 2
  %i.tp = load ptr, ptr %i.rw, align 8
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 4
  store ptr %i.tq, ptr %i.rw, align 8
  %i.tr = uitofp i16 %i.sh to double
  %i.ts = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.tr, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.tt = extractvalue { i64, ptr } %i.ts, 0      ; 2 uses
  %i.tu = extractvalue { i64, ptr } %i.ts, 1
  %i.tv = load ptr, ptr %i.rw, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.tv, ptr noundef %i.tu, i64 noundef %i.tt)
  %i.tw = load ptr, ptr %i.rw, align 8
  %i.tx = getelementptr inbounds nuw [2 x i8], ptr %i.tw, i64 %i.tt
  store ptr %i.tx, ptr %i.rw, align 8
  br label %bb.cf

bb.ce:                                            ; preds = %bb.by
  %i.ty = load ptr, ptr %i.rw, align 8            ; 2 uses
  store i16 92, ptr %i.ty, align 2
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 2
  store i16 117, ptr %i.tz, align 2
  %i.ua = load ptr, ptr %i.rw, align 8
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 4
  store ptr %i.ub, ptr %i.rw, align 8
  %i.uc = uitofp i16 %i.sh to double
  %i.ud = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.uc, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.ue = extractvalue { i64, ptr } %i.ud, 0      ; 2 uses
  %i.uf = extractvalue { i64, ptr } %i.ud, 1
  %i.ug = load ptr, ptr %i.rw, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ug, ptr noundef %i.uf, i64 noundef %i.ue)
  %i.uh = load ptr, ptr %i.rw, align 8
  %i.ui = getelementptr inbounds nuw [2 x i8], ptr %i.uh, i64 %i.ue
  store ptr %i.ui, ptr %i.rw, align 8
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.cb
  %.259.i.i.i69 = phi i32 [ %.057.i.i.i61365, %bb.ce ], [ %.057.i.i.i61365, %bb.cd ], [ %i.ss, %bb.cb ], [ %.057.i.i.i61365, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ch

bb.cg:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit130.thread331
  %i.uj = zext i16 %i.sh to i64
  %i.uk = shl nuw nsw i64 %i.uj, 3
  %i.ul = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.uk ; 2 uses
  %i.um = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ul) #26 ; 2 uses
  %i.un = load ptr, ptr %i.rw, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.un, ptr noundef nonnull %i.ul, i64 noundef %i.um)
  %i.uo = load ptr, ptr %i.rw, align 8
  %i.up = getelementptr inbounds nuw [2 x i8], ptr %i.uo, i64 %i.um
  store ptr %i.up, ptr %i.rw, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.3.i.i.i64 = phi i32 [ %.259.i.i.i69, %bb.cf ], [ %.057.i.i.i61365, %bb.cg ] ; 2 uses
  %.156.i.i.i65 = add nuw i32 %.3.i.i.i64, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit130.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit130.thread: ; preds = %bb.bx, %.lr.ph, %bb.ch
  %.4.i.i.i66 = phi i32 [ %.3.i.i.i64, %bb.ch ], [ %.057.i.i.i61365, %bb.bx ], [ %.057.i.i.i61365, %.lr.ph ]
  %.2.i.i.i67 = phi i32 [ %.156.i.i.i65, %bb.ch ], [ %.055.i.i.i62366, %bb.bx ], [ %.055.i.i.i62366, %.lr.ph ] ; 3 uses
  %i.uq = add nuw i32 %.4.i.i.i66, 1              ; 2 uses
  %i.ur = icmp ugt i32 %i.rp, %i.uq
  br i1 %i.ur, label %.lr.ph, label %._crit_edge, !llvm.loop !350

bb.ci:                                            ; preds = %._crit_edge
  %i.us = zext i32 %.2.i.i.i67 to i64             ; 2 uses
  %i.ut = getelementptr inbounds nuw [2 x i8], ptr %.0.i125, i64 %i.us ; 17 uses
  %i.uu = sub nuw nsw i64 %i.rq, %i.us            ; 3 uses
  %trunc = trunc nuw i64 %i.uu to i32
  switch i32 %trunc, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i133 [
    i32 1, label %bb.cj
    i32 2, label %bb.ck
    i32 3, label %bb.cl
    i32 4, label %bb.cm
    i32 5, label %bb.cn
    i32 6, label %bb.co
    i32 7, label %bb.cp
    i32 8, label %bb.cq
    i32 9, label %bb.cr
    i32 10, label %bb.cs
    i32 11, label %bb.ct
    i32 12, label %bb.cu
    i32 13, label %bb.cv
    i32 14, label %bb.cw
    i32 15, label %bb.cx
    i32 16, label %bb.cy
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135
  ]

bb.cj:                                            ; preds = %bb.ci
  %i.uv = load i16, ptr %i.ut, align 2
  store i16 %i.uv, ptr %.pre417, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.ck:                                            ; preds = %bb.ci
  %i.uw = load i32, ptr %i.ut, align 2
  store i32 %i.uw, ptr %.pre417, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cl:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre417, ptr noundef nonnull align 2 dereferenceable(6) %i.ut, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cm:                                            ; preds = %bb.ci
  %i.ux = load i64, ptr %i.ut, align 2
  store i64 %i.ux, ptr %.pre417, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cn:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre417, ptr noundef nonnull align 2 dereferenceable(10) %i.ut, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.co:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre417, ptr noundef nonnull align 2 dereferenceable(12) %i.ut, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cp:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre417, ptr noundef nonnull align 2 dereferenceable(14) %i.ut, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cq:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre417, ptr noundef nonnull align 2 dereferenceable(16) %i.ut, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cr:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre417, ptr noundef nonnull align 2 dereferenceable(18) %i.ut, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cs:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre417, ptr noundef nonnull align 2 dereferenceable(20) %i.ut, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.ct:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre417, ptr noundef nonnull align 2 dereferenceable(22) %i.ut, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cu:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre417, ptr noundef nonnull align 2 dereferenceable(24) %i.ut, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cv:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre417, ptr noundef nonnull align 2 dereferenceable(26) %i.ut, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cw:                                            ; preds = %bb.ci
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre417, ptr noundef nonnull align 2 dereferenceable(28) %i.ut, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit135

bb.cx:                                            ; preds = %bb.ci
end_hunk_13
begin_hunk_14_@_ZN2v88internal19FastJsonStringifierItE16SerializeJSArrayENS0_6TaggedINS0_7JSArrayEEE:bb.a
  %i.tq = icmp ugt i32 %i.te, 31
  br i1 %i.tq, label %.lr.ph1106, label %.preheader907

.preheader907:                                    ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit207
  %i.tr = icmp samesign ugt i32 %i.te, 3
  br i1 %i.tr, label %.lr.ph1099.preheader, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i17.i

.lr.ph1099.preheader:                             ; preds = %.preheader907
  %i.ts = and i64 %i.tf, 28
  br label %.lr.ph1099

.lr.ph1106:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit207
  %i.tt = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.tf
  %i.tu = ptrtoint ptr %i.pb to i64               ; 2 uses
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph1106, %bb.br
  %.054.i.i20.i1104 = phi i64 [ 0, %.lr.ph1106 ], [ %.155.i.i26.i, %bb.br ] ; 3 uses
  %.056.i.i19.i1103 = phi ptr [ %i.pb, %.lr.ph1106 ], [ %i.uy, %bb.br ] ; 4 uses
  %i.tv = load <16 x i8>, ptr %.056.i.i19.i1103, align 1 ; 3 uses
  %i.tw = icmp ult <16 x i8> %i.tv, splat (i8 32)
  %i.tx = icmp eq <16 x i8> %i.tv, splat (i8 34)
  %i.ty = icmp eq <16 x i8> %i.tv, splat (i8 92)
  %i.tz = or <16 x i1> %i.tw, %i.tx
  %i.ua = or <16 x i1> %i.ty, %i.tz
  %i.ub = bitcast <16 x i1> %i.ua to i16          ; 2 uses
  %i.uc = icmp eq i16 %i.ub, 0
  br i1 %i.uc, label %bb.br, label %bb.bo, !prof !11

bb.bo:                                            ; preds = %bb.bn
  %i.ud = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ub, i1 true)
  %i.ue = zext nneg i16 %i.ud to i64              ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.056.i.i19.i1103, i64 %i.ue ; 2 uses
  %i.ug = load i8, ptr %i.uf, align 1             ; 2 uses
  %i.uh = ptrtoint ptr %.056.i.i19.i1103 to i64
  %i.ui = sub i64 %i.uh, %i.tu
  %i.uj = add i64 %i.ui, %i.ue                    ; 2 uses
  %i.uk = sub i64 %i.uj, %.054.i.i20.i1104        ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.pb, i64 %.054.i.i20.i1104
  %i.um = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.um, ptr noundef %i.ul, i64 noundef %i.uk)
  %i.un = load ptr, ptr %i.ab, align 8
  %i.uo = getelementptr inbounds nuw [2 x i8], ptr %i.un, i64 %i.uk ; 2 uses
  store ptr %i.uo, ptr %i.ab, align 8
  %i.up = icmp ult i8 %i.ug, 96
  br i1 %i.up, label %bb.bq, label %bb.bp, !prof !11

bb.bp:                                            ; preds = %bb.bo
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.32) #22
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.uq = zext nneg i8 %i.ug to i64
  %i.ur = shl nuw nsw i64 %i.uq, 3
  %i.us = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.ur ; 2 uses
  %i.ut = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.us) #26 ; 2 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.uo, ptr noundef nonnull %i.us, i64 noundef %i.ut)
  %i.uu = load ptr, ptr %i.ab, align 8
  %i.uv = getelementptr inbounds nuw [2 x i8], ptr %i.uu, i64 %i.ut
  store ptr %i.uv, ptr %i.ab, align 8
  %i.uw = add i64 %i.uj, 1
  %i.ux = getelementptr inbounds i8, ptr %i.uf, i64 -15
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bn
  %.157.i.i25.i = phi ptr [ %i.ux, %bb.bq ], [ %.056.i.i19.i1103, %bb.bn ] ; 2 uses
  %.155.i.i26.i = phi i64 [ %i.uw, %bb.bq ], [ %.054.i.i20.i1104, %bb.bn ] ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.157.i.i25.i, i64 16 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.157.i.i25.i, i64 31
  %i.va = icmp ult ptr %i.uz, %i.tt
  br i1 %i.va, label %bb.bn, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i22.i, !llvm.loop !346

_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i22.i: ; preds = %bb.br
  %i.vb = ptrtoint ptr %i.uy to i64
  %i.vc = sub i64 %i.vb, %i.tu                    ; 3 uses
  %i.vd = add i64 %i.vc, 3
  %i.ve = icmp ult i64 %i.vd, %i.tf
  br i1 %i.ve, label %.lr.ph1110, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i

.lr.ph1110:                                       ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i22.i, %bb.bs
  %.013.i.i23.i1109 = phi i64 [ %i.vr, %bb.bs ], [ %i.vc, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i22.i ] ; 4 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.pb, i64 %.013.i.i23.i1109
  %i.vg = load i32, ptr %i.vf, align 4            ; 4 uses
  %i.vh = add i32 %i.vg, -538976288
  %i.vi = xor i32 %i.vg, 572662306
  %i.vj = add i32 %i.vi, -16843009
  %i.vk = xor i32 %i.vg, 1549556828
  %i.vl = add i32 %i.vk, -16843009
  %i.vm = and i32 %i.vg, -2139062144
  %i.vn = xor i32 %i.vm, -2139062144
  %i.vo = or i32 %i.vj, %i.vh
  %i.vp = or i32 %i.vo, %i.vl
  %i.vq = and i32 %i.vp, %i.vn
  %.not896 = icmp eq i32 %i.vq, 0
  br i1 %.not896, label %bb.bs, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i

bb.bs:                                            ; preds = %.lr.ph1110
  %i.vr = add i64 %.013.i.i23.i1109, 4            ; 2 uses
  %i.vs = add i64 %.013.i.i23.i1109, 7
  %i.vt = icmp ult i64 %i.vs, %i.tf
  br i1 %i.vt, label %.lr.ph1110, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i, !llvm.loop !347

_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i: ; preds = %bb.bs, %.lr.ph1110, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i22.i
  %.013.i.i23.i.lcssa = phi i64 [ %i.vc, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i22.i ], [ %.013.i.i23.i1109, %.lr.ph1110 ], [ %i.vr, %bb.bs ]
  %i.vu = call noundef zeroext i1 @_ZN2v88internal19FastJsonStringifierItE18AppendStringScalarIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef nonnull %i.pb, i64 noundef %i.tf, i64 noundef %.013.i.i23.i.lcssa, i64 noundef %.155.i.i26.i, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i

.lr.ph1099:                                       ; preds = %.lr.ph1099.preheader, %bb.bt
  %.013.i8.i16.i1098 = phi i64 [ %i.wh, %bb.bt ], [ 0, %.lr.ph1099.preheader ] ; 3 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.pb, i64 %.013.i8.i16.i1098
  %i.vw = load i32, ptr %i.vv, align 4            ; 4 uses
  %i.vx = add i32 %i.vw, -538976288
  %i.vy = xor i32 %i.vw, 572662306
  %i.vz = add i32 %i.vy, -16843009
  %i.wa = xor i32 %i.vw, 1549556828
  %i.wb = add i32 %i.wa, -16843009
  %i.wc = and i32 %i.vw, -2139062144
  %i.wd = xor i32 %i.wc, -2139062144
  %i.we = or i32 %i.vz, %i.vx
  %i.wf = or i32 %i.we, %i.wb
  %i.wg = and i32 %i.wf, %i.wd
  %.not895 = icmp eq i32 %i.wg, 0
  br i1 %.not895, label %bb.bt, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i17.i

bb.bt:                                            ; preds = %.lr.ph1099
  %i.wh = add nuw nsw i64 %.013.i8.i16.i1098, 4   ; 2 uses
  %i.wi = or disjoint i64 %i.wh, 3
  %i.wj = icmp samesign ult i64 %i.wi, %i.tf
  br i1 %i.wj, label %.lr.ph1099, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i17.i, !llvm.loop !347

_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i17.i: ; preds = %bb.bt, %.lr.ph1099, %.preheader907
  %.013.i8.i16.i.lcssa = phi i64 [ 0, %.preheader907 ], [ %.013.i8.i16.i1098, %.lr.ph1099 ], [ %i.ts, %bb.bt ]
  %i.wk = call noundef zeroext i1 @_ZN2v88internal19FastJsonStringifierItE18AppendStringScalarIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef nonnull %i.pb, i64 noundef %i.tf, i64 noundef %.013.i8.i16.i.lcssa, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i: ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i17.i, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i
  %i.wl = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 2
  store ptr %i.wm, ptr %i.ab, align 8
  store i16 34, ptr %i.wl, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.bu:                                            ; preds = %bb.u, %bb.u
  %i.wn = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 4 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  %i.wp = load i32, ptr %i.wo, align 4            ; 5 uses
  %i.wq = zext i32 %i.wp to i64                   ; 2 uses
  %i.wr = shl nuw nsw i64 %i.wq, 3
  %i.ws = or disjoint i64 %i.wr, 2                ; 2 uses
  %i.wt = load ptr, ptr %i.z, align 8
  %i.wu = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.wv = ptrtoint ptr %i.wt to i64
  %i.ww = ptrtoint ptr %i.wu to i64
  %i.wx = sub i64 %i.wv, %i.ww
  %i.wy = ashr exact i64 %i.wx, 1
  %.not.i208 = icmp ugt i64 %i.ws, %i.wy
  br i1 %.not.i208, label %bb.bv, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit209, !prof !6

bb.bv:                                            ; preds = %bb.bu
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef %i.ws)
  %.pre1306 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit209

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit209: ; preds = %bb.bu, %bb.bv
  %i.wz = phi ptr [ %i.wu, %bb.bu ], [ %.pre1306, %bb.bv ] ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 2
  store ptr %i.xa, ptr %i.ab, align 8
  store i16 34, ptr %i.wz, align 2
  %.not1182 = icmp eq i32 %i.wp, 0
  br i1 %.not1182, label %._crit_edge1096.thread, label %.lr.ph1095

._crit_edge1096.thread:                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit209
  %.pre13071474 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

._crit_edge1096:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread
  %i.xb = icmp ugt i32 %i.wp, %.2.i.i.i
  %.pre1307 = load ptr, ptr %i.ab, align 8        ; 18 uses
  br i1 %i.xb, label %bb.ch, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

.lr.ph1095:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit209, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread
  %.055.i.i.i1094 = phi i32 [ %.2.i.i.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit209 ] ; 4 uses
  %.057.i.i.i1093 = phi i32 [ %i.zn, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit209 ] ; 9 uses
  %i.xc = zext i32 %.057.i.i.i1093 to i64
  %i.xd = getelementptr inbounds nuw [2 x i8], ptr %i.wn, i64 %i.xc
  %i.xe = load i16, ptr %i.xd, align 2            ; 11 uses
  %i.xf = and i16 %i.xe, -2
  %or.cond.i = icmp eq i16 %i.xf, 32
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph1095
  %i.xg = icmp ugt i16 %i.xe, 34
  %i.xh = icmp ne i16 %i.xe, 92
  %or.cond5.i = and i1 %i.xg, %i.xh
  %i.xi = add i16 %i.xe, 8192
  %i.xj = icmp ult i16 %i.xi, -2048
  %or.cond = and i1 %or.cond5.i, %i.xj
  br i1 %or.cond, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread813, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread813: ; preds = %bb.bw
  %4 = icmp slt i16 %i.xe, -8192
  %i.xk = zext i32 %.055.i.i.i1094 to i64
  %i.xl = getelementptr inbounds nuw [2 x i8], ptr %i.wn, i64 %i.xk
  %i.xm = sub i32 %.057.i.i.i1093, %.055.i.i.i1094
  %i.xn = zext i32 %i.xm to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.y, ptr noundef nonnull %i.xl, i64 noundef %i.xn)
  br i1 %4, label %bb.bx, label %bb.cf

bb.bx:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #21
  %i.xo = icmp samesign ult i16 %i.xe, -9216
  br i1 %i.xo, label %bb.by, label %bb.cd

bb.by:                                            ; preds = %bb.bx
  %i.xp = add nuw i32 %.057.i.i.i1093, 1          ; 3 uses
  %i.xq = icmp ugt i32 %i.wp, %i.xp
  br i1 %i.xq, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.xr = zext i32 %i.xp to i64
  %i.xs = getelementptr inbounds nuw [2 x i8], ptr %i.wn, i64 %i.xr
  %i.xt = load i16, ptr %i.xs, align 2            ; 2 uses
  %i.xu = and i16 %i.xt, -1024
  %i.xv = icmp eq i16 %i.xu, -9216
  %i.xw = load ptr, ptr %i.ab, align 8            ; 4 uses
  br i1 %i.xv, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 2
  store ptr %i.xx, ptr %i.ab, align 8
  store i16 %i.xe, ptr %i.xw, align 2
  %i.xy = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 2
  store ptr %i.xz, ptr %i.ab, align 8
  store i16 %i.xt, ptr %i.xy, align 2
  br label %bb.ce

bb.cb:                                            ; preds = %bb.bz
  store i16 92, ptr %i.xw, align 2
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xw, i64 2
  store i16 117, ptr %i.ya, align 2
  %i.yb = load ptr, ptr %i.ab, align 8
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 4
  store ptr %i.yc, ptr %i.ab, align 8
  %i.yd = uitofp i16 %i.xe to double
  %i.ye = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.yd, i32 noundef 16, ptr nonnull %i.i, i64 2200) #21 ; 2 uses
  %i.yf = extractvalue { i64, ptr } %i.ye, 0      ; 2 uses
  %i.yg = extractvalue { i64, ptr } %i.ye, 1
  %i.yh = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.yh, ptr noundef %i.yg, i64 noundef %i.yf)
  %i.yi = load ptr, ptr %i.ab, align 8
  %i.yj = getelementptr inbounds nuw [2 x i8], ptr %i.yi, i64 %i.yf
  store ptr %i.yj, ptr %i.ab, align 8
  br label %bb.ce

bb.cc:                                            ; preds = %bb.by
  %i.yk = load ptr, ptr %i.ab, align 8            ; 2 uses
  store i16 92, ptr %i.yk, align 2
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 2
  store i16 117, ptr %i.yl, align 2
  %i.ym = load ptr, ptr %i.ab, align 8
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 4
  store ptr %i.yn, ptr %i.ab, align 8
  %i.yo = uitofp i16 %i.xe to double
  %i.yp = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.yo, i32 noundef 16, ptr nonnull %i.i, i64 2200) #21 ; 2 uses
  %i.yq = extractvalue { i64, ptr } %i.yp, 0      ; 2 uses
  %i.yr = extractvalue { i64, ptr } %i.yp, 1
  %i.ys = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ys, ptr noundef %i.yr, i64 noundef %i.yq)
  %i.yt = load ptr, ptr %i.ab, align 8
  %i.yu = getelementptr inbounds nuw [2 x i8], ptr %i.yt, i64 %i.yq
  store ptr %i.yu, ptr %i.ab, align 8
  br label %bb.ce

bb.cd:                                            ; preds = %bb.bx
  %i.yv = load ptr, ptr %i.ab, align 8            ; 2 uses
  store i16 92, ptr %i.yv, align 2
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 2
  store i16 117, ptr %i.yw, align 2
  %i.yx = load ptr, ptr %i.ab, align 8
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 4
  store ptr %i.yy, ptr %i.ab, align 8
  %i.yz = uitofp i16 %i.xe to double
  %i.za = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.yz, i32 noundef 16, ptr nonnull %i.i, i64 2200) #21 ; 2 uses
  %i.zb = extractvalue { i64, ptr } %i.za, 0      ; 2 uses
  %i.zc = extractvalue { i64, ptr } %i.za, 1
  %i.zd = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.zd, ptr noundef %i.zc, i64 noundef %i.zb)
  %i.ze = load ptr, ptr %i.ab, align 8
  %i.zf = getelementptr inbounds nuw [2 x i8], ptr %i.ze, i64 %i.zb
  store ptr %i.zf, ptr %i.ab, align 8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.ca
  %.259.i.i.i = phi i32 [ %.057.i.i.i1093, %bb.cd ], [ %.057.i.i.i1093, %bb.cc ], [ %i.xp, %bb.ca ], [ %.057.i.i.i1093, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #21
  br label %bb.cg

bb.cf:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread813
  %i.zg = zext i16 %i.xe to i64
  %i.zh = shl nuw nsw i64 %i.zg, 3
  %i.zi = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.zh ; 2 uses
  %i.zj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.zi) #26 ; 2 uses
  %i.zk = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.zk, ptr noundef nonnull %i.zi, i64 noundef %i.zj)
  %i.zl = load ptr, ptr %i.ab, align 8
  %i.zm = getelementptr inbounds nuw [2 x i8], ptr %i.zl, i64 %i.zj
  store ptr %i.zm, ptr %i.ab, align 8
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.3.i.i.i = phi i32 [ %.259.i.i.i, %bb.ce ], [ %.057.i.i.i1093, %bb.cf ] ; 2 uses
  %.156.i.i.i = add nuw i32 %.3.i.i.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread: ; preds = %bb.bw, %.lr.ph1095, %bb.cg
  %.4.i.i.i = phi i32 [ %.3.i.i.i, %bb.cg ], [ %.057.i.i.i1093, %bb.bw ], [ %.057.i.i.i1093, %.lr.ph1095 ]
  %.2.i.i.i = phi i32 [ %.156.i.i.i, %bb.cg ], [ %.055.i.i.i1094, %bb.bw ], [ %.055.i.i.i1094, %.lr.ph1095 ] ; 3 uses
  %i.zn = add nuw i32 %.4.i.i.i, 1                ; 2 uses
  %i.zo = icmp ugt i32 %i.wp, %i.zn
  br i1 %i.zo, label %.lr.ph1095, label %._crit_edge1096, !llvm.loop !350

bb.ch:                                            ; preds = %._crit_edge1096
  %i.zp = zext i32 %.2.i.i.i to i64               ; 2 uses
  %i.zq = getelementptr inbounds nuw [2 x i8], ptr %i.wn, i64 %i.zp ; 17 uses
  %i.zr = sub nuw nsw i64 %i.wq, %i.zp            ; 3 uses
  %trunc894 = trunc nuw i64 %i.zr to i32
  switch i32 %trunc894, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i [
    i32 1, label %bb.ci
    i32 2, label %bb.cj
    i32 3, label %bb.ck
    i32 4, label %bb.cl
    i32 5, label %bb.cm
    i32 6, label %bb.cn
    i32 7, label %bb.co
    i32 8, label %bb.cp
    i32 9, label %bb.cq
    i32 10, label %bb.cr
    i32 11, label %bb.cs
    i32 12, label %bb.ct
    i32 13, label %bb.cu
    i32 14, label %bb.cv
    i32 15, label %bb.cw
    i32 16, label %bb.cx
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.zs = load i16, ptr %i.zq, align 2
  store i16 %i.zs, ptr %.pre1307, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cj:                                            ; preds = %bb.ch
  %i.zt = load i32, ptr %i.zq, align 2
  store i32 %i.zt, ptr %.pre1307, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ck:                                            ; preds = %bb.ch
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre1307, ptr noundef nonnull align 2 dereferenceable(6) %i.zq, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cl:                                            ; preds = %bb.ch
  %i.zu = load i64, ptr %i.zq, align 2
  store i64 %i.zu, ptr %.pre1307, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cm:                                            ; preds = %bb.ch
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre1307, ptr noundef nonnull align 2 dereferenceable(10) %i.zq, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cn:                                            ; preds = %bb.ch
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre1307, ptr noundef nonnull align 2 dereferenceable(12) %i.zq, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.co:                                            ; preds = %bb.ch
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre1307, ptr noundef nonnull align 2 dereferenceable(14) %i.zq, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cp:                                            ; preds = %bb.ch
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre1307, ptr noundef nonnull align 2 dereferenceable(16) %i.zq, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cq:                                            ; preds = %bb.ch
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre1307, ptr noundef nonnull align 2 dereferenceable(18) %i.zq, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cr:                                            ; preds = %bb.ch
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre1307, ptr noundef nonnull align 2 dereferenceable(20) %i.zq, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cs:                                            ; preds = %bb.ch
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre1307, ptr noundef nonnull align 2 dereferenceable(22) %i.zq, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ct:                                            ; preds = %bb.ch
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre1307, ptr noundef nonnull align 2 dereferenceable(24) %i.zq, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cu:                                            ; preds = %bb.ch
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre1307, ptr noundef nonnull align 2 dereferenceable(26) %i.zq, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cv:                                            ; preds = %bb.ch
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre1307, ptr noundef nonnull align 2 dereferenceable(28) %i.zq, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cw:                                            ; preds = %bb.ch
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre1307, ptr noundef nonnull align 2 dereferenceable(30) %i.zq, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cx:                                            ; preds = %bb.ch
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre1307, ptr noundef nonnull align 2 dereferenceable(32) %i.zq, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.ch
  %.idx.i.i.i.i = shl nuw nsw i64 %i.zr, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre1307, ptr nonnull align 2 %i.zq, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit: ; preds = %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cx, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i
  %i.zv = load ptr, ptr %i.ab, align 8
  %i.zw = getelementptr inbounds nuw [2 x i8], ptr %i.zv, i64 %i.zr
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i: ; preds = %._crit_edge1096.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit, %._crit_edge1096
  %i.zx = phi ptr [ %i.zw, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit ], [ %.pre1307, %._crit_edge1096 ], [ %.pre13071474, %._crit_edge1096.thread ] ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 2
  store ptr %i.zy, ptr %i.ab, align 8
  store i16 34, ptr %i.zx, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.cy:                                            ; preds = %bb.u, %bb.u, %bb.u, %bb.u
  %i.zz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.aaa = load i64, ptr %i.zz, align 8
  %i.aab = inttoptr i64 %i.aaa to ptr             ; 6 uses
  %i.aac = load atomic volatile i64, ptr %i.dx monotonic, align 8
  %i.aad = add i64 %i.aac, 11
  %i.aae = inttoptr i64 %i.aad to ptr
  %i.aaf = load atomic volatile i16, ptr %i.aae monotonic, align 2
  %i.aag = and i16 %i.aaf, 16
  %.not.i210 = icmp eq i16 %i.aag, 0
  br i1 %.not.i210, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.aah = load ptr, ptr %i.aab, align 8
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 16
  %i.aaj = load ptr, ptr %i.aai, align 8
  %i.aak = call noundef zeroext i1 %i.aaj(ptr noundef nonnull align 8 dereferenceable(8) %i.aab) #21, !inline_history !80
  br i1 %i.aak, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aab) #21
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  %i.aam = load ptr, ptr %i.aal, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.db:                                            ; preds = %bb.cz, %bb.cy
  %i.aan = load ptr, ptr %i.aab, align 8
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 72
  %i.aap = load ptr, ptr %i.aao, align 8
  %i.aaq = call noundef ptr %i.aap(ptr noundef nonnull align 8 dereferenceable(16) %i.aab) #21, !inline_history !80
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.da, %bb.db
  %.0.i211 = phi ptr [ %i.aam, %bb.da ], [ %i.aaq, %bb.db ] ; 4 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  %i.aas = load i32, ptr %i.aar, align 4          ; 5 uses
  %i.aat = zext i32 %i.aas to i64                 ; 2 uses
  %i.aau = shl nuw nsw i64 %i.aat, 3
  %i.aav = or disjoint i64 %i.aau, 2              ; 2 uses
  %i.aaw = load ptr, ptr %i.z, align 8
  %i.aax = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.aay = ptrtoint ptr %i.aaw to i64
  %i.aaz = ptrtoint ptr %i.aax to i64
  %i.aba = sub i64 %i.aay, %i.aaz
  %i.abb = ashr exact i64 %i.aba, 1
  %.not.i212 = icmp ugt i64 %i.aav, %i.abb
  br i1 %.not.i212, label %bb.dc, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit213, !prof !6

bb.dc:                                            ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef %i.aav)
  %.pre1304 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit213

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit213: ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.dc
  %i.abc = phi ptr [ %i.aax, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ], [ %.pre1304, %bb.dc ] ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 2
  store ptr %i.abd, ptr %i.ab, align 8
  store i16 34, ptr %i.abc, align 2
  %.not1181 = icmp eq i32 %i.aas, 0
  br i1 %.not1181, label %._crit_edge1091.thread, label %.lr.ph1090

._crit_edge1091.thread:                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit213
  %.pre13051476 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

._crit_edge1091:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit216.thread
  %i.abe = icmp ugt i32 %i.aas, %.2.i.i69.i
  %.pre1305 = load ptr, ptr %i.ab, align 8        ; 18 uses
  br i1 %i.abe, label %bb.do, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

.lr.ph1090:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit213, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit216.thread
  %.055.i.i64.i1089 = phi i32 [ %.2.i.i69.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit216.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit213 ] ; 4 uses
  %.057.i.i63.i1088 = phi i32 [ %i.adq, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit216.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit213 ] ; 9 uses
  %i.abf = zext i32 %.057.i.i63.i1088 to i64
  %i.abg = getelementptr inbounds nuw [2 x i8], ptr %.0.i211, i64 %i.abf
  %i.abh = load i16, ptr %i.abg, align 2          ; 11 uses
  %i.abi = and i16 %i.abh, -2
  %or.cond.i214 = icmp eq i16 %i.abi, 32
  br i1 %or.cond.i214, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit216.thread, label %bb.dd

bb.dd:                                            ; preds = %.lr.ph1090
  %i.abj = icmp ugt i16 %i.abh, 34
  %i.abk = icmp ne i16 %i.abh, 92
  %or.cond5.i215 = and i1 %i.abj, %i.abk
  %i.abl = add i16 %i.abh, 8192
  %i.abm = icmp ult i16 %i.abl, -2048
  %or.cond863 = and i1 %or.cond5.i215, %i.abm
  br i1 %or.cond863, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit216.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit216.thread814, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit216.thread814: ; preds = %bb.dd
  %5 = icmp slt i16 %i.abh, -8192
  %i.abn = zext i32 %.055.i.i64.i1089 to i64
  %i.abo = getelementptr inbounds nuw [2 x i8], ptr %.0.i211, i64 %i.abn
  %i.abp = sub i32 %.057.i.i63.i1088, %.055.i.i64.i1089
  %i.abq = zext i32 %i.abp to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.y, ptr noundef %i.abo, i64 noundef %i.abq)
  br i1 %5, label %bb.de, label %bb.dm

bb.de:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit216.thread814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  %i.abr = icmp samesign ult i16 %i.abh, -9216
  br i1 %i.abr, label %bb.df, label %bb.dk

bb.df:                                            ; preds = %bb.de
  %i.abs = add nuw i32 %.057.i.i63.i1088, 1       ; 3 uses
  %i.abt = icmp ugt i32 %i.aas, %i.abs
  br i1 %i.abt, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.abu = zext i32 %i.abs to i64
  %i.abv = getelementptr inbounds nuw [2 x i8], ptr %.0.i211, i64 %i.abu
  %i.abw = load i16, ptr %i.abv, align 2          ; 2 uses
  %i.abx = and i16 %i.abw, -1024
  %i.aby = icmp eq i16 %i.abx, -9216
  %i.abz = load ptr, ptr %i.ab, align 8           ; 4 uses
  br i1 %i.aby, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 2
  store ptr %i.aca, ptr %i.ab, align 8
  store i16 %i.abh, ptr %i.abz, align 2
  %i.acb = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 2
  store ptr %i.acc, ptr %i.ab, align 8
  store i16 %i.abw, ptr %i.acb, align 2
  br label %bb.dl

bb.di:                                            ; preds = %bb.dg
  store i16 92, ptr %i.abz, align 2
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abz, i64 2
  store i16 117, ptr %i.acd, align 2
  %i.ace = load ptr, ptr %i.ab, align 8
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 4
  store ptr %i.acf, ptr %i.ab, align 8
  %i.acg = uitofp i16 %i.abh to double
  %i.ach = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.acg, i32 noundef 16, ptr nonnull %i.g, i64 2200) #21 ; 2 uses
  %i.aci = extractvalue { i64, ptr } %i.ach, 0    ; 2 uses
  %i.acj = extractvalue { i64, ptr } %i.ach, 1
  %i.ack = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ack, ptr noundef %i.acj, i64 noundef %i.aci)
  %i.acl = load ptr, ptr %i.ab, align 8
  %i.acm = getelementptr inbounds nuw [2 x i8], ptr %i.acl, i64 %i.aci
  store ptr %i.acm, ptr %i.ab, align 8
  br label %bb.dl

bb.dj:                                            ; preds = %bb.df
  %i.acn = load ptr, ptr %i.ab, align 8           ; 2 uses
  store i16 92, ptr %i.acn, align 2
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 2
  store i16 117, ptr %i.aco, align 2
  %i.acp = load ptr, ptr %i.ab, align 8
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 4
  store ptr %i.acq, ptr %i.ab, align 8
  %i.acr = uitofp i16 %i.abh to double
  %i.acs = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.acr, i32 noundef 16, ptr nonnull %i.g, i64 2200) #21 ; 2 uses
  %i.act = extractvalue { i64, ptr } %i.acs, 0    ; 2 uses
  %i.acu = extractvalue { i64, ptr } %i.acs, 1
  %i.acv = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.acv, ptr noundef %i.acu, i64 noundef %i.act)
  %i.acw = load ptr, ptr %i.ab, align 8
  %i.acx = getelementptr inbounds nuw [2 x i8], ptr %i.acw, i64 %i.act
  store ptr %i.acx, ptr %i.ab, align 8
  br label %bb.dl

bb.dk:                                            ; preds = %bb.de
  %i.acy = load ptr, ptr %i.ab, align 8           ; 2 uses
  store i16 92, ptr %i.acy, align 2
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 2
  store i16 117, ptr %i.acz, align 2
  %i.ada = load ptr, ptr %i.ab, align 8
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 4
  store ptr %i.adb, ptr %i.ab, align 8
  %i.adc = uitofp i16 %i.abh to double
  %i.add = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.adc, i32 noundef 16, ptr nonnull %i.g, i64 2200) #21 ; 2 uses
  %i.ade = extractvalue { i64, ptr } %i.add, 0    ; 2 uses
  %i.adf = extractvalue { i64, ptr } %i.add, 1
  %i.adg = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.adg, ptr noundef %i.adf, i64 noundef %i.ade)
  %i.adh = load ptr, ptr %i.ab, align 8
  %i.adi = getelementptr inbounds nuw [2 x i8], ptr %i.adh, i64 %i.ade
  store ptr %i.adi, ptr %i.ab, align 8
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dh
  %.259.i.i71.i = phi i32 [ %.057.i.i63.i1088, %bb.dk ], [ %.057.i.i63.i1088, %bb.dj ], [ %i.abs, %bb.dh ], [ %.057.i.i63.i1088, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  br label %bb.dn

bb.dm:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit216.thread814
  %i.adj = zext i16 %i.abh to i64
  %i.adk = shl nuw nsw i64 %i.adj, 3
  %i.adl = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.adk ; 2 uses
  %i.adm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.adl) #26 ; 2 uses
  %i.adn = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.adn, ptr noundef nonnull %i.adl, i64 noundef %i.adm)
  %i.ado = load ptr, ptr %i.ab, align 8
  %i.adp = getelementptr inbounds nuw [2 x i8], ptr %i.ado, i64 %i.adm
  store ptr %i.adp, ptr %i.ab, align 8
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.3.i.i66.i = phi i32 [ %.259.i.i71.i, %bb.dl ], [ %.057.i.i63.i1088, %bb.dm ] ; 2 uses
  %.156.i.i67.i = add nuw i32 %.3.i.i66.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit216.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit216.thread: ; preds = %bb.dd, %.lr.ph1090, %bb.dn
  %.4.i.i68.i = phi i32 [ %.3.i.i66.i, %bb.dn ], [ %.057.i.i63.i1088, %bb.dd ], [ %.057.i.i63.i1088, %.lr.ph1090 ]
  %.2.i.i69.i = phi i32 [ %.156.i.i67.i, %bb.dn ], [ %.055.i.i64.i1089, %bb.dd ], [ %.055.i.i64.i1089, %.lr.ph1090 ] ; 3 uses
  %i.adq = add nuw i32 %.4.i.i68.i, 1             ; 2 uses
  %i.adr = icmp ugt i32 %i.aas, %i.adq
  br i1 %i.adr, label %.lr.ph1090, label %._crit_edge1091, !llvm.loop !350

bb.do:                                            ; preds = %._crit_edge1091
  %i.ads = zext i32 %.2.i.i69.i to i64            ; 2 uses
  %i.adt = getelementptr inbounds nuw [2 x i8], ptr %.0.i211, i64 %i.ads ; 17 uses
  %i.adu = sub nuw nsw i64 %i.aat, %i.ads         ; 3 uses
  %trunc893 = trunc nuw i64 %i.adu to i32
  switch i32 %trunc893, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i219 [
    i32 1, label %bb.dp
    i32 2, label %bb.dq
    i32 3, label %bb.dr
    i32 4, label %bb.ds
    i32 5, label %bb.dt
    i32 6, label %bb.du
    i32 7, label %bb.dv
    i32 8, label %bb.dw
    i32 9, label %bb.dx
    i32 10, label %bb.dy
    i32 11, label %bb.dz
    i32 12, label %bb.ea
    i32 13, label %bb.eb
    i32 14, label %bb.ec
    i32 15, label %bb.ed
    i32 16, label %bb.ee
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit221
  ]

bb.dp:                                            ; preds = %bb.do
  %i.adv = load i16, ptr %i.adt, align 2
  store i16 %i.adv, ptr %.pre1305, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit221

bb.dq:                                            ; preds = %bb.do
  %i.adw = load i32, ptr %i.adt, align 2
  store i32 %i.adw, ptr %.pre1305, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit221

bb.dr:                                            ; preds = %bb.do
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre1305, ptr noundef nonnull align 2 dereferenceable(6) %i.adt, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit221

bb.ds:                                            ; preds = %bb.do
  %i.adx = load i64, ptr %i.adt, align 2
  store i64 %i.adx, ptr %.pre1305, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit221

bb.dt:                                            ; preds = %bb.do
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre1305, ptr noundef nonnull align 2 dereferenceable(10) %i.adt, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit221

bb.du:                                            ; preds = %bb.do
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre1305, ptr noundef nonnull align 2 dereferenceable(12) %i.adt, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit221

bb.dv:                                            ; preds = %bb.do
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre1305, ptr noundef nonnull align 2 dereferenceable(14) %i.adt, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit221

bb.dw:                                            ; preds = %bb.do
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre1305, ptr noundef nonnull align 2 dereferenceable(16) %i.adt, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit221

bb.dx:                                            ; preds = %bb.do
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre1305, ptr noundef nonnull align 2 dereferenceable(18) %i.adt, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit221

bb.dy:                                            ; preds = %bb.do
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre1305, ptr noundef nonnull align 2 dereferenceable(20) %i.adt, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit221

bb.dz:                                            ; preds = %bb.do
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre1305, ptr noundef nonnull align 2 dereferenceable(22) %i.adt, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit221

bb.ea:                                            ; preds = %bb.do
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre1305, ptr noundef nonnull align 2 dereferenceable(24) %i.adt, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit221

bb.eb:                                            ; preds = %bb.do
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre1305, ptr noundef nonnull align 2 dereferenceable(26) %i.adt, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit221

bb.ec:                                            ; preds = %bb.do
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre1305, ptr noundef nonnull align 2 dereferenceable(28) %i.adt, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit221

bb.ed:                                            ; preds = %bb.do
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre1305, ptr noundef nonnull align 2 dereferenceable(30) %i.adt, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit221

bb.ee:                                            ; preds = %bb.do
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre1305, ptr noundef nonnull align 2 dereferenceable(32) %i.adt, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit221

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i219: ; preds = %bb.do
  %.idx.i.i.i.i220 = shl nuw nsw i64 %i.adu, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre1305, ptr nonnull align 2 %i.adt, i64 %.idx.i.i.i.i220, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit221

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit221: ; preds = %bb.do, %bb.dp, %bb.dq, %bb.dr, %bb.ds, %bb.dt, %bb.du, %bb.dv, %bb.dw, %bb.dx, %bb.dy, %bb.dz, %bb.ea, %bb.eb, %bb.ec, %bb.ed, %bb.ee, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i219
  %i.ady = load ptr, ptr %i.ab, align 8
  %i.adz = getelementptr inbounds nuw [2 x i8], ptr %i.ady, i64 %i.adu
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i: ; preds = %._crit_edge1091.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit221, %._crit_edge1091
  %i.aea = phi ptr [ %i.adz, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit221 ], [ %.pre1305, %._crit_edge1091 ], [ %.pre13051476, %._crit_edge1091.thread ] ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 2
  store ptr %i.aeb, ptr %i.ab, align 8
  store i16 34, ptr %i.aea, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.ef:                                            ; preds = %bb.u
  %i.aec = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.aed = load i64, ptr %i.aec, align 8
  %i.aee = add i64 %i.aed, -1
  %i.aef = inttoptr i64 %i.aee to ptr             ; 5 uses
  %i.aeg = load atomic volatile i64, ptr %i.aef monotonic, align 8
  %i.aeh = add i64 %i.aeg, 11
  %i.aei = inttoptr i64 %i.aeh to ptr
  %i.aej = load atomic volatile i16, ptr %i.aei monotonic, align 2
  %i.aek = and i16 %i.aej, -121
  %i.ael = icmp eq i16 %i.aek, 2
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aef, i64 16 ; 5 uses
  br i1 %i.ael, label %bb.eg, label %bb.ex

bb.eg:                                            ; preds = %bb.ef
  %i.aen = load i64, ptr %i.aem, align 8
  %i.aeo = inttoptr i64 %i.aen to ptr             ; 6 uses
  %i.aep = load atomic volatile i64, ptr %i.aef monotonic, align 8
  %i.aeq = add i64 %i.aep, 11
  %i.aer = inttoptr i64 %i.aeq to ptr
  %i.aes = load atomic volatile i16, ptr %i.aer monotonic, align 2
  %i.aet = and i16 %i.aes, 16
  %.not.i223 = icmp eq i16 %i.aet, 0
  br i1 %.not.i223, label %bb.ej, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.aeu = load ptr, ptr %i.aeo, align 8
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  %i.aew = load ptr, ptr %i.aev, align 8
  %i.aex = call noundef zeroext i1 %i.aew(ptr noundef nonnull align 8 dereferenceable(8) %i.aeo) #21, !inline_history !80
  br i1 %i.aex, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aeo) #21
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  %i.aez = load ptr, ptr %i.aey, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit225

bb.ej:                                            ; preds = %bb.eh, %bb.eg
  %i.afa = load ptr, ptr %i.aeo, align 8
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 72
  %i.afc = load ptr, ptr %i.afb, align 8
  %i.afd = call noundef ptr %i.afc(ptr noundef nonnull align 8 dereferenceable(16) %i.aeo) #21, !inline_history !80
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit225

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit225: ; preds = %bb.ei, %bb.ej
  %.0.i224 = phi ptr [ %i.aez, %bb.ei ], [ %i.afd, %bb.ej ] ; 4 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aef, i64 12
  %i.aff = load i32, ptr %i.afe, align 4          ; 5 uses
  %i.afg = zext i32 %i.aff to i64                 ; 2 uses
  %i.afh = shl nuw nsw i64 %i.afg, 3
  %i.afi = or disjoint i64 %i.afh, 2              ; 2 uses
  %i.afj = load ptr, ptr %i.z, align 8
  %i.afk = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.afl = ptrtoint ptr %i.afj to i64
  %i.afm = ptrtoint ptr %i.afk to i64
  %i.afn = sub i64 %i.afl, %i.afm
  %i.afo = ashr exact i64 %i.afn, 1
  %.not.i226 = icmp ugt i64 %i.afi, %i.afo
  br i1 %.not.i226, label %bb.ek, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit227, !prof !6

bb.ek:                                            ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit225
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef %i.afi)
  %.pre1303 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit227

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit227: ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit225, %bb.ek
  %i.afp = phi ptr [ %i.afk, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit225 ], [ %.pre1303, %bb.ek ] ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 2
  store ptr %i.afq, ptr %i.ab, align 8
  store i16 34, ptr %i.afp, align 2
  %.not1180 = icmp eq i32 %i.aff, 0
  br i1 %.not1180, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit81.i, label %.lr.ph1085

._crit_edge1086:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit230.thread
  %i.afr = icmp ugt i32 %i.aff, %.2.i.i78.i
  br i1 %i.afr, label %bb.ew, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit81.i

.lr.ph1085:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit227, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit230.thread
  %.055.i.i73.i1084 = phi i32 [ %.2.i.i78.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit230.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit227 ] ; 4 uses
  %.057.i.i72.i1083 = phi i32 [ %i.aid, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit230.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit227 ] ; 9 uses
  %i.afs = zext i32 %.057.i.i72.i1083 to i64
  %i.aft = getelementptr inbounds nuw [2 x i8], ptr %.0.i224, i64 %i.afs
  %i.afu = load i16, ptr %i.aft, align 2          ; 11 uses
  %i.afv = and i16 %i.afu, -2
  %or.cond.i228 = icmp eq i16 %i.afv, 32
  br i1 %or.cond.i228, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit230.thread, label %bb.el

bb.el:                                            ; preds = %.lr.ph1085
  %i.afw = icmp ugt i16 %i.afu, 34
  %i.afx = icmp ne i16 %i.afu, 92
  %or.cond5.i229 = and i1 %i.afw, %i.afx
  %i.afy = add i16 %i.afu, 8192
  %i.afz = icmp ult i16 %i.afy, -2048
  %or.cond865 = and i1 %or.cond5.i229, %i.afz
  br i1 %or.cond865, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit230.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit230.thread815, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit230.thread815: ; preds = %bb.el
  %6 = icmp slt i16 %i.afu, -8192
  %i.aga = zext i32 %.055.i.i73.i1084 to i64
  %i.agb = getelementptr inbounds nuw [2 x i8], ptr %.0.i224, i64 %i.aga
  %i.agc = sub i32 %.057.i.i72.i1083, %.055.i.i73.i1084
  %i.agd = zext i32 %i.agc to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.y, ptr noundef %i.agb, i64 noundef %i.agd)
  br i1 %6, label %bb.em, label %bb.eu

bb.em:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit230.thread815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  %i.age = icmp samesign ult i16 %i.afu, -9216
  br i1 %i.age, label %bb.en, label %bb.es

bb.en:                                            ; preds = %bb.em
  %i.agf = add nuw i32 %.057.i.i72.i1083, 1       ; 3 uses
  %i.agg = icmp ugt i32 %i.aff, %i.agf
  br i1 %i.agg, label %bb.eo, label %bb.er

bb.eo:                                            ; preds = %bb.en
  %i.agh = zext i32 %i.agf to i64
  %i.agi = getelementptr inbounds nuw [2 x i8], ptr %.0.i224, i64 %i.agh
  %i.agj = load i16, ptr %i.agi, align 2          ; 2 uses
  %i.agk = and i16 %i.agj, -1024
  %i.agl = icmp eq i16 %i.agk, -9216
  %i.agm = load ptr, ptr %i.ab, align 8           ; 4 uses
  br i1 %i.agl, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 2
  store ptr %i.agn, ptr %i.ab, align 8
  store i16 %i.afu, ptr %i.agm, align 2
  %i.ago = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 2
  store ptr %i.agp, ptr %i.ab, align 8
  store i16 %i.agj, ptr %i.ago, align 2
  br label %bb.et

bb.eq:                                            ; preds = %bb.eo
  store i16 92, ptr %i.agm, align 2
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agm, i64 2
  store i16 117, ptr %i.agq, align 2
  %i.agr = load ptr, ptr %i.ab, align 8
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 4
  store ptr %i.ags, ptr %i.ab, align 8
  %i.agt = uitofp i16 %i.afu to double
  %i.agu = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.agt, i32 noundef 16, ptr nonnull %i.f, i64 2200) #21 ; 2 uses
  %i.agv = extractvalue { i64, ptr } %i.agu, 0    ; 2 uses
  %i.agw = extractvalue { i64, ptr } %i.agu, 1
  %i.agx = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.agx, ptr noundef %i.agw, i64 noundef %i.agv)
  %i.agy = load ptr, ptr %i.ab, align 8
  %i.agz = getelementptr inbounds nuw [2 x i8], ptr %i.agy, i64 %i.agv
  store ptr %i.agz, ptr %i.ab, align 8
  br label %bb.et

bb.er:                                            ; preds = %bb.en
  %i.aha = load ptr, ptr %i.ab, align 8           ; 2 uses
  store i16 92, ptr %i.aha, align 2
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 2
  store i16 117, ptr %i.ahb, align 2
  %i.ahc = load ptr, ptr %i.ab, align 8
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 4
  store ptr %i.ahd, ptr %i.ab, align 8
  %i.ahe = uitofp i16 %i.afu to double
  %i.ahf = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ahe, i32 noundef 16, ptr nonnull %i.f, i64 2200) #21 ; 2 uses
  %i.ahg = extractvalue { i64, ptr } %i.ahf, 0    ; 2 uses
  %i.ahh = extractvalue { i64, ptr } %i.ahf, 1
  %i.ahi = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ahi, ptr noundef %i.ahh, i64 noundef %i.ahg)
  %i.ahj = load ptr, ptr %i.ab, align 8
  %i.ahk = getelementptr inbounds nuw [2 x i8], ptr %i.ahj, i64 %i.ahg
  store ptr %i.ahk, ptr %i.ab, align 8
  br label %bb.et

bb.es:                                            ; preds = %bb.em
  %i.ahl = load ptr, ptr %i.ab, align 8           ; 2 uses
  store i16 92, ptr %i.ahl, align 2
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 2
  store i16 117, ptr %i.ahm, align 2
  %i.ahn = load ptr, ptr %i.ab, align 8
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 4
  store ptr %i.aho, ptr %i.ab, align 8
  %i.ahp = uitofp i16 %i.afu to double
  %i.ahq = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ahp, i32 noundef 16, ptr nonnull %i.f, i64 2200) #21 ; 2 uses
  %i.ahr = extractvalue { i64, ptr } %i.ahq, 0    ; 2 uses
  %i.ahs = extractvalue { i64, ptr } %i.ahq, 1
  %i.aht = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.aht, ptr noundef %i.ahs, i64 noundef %i.ahr)
  %i.ahu = load ptr, ptr %i.ab, align 8
  %i.ahv = getelementptr inbounds nuw [2 x i8], ptr %i.ahu, i64 %i.ahr
  store ptr %i.ahv, ptr %i.ab, align 8
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er, %bb.eq, %bb.ep
  %.259.i.i80.i = phi i32 [ %.057.i.i72.i1083, %bb.es ], [ %.057.i.i72.i1083, %bb.er ], [ %i.agf, %bb.ep ], [ %.057.i.i72.i1083, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br label %bb.ev

bb.eu:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit230.thread815
  %i.ahw = zext i16 %i.afu to i64
  %i.ahx = shl nuw nsw i64 %i.ahw, 3
  %i.ahy = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.ahx ; 2 uses
  %i.ahz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ahy) #26 ; 2 uses
  %i.aia = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.aia, ptr noundef nonnull %i.ahy, i64 noundef %i.ahz)
  %i.aib = load ptr, ptr %i.ab, align 8
  %i.aic = getelementptr inbounds nuw [2 x i8], ptr %i.aib, i64 %i.ahz
  store ptr %i.aic, ptr %i.ab, align 8
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.3.i.i75.i = phi i32 [ %.259.i.i80.i, %bb.et ], [ %.057.i.i72.i1083, %bb.eu ] ; 2 uses
  %.156.i.i76.i = add nuw i32 %.3.i.i75.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit230.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit230.thread: ; preds = %bb.el, %.lr.ph1085, %bb.ev
  %.4.i.i77.i = phi i32 [ %.3.i.i75.i, %bb.ev ], [ %.057.i.i72.i1083, %bb.el ], [ %.057.i.i72.i1083, %.lr.ph1085 ]
  %.2.i.i78.i = phi i32 [ %.156.i.i76.i, %bb.ev ], [ %.055.i.i73.i1084, %bb.el ], [ %.055.i.i73.i1084, %.lr.ph1085 ] ; 3 uses
  %i.aid = add nuw i32 %.4.i.i77.i, 1             ; 2 uses
  %i.aie = icmp ugt i32 %i.aff, %i.aid
  br i1 %i.aie, label %.lr.ph1085, label %._crit_edge1086, !llvm.loop !350

bb.ew:                                            ; preds = %._crit_edge1086
  %i.aif = zext i32 %.2.i.i78.i to i64            ; 2 uses
  %i.aig = getelementptr inbounds nuw [2 x i8], ptr %.0.i224, i64 %i.aif
  %i.aih = sub nuw nsw i64 %i.afg, %i.aif
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.y, ptr noundef %i.aig, i64 noundef %i.aih)
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit81.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit81.i: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit227, %bb.ew, %._crit_edge1086
  %i.aii = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 2
  store ptr %i.aij, ptr %i.ab, align 8
  store i16 34, ptr %i.aii, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.ex:                                            ; preds = %bb.ef
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aef, i64 12
  %i.ail = load i32, ptr %i.aik, align 4          ; 5 uses
  %i.aim = zext i32 %i.ail to i64                 ; 2 uses
  %i.ain = shl nuw nsw i64 %i.aim, 3
  %i.aio = or disjoint i64 %i.ain, 2              ; 2 uses
  %i.aip = load ptr, ptr %i.z, align 8
  %i.aiq = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.air = ptrtoint ptr %i.aip to i64
  %i.ais = ptrtoint ptr %i.aiq to i64
  %i.ait = sub i64 %i.air, %i.ais
  %i.aiu = ashr exact i64 %i.ait, 1
  %.not.i233 = icmp ugt i64 %i.aio, %i.aiu
  br i1 %.not.i233, label %bb.ey, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit234, !prof !6

bb.ey:                                            ; preds = %bb.ex
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef %i.aio)
  %.pre1302 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit234

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit234: ; preds = %bb.ex, %bb.ey
  %i.aiv = phi ptr [ %i.aiq, %bb.ex ], [ %.pre1302, %bb.ey ] ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 2
  store ptr %i.aiw, ptr %i.ab, align 8
  store i16 34, ptr %i.aiv, align 2
  %.not1179 = icmp eq i32 %i.ail, 0
  br i1 %.not1179, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit62.i, label %.lr.ph1080

._crit_edge1081:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit237.thread
  %i.aix = icmp ugt i32 %i.ail, %.2.i.i59.i
  br i1 %i.aix, label %bb.fk, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit62.i

.lr.ph1080:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit234, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit237.thread
  %.055.i.i54.i1079 = phi i32 [ %.2.i.i59.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit237.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit234 ] ; 4 uses
  %.057.i.i53.i1078 = phi i32 [ %i.alj, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit237.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit234 ] ; 9 uses
  %i.aiy = zext i32 %.057.i.i53.i1078 to i64
  %i.aiz = getelementptr inbounds nuw [2 x i8], ptr %i.aem, i64 %i.aiy
  %i.aja = load i16, ptr %i.aiz, align 2          ; 11 uses
  %i.ajb = and i16 %i.aja, -2
  %or.cond.i235 = icmp eq i16 %i.ajb, 32
  br i1 %or.cond.i235, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit237.thread, label %bb.ez

bb.ez:                                            ; preds = %.lr.ph1080
  %i.ajc = icmp ugt i16 %i.aja, 34
  %i.ajd = icmp ne i16 %i.aja, 92
  %or.cond5.i236 = and i1 %i.ajc, %i.ajd
  %i.aje = add i16 %i.aja, 8192
  %i.ajf = icmp ult i16 %i.aje, -2048
  %or.cond867 = and i1 %or.cond5.i236, %i.ajf
  br i1 %or.cond867, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit237.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit237.thread816, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit237.thread816: ; preds = %bb.ez
  %7 = icmp slt i16 %i.aja, -8192
  %i.ajg = zext i32 %.055.i.i54.i1079 to i64
  %i.ajh = getelementptr inbounds nuw [2 x i8], ptr %i.aem, i64 %i.ajg
  %i.aji = sub i32 %.057.i.i53.i1078, %.055.i.i54.i1079
  %i.ajj = zext i32 %i.aji to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.y, ptr noundef nonnull %i.ajh, i64 noundef %i.ajj)
  br i1 %7, label %bb.fa, label %bb.fi

bb.fa:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit237.thread816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  %i.ajk = icmp samesign ult i16 %i.aja, -9216
  br i1 %i.ajk, label %bb.fb, label %bb.fg

bb.fb:                                            ; preds = %bb.fa
  %i.ajl = add nuw i32 %.057.i.i53.i1078, 1       ; 3 uses
  %i.ajm = icmp ugt i32 %i.ail, %i.ajl
  br i1 %i.ajm, label %bb.fc, label %bb.ff

bb.fc:                                            ; preds = %bb.fb
  %i.ajn = zext i32 %i.ajl to i64
  %i.ajo = getelementptr inbounds nuw [2 x i8], ptr %i.aem, i64 %i.ajn
  %i.ajp = load i16, ptr %i.ajo, align 2          ; 2 uses
  %i.ajq = and i16 %i.ajp, -1024
  %i.ajr = icmp eq i16 %i.ajq, -9216
  %i.ajs = load ptr, ptr %i.ab, align 8           ; 4 uses
  br i1 %i.ajr, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 2
  store ptr %i.ajt, ptr %i.ab, align 8
  store i16 %i.aja, ptr %i.ajs, align 2
  %i.aju = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 2
  store ptr %i.ajv, ptr %i.ab, align 8
  store i16 %i.ajp, ptr %i.aju, align 2
  br label %bb.fh

bb.fe:                                            ; preds = %bb.fc
  store i16 92, ptr %i.ajs, align 2
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajs, i64 2
  store i16 117, ptr %i.ajw, align 2
  %i.ajx = load ptr, ptr %i.ab, align 8
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 4
  store ptr %i.ajy, ptr %i.ab, align 8
  %i.ajz = uitofp i16 %i.aja to double
  %i.aka = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ajz, i32 noundef 16, ptr nonnull %i.h, i64 2200) #21 ; 2 uses
  %i.akb = extractvalue { i64, ptr } %i.aka, 0    ; 2 uses
  %i.akc = extractvalue { i64, ptr } %i.aka, 1
  %i.akd = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.akd, ptr noundef %i.akc, i64 noundef %i.akb)
  %i.ake = load ptr, ptr %i.ab, align 8
  %i.akf = getelementptr inbounds nuw [2 x i8], ptr %i.ake, i64 %i.akb
  store ptr %i.akf, ptr %i.ab, align 8
  br label %bb.fh

bb.ff:                                            ; preds = %bb.fb
  %i.akg = load ptr, ptr %i.ab, align 8           ; 2 uses
  store i16 92, ptr %i.akg, align 2
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 2
  store i16 117, ptr %i.akh, align 2
  %i.aki = load ptr, ptr %i.ab, align 8
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 4
  store ptr %i.akj, ptr %i.ab, align 8
  %i.akk = uitofp i16 %i.aja to double
  %i.akl = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.akk, i32 noundef 16, ptr nonnull %i.h, i64 2200) #21 ; 2 uses
  %i.akm = extractvalue { i64, ptr } %i.akl, 0    ; 2 uses
  %i.akn = extractvalue { i64, ptr } %i.akl, 1
  %i.ako = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ako, ptr noundef %i.akn, i64 noundef %i.akm)
  %i.akp = load ptr, ptr %i.ab, align 8
  %i.akq = getelementptr inbounds nuw [2 x i8], ptr %i.akp, i64 %i.akm
  store ptr %i.akq, ptr %i.ab, align 8
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fa
  %i.akr = load ptr, ptr %i.ab, align 8           ; 2 uses
  store i16 92, ptr %i.akr, align 2
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 2
  store i16 117, ptr %i.aks, align 2
  %i.akt = load ptr, ptr %i.ab, align 8
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 4
  store ptr %i.aku, ptr %i.ab, align 8
  %i.akv = uitofp i16 %i.aja to double
  %i.akw = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.akv, i32 noundef 16, ptr nonnull %i.h, i64 2200) #21 ; 2 uses
  %i.akx = extractvalue { i64, ptr } %i.akw, 0    ; 2 uses
  %i.aky = extractvalue { i64, ptr } %i.akw, 1
  %i.akz = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.akz, ptr noundef %i.aky, i64 noundef %i.akx)
  %i.ala = load ptr, ptr %i.ab, align 8
  %i.alb = getelementptr inbounds nuw [2 x i8], ptr %i.ala, i64 %i.akx
  store ptr %i.alb, ptr %i.ab, align 8
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff, %bb.fe, %bb.fd
  %.259.i.i61.i = phi i32 [ %.057.i.i53.i1078, %bb.fg ], [ %.057.i.i53.i1078, %bb.ff ], [ %i.ajl, %bb.fd ], [ %.057.i.i53.i1078, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  br label %bb.fj

bb.fi:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit237.thread816
  %i.alc = zext i16 %i.aja to i64
  %i.ald = shl nuw nsw i64 %i.alc, 3
  %i.ale = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.ald ; 2 uses
  %i.alf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ale) #26 ; 2 uses
  %i.alg = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.alg, ptr noundef nonnull %i.ale, i64 noundef %i.alf)
  %i.alh = load ptr, ptr %i.ab, align 8
  %i.ali = getelementptr inbounds nuw [2 x i8], ptr %i.alh, i64 %i.alf
  store ptr %i.ali, ptr %i.ab, align 8
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.3.i.i56.i = phi i32 [ %.259.i.i61.i, %bb.fh ], [ %.057.i.i53.i1078, %bb.fi ] ; 2 uses
  %.156.i.i57.i = add nuw i32 %.3.i.i56.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit237.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit237.thread: ; preds = %bb.ez, %.lr.ph1080, %bb.fj
  %.4.i.i58.i = phi i32 [ %.3.i.i56.i, %bb.fj ], [ %.057.i.i53.i1078, %bb.ez ], [ %.057.i.i53.i1078, %.lr.ph1080 ]
  %.2.i.i59.i = phi i32 [ %.156.i.i57.i, %bb.fj ], [ %.055.i.i54.i1079, %bb.ez ], [ %.055.i.i54.i1079, %.lr.ph1080 ] ; 3 uses
  %i.alj = add nuw i32 %.4.i.i58.i, 1             ; 2 uses
  %i.alk = icmp ugt i32 %i.ail, %i.alj
  br i1 %i.alk, label %.lr.ph1080, label %._crit_edge1081, !llvm.loop !350

bb.fk:                                            ; preds = %._crit_edge1081
  %i.all = zext i32 %.2.i.i59.i to i64            ; 2 uses
  %i.alm = getelementptr inbounds nuw [2 x i8], ptr %i.aem, i64 %i.all
  %i.aln = sub nuw nsw i64 %i.aim, %i.all
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.y, ptr noundef nonnull %i.alm, i64 noundef %i.aln)
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit62.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit62.i: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit234, %bb.fk, %._crit_edge1081
  %i.alo = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 2
  store ptr %i.alp, ptr %i.ab, align 8
  store i16 34, ptr %i.alo, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.fl:                                            ; preds = %bb.u
  %i.alq = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.alq, align 8
  call void @_ZN2v88internal19FastJsonStringifierItE15SerializeDoubleEd(ptr noundef nonnull align 8 dereferenceable(1200) %0, double noundef %.0.copyload.i.i.i.i)
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.fm:                                            ; preds = %bb.u
  %i.alr = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.als = load i64, ptr %i.alr, align 8
  %i.alt = lshr i64 %i.als, 32
  %i.alu = trunc i64 %i.alt to i8
  switch i8 %i.alu, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread819 [
    i8 0, label %bb.fn
    i8 1, label %bb.fp
    i8 3, label %bb.fr
  ]

bb.fn:                                            ; preds = %bb.fm
  %i.alv = load ptr, ptr %i.z, align 8
  %i.alw = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.alx = ptrtoint ptr %i.alv to i64
  %i.aly = ptrtoint ptr %i.alw to i64
  %i.alz = sub i64 %i.alx, %i.aly
  %.not.i240 = icmp ult i64 %i.alz, 9
  br i1 %.not.i240, label %bb.fo, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit241, !prof !6

bb.fo:                                            ; preds = %bb.fn
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 5)
  %.pre1300 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit241

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit241: ; preds = %bb.fn, %bb.fo
  %i.ama = phi ptr [ %i.alw, %bb.fn ], [ %.pre1300, %bb.fo ] ; 2 uses
  store <4 x i16> <i16 102, i16 97, i16 108, i16 115>, ptr %i.ama, align 2
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 8
  store i16 101, ptr %i.amb, align 2
  %i.amc = load ptr, ptr %i.ab, align 8
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 10
  store ptr %i.amd, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.fp:                                            ; preds = %bb.fm
  %i.ame = load ptr, ptr %i.z, align 8
  %i.amf = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.amg = ptrtoint ptr %i.ame to i64
  %i.amh = ptrtoint ptr %i.amf to i64
  %i.ami = sub i64 %i.amg, %i.amh
  %.not.i242 = icmp ult i64 %i.ami, 8
  br i1 %.not.i242, label %bb.fq, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit243, !prof !6

bb.fq:                                            ; preds = %bb.fp
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 4)
  %.pre1299 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit243

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit243: ; preds = %bb.fp, %bb.fq
  %i.amj = phi ptr [ %i.amf, %bb.fp ], [ %.pre1299, %bb.fq ]
  store <4 x i16> <i16 116, i16 114, i16 117, i16 101>, ptr %i.amj, align 2
  %i.amk = load ptr, ptr %i.ab, align 8
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 8
  store ptr %i.aml, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.fr:                                            ; preds = %bb.fm
  %i.amm = load ptr, ptr %i.z, align 8
  %i.amn = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.amo = ptrtoint ptr %i.amm to i64
  %i.amp = ptrtoint ptr %i.amn to i64
  %i.amq = sub i64 %i.amo, %i.amp
  %.not.i244 = icmp ult i64 %i.amq, 8
  br i1 %.not.i244, label %bb.fs, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit245, !prof !6
end_hunk_14
begin_hunk_15_@_ZN2v88internal19FastJsonStringifierItE16SerializeJSArrayENS0_6TaggedINS0_7JSArrayEEE:bb.a
  %i.bin = icmp ugt i32 %i.bib, 31
  br i1 %i.bin, label %.lr.ph1011, label %.preheader914

.preheader914:                                    ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit339
  %i.bio = icmp samesign ugt i32 %i.bib, 3
  br i1 %i.bio, label %.lr.ph1004.preheader, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i19.i

.lr.ph1004.preheader:                             ; preds = %.preheader914
  %i.bip = and i64 %i.bic, 28
  br label %.lr.ph1004

.lr.ph1011:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit339
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bia, i64 %i.bic
  %i.bir = ptrtoint ptr %i.bia to i64             ; 2 uses
  br label %bb.iv

bb.iv:                                            ; preds = %.lr.ph1011, %bb.iz
  %.054.i.i22.i1009 = phi i64 [ 0, %.lr.ph1011 ], [ %.155.i.i28.i, %bb.iz ] ; 3 uses
  %.056.i.i21.i1008 = phi ptr [ %i.bia, %.lr.ph1011 ], [ %i.bjv, %bb.iz ] ; 4 uses
  %i.bis = load <16 x i8>, ptr %.056.i.i21.i1008, align 1 ; 3 uses
  %i.bit = icmp ult <16 x i8> %i.bis, splat (i8 32)
  %i.biu = icmp eq <16 x i8> %i.bis, splat (i8 34)
  %i.biv = icmp eq <16 x i8> %i.bis, splat (i8 92)
  %i.biw = or <16 x i1> %i.bit, %i.biu
  %i.bix = or <16 x i1> %i.biv, %i.biw
  %i.biy = bitcast <16 x i1> %i.bix to i16        ; 2 uses
  %i.biz = icmp eq i16 %i.biy, 0
  br i1 %i.biz, label %bb.iz, label %bb.iw, !prof !11

bb.iw:                                            ; preds = %bb.iv
  %i.bja = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.biy, i1 true)
  %i.bjb = zext nneg i16 %i.bja to i64            ; 2 uses
  %i.bjc = getelementptr inbounds nuw i8, ptr %.056.i.i21.i1008, i64 %i.bjb ; 2 uses
  %i.bjd = load i8, ptr %i.bjc, align 1           ; 2 uses
  %i.bje = ptrtoint ptr %.056.i.i21.i1008 to i64
  %i.bjf = sub i64 %i.bje, %i.bir
  %i.bjg = add i64 %i.bjf, %i.bjb                 ; 2 uses
  %i.bjh = sub i64 %i.bjg, %.054.i.i22.i1009      ; 2 uses
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bia, i64 %.054.i.i22.i1009
  %i.bjj = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bjj, ptr noundef %i.bji, i64 noundef %i.bjh)
  %i.bjk = load ptr, ptr %i.ab, align 8
  %i.bjl = getelementptr inbounds nuw [2 x i8], ptr %i.bjk, i64 %i.bjh ; 2 uses
  store ptr %i.bjl, ptr %i.ab, align 8
  %i.bjm = icmp ult i8 %i.bjd, 96
  br i1 %i.bjm, label %bb.iy, label %bb.ix, !prof !11

bb.ix:                                            ; preds = %bb.iw
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.32) #22
  unreachable

bb.iy:                                            ; preds = %bb.iw
  %i.bjn = zext nneg i8 %i.bjd to i64
  %i.bjo = shl nuw nsw i64 %i.bjn, 3
  %i.bjp = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.bjo ; 2 uses
  %i.bjq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bjp) #26 ; 2 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bjl, ptr noundef nonnull %i.bjp, i64 noundef %i.bjq)
  %i.bjr = load ptr, ptr %i.ab, align 8
  %i.bjs = getelementptr inbounds nuw [2 x i8], ptr %i.bjr, i64 %i.bjq
  store ptr %i.bjs, ptr %i.ab, align 8
  %i.bjt = add i64 %i.bjg, 1
  %i.bju = getelementptr inbounds i8, ptr %i.bjc, i64 -15
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.iv
  %.157.i.i27.i = phi ptr [ %i.bju, %bb.iy ], [ %.056.i.i21.i1008, %bb.iv ] ; 2 uses
  %.155.i.i28.i = phi i64 [ %i.bjt, %bb.iy ], [ %.054.i.i22.i1009, %bb.iv ] ; 2 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %.157.i.i27.i, i64 16 ; 2 uses
  %i.bjw = getelementptr inbounds nuw i8, ptr %.157.i.i27.i, i64 31
  %i.bjx = icmp ult ptr %i.bjw, %i.biq
  br i1 %i.bjx, label %bb.iv, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i, !llvm.loop !346

_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i: ; preds = %bb.iz
  %i.bjy = ptrtoint ptr %i.bjv to i64
  %i.bjz = sub i64 %i.bjy, %i.bir                 ; 3 uses
  %i.bka = add i64 %i.bjz, 3
  %i.bkb = icmp ult i64 %i.bka, %i.bic
  br i1 %i.bkb, label %.lr.ph1015, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i26.i

.lr.ph1015:                                       ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i, %bb.ja
  %.013.i.i25.i1014 = phi i64 [ %i.bko, %bb.ja ], [ %i.bjz, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i ] ; 4 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bia, i64 %.013.i.i25.i1014
  %i.bkd = load i32, ptr %i.bkc, align 4          ; 4 uses
  %i.bke = add i32 %i.bkd, -538976288
  %i.bkf = xor i32 %i.bkd, 572662306
  %i.bkg = add i32 %i.bkf, -16843009
  %i.bkh = xor i32 %i.bkd, 1549556828
  %i.bki = add i32 %i.bkh, -16843009
  %i.bkj = and i32 %i.bkd, -2139062144
  %i.bkk = xor i32 %i.bkj, -2139062144
  %i.bkl = or i32 %i.bkg, %i.bke
  %i.bkm = or i32 %i.bkl, %i.bki
  %i.bkn = and i32 %i.bkm, %i.bkk
  %.not881 = icmp eq i32 %i.bkn, 0
  br i1 %.not881, label %bb.ja, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i26.i

bb.ja:                                            ; preds = %.lr.ph1015
  %i.bko = add i64 %.013.i.i25.i1014, 4           ; 2 uses
  %i.bkp = add i64 %.013.i.i25.i1014, 7
  %i.bkq = icmp ult i64 %i.bkp, %i.bic
  br i1 %i.bkq, label %.lr.ph1015, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i26.i, !llvm.loop !347

_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i26.i: ; preds = %bb.ja, %.lr.ph1015, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i
  %.013.i.i25.i.lcssa = phi i64 [ %i.bjz, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i ], [ %.013.i.i25.i1014, %.lr.ph1015 ], [ %i.bko, %bb.ja ]
  %i.bkr = call noundef zeroext i1 @_ZN2v88internal19FastJsonStringifierItE18AppendStringScalarIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef nonnull %i.bia, i64 noundef %i.bic, i64 noundef %.013.i.i25.i.lcssa, i64 noundef %.155.i.i28.i, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i

.lr.ph1004:                                       ; preds = %.lr.ph1004.preheader, %bb.jb
  %.013.i8.i18.i1003 = phi i64 [ %i.ble, %bb.jb ], [ 0, %.lr.ph1004.preheader ] ; 3 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bia, i64 %.013.i8.i18.i1003
  %i.bkt = load i32, ptr %i.bks, align 4          ; 4 uses
  %i.bku = add i32 %i.bkt, -538976288
  %i.bkv = xor i32 %i.bkt, 572662306
  %i.bkw = add i32 %i.bkv, -16843009
  %i.bkx = xor i32 %i.bkt, 1549556828
  %i.bky = add i32 %i.bkx, -16843009
  %i.bkz = and i32 %i.bkt, -2139062144
  %i.bla = xor i32 %i.bkz, -2139062144
  %i.blb = or i32 %i.bkw, %i.bku
  %i.blc = or i32 %i.blb, %i.bky
  %i.bld = and i32 %i.blc, %i.bla
  %.not880 = icmp eq i32 %i.bld, 0
  br i1 %.not880, label %bb.jb, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i19.i

bb.jb:                                            ; preds = %.lr.ph1004
  %i.ble = add nuw nsw i64 %.013.i8.i18.i1003, 4  ; 2 uses
  %i.blf = or disjoint i64 %i.ble, 3
  %i.blg = icmp samesign ult i64 %i.blf, %i.bic
  br i1 %i.blg, label %.lr.ph1004, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i19.i, !llvm.loop !347

_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i19.i: ; preds = %bb.jb, %.lr.ph1004, %.preheader914
  %.013.i8.i18.i.lcssa = phi i64 [ 0, %.preheader914 ], [ %.013.i8.i18.i1003, %.lr.ph1004 ], [ %i.bip, %bb.jb ]
  %i.blh = call noundef zeroext i1 @_ZN2v88internal19FastJsonStringifierItE18AppendStringScalarIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef nonnull %i.bia, i64 noundef %i.bic, i64 noundef %.013.i8.i18.i.lcssa, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i: ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i19.i, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i26.i
  %i.bli = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.blj = getelementptr inbounds nuw i8, ptr %i.bli, i64 2
  store ptr %i.blj, ptr %i.ab, align 8
  store i16 34, ptr %i.bli, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95.thread

bb.jc:                                            ; preds = %bb.hf, %bb.hf
  %i.blk = getelementptr inbounds nuw i8, ptr %i.atl, i64 16 ; 4 uses
  %i.bll = getelementptr inbounds nuw i8, ptr %i.atl, i64 12
  %i.blm = load i32, ptr %i.bll, align 4          ; 5 uses
  %i.bln = zext i32 %i.blm to i64                 ; 2 uses
  %i.blo = shl nuw nsw i64 %i.bln, 3
  %i.blp = or disjoint i64 %i.blo, 2              ; 2 uses
  %i.blq = load ptr, ptr %i.z, align 8
  %i.blr = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.bls = ptrtoint ptr %i.blq to i64
  %i.blt = ptrtoint ptr %i.blr to i64
  %i.blu = sub i64 %i.bls, %i.blt
  %i.blv = ashr exact i64 %i.blu, 1
  %.not.i340 = icmp ugt i64 %i.blp, %i.blv
  br i1 %.not.i340, label %bb.jd, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit341, !prof !6

bb.jd:                                            ; preds = %bb.jc
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef %i.blp)
  %.pre1273 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit341

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit341: ; preds = %bb.jc, %bb.jd
  %i.blw = phi ptr [ %i.blr, %bb.jc ], [ %.pre1273, %bb.jd ] ; 2 uses
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blw, i64 2
  store ptr %i.blx, ptr %i.ab, align 8
  store i16 34, ptr %i.blw, align 2
  %.not1175 = icmp eq i32 %i.blm, 0
  br i1 %.not1175, label %._crit_edge1001.thread, label %.lr.ph1000

._crit_edge1001.thread:                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit341
  %.pre12741480 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i108

._crit_edge1001:                                  ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit344.thread
  %i.bly = icmp ugt i32 %i.blm, %.2.i.i.i112
  %.pre1274 = load ptr, ptr %i.ab, align 8        ; 18 uses
  br i1 %i.bly, label %bb.jp, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i108

.lr.ph1000:                                       ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit341, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit344.thread
  %.055.i.i.i107999 = phi i32 [ %.2.i.i.i112, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit344.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit341 ] ; 4 uses
  %.057.i.i.i106998 = phi i32 [ %i.bok, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit344.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit341 ] ; 9 uses
  %i.blz = zext i32 %.057.i.i.i106998 to i64
  %i.bma = getelementptr inbounds nuw [2 x i8], ptr %i.blk, i64 %i.blz
  %i.bmb = load i16, ptr %i.bma, align 2          ; 11 uses
  %i.bmc = and i16 %i.bmb, -2
  %or.cond.i342 = icmp eq i16 %i.bmc, 32
  br i1 %or.cond.i342, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit344.thread, label %bb.je

bb.je:                                            ; preds = %.lr.ph1000
  %i.bmd = icmp ugt i16 %i.bmb, 34
  %i.bme = icmp ne i16 %i.bmb, 92
  %or.cond5.i343 = and i1 %i.bmd, %i.bme
  %i.bmf = add i16 %i.bmb, 8192
  %i.bmg = icmp ult i16 %i.bmf, -2048
  %or.cond869 = and i1 %or.cond5.i343, %i.bmg
  br i1 %or.cond869, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit344.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit344.thread836, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit344.thread836: ; preds = %bb.je
  %8 = icmp slt i16 %i.bmb, -8192
  %i.bmh = zext i32 %.055.i.i.i107999 to i64
  %i.bmi = getelementptr inbounds nuw [2 x i8], ptr %i.blk, i64 %i.bmh
  %i.bmj = sub i32 %.057.i.i.i106998, %.055.i.i.i107999
  %i.bmk = zext i32 %i.bmj to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.y, ptr noundef nonnull %i.bmi, i64 noundef %i.bmk)
  br i1 %8, label %bb.jf, label %bb.jn

bb.jf:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit344.thread836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.bml = icmp samesign ult i16 %i.bmb, -9216
  br i1 %i.bml, label %bb.jg, label %bb.jl

bb.jg:                                            ; preds = %bb.jf
  %i.bmm = add nuw i32 %.057.i.i.i106998, 1       ; 3 uses
  %i.bmn = icmp ugt i32 %i.blm, %i.bmm
  br i1 %i.bmn, label %bb.jh, label %bb.jk

bb.jh:                                            ; preds = %bb.jg
  %i.bmo = zext i32 %i.bmm to i64
  %i.bmp = getelementptr inbounds nuw [2 x i8], ptr %i.blk, i64 %i.bmo
  %i.bmq = load i16, ptr %i.bmp, align 2          ; 2 uses
  %i.bmr = and i16 %i.bmq, -1024
  %i.bms = icmp eq i16 %i.bmr, -9216
  %i.bmt = load ptr, ptr %i.ab, align 8           ; 4 uses
  br i1 %i.bms, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bmt, i64 2
  store ptr %i.bmu, ptr %i.ab, align 8
  store i16 %i.bmb, ptr %i.bmt, align 2
  %i.bmv = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmv, i64 2
  store ptr %i.bmw, ptr %i.ab, align 8
  store i16 %i.bmq, ptr %i.bmv, align 2
  br label %bb.jm

bb.jj:                                            ; preds = %bb.jh
  store i16 92, ptr %i.bmt, align 2
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bmt, i64 2
  store i16 117, ptr %i.bmx, align 2
  %i.bmy = load ptr, ptr %i.ab, align 8
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmy, i64 4
  store ptr %i.bmz, ptr %i.ab, align 8
  %i.bna = uitofp i16 %i.bmb to double
  %i.bnb = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.bna, i32 noundef 16, ptr nonnull %i.d, i64 2200) #21 ; 2 uses
  %i.bnc = extractvalue { i64, ptr } %i.bnb, 0    ; 2 uses
  %i.bnd = extractvalue { i64, ptr } %i.bnb, 1
  %i.bne = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bne, ptr noundef %i.bnd, i64 noundef %i.bnc)
  %i.bnf = load ptr, ptr %i.ab, align 8
  %i.bng = getelementptr inbounds nuw [2 x i8], ptr %i.bnf, i64 %i.bnc
  store ptr %i.bng, ptr %i.ab, align 8
  br label %bb.jm

bb.jk:                                            ; preds = %bb.jg
  %i.bnh = load ptr, ptr %i.ab, align 8           ; 2 uses
  store i16 92, ptr %i.bnh, align 2
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bnh, i64 2
  store i16 117, ptr %i.bni, align 2
  %i.bnj = load ptr, ptr %i.ab, align 8
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bnj, i64 4
  store ptr %i.bnk, ptr %i.ab, align 8
  %i.bnl = uitofp i16 %i.bmb to double
  %i.bnm = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.bnl, i32 noundef 16, ptr nonnull %i.d, i64 2200) #21 ; 2 uses
  %i.bnn = extractvalue { i64, ptr } %i.bnm, 0    ; 2 uses
  %i.bno = extractvalue { i64, ptr } %i.bnm, 1
  %i.bnp = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bnp, ptr noundef %i.bno, i64 noundef %i.bnn)
  %i.bnq = load ptr, ptr %i.ab, align 8
  %i.bnr = getelementptr inbounds nuw [2 x i8], ptr %i.bnq, i64 %i.bnn
  store ptr %i.bnr, ptr %i.ab, align 8
  br label %bb.jm

bb.jl:                                            ; preds = %bb.jf
  %i.bns = load ptr, ptr %i.ab, align 8           ; 2 uses
  store i16 92, ptr %i.bns, align 2
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bns, i64 2
  store i16 117, ptr %i.bnt, align 2
  %i.bnu = load ptr, ptr %i.ab, align 8
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bnu, i64 4
  store ptr %i.bnv, ptr %i.ab, align 8
  %i.bnw = uitofp i16 %i.bmb to double
  %i.bnx = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.bnw, i32 noundef 16, ptr nonnull %i.d, i64 2200) #21 ; 2 uses
  %i.bny = extractvalue { i64, ptr } %i.bnx, 0    ; 2 uses
  %i.bnz = extractvalue { i64, ptr } %i.bnx, 1
  %i.boa = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.boa, ptr noundef %i.bnz, i64 noundef %i.bny)
  %i.bob = load ptr, ptr %i.ab, align 8
  %i.boc = getelementptr inbounds nuw [2 x i8], ptr %i.bob, i64 %i.bny
  store ptr %i.boc, ptr %i.ab, align 8
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk, %bb.jj, %bb.ji
  %.259.i.i.i113 = phi i32 [ %.057.i.i.i106998, %bb.jl ], [ %.057.i.i.i106998, %bb.jk ], [ %i.bmm, %bb.ji ], [ %.057.i.i.i106998, %bb.jj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.jo

bb.jn:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit344.thread836
  %i.bod = zext i16 %i.bmb to i64
  %i.boe = shl nuw nsw i64 %i.bod, 3
  %i.bof = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.boe ; 2 uses
  %i.bog = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bof) #26 ; 2 uses
  %i.boh = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.boh, ptr noundef nonnull %i.bof, i64 noundef %i.bog)
  %i.boi = load ptr, ptr %i.ab, align 8
  %i.boj = getelementptr inbounds nuw [2 x i8], ptr %i.boi, i64 %i.bog
  store ptr %i.boj, ptr %i.ab, align 8
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jm
  %.3.i.i.i109 = phi i32 [ %.259.i.i.i113, %bb.jm ], [ %.057.i.i.i106998, %bb.jn ] ; 2 uses
  %.156.i.i.i110 = add nuw i32 %.3.i.i.i109, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit344.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit344.thread: ; preds = %bb.je, %.lr.ph1000, %bb.jo
  %.4.i.i.i111 = phi i32 [ %.3.i.i.i109, %bb.jo ], [ %.057.i.i.i106998, %bb.je ], [ %.057.i.i.i106998, %.lr.ph1000 ]
  %.2.i.i.i112 = phi i32 [ %.156.i.i.i110, %bb.jo ], [ %.055.i.i.i107999, %bb.je ], [ %.055.i.i.i107999, %.lr.ph1000 ] ; 3 uses
  %i.bok = add nuw i32 %.4.i.i.i111, 1            ; 2 uses
  %i.bol = icmp ugt i32 %i.blm, %i.bok
  br i1 %i.bol, label %.lr.ph1000, label %._crit_edge1001, !llvm.loop !350

bb.jp:                                            ; preds = %._crit_edge1001
  %i.bom = zext i32 %.2.i.i.i112 to i64           ; 2 uses
  %i.bon = getelementptr inbounds nuw [2 x i8], ptr %i.blk, i64 %i.bom ; 17 uses
  %i.boo = sub nuw nsw i64 %i.bln, %i.bom         ; 3 uses
  %trunc879 = trunc nuw i64 %i.boo to i32
  switch i32 %trunc879, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i347 [
    i32 1, label %bb.jq
    i32 2, label %bb.jr
    i32 3, label %bb.js
    i32 4, label %bb.jt
    i32 5, label %bb.ju
    i32 6, label %bb.jv
    i32 7, label %bb.jw
    i32 8, label %bb.jx
    i32 9, label %bb.jy
    i32 10, label %bb.jz
    i32 11, label %bb.ka
    i32 12, label %bb.kb
    i32 13, label %bb.kc
    i32 14, label %bb.kd
    i32 15, label %bb.ke
    i32 16, label %bb.kf
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit349
  ]

bb.jq:                                            ; preds = %bb.jp
  %i.bop = load i16, ptr %i.bon, align 2
  store i16 %i.bop, ptr %.pre1274, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit349

bb.jr:                                            ; preds = %bb.jp
  %i.boq = load i32, ptr %i.bon, align 2
  store i32 %i.boq, ptr %.pre1274, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit349

bb.js:                                            ; preds = %bb.jp
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre1274, ptr noundef nonnull align 2 dereferenceable(6) %i.bon, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit349

bb.jt:                                            ; preds = %bb.jp
  %i.bor = load i64, ptr %i.bon, align 2
  store i64 %i.bor, ptr %.pre1274, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit349

bb.ju:                                            ; preds = %bb.jp
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre1274, ptr noundef nonnull align 2 dereferenceable(10) %i.bon, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit349

bb.jv:                                            ; preds = %bb.jp
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre1274, ptr noundef nonnull align 2 dereferenceable(12) %i.bon, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit349

bb.jw:                                            ; preds = %bb.jp
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre1274, ptr noundef nonnull align 2 dereferenceable(14) %i.bon, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit349

bb.jx:                                            ; preds = %bb.jp
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre1274, ptr noundef nonnull align 2 dereferenceable(16) %i.bon, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit349

bb.jy:                                            ; preds = %bb.jp
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre1274, ptr noundef nonnull align 2 dereferenceable(18) %i.bon, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit349

bb.jz:                                            ; preds = %bb.jp
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre1274, ptr noundef nonnull align 2 dereferenceable(20) %i.bon, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit349

bb.ka:                                            ; preds = %bb.jp
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre1274, ptr noundef nonnull align 2 dereferenceable(22) %i.bon, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit349

bb.kb:                                            ; preds = %bb.jp
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre1274, ptr noundef nonnull align 2 dereferenceable(24) %i.bon, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit349

bb.kc:                                            ; preds = %bb.jp
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre1274, ptr noundef nonnull align 2 dereferenceable(26) %i.bon, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit349

bb.kd:                                            ; preds = %bb.jp
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre1274, ptr noundef nonnull align 2 dereferenceable(28) %i.bon, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit349

bb.ke:                                            ; preds = %bb.jp
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre1274, ptr noundef nonnull align 2 dereferenceable(30) %i.bon, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit349

bb.kf:                                            ; preds = %bb.jp
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre1274, ptr noundef nonnull align 2 dereferenceable(32) %i.bon, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit349

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i347: ; preds = %bb.jp
  %.idx.i.i.i.i348 = shl nuw nsw i64 %i.boo, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre1274, ptr nonnull align 2 %i.bon, i64 %.idx.i.i.i.i348, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit349

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit349: ; preds = %bb.jp, %bb.jq, %bb.jr, %bb.js, %bb.jt, %bb.ju, %bb.jv, %bb.jw, %bb.jx, %bb.jy, %bb.jz, %bb.ka, %bb.kb, %bb.kc, %bb.kd, %bb.ke, %bb.kf, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i347
  %i.bos = load ptr, ptr %i.ab, align 8
  %i.bot = getelementptr inbounds nuw [2 x i8], ptr %i.bos, i64 %i.boo
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i108

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i108: ; preds = %._crit_edge1001.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit349, %._crit_edge1001
  %i.bou = phi ptr [ %i.bot, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit349 ], [ %.pre1274, %._crit_edge1001 ], [ %.pre12741480, %._crit_edge1001.thread ] ; 2 uses
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bou, i64 2
  store ptr %i.bov, ptr %i.ab, align 8
  store i16 34, ptr %i.bou, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95.thread

bb.kg:                                            ; preds = %bb.hf, %bb.hf, %bb.hf, %bb.hf
  %i.bow = getelementptr inbounds nuw i8, ptr %i.atl, i64 16
  %i.box = load i64, ptr %i.bow, align 8
  %i.boy = inttoptr i64 %i.box to ptr             ; 6 uses
  %i.boz = load atomic volatile i64, ptr %i.atl monotonic, align 8
  %i.bpa = add i64 %i.boz, 11
  %i.bpb = inttoptr i64 %i.bpa to ptr
  %i.bpc = load atomic volatile i16, ptr %i.bpb monotonic, align 2
  %i.bpd = and i16 %i.bpc, 16
  %.not.i350 = icmp eq i16 %i.bpd, 0
  br i1 %.not.i350, label %bb.kj, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.bpe = load ptr, ptr %i.boy, align 8
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 16
  %i.bpg = load ptr, ptr %i.bpf, align 8
  %i.bph = call noundef zeroext i1 %i.bpg(ptr noundef nonnull align 8 dereferenceable(8) %i.boy) #21, !inline_history !80
  br i1 %i.bph, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #21
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.boy, i64 8
  %i.bpj = load ptr, ptr %i.bpi, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit352

bb.kj:                                            ; preds = %bb.kh, %bb.kg
  %i.bpk = load ptr, ptr %i.boy, align 8
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpk, i64 72
  %i.bpm = load ptr, ptr %i.bpl, align 8
  %i.bpn = call noundef ptr %i.bpm(ptr noundef nonnull align 8 dereferenceable(16) %i.boy) #21, !inline_history !80
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit352

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit352: ; preds = %bb.ki, %bb.kj
  %.0.i351 = phi ptr [ %i.bpj, %bb.ki ], [ %i.bpn, %bb.kj ] ; 4 uses
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.atl, i64 12
  %i.bpp = load i32, ptr %i.bpo, align 4          ; 5 uses
  %i.bpq = zext i32 %i.bpp to i64                 ; 2 uses
  %i.bpr = shl nuw nsw i64 %i.bpq, 3
  %i.bps = or disjoint i64 %i.bpr, 2              ; 2 uses
  %i.bpt = load ptr, ptr %i.z, align 8
  %i.bpu = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.bpv = ptrtoint ptr %i.bpt to i64
  %i.bpw = ptrtoint ptr %i.bpu to i64
  %i.bpx = sub i64 %i.bpv, %i.bpw
  %i.bpy = ashr exact i64 %i.bpx, 1
  %.not.i353 = icmp ugt i64 %i.bps, %i.bpy
  br i1 %.not.i353, label %bb.kk, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit354, !prof !6

bb.kk:                                            ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit352
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef %i.bps)
  %.pre1271 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit354

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit354: ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit352, %bb.kk
  %i.bpz = phi ptr [ %i.bpu, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit352 ], [ %.pre1271, %bb.kk ] ; 2 uses
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpz, i64 2
  store ptr %i.bqa, ptr %i.ab, align 8
  store i16 34, ptr %i.bpz, align 2
  %.not1174 = icmp eq i32 %i.bpp, 0
  br i1 %.not1174, label %._crit_edge996.thread, label %.lr.ph995

._crit_edge996.thread:                            ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit354
  %.pre12721482 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i104

._crit_edge996:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit357.thread
  %i.bqb = icmp ugt i32 %i.bpp, %.2.i.i71.i
  %.pre1272 = load ptr, ptr %i.ab, align 8        ; 18 uses
  br i1 %i.bqb, label %bb.kw, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i104

.lr.ph995:                                        ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit354, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit357.thread
  %.055.i.i66.i994 = phi i32 [ %.2.i.i71.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit357.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit354 ] ; 4 uses
  %.057.i.i65.i993 = phi i32 [ %i.bsn, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit357.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit354 ] ; 9 uses
  %i.bqc = zext i32 %.057.i.i65.i993 to i64
  %i.bqd = getelementptr inbounds nuw [2 x i8], ptr %.0.i351, i64 %i.bqc
  %i.bqe = load i16, ptr %i.bqd, align 2          ; 11 uses
  %i.bqf = and i16 %i.bqe, -2
  %or.cond.i355 = icmp eq i16 %i.bqf, 32
  br i1 %or.cond.i355, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit357.thread, label %bb.kl

bb.kl:                                            ; preds = %.lr.ph995
  %i.bqg = icmp ugt i16 %i.bqe, 34
  %i.bqh = icmp ne i16 %i.bqe, 92
  %or.cond5.i356 = and i1 %i.bqg, %i.bqh
  %i.bqi = add i16 %i.bqe, 8192
  %i.bqj = icmp ult i16 %i.bqi, -2048
  %or.cond871 = and i1 %or.cond5.i356, %i.bqj
  br i1 %or.cond871, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit357.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit357.thread837, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit357.thread837: ; preds = %bb.kl
  %9 = icmp slt i16 %i.bqe, -8192
  %i.bqk = zext i32 %.055.i.i66.i994 to i64
  %i.bql = getelementptr inbounds nuw [2 x i8], ptr %.0.i351, i64 %i.bqk
  %i.bqm = sub i32 %.057.i.i65.i993, %.055.i.i66.i994
  %i.bqn = zext i32 %i.bqm to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.y, ptr noundef %i.bql, i64 noundef %i.bqn)
  br i1 %9, label %bb.km, label %bb.ku

bb.km:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit357.thread837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.bqo = icmp samesign ult i16 %i.bqe, -9216
  br i1 %i.bqo, label %bb.kn, label %bb.ks

bb.kn:                                            ; preds = %bb.km
  %i.bqp = add nuw i32 %.057.i.i65.i993, 1        ; 3 uses
  %i.bqq = icmp ugt i32 %i.bpp, %i.bqp
  br i1 %i.bqq, label %bb.ko, label %bb.kr

bb.ko:                                            ; preds = %bb.kn
  %i.bqr = zext i32 %i.bqp to i64
  %i.bqs = getelementptr inbounds nuw [2 x i8], ptr %.0.i351, i64 %i.bqr
  %i.bqt = load i16, ptr %i.bqs, align 2          ; 2 uses
  %i.bqu = and i16 %i.bqt, -1024
  %i.bqv = icmp eq i16 %i.bqu, -9216
  %i.bqw = load ptr, ptr %i.ab, align 8           ; 4 uses
  br i1 %i.bqv, label %bb.kp, label %bb.kq

bb.kp:                                            ; preds = %bb.ko
  %i.bqx = getelementptr inbounds nuw i8, ptr %i.bqw, i64 2
  store ptr %i.bqx, ptr %i.ab, align 8
  store i16 %i.bqe, ptr %i.bqw, align 2
  %i.bqy = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.bqy, i64 2
  store ptr %i.bqz, ptr %i.ab, align 8
  store i16 %i.bqt, ptr %i.bqy, align 2
  br label %bb.kt

bb.kq:                                            ; preds = %bb.ko
  store i16 92, ptr %i.bqw, align 2
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqw, i64 2
  store i16 117, ptr %i.bra, align 2
  %i.brb = load ptr, ptr %i.ab, align 8
  %i.brc = getelementptr inbounds nuw i8, ptr %i.brb, i64 4
  store ptr %i.brc, ptr %i.ab, align 8
  %i.brd = uitofp i16 %i.bqe to double
  %i.bre = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.brd, i32 noundef 16, ptr nonnull %i.b, i64 2200) #21 ; 2 uses
  %i.brf = extractvalue { i64, ptr } %i.bre, 0    ; 2 uses
  %i.brg = extractvalue { i64, ptr } %i.bre, 1
  %i.brh = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.brh, ptr noundef %i.brg, i64 noundef %i.brf)
  %i.bri = load ptr, ptr %i.ab, align 8
  %i.brj = getelementptr inbounds nuw [2 x i8], ptr %i.bri, i64 %i.brf
  store ptr %i.brj, ptr %i.ab, align 8
  br label %bb.kt

bb.kr:                                            ; preds = %bb.kn
  %i.brk = load ptr, ptr %i.ab, align 8           ; 2 uses
  store i16 92, ptr %i.brk, align 2
  %i.brl = getelementptr inbounds nuw i8, ptr %i.brk, i64 2
  store i16 117, ptr %i.brl, align 2
  %i.brm = load ptr, ptr %i.ab, align 8
  %i.brn = getelementptr inbounds nuw i8, ptr %i.brm, i64 4
  store ptr %i.brn, ptr %i.ab, align 8
  %i.bro = uitofp i16 %i.bqe to double
  %i.brp = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.bro, i32 noundef 16, ptr nonnull %i.b, i64 2200) #21 ; 2 uses
  %i.brq = extractvalue { i64, ptr } %i.brp, 0    ; 2 uses
  %i.brr = extractvalue { i64, ptr } %i.brp, 1
  %i.brs = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.brs, ptr noundef %i.brr, i64 noundef %i.brq)
  %i.brt = load ptr, ptr %i.ab, align 8
  %i.bru = getelementptr inbounds nuw [2 x i8], ptr %i.brt, i64 %i.brq
  store ptr %i.bru, ptr %i.ab, align 8
  br label %bb.kt

bb.ks:                                            ; preds = %bb.km
  %i.brv = load ptr, ptr %i.ab, align 8           ; 2 uses
  store i16 92, ptr %i.brv, align 2
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 2
  store i16 117, ptr %i.brw, align 2
  %i.brx = load ptr, ptr %i.ab, align 8
  %i.bry = getelementptr inbounds nuw i8, ptr %i.brx, i64 4
  store ptr %i.bry, ptr %i.ab, align 8
  %i.brz = uitofp i16 %i.bqe to double
  %i.bsa = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.brz, i32 noundef 16, ptr nonnull %i.b, i64 2200) #21 ; 2 uses
  %i.bsb = extractvalue { i64, ptr } %i.bsa, 0    ; 2 uses
  %i.bsc = extractvalue { i64, ptr } %i.bsa, 1
  %i.bsd = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bsd, ptr noundef %i.bsc, i64 noundef %i.bsb)
  %i.bse = load ptr, ptr %i.ab, align 8
  %i.bsf = getelementptr inbounds nuw [2 x i8], ptr %i.bse, i64 %i.bsb
  store ptr %i.bsf, ptr %i.ab, align 8
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kr, %bb.kq, %bb.kp
  %.259.i.i73.i = phi i32 [ %.057.i.i65.i993, %bb.ks ], [ %.057.i.i65.i993, %bb.kr ], [ %i.bqp, %bb.kp ], [ %.057.i.i65.i993, %bb.kq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.kv

bb.ku:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit357.thread837
  %i.bsg = zext i16 %i.bqe to i64
  %i.bsh = shl nuw nsw i64 %i.bsg, 3
  %i.bsi = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.bsh ; 2 uses
  %i.bsj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bsi) #26 ; 2 uses
  %i.bsk = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bsk, ptr noundef nonnull %i.bsi, i64 noundef %i.bsj)
  %i.bsl = load ptr, ptr %i.ab, align 8
  %i.bsm = getelementptr inbounds nuw [2 x i8], ptr %i.bsl, i64 %i.bsj
  store ptr %i.bsm, ptr %i.ab, align 8
  br label %bb.kv

bb.kv:                                            ; preds = %bb.ku, %bb.kt
  %.3.i.i68.i = phi i32 [ %.259.i.i73.i, %bb.kt ], [ %.057.i.i65.i993, %bb.ku ] ; 2 uses
  %.156.i.i69.i = add nuw i32 %.3.i.i68.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit357.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit357.thread: ; preds = %bb.kl, %.lr.ph995, %bb.kv
  %.4.i.i70.i = phi i32 [ %.3.i.i68.i, %bb.kv ], [ %.057.i.i65.i993, %bb.kl ], [ %.057.i.i65.i993, %.lr.ph995 ]
  %.2.i.i71.i = phi i32 [ %.156.i.i69.i, %bb.kv ], [ %.055.i.i66.i994, %bb.kl ], [ %.055.i.i66.i994, %.lr.ph995 ] ; 3 uses
  %i.bsn = add nuw i32 %.4.i.i70.i, 1             ; 2 uses
  %i.bso = icmp ugt i32 %i.bpp, %i.bsn
  br i1 %i.bso, label %.lr.ph995, label %._crit_edge996, !llvm.loop !350

bb.kw:                                            ; preds = %._crit_edge996
  %i.bsp = zext i32 %.2.i.i71.i to i64            ; 2 uses
  %i.bsq = getelementptr inbounds nuw [2 x i8], ptr %.0.i351, i64 %i.bsp ; 17 uses
  %i.bsr = sub nuw nsw i64 %i.bpq, %i.bsp         ; 3 uses
  %trunc = trunc nuw i64 %i.bsr to i32
  switch i32 %trunc, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i360 [
    i32 1, label %bb.kx
    i32 2, label %bb.ky
    i32 3, label %bb.kz
    i32 4, label %bb.la
    i32 5, label %bb.lb
    i32 6, label %bb.lc
    i32 7, label %bb.ld
    i32 8, label %bb.le
    i32 9, label %bb.lf
    i32 10, label %bb.lg
    i32 11, label %bb.lh
    i32 12, label %bb.li
    i32 13, label %bb.lj
    i32 14, label %bb.lk
    i32 15, label %bb.ll
    i32 16, label %bb.lm
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit362
  ]

bb.kx:                                            ; preds = %bb.kw
  %i.bss = load i16, ptr %i.bsq, align 2
  store i16 %i.bss, ptr %.pre1272, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit362

bb.ky:                                            ; preds = %bb.kw
  %i.bst = load i32, ptr %i.bsq, align 2
  store i32 %i.bst, ptr %.pre1272, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit362

bb.kz:                                            ; preds = %bb.kw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre1272, ptr noundef nonnull align 2 dereferenceable(6) %i.bsq, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit362

bb.la:                                            ; preds = %bb.kw
  %i.bsu = load i64, ptr %i.bsq, align 2
  store i64 %i.bsu, ptr %.pre1272, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit362

bb.lb:                                            ; preds = %bb.kw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre1272, ptr noundef nonnull align 2 dereferenceable(10) %i.bsq, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit362

bb.lc:                                            ; preds = %bb.kw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre1272, ptr noundef nonnull align 2 dereferenceable(12) %i.bsq, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit362

bb.ld:                                            ; preds = %bb.kw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre1272, ptr noundef nonnull align 2 dereferenceable(14) %i.bsq, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit362

bb.le:                                            ; preds = %bb.kw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre1272, ptr noundef nonnull align 2 dereferenceable(16) %i.bsq, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit362

bb.lf:                                            ; preds = %bb.kw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre1272, ptr noundef nonnull align 2 dereferenceable(18) %i.bsq, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit362

bb.lg:                                            ; preds = %bb.kw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre1272, ptr noundef nonnull align 2 dereferenceable(20) %i.bsq, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit362

bb.lh:                                            ; preds = %bb.kw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre1272, ptr noundef nonnull align 2 dereferenceable(22) %i.bsq, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit362

bb.li:                                            ; preds = %bb.kw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre1272, ptr noundef nonnull align 2 dereferenceable(24) %i.bsq, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit362

bb.lj:                                            ; preds = %bb.kw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre1272, ptr noundef nonnull align 2 dereferenceable(26) %i.bsq, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit362

bb.lk:                                            ; preds = %bb.kw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre1272, ptr noundef nonnull align 2 dereferenceable(28) %i.bsq, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit362

bb.ll:                                            ; preds = %bb.kw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre1272, ptr noundef nonnull align 2 dereferenceable(30) %i.bsq, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit362

bb.lm:                                            ; preds = %bb.kw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre1272, ptr noundef nonnull align 2 dereferenceable(32) %i.bsq, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit362

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i360: ; preds = %bb.kw
  %.idx.i.i.i.i361 = shl nuw nsw i64 %i.bsr, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre1272, ptr nonnull align 2 %i.bsq, i64 %.idx.i.i.i.i361, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit362

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit362: ; preds = %bb.kw, %bb.kx, %bb.ky, %bb.kz, %bb.la, %bb.lb, %bb.lc, %bb.ld, %bb.le, %bb.lf, %bb.lg, %bb.lh, %bb.li, %bb.lj, %bb.lk, %bb.ll, %bb.lm, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i360
  %i.bsv = load ptr, ptr %i.ab, align 8
  %i.bsw = getelementptr inbounds nuw [2 x i8], ptr %i.bsv, i64 %i.bsr
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i104

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i104: ; preds = %._crit_edge996.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit362, %._crit_edge996
  %i.bsx = phi ptr [ %i.bsw, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit362 ], [ %.pre1272, %._crit_edge996 ], [ %.pre12721482, %._crit_edge996.thread ] ; 2 uses
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bsx, i64 2
  store ptr %i.bsy, ptr %i.ab, align 8
  store i16 34, ptr %i.bsx, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95.thread

bb.ln:                                            ; preds = %bb.hf
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.atl, i64 16
  %i.bta = load i64, ptr %i.bsz, align 8
  %i.btb = add i64 %i.bta, -1
  %i.btc = inttoptr i64 %i.btb to ptr             ; 4 uses
  %i.btd = load atomic volatile i64, ptr %i.btc monotonic, align 8
  %i.bte = add i64 %i.btd, 11
  %i.btf = inttoptr i64 %i.bte to ptr
  %i.btg = load atomic volatile i16, ptr %i.btf monotonic, align 2
  %i.bth = and i16 %i.btg, -121
  %i.bti = icmp eq i16 %i.bth, 2
  %i.btj = getelementptr inbounds nuw i8, ptr %i.btc, i64 12 ; 2 uses
  br i1 %i.bti, label %bb.lo, label %bb.mc

bb.lo:                                            ; preds = %bb.ln
  %i.btk = call noundef ptr @_ZNK2v88internal21ExternalTwoByteString8GetCharsEv(ptr noundef nonnull align 4 dereferenceable(32) %i.btc) ; 4 uses
  %i.btl = load i32, ptr %i.btj, align 4          ; 5 uses
  %i.btm = zext i32 %i.btl to i64                 ; 2 uses
  %i.btn = shl nuw nsw i64 %i.btm, 3
  %i.bto = or disjoint i64 %i.btn, 2              ; 2 uses
  %i.btp = load ptr, ptr %i.z, align 8
  %i.btq = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.btr = ptrtoint ptr %i.btp to i64
  %i.bts = ptrtoint ptr %i.btq to i64
  %i.btt = sub i64 %i.btr, %i.bts
  %i.btu = ashr exact i64 %i.btt, 1
  %.not.i364 = icmp ugt i64 %i.bto, %i.btu
  br i1 %.not.i364, label %bb.lp, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit365, !prof !6

bb.lp:                                            ; preds = %bb.lo
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef %i.bto)
  %.pre1270 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit365

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit365: ; preds = %bb.lo, %bb.lp
  %i.btv = phi ptr [ %i.btq, %bb.lo ], [ %.pre1270, %bb.lp ] ; 2 uses
  %i.btw = getelementptr inbounds nuw i8, ptr %i.btv, i64 2
  store ptr %i.btw, ptr %i.ab, align 8
  store i16 34, ptr %i.btv, align 2
  %.not1173 = icmp eq i32 %i.btl, 0
  br i1 %.not1173, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit83.i, label %.lr.ph990

._crit_edge991:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit368.thread
  %i.btx = icmp ugt i32 %i.btl, %.2.i.i80.i
  br i1 %i.btx, label %bb.mb, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit83.i

.lr.ph990:                                        ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit365, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit368.thread
  %.055.i.i75.i989 = phi i32 [ %.2.i.i80.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit368.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit365 ] ; 4 uses
  %.057.i.i74.i988 = phi i32 [ %i.bwj, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit368.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit365 ] ; 9 uses
  %i.bty = zext i32 %.057.i.i74.i988 to i64
  %i.btz = getelementptr inbounds nuw [2 x i8], ptr %i.btk, i64 %i.bty
  %i.bua = load i16, ptr %i.btz, align 2          ; 11 uses
  %i.bub = and i16 %i.bua, -2
  %or.cond.i366 = icmp eq i16 %i.bub, 32
  br i1 %or.cond.i366, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit368.thread, label %bb.lq

bb.lq:                                            ; preds = %.lr.ph990
  %i.buc = icmp ugt i16 %i.bua, 34
  %i.bud = icmp ne i16 %i.bua, 92
  %or.cond5.i367 = and i1 %i.buc, %i.bud
  %i.bue = add i16 %i.bua, 8192
  %i.buf = icmp ult i16 %i.bue, -2048
  %or.cond873 = and i1 %or.cond5.i367, %i.buf
  br i1 %or.cond873, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit368.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit368.thread838, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit368.thread838: ; preds = %bb.lq
  %10 = icmp slt i16 %i.bua, -8192
  %i.bug = zext i32 %.055.i.i75.i989 to i64
  %i.buh = getelementptr inbounds nuw [2 x i8], ptr %i.btk, i64 %i.bug
  %i.bui = sub i32 %.057.i.i74.i988, %.055.i.i75.i989
  %i.buj = zext i32 %i.bui to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.y, ptr noundef %i.buh, i64 noundef %i.buj)
  br i1 %10, label %bb.lr, label %bb.lz

bb.lr:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit368.thread838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.buk = icmp samesign ult i16 %i.bua, -9216
  br i1 %i.buk, label %bb.ls, label %bb.lx

bb.ls:                                            ; preds = %bb.lr
  %i.bul = add nuw i32 %.057.i.i74.i988, 1        ; 3 uses
  %i.bum = icmp ugt i32 %i.btl, %i.bul
  br i1 %i.bum, label %bb.lt, label %bb.lw

bb.lt:                                            ; preds = %bb.ls
  %i.bun = zext i32 %i.bul to i64
  %i.buo = getelementptr inbounds nuw [2 x i8], ptr %i.btk, i64 %i.bun
  %i.bup = load i16, ptr %i.buo, align 2          ; 2 uses
  %i.buq = and i16 %i.bup, -1024
  %i.bur = icmp eq i16 %i.buq, -9216
  %i.bus = load ptr, ptr %i.ab, align 8           ; 4 uses
  br i1 %i.bur, label %bb.lu, label %bb.lv

bb.lu:                                            ; preds = %bb.lt
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 2
  store ptr %i.but, ptr %i.ab, align 8
  store i16 %i.bua, ptr %i.bus, align 2
  %i.buu = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.buv = getelementptr inbounds nuw i8, ptr %i.buu, i64 2
  store ptr %i.buv, ptr %i.ab, align 8
  store i16 %i.bup, ptr %i.buu, align 2
  br label %bb.ly

bb.lv:                                            ; preds = %bb.lt
  store i16 92, ptr %i.bus, align 2
  %i.buw = getelementptr inbounds nuw i8, ptr %i.bus, i64 2
  store i16 117, ptr %i.buw, align 2
  %i.bux = load ptr, ptr %i.ab, align 8
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bux, i64 4
  store ptr %i.buy, ptr %i.ab, align 8
  %i.buz = uitofp i16 %i.bua to double
  %i.bva = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.buz, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.bvb = extractvalue { i64, ptr } %i.bva, 0    ; 2 uses
  %i.bvc = extractvalue { i64, ptr } %i.bva, 1
  %i.bvd = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bvd, ptr noundef %i.bvc, i64 noundef %i.bvb)
  %i.bve = load ptr, ptr %i.ab, align 8
  %i.bvf = getelementptr inbounds nuw [2 x i8], ptr %i.bve, i64 %i.bvb
  store ptr %i.bvf, ptr %i.ab, align 8
  br label %bb.ly

bb.lw:                                            ; preds = %bb.ls
  %i.bvg = load ptr, ptr %i.ab, align 8           ; 2 uses
  store i16 92, ptr %i.bvg, align 2
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bvg, i64 2
  store i16 117, ptr %i.bvh, align 2
  %i.bvi = load ptr, ptr %i.ab, align 8
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.bvi, i64 4
  store ptr %i.bvj, ptr %i.ab, align 8
  %i.bvk = uitofp i16 %i.bua to double
  %i.bvl = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.bvk, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.bvm = extractvalue { i64, ptr } %i.bvl, 0    ; 2 uses
  %i.bvn = extractvalue { i64, ptr } %i.bvl, 1
  %i.bvo = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bvo, ptr noundef %i.bvn, i64 noundef %i.bvm)
  %i.bvp = load ptr, ptr %i.ab, align 8
  %i.bvq = getelementptr inbounds nuw [2 x i8], ptr %i.bvp, i64 %i.bvm
  store ptr %i.bvq, ptr %i.ab, align 8
  br label %bb.ly

bb.lx:                                            ; preds = %bb.lr
  %i.bvr = load ptr, ptr %i.ab, align 8           ; 2 uses
  store i16 92, ptr %i.bvr, align 2
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvr, i64 2
  store i16 117, ptr %i.bvs, align 2
  %i.bvt = load ptr, ptr %i.ab, align 8
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bvt, i64 4
  store ptr %i.bvu, ptr %i.ab, align 8
  %i.bvv = uitofp i16 %i.bua to double
  %i.bvw = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.bvv, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.bvx = extractvalue { i64, ptr } %i.bvw, 0    ; 2 uses
  %i.bvy = extractvalue { i64, ptr } %i.bvw, 1
  %i.bvz = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bvz, ptr noundef %i.bvy, i64 noundef %i.bvx)
  %i.bwa = load ptr, ptr %i.ab, align 8
  %i.bwb = getelementptr inbounds nuw [2 x i8], ptr %i.bwa, i64 %i.bvx
  store ptr %i.bwb, ptr %i.ab, align 8
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %bb.lw, %bb.lv, %bb.lu
  %.259.i.i82.i = phi i32 [ %.057.i.i74.i988, %bb.lx ], [ %.057.i.i74.i988, %bb.lw ], [ %i.bul, %bb.lu ], [ %.057.i.i74.i988, %bb.lv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ma

bb.lz:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit368.thread838
  %i.bwc = zext i16 %i.bua to i64
  %i.bwd = shl nuw nsw i64 %i.bwc, 3
  %i.bwe = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.bwd ; 2 uses
  %i.bwf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bwe) #26 ; 2 uses
  %i.bwg = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bwg, ptr noundef nonnull %i.bwe, i64 noundef %i.bwf)
  %i.bwh = load ptr, ptr %i.ab, align 8
  %i.bwi = getelementptr inbounds nuw [2 x i8], ptr %i.bwh, i64 %i.bwf
  store ptr %i.bwi, ptr %i.ab, align 8
  br label %bb.ma

bb.ma:                                            ; preds = %bb.lz, %bb.ly
  %.3.i.i77.i = phi i32 [ %.259.i.i82.i, %bb.ly ], [ %.057.i.i74.i988, %bb.lz ] ; 2 uses
  %.156.i.i78.i = add nuw i32 %.3.i.i77.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit368.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit368.thread: ; preds = %bb.lq, %.lr.ph990, %bb.ma
  %.4.i.i79.i = phi i32 [ %.3.i.i77.i, %bb.ma ], [ %.057.i.i74.i988, %bb.lq ], [ %.057.i.i74.i988, %.lr.ph990 ]
  %.2.i.i80.i = phi i32 [ %.156.i.i78.i, %bb.ma ], [ %.055.i.i75.i989, %bb.lq ], [ %.055.i.i75.i989, %.lr.ph990 ] ; 3 uses
  %i.bwj = add nuw i32 %.4.i.i79.i, 1             ; 2 uses
  %i.bwk = icmp ugt i32 %i.btl, %i.bwj
  br i1 %i.bwk, label %.lr.ph990, label %._crit_edge991, !llvm.loop !350

bb.mb:                                            ; preds = %._crit_edge991
  %i.bwl = zext i32 %.2.i.i80.i to i64            ; 2 uses
  %i.bwm = getelementptr inbounds nuw [2 x i8], ptr %i.btk, i64 %i.bwl
  %i.bwn = sub nuw nsw i64 %i.btm, %i.bwl
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.y, ptr noundef %i.bwm, i64 noundef %i.bwn)
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit83.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit83.i: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit365, %bb.mb, %._crit_edge991
  %i.bwo = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.bwp = getelementptr inbounds nuw i8, ptr %i.bwo, i64 2
  store ptr %i.bwp, ptr %i.ab, align 8
  store i16 34, ptr %i.bwo, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95.thread

bb.mc:                                            ; preds = %bb.ln
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.btc, i64 16 ; 4 uses
  %i.bwr = load i32, ptr %i.btj, align 4          ; 5 uses
  %i.bws = zext i32 %i.bwr to i64                 ; 2 uses
  %i.bwt = shl nuw nsw i64 %i.bws, 3
  %i.bwu = or disjoint i64 %i.bwt, 2              ; 2 uses
  %i.bwv = load ptr, ptr %i.z, align 8
  %i.bww = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.bwx = ptrtoint ptr %i.bwv to i64
  %i.bwy = ptrtoint ptr %i.bww to i64
  %i.bwz = sub i64 %i.bwx, %i.bwy
  %i.bxa = ashr exact i64 %i.bwz, 1
  %.not.i371 = icmp ugt i64 %i.bwu, %i.bxa
  br i1 %.not.i371, label %bb.md, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit372, !prof !6

bb.md:                                            ; preds = %bb.mc
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef %i.bwu)
  %.pre1269 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit372

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit372: ; preds = %bb.mc, %bb.md
  %i.bxb = phi ptr [ %i.bww, %bb.mc ], [ %.pre1269, %bb.md ] ; 2 uses
  %i.bxc = getelementptr inbounds nuw i8, ptr %i.bxb, i64 2
  store ptr %i.bxc, ptr %i.ab, align 8
  store i16 34, ptr %i.bxb, align 2
  %.not1172 = icmp eq i32 %i.bwr, 0
  br i1 %.not1172, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit64.i, label %.lr.ph986

._crit_edge987:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit375.thread
  %i.bxd = icmp ugt i32 %i.bwr, %.2.i.i61.i
  br i1 %i.bxd, label %bb.mp, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit64.i

.lr.ph986:                                        ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit372, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit375.thread
  %.055.i.i56.i985 = phi i32 [ %.2.i.i61.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit375.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit372 ] ; 4 uses
  %.057.i.i55.i984 = phi i32 [ %i.bzp, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit375.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit372 ] ; 9 uses
  %i.bxe = zext i32 %.057.i.i55.i984 to i64
  %i.bxf = getelementptr inbounds nuw [2 x i8], ptr %i.bwq, i64 %i.bxe
  %i.bxg = load i16, ptr %i.bxf, align 2          ; 11 uses
  %i.bxh = and i16 %i.bxg, -2
  %or.cond.i373 = icmp eq i16 %i.bxh, 32
  br i1 %or.cond.i373, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit375.thread, label %bb.me

bb.me:                                            ; preds = %.lr.ph986
  %i.bxi = icmp ugt i16 %i.bxg, 34
  %i.bxj = icmp ne i16 %i.bxg, 92
  %or.cond5.i374 = and i1 %i.bxi, %i.bxj
  %i.bxk = add i16 %i.bxg, 8192
  %i.bxl = icmp ult i16 %i.bxk, -2048
  %or.cond875 = and i1 %or.cond5.i374, %i.bxl
  br i1 %or.cond875, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit375.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit375.thread839, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit375.thread839: ; preds = %bb.me
  %11 = icmp slt i16 %i.bxg, -8192
  %i.bxm = zext i32 %.055.i.i56.i985 to i64
  %i.bxn = getelementptr inbounds nuw [2 x i8], ptr %i.bwq, i64 %i.bxm
  %i.bxo = sub i32 %.057.i.i55.i984, %.055.i.i56.i985
  %i.bxp = zext i32 %i.bxo to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.y, ptr noundef nonnull %i.bxn, i64 noundef %i.bxp)
  br i1 %11, label %bb.mf, label %bb.mn

bb.mf:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit375.thread839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.bxq = icmp samesign ult i16 %i.bxg, -9216
  br i1 %i.bxq, label %bb.mg, label %bb.ml

bb.mg:                                            ; preds = %bb.mf
  %i.bxr = add nuw i32 %.057.i.i55.i984, 1        ; 3 uses
  %i.bxs = icmp ugt i32 %i.bwr, %i.bxr
  br i1 %i.bxs, label %bb.mh, label %bb.mk

bb.mh:                                            ; preds = %bb.mg
  %i.bxt = zext i32 %i.bxr to i64
  %i.bxu = getelementptr inbounds nuw [2 x i8], ptr %i.bwq, i64 %i.bxt
  %i.bxv = load i16, ptr %i.bxu, align 2          ; 2 uses
  %i.bxw = and i16 %i.bxv, -1024
  %i.bxx = icmp eq i16 %i.bxw, -9216
  %i.bxy = load ptr, ptr %i.ab, align 8           ; 4 uses
  br i1 %i.bxx, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bxy, i64 2
  store ptr %i.bxz, ptr %i.ab, align 8
  store i16 %i.bxg, ptr %i.bxy, align 2
  %i.bya = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.byb = getelementptr inbounds nuw i8, ptr %i.bya, i64 2
  store ptr %i.byb, ptr %i.ab, align 8
  store i16 %i.bxv, ptr %i.bya, align 2
  br label %bb.mm

bb.mj:                                            ; preds = %bb.mh
  store i16 92, ptr %i.bxy, align 2
  %i.byc = getelementptr inbounds nuw i8, ptr %i.bxy, i64 2
  store i16 117, ptr %i.byc, align 2
  %i.byd = load ptr, ptr %i.ab, align 8
  %i.bye = getelementptr inbounds nuw i8, ptr %i.byd, i64 4
  store ptr %i.bye, ptr %i.ab, align 8
  %i.byf = uitofp i16 %i.bxg to double
  %i.byg = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.byf, i32 noundef 16, ptr nonnull %i.c, i64 2200) #21 ; 2 uses
  %i.byh = extractvalue { i64, ptr } %i.byg, 0    ; 2 uses
  %i.byi = extractvalue { i64, ptr } %i.byg, 1
  %i.byj = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.byj, ptr noundef %i.byi, i64 noundef %i.byh)
  %i.byk = load ptr, ptr %i.ab, align 8
  %i.byl = getelementptr inbounds nuw [2 x i8], ptr %i.byk, i64 %i.byh
  store ptr %i.byl, ptr %i.ab, align 8
  br label %bb.mm

bb.mk:                                            ; preds = %bb.mg
  %i.bym = load ptr, ptr %i.ab, align 8           ; 2 uses
  store i16 92, ptr %i.bym, align 2
  %i.byn = getelementptr inbounds nuw i8, ptr %i.bym, i64 2
  store i16 117, ptr %i.byn, align 2
  %i.byo = load ptr, ptr %i.ab, align 8
  %i.byp = getelementptr inbounds nuw i8, ptr %i.byo, i64 4
  store ptr %i.byp, ptr %i.ab, align 8
  %i.byq = uitofp i16 %i.bxg to double
  %i.byr = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.byq, i32 noundef 16, ptr nonnull %i.c, i64 2200) #21 ; 2 uses
  %i.bys = extractvalue { i64, ptr } %i.byr, 0    ; 2 uses
  %i.byt = extractvalue { i64, ptr } %i.byr, 1
  %i.byu = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.byu, ptr noundef %i.byt, i64 noundef %i.bys)
  %i.byv = load ptr, ptr %i.ab, align 8
  %i.byw = getelementptr inbounds nuw [2 x i8], ptr %i.byv, i64 %i.bys
  store ptr %i.byw, ptr %i.ab, align 8
  br label %bb.mm

bb.ml:                                            ; preds = %bb.mf
  %i.byx = load ptr, ptr %i.ab, align 8           ; 2 uses
  store i16 92, ptr %i.byx, align 2
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byx, i64 2
  store i16 117, ptr %i.byy, align 2
  %i.byz = load ptr, ptr %i.ab, align 8
  %i.bza = getelementptr inbounds nuw i8, ptr %i.byz, i64 4
  store ptr %i.bza, ptr %i.ab, align 8
  %i.bzb = uitofp i16 %i.bxg to double
  %i.bzc = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.bzb, i32 noundef 16, ptr nonnull %i.c, i64 2200) #21 ; 2 uses
  %i.bzd = extractvalue { i64, ptr } %i.bzc, 0    ; 2 uses
  %i.bze = extractvalue { i64, ptr } %i.bzc, 1
  %i.bzf = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bzf, ptr noundef %i.bze, i64 noundef %i.bzd)
  %i.bzg = load ptr, ptr %i.ab, align 8
  %i.bzh = getelementptr inbounds nuw [2 x i8], ptr %i.bzg, i64 %i.bzd
  store ptr %i.bzh, ptr %i.ab, align 8
  br label %bb.mm

bb.mm:                                            ; preds = %bb.ml, %bb.mk, %bb.mj, %bb.mi
  %.259.i.i63.i = phi i32 [ %.057.i.i55.i984, %bb.ml ], [ %.057.i.i55.i984, %bb.mk ], [ %i.bxr, %bb.mi ], [ %.057.i.i55.i984, %bb.mj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.mo

bb.mn:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit375.thread839
  %i.bzi = zext i16 %i.bxg to i64
  %i.bzj = shl nuw nsw i64 %i.bzi, 3
  %i.bzk = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.bzj ; 2 uses
  %i.bzl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bzk) #26 ; 2 uses
  %i.bzm = load ptr, ptr %i.ab, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bzm, ptr noundef nonnull %i.bzk, i64 noundef %i.bzl)
  %i.bzn = load ptr, ptr %i.ab, align 8
  %i.bzo = getelementptr inbounds nuw [2 x i8], ptr %i.bzn, i64 %i.bzl
  store ptr %i.bzo, ptr %i.ab, align 8
  br label %bb.mo

bb.mo:                                            ; preds = %bb.mn, %bb.mm
  %.3.i.i58.i = phi i32 [ %.259.i.i63.i, %bb.mm ], [ %.057.i.i55.i984, %bb.mn ] ; 2 uses
  %.156.i.i59.i = add nuw i32 %.3.i.i58.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit375.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit375.thread: ; preds = %bb.me, %.lr.ph986, %bb.mo
  %.4.i.i60.i = phi i32 [ %.3.i.i58.i, %bb.mo ], [ %.057.i.i55.i984, %bb.me ], [ %.057.i.i55.i984, %.lr.ph986 ]
  %.2.i.i61.i = phi i32 [ %.156.i.i59.i, %bb.mo ], [ %.055.i.i56.i985, %bb.me ], [ %.055.i.i56.i985, %.lr.ph986 ] ; 3 uses
  %i.bzp = add nuw i32 %.4.i.i60.i, 1             ; 2 uses
  %i.bzq = icmp ugt i32 %i.bwr, %i.bzp
  br i1 %i.bzq, label %.lr.ph986, label %._crit_edge987, !llvm.loop !350

bb.mp:                                            ; preds = %._crit_edge987
  %i.bzr = zext i32 %.2.i.i61.i to i64            ; 2 uses
  %i.bzs = getelementptr inbounds nuw [2 x i8], ptr %i.bwq, i64 %i.bzr
  %i.bzt = sub nuw nsw i64 %i.bws, %i.bzr
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.y, ptr noundef nonnull %i.bzs, i64 noundef %i.bzt)
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit64.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit64.i: ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit372, %bb.mp, %._crit_edge987
  %i.bzu = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.bzv = getelementptr inbounds nuw i8, ptr %i.bzu, i64 2
  store ptr %i.bzv, ptr %i.ab, align 8
  store i16 34, ptr %i.bzu, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95.thread

bb.mq:                                            ; preds = %bb.hf
  %i.bzw = getelementptr inbounds nuw i8, ptr %i.atl, i64 8
  %.0.copyload.i.i.i.i378 = load double, ptr %i.bzw, align 8
  call void @_ZN2v88internal19FastJsonStringifierItE15SerializeDoubleEd(ptr noundef nonnull align 8 dereferenceable(1200) %0, double noundef %.0.copyload.i.i.i.i378)
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95.thread

bb.mr:                                            ; preds = %bb.hf
  %i.bzx = getelementptr inbounds nuw i8, ptr %i.atl, i64 40
  %i.bzy = load i64, ptr %i.bzx, align 8
  %i.bzz = lshr i64 %i.bzy, 32
  %i.caa = trunc i64 %i.bzz to i8
  switch i8 %i.caa, label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95.thread842 [
    i8 0, label %bb.ms
    i8 1, label %bb.mu
    i8 3, label %bb.mw
  ]

bb.ms:                                            ; preds = %bb.mr
  %i.cab = load ptr, ptr %i.z, align 8
  %i.cac = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.cad = ptrtoint ptr %i.cab to i64
  %i.cae = ptrtoint ptr %i.cac to i64
  %i.caf = sub i64 %i.cad, %i.cae
  %.not.i379 = icmp ult i64 %i.caf, 9
  br i1 %.not.i379, label %bb.mt, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit380, !prof !6

bb.mt:                                            ; preds = %bb.ms
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 5)
  %.pre1267 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit380

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit380: ; preds = %bb.ms, %bb.mt
  %i.cag = phi ptr [ %i.cac, %bb.ms ], [ %.pre1267, %bb.mt ] ; 2 uses
  store <4 x i16> <i16 102, i16 97, i16 108, i16 115>, ptr %i.cag, align 2
  %i.cah = getelementptr inbounds nuw i8, ptr %i.cag, i64 8
  store i16 101, ptr %i.cah, align 2
  %i.cai = load ptr, ptr %i.ab, align 8
  %i.caj = getelementptr inbounds nuw i8, ptr %i.cai, i64 10
  store ptr %i.caj, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95.thread

bb.mu:                                            ; preds = %bb.mr
  %i.cak = load ptr, ptr %i.z, align 8
  %i.cal = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.cam = ptrtoint ptr %i.cak to i64
  %i.can = ptrtoint ptr %i.cal to i64
  %i.cao = sub i64 %i.cam, %i.can
  %.not.i381 = icmp ult i64 %i.cao, 8
  br i1 %.not.i381, label %bb.mv, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit382, !prof !6

bb.mv:                                            ; preds = %bb.mu
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.y, i64 noundef 4)
  %.pre1266 = load ptr, ptr %i.ab, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit382

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit382: ; preds = %bb.mu, %bb.mv
  %i.cap = phi ptr [ %i.cal, %bb.mu ], [ %.pre1266, %bb.mv ]
  store <4 x i16> <i16 116, i16 114, i16 117, i16 101>, ptr %i.cap, align 2
  %i.caq = load ptr, ptr %i.ab, align 8
  %i.car = getelementptr inbounds nuw i8, ptr %i.caq, i64 8
  store ptr %i.car, ptr %i.ab, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i95.thread

bb.mw:                                            ; preds = %bb.mr
  %i.cas = load ptr, ptr %i.z, align 8
  %i.cat = load ptr, ptr %i.ab, align 8           ; 2 uses
  %i.cau = ptrtoint ptr %i.cas to i64
  %i.cav = ptrtoint ptr %i.cat to i64
  %i.caw = sub i64 %i.cau, %i.cav
  %.not.i383 = icmp ult i64 %i.caw, 8
  br i1 %.not.i383, label %bb.mx, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit384, !prof !6
end_hunk_15
begin_hunk_16_@_ZN2v88internal19FastJsonStringifierItE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj:bb.a
  br i1 %i.tx, label %.lr.ph503, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i, !llvm.loop !347

_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i: ; preds = %bb.bi, %.lr.ph503, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i22.i
  %.013.i.i23.i.lcssa = phi i64 [ %i.tg, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i22.i ], [ %.013.i.i23.i502, %.lr.ph503 ], [ %i.tv, %bb.bi ] ; 2 uses
  %i.ty = icmp ult i64 %.013.i.i23.i.lcssa, %i.rj
  br i1 %i.ty, label %.lr.ph.i113, label %._crit_edge.i110

._crit_edge.i110:                                 ; preds = %bb.bk, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i
  %.0.lcssa.i112 = phi i64 [ %.155.i.i26.i, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i ], [ %.1.i119, %bb.bk ] ; 2 uses
  %i.tz = icmp ult i64 %.0.lcssa.i112, %i.rj
  %.pre611 = load ptr, ptr %i.i, align 8          ; 2 uses
  br i1 %i.tz, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i.sink.split, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i, !prof !11

.lr.ph.i113:                                      ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i, %bb.bk
  %.026.i114 = phi i64 [ %.1.i119, %bb.bk ], [ %.155.i.i26.i, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i ] ; 3 uses
  %.02025.i115 = phi i64 [ %.pre-phi.i117, %bb.bk ], [ %.013.i.i23.i.lcssa, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i ] ; 4 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.lr, i64 %.02025.i115
  %i.ub = load i8, ptr %i.ua, align 1
  %i.uc = zext i8 %i.ub to i64                    ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.uc
  %i.ue = load i8, ptr %i.ud, align 1, !range !7, !noundef !8
  %i.uf = trunc nuw i8 %i.ue to i1
  br i1 %i.uf, label %._crit_edge28.i121, label %bb.bj, !prof !11

._crit_edge28.i121:                               ; preds = %.lr.ph.i113
  %.pre.i122 = add i64 %.02025.i115, 1
  br label %bb.bk

bb.bj:                                            ; preds = %.lr.ph.i113
  %i.ug = getelementptr inbounds nuw i8, ptr %i.lr, i64 %.026.i114
  %i.uh = sub i64 %.02025.i115, %.026.i114        ; 2 uses
  %i.ui = load ptr, ptr %i.i, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ui, ptr noundef %i.ug, i64 noundef %i.uh)
  %i.uj = load ptr, ptr %i.i, align 8
  %i.uk = getelementptr inbounds nuw [2 x i8], ptr %i.uj, i64 %i.uh ; 2 uses
  store ptr %i.uk, ptr %i.i, align 8
  %i.ul = shl nuw nsw i64 %i.uc, 3
  %i.um = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.ul ; 2 uses
  %i.un = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.um) #26 ; 2 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.uk, ptr noundef nonnull %i.um, i64 noundef %i.un)
  %i.uo = load ptr, ptr %i.i, align 8
  %i.up = getelementptr inbounds nuw [2 x i8], ptr %i.uo, i64 %i.un
  store ptr %i.up, ptr %i.i, align 8
  %i.uq = add i64 %.02025.i115, 1                 ; 2 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %._crit_edge28.i121
  %.pre-phi.i117 = phi i64 [ %.pre.i122, %._crit_edge28.i121 ], [ %i.uq, %bb.bj ] ; 2 uses
  %.1.i119 = phi i64 [ %.026.i114, %._crit_edge28.i121 ], [ %i.uq, %bb.bj ] ; 2 uses
  %exitcond.not.i120 = icmp eq i64 %.pre-phi.i117, %i.rj
  br i1 %exitcond.not.i120, label %._crit_edge.i110, label %.lr.ph.i113, !llvm.loop !348

.lr.ph492:                                        ; preds = %.lr.ph492.preheader, %bb.bl
  %.013.i8.i16.i491 = phi i64 [ %i.vd, %bb.bl ], [ 0, %.lr.ph492.preheader ] ; 3 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.lr, i64 %.013.i8.i16.i491
  %i.us = load i32, ptr %i.ur, align 4            ; 4 uses
  %i.ut = add i32 %i.us, -538976288
  %i.uu = xor i32 %i.us, 572662306
  %i.uv = add i32 %i.uu, -16843009
  %i.uw = xor i32 %i.us, 1549556828
  %i.ux = add i32 %i.uw, -16843009
  %i.uy = and i32 %i.us, -2139062144
  %i.uz = xor i32 %i.uy, -2139062144
  %i.va = or i32 %i.uv, %i.ut
  %i.vb = or i32 %i.va, %i.ux
  %i.vc = and i32 %i.vb, %i.uz
  %.not430 = icmp eq i32 %i.vc, 0
  br i1 %.not430, label %bb.bl, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i17.i

bb.bl:                                            ; preds = %.lr.ph492
  %i.vd = add nuw nsw i64 %.013.i8.i16.i491, 4    ; 2 uses
  %i.ve = or disjoint i64 %i.vd, 3
  %i.vf = icmp samesign ult i64 %i.ve, %i.rj
  br i1 %i.vf, label %.lr.ph492, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i17.i, !llvm.loop !347

_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i17.i: ; preds = %bb.bl, %.lr.ph492, %.preheader440
  %.013.i8.i16.i.lcssa = phi i64 [ 0, %.preheader440 ], [ %.013.i8.i16.i491, %.lr.ph492 ], [ %i.rw, %bb.bl ] ; 2 uses
  %i.vg = icmp samesign ult i64 %.013.i8.i16.i.lcssa, %i.rj
  br i1 %i.vg, label %.lr.ph.i127, label %._crit_edge.i124

._crit_edge.i124:                                 ; preds = %bb.bn, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i17.i
  %.0.lcssa.i126 = phi i64 [ 0, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i17.i ], [ %.1.i133, %bb.bn ] ; 2 uses
  %i.vh = icmp ult i64 %.0.lcssa.i126, %i.rj
  %.pre612 = load ptr, ptr %i.i, align 8          ; 2 uses
  br i1 %i.vh, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i.sink.split, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i, !prof !11

.lr.ph.i127:                                      ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i17.i, %bb.bn
  %.026.i128 = phi i64 [ %.1.i133, %bb.bn ], [ 0, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i17.i ] ; 3 uses
  %.02025.i129 = phi i64 [ %.pre-phi.i131, %bb.bn ], [ %.013.i8.i16.i.lcssa, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i17.i ] ; 4 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.lr, i64 %.02025.i129
  %i.vj = load i8, ptr %i.vi, align 1
  %i.vk = zext i8 %i.vj to i64                    ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.vk
  %i.vm = load i8, ptr %i.vl, align 1, !range !7, !noundef !8
  %i.vn = trunc nuw i8 %i.vm to i1
  br i1 %i.vn, label %._crit_edge28.i135, label %bb.bm, !prof !11

._crit_edge28.i135:                               ; preds = %.lr.ph.i127
  %.pre.i136 = add i64 %.02025.i129, 1
  br label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i127
  %i.vo = getelementptr inbounds nuw i8, ptr %i.lr, i64 %.026.i128
  %i.vp = sub i64 %.02025.i129, %.026.i128        ; 2 uses
  %i.vq = load ptr, ptr %i.i, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.vq, ptr noundef %i.vo, i64 noundef %i.vp)
  %i.vr = load ptr, ptr %i.i, align 8
  %i.vs = getelementptr inbounds nuw [2 x i8], ptr %i.vr, i64 %i.vp ; 2 uses
  store ptr %i.vs, ptr %i.i, align 8
  %i.vt = shl nuw nsw i64 %i.vk, 3
  %i.vu = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.vt ; 2 uses
  %i.vv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.vu) #26 ; 2 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.vs, ptr noundef nonnull %i.vu, i64 noundef %i.vv)
  %i.vw = load ptr, ptr %i.i, align 8
  %i.vx = getelementptr inbounds nuw [2 x i8], ptr %i.vw, i64 %i.vv
  store ptr %i.vx, ptr %i.i, align 8
  %i.vy = add i64 %.02025.i129, 1                 ; 2 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %._crit_edge28.i135
  %.pre-phi.i131 = phi i64 [ %.pre.i136, %._crit_edge28.i135 ], [ %i.vy, %bb.bm ] ; 2 uses
  %.1.i133 = phi i64 [ %.026.i128, %._crit_edge28.i135 ], [ %i.vy, %bb.bm ] ; 2 uses
  %exitcond.not.i134 = icmp eq i64 %.pre-phi.i131, %i.rj
  br i1 %exitcond.not.i134, label %._crit_edge.i124, label %.lr.ph.i127, !llvm.loop !348

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i.sink.split: ; preds = %._crit_edge.i124, %._crit_edge.i110
  %.0.lcssa.i112.sink743 = phi i64 [ %.0.lcssa.i112, %._crit_edge.i110 ], [ %.0.lcssa.i126, %._crit_edge.i124 ] ; 2 uses
  %.pre611.sink = phi ptr [ %.pre611, %._crit_edge.i110 ], [ %.pre612, %._crit_edge.i124 ]
  %i.vz = getelementptr inbounds nuw i8, ptr %i.lr, i64 %.0.lcssa.i112.sink743
  %i.wa = sub nuw nsw i64 %i.rj, %.0.lcssa.i112.sink743 ; 2 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %.pre611.sink, ptr noundef %i.vz, i64 noundef %i.wa)
  %i.wb = load ptr, ptr %i.i, align 8
  %i.wc = getelementptr inbounds nuw [2 x i8], ptr %i.wb, i64 %i.wa
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i: ; preds = %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i.sink.split, %._crit_edge.i110, %._crit_edge.i124
  %i.wd = phi ptr [ %.pre612, %._crit_edge.i124 ], [ %.pre611, %._crit_edge.i110 ], [ %i.wc, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit28.i.sink.split ] ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 2
  store ptr %i.we, ptr %i.i, align 8
  store i16 34, ptr %i.wd, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.bo:                                            ; preds = %bb.g, %bb.g
  %i.wf = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 4 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.wh = load i32, ptr %i.wg, align 4            ; 5 uses
  %i.wi = zext i32 %i.wh to i64                   ; 2 uses
  %i.wj = shl nuw nsw i64 %i.wi, 3
  %i.wk = or disjoint i64 %i.wj, 2                ; 2 uses
  %i.wl = load ptr, ptr %i.h, align 8
  %i.wm = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.wn = ptrtoint ptr %i.wl to i64
  %i.wo = ptrtoint ptr %i.wm to i64
  %i.wp = sub i64 %i.wn, %i.wo
  %i.wq = ashr exact i64 %i.wp, 1
  %.not.i138 = icmp ugt i64 %i.wk, %i.wq
  br i1 %.not.i138, label %bb.bp, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit139, !prof !6

bb.bp:                                            ; preds = %bb.bo
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.j, i64 noundef %i.wk)
  %.pre608 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit139

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit139: ; preds = %bb.bo, %bb.bp
  %i.wr = phi ptr [ %i.wm, %bb.bo ], [ %.pre608, %bb.bp ] ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 2
  store ptr %i.ws, ptr %i.i, align 8
  store i16 34, ptr %i.wr, align 2
  %.not565 = icmp eq i32 %i.wh, 0
  br i1 %.not565, label %._crit_edge489.thread, label %.lr.ph488

._crit_edge489.thread:                            ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit139
  %.pre609695 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

._crit_edge489:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread
  %i.wt = icmp ugt i32 %i.wh, %.2.i.i.i
  %.pre609 = load ptr, ptr %i.i, align 8          ; 18 uses
  br i1 %i.wt, label %bb.cb, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

.lr.ph488:                                        ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit139, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread
  %.055.i.i.i487 = phi i32 [ %.2.i.i.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit139 ] ; 4 uses
  %.057.i.i.i486 = phi i32 [ %i.zf, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit139 ] ; 9 uses
  %i.wu = zext i32 %.057.i.i.i486 to i64
  %i.wv = getelementptr inbounds nuw [2 x i8], ptr %i.wf, i64 %i.wu
  %i.ww = load i16, ptr %i.wv, align 2            ; 11 uses
  %i.wx = and i16 %i.ww, -2
  %or.cond.i = icmp eq i16 %i.wx, 32
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph488
  %i.wy = icmp ugt i16 %i.ww, 34
  %i.wz = icmp ne i16 %i.ww, 92
  %or.cond5.i = and i1 %i.wy, %i.wz
  %i.xa = add i16 %i.ww, 8192
  %i.xb = icmp ult i16 %i.xa, -2048
  %or.cond = and i1 %or.cond5.i, %i.xb
  br i1 %or.cond, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread396, !prof !349

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread396: ; preds = %bb.bq
  %5 = icmp slt i16 %i.ww, -8192
  %i.xc = zext i32 %.055.i.i.i487 to i64
  %i.xd = getelementptr inbounds nuw [2 x i8], ptr %i.wf, i64 %i.xc
  %i.xe = sub i32 %.057.i.i.i486, %.055.i.i.i487
  %i.xf = zext i32 %i.xe to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.j, ptr noundef nonnull %i.xd, i64 noundef %i.xf)
  br i1 %5, label %bb.br, label %bb.bz

bb.br:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.xg = icmp samesign ult i16 %i.ww, -9216
  br i1 %i.xg, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %i.xh = add nuw i32 %.057.i.i.i486, 1           ; 3 uses
  %i.xi = icmp ugt i32 %i.wh, %i.xh
  br i1 %i.xi, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.xj = zext i32 %i.xh to i64
  %i.xk = getelementptr inbounds nuw [2 x i8], ptr %i.wf, i64 %i.xj
  %i.xl = load i16, ptr %i.xk, align 2            ; 2 uses
  %i.xm = and i16 %i.xl, -1024
  %i.xn = icmp eq i16 %i.xm, -9216
  %i.xo = load ptr, ptr %i.i, align 8             ; 4 uses
  br i1 %i.xn, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 2
  store ptr %i.xp, ptr %i.i, align 8
  store i16 %i.ww, ptr %i.xo, align 2
  %i.xq = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 2
  store ptr %i.xr, ptr %i.i, align 8
  store i16 %i.xl, ptr %i.xq, align 2
  br label %bb.by

bb.bv:                                            ; preds = %bb.bt
  store i16 92, ptr %i.xo, align 2
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xo, i64 2
  store i16 117, ptr %i.xs, align 2
  %i.xt = load ptr, ptr %i.i, align 8
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 4
  store ptr %i.xu, ptr %i.i, align 8
  %i.xv = uitofp i16 %i.ww to double
  %i.xw = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.xv, i32 noundef 16, ptr nonnull %i.d, i64 2200) #21 ; 2 uses
  %i.xx = extractvalue { i64, ptr } %i.xw, 0      ; 2 uses
  %i.xy = extractvalue { i64, ptr } %i.xw, 1
  %i.xz = load ptr, ptr %i.i, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.xz, ptr noundef %i.xy, i64 noundef %i.xx)
  %i.ya = load ptr, ptr %i.i, align 8
  %i.yb = getelementptr inbounds nuw [2 x i8], ptr %i.ya, i64 %i.xx
  store ptr %i.yb, ptr %i.i, align 8
  br label %bb.by

bb.bw:                                            ; preds = %bb.bs
  %i.yc = load ptr, ptr %i.i, align 8             ; 2 uses
  store i16 92, ptr %i.yc, align 2
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 2
  store i16 117, ptr %i.yd, align 2
  %i.ye = load ptr, ptr %i.i, align 8
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 4
  store ptr %i.yf, ptr %i.i, align 8
  %i.yg = uitofp i16 %i.ww to double
  %i.yh = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.yg, i32 noundef 16, ptr nonnull %i.d, i64 2200) #21 ; 2 uses
  %i.yi = extractvalue { i64, ptr } %i.yh, 0      ; 2 uses
  %i.yj = extractvalue { i64, ptr } %i.yh, 1
  %i.yk = load ptr, ptr %i.i, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.yk, ptr noundef %i.yj, i64 noundef %i.yi)
  %i.yl = load ptr, ptr %i.i, align 8
  %i.ym = getelementptr inbounds nuw [2 x i8], ptr %i.yl, i64 %i.yi
  store ptr %i.ym, ptr %i.i, align 8
  br label %bb.by

bb.bx:                                            ; preds = %bb.br
  %i.yn = load ptr, ptr %i.i, align 8             ; 2 uses
  store i16 92, ptr %i.yn, align 2
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 2
  store i16 117, ptr %i.yo, align 2
  %i.yp = load ptr, ptr %i.i, align 8
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 4
  store ptr %i.yq, ptr %i.i, align 8
  %i.yr = uitofp i16 %i.ww to double
  %i.ys = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.yr, i32 noundef 16, ptr nonnull %i.d, i64 2200) #21 ; 2 uses
  %i.yt = extractvalue { i64, ptr } %i.ys, 0      ; 2 uses
  %i.yu = extractvalue { i64, ptr } %i.ys, 1
  %i.yv = load ptr, ptr %i.i, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.yv, ptr noundef %i.yu, i64 noundef %i.yt)
  %i.yw = load ptr, ptr %i.i, align 8
  %i.yx = getelementptr inbounds nuw [2 x i8], ptr %i.yw, i64 %i.yt
  store ptr %i.yx, ptr %i.i, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bu
  %.259.i.i.i = phi i32 [ %.057.i.i.i486, %bb.bx ], [ %.057.i.i.i486, %bb.bw ], [ %i.xh, %bb.bu ], [ %.057.i.i.i486, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.ca

bb.bz:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread396
  %i.yy = zext i16 %i.ww to i64
  %i.yz = shl nuw nsw i64 %i.yy, 3
  %i.za = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.yz ; 2 uses
  %i.zb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.za) #26 ; 2 uses
  %i.zc = load ptr, ptr %i.i, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.zc, ptr noundef nonnull %i.za, i64 noundef %i.zb)
  %i.zd = load ptr, ptr %i.i, align 8
  %i.ze = getelementptr inbounds nuw [2 x i8], ptr %i.zd, i64 %i.zb
  store ptr %i.ze, ptr %i.i, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.3.i.i.i = phi i32 [ %.259.i.i.i, %bb.by ], [ %.057.i.i.i486, %bb.bz ] ; 2 uses
  %.156.i.i.i = add nuw i32 %.3.i.i.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread: ; preds = %bb.bq, %.lr.ph488, %bb.ca
  %.4.i.i.i = phi i32 [ %.3.i.i.i, %bb.ca ], [ %.057.i.i.i486, %bb.bq ], [ %.057.i.i.i486, %.lr.ph488 ]
  %.2.i.i.i = phi i32 [ %.156.i.i.i, %bb.ca ], [ %.055.i.i.i487, %bb.bq ], [ %.055.i.i.i487, %.lr.ph488 ] ; 3 uses
  %i.zf = add nuw i32 %.4.i.i.i, 1                ; 2 uses
  %i.zg = icmp ugt i32 %i.wh, %i.zf
  br i1 %i.zg, label %.lr.ph488, label %._crit_edge489, !llvm.loop !350

bb.cb:                                            ; preds = %._crit_edge489
  %i.zh = zext i32 %.2.i.i.i to i64               ; 2 uses
  %i.zi = getelementptr inbounds nuw [2 x i8], ptr %i.wf, i64 %i.zh ; 17 uses
  %i.zj = sub nuw nsw i64 %i.wi, %i.zh            ; 3 uses
  %trunc429 = trunc nuw i64 %i.zj to i32
  switch i32 %trunc429, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i [
    i32 1, label %bb.cc
    i32 2, label %bb.cd
    i32 3, label %bb.ce
    i32 4, label %bb.cf
    i32 5, label %bb.cg
    i32 6, label %bb.ch
    i32 7, label %bb.ci
    i32 8, label %bb.cj
    i32 9, label %bb.ck
    i32 10, label %bb.cl
    i32 11, label %bb.cm
    i32 12, label %bb.cn
    i32 13, label %bb.co
    i32 14, label %bb.cp
    i32 15, label %bb.cq
    i32 16, label %bb.cr
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.zk = load i16, ptr %i.zi, align 2
  store i16 %i.zk, ptr %.pre609, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cd:                                            ; preds = %bb.cb
  %i.zl = load i32, ptr %i.zi, align 2
  store i32 %i.zl, ptr %.pre609, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ce:                                            ; preds = %bb.cb
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre609, ptr noundef nonnull align 2 dereferenceable(6) %i.zi, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cf:                                            ; preds = %bb.cb
  %i.zm = load i64, ptr %i.zi, align 2
  store i64 %i.zm, ptr %.pre609, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cg:                                            ; preds = %bb.cb
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre609, ptr noundef nonnull align 2 dereferenceable(10) %i.zi, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ch:                                            ; preds = %bb.cb
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre609, ptr noundef nonnull align 2 dereferenceable(12) %i.zi, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ci:                                            ; preds = %bb.cb
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre609, ptr noundef nonnull align 2 dereferenceable(14) %i.zi, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cj:                                            ; preds = %bb.cb
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre609, ptr noundef nonnull align 2 dereferenceable(16) %i.zi, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ck:                                            ; preds = %bb.cb
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre609, ptr noundef nonnull align 2 dereferenceable(18) %i.zi, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cl:                                            ; preds = %bb.cb
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre609, ptr noundef nonnull align 2 dereferenceable(20) %i.zi, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cm:                                            ; preds = %bb.cb
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre609, ptr noundef nonnull align 2 dereferenceable(22) %i.zi, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cn:                                            ; preds = %bb.cb
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre609, ptr noundef nonnull align 2 dereferenceable(24) %i.zi, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.co:                                            ; preds = %bb.cb
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre609, ptr noundef nonnull align 2 dereferenceable(26) %i.zi, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cp:                                            ; preds = %bb.cb
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre609, ptr noundef nonnull align 2 dereferenceable(28) %i.zi, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cq:                                            ; preds = %bb.cb
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre609, ptr noundef nonnull align 2 dereferenceable(30) %i.zi, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cr:                                            ; preds = %bb.cb
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre609, ptr noundef nonnull align 2 dereferenceable(32) %i.zi, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.cb
  %.idx.i.i.i.i = shl nuw nsw i64 %i.zj, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre609, ptr nonnull align 2 %i.zi, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit: ; preds = %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq, %bb.cr, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i
  %i.zn = load ptr, ptr %i.i, align 8
  %i.zo = getelementptr inbounds nuw [2 x i8], ptr %i.zn, i64 %i.zj
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i: ; preds = %._crit_edge489.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit, %._crit_edge489
  %i.zp = phi ptr [ %i.zo, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit ], [ %.pre609, %._crit_edge489 ], [ %.pre609695, %._crit_edge489.thread ] ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 2
  store ptr %i.zq, ptr %i.i, align 8
  store i16 34, ptr %i.zp, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.cs:                                            ; preds = %bb.g, %bb.g, %bb.g, %bb.g
  %i.zr = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.zs = load i64, ptr %i.zr, align 8
  %i.zt = inttoptr i64 %i.zs to ptr               ; 6 uses
  %i.zu = load atomic volatile i64, ptr %i.an monotonic, align 8
  %i.zv = add i64 %i.zu, 11
  %i.zw = inttoptr i64 %i.zv to ptr
  %i.zx = load atomic volatile i16, ptr %i.zw monotonic, align 2
  %i.zy = and i16 %i.zx, 16
  %.not.i140 = icmp eq i16 %i.zy, 0
  br i1 %.not.i140, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.zz = load ptr, ptr %i.zt, align 8
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 16
  %i.aab = load ptr, ptr %i.aaa, align 8
  %i.aac = call noundef zeroext i1 %i.aab(ptr noundef nonnull align 8 dereferenceable(8) %i.zt) #21, !inline_history !80
  br i1 %i.aac, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zt) #21
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  %i.aae = load ptr, ptr %i.aad, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.cv:                                            ; preds = %bb.ct, %bb.cs
  %i.aaf = load ptr, ptr %i.zt, align 8
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 72
  %i.aah = load ptr, ptr %i.aag, align 8
  %i.aai = call noundef ptr %i.aah(ptr noundef nonnull align 8 dereferenceable(16) %i.zt) #21, !inline_history !80
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.cu, %bb.cv
  %.0.i141 = phi ptr [ %i.aae, %bb.cu ], [ %i.aai, %bb.cv ] ; 4 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.aak = load i32, ptr %i.aaj, align 4          ; 5 uses
  %i.aal = zext i32 %i.aak to i64                 ; 2 uses
  %i.aam = shl nuw nsw i64 %i.aal, 3
  %i.aan = or disjoint i64 %i.aam, 2              ; 2 uses
  %i.aao = load ptr, ptr %i.h, align 8
  %i.aap = load ptr, ptr %i.i, align 8            ; 2 uses
  %i.aaq = ptrtoint ptr %i.aao to i64
  %i.aar = ptrtoint ptr %i.aap to i64
  %i.aas = sub i64 %i.aaq, %i.aar
  %i.aat = ashr exact i64 %i.aas, 1
  %.not.i142 = icmp ugt i64 %i.aan, %i.aat
  br i1 %.not.i142, label %bb.cw, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit143, !prof !6

bb.cw:                                            ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.j, i64 noundef %i.aan)
  %.pre606 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit143

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit143: ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.cw
  %i.aau = phi ptr [ %i.aap, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ], [ %.pre606, %bb.cw ] ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 2
  store ptr %i.aav, ptr %i.i, align 8
  store i16 34, ptr %i.aau, align 2
  %.not564 = icmp eq i32 %i.aak, 0
  br i1 %.not564, label %._crit_edge484.thread, label %.lr.ph483

._crit_edge484.thread:                            ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit143
  %.pre607697 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

._crit_edge484:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit146.thread
  %i.aaw = icmp ugt i32 %i.aak, %.2.i.i69.i
  %.pre607 = load ptr, ptr %i.i, align 8          ; 18 uses
  br i1 %i.aaw, label %bb.eo, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

.lr.ph483:                                        ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit143, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit146.thread
  %.055.i.i64.i482 = phi i32 [ %.2.i.i69.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit146.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit143 ] ; 4 uses
  %.057.i.i63.i481 = phi i32 [ %i.adp, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit146.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit143 ] ; 9 uses
  %i.aax = zext i32 %.057.i.i63.i481 to i64
  %i.aay = getelementptr inbounds nuw [2 x i8], ptr %.0.i141, i64 %i.aax
  %i.aaz = load i16, ptr %i.aay, align 2          ; 11 uses
  %i.aba = and i16 %i.aaz, -2
  %or.cond.i144 = icmp eq i16 %i.aba, 32
  br i1 %or.cond.i144, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit146.thread, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph483
  %i.abb = icmp ugt i16 %i.aaz, 34
  %i.abc = icmp ne i16 %i.aaz, 92
  %or.cond5.i145 = and i1 %i.abb, %i.abc
  %i.abd = add i16 %i.aaz, 8192
  %i.abe = icmp ult i16 %i.abd, -2048
  %or.cond421 = and i1 %or.cond5.i145, %i.abe
  br i1 %or.cond421, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit146.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit146.thread397, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit146.thread397: ; preds = %bb.cx
  %6 = icmp slt i16 %i.aaz, -8192
  %i.abf = zext i32 %.055.i.i64.i482 to i64
  %i.abg = getelementptr inbounds nuw [2 x i8], ptr %.0.i141, i64 %i.abf ; 34 uses
  %i.abh = sub i32 %.057.i.i63.i481, %.055.i.i64.i482 ; 3 uses
  %i.abi = zext i32 %i.abh to i64                 ; 4 uses
  %i.abj = load ptr, ptr %i.i, align 8            ; 34 uses
  br i1 %6, label %bb.cy, label %bb.dw

bb.cy:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit146.thread397
  switch i32 %i.abh, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i147 [
    i32 1, label %bb.cz
    i32 2, label %bb.da
    i32 3, label %bb.db
    i32 4, label %bb.dc
    i32 5, label %bb.dd
    i32 6, label %bb.de
    i32 7, label %bb.df
    i32 8, label %bb.dg
    i32 9, label %bb.dh
    i32 10, label %bb.di
    i32 11, label %bb.dj
    i32 12, label %bb.dk
    i32 13, label %bb.dl
    i32 14, label %bb.dm
    i32 15, label %bb.dn
    i32 16, label %bb.do
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit149
  ]

bb.cz:                                            ; preds = %bb.cy
  %i.abk = load i16, ptr %i.abg, align 2
  store i16 %i.abk, ptr %i.abj, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit149

bb.da:                                            ; preds = %bb.cy
  %i.abl = load i32, ptr %i.abg, align 2
  store i32 %i.abl, ptr %i.abj, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit149

bb.db:                                            ; preds = %bb.cy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.abj, ptr noundef nonnull align 2 dereferenceable(6) %i.abg, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit149

bb.dc:                                            ; preds = %bb.cy
  %i.abm = load i64, ptr %i.abg, align 2
  store i64 %i.abm, ptr %i.abj, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit149

bb.dd:                                            ; preds = %bb.cy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.abj, ptr noundef nonnull align 2 dereferenceable(10) %i.abg, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit149

bb.de:                                            ; preds = %bb.cy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.abj, ptr noundef nonnull align 2 dereferenceable(12) %i.abg, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit149

bb.df:                                            ; preds = %bb.cy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.abj, ptr noundef nonnull align 2 dereferenceable(14) %i.abg, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit149

bb.dg:                                            ; preds = %bb.cy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.abj, ptr noundef nonnull align 2 dereferenceable(16) %i.abg, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit149

bb.dh:                                            ; preds = %bb.cy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.abj, ptr noundef nonnull align 2 dereferenceable(18) %i.abg, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit149

bb.di:                                            ; preds = %bb.cy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.abj, ptr noundef nonnull align 2 dereferenceable(20) %i.abg, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit149

bb.dj:                                            ; preds = %bb.cy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.abj, ptr noundef nonnull align 2 dereferenceable(22) %i.abg, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit149

bb.dk:                                            ; preds = %bb.cy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.abj, ptr noundef nonnull align 2 dereferenceable(24) %i.abg, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit149

bb.dl:                                            ; preds = %bb.cy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.abj, ptr noundef nonnull align 2 dereferenceable(26) %i.abg, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit149

bb.dm:                                            ; preds = %bb.cy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %i.abj, ptr noundef nonnull align 2 dereferenceable(28) %i.abg, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit149

bb.dn:                                            ; preds = %bb.cy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.abj, ptr noundef nonnull align 2 dereferenceable(30) %i.abg, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit149

bb.do:                                            ; preds = %bb.cy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.abj, ptr noundef nonnull align 2 dereferenceable(32) %i.abg, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit149

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i147: ; preds = %bb.cy
  %.idx.i.i.i.i148 = shl nuw nsw i64 %i.abi, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.abj, ptr nonnull align 2 %i.abg, i64 %.idx.i.i.i.i148, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit149

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit149: ; preds = %bb.cy, %bb.cz, %bb.da, %bb.db, %bb.dc, %bb.dd, %bb.de, %bb.df, %bb.dg, %bb.dh, %bb.di, %bb.dj, %bb.dk, %bb.dl, %bb.dm, %bb.dn, %bb.do, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i147
  %i.abn = load ptr, ptr %i.i, align 8
  %i.abo = getelementptr inbounds nuw [2 x i8], ptr %i.abn, i64 %i.abi ; 9 uses
  store ptr %i.abo, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.abp = icmp samesign ult i16 %i.aaz, -9216
  br i1 %i.abp, label %bb.dp, label %bb.du

bb.dp:                                            ; preds = %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit149
  %i.abq = add nuw i32 %.057.i.i63.i481, 1        ; 3 uses
  %i.abr = icmp ugt i32 %i.aak, %i.abq
  br i1 %i.abr, label %bb.dq, label %bb.dt

bb.dq:                                            ; preds = %bb.dp
  %i.abs = zext i32 %i.abq to i64
  %i.abt = getelementptr inbounds nuw [2 x i8], ptr %.0.i141, i64 %i.abs
  %i.abu = load i16, ptr %i.abt, align 2          ; 2 uses
  %i.abv = and i16 %i.abu, -1024
  %i.abw = icmp eq i16 %i.abv, -9216
  br i1 %i.abw, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abo, i64 2
  store ptr %i.abx, ptr %i.i, align 8
  store i16 %i.aaz, ptr %i.abo, align 2
  %i.aby = load ptr, ptr %i.i, align 8            ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 2
  store ptr %i.abz, ptr %i.i, align 8
  store i16 %i.abu, ptr %i.aby, align 2
  br label %bb.dv

bb.ds:                                            ; preds = %bb.dq
  store i16 92, ptr %i.abo, align 2
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abo, i64 2
  store i16 117, ptr %i.aca, align 2
  %i.acb = load ptr, ptr %i.i, align 8
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 4
  store ptr %i.acc, ptr %i.i, align 8
  %i.acd = uitofp i16 %i.aaz to double
  %i.ace = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.acd, i32 noundef 16, ptr nonnull %i.b, i64 2200) #21 ; 2 uses
  %i.acf = extractvalue { i64, ptr } %i.ace, 0    ; 2 uses
  %i.acg = extractvalue { i64, ptr } %i.ace, 1
  %i.ach = load ptr, ptr %i.i, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ach, ptr noundef %i.acg, i64 noundef %i.acf)
  %i.aci = load ptr, ptr %i.i, align 8
  %i.acj = getelementptr inbounds nuw [2 x i8], ptr %i.aci, i64 %i.acf
  store ptr %i.acj, ptr %i.i, align 8
  br label %bb.dv

bb.dt:                                            ; preds = %bb.dp
  store i16 92, ptr %i.abo, align 2
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abo, i64 2
  store i16 117, ptr %i.ack, align 2
  %i.acl = load ptr, ptr %i.i, align 8
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 4
  store ptr %i.acm, ptr %i.i, align 8
  %i.acn = uitofp i16 %i.aaz to double
  %i.aco = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.acn, i32 noundef 16, ptr nonnull %i.b, i64 2200) #21 ; 2 uses
  %i.acp = extractvalue { i64, ptr } %i.aco, 0    ; 2 uses
  %i.acq = extractvalue { i64, ptr } %i.aco, 1
  %i.acr = load ptr, ptr %i.i, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.acr, ptr noundef %i.acq, i64 noundef %i.acp)
  %i.acs = load ptr, ptr %i.i, align 8
  %i.act = getelementptr inbounds nuw [2 x i8], ptr %i.acs, i64 %i.acp
  store ptr %i.act, ptr %i.i, align 8
  br label %bb.dv

bb.du:                                            ; preds = %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit149
  store i16 92, ptr %i.abo, align 2
  %i.acu = getelementptr inbounds nuw i8, ptr %i.abo, i64 2
  store i16 117, ptr %i.acu, align 2
  %i.acv = load ptr, ptr %i.i, align 8
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 4
  store ptr %i.acw, ptr %i.i, align 8
  %i.acx = uitofp i16 %i.aaz to double
  %i.acy = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.acx, i32 noundef 16, ptr nonnull %i.b, i64 2200) #21 ; 2 uses
  %i.acz = extractvalue { i64, ptr } %i.acy, 0    ; 2 uses
  %i.ada = extractvalue { i64, ptr } %i.acy, 1
  %i.adb = load ptr, ptr %i.i, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.adb, ptr noundef %i.ada, i64 noundef %i.acz)
  %i.adc = load ptr, ptr %i.i, align 8
  %i.add = getelementptr inbounds nuw [2 x i8], ptr %i.adc, i64 %i.acz
  store ptr %i.add, ptr %i.i, align 8
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt, %bb.ds, %bb.dr
  %.259.i.i71.i = phi i32 [ %.057.i.i63.i481, %bb.du ], [ %.057.i.i63.i481, %bb.dt ], [ %i.abq, %bb.dr ], [ %.057.i.i63.i481, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.en

bb.dw:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit146.thread397
  switch i32 %i.abh, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i152 [
    i32 1, label %bb.dx
    i32 2, label %bb.dy
    i32 3, label %bb.dz
    i32 4, label %bb.ea
    i32 5, label %bb.eb
    i32 6, label %bb.ec
    i32 7, label %bb.ed
    i32 8, label %bb.ee
    i32 9, label %bb.ef
    i32 10, label %bb.eg
    i32 11, label %bb.eh
    i32 12, label %bb.ei
    i32 13, label %bb.ej
    i32 14, label %bb.ek
end_hunk_16
begin_hunk_17_@_ZN2v88internal19FastJsonStringifierItE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE2EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj:bb.a
    i32 7, label %bb.ev
    i32 8, label %bb.ew
    i32 9, label %bb.ex
    i32 10, label %bb.ey
    i32 11, label %bb.ez
    i32 12, label %bb.fa
    i32 13, label %bb.fb
    i32 14, label %bb.fc
    i32 15, label %bb.fd
    i32 16, label %bb.fe
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit157
  ]

bb.ep:                                            ; preds = %bb.eo
  %i.adu = load i16, ptr %i.ads, align 2
  store i16 %i.adu, ptr %.pre607, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit157

bb.eq:                                            ; preds = %bb.eo
  %i.adv = load i32, ptr %i.ads, align 2
  store i32 %i.adv, ptr %.pre607, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit157

bb.er:                                            ; preds = %bb.eo
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre607, ptr noundef nonnull align 2 dereferenceable(6) %i.ads, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit157

bb.es:                                            ; preds = %bb.eo
  %i.adw = load i64, ptr %i.ads, align 2
  store i64 %i.adw, ptr %.pre607, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit157

bb.et:                                            ; preds = %bb.eo
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre607, ptr noundef nonnull align 2 dereferenceable(10) %i.ads, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit157

bb.eu:                                            ; preds = %bb.eo
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre607, ptr noundef nonnull align 2 dereferenceable(12) %i.ads, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit157

bb.ev:                                            ; preds = %bb.eo
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre607, ptr noundef nonnull align 2 dereferenceable(14) %i.ads, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit157

bb.ew:                                            ; preds = %bb.eo
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre607, ptr noundef nonnull align 2 dereferenceable(16) %i.ads, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit157

bb.ex:                                            ; preds = %bb.eo
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre607, ptr noundef nonnull align 2 dereferenceable(18) %i.ads, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit157

bb.ey:                                            ; preds = %bb.eo
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre607, ptr noundef nonnull align 2 dereferenceable(20) %i.ads, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit157

bb.ez:                                            ; preds = %bb.eo
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre607, ptr noundef nonnull align 2 dereferenceable(22) %i.ads, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit157

bb.fa:                                            ; preds = %bb.eo
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre607, ptr noundef nonnull align 2 dereferenceable(24) %i.ads, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit157

bb.fb:                                            ; preds = %bb.eo
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre607, ptr noundef nonnull align 2 dereferenceable(26) %i.ads, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit157

bb.fc:                                            ; preds = %bb.eo
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre607, ptr noundef nonnull align 2 dereferenceable(28) %i.ads, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit157

bb.fd:                                            ; preds = %bb.eo
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre607, ptr noundef nonnull align 2 dereferenceable(30) %i.ads, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit157

bb.fe:                                            ; preds = %bb.eo
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre607, ptr noundef nonnull align 2 dereferenceable(32) %i.ads, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit157

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i155: ; preds = %bb.eo
  %.idx.i.i.i.i156 = shl nuw nsw i64 %i.adt, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre607, ptr nonnull align 2 %i.ads, i64 %.idx.i.i.i.i156, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit157

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit157: ; preds = %bb.eo, %bb.ep, %bb.eq, %bb.er, %bb.es, %bb.et, %bb.eu, %bb.ev, %bb.ew, %bb.ex, %bb.ey, %bb.ez, %bb.fa, %bb.fb, %bb.fc, %bb.fd, %bb.fe, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i155
  %i.adx = load ptr, ptr %i.i, align 8
  %i.ady = getelementptr inbounds nuw [2 x i8], ptr %i.adx, i64 %i.adt
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i: ; preds = %._crit_edge484.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit157, %._crit_edge484
  %i.adz = phi ptr [ %i.ady, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit157 ], [ %.pre607, %._crit_edge484 ], [ %.pre607697, %._crit_edge484.thread ] ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 2
  store ptr %i.aea, ptr %i.i, align 8
  store i16 34, ptr %i.adz, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.ff:                                            ; preds = %bb.g
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.aec = load i64, ptr %i.aeb, align 8
  %i.aed = add i64 %i.aec, -1
  %i.aee = inttoptr i64 %i.aed to ptr             ; 5 uses
  %i.aef = load atomic volatile i64, ptr %i.aee monotonic, align 8
  %i.aeg = add i64 %i.aef, 11
  %i.aeh = inttoptr i64 %i.aeg to ptr
  %i.aei = load atomic volatile i16, ptr %i.aeh monotonic, align 2
  %i.aej = and i16 %i.aei, -121
  %i.aek = icmp eq i16 %i.aej, 2
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aee, i64 16 ; 5 uses
  br i1 %i.aek, label %bb.fg, label %bb.gn

bb.fg:                                            ; preds = %bb.ff
  %i.aem = load i64, ptr %i.ael, align 8
  %i.aen = inttoptr i64 %i.aem to ptr             ; 6 uses
  %i.aeo = load atomic volatile i64, ptr %i.aee monotonic, align 8
  %i.aep = add i64 %i.aeo, 11
  %i.aeq = inttoptr i64 %i.aep to ptr
  %i.aer = load atomic volatile i16, ptr %i.aeq monotonic, align 2
  %i.aes = and i16 %i.aer, 16
  %.not.i159 = icmp eq i16 %i.aes, 0
  br i1 %.not.i159, label %bb.fj, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.aet = load ptr, ptr %i.aen, align 8
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 16
  %i.aev = load ptr, ptr %i.aeu, align 8
  %i.aew = call noundef zeroext i1 %i.aev(ptr noundef nonnull align 8 dereferenceable(8) %i.aen) #21, !inline_history !80
  br i1 %i.aew, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aen) #21
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aen, i64 8
  %i.aey = load ptr, ptr %i.aex, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit161

bb.fj:                                            ; preds = %bb.fh, %bb.fg
  %i.aez = load ptr, ptr %i.aen, align 8
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 72
  %i.afb = load ptr, ptr %i.afa, align 8
  %i.afc = call noundef ptr %i.afb(ptr noundef nonnull align 8 dereferenceable(16) %i.aen) #21, !inline_history !80
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit161

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit161: ; preds = %bb.fi, %bb.fj
  %.0.i160 = phi ptr [ %i.aey, %bb.fi ], [ %i.afc, %bb.fj ] ; 4 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aee, i64 12
  %i.afe = load i32, ptr %i.afd, align 4          ; 5 uses
  %i.aff = zext i32 %i.afe to i64                 ; 2 uses
  %i.afg = shl nuw nsw i64 %i.aff, 3
  %i.afh = or disjoint i64 %i.afg, 2              ; 2 uses
  %i.afi = load ptr, ptr %i.h, align 8
  %i.afj = load ptr, ptr %i.i, align 8            ; 2 uses
  %i.afk = ptrtoint ptr %i.afi to i64
  %i.afl = ptrtoint ptr %i.afj to i64
  %i.afm = sub i64 %i.afk, %i.afl
  %i.afn = ashr exact i64 %i.afm, 1
  %.not.i162 = icmp ugt i64 %i.afh, %i.afn
  br i1 %.not.i162, label %bb.fk, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit163, !prof !6

bb.fk:                                            ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit161
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.j, i64 noundef %i.afh)
  %.pre604 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit163

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit163: ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit161, %bb.fk
  %i.afo = phi ptr [ %i.afj, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit161 ], [ %.pre604, %bb.fk ] ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 2
  store ptr %i.afp, ptr %i.i, align 8
  store i16 34, ptr %i.afo, align 2
  %.not563 = icmp eq i32 %i.afe, 0
  br i1 %.not563, label %._crit_edge479.thread, label %.lr.ph478

._crit_edge479.thread:                            ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit163
  %.pre605699 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit81.i

._crit_edge479:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit166.thread
  %i.afq = icmp ugt i32 %i.afe, %.2.i.i78.i
  %.pre605 = load ptr, ptr %i.i, align 8          ; 18 uses
  br i1 %i.afq, label %bb.fw, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit81.i

.lr.ph478:                                        ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit163, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit166.thread
  %.055.i.i73.i477 = phi i32 [ %.2.i.i78.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit166.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit163 ] ; 4 uses
  %.057.i.i72.i476 = phi i32 [ %i.aic, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit166.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit163 ] ; 9 uses
  %i.afr = zext i32 %.057.i.i72.i476 to i64
  %i.afs = getelementptr inbounds nuw [2 x i8], ptr %.0.i160, i64 %i.afr
  %i.aft = load i16, ptr %i.afs, align 2          ; 11 uses
  %i.afu = and i16 %i.aft, -2
  %or.cond.i164 = icmp eq i16 %i.afu, 32
  br i1 %or.cond.i164, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit166.thread, label %bb.fl

bb.fl:                                            ; preds = %.lr.ph478
  %i.afv = icmp ugt i16 %i.aft, 34
  %i.afw = icmp ne i16 %i.aft, 92
  %or.cond5.i165 = and i1 %i.afv, %i.afw
  %i.afx = add i16 %i.aft, 8192
  %i.afy = icmp ult i16 %i.afx, -2048
  %or.cond423 = and i1 %or.cond5.i165, %i.afy
  br i1 %or.cond423, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit166.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit166.thread398, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit166.thread398: ; preds = %bb.fl
  %7 = icmp slt i16 %i.aft, -8192
  %i.afz = zext i32 %.055.i.i73.i477 to i64
  %i.aga = getelementptr inbounds nuw [2 x i8], ptr %.0.i160, i64 %i.afz
  %i.agb = sub i32 %.057.i.i72.i476, %.055.i.i73.i477
  %i.agc = zext i32 %i.agb to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.j, ptr noundef %i.aga, i64 noundef %i.agc)
  br i1 %7, label %bb.fm, label %bb.fu

bb.fm:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit166.thread398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.agd = icmp samesign ult i16 %i.aft, -9216
  br i1 %i.agd, label %bb.fn, label %bb.fs

bb.fn:                                            ; preds = %bb.fm
  %i.age = add nuw i32 %.057.i.i72.i476, 1        ; 3 uses
  %i.agf = icmp ugt i32 %i.afe, %i.age
  br i1 %i.agf, label %bb.fo, label %bb.fr

bb.fo:                                            ; preds = %bb.fn
  %i.agg = zext i32 %i.age to i64
  %i.agh = getelementptr inbounds nuw [2 x i8], ptr %.0.i160, i64 %i.agg
  %i.agi = load i16, ptr %i.agh, align 2          ; 2 uses
  %i.agj = and i16 %i.agi, -1024
  %i.agk = icmp eq i16 %i.agj, -9216
  %i.agl = load ptr, ptr %i.i, align 8            ; 4 uses
  br i1 %i.agk, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 2
  store ptr %i.agm, ptr %i.i, align 8
  store i16 %i.aft, ptr %i.agl, align 2
  %i.agn = load ptr, ptr %i.i, align 8            ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 2
  store ptr %i.ago, ptr %i.i, align 8
  store i16 %i.agi, ptr %i.agn, align 2
  br label %bb.ft

bb.fq:                                            ; preds = %bb.fo
  store i16 92, ptr %i.agl, align 2
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agl, i64 2
  store i16 117, ptr %i.agp, align 2
  %i.agq = load ptr, ptr %i.i, align 8
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 4
  store ptr %i.agr, ptr %i.i, align 8
  %i.ags = uitofp i16 %i.aft to double
  %i.agt = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ags, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.agu = extractvalue { i64, ptr } %i.agt, 0    ; 2 uses
  %i.agv = extractvalue { i64, ptr } %i.agt, 1
  %i.agw = load ptr, ptr %i.i, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.agw, ptr noundef %i.agv, i64 noundef %i.agu)
  %i.agx = load ptr, ptr %i.i, align 8
  %i.agy = getelementptr inbounds nuw [2 x i8], ptr %i.agx, i64 %i.agu
  store ptr %i.agy, ptr %i.i, align 8
  br label %bb.ft

bb.fr:                                            ; preds = %bb.fn
  %i.agz = load ptr, ptr %i.i, align 8            ; 2 uses
  store i16 92, ptr %i.agz, align 2
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 2
  store i16 117, ptr %i.aha, align 2
  %i.ahb = load ptr, ptr %i.i, align 8
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 4
  store ptr %i.ahc, ptr %i.i, align 8
  %i.ahd = uitofp i16 %i.aft to double
  %i.ahe = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ahd, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.ahf = extractvalue { i64, ptr } %i.ahe, 0    ; 2 uses
  %i.ahg = extractvalue { i64, ptr } %i.ahe, 1
  %i.ahh = load ptr, ptr %i.i, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ahh, ptr noundef %i.ahg, i64 noundef %i.ahf)
  %i.ahi = load ptr, ptr %i.i, align 8
  %i.ahj = getelementptr inbounds nuw [2 x i8], ptr %i.ahi, i64 %i.ahf
  store ptr %i.ahj, ptr %i.i, align 8
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fm
  %i.ahk = load ptr, ptr %i.i, align 8            ; 2 uses
  store i16 92, ptr %i.ahk, align 2
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 2
  store i16 117, ptr %i.ahl, align 2
  %i.ahm = load ptr, ptr %i.i, align 8
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 4
  store ptr %i.ahn, ptr %i.i, align 8
  %i.aho = uitofp i16 %i.aft to double
  %i.ahp = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.aho, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.ahq = extractvalue { i64, ptr } %i.ahp, 0    ; 2 uses
  %i.ahr = extractvalue { i64, ptr } %i.ahp, 1
  %i.ahs = load ptr, ptr %i.i, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ahs, ptr noundef %i.ahr, i64 noundef %i.ahq)
  %i.aht = load ptr, ptr %i.i, align 8
  %i.ahu = getelementptr inbounds nuw [2 x i8], ptr %i.aht, i64 %i.ahq
  store ptr %i.ahu, ptr %i.i, align 8
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr, %bb.fq, %bb.fp
  %.259.i.i80.i = phi i32 [ %.057.i.i72.i476, %bb.fs ], [ %.057.i.i72.i476, %bb.fr ], [ %i.age, %bb.fp ], [ %.057.i.i72.i476, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.fv

bb.fu:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit166.thread398
  %i.ahv = zext i16 %i.aft to i64
  %i.ahw = shl nuw nsw i64 %i.ahv, 3
  %i.ahx = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.ahw ; 2 uses
  %i.ahy = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ahx) #26 ; 2 uses
  %i.ahz = load ptr, ptr %i.i, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ahz, ptr noundef nonnull %i.ahx, i64 noundef %i.ahy)
  %i.aia = load ptr, ptr %i.i, align 8
  %i.aib = getelementptr inbounds nuw [2 x i8], ptr %i.aia, i64 %i.ahy
  store ptr %i.aib, ptr %i.i, align 8
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.3.i.i75.i = phi i32 [ %.259.i.i80.i, %bb.ft ], [ %.057.i.i72.i476, %bb.fu ] ; 2 uses
  %.156.i.i76.i = add nuw i32 %.3.i.i75.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit166.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit166.thread: ; preds = %bb.fl, %.lr.ph478, %bb.fv
  %.4.i.i77.i = phi i32 [ %.3.i.i75.i, %bb.fv ], [ %.057.i.i72.i476, %bb.fl ], [ %.057.i.i72.i476, %.lr.ph478 ]
  %.2.i.i78.i = phi i32 [ %.156.i.i76.i, %bb.fv ], [ %.055.i.i73.i477, %bb.fl ], [ %.055.i.i73.i477, %.lr.ph478 ] ; 3 uses
  %i.aic = add nuw i32 %.4.i.i77.i, 1             ; 2 uses
  %i.aid = icmp ugt i32 %i.afe, %i.aic
  br i1 %i.aid, label %.lr.ph478, label %._crit_edge479, !llvm.loop !350

bb.fw:                                            ; preds = %._crit_edge479
  %i.aie = zext i32 %.2.i.i78.i to i64            ; 2 uses
  %i.aif = getelementptr inbounds nuw [2 x i8], ptr %.0.i160, i64 %i.aie ; 17 uses
  %i.aig = sub nuw nsw i64 %i.aff, %i.aie         ; 3 uses
  %trunc427 = trunc nuw i64 %i.aig to i32
  switch i32 %trunc427, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i169 [
    i32 1, label %bb.fx
    i32 2, label %bb.fy
    i32 3, label %bb.fz
    i32 4, label %bb.ga
    i32 5, label %bb.gb
    i32 6, label %bb.gc
    i32 7, label %bb.gd
    i32 8, label %bb.ge
    i32 9, label %bb.gf
    i32 10, label %bb.gg
    i32 11, label %bb.gh
    i32 12, label %bb.gi
    i32 13, label %bb.gj
    i32 14, label %bb.gk
    i32 15, label %bb.gl
    i32 16, label %bb.gm
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit171
  ]

bb.fx:                                            ; preds = %bb.fw
  %i.aih = load i16, ptr %i.aif, align 2
  store i16 %i.aih, ptr %.pre605, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit171

bb.fy:                                            ; preds = %bb.fw
  %i.aii = load i32, ptr %i.aif, align 2
  store i32 %i.aii, ptr %.pre605, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit171

bb.fz:                                            ; preds = %bb.fw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre605, ptr noundef nonnull align 2 dereferenceable(6) %i.aif, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit171

bb.ga:                                            ; preds = %bb.fw
  %i.aij = load i64, ptr %i.aif, align 2
  store i64 %i.aij, ptr %.pre605, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit171

bb.gb:                                            ; preds = %bb.fw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre605, ptr noundef nonnull align 2 dereferenceable(10) %i.aif, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit171

bb.gc:                                            ; preds = %bb.fw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre605, ptr noundef nonnull align 2 dereferenceable(12) %i.aif, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit171

bb.gd:                                            ; preds = %bb.fw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre605, ptr noundef nonnull align 2 dereferenceable(14) %i.aif, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit171

bb.ge:                                            ; preds = %bb.fw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre605, ptr noundef nonnull align 2 dereferenceable(16) %i.aif, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit171

bb.gf:                                            ; preds = %bb.fw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre605, ptr noundef nonnull align 2 dereferenceable(18) %i.aif, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit171

bb.gg:                                            ; preds = %bb.fw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre605, ptr noundef nonnull align 2 dereferenceable(20) %i.aif, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit171

bb.gh:                                            ; preds = %bb.fw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre605, ptr noundef nonnull align 2 dereferenceable(22) %i.aif, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit171

bb.gi:                                            ; preds = %bb.fw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre605, ptr noundef nonnull align 2 dereferenceable(24) %i.aif, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit171

bb.gj:                                            ; preds = %bb.fw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre605, ptr noundef nonnull align 2 dereferenceable(26) %i.aif, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit171

bb.gk:                                            ; preds = %bb.fw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre605, ptr noundef nonnull align 2 dereferenceable(28) %i.aif, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit171

bb.gl:                                            ; preds = %bb.fw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre605, ptr noundef nonnull align 2 dereferenceable(30) %i.aif, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit171

bb.gm:                                            ; preds = %bb.fw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre605, ptr noundef nonnull align 2 dereferenceable(32) %i.aif, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit171

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i169: ; preds = %bb.fw
  %.idx.i.i.i.i170 = shl nuw nsw i64 %i.aig, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre605, ptr nonnull align 2 %i.aif, i64 %.idx.i.i.i.i170, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit171

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit171: ; preds = %bb.fw, %bb.fx, %bb.fy, %bb.fz, %bb.ga, %bb.gb, %bb.gc, %bb.gd, %bb.ge, %bb.gf, %bb.gg, %bb.gh, %bb.gi, %bb.gj, %bb.gk, %bb.gl, %bb.gm, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i169
  %i.aik = load ptr, ptr %i.i, align 8
  %i.ail = getelementptr inbounds nuw [2 x i8], ptr %i.aik, i64 %i.aig
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit81.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit81.i: ; preds = %._crit_edge479.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit171, %._crit_edge479
  %i.aim = phi ptr [ %i.ail, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit171 ], [ %.pre605, %._crit_edge479 ], [ %.pre605699, %._crit_edge479.thread ] ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 2
  store ptr %i.ain, ptr %i.i, align 8
  store i16 34, ptr %i.aim, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.gn:                                            ; preds = %bb.ff
  %i.aio = getelementptr inbounds nuw i8, ptr %i.aee, i64 12
  %i.aip = load i32, ptr %i.aio, align 4          ; 5 uses
  %i.aiq = zext i32 %i.aip to i64                 ; 2 uses
  %i.air = shl nuw nsw i64 %i.aiq, 3
  %i.ais = or disjoint i64 %i.air, 2              ; 2 uses
  %i.ait = load ptr, ptr %i.h, align 8
  %i.aiu = load ptr, ptr %i.i, align 8            ; 2 uses
  %i.aiv = ptrtoint ptr %i.ait to i64
  %i.aiw = ptrtoint ptr %i.aiu to i64
  %i.aix = sub i64 %i.aiv, %i.aiw
  %i.aiy = ashr exact i64 %i.aix, 1
  %.not.i172 = icmp ugt i64 %i.ais, %i.aiy
  br i1 %.not.i172, label %bb.go, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit173, !prof !6

bb.go:                                            ; preds = %bb.gn
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.j, i64 noundef %i.ais)
  %.pre602 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit173

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit173: ; preds = %bb.gn, %bb.go
  %i.aiz = phi ptr [ %i.aiu, %bb.gn ], [ %.pre602, %bb.go ] ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 2
  store ptr %i.aja, ptr %i.i, align 8
  store i16 34, ptr %i.aiz, align 2
  %.not562 = icmp eq i32 %i.aip, 0
  br i1 %.not562, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit173
  %.pre603701 = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit62.i

._crit_edge:                                      ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit176.thread
  %i.ajb = icmp ugt i32 %i.aip, %.2.i.i59.i
  %.pre603 = load ptr, ptr %i.i, align 8          ; 18 uses
  br i1 %i.ajb, label %bb.ha, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit62.i

.lr.ph:                                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit173, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit176.thread
  %.055.i.i54.i475 = phi i32 [ %.2.i.i59.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit176.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit173 ] ; 4 uses
  %.057.i.i53.i474 = phi i32 [ %i.aln, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit176.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit173 ] ; 9 uses
  %i.ajc = zext i32 %.057.i.i53.i474 to i64
  %i.ajd = getelementptr inbounds nuw [2 x i8], ptr %i.ael, i64 %i.ajc
  %i.aje = load i16, ptr %i.ajd, align 2          ; 11 uses
  %i.ajf = and i16 %i.aje, -2
  %or.cond.i174 = icmp eq i16 %i.ajf, 32
  br i1 %or.cond.i174, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit176.thread, label %bb.gp

bb.gp:                                            ; preds = %.lr.ph
  %i.ajg = icmp ugt i16 %i.aje, 34
  %i.ajh = icmp ne i16 %i.aje, 92
  %or.cond5.i175 = and i1 %i.ajg, %i.ajh
  %i.aji = add i16 %i.aje, 8192
  %i.ajj = icmp ult i16 %i.aji, -2048
  %or.cond425 = and i1 %or.cond5.i175, %i.ajj
  br i1 %or.cond425, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit176.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit176.thread399, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit176.thread399: ; preds = %bb.gp
  %8 = icmp slt i16 %i.aje, -8192
  %i.ajk = zext i32 %.055.i.i54.i475 to i64
  %i.ajl = getelementptr inbounds nuw [2 x i8], ptr %i.ael, i64 %i.ajk
  %i.ajm = sub i32 %.057.i.i53.i474, %.055.i.i54.i475
  %i.ajn = zext i32 %i.ajm to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.j, ptr noundef nonnull %i.ajl, i64 noundef %i.ajn)
  br i1 %8, label %bb.gq, label %bb.gy

bb.gq:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit176.thread399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.ajo = icmp samesign ult i16 %i.aje, -9216
  br i1 %i.ajo, label %bb.gr, label %bb.gw

bb.gr:                                            ; preds = %bb.gq
  %i.ajp = add nuw i32 %.057.i.i53.i474, 1        ; 3 uses
  %i.ajq = icmp ugt i32 %i.aip, %i.ajp
  br i1 %i.ajq, label %bb.gs, label %bb.gv

bb.gs:                                            ; preds = %bb.gr
  %i.ajr = zext i32 %i.ajp to i64
  %i.ajs = getelementptr inbounds nuw [2 x i8], ptr %i.ael, i64 %i.ajr
  %i.ajt = load i16, ptr %i.ajs, align 2          ; 2 uses
  %i.aju = and i16 %i.ajt, -1024
  %i.ajv = icmp eq i16 %i.aju, -9216
  %i.ajw = load ptr, ptr %i.i, align 8            ; 4 uses
  br i1 %i.ajv, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 2
  store ptr %i.ajx, ptr %i.i, align 8
  store i16 %i.aje, ptr %i.ajw, align 2
  %i.ajy = load ptr, ptr %i.i, align 8            ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 2
  store ptr %i.ajz, ptr %i.i, align 8
  store i16 %i.ajt, ptr %i.ajy, align 2
  br label %bb.gx

bb.gu:                                            ; preds = %bb.gs
  store i16 92, ptr %i.ajw, align 2
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajw, i64 2
  store i16 117, ptr %i.aka, align 2
  %i.akb = load ptr, ptr %i.i, align 8
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 4
  store ptr %i.akc, ptr %i.i, align 8
  %i.akd = uitofp i16 %i.aje to double
  %i.ake = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.akd, i32 noundef 16, ptr nonnull %i.c, i64 2200) #21 ; 2 uses
  %i.akf = extractvalue { i64, ptr } %i.ake, 0    ; 2 uses
  %i.akg = extractvalue { i64, ptr } %i.ake, 1
  %i.akh = load ptr, ptr %i.i, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.akh, ptr noundef %i.akg, i64 noundef %i.akf)
  %i.aki = load ptr, ptr %i.i, align 8
  %i.akj = getelementptr inbounds nuw [2 x i8], ptr %i.aki, i64 %i.akf
  store ptr %i.akj, ptr %i.i, align 8
  br label %bb.gx

bb.gv:                                            ; preds = %bb.gr
  %i.akk = load ptr, ptr %i.i, align 8            ; 2 uses
  store i16 92, ptr %i.akk, align 2
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 2
  store i16 117, ptr %i.akl, align 2
  %i.akm = load ptr, ptr %i.i, align 8
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 4
  store ptr %i.akn, ptr %i.i, align 8
  %i.ako = uitofp i16 %i.aje to double
  %i.akp = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ako, i32 noundef 16, ptr nonnull %i.c, i64 2200) #21 ; 2 uses
  %i.akq = extractvalue { i64, ptr } %i.akp, 0    ; 2 uses
  %i.akr = extractvalue { i64, ptr } %i.akp, 1
  %i.aks = load ptr, ptr %i.i, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.aks, ptr noundef %i.akr, i64 noundef %i.akq)
  %i.akt = load ptr, ptr %i.i, align 8
  %i.aku = getelementptr inbounds nuw [2 x i8], ptr %i.akt, i64 %i.akq
  store ptr %i.aku, ptr %i.i, align 8
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gq
  %i.akv = load ptr, ptr %i.i, align 8            ; 2 uses
  store i16 92, ptr %i.akv, align 2
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 2
  store i16 117, ptr %i.akw, align 2
  %i.akx = load ptr, ptr %i.i, align 8
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 4
  store ptr %i.aky, ptr %i.i, align 8
  %i.akz = uitofp i16 %i.aje to double
  %i.ala = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.akz, i32 noundef 16, ptr nonnull %i.c, i64 2200) #21 ; 2 uses
  %i.alb = extractvalue { i64, ptr } %i.ala, 0    ; 2 uses
  %i.alc = extractvalue { i64, ptr } %i.ala, 1
  %i.ald = load ptr, ptr %i.i, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ald, ptr noundef %i.alc, i64 noundef %i.alb)
  %i.ale = load ptr, ptr %i.i, align 8
  %i.alf = getelementptr inbounds nuw [2 x i8], ptr %i.ale, i64 %i.alb
  store ptr %i.alf, ptr %i.i, align 8
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv, %bb.gu, %bb.gt
  %.259.i.i61.i = phi i32 [ %.057.i.i53.i474, %bb.gw ], [ %.057.i.i53.i474, %bb.gv ], [ %i.ajp, %bb.gt ], [ %.057.i.i53.i474, %bb.gu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.gz

bb.gy:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit176.thread399
  %i.alg = zext i16 %i.aje to i64
  %i.alh = shl nuw nsw i64 %i.alg, 3
  %i.ali = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.alh ; 2 uses
  %i.alj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ali) #26 ; 2 uses
  %i.alk = load ptr, ptr %i.i, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.alk, ptr noundef nonnull %i.ali, i64 noundef %i.alj)
  %i.all = load ptr, ptr %i.i, align 8
  %i.alm = getelementptr inbounds nuw [2 x i8], ptr %i.all, i64 %i.alj
  store ptr %i.alm, ptr %i.i, align 8
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %.3.i.i56.i = phi i32 [ %.259.i.i61.i, %bb.gx ], [ %.057.i.i53.i474, %bb.gy ] ; 2 uses
  %.156.i.i57.i = add nuw i32 %.3.i.i56.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit176.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit176.thread: ; preds = %bb.gp, %.lr.ph, %bb.gz
  %.4.i.i58.i = phi i32 [ %.3.i.i56.i, %bb.gz ], [ %.057.i.i53.i474, %bb.gp ], [ %.057.i.i53.i474, %.lr.ph ]
  %.2.i.i59.i = phi i32 [ %.156.i.i57.i, %bb.gz ], [ %.055.i.i54.i475, %bb.gp ], [ %.055.i.i54.i475, %.lr.ph ] ; 3 uses
  %i.aln = add nuw i32 %.4.i.i58.i, 1             ; 2 uses
  %i.alo = icmp ugt i32 %i.aip, %i.aln
  br i1 %i.alo, label %.lr.ph, label %._crit_edge, !llvm.loop !350

bb.ha:                                            ; preds = %._crit_edge
  %i.alp = zext i32 %.2.i.i59.i to i64            ; 2 uses
  %i.alq = getelementptr inbounds nuw [2 x i8], ptr %i.ael, i64 %i.alp ; 17 uses
  %i.alr = sub nuw nsw i64 %i.aiq, %i.alp         ; 3 uses
  %trunc = trunc nuw i64 %i.alr to i32
  switch i32 %trunc, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i179 [
    i32 1, label %bb.hb
    i32 2, label %bb.hc
    i32 3, label %bb.hd
    i32 4, label %bb.he
    i32 5, label %bb.hf
    i32 6, label %bb.hg
    i32 7, label %bb.hh
    i32 8, label %bb.hi
    i32 9, label %bb.hj
    i32 10, label %bb.hk
    i32 11, label %bb.hl
    i32 12, label %bb.hm
    i32 13, label %bb.hn
    i32 14, label %bb.ho
    i32 15, label %bb.hp
    i32 16, label %bb.hq
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit181
  ]

bb.hb:                                            ; preds = %bb.ha
  %i.als = load i16, ptr %i.alq, align 2
  store i16 %i.als, ptr %.pre603, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit181

bb.hc:                                            ; preds = %bb.ha
  %i.alt = load i32, ptr %i.alq, align 2
  store i32 %i.alt, ptr %.pre603, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit181

bb.hd:                                            ; preds = %bb.ha
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre603, ptr noundef nonnull align 2 dereferenceable(6) %i.alq, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit181

bb.he:                                            ; preds = %bb.ha
  %i.alu = load i64, ptr %i.alq, align 2
  store i64 %i.alu, ptr %.pre603, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit181

bb.hf:                                            ; preds = %bb.ha
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre603, ptr noundef nonnull align 2 dereferenceable(10) %i.alq, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit181

bb.hg:                                            ; preds = %bb.ha
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre603, ptr noundef nonnull align 2 dereferenceable(12) %i.alq, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit181

bb.hh:                                            ; preds = %bb.ha
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre603, ptr noundef nonnull align 2 dereferenceable(14) %i.alq, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit181

bb.hi:                                            ; preds = %bb.ha
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre603, ptr noundef nonnull align 2 dereferenceable(16) %i.alq, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit181

bb.hj:                                            ; preds = %bb.ha
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre603, ptr noundef nonnull align 2 dereferenceable(18) %i.alq, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit181

bb.hk:                                            ; preds = %bb.ha
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre603, ptr noundef nonnull align 2 dereferenceable(20) %i.alq, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit181

bb.hl:                                            ; preds = %bb.ha
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre603, ptr noundef nonnull align 2 dereferenceable(22) %i.alq, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit181

bb.hm:                                            ; preds = %bb.ha
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre603, ptr noundef nonnull align 2 dereferenceable(24) %i.alq, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit181

bb.hn:                                            ; preds = %bb.ha
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre603, ptr noundef nonnull align 2 dereferenceable(26) %i.alq, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit181

bb.ho:                                            ; preds = %bb.ha
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre603, ptr noundef nonnull align 2 dereferenceable(28) %i.alq, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit181

bb.hp:                                            ; preds = %bb.ha
end_hunk_17
begin_hunk_18_@_ZN2v88internal19FastJsonStringifierItE37SerializeFixedArrayWithInterruptCheckILNS0_12ElementsKindE3EEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_14FixedArrayBaseEEEjj:bb.a
  br i1 %i.ui, label %.lr.ph502, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i26.i, !llvm.loop !347

_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i26.i: ; preds = %bb.bm, %.lr.ph502, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i
  %.013.i.i25.i.lcssa = phi i64 [ %i.tr, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSIMDIhQeqstTL0__Lm1EEEbPKT_mRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i24.i ], [ %.013.i.i25.i501, %.lr.ph502 ], [ %i.ug, %bb.bm ] ; 2 uses
  %i.uj = icmp ult i64 %.013.i.i25.i.lcssa, %i.ru
  br i1 %i.uj, label %.lr.ph.i116, label %._crit_edge.i113

._crit_edge.i113:                                 ; preds = %bb.bo, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i26.i
  %.0.lcssa.i115 = phi i64 [ %.155.i.i28.i, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i26.i ], [ %.1.i122, %bb.bo ] ; 2 uses
  %i.uk = icmp ult i64 %.0.lcssa.i115, %i.ru
  %.pre609 = load ptr, ptr %i.l, align 8          ; 2 uses
  br i1 %i.uk, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i.sink.split, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i, !prof !11

.lr.ph.i116:                                      ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i26.i, %bb.bo
  %.026.i117 = phi i64 [ %.1.i122, %bb.bo ], [ %.155.i.i28.i, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i26.i ] ; 3 uses
  %.02025.i118 = phi i64 [ %.pre-phi.i120, %bb.bo ], [ %.013.i.i25.i.lcssa, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit.i26.i ] ; 4 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.mc, i64 %.02025.i118
  %i.um = load i8, ptr %i.ul, align 1
  %i.un = zext i8 %i.um to i64                    ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.un
  %i.up = load i8, ptr %i.uo, align 1, !range !7, !noundef !8
  %i.uq = trunc nuw i8 %i.up to i1
  br i1 %i.uq, label %._crit_edge28.i124, label %bb.bn, !prof !11

._crit_edge28.i124:                               ; preds = %.lr.ph.i116
  %.pre.i125 = add i64 %.02025.i118, 1
  br label %bb.bo

bb.bn:                                            ; preds = %.lr.ph.i116
  %i.ur = getelementptr inbounds nuw i8, ptr %i.mc, i64 %.026.i117
  %i.us = sub i64 %.02025.i118, %.026.i117        ; 2 uses
  %i.ut = load ptr, ptr %i.l, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ut, ptr noundef %i.ur, i64 noundef %i.us)
  %i.uu = load ptr, ptr %i.l, align 8
  %i.uv = getelementptr inbounds nuw [2 x i8], ptr %i.uu, i64 %i.us ; 2 uses
  store ptr %i.uv, ptr %i.l, align 8
  %i.uw = shl nuw nsw i64 %i.un, 3
  %i.ux = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.uw ; 2 uses
  %i.uy = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ux) #26 ; 2 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.uv, ptr noundef nonnull %i.ux, i64 noundef %i.uy)
  %i.uz = load ptr, ptr %i.l, align 8
  %i.va = getelementptr inbounds nuw [2 x i8], ptr %i.uz, i64 %i.uy
  store ptr %i.va, ptr %i.l, align 8
  %i.vb = add i64 %.02025.i118, 1                 ; 2 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %._crit_edge28.i124
  %.pre-phi.i120 = phi i64 [ %.pre.i125, %._crit_edge28.i124 ], [ %i.vb, %bb.bn ] ; 2 uses
  %.1.i122 = phi i64 [ %.026.i117, %._crit_edge28.i124 ], [ %i.vb, %bb.bn ] ; 2 uses
  %exitcond.not.i123 = icmp eq i64 %.pre-phi.i120, %i.ru
  br i1 %exitcond.not.i123, label %._crit_edge.i113, label %.lr.ph.i116, !llvm.loop !348

.lr.ph491:                                        ; preds = %.lr.ph491.preheader, %bb.bp
  %.013.i8.i18.i490 = phi i64 [ %i.vo, %bb.bp ], [ 0, %.lr.ph491.preheader ] ; 3 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.mc, i64 %.013.i8.i18.i490
  %i.vd = load i32, ptr %i.vc, align 4            ; 4 uses
  %i.ve = add i32 %i.vd, -538976288
  %i.vf = xor i32 %i.vd, 572662306
  %i.vg = add i32 %i.vf, -16843009
  %i.vh = xor i32 %i.vd, 1549556828
  %i.vi = add i32 %i.vh, -16843009
  %i.vj = and i32 %i.vd, -2139062144
  %i.vk = xor i32 %i.vj, -2139062144
  %i.vl = or i32 %i.vg, %i.ve
  %i.vm = or i32 %i.vl, %i.vi
  %i.vn = and i32 %i.vm, %i.vk
  %.not428 = icmp eq i32 %i.vn, 0
  br i1 %.not428, label %bb.bp, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i19.i

bb.bp:                                            ; preds = %.lr.ph491
  %i.vo = add nuw nsw i64 %.013.i8.i18.i490, 4    ; 2 uses
  %i.vp = or disjoint i64 %i.vo, 3
  %i.vq = icmp samesign ult i64 %i.vp, %i.ru
  br i1 %i.vq, label %.lr.ph491, label %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i19.i, !llvm.loop !347

_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i19.i: ; preds = %bb.bp, %.lr.ph491, %.preheader439
  %.013.i8.i18.i.lcssa = phi i64 [ 0, %.preheader439 ], [ %.013.i8.i18.i490, %.lr.ph491 ], [ %i.sh, %bb.bp ] ; 2 uses
  %i.vr = icmp samesign ult i64 %.013.i8.i18.i.lcssa, %i.ru
  br i1 %i.vr, label %.lr.ph.i130, label %._crit_edge.i127

._crit_edge.i127:                                 ; preds = %bb.br, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i19.i
  %.0.lcssa.i129 = phi i64 [ 0, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i19.i ], [ %.1.i136, %bb.br ] ; 2 uses
  %i.vs = icmp ult i64 %.0.lcssa.i129, %i.ru
  %.pre610 = load ptr, ptr %i.l, align 8          ; 2 uses
  br i1 %i.vs, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i.sink.split, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i, !prof !11

.lr.ph.i130:                                      ; preds = %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i19.i, %bb.br
  %.026.i131 = phi i64 [ %.1.i136, %bb.br ], [ 0, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i19.i ] ; 3 uses
  %.02025.i132 = phi i64 [ %.pre-phi.i134, %bb.br ], [ %.013.i8.i18.i.lcssa, %_ZN2v88internal19FastJsonStringifierItE16AppendStringSWARIhQeqstTL0__Lm1EEEbPKT_mmmRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS9_2EEEE.exit9.i19.i ] ; 4 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.mc, i64 %.02025.i132
  %i.vu = load i8, ptr %i.vt, align 1
  %i.vv = zext i8 %i.vu to i64                    ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.vv
  %i.vx = load i8, ptr %i.vw, align 1, !range !7, !noundef !8
  %i.vy = trunc nuw i8 %i.vx to i1
  br i1 %i.vy, label %._crit_edge28.i138, label %bb.bq, !prof !11

._crit_edge28.i138:                               ; preds = %.lr.ph.i130
  %.pre.i139 = add i64 %.02025.i132, 1
  br label %bb.br

bb.bq:                                            ; preds = %.lr.ph.i130
  %i.vz = getelementptr inbounds nuw i8, ptr %i.mc, i64 %.026.i131
  %i.wa = sub i64 %.02025.i132, %.026.i131        ; 2 uses
  %i.wb = load ptr, ptr %i.l, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.wb, ptr noundef %i.vz, i64 noundef %i.wa)
  %i.wc = load ptr, ptr %i.l, align 8
  %i.wd = getelementptr inbounds nuw [2 x i8], ptr %i.wc, i64 %i.wa ; 2 uses
  store ptr %i.wd, ptr %i.l, align 8
  %i.we = shl nuw nsw i64 %i.vv, 3
  %i.wf = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.we ; 2 uses
  %i.wg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.wf) #26 ; 2 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.wd, ptr noundef nonnull %i.wf, i64 noundef %i.wg)
  %i.wh = load ptr, ptr %i.l, align 8
  %i.wi = getelementptr inbounds nuw [2 x i8], ptr %i.wh, i64 %i.wg
  store ptr %i.wi, ptr %i.l, align 8
  %i.wj = add i64 %.02025.i132, 1                 ; 2 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %._crit_edge28.i138
  %.pre-phi.i134 = phi i64 [ %.pre.i139, %._crit_edge28.i138 ], [ %i.wj, %bb.bq ] ; 2 uses
  %.1.i136 = phi i64 [ %.026.i131, %._crit_edge28.i138 ], [ %i.wj, %bb.bq ] ; 2 uses
  %exitcond.not.i137 = icmp eq i64 %.pre-phi.i134, %i.ru
  br i1 %exitcond.not.i137, label %._crit_edge.i127, label %.lr.ph.i130, !llvm.loop !348

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i.sink.split: ; preds = %._crit_edge.i127, %._crit_edge.i113
  %.0.lcssa.i115.sink743 = phi i64 [ %.0.lcssa.i115, %._crit_edge.i113 ], [ %.0.lcssa.i129, %._crit_edge.i127 ] ; 2 uses
  %.pre609.sink = phi ptr [ %.pre609, %._crit_edge.i113 ], [ %.pre610, %._crit_edge.i127 ]
  %i.wk = getelementptr inbounds nuw i8, ptr %i.mc, i64 %.0.lcssa.i115.sink743
  %i.wl = sub nuw nsw i64 %i.ru, %.0.lcssa.i115.sink743 ; 2 uses
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %.pre609.sink, ptr noundef %i.wk, i64 noundef %i.wl)
  %i.wm = load ptr, ptr %i.l, align 8
  %i.wn = getelementptr inbounds nuw [2 x i8], ptr %i.wm, i64 %i.wl
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i: ; preds = %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i.sink.split, %._crit_edge.i113, %._crit_edge.i127
  %i.wo = phi ptr [ %.pre610, %._crit_edge.i127 ], [ %.pre609, %._crit_edge.i113 ], [ %i.wn, %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqOneByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit30.i.sink.split ] ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 2
  store ptr %i.wp, ptr %i.l, align 8
  store i16 34, ptr %i.wo, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.bs:                                            ; preds = %bb.k, %bb.k
  %i.wq = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 4 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.ws = load i32, ptr %i.wr, align 4            ; 5 uses
  %i.wt = zext i32 %i.ws to i64                   ; 2 uses
  %i.wu = shl nuw nsw i64 %i.wt, 3
  %i.wv = or disjoint i64 %i.wu, 2                ; 2 uses
  %i.ww = load ptr, ptr %i.k, align 8
  %i.wx = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.wy = ptrtoint ptr %i.ww to i64
  %i.wz = ptrtoint ptr %i.wx to i64
  %i.xa = sub i64 %i.wy, %i.wz
  %i.xb = ashr exact i64 %i.xa, 1
  %.not.i141 = icmp ugt i64 %i.wv, %i.xb
  br i1 %.not.i141, label %bb.bt, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit142, !prof !6

bb.bt:                                            ; preds = %bb.bs
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.m, i64 noundef %i.wv)
  %.pre606 = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit142

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit142: ; preds = %bb.bs, %bb.bt
  %i.xc = phi ptr [ %i.wx, %bb.bs ], [ %.pre606, %bb.bt ] ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 2
  store ptr %i.xd, ptr %i.l, align 8
  store i16 34, ptr %i.xc, align 2
  %.not564 = icmp eq i32 %i.ws, 0
  br i1 %.not564, label %._crit_edge488.thread, label %.lr.ph487

._crit_edge488.thread:                            ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit142
  %.pre607696 = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

._crit_edge488:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread
  %i.xe = icmp ugt i32 %i.ws, %.2.i.i.i
  %.pre607 = load ptr, ptr %i.l, align 8          ; 18 uses
  br i1 %i.xe, label %bb.cf, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

.lr.ph487:                                        ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit142, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread
  %.055.i.i.i486 = phi i32 [ %.2.i.i.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit142 ] ; 4 uses
  %.057.i.i.i485 = phi i32 [ %i.zq, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit142 ] ; 9 uses
  %i.xf = zext i32 %.057.i.i.i485 to i64
  %i.xg = getelementptr inbounds nuw [2 x i8], ptr %i.wq, i64 %i.xf
  %i.xh = load i16, ptr %i.xg, align 2            ; 11 uses
  %i.xi = and i16 %i.xh, -2
  %or.cond.i = icmp eq i16 %i.xi, 32
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph487
  %i.xj = icmp ugt i16 %i.xh, 34
  %i.xk = icmp ne i16 %i.xh, 92
  %or.cond5.i = and i1 %i.xj, %i.xk
  %i.xl = add i16 %i.xh, 8192
  %i.xm = icmp ult i16 %i.xl, -2048
  %or.cond = and i1 %or.cond5.i, %i.xm
  br i1 %or.cond, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread394, !prof !349

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread394: ; preds = %bb.bu
  %5 = icmp slt i16 %i.xh, -8192
  %i.xn = zext i32 %.055.i.i.i486 to i64
  %i.xo = getelementptr inbounds nuw [2 x i8], ptr %i.wq, i64 %i.xn
  %i.xp = sub i32 %.057.i.i.i485, %.055.i.i.i486
  %i.xq = zext i32 %i.xp to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.m, ptr noundef nonnull %i.xo, i64 noundef %i.xq)
  br i1 %5, label %bb.bv, label %bb.cd

bb.bv:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.xr = icmp samesign ult i16 %i.xh, -9216
  br i1 %i.xr, label %bb.bw, label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  %i.xs = add nuw i32 %.057.i.i.i485, 1           ; 3 uses
  %i.xt = icmp ugt i32 %i.ws, %i.xs
  br i1 %i.xt, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.xu = zext i32 %i.xs to i64
  %i.xv = getelementptr inbounds nuw [2 x i8], ptr %i.wq, i64 %i.xu
  %i.xw = load i16, ptr %i.xv, align 2            ; 2 uses
  %i.xx = and i16 %i.xw, -1024
  %i.xy = icmp eq i16 %i.xx, -9216
  %i.xz = load ptr, ptr %i.l, align 8             ; 4 uses
  br i1 %i.xy, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 2
  store ptr %i.ya, ptr %i.l, align 8
  store i16 %i.xh, ptr %i.xz, align 2
  %i.yb = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 2
  store ptr %i.yc, ptr %i.l, align 8
  store i16 %i.xw, ptr %i.yb, align 2
  br label %bb.cc

bb.bz:                                            ; preds = %bb.bx
  store i16 92, ptr %i.xz, align 2
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xz, i64 2
  store i16 117, ptr %i.yd, align 2
  %i.ye = load ptr, ptr %i.l, align 8
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 4
  store ptr %i.yf, ptr %i.l, align 8
  %i.yg = uitofp i16 %i.xh to double
  %i.yh = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.yg, i32 noundef 16, ptr nonnull %i.d, i64 2200) #21 ; 2 uses
  %i.yi = extractvalue { i64, ptr } %i.yh, 0      ; 2 uses
  %i.yj = extractvalue { i64, ptr } %i.yh, 1
  %i.yk = load ptr, ptr %i.l, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.yk, ptr noundef %i.yj, i64 noundef %i.yi)
  %i.yl = load ptr, ptr %i.l, align 8
  %i.ym = getelementptr inbounds nuw [2 x i8], ptr %i.yl, i64 %i.yi
  store ptr %i.ym, ptr %i.l, align 8
  br label %bb.cc

bb.ca:                                            ; preds = %bb.bw
  %i.yn = load ptr, ptr %i.l, align 8             ; 2 uses
  store i16 92, ptr %i.yn, align 2
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 2
  store i16 117, ptr %i.yo, align 2
  %i.yp = load ptr, ptr %i.l, align 8
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 4
  store ptr %i.yq, ptr %i.l, align 8
  %i.yr = uitofp i16 %i.xh to double
  %i.ys = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.yr, i32 noundef 16, ptr nonnull %i.d, i64 2200) #21 ; 2 uses
  %i.yt = extractvalue { i64, ptr } %i.ys, 0      ; 2 uses
  %i.yu = extractvalue { i64, ptr } %i.ys, 1
  %i.yv = load ptr, ptr %i.l, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.yv, ptr noundef %i.yu, i64 noundef %i.yt)
  %i.yw = load ptr, ptr %i.l, align 8
  %i.yx = getelementptr inbounds nuw [2 x i8], ptr %i.yw, i64 %i.yt
  store ptr %i.yx, ptr %i.l, align 8
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bv
  %i.yy = load ptr, ptr %i.l, align 8             ; 2 uses
  store i16 92, ptr %i.yy, align 2
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 2
  store i16 117, ptr %i.yz, align 2
  %i.za = load ptr, ptr %i.l, align 8
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 4
  store ptr %i.zb, ptr %i.l, align 8
  %i.zc = uitofp i16 %i.xh to double
  %i.zd = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.zc, i32 noundef 16, ptr nonnull %i.d, i64 2200) #21 ; 2 uses
  %i.ze = extractvalue { i64, ptr } %i.zd, 0      ; 2 uses
  %i.zf = extractvalue { i64, ptr } %i.zd, 1
  %i.zg = load ptr, ptr %i.l, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.zg, ptr noundef %i.zf, i64 noundef %i.ze)
  %i.zh = load ptr, ptr %i.l, align 8
  %i.zi = getelementptr inbounds nuw [2 x i8], ptr %i.zh, i64 %i.ze
  store ptr %i.zi, ptr %i.l, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.by
  %.259.i.i.i = phi i32 [ %.057.i.i.i485, %bb.cb ], [ %.057.i.i.i485, %bb.ca ], [ %i.xs, %bb.by ], [ %.057.i.i.i485, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.ce

bb.cd:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread394
  %i.zj = zext i16 %i.xh to i64
  %i.zk = shl nuw nsw i64 %i.zj, 3
  %i.zl = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.zk ; 2 uses
  %i.zm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.zl) #26 ; 2 uses
  %i.zn = load ptr, ptr %i.l, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.zn, ptr noundef nonnull %i.zl, i64 noundef %i.zm)
  %i.zo = load ptr, ptr %i.l, align 8
  %i.zp = getelementptr inbounds nuw [2 x i8], ptr %i.zo, i64 %i.zm
  store ptr %i.zp, ptr %i.l, align 8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.3.i.i.i = phi i32 [ %.259.i.i.i, %bb.cc ], [ %.057.i.i.i485, %bb.cd ] ; 2 uses
  %.156.i.i.i = add nuw i32 %.3.i.i.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread: ; preds = %bb.bu, %.lr.ph487, %bb.ce
  %.4.i.i.i = phi i32 [ %.3.i.i.i, %bb.ce ], [ %.057.i.i.i485, %bb.bu ], [ %.057.i.i.i485, %.lr.ph487 ]
  %.2.i.i.i = phi i32 [ %.156.i.i.i, %bb.ce ], [ %.055.i.i.i486, %bb.bu ], [ %.055.i.i.i486, %.lr.ph487 ] ; 3 uses
  %i.zq = add nuw i32 %.4.i.i.i, 1                ; 2 uses
  %i.zr = icmp ugt i32 %i.ws, %i.zq
  br i1 %i.zr, label %.lr.ph487, label %._crit_edge488, !llvm.loop !350

bb.cf:                                            ; preds = %._crit_edge488
  %i.zs = zext i32 %.2.i.i.i to i64               ; 2 uses
  %i.zt = getelementptr inbounds nuw [2 x i8], ptr %i.wq, i64 %i.zs ; 17 uses
  %i.zu = sub nuw nsw i64 %i.wt, %i.zs            ; 3 uses
  %trunc427 = trunc nuw i64 %i.zu to i32
  switch i32 %trunc427, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i [
    i32 1, label %bb.cg
    i32 2, label %bb.ch
    i32 3, label %bb.ci
    i32 4, label %bb.cj
    i32 5, label %bb.ck
    i32 6, label %bb.cl
    i32 7, label %bb.cm
    i32 8, label %bb.cn
    i32 9, label %bb.co
    i32 10, label %bb.cp
    i32 11, label %bb.cq
    i32 12, label %bb.cr
    i32 13, label %bb.cs
    i32 14, label %bb.ct
    i32 15, label %bb.cu
    i32 16, label %bb.cv
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.zv = load i16, ptr %i.zt, align 2
  store i16 %i.zv, ptr %.pre607, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ch:                                            ; preds = %bb.cf
  %i.zw = load i32, ptr %i.zt, align 2
  store i32 %i.zw, ptr %.pre607, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ci:                                            ; preds = %bb.cf
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre607, ptr noundef nonnull align 2 dereferenceable(6) %i.zt, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cj:                                            ; preds = %bb.cf
  %i.zx = load i64, ptr %i.zt, align 2
  store i64 %i.zx, ptr %.pre607, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ck:                                            ; preds = %bb.cf
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre607, ptr noundef nonnull align 2 dereferenceable(10) %i.zt, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cl:                                            ; preds = %bb.cf
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre607, ptr noundef nonnull align 2 dereferenceable(12) %i.zt, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cm:                                            ; preds = %bb.cf
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre607, ptr noundef nonnull align 2 dereferenceable(14) %i.zt, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cn:                                            ; preds = %bb.cf
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre607, ptr noundef nonnull align 2 dereferenceable(16) %i.zt, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.co:                                            ; preds = %bb.cf
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre607, ptr noundef nonnull align 2 dereferenceable(18) %i.zt, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cp:                                            ; preds = %bb.cf
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre607, ptr noundef nonnull align 2 dereferenceable(20) %i.zt, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cq:                                            ; preds = %bb.cf
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre607, ptr noundef nonnull align 2 dereferenceable(22) %i.zt, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cr:                                            ; preds = %bb.cf
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre607, ptr noundef nonnull align 2 dereferenceable(24) %i.zt, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cs:                                            ; preds = %bb.cf
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre607, ptr noundef nonnull align 2 dereferenceable(26) %i.zt, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.ct:                                            ; preds = %bb.cf
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre607, ptr noundef nonnull align 2 dereferenceable(28) %i.zt, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cu:                                            ; preds = %bb.cf
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre607, ptr noundef nonnull align 2 dereferenceable(30) %i.zt, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

bb.cv:                                            ; preds = %bb.cf
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre607, ptr noundef nonnull align 2 dereferenceable(32) %i.zt, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.cf
  %.idx.i.i.i.i = shl nuw nsw i64 %i.zu, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre607, ptr nonnull align 2 %i.zt, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit: ; preds = %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i
  %i.zy = load ptr, ptr %i.l, align 8
  %i.zz = getelementptr inbounds nuw [2 x i8], ptr %i.zy, i64 %i.zu
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i: ; preds = %._crit_edge488.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit, %._crit_edge488
  %i.aaa = phi ptr [ %i.zz, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit ], [ %.pre607, %._crit_edge488 ], [ %.pre607696, %._crit_edge488.thread ] ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 2
  store ptr %i.aab, ptr %i.l, align 8
  store i16 34, ptr %i.aaa, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.cw:                                            ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  %i.aac = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.aad = load i64, ptr %i.aac, align 8
  %i.aae = inttoptr i64 %i.aad to ptr             ; 6 uses
  %i.aaf = load atomic volatile i64, ptr %i.ay monotonic, align 8
  %i.aag = add i64 %i.aaf, 11
  %i.aah = inttoptr i64 %i.aag to ptr
  %i.aai = load atomic volatile i16, ptr %i.aah monotonic, align 2
  %i.aaj = and i16 %i.aai, 16
  %.not.i143 = icmp eq i16 %i.aaj, 0
  br i1 %.not.i143, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.aak = load ptr, ptr %i.aae, align 8
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  %i.aam = load ptr, ptr %i.aal, align 8
  %i.aan = call noundef zeroext i1 %i.aam(ptr noundef nonnull align 8 dereferenceable(8) %i.aae) #21, !inline_history !80
  br i1 %i.aan, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aae) #21
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  %i.aap = load ptr, ptr %i.aao, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.cz:                                            ; preds = %bb.cx, %bb.cw
  %i.aaq = load ptr, ptr %i.aae, align 8
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 72
  %i.aas = load ptr, ptr %i.aar, align 8
  %i.aat = call noundef ptr %i.aas(ptr noundef nonnull align 8 dereferenceable(16) %i.aae) #21, !inline_history !80
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.cy, %bb.cz
  %.0.i144 = phi ptr [ %i.aap, %bb.cy ], [ %i.aat, %bb.cz ] ; 4 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.aav = load i32, ptr %i.aau, align 4          ; 5 uses
  %i.aaw = zext i32 %i.aav to i64                 ; 2 uses
  %i.aax = shl nuw nsw i64 %i.aaw, 3
  %i.aay = or disjoint i64 %i.aax, 2              ; 2 uses
  %i.aaz = load ptr, ptr %i.k, align 8
  %i.aba = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.abb = ptrtoint ptr %i.aaz to i64
  %i.abc = ptrtoint ptr %i.aba to i64
  %i.abd = sub i64 %i.abb, %i.abc
  %i.abe = ashr exact i64 %i.abd, 1
  %.not.i145 = icmp ugt i64 %i.aay, %i.abe
  br i1 %.not.i145, label %bb.da, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit146, !prof !6

bb.da:                                            ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.m, i64 noundef %i.aay)
  %.pre604 = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit146

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit146: ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.da
  %i.abf = phi ptr [ %i.aba, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ], [ %.pre604, %bb.da ] ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 2
  store ptr %i.abg, ptr %i.l, align 8
  store i16 34, ptr %i.abf, align 2
  %.not563 = icmp eq i32 %i.aav, 0
  br i1 %.not563, label %._crit_edge483.thread, label %.lr.ph482

._crit_edge483.thread:                            ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit146
  %.pre605698 = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

._crit_edge483:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit149.thread
  %i.abh = icmp ugt i32 %i.aav, %.2.i.i71.i
  %.pre605 = load ptr, ptr %i.l, align 8          ; 18 uses
  br i1 %i.abh, label %bb.dm, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

.lr.ph482:                                        ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit146, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit149.thread
  %.055.i.i66.i481 = phi i32 [ %.2.i.i71.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit149.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit146 ] ; 4 uses
  %.057.i.i65.i480 = phi i32 [ %i.adt, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit149.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit146 ] ; 9 uses
  %i.abi = zext i32 %.057.i.i65.i480 to i64
  %i.abj = getelementptr inbounds nuw [2 x i8], ptr %.0.i144, i64 %i.abi
  %i.abk = load i16, ptr %i.abj, align 2          ; 11 uses
  %i.abl = and i16 %i.abk, -2
  %or.cond.i147 = icmp eq i16 %i.abl, 32
  br i1 %or.cond.i147, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit149.thread, label %bb.db

bb.db:                                            ; preds = %.lr.ph482
  %i.abm = icmp ugt i16 %i.abk, 34
  %i.abn = icmp ne i16 %i.abk, 92
  %or.cond5.i148 = and i1 %i.abm, %i.abn
  %i.abo = add i16 %i.abk, 8192
  %i.abp = icmp ult i16 %i.abo, -2048
  %or.cond419 = and i1 %or.cond5.i148, %i.abp
  br i1 %or.cond419, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit149.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit149.thread395, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit149.thread395: ; preds = %bb.db
  %6 = icmp slt i16 %i.abk, -8192
  %i.abq = zext i32 %.055.i.i66.i481 to i64
  %i.abr = getelementptr inbounds nuw [2 x i8], ptr %.0.i144, i64 %i.abq
  %i.abs = sub i32 %.057.i.i65.i480, %.055.i.i66.i481
  %i.abt = zext i32 %i.abs to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.m, ptr noundef %i.abr, i64 noundef %i.abt)
  br i1 %6, label %bb.dc, label %bb.dk

bb.dc:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit149.thread395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.abu = icmp samesign ult i16 %i.abk, -9216
  br i1 %i.abu, label %bb.dd, label %bb.di

bb.dd:                                            ; preds = %bb.dc
  %i.abv = add nuw i32 %.057.i.i65.i480, 1        ; 3 uses
  %i.abw = icmp ugt i32 %i.aav, %i.abv
  br i1 %i.abw, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %bb.dd
  %i.abx = zext i32 %i.abv to i64
  %i.aby = getelementptr inbounds nuw [2 x i8], ptr %.0.i144, i64 %i.abx
  %i.abz = load i16, ptr %i.aby, align 2          ; 2 uses
  %i.aca = and i16 %i.abz, -1024
  %i.acb = icmp eq i16 %i.aca, -9216
  %i.acc = load ptr, ptr %i.l, align 8            ; 4 uses
  br i1 %i.acb, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 2
  store ptr %i.acd, ptr %i.l, align 8
  store i16 %i.abk, ptr %i.acc, align 2
  %i.ace = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 2
  store ptr %i.acf, ptr %i.l, align 8
  store i16 %i.abz, ptr %i.ace, align 2
  br label %bb.dj

bb.dg:                                            ; preds = %bb.de
  store i16 92, ptr %i.acc, align 2
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acc, i64 2
  store i16 117, ptr %i.acg, align 2
  %i.ach = load ptr, ptr %i.l, align 8
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 4
  store ptr %i.aci, ptr %i.l, align 8
  %i.acj = uitofp i16 %i.abk to double
  %i.ack = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.acj, i32 noundef 16, ptr nonnull %i.b, i64 2200) #21 ; 2 uses
  %i.acl = extractvalue { i64, ptr } %i.ack, 0    ; 2 uses
  %i.acm = extractvalue { i64, ptr } %i.ack, 1
  %i.acn = load ptr, ptr %i.l, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.acn, ptr noundef %i.acm, i64 noundef %i.acl)
  %i.aco = load ptr, ptr %i.l, align 8
  %i.acp = getelementptr inbounds nuw [2 x i8], ptr %i.aco, i64 %i.acl
  store ptr %i.acp, ptr %i.l, align 8
  br label %bb.dj

bb.dh:                                            ; preds = %bb.dd
  %i.acq = load ptr, ptr %i.l, align 8            ; 2 uses
  store i16 92, ptr %i.acq, align 2
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 2
  store i16 117, ptr %i.acr, align 2
  %i.acs = load ptr, ptr %i.l, align 8
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 4
  store ptr %i.act, ptr %i.l, align 8
  %i.acu = uitofp i16 %i.abk to double
  %i.acv = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.acu, i32 noundef 16, ptr nonnull %i.b, i64 2200) #21 ; 2 uses
  %i.acw = extractvalue { i64, ptr } %i.acv, 0    ; 2 uses
  %i.acx = extractvalue { i64, ptr } %i.acv, 1
  %i.acy = load ptr, ptr %i.l, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.acy, ptr noundef %i.acx, i64 noundef %i.acw)
  %i.acz = load ptr, ptr %i.l, align 8
  %i.ada = getelementptr inbounds nuw [2 x i8], ptr %i.acz, i64 %i.acw
  store ptr %i.ada, ptr %i.l, align 8
  br label %bb.dj

bb.di:                                            ; preds = %bb.dc
  %i.adb = load ptr, ptr %i.l, align 8            ; 2 uses
  store i16 92, ptr %i.adb, align 2
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 2
  store i16 117, ptr %i.adc, align 2
  %i.add = load ptr, ptr %i.l, align 8
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 4
  store ptr %i.ade, ptr %i.l, align 8
  %i.adf = uitofp i16 %i.abk to double
  %i.adg = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.adf, i32 noundef 16, ptr nonnull %i.b, i64 2200) #21 ; 2 uses
  %i.adh = extractvalue { i64, ptr } %i.adg, 0    ; 2 uses
  %i.adi = extractvalue { i64, ptr } %i.adg, 1
  %i.adj = load ptr, ptr %i.l, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.adj, ptr noundef %i.adi, i64 noundef %i.adh)
  %i.adk = load ptr, ptr %i.l, align 8
  %i.adl = getelementptr inbounds nuw [2 x i8], ptr %i.adk, i64 %i.adh
  store ptr %i.adl, ptr %i.l, align 8
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg, %bb.df
  %.259.i.i73.i = phi i32 [ %.057.i.i65.i480, %bb.di ], [ %.057.i.i65.i480, %bb.dh ], [ %i.abv, %bb.df ], [ %.057.i.i65.i480, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.dl

bb.dk:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit149.thread395
  %i.adm = zext i16 %i.abk to i64
  %i.adn = shl nuw nsw i64 %i.adm, 3
  %i.ado = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.adn ; 2 uses
  %i.adp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ado) #26 ; 2 uses
  %i.adq = load ptr, ptr %i.l, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.adq, ptr noundef nonnull %i.ado, i64 noundef %i.adp)
  %i.adr = load ptr, ptr %i.l, align 8
  %i.ads = getelementptr inbounds nuw [2 x i8], ptr %i.adr, i64 %i.adp
  store ptr %i.ads, ptr %i.l, align 8
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.3.i.i68.i = phi i32 [ %.259.i.i73.i, %bb.dj ], [ %.057.i.i65.i480, %bb.dk ] ; 2 uses
  %.156.i.i69.i = add nuw i32 %.3.i.i68.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit149.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit149.thread: ; preds = %bb.db, %.lr.ph482, %bb.dl
  %.4.i.i70.i = phi i32 [ %.3.i.i68.i, %bb.dl ], [ %.057.i.i65.i480, %bb.db ], [ %.057.i.i65.i480, %.lr.ph482 ]
  %.2.i.i71.i = phi i32 [ %.156.i.i69.i, %bb.dl ], [ %.055.i.i66.i481, %bb.db ], [ %.055.i.i66.i481, %.lr.ph482 ] ; 3 uses
  %i.adt = add nuw i32 %.4.i.i70.i, 1             ; 2 uses
  %i.adu = icmp ugt i32 %i.aav, %i.adt
  br i1 %i.adu, label %.lr.ph482, label %._crit_edge483, !llvm.loop !350

bb.dm:                                            ; preds = %._crit_edge483
  %i.adv = zext i32 %.2.i.i71.i to i64            ; 2 uses
  %i.adw = getelementptr inbounds nuw [2 x i8], ptr %.0.i144, i64 %i.adv ; 17 uses
  %i.adx = sub nuw nsw i64 %i.aaw, %i.adv         ; 3 uses
  %trunc426 = trunc nuw i64 %i.adx to i32
  switch i32 %trunc426, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i152 [
    i32 1, label %bb.dn
    i32 2, label %bb.do
    i32 3, label %bb.dp
    i32 4, label %bb.dq
    i32 5, label %bb.dr
    i32 6, label %bb.ds
    i32 7, label %bb.dt
    i32 8, label %bb.du
    i32 9, label %bb.dv
    i32 10, label %bb.dw
    i32 11, label %bb.dx
    i32 12, label %bb.dy
    i32 13, label %bb.dz
    i32 14, label %bb.ea
    i32 15, label %bb.eb
    i32 16, label %bb.ec
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit154
  ]

bb.dn:                                            ; preds = %bb.dm
  %i.ady = load i16, ptr %i.adw, align 2
  store i16 %i.ady, ptr %.pre605, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit154

bb.do:                                            ; preds = %bb.dm
  %i.adz = load i32, ptr %i.adw, align 2
  store i32 %i.adz, ptr %.pre605, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit154

bb.dp:                                            ; preds = %bb.dm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre605, ptr noundef nonnull align 2 dereferenceable(6) %i.adw, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit154

bb.dq:                                            ; preds = %bb.dm
  %i.aea = load i64, ptr %i.adw, align 2
  store i64 %i.aea, ptr %.pre605, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit154

bb.dr:                                            ; preds = %bb.dm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre605, ptr noundef nonnull align 2 dereferenceable(10) %i.adw, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit154

bb.ds:                                            ; preds = %bb.dm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre605, ptr noundef nonnull align 2 dereferenceable(12) %i.adw, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit154

bb.dt:                                            ; preds = %bb.dm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre605, ptr noundef nonnull align 2 dereferenceable(14) %i.adw, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit154

bb.du:                                            ; preds = %bb.dm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre605, ptr noundef nonnull align 2 dereferenceable(16) %i.adw, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit154

bb.dv:                                            ; preds = %bb.dm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre605, ptr noundef nonnull align 2 dereferenceable(18) %i.adw, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit154

bb.dw:                                            ; preds = %bb.dm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre605, ptr noundef nonnull align 2 dereferenceable(20) %i.adw, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit154

bb.dx:                                            ; preds = %bb.dm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre605, ptr noundef nonnull align 2 dereferenceable(22) %i.adw, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit154

bb.dy:                                            ; preds = %bb.dm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre605, ptr noundef nonnull align 2 dereferenceable(24) %i.adw, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit154

bb.dz:                                            ; preds = %bb.dm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre605, ptr noundef nonnull align 2 dereferenceable(26) %i.adw, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit154

bb.ea:                                            ; preds = %bb.dm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre605, ptr noundef nonnull align 2 dereferenceable(28) %i.adw, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit154

bb.eb:                                            ; preds = %bb.dm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre605, ptr noundef nonnull align 2 dereferenceable(30) %i.adw, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit154

bb.ec:                                            ; preds = %bb.dm
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre605, ptr noundef nonnull align 2 dereferenceable(32) %i.adw, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit154

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i152: ; preds = %bb.dm
  %.idx.i.i.i.i153 = shl nuw nsw i64 %i.adx, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre605, ptr nonnull align 2 %i.adw, i64 %.idx.i.i.i.i153, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit154

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit154: ; preds = %bb.dm, %bb.dn, %bb.do, %bb.dp, %bb.dq, %bb.dr, %bb.ds, %bb.dt, %bb.du, %bb.dv, %bb.dw, %bb.dx, %bb.dy, %bb.dz, %bb.ea, %bb.eb, %bb.ec, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i152
  %i.aeb = load ptr, ptr %i.l, align 8
  %i.aec = getelementptr inbounds nuw [2 x i8], ptr %i.aeb, i64 %i.adx
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit.i: ; preds = %._crit_edge483.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit154, %._crit_edge483
  %i.aed = phi ptr [ %i.aec, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit154 ], [ %.pre605, %._crit_edge483 ], [ %.pre605698, %._crit_edge483.thread ] ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 2
  store ptr %i.aee, ptr %i.l, align 8
  store i16 34, ptr %i.aed, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.ed:                                            ; preds = %bb.k
  %i.aef = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.aeg = load i64, ptr %i.aef, align 8
  %i.aeh = add i64 %i.aeg, -1
  %i.aei = inttoptr i64 %i.aeh to ptr             ; 5 uses
  %i.aej = load atomic volatile i64, ptr %i.aei monotonic, align 8
  %i.aek = add i64 %i.aej, 11
  %i.ael = inttoptr i64 %i.aek to ptr
  %i.aem = load atomic volatile i16, ptr %i.ael monotonic, align 2
  %i.aen = and i16 %i.aem, -121
  %i.aeo = icmp eq i16 %i.aen, 2
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aei, i64 16 ; 5 uses
  br i1 %i.aeo, label %bb.ee, label %bb.fl

bb.ee:                                            ; preds = %bb.ed
  %i.aeq = load i64, ptr %i.aep, align 8
  %i.aer = inttoptr i64 %i.aeq to ptr             ; 6 uses
  %i.aes = load atomic volatile i64, ptr %i.aei monotonic, align 8
  %i.aet = add i64 %i.aes, 11
  %i.aeu = inttoptr i64 %i.aet to ptr
  %i.aev = load atomic volatile i16, ptr %i.aeu monotonic, align 2
  %i.aew = and i16 %i.aev, 16
  %.not.i156 = icmp eq i16 %i.aew, 0
  br i1 %.not.i156, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.aex = load ptr, ptr %i.aer, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 16
  %i.aez = load ptr, ptr %i.aey, align 8
  %i.afa = call noundef zeroext i1 %i.aez(ptr noundef nonnull align 8 dereferenceable(8) %i.aer) #21, !inline_history !80
  br i1 %i.afa, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aer) #21
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aer, i64 8
  %i.afc = load ptr, ptr %i.afb, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit158

bb.eh:                                            ; preds = %bb.ef, %bb.ee
  %i.afd = load ptr, ptr %i.aer, align 8
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 72
  %i.aff = load ptr, ptr %i.afe, align 8
  %i.afg = call noundef ptr %i.aff(ptr noundef nonnull align 8 dereferenceable(16) %i.aer) #21, !inline_history !80
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit158

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit158: ; preds = %bb.eg, %bb.eh
  %.0.i157 = phi ptr [ %i.afc, %bb.eg ], [ %i.afg, %bb.eh ] ; 4 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aei, i64 12
  %i.afi = load i32, ptr %i.afh, align 4          ; 5 uses
  %i.afj = zext i32 %i.afi to i64                 ; 2 uses
  %i.afk = shl nuw nsw i64 %i.afj, 3
  %i.afl = or disjoint i64 %i.afk, 2              ; 2 uses
  %i.afm = load ptr, ptr %i.k, align 8
  %i.afn = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.afo = ptrtoint ptr %i.afm to i64
  %i.afp = ptrtoint ptr %i.afn to i64
  %i.afq = sub i64 %i.afo, %i.afp
  %i.afr = ashr exact i64 %i.afq, 1
  %.not.i159 = icmp ugt i64 %i.afl, %i.afr
  br i1 %.not.i159, label %bb.ei, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit160, !prof !6

bb.ei:                                            ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit158
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.m, i64 noundef %i.afl)
  %.pre602 = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit160

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit160: ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit158, %bb.ei
  %i.afs = phi ptr [ %i.afn, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit158 ], [ %.pre602, %bb.ei ] ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 2
  store ptr %i.aft, ptr %i.l, align 8
  store i16 34, ptr %i.afs, align 2
  %.not562 = icmp eq i32 %i.afi, 0
  br i1 %.not562, label %._crit_edge478.thread, label %.lr.ph477

._crit_edge478.thread:                            ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit160
  %.pre603700 = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit83.i

._crit_edge478:                                   ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit163.thread
  %i.afu = icmp ugt i32 %i.afi, %.2.i.i80.i
  %.pre603 = load ptr, ptr %i.l, align 8          ; 18 uses
  br i1 %i.afu, label %bb.eu, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit83.i

.lr.ph477:                                        ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit160, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit163.thread
  %.055.i.i75.i476 = phi i32 [ %.2.i.i80.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit163.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit160 ] ; 4 uses
  %.057.i.i74.i475 = phi i32 [ %i.aig, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit163.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit160 ] ; 9 uses
  %i.afv = zext i32 %.057.i.i74.i475 to i64
  %i.afw = getelementptr inbounds nuw [2 x i8], ptr %.0.i157, i64 %i.afv
  %i.afx = load i16, ptr %i.afw, align 2          ; 11 uses
  %i.afy = and i16 %i.afx, -2
  %or.cond.i161 = icmp eq i16 %i.afy, 32
  br i1 %or.cond.i161, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit163.thread, label %bb.ej

bb.ej:                                            ; preds = %.lr.ph477
  %i.afz = icmp ugt i16 %i.afx, 34
  %i.aga = icmp ne i16 %i.afx, 92
  %or.cond5.i162 = and i1 %i.afz, %i.aga
  %i.agb = add i16 %i.afx, 8192
  %i.agc = icmp ult i16 %i.agb, -2048
  %or.cond421 = and i1 %or.cond5.i162, %i.agc
  br i1 %or.cond421, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit163.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit163.thread396, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit163.thread396: ; preds = %bb.ej
  %7 = icmp slt i16 %i.afx, -8192
  %i.agd = zext i32 %.055.i.i75.i476 to i64
  %i.age = getelementptr inbounds nuw [2 x i8], ptr %.0.i157, i64 %i.agd
  %i.agf = sub i32 %.057.i.i74.i475, %.055.i.i75.i476
  %i.agg = zext i32 %i.agf to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.m, ptr noundef %i.age, i64 noundef %i.agg)
  br i1 %7, label %bb.ek, label %bb.es

bb.ek:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit163.thread396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.agh = icmp samesign ult i16 %i.afx, -9216
  br i1 %i.agh, label %bb.el, label %bb.eq

bb.el:                                            ; preds = %bb.ek
  %i.agi = add nuw i32 %.057.i.i74.i475, 1        ; 3 uses
  %i.agj = icmp ugt i32 %i.afi, %i.agi
  br i1 %i.agj, label %bb.em, label %bb.ep

bb.em:                                            ; preds = %bb.el
  %i.agk = zext i32 %i.agi to i64
  %i.agl = getelementptr inbounds nuw [2 x i8], ptr %.0.i157, i64 %i.agk
  %i.agm = load i16, ptr %i.agl, align 2          ; 2 uses
  %i.agn = and i16 %i.agm, -1024
  %i.ago = icmp eq i16 %i.agn, -9216
  %i.agp = load ptr, ptr %i.l, align 8            ; 4 uses
  br i1 %i.ago, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 2
  store ptr %i.agq, ptr %i.l, align 8
  store i16 %i.afx, ptr %i.agp, align 2
  %i.agr = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 2
  store ptr %i.ags, ptr %i.l, align 8
  store i16 %i.agm, ptr %i.agr, align 2
  br label %bb.er

bb.eo:                                            ; preds = %bb.em
  store i16 92, ptr %i.agp, align 2
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agp, i64 2
  store i16 117, ptr %i.agt, align 2
  %i.agu = load ptr, ptr %i.l, align 8
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 4
  store ptr %i.agv, ptr %i.l, align 8
  %i.agw = uitofp i16 %i.afx to double
  %i.agx = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.agw, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.agy = extractvalue { i64, ptr } %i.agx, 0    ; 2 uses
  %i.agz = extractvalue { i64, ptr } %i.agx, 1
  %i.aha = load ptr, ptr %i.l, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.aha, ptr noundef %i.agz, i64 noundef %i.agy)
  %i.ahb = load ptr, ptr %i.l, align 8
  %i.ahc = getelementptr inbounds nuw [2 x i8], ptr %i.ahb, i64 %i.agy
  store ptr %i.ahc, ptr %i.l, align 8
  br label %bb.er

bb.ep:                                            ; preds = %bb.el
  %i.ahd = load ptr, ptr %i.l, align 8            ; 2 uses
  store i16 92, ptr %i.ahd, align 2
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 2
  store i16 117, ptr %i.ahe, align 2
  %i.ahf = load ptr, ptr %i.l, align 8
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 4
  store ptr %i.ahg, ptr %i.l, align 8
  %i.ahh = uitofp i16 %i.afx to double
  %i.ahi = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ahh, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.ahj = extractvalue { i64, ptr } %i.ahi, 0    ; 2 uses
  %i.ahk = extractvalue { i64, ptr } %i.ahi, 1
  %i.ahl = load ptr, ptr %i.l, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ahl, ptr noundef %i.ahk, i64 noundef %i.ahj)
  %i.ahm = load ptr, ptr %i.l, align 8
  %i.ahn = getelementptr inbounds nuw [2 x i8], ptr %i.ahm, i64 %i.ahj
  store ptr %i.ahn, ptr %i.l, align 8
  br label %bb.er

bb.eq:                                            ; preds = %bb.ek
  %i.aho = load ptr, ptr %i.l, align 8            ; 2 uses
  store i16 92, ptr %i.aho, align 2
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 2
  store i16 117, ptr %i.ahp, align 2
  %i.ahq = load ptr, ptr %i.l, align 8
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 4
  store ptr %i.ahr, ptr %i.l, align 8
  %i.ahs = uitofp i16 %i.afx to double
  %i.aht = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ahs, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.ahu = extractvalue { i64, ptr } %i.aht, 0    ; 2 uses
  %i.ahv = extractvalue { i64, ptr } %i.aht, 1
  %i.ahw = load ptr, ptr %i.l, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ahw, ptr noundef %i.ahv, i64 noundef %i.ahu)
  %i.ahx = load ptr, ptr %i.l, align 8
  %i.ahy = getelementptr inbounds nuw [2 x i8], ptr %i.ahx, i64 %i.ahu
  store ptr %i.ahy, ptr %i.l, align 8
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep, %bb.eo, %bb.en
  %.259.i.i82.i = phi i32 [ %.057.i.i74.i475, %bb.eq ], [ %.057.i.i74.i475, %bb.ep ], [ %i.agi, %bb.en ], [ %.057.i.i74.i475, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.et

bb.es:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit163.thread396
  %i.ahz = zext i16 %i.afx to i64
  %i.aia = shl nuw nsw i64 %i.ahz, 3
  %i.aib = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.aia ; 2 uses
  %i.aic = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aib) #26 ; 2 uses
  %i.aid = load ptr, ptr %i.l, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.aid, ptr noundef nonnull %i.aib, i64 noundef %i.aic)
  %i.aie = load ptr, ptr %i.l, align 8
  %i.aif = getelementptr inbounds nuw [2 x i8], ptr %i.aie, i64 %i.aic
  store ptr %i.aif, ptr %i.l, align 8
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.3.i.i77.i = phi i32 [ %.259.i.i82.i, %bb.er ], [ %.057.i.i74.i475, %bb.es ] ; 2 uses
  %.156.i.i78.i = add nuw i32 %.3.i.i77.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit163.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit163.thread: ; preds = %bb.ej, %.lr.ph477, %bb.et
  %.4.i.i79.i = phi i32 [ %.3.i.i77.i, %bb.et ], [ %.057.i.i74.i475, %bb.ej ], [ %.057.i.i74.i475, %.lr.ph477 ]
  %.2.i.i80.i = phi i32 [ %.156.i.i78.i, %bb.et ], [ %.055.i.i75.i476, %bb.ej ], [ %.055.i.i75.i476, %.lr.ph477 ] ; 3 uses
  %i.aig = add nuw i32 %.4.i.i79.i, 1             ; 2 uses
  %i.aih = icmp ugt i32 %i.afi, %i.aig
  br i1 %i.aih, label %.lr.ph477, label %._crit_edge478, !llvm.loop !350

bb.eu:                                            ; preds = %._crit_edge478
  %i.aii = zext i32 %.2.i.i80.i to i64            ; 2 uses
  %i.aij = getelementptr inbounds nuw [2 x i8], ptr %.0.i157, i64 %i.aii ; 17 uses
  %i.aik = sub nuw nsw i64 %i.afj, %i.aii         ; 3 uses
  %trunc425 = trunc nuw i64 %i.aik to i32
  switch i32 %trunc425, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i166 [
    i32 1, label %bb.ev
    i32 2, label %bb.ew
    i32 3, label %bb.ex
    i32 4, label %bb.ey
    i32 5, label %bb.ez
    i32 6, label %bb.fa
    i32 7, label %bb.fb
    i32 8, label %bb.fc
    i32 9, label %bb.fd
    i32 10, label %bb.fe
    i32 11, label %bb.ff
    i32 12, label %bb.fg
    i32 13, label %bb.fh
    i32 14, label %bb.fi
    i32 15, label %bb.fj
    i32 16, label %bb.fk
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit168
  ]

bb.ev:                                            ; preds = %bb.eu
  %i.ail = load i16, ptr %i.aij, align 2
  store i16 %i.ail, ptr %.pre603, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit168

bb.ew:                                            ; preds = %bb.eu
  %i.aim = load i32, ptr %i.aij, align 2
  store i32 %i.aim, ptr %.pre603, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit168

bb.ex:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre603, ptr noundef nonnull align 2 dereferenceable(6) %i.aij, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit168

bb.ey:                                            ; preds = %bb.eu
  %i.ain = load i64, ptr %i.aij, align 2
  store i64 %i.ain, ptr %.pre603, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit168

bb.ez:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre603, ptr noundef nonnull align 2 dereferenceable(10) %i.aij, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit168

bb.fa:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre603, ptr noundef nonnull align 2 dereferenceable(12) %i.aij, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit168

bb.fb:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre603, ptr noundef nonnull align 2 dereferenceable(14) %i.aij, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit168

bb.fc:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre603, ptr noundef nonnull align 2 dereferenceable(16) %i.aij, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit168

bb.fd:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre603, ptr noundef nonnull align 2 dereferenceable(18) %i.aij, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit168

bb.fe:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre603, ptr noundef nonnull align 2 dereferenceable(20) %i.aij, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit168

bb.ff:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre603, ptr noundef nonnull align 2 dereferenceable(22) %i.aij, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit168

bb.fg:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre603, ptr noundef nonnull align 2 dereferenceable(24) %i.aij, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit168

bb.fh:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre603, ptr noundef nonnull align 2 dereferenceable(26) %i.aij, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit168

bb.fi:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre603, ptr noundef nonnull align 2 dereferenceable(28) %i.aij, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit168

bb.fj:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.pre603, ptr noundef nonnull align 2 dereferenceable(30) %i.aij, i64 30, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit168

bb.fk:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.pre603, ptr noundef nonnull align 2 dereferenceable(32) %i.aij, i64 32, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit168

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i166: ; preds = %bb.eu
  %.idx.i.i.i.i167 = shl nuw nsw i64 %i.aik, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.pre603, ptr nonnull align 2 %i.aij, i64 %.idx.i.i.i.i167, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit168

_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit168: ; preds = %bb.eu, %bb.ev, %bb.ew, %bb.ex, %bb.ey, %bb.ez, %bb.fa, %bb.fb, %bb.fc, %bb.fd, %bb.fe, %bb.ff, %bb.fg, %bb.fh, %bb.fi, %bb.fj, %bb.fk, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i166
  %i.aio = load ptr, ptr %i.l, align 8
  %i.aip = getelementptr inbounds nuw [2 x i8], ptr %i.aio, i64 %i.aik
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit83.i

_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_21ExternalTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit83.i: ; preds = %._crit_edge478.thread, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit168, %._crit_edge478
  %i.aiq = phi ptr [ %i.aip, %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit168 ], [ %.pre603, %._crit_edge478 ], [ %.pre603700, %._crit_edge478.thread ] ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 2
  store ptr %i.air, ptr %i.l, align 8
  store i16 34, ptr %i.aiq, align 2
  br label %_ZN2v88internal19FastJsonStringifierItE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE.exit.i.thread

bb.fl:                                            ; preds = %bb.ed
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aei, i64 12
  %i.ait = load i32, ptr %i.ais, align 4          ; 5 uses
  %i.aiu = zext i32 %i.ait to i64                 ; 2 uses
  %i.aiv = shl nuw nsw i64 %i.aiu, 3
  %i.aiw = or disjoint i64 %i.aiv, 2              ; 2 uses
  %i.aix = load ptr, ptr %i.k, align 8
  %i.aiy = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.aiz = ptrtoint ptr %i.aix to i64
  %i.aja = ptrtoint ptr %i.aiy to i64
  %i.ajb = sub i64 %i.aiz, %i.aja
  %i.ajc = ashr exact i64 %i.ajb, 1
  %.not.i169 = icmp ugt i64 %i.aiw, %i.ajc
  br i1 %.not.i169, label %bb.fm, label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit170, !prof !6

bb.fm:                                            ; preds = %bb.fl
  call preserve_mostcc void @_ZN2v88internal9OutBufferItE6ExtendEm(ptr noundef nonnull align 8 dereferenceable(640) %i.m, i64 noundef %i.aiw)
  %.pre600 = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit170

_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit170: ; preds = %bb.fl, %bb.fm
  %i.ajd = phi ptr [ %i.aiy, %bb.fl ], [ %.pre600, %bb.fm ] ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 2
  store ptr %i.aje, ptr %i.l, align 8
  store i16 34, ptr %i.ajd, align 2
  %.not561 = icmp eq i32 %i.ait, 0
  br i1 %.not561, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit170
  %.pre601702 = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit64.i

._crit_edge:                                      ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread
  %i.ajf = icmp ugt i32 %i.ait, %.2.i.i61.i
  %.pre601 = load ptr, ptr %i.l, align 8          ; 18 uses
  br i1 %i.ajf, label %bb.fy, label %_ZN2v88internal19FastJsonStringifierItE15SerializeStringINS0_16SeqTwoByteStringEEENS0_25FastJsonStringifierResultENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSA_2EEEE.exit64.i

.lr.ph:                                           ; preds = %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit170, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread
  %.055.i.i56.i474 = phi i32 [ %.2.i.i61.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit170 ] ; 4 uses
  %.057.i.i55.i473 = phi i32 [ %i.alr, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread ], [ 0, %_ZN2v88internal9OutBufferItE14EnsureCapacityEm.exit170 ] ; 9 uses
  %i.ajg = zext i32 %.057.i.i55.i473 to i64
  %i.ajh = getelementptr inbounds nuw [2 x i8], ptr %i.aep, i64 %i.ajg
  %i.aji = load i16, ptr %i.ajh, align 2          ; 11 uses
  %i.ajj = and i16 %i.aji, -2
  %or.cond.i171 = icmp eq i16 %i.ajj, 32
  br i1 %or.cond.i171, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread, label %bb.fn

bb.fn:                                            ; preds = %.lr.ph
  %i.ajk = icmp ugt i16 %i.aji, 34
  %i.ajl = icmp ne i16 %i.aji, 92
  %or.cond5.i172 = and i1 %i.ajk, %i.ajl
  %i.ajm = add i16 %i.aji, 8192
  %i.ajn = icmp ult i16 %i.ajm, -2048
  %or.cond423 = and i1 %or.cond5.i172, %i.ajn
  br i1 %or.cond423, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread397, !prof !351

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread397: ; preds = %bb.fn
  %8 = icmp slt i16 %i.aji, -8192
  %i.ajo = zext i32 %.055.i.i56.i474 to i64
  %i.ajp = getelementptr inbounds nuw [2 x i8], ptr %i.aep, i64 %i.ajo
  %i.ajq = sub i32 %.057.i.i55.i473, %.055.i.i56.i474
  %i.ajr = zext i32 %i.ajq to i64
  call void @_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m(ptr noundef nonnull align 8 dereferenceable(640) %i.m, ptr noundef nonnull %i.ajp, i64 noundef %i.ajr)
  br i1 %8, label %bb.fo, label %bb.fw

bb.fo:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.ajs = icmp samesign ult i16 %i.aji, -9216
  br i1 %i.ajs, label %bb.fp, label %bb.fu

bb.fp:                                            ; preds = %bb.fo
  %i.ajt = add nuw i32 %.057.i.i55.i473, 1        ; 3 uses
  %i.aju = icmp ugt i32 %i.ait, %i.ajt
  br i1 %i.aju, label %bb.fq, label %bb.ft

bb.fq:                                            ; preds = %bb.fp
  %i.ajv = zext i32 %i.ajt to i64
  %i.ajw = getelementptr inbounds nuw [2 x i8], ptr %i.aep, i64 %i.ajv
  %i.ajx = load i16, ptr %i.ajw, align 2          ; 2 uses
  %i.ajy = and i16 %i.ajx, -1024
  %i.ajz = icmp eq i16 %i.ajy, -9216
  %i.aka = load ptr, ptr %i.l, align 8            ; 4 uses
  br i1 %i.ajz, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 2
  store ptr %i.akb, ptr %i.l, align 8
  store i16 %i.aji, ptr %i.aka, align 2
  %i.akc = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 2
  store ptr %i.akd, ptr %i.l, align 8
  store i16 %i.ajx, ptr %i.akc, align 2
  br label %bb.fv

bb.fs:                                            ; preds = %bb.fq
  store i16 92, ptr %i.aka, align 2
  %i.ake = getelementptr inbounds nuw i8, ptr %i.aka, i64 2
  store i16 117, ptr %i.ake, align 2
  %i.akf = load ptr, ptr %i.l, align 8
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 4
  store ptr %i.akg, ptr %i.l, align 8
  %i.akh = uitofp i16 %i.aji to double
  %i.aki = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.akh, i32 noundef 16, ptr nonnull %i.c, i64 2200) #21 ; 2 uses
  %i.akj = extractvalue { i64, ptr } %i.aki, 0    ; 2 uses
  %i.akk = extractvalue { i64, ptr } %i.aki, 1
  %i.akl = load ptr, ptr %i.l, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.akl, ptr noundef %i.akk, i64 noundef %i.akj)
  %i.akm = load ptr, ptr %i.l, align 8
  %i.akn = getelementptr inbounds nuw [2 x i8], ptr %i.akm, i64 %i.akj
  store ptr %i.akn, ptr %i.l, align 8
  br label %bb.fv

bb.ft:                                            ; preds = %bb.fp
  %i.ako = load ptr, ptr %i.l, align 8            ; 2 uses
  store i16 92, ptr %i.ako, align 2
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 2
  store i16 117, ptr %i.akp, align 2
  %i.akq = load ptr, ptr %i.l, align 8
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 4
  store ptr %i.akr, ptr %i.l, align 8
  %i.aks = uitofp i16 %i.aji to double
  %i.akt = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.aks, i32 noundef 16, ptr nonnull %i.c, i64 2200) #21 ; 2 uses
  %i.aku = extractvalue { i64, ptr } %i.akt, 0    ; 2 uses
  %i.akv = extractvalue { i64, ptr } %i.akt, 1
  %i.akw = load ptr, ptr %i.l, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.akw, ptr noundef %i.akv, i64 noundef %i.aku)
  %i.akx = load ptr, ptr %i.l, align 8
  %i.aky = getelementptr inbounds nuw [2 x i8], ptr %i.akx, i64 %i.aku
  store ptr %i.aky, ptr %i.l, align 8
  br label %bb.fv

bb.fu:                                            ; preds = %bb.fo
  %i.akz = load ptr, ptr %i.l, align 8            ; 2 uses
  store i16 92, ptr %i.akz, align 2
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 2
  store i16 117, ptr %i.ala, align 2
  %i.alb = load ptr, ptr %i.l, align 8
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 4
  store ptr %i.alc, ptr %i.l, align 8
  %i.ald = uitofp i16 %i.aji to double
  %i.ale = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.ald, i32 noundef 16, ptr nonnull %i.c, i64 2200) #21 ; 2 uses
  %i.alf = extractvalue { i64, ptr } %i.ale, 0    ; 2 uses
  %i.alg = extractvalue { i64, ptr } %i.ale, 1
  %i.alh = load ptr, ptr %i.l, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.alh, ptr noundef %i.alg, i64 noundef %i.alf)
  %i.ali = load ptr, ptr %i.l, align 8
  %i.alj = getelementptr inbounds nuw [2 x i8], ptr %i.ali, i64 %i.alf
  store ptr %i.alj, ptr %i.l, align 8
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft, %bb.fs, %bb.fr
  %.259.i.i63.i = phi i32 [ %.057.i.i55.i473, %bb.fu ], [ %.057.i.i55.i473, %bb.ft ], [ %i.ajt, %bb.fr ], [ %.057.i.i55.i473, %bb.fs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.fx

bb.fw:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread397
  %i.alk = zext i16 %i.aji to i64
  %i.all = shl nuw nsw i64 %i.alk, 3
  %i.alm = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.all ; 2 uses
  %i.aln = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.alm) #26 ; 2 uses
  %i.alo = load ptr, ptr %i.l, align 8
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.alo, ptr noundef nonnull %i.alm, i64 noundef %i.aln)
  %i.alp = load ptr, ptr %i.l, align 8
  %i.alq = getelementptr inbounds nuw [2 x i8], ptr %i.alp, i64 %i.aln
  store ptr %i.alq, ptr %i.l, align 8
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.3.i.i58.i = phi i32 [ %.259.i.i63.i, %bb.fv ], [ %.057.i.i55.i473, %bb.fw ] ; 2 uses
  %.156.i.i59.i = add nuw i32 %.3.i.i58.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit173.thread: ; preds = %bb.fn, %.lr.ph, %bb.fx
  %.4.i.i60.i = phi i32 [ %.3.i.i58.i, %bb.fx ], [ %.057.i.i55.i473, %bb.fn ], [ %.057.i.i55.i473, %.lr.ph ]
  %.2.i.i61.i = phi i32 [ %.156.i.i59.i, %bb.fx ], [ %.055.i.i56.i474, %bb.fn ], [ %.055.i.i56.i474, %.lr.ph ] ; 3 uses
  %i.alr = add nuw i32 %.4.i.i60.i, 1             ; 2 uses
  %i.als = icmp ugt i32 %i.ait, %i.alr
  br i1 %i.als, label %.lr.ph, label %._crit_edge, !llvm.loop !350

bb.fy:                                            ; preds = %._crit_edge
  %i.alt = zext i32 %.2.i.i61.i to i64            ; 2 uses
  %i.alu = getelementptr inbounds nuw [2 x i8], ptr %i.aep, i64 %i.alt ; 17 uses
  %i.alv = sub nuw nsw i64 %i.aiu, %i.alt         ; 3 uses
  %trunc = trunc nuw i64 %i.alv to i32
  switch i32 %trunc, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i.i176 [
    i32 1, label %bb.fz
    i32 2, label %bb.ga
    i32 3, label %bb.gb
    i32 4, label %bb.gc
    i32 5, label %bb.gd
    i32 6, label %bb.ge
    i32 7, label %bb.gf
    i32 8, label %bb.gg
    i32 9, label %bb.gh
    i32 10, label %bb.gi
    i32 11, label %bb.gj
    i32 12, label %bb.gk
    i32 13, label %bb.gl
    i32 14, label %bb.gm
    i32 15, label %bb.gn
    i32 16, label %bb.go
    i32 0, label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit178
  ]

bb.fz:                                            ; preds = %bb.fy
  %i.alw = load i16, ptr %i.alu, align 2
  store i16 %i.alw, ptr %.pre601, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit178

bb.ga:                                            ; preds = %bb.fy
  %i.alx = load i32, ptr %i.alu, align 2
  store i32 %i.alx, ptr %.pre601, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit178

bb.gb:                                            ; preds = %bb.fy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.pre601, ptr noundef nonnull align 2 dereferenceable(6) %i.alu, i64 6, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit178

bb.gc:                                            ; preds = %bb.fy
  %i.aly = load i64, ptr %i.alu, align 2
  store i64 %i.aly, ptr %.pre601, align 2
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit178

bb.gd:                                            ; preds = %bb.fy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.pre601, ptr noundef nonnull align 2 dereferenceable(10) %i.alu, i64 10, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit178

bb.ge:                                            ; preds = %bb.fy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.pre601, ptr noundef nonnull align 2 dereferenceable(12) %i.alu, i64 12, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit178

bb.gf:                                            ; preds = %bb.fy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.pre601, ptr noundef nonnull align 2 dereferenceable(14) %i.alu, i64 14, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit178

bb.gg:                                            ; preds = %bb.fy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.pre601, ptr noundef nonnull align 2 dereferenceable(16) %i.alu, i64 16, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit178

bb.gh:                                            ; preds = %bb.fy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.pre601, ptr noundef nonnull align 2 dereferenceable(18) %i.alu, i64 18, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit178

bb.gi:                                            ; preds = %bb.fy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.pre601, ptr noundef nonnull align 2 dereferenceable(20) %i.alu, i64 20, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit178

bb.gj:                                            ; preds = %bb.fy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.pre601, ptr noundef nonnull align 2 dereferenceable(22) %i.alu, i64 22, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit178

bb.gk:                                            ; preds = %bb.fy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.pre601, ptr noundef nonnull align 2 dereferenceable(24) %i.alu, i64 24, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit178

bb.gl:                                            ; preds = %bb.fy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.pre601, ptr noundef nonnull align 2 dereferenceable(26) %i.alu, i64 26, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit178

bb.gm:                                            ; preds = %bb.fy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.pre601, ptr noundef nonnull align 2 dereferenceable(28) %i.alu, i64 28, i1 false)
  br label %_ZN2v88internal9OutBufferItE6AppendItQgestT_stTL0__EEvPKS4_m.exit178

bb.gn:                                            ; preds = %bb.fy
end_hunk_18
