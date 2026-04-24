inline.NumInlined: 804
inline.NumDeleted: 199
begin_hunk_0_@_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode:bb.a

_ZL27demanglePointerCVQualifiersR10StringView.exit: ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag
  %i.fx = phi ptr [ %i.fu, %bb.ab ], [ %i.fv, %bb.ag ], [ %i.fv, %bb.af ], [ %i.fv, %bb.ac ], [ %i.fv, %bb.ad ], [ %i.fv, %bb.ae ] ; 5 uses
  %.sroa.0.0.i85 = phi i8 [ 0, %bb.ab ], [ 0, %bb.ag ], [ 3, %bb.af ], [ 0, %bb.ac ], [ 1, %bb.ad ], [ 2, %bb.ae ] ; 2 uses
  %.sroa.4177.0.extract.trunc = phi i32 [ 3, %bb.ab ], [ 1, %bb.ag ], [ 1, %bb.af ], [ 2, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ae ]
  store i8 %.sroa.0.0.i85, ptr %i.fc, align 1, !tbaa !75
  store i32 %.sroa.4177.0.extract.trunc, ptr %i.fd, align 4, !tbaa !130
  %i.fy = icmp eq ptr %i.fx, %i.ff
  br i1 %i.fy, label %_ZN10StringView12consumeFrontEc.exit.thread.i, label %_ZNK10StringView10startsWithEc.exit.i.i81

end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode:bb.a

_ZN10StringView12consumeFrontEc.exit.thread.i:    ; preds = %bb.ah, %_ZNK10StringView10startsWithEc.exit.i.i81, %_ZL27demanglePointerCVQualifiersR10StringView.exit
  %i.gc = phi ptr [ %i.gb, %bb.ah ], [ %i.fx, %_ZNK10StringView10startsWithEc.exit.i.i81 ], [ %i.fx, %_ZL27demanglePointerCVQualifiersR10StringView.exit ] ; 5 uses
  %3 = phi i8 [ 96, %bb.ah ], [ 32, %_ZNK10StringView10startsWithEc.exit.i.i81 ], [ 32, %_ZL27demanglePointerCVQualifiersR10StringView.exit ]
  %i.gd = phi i8 [ 64, %bb.ah ], [ 0, %_ZNK10StringView10startsWithEc.exit.i.i81 ], [ 0, %_ZL27demanglePointerCVQualifiersR10StringView.exit ] ; 2 uses
  %i.ge = icmp eq ptr %i.gc, %i.ff
  br i1 %i.ge, label %_ZN10StringView12consumeFrontEc.exit7.thread.i, label %_ZNK10StringView10startsWithEc.exit.i6.i

end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode:bb.a
bb.ai:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i6.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 2 uses
  store ptr %i.gh, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit7.thread.i

_ZN10StringView12consumeFrontEc.exit7.thread.i:   ; preds = %bb.ai, %_ZNK10StringView10startsWithEc.exit.i6.i, %_ZN10StringView12consumeFrontEc.exit.thread.i
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode:bb.a

_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit: ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i, %_ZNK10StringView10startsWithEc.exit.i8.i, %bb.aj
  %i.gp = phi i8 [ %i.go, %bb.aj ], [ %i.gj, %_ZNK10StringView10startsWithEc.exit.i8.i ], [ %i.gj, %_ZN10StringView12consumeFrontEc.exit7.thread.i ]
  %i.gq = or i8 %i.gp, %.sroa.0.0.i85
  store i8 %i.gq, ptr %i.fc, align 4, !tbaa !112
  %i.gr = load ptr, ptr %1, align 8, !tbaa !40    ; 5 uses
  %i.gs = icmp eq ptr %i.ff, %i.gr
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode:bb.a

_ZL27demanglePointerCVQualifiersR10StringView.exit104: ; preds = %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au
  %i.iv = phi ptr [ %i.is, %bb.ap ], [ %i.it, %bb.au ], [ %i.it, %bb.at ], [ %i.it, %bb.aq ], [ %i.it, %bb.ar ], [ %i.it, %bb.as ] ; 3 uses
  %.sroa.0.0.i102 = phi i8 [ 0, %bb.ap ], [ 0, %bb.au ], [ 3, %bb.at ], [ 0, %bb.aq ], [ 1, %bb.ar ], [ 2, %bb.as ] ; 2 uses
  %.sroa.4184.0.extract.trunc = phi i32 [ 3, %bb.ap ], [ 1, %bb.au ], [ 1, %bb.at ], [ 2, %bb.aq ], [ 1, %bb.ar ], [ 1, %bb.as ]
  store i8 %.sroa.0.0.i102, ptr %i.ia, align 1, !tbaa !75
  store i32 %.sroa.4184.0.extract.trunc, ptr %i.ib, align 4, !tbaa !130
  %i.iw = icmp eq ptr %i.id, %i.iv
  br i1 %i.iw, label %bb.aw, label %_ZNK10StringView10startsWithES_.exit.i94

end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode:bb.a

_ZN10StringView12consumeFrontEc.exit.thread.i88:  ; preds = %bb.ax, %_ZNK10StringView10startsWithEc.exit.i.i87, %bb.aw
  %i.jf = phi ptr [ %i.je, %bb.ax ], [ %i.ja, %_ZNK10StringView10startsWithEc.exit.i.i87 ], [ %i.ja, %bb.aw ] ; 5 uses
  %4 = phi i8 [ 96, %bb.ax ], [ 32, %_ZNK10StringView10startsWithEc.exit.i.i87 ], [ 32, %bb.aw ]
  %i.jg = phi i8 [ 64, %bb.ax ], [ 0, %_ZNK10StringView10startsWithEc.exit.i.i87 ], [ 0, %bb.aw ] ; 2 uses
  %i.jh = icmp eq ptr %i.jf, %i.id
  br i1 %i.jh, label %_ZN10StringView12consumeFrontEc.exit7.thread.i90, label %_ZNK10StringView10startsWithEc.exit.i6.i89

end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode:bb.a
bb.ay:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i6.i89
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 1 ; 2 uses
  store ptr %i.jk, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit7.thread.i90

_ZN10StringView12consumeFrontEc.exit7.thread.i90: ; preds = %bb.ay, %_ZNK10StringView10startsWithEc.exit.i6.i89, %_ZN10StringView12consumeFrontEc.exit.thread.i88
end_hunk_6
begin_hunk_7_@_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode:bb.a

_ZN12_GLOBAL__N_19Demangler28demanglePointerExtQualifiersER10StringView.exit92: ; preds = %_ZN10StringView12consumeFrontEc.exit7.thread.i90, %_ZNK10StringView10startsWithEc.exit.i8.i91, %bb.az
  %i.js = phi i8 [ %i.jr, %bb.az ], [ %i.jm, %_ZNK10StringView10startsWithEc.exit.i8.i91 ], [ %i.jm, %_ZN10StringView12consumeFrontEc.exit7.thread.i90 ]
  %i.jt = or i8 %i.js, %.sroa.0.0.i102
  store i8 %i.jt, ptr %i.ia, align 4, !tbaa !112
  %i.ju = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_19Demangler12demangleTypeER10StringView19QualifierMangleMode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1), !inline_history !134
  %i.jv = getelementptr inbounds nuw i8, ptr %.sink14.i106, i64 32
end_hunk_7
begin_hunk_8_@_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb:bb.a

_ZN10StringView12consumeFrontEc.exit.thread.i:    ; preds = %bb.e, %_ZNK10StringView10startsWithEc.exit.i.i, %bb.d
  %i.ai = phi ptr [ %i.ah, %bb.e ], [ %.pre, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %.pre, %bb.d ] ; 5 uses
  %3 = phi i8 [ 96, %bb.e ], [ 32, %_ZNK10StringView10startsWithEc.exit.i.i ], [ 32, %bb.d ]
  %i.aj = phi i8 [ 64, %bb.e ], [ 0, %_ZNK10StringView10startsWithEc.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.ad
  br i1 %i.ak, label %_ZN10StringView12consumeFrontEc.exit7.thread.i, label %_ZNK10StringView10startsWithEc.exit.i6.i

end_hunk_8
begin_hunk_9_@_ZN12_GLOBAL__N_19Demangler20demangleFunctionTypeER10StringViewb:bb.a
bb.f:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i6.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit7.thread.i

_ZN10StringView12consumeFrontEc.exit7.thread.i:   ; preds = %bb.f, %_ZNK10StringView10startsWithEc.exit.i6.i, %_ZN10StringView12consumeFrontEc.exit.thread.i
end_hunk_9
begin_hunk_10_@_ZN12_GLOBAL__N_19Demangler24demangleFunctionEncodingER10StringView:bb.a

_ZNK10StringView10startsWithEc.exit.i.i:          ; preds = %bb.z
  %i.p = load i8, ptr %i.m, align 1, !tbaa !9
  %i.q = icmp eq i8 %i.p, 82
  br i1 %i.q, label %2, label %_ZN10StringView12consumeFrontEc.exit.thread.i

2:                                                ; preds = %_ZNK10StringView10startsWithEc.exit.i.i
  %3 = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  br label %_ZN10StringView12consumeFrontEc.exit.thread.i

_ZN10StringView12consumeFrontEc.exit.thread.i:    ; preds = %2, %_ZNK10StringView10startsWithEc.exit.i.i, %bb.z
  %4 = phi ptr [ %3, %2 ], [ %i.m, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %i.m, %bb.z ] ; 2 uses
  %.012.i = phi i16 [ 1633, %2 ], [ 609, %_ZNK10StringView10startsWithEc.exit.i.i ], [ 609, %bb.z ]
  %5 = phi i16 [ 1569, %2 ], [ 545, %_ZNK10StringView10startsWithEc.exit.i.i ], [ 545, %bb.z ]
  %6 = phi i16 [ 1634, %2 ], [ 610, %_ZNK10StringView10startsWithEc.exit.i.i ], [ 610, %bb.z ]
  %7 = phi i16 [ 1570, %2 ], [ 546, %_ZNK10StringView10startsWithEc.exit.i.i ], [ 546, %bb.z ]
  %8 = phi i16 [ 1636, %2 ], [ 612, %_ZNK10StringView10startsWithEc.exit.i.i ], [ 612, %bb.z ]
  %9 = phi i16 [ 1572, %2 ], [ 548, %_ZNK10StringView10startsWithEc.exit.i.i ], [ 548, %bb.z ]
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 1
  store ptr %i.r, ptr %1, align 8, !tbaa !40
  %i.s = load i8, ptr %4, align 1, !tbaa !9
  switch i8 %i.s, label %bb.af [
    i8 48, label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit
    i8 49, label %bb.aa
    i8 50, label %bb.ab
    i8 51, label %bb.ac
end_hunk_10
begin_hunk_11_@_ZN12_GLOBAL__N_19Demangler24demangleFunctionEncodingER10StringView:bb.a
    i8 53, label %bb.ae
  ]

bb.aa:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.ab:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.ac:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.ad:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.ae:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

bb.af:                                            ; preds = %_ZN10StringView12consumeFrontEc.exit.thread.i, %_ZN10StringView12consumeFrontES_.exit.thread
end_hunk_11
begin_hunk_12_@_ZN12_GLOBAL__N_19Demangler24demangleFunctionEncodingER10StringView:bb.a
  store i8 1, ptr %i.t, align 8, !tbaa !20
  br label %_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit

_ZN12_GLOBAL__N_19Demangler21demangleFunctionClassER10StringView.exit: ; preds = %_ZN10StringView12consumeFrontES_.exit.thread, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %_ZN10StringView12consumeFrontEc.exit.thread.i, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.1.i = phi i16 [ 1, %bb.af ], [ 8, %bb.x ], [ 4, %bb.b ], [ 68, %bb.c ], [ 20, %bb.d ], [ 384, %_ZN10StringView12consumeFrontES_.exit.thread ], [ 36, %bb.e ], [ 72, %bb.y ], [ 2052, %bb.f ], [ 2116, %bb.g ], [ 2, %bb.h ], [ 66, %bb.i ], [ 18, %bb.j ], [ 82, %bb.k ], [ 34, %bb.l ], [ 98, %bb.m ], [ 2082, %bb.n ], [ 2146, %bb.o ], [ 1, %bb.p ], [ 65, %bb.q ], [ 17, %bb.r ], [ 81, %bb.s ], [ 33, %bb.t ], [ 97, %bb.u ], [ 2081, %bb.v ], [ 2145, %bb.w ], [ %9, %_ZN10StringView12consumeFrontEc.exit.thread.i ], [ %5, %bb.ad ], [ %6, %bb.ac ], [ %7, %bb.ab ], [ %8, %bb.aa ], [ %.012.i, %bb.ae ]
  %i.u = or i16 %.1.i, %i.l                       ; 2 uses
  %i.v = zext nneg i16 %i.u to i32                ; 5 uses
  %i.w = and i32 %i.v, 2048
end_hunk_12
begin_hunk_13_@_ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE:bb.a

_ZN10StringView12consumeFrontEc.exit.thread.i:    ; preds = %bb.e, %_ZNK10StringView10startsWithEc.exit.i.i, %bb.d
  %i.aj = phi ptr [ %i.ai, %bb.e ], [ %i.ac, %_ZNK10StringView10startsWithEc.exit.i.i ], [ %i.ac, %bb.d ] ; 5 uses
  %3 = phi i8 [ 96, %bb.e ], [ 32, %_ZNK10StringView10startsWithEc.exit.i.i ], [ 32, %bb.d ]
  %i.ak = phi i8 [ 64, %bb.e ], [ 0, %_ZNK10StringView10startsWithEc.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ae
  br i1 %i.al, label %_ZN10StringView12consumeFrontEc.exit7.thread.i, label %_ZNK10StringView10startsWithEc.exit.i6.i

end_hunk_13
begin_hunk_14_@_ZN12_GLOBAL__N_19Demangler24demangleVariableEncodingER10StringViewN4llvh11ms_demangle12StorageClassE:bb.a
bb.f:                                             ; preds = %_ZNK10StringView10startsWithEc.exit.i6.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  store ptr %i.ao, ptr %1, align 8, !tbaa !69
  br label %_ZN10StringView12consumeFrontEc.exit7.thread.i

_ZN10StringView12consumeFrontEc.exit7.thread.i:   ; preds = %bb.f, %_ZNK10StringView10startsWithEc.exit.i6.i, %_ZN10StringView12consumeFrontEc.exit.thread.i
end_hunk_14
