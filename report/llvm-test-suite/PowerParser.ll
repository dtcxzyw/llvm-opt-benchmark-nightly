inline.NumInlined: 5334
inline.NumDeleted: 1210
begin_hunk_0_@_ZN2PP11PowerParser14compile_bufferERi:.noexc.i
  %i.bcj = load ptr, ptr %41, align 8, !tbaa !27, !alias.scope !779
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bcj, i64 %i.bci
  store i8 0, ptr %i.bck, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #29, !noalias !779
  %i.bcl = load i64, ptr %i.apk, align 8, !tbaa !32 ; 3 uses
  %i.bcm = load i64, ptr %i.apm, align 8, !tbaa !32 ; 2 uses
  %i.bcn = icmp eq i64 %i.bcl, %i.bcm
  br i1 %i.bcn, label %bb.iy, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %bb.ix
  %.pre1515 = load ptr, ptr %41, align 8, !tbaa !27
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.iy:                                            ; preds = %bb.ix
  %i.bco = icmp eq i64 %i.bcl, 0
  %.pre1516 = load ptr, ptr %41, align 8, !tbaa !27 ; 3 uses
  br i1 %i.bco, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.bcp = load ptr, ptr %40, align 8, !tbaa !27
  %bcmp.i699 = call i32 @bcmp(ptr %i.bcp, ptr %.pre1516, i64 %i.bcl)
  %i.bcq = icmp eq i32 %bcmp.i699, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.iy, %bb.iz
  %i.bcr = phi ptr [ %.pre1515, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre1516, %bb.iz ], [ %.pre1516, %bb.iy ] ; 2 uses
  %i.bcs = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.bcq, %bb.iz ], [ true, %bb.iy ]
  %i.bct = icmp eq ptr %i.bcr, %i.apl
  br i1 %i.bct, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i701, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i700

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i701: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bcu = icmp ult i64 %i.bcm, 16
  call void @llvm.assume(i1 %i.bcu)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i700: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bcv = load i64, ptr %i.apl, align 8, !tbaa !33
  %i.bcw = add i64 %i.bcv, 1
  call void @_ZdlPvm(ptr noundef %i.bcr, i64 noundef %i.bcw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i701, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i700
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  br i1 %i.bcs, label %bb.ja, label %bb.jh

bb.ja:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702
  invoke void @_ZN2PP3Cmd11fatal_errorEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(432) %34, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(128) %11, ptr noundef nonnull align 4 dereferenceable(4) %i.z)
          to label %bb.jb unwind label %.loopexit

bb.jb:                                            ; preds = %bb.ja
  %i.bcx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.apn, ptr noundef nonnull @.str.32, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit704 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit704: ; preds = %bb.jb
  %i.bcy = load ptr, ptr %i.apn, align 8, !tbaa !132
  %i.bcz = getelementptr i8, ptr %i.bcy, i64 -24
  %i.bda = load i64, ptr %i.bcz, align 8
  %i.bdb = getelementptr inbounds i8, ptr %i.apn, i64 %i.bda
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bdb, i64 240
  %i.bdd = load ptr, ptr %i.bdc, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i1088 = icmp eq ptr %i.bdd, null
  br i1 %.not.i.i.i1088, label %.invoke1846, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1089

.invoke1846:                                      ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit704
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.cont1847 unwind label %.loopexit.split-lp

.cont1847:                                        ; preds = %.invoke1846
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1089: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit704
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 56
  %i.bdf = load i8, ptr %i.bde, align 8, !tbaa !161
  %.not.i1.i.i1090 = icmp eq i8 %i.bdf, 0
  br i1 %.not.i1.i.i1090, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1089
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bdd, i64 67
  %i.bdh = load i8, ptr %i.bdg, align 1, !tbaa !33
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1091

bb.jd:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1089
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bdd)
          to label %.noexc1094 unwind label %.loopexit

.noexc1094:                                       ; preds = %bb.jd
  %i.bdi = load ptr, ptr %i.bdd, align 8, !tbaa !132
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdi, i64 48
  %i.bdk = load ptr, ptr %i.bdj, align 8
  %i.bdl = invoke noundef signext i8 %i.bdk(ptr noundef nonnull align 8 dereferenceable(570) %i.bdd, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1091 unwind label %.loopexit, !inline_history !166

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1091: ; preds = %.noexc1094, %bb.jc
  %.0.i.i.i1092 = phi i8 [ %i.bdh, %bb.jc ], [ %i.bdl, %.noexc1094 ]
  %i.bdm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.apn, i8 noundef signext %.0.i.i.i1092)
          to label %.noexc1096 unwind label %.loopexit

.noexc1096:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1091
  %i.bdn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bdm)
          to label %_ZNSolsEPFRSoS_E.exit706 unwind label %.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit706:                         ; preds = %.noexc1096
  %i.bdo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.apn, ptr noundef nonnull @.str.33, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit708 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit708: ; preds = %_ZNSolsEPFRSoS_E.exit706
  %i.bdp = load ptr, ptr %40, align 8, !tbaa !27
  %i.bdq = load i64, ptr %i.apk, align 8, !tbaa !32
  %i.bdr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.apn, ptr noundef %i.bdp, i64 noundef %i.bdq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit708
  %i.bds = load ptr, ptr %i.bdr, align 8, !tbaa !132
  %i.bdt = getelementptr i8, ptr %i.bds, i64 -24
  %i.bdu = load i64, ptr %i.bdt, align 8
  %i.bdv = getelementptr inbounds i8, ptr %i.bdr, i64 %i.bdu
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdv, i64 240
  %i.bdx = load ptr, ptr %i.bdw, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i1099 = icmp eq ptr %i.bdx, null
  br i1 %.not.i.i.i1099, label %.invoke1846, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1100

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1100: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdx, i64 56
  %i.bdz = load i8, ptr %i.bdy, align 8, !tbaa !161
  %.not.i1.i.i1101 = icmp eq i8 %i.bdz, 0
  br i1 %.not.i1.i.i1101, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1100
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdx, i64 67
  %i.beb = load i8, ptr %i.bea, align 1, !tbaa !33
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1102

bb.jf:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i1100
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bdx)
          to label %.noexc1105 unwind label %.loopexit

.noexc1105:                                       ; preds = %bb.jf
  %i.bec = load ptr, ptr %i.bdx, align 8, !tbaa !132
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bec, i64 48
  %i.bee = load ptr, ptr %i.bed, align 8
  %i.bef = invoke noundef signext i8 %i.bee(ptr noundef nonnull align 8 dereferenceable(570) %i.bdx, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1102 unwind label %.loopexit, !inline_history !166

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1102: ; preds = %.noexc1105, %bb.je
  %.0.i.i.i1103 = phi i8 [ %i.beb, %bb.je ], [ %i.bef, %.noexc1105 ]
  %i.beg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bdr, i8 noundef signext %.0.i.i.i1103)
          to label %.noexc1107 unwind label %.loopexit

.noexc1107:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1102
  %i.beh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.beg)
          to label %_ZNSolsEPFRSoS_E.exit711 unwind label %.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit711:                         ; preds = %.noexc1107
  store i32 2, ptr %i.z, align 4, !tbaa !4
  br label %bb.jh

bb.jg:                                            ; preds = %.noexc.i.i696
  %i.bei = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  br label %bb.ji

.loopexit:                                        ; preds = %bb.ja, %bb.jb, %_ZNSolsEPFRSoS_E.exit706, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit708, %bb.jd, %.noexc1094, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1091, %.noexc1096, %bb.jf, %.noexc1105, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i1102, %.noexc1107
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ji

.loopexit.split-lp:                               ; preds = %.invoke1846
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ji

bb.jh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702, %_ZNSolsEPFRSoS_E.exit711
  %indvars.iv.next1493 = add nuw nsw i64 %indvars.iv1492, 1
  br label %bb.ip, !llvm.loop !782

bb.ji:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.jg
  %.pn351 = phi { ptr, i32 } [ %i.bei, %bb.jg ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.bej = load ptr, ptr %40, align 8, !tbaa !27  ; 2 uses
  %i.bek = icmp eq ptr %i.bej, %i.apj
  br i1 %i.bek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i712

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i712: ; preds = %bb.ji
  %i.bel = load i64, ptr %i.apj, align 8, !tbaa !33
  %i.bem = add i64 %i.bel, 1
  call void @_ZdlPvm(ptr noundef %i.bej, i64 noundef %i.bem) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714: ; preds = %bb.ji, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i712, %bb.ir
  %.pn351.pn = phi { ptr, i32 } [ %i.bbp, %bb.ir ], [ %.pn351, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i712 ], [ %.pn351, %bb.ji ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #29
  br label %bb.jm

bb.jj:                                            ; preds = %bb.if
  store i8 0, ptr %i.ae, align 1, !tbaa !757
  br label %.thread

bb.jk:                                            ; preds = %bb.if
  %.not = xor i1 %i.azl, true
  %or.cond5 = select i1 %.not, i1 true, i1 %i.azn
  %cond.fr = freeze i1 %or.cond5
  br i1 %cond.fr, label %.thread, label %bb.jl

.thread:                                          ; preds = %bb.jj, %bb.jk
  call void @_ZN2PP12RestartblockD2Ev(ptr noundef nonnull align 8 dead_on_return(520) dereferenceable(520) %39) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  br label %.thread1213

bb.jl:                                            ; preds = %bb.jk
  call void @_ZN2PP12RestartblockD2Ev(ptr noundef nonnull align 8 dead_on_return(520) dereferenceable(520) %39) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  br label %bb.jo

bb.jm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714, %bb.ii
  %.pn351.pn.pn = phi { ptr, i32 } [ %.pn351.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714 ], [ %i.azq, %bb.ii ]
  call void @_ZN2PP12RestartblockD2Ev(ptr noundef nonnull align 8 dead_on_return(520) dereferenceable(520) %39) #29
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %bb.ih
  %.pn351.pn.pn.pn = phi { ptr, i32 } [ %.pn351.pn.pn, %bb.jm ], [ %i.azp, %bb.ih ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  br label %bb.qe

bb.jo:                                            ; preds = %bb.jl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #29
  invoke void @_ZN2PP3Cmd10get_stringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %42, ptr noundef nonnull align 8 dereferenceable(432) %34, i32 noundef 0)
          to label %bb.jp unwind label %bb.js

bb.jp:                                            ; preds = %bb.jo
  %i.ben = load i64, ptr %i.apo, align 8, !tbaa !32 ; 2 uses
  %i.beo = icmp eq i64 %i.ben, 17
  %.pre1510 = load ptr, ptr %42, align 8, !tbaa !27 ; 4 uses
  br i1 %i.beo, label %bb.jq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit716

bb.jq:                                            ; preds = %bb.jp
  %i.bep = load i128, ptr %.pre1510, align 1
  %i.beq = xor i128 %i.bep, 132172114828143009538162117405867011685
  %i.ber = getelementptr i8, ptr %.pre1510, i64 16
  %i.bes = load i8, ptr %i.ber, align 1
  %i.bet = zext i8 %i.bes to i128
  %i.beu = xor i128 %i.bet, 107
  %i.bev = or i128 %i.beq, %i.beu
  %i.bew = icmp ne i128 %i.bev, 0
  %i.bex = zext i1 %i.bew to i32
  %i.bey = icmp eq i32 %i.bex, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit716

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit716: ; preds = %bb.jq, %bb.jp
  %i.bez = phi i1 [ false, %bb.jp ], [ %i.bey, %bb.jq ]
  %i.bfa = icmp eq ptr %.pre1510, %i.app
  br i1 %i.bfa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i718, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i717

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i718: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit716
  %i.bfb = icmp ult i64 %i.ben, 16
  call void @llvm.assume(i1 %i.bfb)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit719

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i717: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit716
  %i.bfc = load i64, ptr %i.app, align 8, !tbaa !33
  %i.bfd = add i64 %i.bfc, 1
  call void @_ZdlPvm(ptr noundef %.pre1510, i64 noundef %i.bfd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit719

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit719: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i718, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i717
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #29
  br i1 %i.bez, label %bb.jr, label %bb.jt

bb.jr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit719
  store i8 0, ptr %i.ae, align 1, !tbaa !757
  br label %.thread1213

bb.js:                                            ; preds = %bb.jo
  %i.bfe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #29
  br label %bb.qe

bb.jt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit719
  %i.bff = load i8, ptr %i.ae, align 1, !tbaa !757, !range !767, !noundef !768
  %i.bfg = trunc nuw i8 %i.bff to i1
  br i1 %i.bfg, label %.thread1213, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  br i1 %.0245, label %bb.jv, label %bb.jz

bb.jv:                                            ; preds = %bb.ju
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #29
  invoke void @_ZN2PP3Cmd10get_stringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %43, ptr noundef nonnull align 8 dereferenceable(432) %34, i32 noundef 0)
          to label %bb.jw unwind label %bb.jy

bb.jw:                                            ; preds = %bb.jv
  %i.bfh = load i64, ptr %i.arr, align 8, !tbaa !32 ; 2 uses
  %i.bfi = icmp eq i64 %i.bfh, 13
  %.pre1514 = load ptr, ptr %43, align 8, !tbaa !27 ; 4 uses
  br i1 %i.bfi, label %bb.jx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit724

bb.jx:                                            ; preds = %bb.jw
  %i.bfj = load i64, ptr %.pre1514, align 1
  %i.bfk = xor i64 %i.bfj, 8030589342141673061
  %i.bfl = getelementptr i8, ptr %.pre1514, i64 5
  %i.bfm = load i64, ptr %i.bfl, align 1
  %i.bfn = xor i64 %i.bfm, 7308895194176254562
  %i.bfo = or i64 %i.bfk, %i.bfn
  %i.bfp = icmp ne i64 %i.bfo, 0                  ; 2 uses
  %i.bfq = zext i1 %i.bfp to i32                  ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit724

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit724: ; preds = %bb.jx, %bb.jw
  %spec.select = phi i1 [ true, %bb.jw ], [ %i.bfp, %bb.jx ]
  %i.bfr = icmp eq ptr %.pre1514, %i.ars
  br i1 %i.bfr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i726, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i725

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i726: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit724
  %i.bfs = icmp ult i64 %i.bfh, 16
  call void @llvm.assume(i1 %i.bfs)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit727

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i725: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit724
  %i.bft = load i64, ptr %i.ars, align 8, !tbaa !33
  %i.bfu = add i64 %i.bft, 1
  call void @_ZdlPvm(ptr noundef %.pre1514, i64 noundef %i.bfu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit727

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit727: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i726, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i725
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #29
  br label %.thread1213

bb.jy:                                            ; preds = %bb.jv
  %i.bfv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #29
  br label %bb.qe

bb.jz:                                            ; preds = %bb.ju
  %i.bfw = load i32, ptr %i.z, align 4, !tbaa !4  ; 2 uses
  store i32 %i.bfw, ptr %1, align 4, !tbaa !4
  %i.bfx = icmp sgt i32 %i.bfw, 1
  br i1 %i.bfx, label %.thread1231, label %bb.ka

.thread1231:                                      ; preds = %bb.jz
  call void @_ZN2PP3CmdD2Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %34) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #29
  br label %_ZNSolsEPFRSoS_E.exit1001

bb.ka:                                            ; preds = %bb.jz
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !783)
  store ptr %i.apq, ptr %44, align 8, !tbaa !123, !alias.scope !783
  %i.bfy = load ptr, ptr %i.aoq, align 8, !tbaa !27, !noalias !783 ; 2 uses
  %i.bfz = load i64, ptr %i.aos, align 8, !tbaa !32, !noalias !783 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #29, !noalias !783
  store i64 %i.bfz, ptr %i.l, align 8, !tbaa !124, !noalias !783
  %i.bga = icmp ugt i64 %i.bfz, 15
  br i1 %i.bga, label %.noexc.i.i732, label %._crit_edge.i.i.i731

.noexc.i.i732:                                    ; preds = %bb.ka
  %i.bgb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc733 unwind label %bb.km ; 2 uses

.noexc733:                                        ; preds = %.noexc.i.i732
  store ptr %i.bgb, ptr %44, align 8, !tbaa !27, !alias.scope !783
  %i.bgc = load i64, ptr %i.l, align 8, !tbaa !124, !noalias !783
  store i64 %i.bgc, ptr %i.apq, align 8, !tbaa !33, !alias.scope !783
  br label %._crit_edge.i.i.i731

._crit_edge.i.i.i731:                             ; preds = %.noexc733, %bb.ka
  %i.bgd = phi ptr [ %i.bgb, %.noexc733 ], [ %i.apq, %bb.ka ] ; 2 uses
  switch i64 %i.bfz, label %bb.kc [
    i64 1, label %bb.kb
    i64 0, label %bb.kd
  ]

bb.kb:                                            ; preds = %._crit_edge.i.i.i731
  %i.bge = load i8, ptr %i.bfy, align 1, !tbaa !33
  store i8 %i.bge, ptr %i.bgd, align 1, !tbaa !33
  br label %bb.kd

bb.kc:                                            ; preds = %._crit_edge.i.i.i731
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bgd, ptr align 1 %i.bfy, i64 %i.bfz, i1 false)
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.kb, %._crit_edge.i.i.i731
  %i.bgf = load i64, ptr %i.l, align 8, !tbaa !124, !noalias !783 ; 2 uses
  store i64 %i.bgf, ptr %i.apr, align 8, !tbaa !32, !alias.scope !783
  %i.bgg = load ptr, ptr %44, align 8, !tbaa !27, !alias.scope !783
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bgg, i64 %i.bgf
  store i8 0, ptr %i.bgh, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #29, !noalias !783
  %i.bgi = load i64, ptr %i.apr, align 8, !tbaa !32 ; 2 uses
  %i.bgj = icmp eq i64 %i.bgi, 21
  %.pre1511 = load ptr, ptr %44, align 8, !tbaa !27 ; 4 uses
  br i1 %i.bgj, label %bb.ke, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit736

bb.ke:                                            ; preds = %bb.kd
  %i.bgk = load i128, ptr %.pre1511, align 1
  %i.bgl = xor i128 %i.bgk, 140162838171485724244740999153288634736
  %i.bgm = getelementptr i8, ptr %.pre1511, i64 5
  %i.bgn = load i128, ptr %i.bgm, align 1
  %i.bgo = xor i128 %i.bgn, 153387839792721987064103156809267437426
  %i.bgp = or i128 %i.bgl, %i.bgo
  %i.bgq = icmp ne i128 %i.bgp, 0
end_hunk_0
begin_hunk_1_@_ZNSt5dequeIN2PP12RestartblockESaIS1_EE19_M_destroy_data_auxESt15_Deque_iteratorIS1_RS1_PS1_ES7_:bb.a
  %i.gb = getelementptr inbounds nuw i8, ptr %.05.i.i7, i64 520 ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.gb, %i.ga
  br i1 %.not.i.i8, label %_ZSt8_DestroyIPN2PP12RestartblockEEvT_S3_.exit9, label %.lr.ph.i.i6, !llvm.loop !1675

_ZSt8_DestroyIPN2PP12RestartblockEEvT_S3_.exit9:  ; preds = %.lr.ph.i.i6, %bb.r
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !415 ; 2 uses
  %i.ge = load ptr, ptr %2, align 8, !tbaa !411   ; 2 uses
  %.not4.i.i10 = icmp eq ptr %i.gd, %i.ge
  br i1 %.not4.i.i10, label %_ZSt8_DestroyIPN2PP12RestartblockEEvT_S3_.exit14, label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %_ZSt8_DestroyIPN2PP12RestartblockEEvT_S3_.exit9, %.lr.ph.i.i11
  %.05.i.i12 = phi ptr [ %i.gf, %.lr.ph.i.i11 ], [ %i.gd, %_ZSt8_DestroyIPN2PP12RestartblockEEvT_S3_.exit9 ] ; 2 uses
  call void @_ZN2PP12RestartblockD2Ev(ptr noundef nonnull align 8 dead_on_return(520) dereferenceable(520) %.05.i.i12) #29
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i12, i64 520 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.gf, %i.ge
  br i1 %.not.i.i13, label %_ZSt8_DestroyIPN2PP12RestartblockEEvT_S3_.exit14, label %.lr.ph.i.i11, !llvm.loop !1675

bb.s:                                             ; preds = %._crit_edge
  %i.gg = load ptr, ptr %2, align 8, !tbaa !411   ; 2 uses
  %.not4.i.i15 = icmp eq ptr %i.i, %i.gg
  br i1 %.not4.i.i15, label %_ZSt8_DestroyIPN2PP12RestartblockEEvT_S3_.exit14, label %.lr.ph.i.i16

.lr.ph.i.i16:                                     ; preds = %bb.s, %.lr.ph.i.i16
  %.05.i.i17 = phi ptr [ %i.gh, %.lr.ph.i.i16 ], [ %i.i, %bb.s ] ; 2 uses
  call void @_ZN2PP12RestartblockD2Ev(ptr noundef nonnull align 8 dead_on_return(520) dereferenceable(520) %.05.i.i17) #29
  %i.gh = getelementptr inbounds nuw i8, ptr %.05.i.i17, i64 520 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.gh, %i.gg
  br i1 %.not.i.i18, label %_ZSt8_DestroyIPN2PP12RestartblockEEvT_S3_.exit14, label %.lr.ph.i.i16, !llvm.loop !1675

_ZSt8_DestroyIPN2PP12RestartblockEEvT_S3_.exit14: ; preds = %.lr.ph.i.i11, %.lr.ph.i.i16, %bb.s, %_ZSt8_DestroyIPN2PP12RestartblockEEvT_S3_.exit9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIbSaIbEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !332    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !333  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !334  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.c, %i.f
  br i1 %i.g, label %.lr.ph.i, label %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.06.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i, align 8, !tbaa !335
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #32
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.j = icmp ult ptr %.06.i, %i.e
  br i1 %i.j, label %.lr.ph.i, label %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.loopexit, !llvm.loop !336

_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !332
  br label %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit

_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit: ; preds = %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.loopexit, %bb.b
  %i.k = phi ptr [ %.pre, %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.loopexit ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !337
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #32
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit, %bb.a
  ret void
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN2PP3CmdESaIS1_EE15_M_erase_at_endESt15_Deque_iteratorIS1_RS1_PS1_E(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef dead_on_return %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !114    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !116  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !113  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !114, !noalias !1676 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !115, !noalias !1676 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !113, !noalias !1676 ; 3 uses
  %.021.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.l = icmp ult ptr %.021.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.not.i.i = icmp eq ptr %i.e, %i.k
  br i1 %.not.i.i, label %bb.c, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.022.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.021.i.i, %bb.a ] ; 2 uses
  %i.m = load ptr, ptr %.022.i.i, align 8, !tbaa !24
  tail call void @_ZN2PP3CmdD2Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %i.m) #29
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 8 ; 2 uses
  %i.n = icmp ult ptr %.0.i.i, %i.k
  br i1 %i.n, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !386

bb.b:                                             ; preds = %._crit_edge.i.i
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN2PP3CmdEEvT_S3_.exit9.i.i, label %.lr.ph.i.i6.i.i

.lr.ph.i.i6.i.i:                                  ; preds = %bb.b, %.lr.ph.i.i6.i.i
  %.05.i.i7.i.i = phi ptr [ %i.o, %.lr.ph.i.i6.i.i ], [ %i.a, %bb.b ] ; 2 uses
  tail call void @_ZN2PP3CmdD2Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %.05.i.i7.i.i) #29
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i7.i.i, i64 432 ; 2 uses
  %.not.i.i8.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i8.i.i, label %_ZSt8_DestroyIPN2PP3CmdEEvT_S3_.exit9.i.i, label %.lr.ph.i.i6.i.i, !llvm.loop !387

_ZSt8_DestroyIPN2PP3CmdEEvT_S3_.exit9.i.i:        ; preds = %.lr.ph.i.i6.i.i, %bb.b
  %.not4.i.i10.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not4.i.i10.i.i, label %_ZNSt5dequeIN2PP3CmdESaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_.exit, label %.lr.ph.i.i11.i.i

.lr.ph.i.i11.i.i:                                 ; preds = %_ZSt8_DestroyIPN2PP3CmdEEvT_S3_.exit9.i.i, %.lr.ph.i.i11.i.i
  %.05.i.i12.i.i = phi ptr [ %i.p, %.lr.ph.i.i11.i.i ], [ %i.i, %_ZSt8_DestroyIPN2PP3CmdEEvT_S3_.exit9.i.i ] ; 2 uses
  tail call void @_ZN2PP3CmdD2Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %.05.i.i12.i.i) #29
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i12.i.i, i64 432 ; 2 uses
  %.not.i.i13.i.i = icmp eq ptr %i.p, %i.g
  br i1 %.not.i.i13.i.i, label %_ZNSt5dequeIN2PP3CmdESaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_.exit, label %.lr.ph.i.i11.i.i, !llvm.loop !387

bb.c:                                             ; preds = %._crit_edge.i.i
  %.not4.i.i15.i.i = icmp eq ptr %i.a, %i.g
  br i1 %.not4.i.i15.i.i, label %_ZNSt5dequeIN2PP3CmdESaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_.exit, label %.lr.ph.i.i16.i.i

.lr.ph.i.i16.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i16.i.i
  %.05.i.i17.i.i = phi ptr [ %i.q, %.lr.ph.i.i16.i.i ], [ %i.a, %bb.c ] ; 2 uses
  tail call void @_ZN2PP3CmdD2Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %.05.i.i17.i.i) #29
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i17.i.i, i64 432 ; 2 uses
  %.not.i.i18.i.i = icmp eq ptr %i.q, %i.g
  br i1 %.not.i.i18.i.i, label %_ZNSt5dequeIN2PP3CmdESaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_.exit, label %.lr.ph.i.i16.i.i, !llvm.loop !387

_ZNSt5dequeIN2PP3CmdESaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_.exit: ; preds = %.lr.ph.i.i11.i.i, %.lr.ph.i.i16.i.i, %_ZSt8_DestroyIPN2PP3CmdEEvT_S3_.exit9.i.i, %bb.c
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !113  ; 2 uses
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !390  ; 2 uses
  %i.t = icmp ult ptr %i.r, %i.s
  br i1 %i.t, label %.lr.ph.i, label %_ZNSt11_Deque_baseIN2PP3CmdESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit

.lr.ph.i:                                         ; preds = %_ZNSt5dequeIN2PP3CmdESaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_.exit, %.lr.ph.i
  %.06.i.pn = phi ptr [ %.06.i, %.lr.ph.i ], [ %i.r, %_ZNSt5dequeIN2PP3CmdESaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_.exit ]
  %.06.i = getelementptr inbounds nuw i8, ptr %.06.i.pn, i64 8 ; 3 uses
  %i.u = load ptr, ptr %.06.i, align 8, !tbaa !24
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef 432) #32
  %i.v = icmp ult ptr %.06.i, %i.s
  br i1 %i.v, label %.lr.ph.i, label %_ZNSt11_Deque_baseIN2PP3CmdESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit, !llvm.loop !391

_ZNSt11_Deque_baseIN2PP3CmdESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit: ; preds = %.lr.ph.i, %_ZNSt5dequeIN2PP3CmdESaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !1679
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const int, std::__cxx11::basic_string<char>>>, std::less<int>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %0, ptr %5, align 8, !tbaa !1681
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #31 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load i64, ptr %3, align 8, !tbaa !329
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  store i32 %i.f, ptr %i.c, align 8, !tbaa !1683
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !123
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %i.i, align 8, !tbaa !32
  store i8 0, ptr %i.h, align 8, !tbaa !33
  store ptr %i.b, ptr %i.a, align 8, !tbaa !1685
  %i.j = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 4 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.k, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.n
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.p = load i32, ptr %i.c, align 8, !tbaa !4
  %i.q = load i32, ptr %i.o, align 4, !tbaa !4
  %i.r = icmp slt i32 %i.p, %i.q
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.s = phi i1 [ %i.r, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #29
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !190
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !190
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %i.w

bb.f:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.h
  br i1 %i.y, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.z = load i64, ptr %i.h, align 8, !tbaa !33
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #32
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i

_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #32
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.k, %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !190
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !507  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = load i32, ptr %2, align 4, !tbaa !4
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !507 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4, !tbaa !4      ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4    ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !507 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !1688

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !188
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #34 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !4
  %.pre82 = load i32, ptr %2, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp slt i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4, !tbaa !4      ; 8 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !4    ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !507 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #34 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = icmp slt i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1595
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !507 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4  ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !507 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !1688

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #34 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp slt i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp slt i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !507 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #34 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = icmp slt i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1595
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
end_hunk_1
