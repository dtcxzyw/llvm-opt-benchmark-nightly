Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmFindPackageCommand?download=true
inline.NumInlined: 7454
inline.NumDeleted: 2181
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN20cmFindPackageCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE:bb.a

bb.jb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788
  %i.atk = getelementptr inbounds nuw i8, ptr %27, i64 296
  %i.atl = load ptr, ptr %i.atk, align 8, !tbaa !55, !noalias !552
  %i.atm = ptrtoint ptr %i.atl to i64
  %i.atn = ptrtoint ptr %i.ath to i64
  %i.ato = sub i64 %i.atm, %i.atn                 ; 4 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 3 uses
  store ptr %i.atp, ptr %61, align 8, !tbaa !36, !alias.scope !552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31, !noalias !552
  store i64 %i.ato, ptr %i.c, align 8, !tbaa !38, !noalias !552
  %i.atq = icmp ugt i64 %i.ato, 15
  br i1 %i.atq, label %.noexc.i.i.i791, label %._crit_edge.i.i.i.i790

.noexc.i.i.i791:                                  ; preds = %bb.jb
  %i.atr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc792 unwind label %bb.jq ; 2 uses

.noexc792:                                        ; preds = %.noexc.i.i.i791
  store ptr %i.atr, ptr %61, align 8, !tbaa !40, !alias.scope !552
  %i.ats = load i64, ptr %i.c, align 8, !tbaa !38, !noalias !552
  store i64 %i.ats, ptr %i.atp, align 8, !tbaa !41, !alias.scope !552
  br label %._crit_edge.i.i.i.i790

._crit_edge.i.i.i.i790:                           ; preds = %.noexc792, %bb.jb
  %i.att = phi ptr [ %i.atr, %.noexc792 ], [ %i.atp, %bb.jb ] ; 2 uses
  switch i64 %i.ato, label %bb.jd [
    i64 1, label %bb.jc
    i64 0, label %bb.je
  ]

bb.jc:                                            ; preds = %._crit_edge.i.i.i.i790
  %i.atu = load i8, ptr %i.ath, align 1, !tbaa !41
  store i8 %i.atu, ptr %i.att, align 1, !tbaa !41
  br label %bb.je

bb.jd:                                            ; preds = %._crit_edge.i.i.i.i790
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.att, ptr nonnull align 1 %i.ath, i64 %i.ato, i1 false)
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.jc, %._crit_edge.i.i.i.i790
  %i.atv = load i64, ptr %i.c, align 8, !tbaa !38, !noalias !552 ; 2 uses
  %i.atw = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i64 %i.atv, ptr %i.atw, align 8, !tbaa !42, !alias.scope !552
  %i.atx = load ptr, ptr %61, align 8, !tbaa !40, !alias.scope !552
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atx, i64 %i.atv
  store i8 0, ptr %i.aty, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31, !noalias !552
  br label %_ZNK5cmsys17RegularExpression5matchB5cxx11Ei.exit793

_ZNK5cmsys17RegularExpression5matchB5cxx11Ei.exit793: ; preds = %bb.je, %bb.ja
  %i.atz = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 4 uses
  %i.aua = load ptr, ptr %i.atz, align 8, !tbaa !40 ; 6 uses
  %i.aub = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.auc = icmp eq ptr %i.aua, %i.aub
  %i.aud = load ptr, ptr %61, align 8, !tbaa !40  ; 5 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 4 uses
  %i.auf = icmp eq ptr %i.aud, %i.aue             ; 2 uses
  br i1 %i.auc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i799, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i794

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i799: ; preds = %_ZNK5cmsys17RegularExpression5matchB5cxx11Ei.exit793
  br i1 %i.auf, label %bb.jf, label %.thread.i800

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i794: ; preds = %_ZNK5cmsys17RegularExpression5matchB5cxx11Ei.exit793
  br i1 %i.auf, label %bb.jf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i795

bb.jf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i794, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i799
  %i.aug = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  %i.auh = load i64, ptr %i.aug, align 8, !tbaa !42 ; 3 uses
  %i.aui = icmp ult i64 %i.auh, 16
  call void @llvm.assume(i1 %i.aui)
  switch i64 %i.auh, label %bb.jh [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i797
    i64 1, label %bb.jg
  ]

bb.jg:                                            ; preds = %bb.jf
  %i.auj = load i8, ptr %i.aud, align 1, !tbaa !41
  store i8 %i.auj, ptr %i.aua, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i797

bb.jh:                                            ; preds = %bb.jf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aua, ptr align 1 %i.aud, i64 %i.auh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i797

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i797: ; preds = %bb.jh, %bb.jg, %bb.jf
  %i.auk = load i64, ptr %i.aug, align 8, !tbaa !42 ; 2 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i64 %i.auk, ptr %i.aul, align 8, !tbaa !42
  %i.aum = load ptr, ptr %i.atz, align 8, !tbaa !40
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 %i.auk
  store i8 0, ptr %i.aun, align 1, !tbaa !41
  %.pre.i798 = load ptr, ptr %61, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit801

.thread.i800:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i799
  %i.auo = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.aud, ptr %i.atz, align 8, !tbaa !40
  %i.aup = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.auq = load <2 x i64>, ptr %i.aup, align 8, !tbaa !41
  store <2 x i64> %i.auq, ptr %i.auo, align 8, !tbaa !41
  br label %bb.jj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i795: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i794
  %i.aur = load i64, ptr %i.aub, align 8, !tbaa !41
  store ptr %i.aud, ptr %i.atz, align 8, !tbaa !40
  %i.aus = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.aut = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.auu = load <2 x i64>, ptr %i.aus, align 8, !tbaa !41
  store <2 x i64> %i.auu, ptr %i.aut, align 8, !tbaa !41
  %.not.i796 = icmp eq ptr %i.aua, null
  br i1 %.not.i796, label %bb.jj, label %bb.ji

bb.ji:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i795
  store ptr %i.aua, ptr %61, align 8, !tbaa !40
  store i64 %i.aur, ptr %i.aue, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit801

bb.jj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i795, %.thread.i800
  store ptr %i.aue, ptr %61, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit801

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit801: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i797, %bb.ji, %bb.jj
  %i.auv = phi ptr [ %i.aua, %bb.ji ], [ %i.aue, %bb.jj ], [ %.pre.i798, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i797 ]
  %i.auw = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i64 0, ptr %i.auw, align 8, !tbaa !42
  store i8 0, ptr %i.auv, align 1, !tbaa !41
  %i.aux = load ptr, ptr %61, align 8, !tbaa !40  ; 2 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  %i.auz = icmp eq ptr %i.aux, %i.auy
  br i1 %i.auz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit804, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i802

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i802: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit801
  %i.ava = load i64, ptr %i.auy, align 8, !tbaa !41
  %i.avb = add i64 %i.ava, 1
  call void @_ZdlPvm(ptr noundef %i.aux, i64 noundef %i.avb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit804

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit804: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit801, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i802
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %i.avc = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.avd = load ptr, ptr %i.avc, align 8, !tbaa !55, !noalias !555 ; 4 uses
  %.not.i.i805 = icmp eq ptr %i.avd, null
  br i1 %.not.i.i805, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i814.thread, label %bb.jk

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i814.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit804
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #31
  br label %bb.js

bb.jk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit804
  %i.ave = getelementptr inbounds nuw i8, ptr %27, i64 288
  %i.avf = load ptr, ptr %i.ave, align 8, !tbaa !55, !noalias !555
  %i.avg = ptrtoint ptr %i.avf to i64
  %i.avh = ptrtoint ptr %i.avd to i64
  %i.avi = sub i64 %i.avg, %i.avh                 ; 4 uses
  %i.avj = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 3 uses
  store ptr %i.avj, ptr %62, align 8, !tbaa !36, !alias.scope !555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31, !noalias !555
  store i64 %i.avi, ptr %i.b, align 8, !tbaa !38, !noalias !555
  %i.avk = icmp ugt i64 %i.avi, 15
  br i1 %i.avk, label %.noexc.i.i.i807, label %._crit_edge.i.i.i.i806

.noexc.i.i.i807:                                  ; preds = %bb.jk
  %i.avl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc808 unwind label %bb.jr ; 2 uses

.noexc808:                                        ; preds = %.noexc.i.i.i807
  store ptr %i.avl, ptr %62, align 8, !tbaa !40, !alias.scope !555
  %i.avm = load i64, ptr %i.b, align 8, !tbaa !38, !noalias !555
  store i64 %i.avm, ptr %i.avj, align 8, !tbaa !41, !alias.scope !555
  br label %._crit_edge.i.i.i.i806

._crit_edge.i.i.i.i806:                           ; preds = %.noexc808, %bb.jk
  %i.avn = phi ptr [ %i.avl, %.noexc808 ], [ %i.avj, %bb.jk ] ; 2 uses
  switch i64 %i.avi, label %bb.jm [
    i64 1, label %bb.jl
    i64 0, label %bb.jn
  ]

bb.jl:                                            ; preds = %._crit_edge.i.i.i.i806
  %i.avo = load i8, ptr %i.avd, align 1, !tbaa !41
  store i8 %i.avo, ptr %i.avn, align 1, !tbaa !41
  br label %bb.jn

bb.jm:                                            ; preds = %._crit_edge.i.i.i.i806
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.avn, ptr nonnull align 1 %i.avd, i64 %i.avi, i1 false)
  br label %bb.jn

bb.jn:                                            ; preds = %._crit_edge.i.i.i.i806, %bb.jl, %bb.jm
  %i.avp = load i64, ptr %i.b, align 8, !tbaa !38, !noalias !555 ; 2 uses
  %i.avq = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 2 uses
  store i64 %i.avp, ptr %i.avq, align 8, !tbaa !42, !alias.scope !555
  %i.avr = load ptr, ptr %62, align 8, !tbaa !40, !alias.scope !555
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avr, i64 %i.avp
  store i8 0, ptr %i.avs, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31, !noalias !555
  %.pre1147 = load ptr, ptr %62, align 8, !tbaa !40 ; 3 uses
  %.pre1148 = load i64, ptr %i.avq, align 8, !tbaa !42
  %i.avt = icmp eq i64 %.pre1148, 1
  br i1 %i.avt, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.jn
  %lhsc = load i8, ptr %.pre1147, align 1
  %i.avu = icmp eq i8 %lhsc, 60
  br label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.jn
  %i.avv = phi i1 [ false, %bb.jn ], [ %i.avu, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ] ; 2 uses
  %i.avw = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  %i.avx = icmp eq ptr %.pre1147, %i.avw
  br i1 %i.avx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i814, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i814: ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #31
  br i1 %i.avv, label %bb.jo, label %bb.js

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815: ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit
  %i.avy = load i64, ptr %i.avw, align 8, !tbaa !41
  %i.avz = add i64 %i.avy, 1
  call void @_ZdlPvm(ptr noundef %.pre1147, i64 noundef %i.avz) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #31
  br i1 %i.avv, label %bb.jo, label %bb.js

bb.jo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i814, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815
  %i.awa = getelementptr inbounds nuw i8, ptr %0, i64 648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.awa, ptr noundef nonnull align 8 dereferenceable(16) @_ZN20cmFindPackageCommand25VERSION_ENDPOINT_EXCLUDEDE, i64 16, i1 false), !tbaa.struct !56
  br label %bb.js

bb.jp:                                            ; preds = %.noexc.i.i.i
  %i.awb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #31
  br label %bb.ls

bb.jq:                                            ; preds = %.noexc.i.i.i791
  %i.awc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #31
  br label %bb.ls

bb.jr:                                            ; preds = %.noexc.i.i.i807
  %i.awd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #31
  br label %bb.ls

bb.js:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i814.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i814, %bb.jo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815
  %i.awe = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.awf = load i64, ptr %i.awe, align 8, !tbaa !42
  %i.awg = icmp eq i64 %i.awf, 0
  br i1 %i.awg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit820, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.awh = getelementptr inbounds nuw i8, ptr %0, i64 600
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.awh, ptr noundef nonnull align 8 dereferenceable(32) %i.ale)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit820 unwind label %bb.im

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit820: ; preds = %bb.jt, %bb.js, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i765
  %i.awi = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.awj = load i64, ptr %i.awi, align 8, !tbaa !42
  %i.awk = icmp eq i64 %i.awj, 0
  br i1 %i.awk, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit827.thread, label %bb.ju

bb.ju:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit820
  %i.awl = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %.sroa.018.0.copyload = load i64, ptr %i.awl, align 8, !tbaa !38
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.awm = icmp eq i64 %.sroa.018.0.copyload, 7
  br i1 %i.awm, label %bb.jv, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit827.thread

bb.jv:                                            ; preds = %bb.ju
  %.sroa.219.0.copyload = load ptr, ptr %.sroa.219.0..sroa_idx, align 8, !tbaa !55 ; 2 uses
  %i.awn = load i32, ptr %.sroa.219.0.copyload, align 1
  %i.awo = xor i32 %i.awn, 1279479369
  %i.awp = getelementptr i8, ptr %.sroa.219.0.copyload, i64 3
  %i.awq = load i32, ptr %i.awp, align 1
  %i.awr = xor i32 %i.awq, 1162106188
  %i.aws = or i32 %i.awo, %i.awr
  %i.awt = icmp ne i32 %i.aws, 0
  %i.awu = zext i1 %i.awt to i32
  %i.awv = icmp eq i32 %i.awu, 0
  br i1 %i.awv, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.thread

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit: ; preds = %bb.jv
  %i.aww = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.awx = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.awy = invoke noundef zeroext i1 @_ZN13cmSystemTools21VersionCompareGreaterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %i.aww, ptr noundef nonnull align 8 dereferenceable(32) %i.awx)
          to label %bb.jw unwind label %bb.im

bb.jw:                                            ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit
  br i1 %i.awy, label %bb.jy, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread: ; preds = %bb.jw
  %.sroa.014.0.copyload.pr.pre = load i64, ptr %i.awl, align 8, !tbaa !38
  %i.awz = icmp eq i64 %.sroa.014.0.copyload.pr.pre, 7
  br i1 %i.awz, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.thread, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit827.thread

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.thread: ; preds = %bb.jv, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread
  %.sroa.215.0.copyload = load ptr, ptr %.sroa.219.0..sroa_idx, align 8, !tbaa !55 ; 2 uses
  %i.axa = load i32, ptr %.sroa.215.0.copyload, align 1
  %i.axb = xor i32 %i.axa, 1279481925
  %i.axc = getelementptr i8, ptr %.sroa.215.0.copyload, i64 3
  %i.axd = load i32, ptr %i.axc, align 1
  %i.axe = xor i32 %i.axd, 1162106188
  %i.axf = or i32 %i.axb, %i.axe
  %i.axg = icmp ne i32 %i.axf, 0
  %i.axh = zext i1 %i.axg to i32
  %i.axi = icmp eq i32 %i.axh, 0
  br i1 %i.axi, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit827, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit827.thread

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit827: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.thread
  %i.axj = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.axk = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.axl = invoke noundef zeroext i1 @_ZN13cmSystemTools23VersionCompareGreaterEqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %i.axj, ptr noundef nonnull align 8 dereferenceable(32) %i.axk)
          to label %bb.jx unwind label %bb.im

bb.jx:                                            ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit827
  br i1 %i.axl, label %bb.jy, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit827.thread

bb.jy:                                            ; preds = %bb.jx, %bb.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull @.str.90, ptr noundef nonnull align 1 dereferenceable(1) %64)
          to label %bb.jz unwind label %bb.kb

bb.jz:                                            ; preds = %bb.jy
  invoke void @_ZN12cmFindCommon8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(32) %63)
          to label %bb.ka unwind label %bb.kc

bb.ka:                                            ; preds = %bb.jz
  %i.axm = load ptr, ptr %63, align 8, !tbaa !40  ; 2 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  %i.axo = icmp eq ptr %i.axm, %i.axn
  br i1 %i.axo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit830, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i828

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i828: ; preds = %bb.ka
  %i.axp = load i64, ptr %i.axn, align 8, !tbaa !41
  %i.axq = add i64 %i.axp, 1
  call void @_ZdlPvm(ptr noundef %i.axm, i64 noundef %i.axq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit830

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit830: ; preds = %bb.ka, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i828
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #31
  br label %bb.lq

bb.kb:                                            ; preds = %bb.jy
  %i.axr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit833

bb.kc:                                            ; preds = %bb.jz
  %i.axs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.axt = load ptr, ptr %63, align 8, !tbaa !40  ; 2 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  %i.axv = icmp eq ptr %i.axt, %i.axu
  br i1 %i.axv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit833, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i831

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i831: ; preds = %bb.kc
  %i.axw = load i64, ptr %i.axu, align 8, !tbaa !41
  %i.axx = add i64 %i.axw, 1
  call void @_ZdlPvm(ptr noundef %i.axt, i64 noundef %i.axx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit833

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit833: ; preds = %bb.kc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i831, %bb.kb
  %.pn325 = phi { ptr, i32 } [ %i.axr, %bb.kb ], [ %i.axs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i831 ], [ %i.axs, %bb.kc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #31
  br label %bb.ls

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit827.thread: ; preds = %bb.ju, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread.thread, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread, %bb.jx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit820
  %i.axy = getelementptr inbounds nuw i8, ptr %0, i64 772
  %i.axz = load i8, ptr %i.axy, align 4, !tbaa !214, !range !191, !noundef !192
  %i.aya = trunc nuw i8 %i.axz to i1
  br i1 %i.aya, label %bb.kd, label %bb.kj

bb.kd:                                            ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit827.thread
  %i.ayb = load i64, ptr %i.awi, align 8, !tbaa !42
  %i.ayc = icmp eq i64 %i.ayb, 0
  br i1 %i.ayc, label %bb.kj, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull @.str.91, ptr noundef nonnull align 1 dereferenceable(1) %66)
          to label %bb.kf unwind label %bb.kh

bb.kf:                                            ; preds = %bb.ke
  invoke void @_ZN12cmFindCommon8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(32) %65)
          to label %bb.kg unwind label %bb.ki

bb.kg:                                            ; preds = %bb.kf
  %i.ayd = load ptr, ptr %65, align 8, !tbaa !40  ; 2 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 2 uses
  %i.ayf = icmp eq ptr %i.ayd, %i.aye
  br i1 %i.ayf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit836, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i834

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i834: ; preds = %bb.kg
  %i.ayg = load i64, ptr %i.aye, align 8, !tbaa !41
  %i.ayh = add i64 %i.ayg, 1
  call void @_ZdlPvm(ptr noundef %i.ayd, i64 noundef %i.ayh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit836

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit836: ; preds = %bb.kg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i834
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #31
  br label %bb.lq

bb.kh:                                            ; preds = %bb.ke
  %i.ayi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit839
end_hunk_0
