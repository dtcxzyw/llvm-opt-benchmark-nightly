inline.NumInlined: 3084
inline.NumDeleted: 935
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN13InstDeVisitor5visitEP6AstPin:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.avy, i64 noundef %i.awd) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN9VNVisitor11pushDeletepEP7AstNode.exit1009, %bb.ju
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  %.not.i.i.i1011 = icmp eq ptr %.sroa.01524.0, null
  br i1 %.not.i.i.i1011, label %_ZNSt6vectorIPK19AstUnpackArrayDTypeSaIS2_EED2Ev.exit, label %bb.jv

bb.jv:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.awe = ptrtoint ptr %.sroa.14.0 to i64
  %i.awf = sub i64 %i.awe, %i.abx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01524.0, i64 noundef %i.awf) #22
  br label %_ZNSt6vectorIPK19AstUnpackArrayDTypeSaIS2_EED2Ev.exit

_ZNSt6vectorIPK19AstUnpackArrayDTypeSaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.jv
  %i.awg = load ptr, ptr %30, align 8, !tbaa !527 ; 3 uses
  %.not.i.i.i1012 = icmp eq ptr %i.awg, null
  br i1 %.not.i.i.i1012, label %_ZNSt6vectorIiSaIiEED2Ev.exit1013, label %bb.jw

bb.jw:                                            ; preds = %_ZNSt6vectorIPK19AstUnpackArrayDTypeSaIS2_EED2Ev.exit
  %i.awh = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.awi = load ptr, ptr %i.awh, align 8, !tbaa !583
  %i.awj = ptrtoint ptr %i.awi to i64
  %i.awk = ptrtoint ptr %i.awg to i64
  %i.awl = sub i64 %i.awj, %i.awk
  call void @_ZdlPvm(ptr noundef nonnull %i.awg, i64 noundef %i.awl) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit1013

_ZNSt6vectorIiSaIiEED2Ev.exit1013:                ; preds = %_ZNSt6vectorIPK19AstUnpackArrayDTypeSaIS2_EED2Ev.exit, %bb.jw
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  br label %.critedge545

bb.jx:                                            ; preds = %bb.js, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1006
  %.pn475.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn475.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1006 ], [ %i.avw, %bb.js ] ; 2 uses
  %i.awm = load ptr, ptr %32, align 8, !tbaa !527 ; 3 uses
  %.not.i.i.i1014 = icmp eq ptr %i.awm, null
  br i1 %.not.i.i.i1014, label %_ZNSt6vectorIiSaIiEED2Ev.exit1015, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.awn = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.awo = load ptr, ptr %i.awn, align 8, !tbaa !583
  %i.awp = ptrtoint ptr %i.awo to i64
  %i.awq = ptrtoint ptr %i.awm to i64
  %i.awr = sub i64 %i.awp, %i.awq
  call void @_ZdlPvm(ptr noundef nonnull %i.awm, i64 noundef %i.awr) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit1015

_ZNSt6vectorIiSaIiEED2Ev.exit1015:                ; preds = %bb.jy, %bb.jx, %bb.gf
  %.pn475.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aei, %bb.gf ], [ %.pn475.pn.pn.pn.pn.pn, %bb.jx ], [ %.pn475.pn.pn.pn.pn.pn, %bb.jy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  br label %bb.jz

bb.jz:                                            ; preds = %.loopexit1664, %.loopexit.split-lp1665, %_ZNSt6vectorIiSaIiEED2Ev.exit1015, %bb.gc
  %.sroa.14.4 = phi ptr [ %.sroa.14.0, %_ZNSt6vectorIiSaIiEED2Ev.exit1015 ], [ %.sroa.14.0, %bb.gc ], [ %.sroa.14.1.ph, %.loopexit1664 ], [ %.sroa.14.0, %.loopexit.split-lp1665 ]
  %.sroa.01524.4 = phi ptr [ %.sroa.01524.0, %_ZNSt6vectorIiSaIiEED2Ev.exit1015 ], [ %.sroa.01524.0, %bb.gc ], [ %.sroa.01524.1.ph, %.loopexit1664 ], [ %.sroa.01524.0, %.loopexit.split-lp1665 ] ; 3 uses
  %.pn483 = phi { ptr, i32 } [ %.pn475.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit1015 ], [ %i.ace, %bb.gc ], [ %lpad.loopexit1666, %.loopexit1664 ], [ %lpad.loopexit.split-lp1667, %.loopexit.split-lp1665 ] ; 2 uses
  %.not.i.i.i1016 = icmp eq ptr %.sroa.01524.4, null
  br i1 %.not.i.i.i1016, label %_ZNSt6vectorIPK19AstUnpackArrayDTypeSaIS2_EED2Ev.exit1017, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.aws = ptrtoint ptr %.sroa.14.4 to i64
  %i.awt = ptrtoint ptr %.sroa.01524.4 to i64
  %i.awu = sub i64 %i.aws, %i.awt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01524.4, i64 noundef %i.awu) #22
  br label %_ZNSt6vectorIPK19AstUnpackArrayDTypeSaIS2_EED2Ev.exit1017

_ZNSt6vectorIPK19AstUnpackArrayDTypeSaIS2_EED2Ev.exit1017: ; preds = %bb.ka, %bb.jz, %.thread1585, %bb.fq, %bb.fl
  %.pn487 = phi { ptr, i32 } [ %i.aas, %bb.fl ], [ %i.aaw, %bb.fq ], [ %i.aba, %.thread1585 ], [ %.pn483, %bb.jz ], [ %.pn483, %bb.ka ] ; 2 uses
  %i.awv = load ptr, ptr %30, align 8, !tbaa !527 ; 3 uses
  %.not.i.i.i1018 = icmp eq ptr %i.awv, null
  br i1 %.not.i.i.i1018, label %_ZNSt6vectorIiSaIiEED2Ev.exit1019, label %bb.kb

bb.kb:                                            ; preds = %_ZNSt6vectorIPK19AstUnpackArrayDTypeSaIS2_EED2Ev.exit1017
  %i.aww = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.awx = load ptr, ptr %i.aww, align 8, !tbaa !583
  %i.awy = ptrtoint ptr %i.awx to i64
  %i.awz = ptrtoint ptr %i.awv to i64
  %i.axa = sub i64 %i.awy, %i.awz
  call void @_ZdlPvm(ptr noundef nonnull %i.awv, i64 noundef %i.axa) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit1019

_ZNSt6vectorIiSaIiEED2Ev.exit1019:                ; preds = %bb.kb, %_ZNSt6vectorIPK19AstUnpackArrayDTypeSaIS2_EED2Ev.exit1017, %bb.ff
  %.pn487.pn = phi { ptr, i32 } [ %i.zg, %bb.ff ], [ %.pn487, %_ZNSt6vectorIPK19AstUnpackArrayDTypeSaIS2_EED2Ev.exit1017 ], [ %.pn487, %bb.kb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  br label %bb.qg

bb.kc:                                            ; preds = %.critedge543
  %i.axb = load ptr, ptr %i.xj, align 8, !tbaa !39
  %i.axc = invoke noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.axb, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %_ZN12AstNodeDType8skipRefpEv.exit1021 unwind label %bb.kf ; 5 uses

_ZN12AstNodeDType8skipRefpEv.exit1021:            ; preds = %bb.kc
  %.not.i1022 = icmp eq ptr %i.axc, null
  br i1 %.not.i1022, label %.critedge545, label %bb.kd

bb.kd:                                            ; preds = %_ZN12AstNodeDType8skipRefpEv.exit1021
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 64
  %.sroa.0.0.copyload.i.i.i1023 = load i16, ptr %i.axd, align 8, !tbaa !38
  %i.axe = icmp eq i16 %.sroa.0.0.copyload.i.i.i1023, 99
  br i1 %i.axe, label %bb.ke, label %.critedge545

bb.ke:                                            ; preds = %bb.kd
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axc, i64 168 ; 3 uses
  %i.axg = load ptr, ptr %i.axf, align 8, !tbaa !392 ; 2 uses
  %.not.i1026 = icmp eq ptr %i.axg, null
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axc, i64 24 ; 3 uses
  %i.axi = load ptr, ptr %i.axh, align 8
  %i.axj = select i1 %.not.i1026, ptr %i.axi, ptr %i.axg
  %i.axk = invoke noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.axj, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %_ZN12AstNodeDType8skipRefpEv.exit1028 unwind label %bb.kf ; 2 uses

_ZN12AstNodeDType8skipRefpEv.exit1028:            ; preds = %bb.ke
  %.not.i1029 = icmp eq ptr %i.axk, null
  br i1 %.not.i1029, label %.critedge545, label %_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit1031

_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit1031: ; preds = %_ZN12AstNodeDType8skipRefpEv.exit1028
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 64
  %.sroa.0.0.copyload.i.i.i1030 = load i16, ptr %i.axl, align 8, !tbaa !38
  %i.axm = icmp eq i16 %.sroa.0.0.copyload.i.i.i1030, 85
  br i1 %i.axm, label %bb.kg, label %.critedge545

bb.kf:                                            ; preds = %bb.kg, %bb.ke, %bb.kc, %_ZN12AstNodeDType8skipRefpEv.exit1034
  %i.axn = landingpad { ptr, i32 }
          cleanup
  br label %bb.qg

bb.kg:                                            ; preds = %_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_.exit1031
  %i.axo = load ptr, ptr %i.axf, align 8, !tbaa !392 ; 2 uses
  %.not.i1032 = icmp eq ptr %i.axo, null
  %i.axp = load ptr, ptr %i.axh, align 8
  %i.axq = select i1 %.not.i1032, ptr %i.axp, ptr %i.axo
  %i.axr = invoke noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.axq, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %_ZN12AstNodeDType8skipRefpEv.exit1034 unwind label %bb.kf

_ZN12AstNodeDType8skipRefpEv.exit1034:            ; preds = %bb.kg
  %i.axs = invoke noundef ptr @_ZN7AstNode2asI16AstIfaceRefDType12AstNodeDTypeEEPT_PT0_(ptr noundef %i.axr)
          to label %bb.kh unwind label %bb.kf

bb.kh:                                            ; preds = %_ZN12AstNodeDType8skipRefpEv.exit1034
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 273
  %i.axu = load i8, ptr %i.axt, align 1, !tbaa !427, !range !158, !noundef !159
  %i.axv = trunc nuw i8 %i.axu to i1
  br i1 %i.axv, label %.critedge545, label %.preheader1669

.preheader1669:                                   ; preds = %bb.kh
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axc, i64 32 ; 4 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %i.xi, i64 152
  %i.axy = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 7 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.xi, i64 160
  %i.aya = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 2 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 9 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 2 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.aye = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 6 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 10 uses
  %i.ayg = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 3 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 7 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 2 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.xi, i64 16
  %i.ayk = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 7 uses
  %i.ayl = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 9 uses
  %i.ayn = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 2 uses
  %i.ayo = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.ayp = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 6 uses
  %i.ayq = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 10 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 3 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 7 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.ayu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ayw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 7 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.ayz = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 9 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  %i.azb = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.azc = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 6 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 10 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 3 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 7 uses
  %i.azg = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.azh = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 10 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %72, i64 8 ; 3 uses
  %i.azj = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 9 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 2 uses
  %i.azl = getelementptr inbounds nuw i8, ptr %73, i64 8
  %i.azm = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 6 uses
  %i.azn = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 10 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 3 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 7 uses
  %i.azq = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.azr = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.azs = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 6 uses
  %i.azt = getelementptr inbounds nuw i8, ptr %74, i64 8
  br label %bb.ki

bb.ki:                                            ; preds = %.preheader1669, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1482
  %.0341 = phi ptr [ %.23431601, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1482 ], [ null, %.preheader1669 ] ; 6 uses
  %.0339 = phi ptr [ %.1340, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1482 ], [ null, %.preheader1669 ] ; 4 uses
  %.0338 = phi i32 [ %i.ccu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1482 ], [ 0, %.preheader1669 ] ; 6 uses
  %i.azu = load ptr, ptr %i.axw, align 8, !tbaa !58 ; 2 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 24 ; 2 uses
  %i.azw = load ptr, ptr %i.azv, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i.i.i1035 = icmp eq ptr %i.azw, null
  br i1 %.not.i.i.i.i.i1035, label %_ZNK8AstRange9leftConstEv.exit.i.i.i1037, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azw, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i.i1036 = load i16, ptr %i.azx, align 8, !tbaa !38
  %i.azy = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i.i1036, 121
  br i1 %i.azy, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i.i1049, label %_ZNK8AstRange9leftConstEv.exit.i.i.i1037

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i.i1049: ; preds = %bb.kj
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azw, i64 152
  %i.baa = invoke noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.azz)
          to label %_ZNK8AstRange9leftConstEv.exit.i.i.i1037 unwind label %bb.kp

_ZNK8AstRange9leftConstEv.exit.i.i.i1037:         ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i.i1049, %bb.kj, %bb.ki
  %i.bab = phi i32 [ 0, %bb.kj ], [ 0, %bb.ki ], [ %i.baa, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i.i1049 ]
  %i.bac = getelementptr inbounds nuw i8, ptr %i.azu, i64 32 ; 2 uses
  %i.bad = load ptr, ptr %i.bac, align 8, !tbaa !58 ; 3 uses
  %.not.i.i4.i.i.i1038 = icmp eq ptr %i.bad, null
  br i1 %.not.i.i4.i.i.i1038, label %_ZNK8AstRange7hiConstEv.exit.i.i1040, label %bb.kk

bb.kk:                                            ; preds = %_ZNK8AstRange9leftConstEv.exit.i.i.i1037
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bad, i64 64
  %.sroa.0.0.copyload.i.i.i.i5.i.i.i1039 = load i16, ptr %i.bae, align 8, !tbaa !38
  %i.baf = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i5.i.i.i1039, 121
  br i1 %i.baf, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i.i1048, label %_ZNK8AstRange7hiConstEv.exit.i.i1040

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i.i1048: ; preds = %bb.kk
  %i.bag = getelementptr inbounds nuw i8, ptr %i.bad, i64 152
  %i.bah = invoke noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bag)
          to label %_ZNK8AstRange7hiConstEv.exit.i.i1040 unwind label %bb.kp

_ZNK8AstRange7hiConstEv.exit.i.i1040:             ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i.i1048, %bb.kk, %_ZNK8AstRange9leftConstEv.exit.i.i.i1037
  %i.bai = phi i32 [ 0, %bb.kk ], [ 0, %_ZNK8AstRange9leftConstEv.exit.i.i.i1037 ], [ %i.bah, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i.i1048 ]
  %i.baj = load ptr, ptr %i.azv, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i1.i.i1041 = icmp eq ptr %i.baj, null
  br i1 %.not.i.i.i1.i.i1041, label %_ZNK8AstRange9leftConstEv.exit.i3.i.i1043, label %bb.kl

bb.kl:                                            ; preds = %_ZNK8AstRange7hiConstEv.exit.i.i1040
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baj, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i2.i.i1042 = load i16, ptr %i.bak, align 8, !tbaa !38
  %i.bal = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i2.i.i1042, 121
  br i1 %i.bal, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i7.i.i1047, label %_ZNK8AstRange9leftConstEv.exit.i3.i.i1043

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i7.i.i1047: ; preds = %bb.kl
  %i.bam = getelementptr inbounds nuw i8, ptr %i.baj, i64 152
  %i.ban = invoke noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bam)
          to label %_ZNK8AstRange9leftConstEv.exit.i3.i.i1043 unwind label %bb.kp

_ZNK8AstRange9leftConstEv.exit.i3.i.i1043:        ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i7.i.i1047, %bb.kl, %_ZNK8AstRange7hiConstEv.exit.i.i1040
  %i.bao = phi i32 [ 0, %bb.kl ], [ 0, %_ZNK8AstRange7hiConstEv.exit.i.i1040 ], [ %i.ban, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i7.i.i1047 ]
  %i.bap = load ptr, ptr %i.bac, align 8, !tbaa !58 ; 3 uses
  %.not.i.i4.i4.i.i1044 = icmp eq ptr %i.bap, null
  br i1 %.not.i.i4.i4.i.i1044, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %_ZNK8AstRange9leftConstEv.exit.i3.i.i1043
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bap, i64 64
  %.sroa.0.0.copyload.i.i.i.i5.i5.i.i1045 = load i16, ptr %i.baq, align 8, !tbaa !38
  %i.bar = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i5.i5.i.i1045, 121
  br i1 %i.bar, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i6.i.i1046, label %bb.kn

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i6.i.i1046: ; preds = %bb.km
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bap, i64 152
  %i.bat = invoke noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bas)
          to label %bb.kn unwind label %bb.kp

bb.kn:                                            ; preds = %bb.km, %_ZNK8AstRange9leftConstEv.exit.i3.i.i1043, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i6.i.i1046
  %i.bau = phi i32 [ 0, %bb.km ], [ 0, %_ZNK8AstRange9leftConstEv.exit.i3.i.i1043 ], [ %i.bat, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i6.i.i1046 ]
  %i.bav = call noundef i32 @llvm.smax.i32(i32 %i.bab, i32 %i.bai)
  %i.baw = call noundef i32 @llvm.smin.i32(i32 %i.bao, i32 %i.bau)
  %i.bax = add i32 %i.bav, 1
  %i.bay = sub i32 %i.bax, %i.baw
  %i.baz = icmp slt i32 %.0338, %i.bay
  br i1 %i.baz, label %bb.kq, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %.not385 = icmp eq ptr %.0341, null
  br i1 %.not385, label %_ZN9VNVisitor11pushDeletepEP7AstNode.exit1490, label %bb.qb

bb.kp:                                            ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i6.i.i1046, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i7.i.i1047, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i.i1048, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i.i1049
  %i.bba = landingpad { ptr, i32 }
          cleanup
  br label %bb.qg

bb.kq:                                            ; preds = %bb.kn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #24
  %i.bbb = load ptr, ptr %i.axw, align 8, !tbaa !58 ; 3 uses
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bbb, i64 24
  %i.bbd = load ptr, ptr %i.bbc, align 8, !tbaa !29 ; 4 uses
  %.not.i.i.i1055 = icmp eq ptr %i.bbd, null
  br i1 %.not.i.i.i1055, label %_ZNK17AstNodeArrayDType4leftEv.exit.i, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bbd, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i1056 = load i16, ptr %i.bbe, align 8, !tbaa !38
  %i.bbf = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i1056, 121
  br i1 %i.bbf, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i1058, label %_ZNK17AstNodeArrayDType4leftEv.exit.thread3572

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i1058: ; preds = %bb.kr
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbd, i64 152
  %i.bbh = invoke noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bbg)
          to label %_ZNK17AstNodeArrayDType4leftEv.exit unwind label %bb.lm ; 2 uses

_ZNK17AstNodeArrayDType4leftEv.exit:              ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i1058
  %.pre3147 = load ptr, ptr %i.axw, align 8, !tbaa !58 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre3147, i64 24
  %.pre3148 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1060 = icmp eq ptr %.pre3148, null
  br i1 %.not.i.i.i.i1060, label %_ZNK17AstNodeArrayDType4leftEv.exit.i, label %_ZNK17AstNodeArrayDType4leftEv.exit.thread3572

_ZNK17AstNodeArrayDType4leftEv.exit.thread3572:   ; preds = %bb.kr, %_ZNK17AstNodeArrayDType4leftEv.exit
  %i.bbi = phi i32 [ %i.bbh, %_ZNK17AstNodeArrayDType4leftEv.exit ], [ 0, %bb.kr ] ; 2 uses
  %i.bbj = phi ptr [ %.pre3147, %_ZNK17AstNodeArrayDType4leftEv.exit ], [ %i.bbb, %bb.kr ]
  %i.bbk = phi ptr [ %.pre3148, %_ZNK17AstNodeArrayDType4leftEv.exit ], [ %i.bbd, %bb.kr ] ; 2 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i1061 = load i16, ptr %i.bbl, align 8, !tbaa !38
  %i.bbm = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i1061, 121
  br i1 %i.bbm, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i1064, label %_ZNK17AstNodeArrayDType4leftEv.exit.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i1064: ; preds = %_ZNK17AstNodeArrayDType4leftEv.exit.thread3572
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbk, i64 152
  %i.bbo = invoke noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bbn)
          to label %.noexc1066 unwind label %bb.ln

.noexc1066:                                       ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i1064
  %i.bbp = zext i32 %i.bbo to i64
  %.pre.i1065 = load ptr, ptr %i.axw, align 8, !tbaa !58
  br label %_ZNK17AstNodeArrayDType4leftEv.exit.i

_ZNK17AstNodeArrayDType4leftEv.exit.i:            ; preds = %bb.kq, %.noexc1066, %_ZNK17AstNodeArrayDType4leftEv.exit.thread3572, %_ZNK17AstNodeArrayDType4leftEv.exit
  %i.bbq = phi i32 [ %i.bbi, %.noexc1066 ], [ %i.bbh, %_ZNK17AstNodeArrayDType4leftEv.exit ], [ %i.bbi, %_ZNK17AstNodeArrayDType4leftEv.exit.thread3572 ], [ 0, %bb.kq ]
  %i.bbr = phi ptr [ %.pre.i1065, %.noexc1066 ], [ %.pre3147, %_ZNK17AstNodeArrayDType4leftEv.exit ], [ %i.bbj, %_ZNK17AstNodeArrayDType4leftEv.exit.thread3572 ], [ %i.bbb, %bb.kq ]
  %.sroa.0.0.insert.ext.i = phi i64 [ %i.bbp, %.noexc1066 ], [ 0, %_ZNK17AstNodeArrayDType4leftEv.exit ], [ 0, %_ZNK17AstNodeArrayDType4leftEv.exit.thread3572 ], [ 0, %bb.kq ] ; 3 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbr, i64 32
  %i.bbt = load ptr, ptr %i.bbs, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i1.i1062 = icmp eq ptr %i.bbt, null
  br i1 %.not.i.i.i1.i1062, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %_ZNK17AstNodeArrayDType4leftEv.exit.i
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbt, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i2.i1063 = load i16, ptr %i.bbu, align 8, !tbaa !38
  %i.bbv = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i2.i1063, 121
  br i1 %i.bbv, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i3.i, label %bb.kt

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i3.i: ; preds = %bb.ks
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbt, i64 152
  %i.bbx = invoke noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bbw)
          to label %.noexc1067 unwind label %bb.ln

.noexc1067:                                       ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i3.i
  %i.bby = zext i32 %i.bbx to i64
  %i.bbz = shl nuw i64 %i.bby, 32
  %i.bca = or disjoint i64 %i.bbz, %.sroa.0.0.insert.ext.i
  br label %bb.kt

bb.kt:                                            ; preds = %_ZNK17AstNodeArrayDType4leftEv.exit.i, %bb.ks, %.noexc1067
  %.sroa.2.0.insert.ext.i = phi i64 [ %i.bca, %.noexc1067 ], [ %.sroa.0.0.insert.ext.i, %_ZNK17AstNodeArrayDType4leftEv.exit.i ], [ %.sroa.0.0.insert.ext.i, %bb.ks ] ; 2 uses
  %.sroa.01516.0.extract.trunc = trunc i64 %.sroa.2.0.insert.ext.i to i32
  %.sroa.01516.4.extract.shift = lshr i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.01516.4.extract.trunc = trunc nuw i64 %.sroa.01516.4.extract.shift to i32
  %i.bcb = icmp slt i32 %.sroa.01516.0.extract.trunc, %.sroa.01516.4.extract.trunc
  %76 = sub nsw i32 0, %.0338                     ; 3 uses
  %i.bcc = select i1 %i.bcb, i32 %.0338, i32 %76
  %i.bcd = add nsw i32 %i.bcc, %i.bbq
  store i32 %i.bcd, ptr %i.l, align 4, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  store ptr %i.axy, ptr %56, align 8, !tbaa !66, !alias.scope !584
  %i.bce = load ptr, ptr %i.axx, align 8, !tbaa !72, !noalias !584 ; 2 uses
  %i.bcf = load i64, ptr %i.axz, align 8, !tbaa !67, !noalias !584 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24, !noalias !584
  store i64 %i.bcf, ptr %i.e, align 8, !tbaa !79, !noalias !584
  %i.bcg = icmp ugt i64 %i.bcf, 15
  br i1 %i.bcg, label %.noexc.i.i1069, label %._crit_edge.i.i.i1068

.noexc.i.i1069:                                   ; preds = %bb.kt
  %i.bch = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc1070 unwind label %bb.lo ; 2 uses

.noexc1070:                                       ; preds = %.noexc.i.i1069
  store ptr %i.bch, ptr %56, align 8, !tbaa !72, !alias.scope !584
  %i.bci = load i64, ptr %i.e, align 8, !tbaa !79, !noalias !584
  store i64 %i.bci, ptr %i.axy, align 8, !tbaa !68, !alias.scope !584
  br label %._crit_edge.i.i.i1068

._crit_edge.i.i.i1068:                            ; preds = %.noexc1070, %bb.kt
  %i.bcj = phi ptr [ %i.bch, %.noexc1070 ], [ %i.axy, %bb.kt ] ; 2 uses
  switch i64 %i.bcf, label %bb.kv [
    i64 1, label %bb.ku
    i64 0, label %bb.kw
  ]

bb.ku:                                            ; preds = %._crit_edge.i.i.i1068
  %i.bck = load i8, ptr %i.bce, align 1, !tbaa !68
  store i8 %i.bck, ptr %i.bcj, align 1, !tbaa !68
  br label %bb.kw

bb.kv:                                            ; preds = %._crit_edge.i.i.i1068
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bcj, ptr align 1 %i.bce, i64 %i.bcf, i1 false)
  br label %bb.kw

bb.kw:                                            ; preds = %bb.kv, %bb.ku, %._crit_edge.i.i.i1068
  %i.bcl = load i64, ptr %i.e, align 8, !tbaa !79, !noalias !584 ; 2 uses
  store i64 %i.bcl, ptr %i.aya, align 8, !tbaa !67, !alias.scope !584
  %i.bcm = load ptr, ptr %56, align 8, !tbaa !72, !alias.scope !584
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcm, i64 %i.bcl
  store i8 0, ptr %i.bcn, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24, !noalias !584
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.bco = load i64, ptr %i.aya, align 8, !tbaa !67, !noalias !587
  %i.bcp = add i64 %i.bco, -4611686018427387897
  %i.bcq = icmp ult i64 %i.bcp, 7
  br i1 %i.bcq, label %bb.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1072

bb.kx:                                            ; preds = %bb.kw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.515) #23
          to label %.noexc1076 unwind label %.loopexit.split-lp1671

.noexc1076:                                       ; preds = %bb.kx
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1072: ; preds = %bb.kw
  %i.bcr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull @.str.545, i64 noundef 7)
          to label %.noexc1077 unwind label %.loopexit1670 ; 6 uses

.noexc1077:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1072
  store ptr %i.ayb, ptr %55, align 8, !tbaa !66, !alias.scope !587
  %i.bcs = load ptr, ptr %i.bcr, align 8, !tbaa !72 ; 2 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcr, i64 16 ; 5 uses
  %i.bcu = icmp eq ptr %i.bcs, %i.bct
  br i1 %i.bcu, label %bb.ky, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1073

bb.ky:                                            ; preds = %.noexc1077
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcr, i64 8
  %i.bcw = load i64, ptr %i.bcv, align 8, !tbaa !67 ; 3 uses
  %i.bcx = icmp ult i64 %i.bcw, 16
  call void @llvm.assume(i1 %i.bcx)
  %i.bcy = add nuw nsw i64 %i.bcw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ayb, ptr noundef nonnull align 8 dereferenceable(1) %i.bct, i64 %i.bcy, i1 false)
  br label %bb.kz

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1073: ; preds = %.noexc1077
  store ptr %i.bcs, ptr %55, align 8, !tbaa !72, !alias.scope !587
  %i.bcz = load i64, ptr %i.bct, align 8, !tbaa !68
  store i64 %i.bcz, ptr %i.ayb, align 8, !tbaa !68, !alias.scope !587
  %.phi.trans.insert.i1074 = getelementptr inbounds nuw i8, ptr %i.bcr, i64 8
  %.pre.i1075 = load i64, ptr %.phi.trans.insert.i1074, align 8, !tbaa !67
  br label %bb.kz

bb.kz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1073, %bb.ky
  %i.bda = phi i64 [ %i.bcw, %bb.ky ], [ %.pre.i1075, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1073 ]
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bcr, i64 8
  store i64 %i.bda, ptr %i.ayc, align 8, !tbaa !67, !alias.scope !587
  store ptr %i.bct, ptr %i.bcr, align 8, !tbaa !72
  store i64 0, ptr %i.bdb, align 8, !tbaa !67
  store i8 0, ptr %i.bct, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #24
  invoke void @_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %57, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %bb.la unwind label %bb.lp

bb.la:                                            ; preds = %bb.kz
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.bdc = load i64, ptr %i.ayc, align 8, !tbaa !67, !noalias !590 ; 4 uses
  %i.bdd = load i64, ptr %i.ayd, align 8, !tbaa !67, !noalias !590 ; 4 uses
  %i.bde = add i64 %i.bdd, %i.bdc                 ; 2 uses
  %i.bdf = load ptr, ptr %55, align 8, !tbaa !72, !noalias !590 ; 2 uses
  %i.bdg = icmp eq ptr %i.bdf, %i.ayb
  br i1 %i.bdg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1082, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1079

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1082: ; preds = %bb.la
  %i.bdh = icmp ult i64 %i.bdc, 16
  call void @llvm.assume(i1 %i.bdh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1079: ; preds = %bb.la
  %i.bdi = load i64, ptr %i.ayb, align 8, !tbaa !68, !noalias !590
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1079, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1082
  %i.bdj = phi i64 [ %i.bdi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1079 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1082 ]
  %i.bdk = icmp ugt i64 %i.bde, %i.bdj
  br i1 %i.bdk, label %bb.lb, label %bb.ld

bb.lb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.bdl = load ptr, ptr %57, align 8, !tbaa !72, !noalias !590
  %i.bdm = icmp eq ptr %i.bdl, %i.aye
  br i1 %i.bdm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.lb
  %i.bdn = icmp ult i64 %i.bdd, 16
  call void @llvm.assume(i1 %i.bdn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.lb
  %i.bdo = load i64, ptr %i.aye, align 8, !tbaa !68, !noalias !590
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.bdp = phi i64 [ %i.bdo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i1081 = icmp ugt i64 %i.bde, %i.bdp
  br i1 %.not.i1081, label %bb.ld, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.bdq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %57, i64 noundef 0, i64 noundef 0, ptr noundef %i.bdf, i64 noundef %i.bdc)
          to label %.noexc1083 unwind label %.loopexit1675 ; 5 uses

.noexc1083:                                       ; preds = %.critedge.i
  store ptr %i.ayf, ptr %54, align 8, !tbaa !66, !alias.scope !590
  %i.bdr = load ptr, ptr %i.bdq, align 8, !tbaa !72 ; 2 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdq, i64 16 ; 5 uses
  %i.bdt = icmp eq ptr %i.bdr, %i.bds
  br i1 %i.bdt, label %bb.lc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.lc:                                            ; preds = %.noexc1083
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bdq, i64 8
  %i.bdv = load i64, ptr %i.bdu, align 8, !tbaa !67 ; 2 uses
  %i.bdw = icmp ult i64 %i.bdv, 16
  call void @llvm.assume(i1 %i.bdw)
  %i.bdx = add nuw nsw i64 %i.bdv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ayf, ptr noundef nonnull align 8 dereferenceable(1) %i.bds, i64 %i.bdx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.noexc1083
  store ptr %i.bdr, ptr %54, align 8, !tbaa !72, !alias.scope !590
  %i.bdy = load i64, ptr %i.bds, align 8, !tbaa !68
  store i64 %i.bdy, ptr %i.ayf, align 8, !tbaa !68, !alias.scope !590
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.lc
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdq, i64 8 ; 2 uses
  %i.bea = load i64, ptr %i.bdz, align 8, !tbaa !67
  store i64 %i.bea, ptr %i.ayg, align 8, !tbaa !67, !alias.scope !590
  store ptr %i.bds, ptr %i.bdq, align 8, !tbaa !72
  store i64 0, ptr %i.bdz, align 8, !tbaa !67
  store i8 0, ptr %i.bds, align 8, !tbaa !68
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.ld:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.beb = sub i64 4611686018427387903, %i.bdc
  %i.bec = icmp ult i64 %i.beb, %i.bdd
  br i1 %i.bec, label %bb.le, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i1080

bb.le:                                            ; preds = %bb.ld
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.515) #23
          to label %.noexc1084 unwind label %.loopexit.split-lp1676

.noexc1084:                                       ; preds = %bb.le
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i1080: ; preds = %bb.ld
  %i.bed = load ptr, ptr %57, align 8, !tbaa !72, !noalias !590
  %i.bee = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %55, ptr noundef %i.bed, i64 noundef %i.bdd)
          to label %.noexc1085 unwind label %.loopexit1675 ; 5 uses

.noexc1085:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i1080
  store ptr %i.ayf, ptr %54, align 8, !tbaa !66, !alias.scope !590
  %i.bef = load ptr, ptr %i.bee, align 8, !tbaa !72 ; 2 uses
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bee, i64 16 ; 5 uses
  %i.beh = icmp eq ptr %i.bef, %i.beg
  br i1 %i.beh, label %bb.lf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i
end_hunk_0
begin_hunk_1_@_ZN13InstDeVisitor5visitEP6AstPin:bb.a
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brm, i64 24
  %i.brr = load ptr, ptr %i.brq, align 8, !tbaa !29 ; 6 uses
  %.not.i1308 = icmp eq ptr %i.brr, null
  br i1 %.not.i1308, label %_ZN7AstNode2asI9AstVarRef11AstNodeExprEEPT_PT0_.exit, label %bb.np

bb.np:                                            ; preds = %_ZN7AstNode4castI11AstSliceSelS_EEPT_PT0_.exit
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brr, i64 64
  %.sroa.0.0.copyload.i.i.i1309 = load i16, ptr %i.brs, align 8, !tbaa !38
  %.not6.i1310 = icmp eq i16 %.sroa.0.0.copyload.i.i.i1309, 369
  br i1 %.not6.i1310, label %_ZN7AstNode2asI9AstVarRef11AstNodeExprEEPT_PT0_.exit, label %bb.nq, !prof !99

bb.nq:                                            ; preds = %bb.np
  %i.brt = getelementptr inbounds nuw i8, ptr %i.brr, i64 64
  %i.bru = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.26, i32 noundef 1063)
          to label %.noexc1313 unwind label %.loopexit.split-lp1726 ; 0 uses

.noexc1313:                                       ; preds = %bb.nq
  %i.brv = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc1314 unwind label %.loopexit.split-lp1726 ; 2 uses

.noexc1314:                                       ; preds = %.noexc1313
  %i.brw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.brv, ptr noundef nonnull @.str.27, i64 noundef 55)
          to label %.noexc1315 unwind label %.loopexit.split-lp1726 ; 0 uses

.noexc1315:                                       ; preds = %.noexc1314
  %.sroa.0.0.copyload.i.i5.i1311 = load i16, ptr %i.brt, align 8, !tbaa !38
  %i.brx = zext i16 %.sroa.0.0.copyload.i.i5.i1311 to i64
  %i.bry = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.brx
  %i.brz = load ptr, ptr %i.bry, align 8, !tbaa !63
  %i.bsa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.brv, ptr noundef %i.brz)
          to label %.noexc1316 unwind label %.loopexit.split-lp1726 ; 2 uses

.noexc1316:                                       ; preds = %.noexc1315
  %i.bsb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bsa, ptr noundef nonnull @.str.28, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1322.invoke unwind label %.loopexit.split-lp1726 ; 0 uses

_ZN7AstNode2asI9AstVarRef11AstNodeExprEEPT_PT0_.exit: ; preds = %bb.np, %_ZN7AstNode4castI11AstSliceSelS_EEPT_PT0_.exit
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.brm, i64 32
  %i.bsd = load ptr, ptr %i.bsc, align 8, !tbaa !58 ; 2 uses
  %.not.i1319 = icmp eq ptr %i.bsd, null
  br i1 %.not.i1319, label %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit.thread, label %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit, !prof !620

_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit: ; preds = %_ZN7AstNode2asI9AstVarRef11AstNodeExprEEPT_PT0_.exit
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bsd, i64 64
  %.sroa.0.0.copyload.i.i.i1320 = load i16, ptr %i.bse, align 8, !tbaa !38
  %i.bsf = icmp eq i16 %.sroa.0.0.copyload.i.i.i1320, 121
  br i1 %i.bsf, label %bb.nx, label %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit.thread, !prof !621

_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit.thread: ; preds = %_ZN7AstNode2asI9AstVarRef11AstNodeExprEEPT_PT0_.exit, %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit
  %i.bsg = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.2, i32 noundef 634)
          to label %bb.nr unwind label %.loopexit.split-lp1726 ; 0 uses

bb.nr:                                            ; preds = %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit.thread
  %i.bsh = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.ns unwind label %.loopexit.split-lp1726 ; 2 uses

bb.ns:                                            ; preds = %bb.nr
  %i.bsi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bsh, ptr noundef nonnull @.str.574, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1322.invoke unwind label %.loopexit.split-lp1726 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1322.invoke: ; preds = %bb.ns, %.noexc1316
  %i.bsj = phi ptr [ %i.brr, %.noexc1316 ], [ %i.brm, %bb.ns ]
  %i.bsk = phi ptr [ %i.bsa, %.noexc1316 ], [ %i.bsh, %bb.ns ]
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.bsj, ptr noundef nonnull align 8 dereferenceable(112) %i.bsk) #23
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1322.cont unwind label %.loopexit.split-lp1726

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1322.cont: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1322.invoke
  unreachable

bb.nt:                                            ; preds = %_ZN19InstDeModVarVisitor4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1135.thread1597
  %i.bsl = landingpad { ptr, i32 }
          cleanup
  br label %bb.pz

bb.nu:                                            ; preds = %.noexc.i.i1248
  %i.bsm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1337

.loopexit1705:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1251
  %lpad.loopexit1707 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1334

.loopexit.split-lp1706:                           ; preds = %bb.nc
  %lpad.loopexit.split-lp1708 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1334

bb.nv:                                            ; preds = %bb.ne
  %i.bsn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1331

.loopexit1710:                                    ; preds = %.critedge.i1267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i1261
  %lpad.loopexit1712 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1328

.loopexit.split-lp1711:                           ; preds = %bb.nj
  %lpad.loopexit.split-lp1713 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1328

.loopexit1715:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1276
  %lpad.loopexit1717 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1325

.loopexit.split-lp1716:                           ; preds = %bb.nl
  %lpad.loopexit.split-lp1718 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1325

bb.nw:                                            ; preds = %bb.nn
  %i.bso = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bsp = load ptr, ptr %64, align 8, !tbaa !72  ; 2 uses
  %i.bsq = icmp eq ptr %i.bsp, %i.azf
  br i1 %i.bsq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1323: ; preds = %bb.nw
  %i.bsr = load i64, ptr %i.azf, align 8, !tbaa !68
  %i.bss = add i64 %i.bsr, 1
  call void @_ZdlPvm(ptr noundef %i.bsp, i64 noundef %i.bss) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1325: ; preds = %bb.nw, %.loopexit1715, %.loopexit.split-lp1716, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1323
  %.pn404 = phi { ptr, i32 } [ %i.bso, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1323 ], [ %lpad.loopexit.split-lp1718, %.loopexit.split-lp1716 ], [ %lpad.loopexit1717, %.loopexit1715 ], [ %i.bso, %bb.nw ] ; 2 uses
  %i.bst = load ptr, ptr %65, align 8, !tbaa !72  ; 2 uses
  %i.bsu = icmp eq ptr %i.bst, %i.azd
  br i1 %i.bsu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1326: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1325
  %i.bsv = load i64, ptr %i.azd, align 8, !tbaa !68
  %i.bsw = add i64 %i.bsv, 1
  call void @_ZdlPvm(ptr noundef %i.bst, i64 noundef %i.bsw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1328: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1325, %.loopexit1710, %.loopexit.split-lp1711, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1326
  %.pn404.pn = phi { ptr, i32 } [ %.pn404, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1326 ], [ %lpad.loopexit.split-lp1713, %.loopexit.split-lp1711 ], [ %lpad.loopexit1712, %.loopexit1710 ], [ %.pn404, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1325 ] ; 2 uses
  %i.bsx = load ptr, ptr %68, align 8, !tbaa !72  ; 2 uses
  %i.bsy = icmp eq ptr %i.bsx, %i.azc
  br i1 %i.bsy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1329: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1328
  %i.bsz = load i64, ptr %i.azc, align 8, !tbaa !68
  %i.bta = add i64 %i.bsz, 1
  call void @_ZdlPvm(ptr noundef %i.bsx, i64 noundef %i.bta) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1328, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1329, %bb.nv
  %.pn404.pn.pn = phi { ptr, i32 } [ %i.bsn, %bb.nv ], [ %.pn404.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1329 ], [ %.pn404.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1328 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #24
  %i.btb = load ptr, ptr %66, align 8, !tbaa !72  ; 2 uses
  %i.btc = icmp eq ptr %i.btb, %i.ayz
  br i1 %i.btc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1332: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1331
  %i.btd = load i64, ptr %i.ayz, align 8, !tbaa !68
  %i.bte = add i64 %i.btd, 1
  call void @_ZdlPvm(ptr noundef %i.btb, i64 noundef %i.bte) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1334

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1334: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1331, %.loopexit1705, %.loopexit.split-lp1706, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1332
  %.pn404.pn.pn.pn = phi { ptr, i32 } [ %.pn404.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1332 ], [ %lpad.loopexit.split-lp1708, %.loopexit.split-lp1706 ], [ %lpad.loopexit1707, %.loopexit1705 ], [ %.pn404.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1331 ] ; 2 uses
  %i.btf = load ptr, ptr %67, align 8, !tbaa !72  ; 2 uses
  %i.btg = icmp eq ptr %i.btf, %i.ayx
  br i1 %i.btg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1335: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1334
  %i.bth = load i64, ptr %i.ayx, align 8, !tbaa !68
  %i.bti = add i64 %i.bth, 1
  call void @_ZdlPvm(ptr noundef %i.btf, i64 noundef %i.bti) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1337

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1337: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1334, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1335, %bb.nu
  %.pn404.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bsm, %bb.nu ], [ %.pn404.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1335 ], [ %.pn404.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1334 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #24
  br label %bb.pz

.loopexit1725:                                    ; preds = %bb.og, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1366, %bb.om
  %lpad.loopexit1727 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1726:                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1322.invoke, %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit.thread, %bb.nr, %bb.nq, %.noexc1313, %.noexc1315, %bb.ns, %.noexc1316, %.noexc1314
  %lpad.loopexit.split-lp1728 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.nx:                                            ; preds = %_ZN7AstNode2isI8AstConst11AstNodeExprEEbPKT0_.exit
  %i.btj = getelementptr inbounds nuw i8, ptr %i.brm, i64 160
  %i.btk = load i32, ptr %i.btj, align 8, !tbaa !59 ; 2 uses
  %i.btl = getelementptr inbounds nuw i8, ptr %i.brm, i64 164
  %i.btm = load i32, ptr %i.btl, align 4, !tbaa !61
  %i.btn = icmp slt i32 %i.btk, %i.btm
  %i.bto = select i1 %i.btn, i32 %.0338, i32 %76
  %i.btp = add nsw i32 %i.bto, %i.btk
  %i.btq = getelementptr inbounds nuw i8, ptr %i.brr, i64 72
  %i.btr = load ptr, ptr %i.btq, align 8, !tbaa !39
  %i.bts = invoke noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.btr, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %_ZN12AstNodeDType8skipRefpEv.exit1339 unwind label %.loopexit1720 ; 5 uses

_ZN12AstNodeDType8skipRefpEv.exit1339:            ; preds = %bb.nx
  %.not.i1340 = icmp eq ptr %i.bts, null
  br i1 %.not.i1340, label %bb.oa, label %bb.ny

bb.ny:                                            ; preds = %_ZN12AstNodeDType8skipRefpEv.exit1339
  %i.btt = getelementptr inbounds nuw i8, ptr %i.bts, i64 64
  %.sroa.0.0.copyload.i.i.i1341 = load i16, ptr %i.btt, align 8, !tbaa !38
  %.not6.i1342 = icmp eq i16 %.sroa.0.0.copyload.i.i.i1341, 99
  br i1 %.not6.i1342, label %_ZN7AstNode2asI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit, label %bb.nz, !prof !99

bb.nz:                                            ; preds = %bb.ny
  %i.btu = getelementptr inbounds nuw i8, ptr %i.bts, i64 64
  %i.btv = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.26, i32 noundef 1063)
          to label %.noexc1345 unwind label %.loopexit.split-lp1721 ; 0 uses

.noexc1345:                                       ; preds = %bb.nz
  %i.btw = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc1346 unwind label %.loopexit.split-lp1721 ; 2 uses

.noexc1346:                                       ; preds = %.noexc1345
  %i.btx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.btw, ptr noundef nonnull @.str.27, i64 noundef 55)
          to label %.noexc1347 unwind label %.loopexit.split-lp1721 ; 0 uses

.noexc1347:                                       ; preds = %.noexc1346
  %.sroa.0.0.copyload.i.i5.i1343 = load i16, ptr %i.btu, align 8, !tbaa !38
  %i.bty = zext i16 %.sroa.0.0.copyload.i.i5.i1343 to i64
  %i.btz = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.bty
  %i.bua = load ptr, ptr %i.btz, align 8, !tbaa !63
  %i.bub = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.btw, ptr noundef %i.bua)
          to label %.noexc1348 unwind label %.loopexit.split-lp1721 ; 2 uses

.noexc1348:                                       ; preds = %.noexc1347
  %i.buc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bub, ptr noundef nonnull @.str.28, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1352.invoke unwind label %.loopexit.split-lp1721 ; 0 uses

bb.oa:                                            ; preds = %_ZN12AstNodeDType8skipRefpEv.exit1339
  %i.bud = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.2, i32 noundef 639)
          to label %bb.ob unwind label %.loopexit.split-lp1721 ; 0 uses

bb.ob:                                            ; preds = %bb.oa
  %i.bue = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.oc unwind label %.loopexit.split-lp1721 ; 2 uses

bb.oc:                                            ; preds = %bb.ob
  %i.buf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bue, ptr noundef nonnull @.str.575, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1352.invoke unwind label %.loopexit.split-lp1721 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1352.invoke: ; preds = %bb.oc, %.noexc1348
  %i.bug = phi ptr [ %i.bts, %.noexc1348 ], [ %i.brm, %bb.oc ]
  %i.buh = phi ptr [ %i.bub, %.noexc1348 ], [ %i.bue, %bb.oc ]
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.bug, ptr noundef nonnull align 8 dereferenceable(112) %i.buh) #23
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1352.cont unwind label %.loopexit.split-lp1721

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1352.cont: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1352.invoke
  unreachable

.loopexit1720:                                    ; preds = %bb.nx, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i1359, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i1358
  %lpad.loopexit1722 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1721:                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1352.invoke, %bb.oa, %bb.ob, %bb.nz, %.noexc1345, %.noexc1347, %bb.oc, %.noexc1348, %.noexc1346
  %lpad.loopexit.split-lp1723 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN7AstNode2asI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit: ; preds = %bb.ny
  %i.bui = getelementptr inbounds nuw i8, ptr %i.bts, i64 32
  %i.buj = load ptr, ptr %i.bui, align 8, !tbaa !58 ; 2 uses
  %i.buk = getelementptr inbounds nuw i8, ptr %i.buj, i64 24
  %i.bul = load ptr, ptr %i.buk, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i.i1353 = icmp eq ptr %i.bul, null
  br i1 %.not.i.i.i.i1353, label %_ZNK8AstRange9leftConstEv.exit.i.i1355, label %bb.od

bb.od:                                            ; preds = %_ZN7AstNode2asI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit
  %i.bum = getelementptr inbounds nuw i8, ptr %i.bul, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i1354 = load i16, ptr %i.bum, align 8, !tbaa !38
  %i.bun = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i1354, 121
  br i1 %i.bun, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i1359, label %_ZNK8AstRange9leftConstEv.exit.i.i1355

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i1359: ; preds = %bb.od
  %i.buo = getelementptr inbounds nuw i8, ptr %i.bul, i64 152
  %i.bup = invoke noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.buo)
          to label %_ZNK8AstRange9leftConstEv.exit.i.i1355 unwind label %.loopexit1720

_ZNK8AstRange9leftConstEv.exit.i.i1355:           ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i1359, %bb.od, %_ZN7AstNode2asI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit
  %i.buq = phi i32 [ 0, %bb.od ], [ 0, %_ZN7AstNode2asI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit ], [ %i.bup, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i1359 ]
  %i.bur = getelementptr inbounds nuw i8, ptr %i.buj, i64 32
  %i.bus = load ptr, ptr %i.bur, align 8, !tbaa !58 ; 3 uses
  %.not.i.i4.i.i1356 = icmp eq ptr %i.bus, null
  br i1 %.not.i.i4.i.i1356, label %bb.of, label %bb.oe

bb.oe:                                            ; preds = %_ZNK8AstRange9leftConstEv.exit.i.i1355
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 64
  %.sroa.0.0.copyload.i.i.i.i5.i.i1357 = load i16, ptr %i.but, align 8, !tbaa !38
  %i.buu = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i5.i.i1357, 121
  br i1 %i.buu, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i1358, label %bb.of

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i1358: ; preds = %bb.oe
  %i.buv = getelementptr inbounds nuw i8, ptr %i.bus, i64 152
  %i.buw = invoke noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.buv)
          to label %bb.of unwind label %.loopexit1720

bb.of:                                            ; preds = %bb.oe, %_ZNK8AstRange9leftConstEv.exit.i.i1355, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i1358
  %i.bux = phi i32 [ 0, %bb.oe ], [ 0, %_ZNK8AstRange9leftConstEv.exit.i.i1355 ], [ %i.buw, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i1358 ]
  %i.buy = call noundef i32 @llvm.smin.i32(i32 %i.buq, i32 %i.bux)
  %i.buz = add nsw i32 %i.btp, %i.buy
  br label %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit1372.thread.sink.split

bb.og:                                            ; preds = %bb.no, %.thread1605
  %i.bva = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5)
          to label %bb.oh unwind label %.loopexit1725 ; 0 uses

bb.oh:                                            ; preds = %bb.og
  %i.bvb = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.bvc = icmp eq i8 %i.bvb, 0
  br i1 %i.bvc, label %bb.oi, label %bb.om, !prof !98

bb.oi:                                            ; preds = %bb.oh
  %i.bvd = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  %.not.i.i1363 = icmp eq i32 %i.bvd, 0
  br i1 %.not.i.i1363, label %bb.om, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.ok unwind label %bb.ol

bb.ok:                                            ; preds = %bb.oj
  %i.bve = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  br label %bb.om

bb.ol:                                            ; preds = %bb.oj
  %i.bvf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #24
  br label %.body

bb.om:                                            ; preds = %bb.ok, %bb.oi, %bb.oh
  %i.bvg = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.23, ptr nonnull @.str.518, i32 481, ptr null) ; 2 uses
  %i.bvh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bvg, ptr noundef nonnull @.str.571, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1366 unwind label %.loopexit1725 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1366: ; preds = %bb.om
  invoke void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.brm, ptr noundef nonnull align 8 dereferenceable(112) %i.bvg)
          to label %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit1372.thread unwind label %.loopexit1725

bb.on:                                            ; preds = %bb.no
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.brm, i64 72
  %i.bvj = load ptr, ptr %i.bvi, align 8, !tbaa !39
  %i.bvk = invoke noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.bvj, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %_ZN12AstNodeDType8skipRefpEv.exit1368 unwind label %bb.os ; 3 uses

_ZN12AstNodeDType8skipRefpEv.exit1368:            ; preds = %bb.on
  %.not.i1369 = icmp eq ptr %i.bvk, null
  br i1 %.not.i1369, label %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit1372.thread, label %bb.oo

bb.oo:                                            ; preds = %_ZN12AstNodeDType8skipRefpEv.exit1368
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.bvk, i64 64
  %.sroa.0.0.copyload.i.i.i1370 = load i16, ptr %i.bvl, align 8, !tbaa !38
  %i.bvm = icmp eq i16 %.sroa.0.0.copyload.i.i.i1370, 99
  br i1 %i.bvm, label %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit1372, label %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit1372.thread

_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit1372: ; preds = %bb.oo
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bvk, i64 32 ; 3 uses
  %i.bvo = load ptr, ptr %i.bvn, align 8, !tbaa !58 ; 3 uses
  %i.bvp = getelementptr inbounds nuw i8, ptr %i.bvo, i64 24
  %i.bvq = load ptr, ptr %i.bvp, align 8, !tbaa !29 ; 4 uses
  %.not.i.i.i1373 = icmp eq ptr %i.bvq, null
  br i1 %.not.i.i.i1373, label %_ZNK17AstNodeArrayDType4leftEv.exit.i1381, label %bb.op

bb.op:                                            ; preds = %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit1372
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.bvq, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i1374 = load i16, ptr %i.bvr, align 8, !tbaa !38
  %i.bvs = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i1374, 121
  br i1 %i.bvs, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i1376, label %_ZNK17AstNodeArrayDType4leftEv.exit1378.thread3575

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i1376: ; preds = %bb.op
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.bvq, i64 152
  %i.bvu = invoke noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bvt)
          to label %_ZNK17AstNodeArrayDType4leftEv.exit1378 unwind label %bb.os ; 2 uses

_ZNK17AstNodeArrayDType4leftEv.exit1378:          ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i1376
  %.pre3149 = load ptr, ptr %i.bvn, align 8, !tbaa !58 ; 3 uses
  %.phi.trans.insert3150 = getelementptr inbounds nuw i8, ptr %.pre3149, i64 24
  %.pre3151 = load ptr, ptr %.phi.trans.insert3150, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i1379 = icmp eq ptr %.pre3151, null
  br i1 %.not.i.i.i.i1379, label %_ZNK17AstNodeArrayDType4leftEv.exit.i1381, label %_ZNK17AstNodeArrayDType4leftEv.exit1378.thread3575

_ZNK17AstNodeArrayDType4leftEv.exit1378.thread3575: ; preds = %bb.op, %_ZNK17AstNodeArrayDType4leftEv.exit1378
  %i.bvv = phi i32 [ %i.bvu, %_ZNK17AstNodeArrayDType4leftEv.exit1378 ], [ 0, %bb.op ] ; 2 uses
  %i.bvw = phi ptr [ %.pre3149, %_ZNK17AstNodeArrayDType4leftEv.exit1378 ], [ %i.bvo, %bb.op ]
  %i.bvx = phi ptr [ %.pre3151, %_ZNK17AstNodeArrayDType4leftEv.exit1378 ], [ %i.bvq, %bb.op ] ; 2 uses
  %i.bvy = getelementptr inbounds nuw i8, ptr %i.bvx, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i1380 = load i16, ptr %i.bvy, align 8, !tbaa !38
  %i.bvz = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i1380, 121
  br i1 %i.bvz, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i1389, label %_ZNK17AstNodeArrayDType4leftEv.exit.i1381

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i1389: ; preds = %_ZNK17AstNodeArrayDType4leftEv.exit1378.thread3575
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.bvx, i64 152
  %i.bwb = invoke noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bwa)
          to label %.noexc1391 unwind label %bb.ot

.noexc1391:                                       ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i1389
  %i.bwc = zext i32 %i.bwb to i64
  %.pre.i1390 = load ptr, ptr %i.bvn, align 8, !tbaa !58
  br label %_ZNK17AstNodeArrayDType4leftEv.exit.i1381

_ZNK17AstNodeArrayDType4leftEv.exit.i1381:        ; preds = %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit1372, %.noexc1391, %_ZNK17AstNodeArrayDType4leftEv.exit1378.thread3575, %_ZNK17AstNodeArrayDType4leftEv.exit1378
  %i.bwd = phi i32 [ %i.bvv, %.noexc1391 ], [ %i.bvu, %_ZNK17AstNodeArrayDType4leftEv.exit1378 ], [ %i.bvv, %_ZNK17AstNodeArrayDType4leftEv.exit1378.thread3575 ], [ 0, %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit1372 ]
  %i.bwe = phi ptr [ %.pre.i1390, %.noexc1391 ], [ %.pre3149, %_ZNK17AstNodeArrayDType4leftEv.exit1378 ], [ %i.bvw, %_ZNK17AstNodeArrayDType4leftEv.exit1378.thread3575 ], [ %i.bvo, %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit1372 ]
  %.sroa.0.0.insert.ext.i1382 = phi i64 [ %i.bwc, %.noexc1391 ], [ 0, %_ZNK17AstNodeArrayDType4leftEv.exit1378 ], [ 0, %_ZNK17AstNodeArrayDType4leftEv.exit1378.thread3575 ], [ 0, %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit1372 ] ; 3 uses
  %i.bwf = getelementptr inbounds nuw i8, ptr %i.bwe, i64 32
  %i.bwg = load ptr, ptr %i.bwf, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i1.i1383 = icmp eq ptr %i.bwg, null
  br i1 %.not.i.i.i1.i1383, label %bb.or, label %bb.oq

bb.oq:                                            ; preds = %_ZNK17AstNodeArrayDType4leftEv.exit.i1381
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.bwg, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i2.i1384 = load i16, ptr %i.bwh, align 8, !tbaa !38
  %i.bwi = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i2.i1384, 121
  br i1 %i.bwi, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i3.i1388, label %bb.or

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i3.i1388: ; preds = %bb.oq
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwg, i64 152
  %i.bwk = invoke noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bwj)
          to label %.noexc1392 unwind label %bb.ot

.noexc1392:                                       ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i3.i1388
  %i.bwl = zext i32 %i.bwk to i64
  %i.bwm = shl nuw i64 %i.bwl, 32
  %i.bwn = or disjoint i64 %i.bwm, %.sroa.0.0.insert.ext.i1382
  br label %bb.or

bb.or:                                            ; preds = %_ZNK17AstNodeArrayDType4leftEv.exit.i1381, %bb.oq, %.noexc1392
  %.sroa.2.0.insert.ext.i1385 = phi i64 [ %i.bwn, %.noexc1392 ], [ %.sroa.0.0.insert.ext.i1382, %_ZNK17AstNodeArrayDType4leftEv.exit.i1381 ], [ %.sroa.0.0.insert.ext.i1382, %bb.oq ] ; 2 uses
  %.sroa.01511.0.extract.trunc = trunc i64 %.sroa.2.0.insert.ext.i1385 to i32
  %.sroa.01511.4.extract.shift = lshr i64 %.sroa.2.0.insert.ext.i1385, 32
  %.sroa.01511.4.extract.trunc = trunc nuw i64 %.sroa.01511.4.extract.shift to i32
  %i.bwo = icmp slt i32 %.sroa.01511.0.extract.trunc, %.sroa.01511.4.extract.trunc
  %i.bwp = select i1 %i.bwo, i32 %.0338, i32 %76
  %i.bwq = add nsw i32 %i.bwp, %i.bwd
  br label %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit1372.thread.sink.split

bb.os:                                            ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i1376, %bb.on
  %i.bwr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ot:                                            ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i3.i1388, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i1389
  %i.bws = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit1372.thread.sink.split: ; preds = %bb.of, %bb.or
  %.sink = phi i32 [ %i.bwq, %bb.or ], [ %i.buz, %bb.of ]
  %.0.ph = phi ptr [ %i.brm, %bb.or ], [ %i.brr, %bb.of ]
  store i32 %.sink, ptr %i.m, align 4, !tbaa !115
  br label %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit1372.thread

_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit1372.thread: ; preds = %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit1372.thread.sink.split, %bb.oo, %_ZN12AstNodeDType8skipRefpEv.exit1368, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1366
  %.0 = phi ptr [ %i.brm, %_ZN12AstNodeDType8skipRefpEv.exit1368 ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1366 ], [ %i.brm, %bb.oo ], [ %.0.ph, %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit1372.thread.sink.split ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %i.bwt = getelementptr inbounds nuw i8, ptr %.0, i64 152
  %i.bwu = load ptr, ptr %i.bwt, align 8, !tbaa !40, !noalias !622 ; 3 uses
  %.not.i1394 = icmp eq ptr %i.bwu, null
  br i1 %.not.i1394, label %bb.ox, label %bb.ou

bb.ou:                                            ; preds = %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit1372.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.bwv = getelementptr inbounds nuw i8, ptr %i.bwu, i64 152
  store ptr %i.azh, ptr %72, align 8, !tbaa !66, !alias.scope !628
  %i.bww = load ptr, ptr %i.bwv, align 8, !tbaa !72, !noalias !625 ; 2 uses
  %i.bwx = getelementptr inbounds nuw i8, ptr %i.bwu, i64 160
  %i.bwy = load i64, ptr %i.bwx, align 8, !tbaa !67, !noalias !625 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !628
  store i64 %i.bwy, ptr %i.b, align 8, !tbaa !79, !noalias !628
  %i.bwz = icmp ugt i64 %i.bwy, 15
  br i1 %i.bwz, label %.noexc.i.i.i1397, label %._crit_edge.i.i.i.i1395

.noexc.i.i.i1397:                                 ; preds = %bb.ou
  %i.bxa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc1401 unwind label %bb.pr ; 2 uses

.noexc1401:                                       ; preds = %.noexc.i.i.i1397
  store ptr %i.bxa, ptr %72, align 8, !tbaa !72, !alias.scope !628
  %i.bxb = load i64, ptr %i.b, align 8, !tbaa !79, !noalias !628
  store i64 %i.bxb, ptr %i.azh, align 8, !tbaa !68, !alias.scope !628
  br label %._crit_edge.i.i.i.i1395

._crit_edge.i.i.i.i1395:                          ; preds = %.noexc1401, %bb.ou
  %i.bxc = phi ptr [ %i.bxa, %.noexc1401 ], [ %i.azh, %bb.ou ] ; 2 uses
  switch i64 %i.bwy, label %bb.ow [
    i64 1, label %bb.ov
    i64 0, label %_ZNK6AstVar4nameB5cxx11Ev.exit.i1396
  ]

bb.ov:                                            ; preds = %._crit_edge.i.i.i.i1395
  %i.bxd = load i8, ptr %i.bww, align 1, !tbaa !68
  store i8 %i.bxd, ptr %i.bxc, align 1, !tbaa !68
  br label %_ZNK6AstVar4nameB5cxx11Ev.exit.i1396

bb.ow:                                            ; preds = %._crit_edge.i.i.i.i1395
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bxc, ptr align 1 %i.bww, i64 %i.bwy, i1 false)
  br label %_ZNK6AstVar4nameB5cxx11Ev.exit.i1396

_ZNK6AstVar4nameB5cxx11Ev.exit.i1396:             ; preds = %bb.ow, %bb.ov, %._crit_edge.i.i.i.i1395
  %i.bxe = load i64, ptr %i.b, align 8, !tbaa !79, !noalias !628 ; 2 uses
  store i64 %i.bxe, ptr %i.azi, align 8, !tbaa !67, !alias.scope !628
  %i.bxf = load ptr, ptr %72, align 8, !tbaa !72, !alias.scope !628
  %i.bxg = getelementptr inbounds nuw i8, ptr %i.bxf, i64 %i.bxe
  store i8 0, ptr %i.bxg, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !628
  br label %_ZNK9AstVarRef4nameB5cxx11Ev.exit1403

bb.ox:                                            ; preds = %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_.exit1372.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.bxh = getelementptr inbounds nuw i8, ptr %.0, i64 200
  store ptr %i.azh, ptr %72, align 8, !tbaa !66, !alias.scope !632
  %i.bxi = load ptr, ptr %i.bxh, align 8, !tbaa !72, !noalias !632 ; 2 uses
  %i.bxj = getelementptr inbounds nuw i8, ptr %.0, i64 208
  %i.bxk = load i64, ptr %i.bxj, align 8, !tbaa !67, !noalias !632 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !632
  store i64 %i.bxk, ptr %i.a, align 8, !tbaa !79, !noalias !632
  %i.bxl = icmp ugt i64 %i.bxk, 15
  br i1 %i.bxl, label %.noexc.i.i2.i1400, label %._crit_edge.i.i.i1.i1398

.noexc.i.i2.i1400:                                ; preds = %bb.ox
  %i.bxm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc1402 unwind label %bb.pr ; 2 uses

.noexc1402:                                       ; preds = %.noexc.i.i2.i1400
  store ptr %i.bxm, ptr %72, align 8, !tbaa !72, !alias.scope !632
  %i.bxn = load i64, ptr %i.a, align 8, !tbaa !79, !noalias !632
  store i64 %i.bxn, ptr %i.azh, align 8, !tbaa !68, !alias.scope !632
  br label %._crit_edge.i.i.i1.i1398

._crit_edge.i.i.i1.i1398:                         ; preds = %.noexc1402, %bb.ox
  %i.bxo = phi ptr [ %i.bxm, %.noexc1402 ], [ %i.azh, %bb.ox ] ; 2 uses
  switch i64 %i.bxk, label %bb.oz [
    i64 1, label %bb.oy
    i64 0, label %_ZNK9AstVarRef8nameThisB5cxx11Ev.exit.i1399
  ]

bb.oy:                                            ; preds = %._crit_edge.i.i.i1.i1398
  %i.bxp = load i8, ptr %i.bxi, align 1, !tbaa !68
  store i8 %i.bxp, ptr %i.bxo, align 1, !tbaa !68
  br label %_ZNK9AstVarRef8nameThisB5cxx11Ev.exit.i1399

bb.oz:                                            ; preds = %._crit_edge.i.i.i1.i1398
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bxo, ptr align 1 %i.bxi, i64 %i.bxk, i1 false)
  br label %_ZNK9AstVarRef8nameThisB5cxx11Ev.exit.i1399

_ZNK9AstVarRef8nameThisB5cxx11Ev.exit.i1399:      ; preds = %bb.oz, %bb.oy, %._crit_edge.i.i.i1.i1398
  %i.bxq = load i64, ptr %i.a, align 8, !tbaa !79, !noalias !632 ; 2 uses
  store i64 %i.bxq, ptr %i.azi, align 8, !tbaa !67, !alias.scope !632
  %i.bxr = load ptr, ptr %72, align 8, !tbaa !72, !alias.scope !632
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.bxr, i64 %i.bxq
  store i8 0, ptr %i.bxs, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !632
  br label %_ZNK9AstVarRef4nameB5cxx11Ev.exit1403

_ZNK9AstVarRef4nameB5cxx11Ev.exit1403:            ; preds = %_ZNK9AstVarRef8nameThisB5cxx11Ev.exit.i1399, %_ZNK6AstVar4nameB5cxx11Ev.exit.i1396
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.bxt = load i64, ptr %i.azi, align 8, !tbaa !67, !noalias !633
  %i.bxu = add i64 %i.bxt, -4611686018427387897
  %i.bxv = icmp ult i64 %i.bxu, 7
  br i1 %i.bxv, label %bb.pa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1404

bb.pa:                                            ; preds = %_ZNK9AstVarRef4nameB5cxx11Ev.exit1403
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.515) #23
          to label %.noexc1409 unwind label %.loopexit.split-lp1731

.noexc1409:                                       ; preds = %bb.pa
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1404: ; preds = %_ZNK9AstVarRef4nameB5cxx11Ev.exit1403
  %i.bxw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull @.str.545, i64 noundef 7)
          to label %.noexc1410 unwind label %.loopexit1730 ; 6 uses

.noexc1410:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1404
  store ptr %i.azj, ptr %71, align 8, !tbaa !66, !alias.scope !633
  %i.bxx = load ptr, ptr %i.bxw, align 8, !tbaa !72 ; 2 uses
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.bxw, i64 16 ; 5 uses
  %i.bxz = icmp eq ptr %i.bxx, %i.bxy
  br i1 %i.bxz, label %bb.pb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1405

bb.pb:                                            ; preds = %.noexc1410
  %i.bya = getelementptr inbounds nuw i8, ptr %i.bxw, i64 8
  %i.byb = load i64, ptr %i.bya, align 8, !tbaa !67 ; 3 uses
  %i.byc = icmp ult i64 %i.byb, 16
  call void @llvm.assume(i1 %i.byc)
  %i.byd = add nuw nsw i64 %i.byb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.azj, ptr noundef nonnull align 8 dereferenceable(1) %i.bxy, i64 %i.byd, i1 false)
  br label %bb.pc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1405: ; preds = %.noexc1410
  store ptr %i.bxx, ptr %71, align 8, !tbaa !72, !alias.scope !633
  %i.bye = load i64, ptr %i.bxy, align 8, !tbaa !68
  store i64 %i.bye, ptr %i.azj, align 8, !tbaa !68, !alias.scope !633
  %.phi.trans.insert.i1406 = getelementptr inbounds nuw i8, ptr %i.bxw, i64 8
  %.pre.i1407 = load i64, ptr %.phi.trans.insert.i1406, align 8, !tbaa !67
  br label %bb.pc

bb.pc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1405, %bb.pb
  %i.byf = phi i64 [ %i.byb, %bb.pb ], [ %.pre.i1407, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1405 ]
  %i.byg = getelementptr inbounds nuw i8, ptr %i.bxw, i64 8
  store i64 %i.byf, ptr %i.azk, align 8, !tbaa !67, !alias.scope !633
  store ptr %i.bxy, ptr %i.bxw, align 8, !tbaa !72
  store i64 0, ptr %i.byg, align 8, !tbaa !67
  store i8 0, ptr %i.bxy, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #24
  invoke void @_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %73, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
          to label %bb.pd unwind label %bb.ps

bb.pd:                                            ; preds = %bb.pc
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.byh = load i64, ptr %i.azk, align 8, !tbaa !67, !noalias !636 ; 4 uses
  %i.byi = load i64, ptr %i.azl, align 8, !tbaa !67, !noalias !636 ; 4 uses
  %i.byj = add i64 %i.byi, %i.byh                 ; 2 uses
  %i.byk = load ptr, ptr %71, align 8, !tbaa !72, !noalias !636 ; 2 uses
  %i.byl = icmp eq ptr %i.byk, %i.azj
  br i1 %i.byl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1424, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1424: ; preds = %bb.pd
  %i.bym = icmp ult i64 %i.byh, 16
  call void @llvm.assume(i1 %i.bym)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1413

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412: ; preds = %bb.pd
  %i.byn = load i64, ptr %i.azj, align 8, !tbaa !68, !noalias !636
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1413

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1413: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1424
  %i.byo = phi i64 [ %i.byn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1412 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1424 ]
  %i.byp = icmp ugt i64 %i.byj, %i.byo
  br i1 %i.byp, label %bb.pe, label %bb.pg
end_hunk_1
