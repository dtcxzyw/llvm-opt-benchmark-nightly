inline.NumInlined: 15497
inline.NumDeleted: 4769
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN2v88internal6torque21ImplementationVisitor16VisitMacroCommonEPNS1_5MacroE:bb.a
  %i.ado = getelementptr inbounds i8, ptr null, i64 %i.adm ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %36, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  store ptr %i.ado, ptr %i.adp, align 8
  br label %bb.ft

bb.fp:                                            ; preds = %_ZNSt8optionalIN2v88internal6torque17LocationReferenceEEC2ERKS4_.exit
  %i.adq = icmp ugt i64 %i.adm, 9223372036854775800
  br i1 %i.adq, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPN2v88internal6torque5BlockEE8allocateEmPKv.exit.i.i.i.i, !prof !11

.noexc.i.i:                                       ; preds = %bb.fp
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc473 unwind label %bb.gb

.noexc473:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIPN2v88internal6torque5BlockEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.fp
  %i.adr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adm) #29
          to label %.noexc474 unwind label %bb.gb ; 8 uses

.noexc474:                                        ; preds = %_ZNSt15__new_allocatorIPN2v88internal6torque5BlockEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.adr, ptr %36, align 8
  %i.ads = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 4 uses
  store ptr %i.adr, ptr %i.ads, align 8
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.adm ; 4 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %i.adt, ptr %i.adu, align 8
  %i.adv = icmp samesign ugt i64 %i.adm, 8
  br i1 %i.adv, label %bb.fq, label %bb.fr, !prof !78

bb.fq:                                            ; preds = %.noexc474
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.adr, ptr align 8 %.sroa.0909.0.lcssa, i64 %i.adm, i1 false)
  br label %bb.ft

bb.fr:                                            ; preds = %.noexc474
  %i.adw = icmp eq i64 %i.adm, 8
  br i1 %i.adw, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.adx = load ptr, ptr %.sroa.0909.0.lcssa, align 8
  store ptr %i.adx, ptr %i.adr, align 8
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr, %bb.fq, %.thread963
  %i.ady = phi ptr [ %i.adt, %bb.fq ], [ %i.adt, %bb.fr ], [ %i.adt, %bb.fs ], [ %i.ado, %.thread963 ] ; 3 uses
  %i.adz = phi ptr [ %i.ads, %bb.fq ], [ %i.ads, %bb.fr ], [ %i.ads, %bb.fs ], [ %i.adn, %.thread963 ]
  %i.aea = phi ptr [ %i.adr, %bb.fq ], [ %i.adr, %bb.fr ], [ %i.adr, %bb.fs ], [ null, %.thread963 ] ; 6 uses
  store ptr %i.ady, ptr %i.adz, align 8
  invoke void @_ZN2v88internal6torque21ImplementationVisitor11InlineMacroEPNS1_5MacroESt8optionalINS1_17LocationReferenceEERKSt6vectorINS1_11VisitResultESaIS9_EES8_IPNS1_5BlockESaISF_EE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::torque::VisitResult") align 8 %34, ptr noundef nonnull align 8 dereferenceable(1460) %0, ptr noundef nonnull %1, ptr noundef nonnull %35, ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull %36)
          to label %bb.fu unwind label %bb.gc

bb.fu:                                            ; preds = %bb.ft
  %.not.i.i.i475 = icmp eq ptr %i.aea, null
  br i1 %.not.i.i.i475, label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.aeb = ptrtoint ptr %i.ady to i64
  %i.aec = ptrtoint ptr %i.aea to i64
  %i.aed = sub i64 %i.aeb, %i.aec
  call void @_ZdlPvm(ptr noundef nonnull %i.aea, i64 noundef %i.aed) #30
  br label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit

_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit: ; preds = %bb.fu, %bb.fv
  %i.aee = load i8, ptr %i.zz, align 8, !range !9, !noundef !10
  %i.aef = trunc nuw i8 %i.aee to i1
  store i8 0, ptr %i.zz, align 8
  br i1 %i.aef, label %bb.fw, label %_ZNSt8optionalIN2v88internal6torque5StackIPKNS2_4TypeEEEEC2EOS8_.exit.i476

bb.fw:                                            ; preds = %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit
  call void @_ZN2v88internal6torque17LocationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(592) dereferenceable(600) %35) #27
  br label %_ZNSt8optionalIN2v88internal6torque5StackIPKNS2_4TypeEEEEC2EOS8_.exit.i476

_ZNSt8optionalIN2v88internal6torque5StackIPKNS2_4TypeEEEEC2EOS8_.exit.i476: ; preds = %bb.fw, %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit
  %i.aeg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.aeh = load i64, ptr %i.aeg, align 8          ; 2 uses
  %i.aei = add i64 %i.aeh, 1
  store i64 %i.aei, ptr %i.aeg, align 8
  %i.aej = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #29
          to label %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit489 unwind label %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit4.i482 ; 7 uses

_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit4.i482: ; preds = %_ZNSt8optionalIN2v88internal6torque5StackIPKNS2_4TypeEEEEC2EOS8_.exit.i476
  %i.aek = landingpad { ptr, i32 }
          cleanup
  br label %.body495

_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit489: ; preds = %_ZNSt8optionalIN2v88internal6torque5StackIPKNS2_4TypeEEEEC2EOS8_.exit.i476
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aej, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ael, i8 0, i64 24, i1 false)
  %i.aem = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aej, i64 16
  store ptr %i.aem, ptr %i.aen, align 8
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aej, i64 72
  store i8 0, ptr %i.aeo, align 8
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aej, i64 104
  store i8 0, ptr %i.aep, align 8
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aej, i64 112
  store i64 %i.aeh, ptr %i.aeq, align 8
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aej, i64 120
  store i8 0, ptr %i.aer, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aej, ptr noundef nonnull align 8 dereferenceable(112) %i.aem) #27
  %i.aes = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aet = load i64, ptr %i.aes, align 8
  %i.aeu = add i64 %i.aet, 1
  store i64 %i.aeu, ptr %i.aes, align 8
  %i.aev = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aew = load ptr, ptr %i.aev, align 8
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 16 ; 2 uses
  %i.aey = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.aez = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.aez, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.aez, ptr noundef nonnull align 1 dereferenceable(5) @.str.516, i64 5, i1 false)
  %i.afa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 5, ptr %i.afa, align 8
  %i.afb = getelementptr inbounds nuw i8, ptr %6, i64 21
  store i8 0, ptr %i.afb, align 1
  %i.afc = invoke noundef ptr @_ZN2v88internal6torque10TypeOracle14GetBuiltinTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %i.aey, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.fx unwind label %bb.fy

bb.fx:                                            ; preds = %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit489
  %i.afd = load ptr, ptr %6, align 8              ; 2 uses
  %i.afe = icmp eq ptr %i.afd, %i.aez
  br i1 %i.afe, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i494, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i493

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i493: ; preds = %bb.fx
  %i.aff = load i64, ptr %i.aez, align 8
  %i.afg = add i64 %i.aff, 1
  call void @_ZdlPvm(ptr noundef %i.afd, i64 noundef %i.afg) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i494

bb.fy:                                            ; preds = %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit489
  %i.afh = landingpad { ptr, i32 }
          cleanup
  %i.afi = load ptr, ptr %6, align 8              ; 2 uses
  %i.afj = icmp eq ptr %i.afi, %i.aez
  br i1 %i.afj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i491, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i490

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i490: ; preds = %bb.fy
  %i.afk = load i64, ptr %i.aez, align 8
  %i.afl = add i64 %i.afk, 1
  call void @_ZdlPvm(ptr noundef %i.afi, i64 noundef %i.afl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i491

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i491: ; preds = %bb.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i490
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.body495

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i494: ; preds = %bb.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i493
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %.not164 = icmp eq ptr %i.f, %i.afc
  br i1 %.not164, label %bb.gg, label %bb.fz

bb.fz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i494
  invoke void @_ZN2v88internal6torque12CfgAssembler4GotoEPNS1_5BlockE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.aex)
          to label %bb.gg unwind label %bb.gf

bb.ga:                                            ; preds = %_ZNSt22_Optional_payload_baseIN2v88internal6torque17LocationReferenceEE12_M_constructIJRKS3_EEEvDpOT_.exit.i.i.i.i.i
  %i.afm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseIN2v88internal6torque17LocationReferenceELb0ELb0EED2Ev.exit500

bb.gb:                                            ; preds = %_ZNSt15__new_allocatorIPN2v88internal6torque5BlockEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.afn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit499

bb.gc:                                            ; preds = %bb.ft
  %i.afo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i498 = icmp eq ptr %i.aea, null
  br i1 %.not.i.i.i498, label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit499, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.afp = ptrtoint ptr %i.ady to i64
  %i.afq = ptrtoint ptr %i.aea to i64
  %i.afr = sub i64 %i.afp, %i.afq
  call void @_ZdlPvm(ptr noundef nonnull %i.aea, i64 noundef %i.afr) #30
  br label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit499

_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit499: ; preds = %bb.gd, %bb.gc, %bb.gb
  %.pn162 = phi { ptr, i32 } [ %i.afn, %bb.gb ], [ %i.afo, %bb.gc ], [ %i.afo, %bb.gd ] ; 2 uses
  %i.afs = load i8, ptr %i.zz, align 8, !range !9, !noundef !10
  %i.aft = trunc nuw i8 %i.afs to i1
  store i8 0, ptr %i.zz, align 8
  br i1 %i.aft, label %bb.ge, label %_ZNSt14_Optional_baseIN2v88internal6torque17LocationReferenceELb0ELb0EED2Ev.exit500

bb.ge:                                            ; preds = %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit499
  call void @_ZN2v88internal6torque17LocationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(592) dereferenceable(600) %35) #27
  br label %_ZNSt14_Optional_baseIN2v88internal6torque17LocationReferenceELb0ELb0EED2Ev.exit500

bb.gf:                                            ; preds = %bb.hb, %bb.fz
  %i.afu = landingpad { ptr, i32 }
          cleanup
  br label %.body495

bb.gg:                                            ; preds = %bb.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i494
  br i1 %.not.i.i.i.i472, label %._crit_edge1156, label %.lr.ph1155

.lr.ph1155:                                       ; preds = %bb.gg
  %56 = ashr exact i64 %i.adm, 3
  %i.afv = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 4 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.afz = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v84base18ContextualVariableINS_8internal6torque21CurrentSourcePositionENS3_14SourcePositionEE4top_E)
  %i.aga = getelementptr inbounds nuw i8, ptr %40, i64 40 ; 4 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %40, i64 56 ; 11 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 9 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 3 uses
  %i.age = getelementptr inbounds nuw i8, ptr %40, i64 48 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %40, i64 72 ; 4 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %40, i64 80 ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %40, i64 88 ; 2 uses
  %i.agi = load i32, ptr @_ZN2v88internal6torque23GotoExternalInstruction5kKindE, align 4
  %i.agj = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 3 uses
  br label %bb.gj

._crit_edge1156:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit544, %bb.gg
  %i.agk = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.agl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.agl, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.agl, ptr noundef nonnull align 1 dereferenceable(5) @.str.516, i64 5, i1 false)
  %i.agm = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 5, ptr %i.agm, align 8
  %i.agn = getelementptr inbounds nuw i8, ptr %5, i64 21
  store i8 0, ptr %i.agn, align 1
  %i.ago = invoke noundef ptr @_ZN2v88internal6torque10TypeOracle14GetBuiltinTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %i.agk, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.gh unwind label %bb.gi

bb.gh:                                            ; preds = %._crit_edge1156
  %i.agp = load ptr, ptr %5, align 8              ; 2 uses
  %i.agq = icmp eq ptr %i.agp, %i.agl
  br i1 %i.agq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i507, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i506

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i506: ; preds = %bb.gh
  %i.agr = load i64, ptr %i.agl, align 8
  %i.ags = add i64 %i.agr, 1
  call void @_ZdlPvm(ptr noundef %i.agp, i64 noundef %i.ags) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i507

bb.gi:                                            ; preds = %._crit_edge1156
  %i.agt = landingpad { ptr, i32 }
          cleanup
  %i.agu = load ptr, ptr %5, align 8              ; 2 uses
  %i.agv = icmp eq ptr %i.agu, %i.agl
  br i1 %i.agv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i504, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i503

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i503: ; preds = %bb.gi
  %i.agw = load i64, ptr %i.agl, align 8
  %i.agx = add i64 %i.agw, 1
  call void @_ZdlPvm(ptr noundef %i.agu, i64 noundef %i.agx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i504

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i504: ; preds = %bb.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i503
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %.body495

bb.gj:                                            ; preds = %.lr.ph1155, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit544
  %.01161153 = phi i64 [ 0, %.lr.ph1155 ], [ %i.aks, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit544 ] ; 3 uses
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0909.0.lcssa, i64 %.01161153
  %i.agz = load ptr, ptr %i.agy, align 8
  %i.aha = load ptr, ptr %i.zo, align 8
  %i.ahb = getelementptr inbounds nuw [32 x i8], ptr %i.aha, i64 %.01161153 ; 4 uses
  invoke void @_ZN2v88internal6torque12CfgAssembler4BindEPNS1_5BlockE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %i.agz)
          to label %bb.gk unwind label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false)
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 8 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahb, i64 16 ; 2 uses
  %i.ahe = load ptr, ptr %i.ahd, align 8
  %i.ahf = load ptr, ptr %i.ahc, align 8          ; 2 uses
  %.not1159 = icmp eq ptr %i.ahe, %i.ahf
  br i1 %.not1159, label %._crit_edge1152, label %.lr.ph1151

._crit_edge1152:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514, %bb.gk
  %i.ahg = load ptr, ptr %i.ahb, align 8          ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 40
  %i.ahi = load ptr, ptr %i.ahh, align 8, !noalias !281
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahg, i64 48
  %i.ahk = load i64, ptr %i.ahj, align 8, !noalias !281
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !281
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %41, ptr noundef nonnull @.str.321, i64 noundef 6, ptr noundef %i.ahi, i64 noundef %i.ahk, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.gq unwind label %bb.gy

bb.gl:                                            ; preds = %bb.gj
  %i.ahl = landingpad { ptr, i32 }
          cleanup
  br label %.body495

.lr.ph1151:                                       ; preds = %bb.gk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514
  %i.ahm = phi ptr [ %i.ahx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514 ], [ %i.ahf, %bb.gk ]
  %.01149 = phi i64 [ %i.ahv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514 ], [ 0, %bb.gk ] ; 3 uses
  %i.ahn = getelementptr inbounds nuw [8 x i8], ptr %i.ahm, i64 %.01149
  %i.aho = load ptr, ptr %i.ahn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27
  %i.ahp = load ptr, ptr %i.ahb, align 8
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 40
  invoke void @_ZN2v88internal6torque21ImplementationVisitor26ExternalLabelParameterNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %38, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %i.ahq, i64 noundef %.01149)
          to label %bb.gm unwind label %bb.go

bb.gm:                                            ; preds = %.lr.ph1151
  invoke void @_ZN2v88internal6torque21ImplementationVisitor19LowerLabelParameterEPKNS1_4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorISB_SaISB_EE(ptr noundef nonnull align 8 dereferenceable(1460) %0, ptr noundef %i.aho, ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull %37)
          to label %bb.gn unwind label %bb.gp

bb.gn:                                            ; preds = %bb.gm
  %i.ahr = load ptr, ptr %38, align 8             ; 2 uses
  %i.ahs = icmp eq ptr %i.ahr, %i.afv
  br i1 %i.ahs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512: ; preds = %bb.gn
  %i.aht = load i64, ptr %i.afv, align 8
  %i.ahu = add i64 %i.aht, 1
  call void @_ZdlPvm(ptr noundef %i.ahr, i64 noundef %i.ahu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514: ; preds = %bb.gn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  %i.ahv = add nuw i64 %.01149, 1                 ; 2 uses
  %i.ahw = load ptr, ptr %i.ahd, align 8
  %i.ahx = load ptr, ptr %i.ahc, align 8          ; 2 uses
  %i.ahy = ptrtoint ptr %i.ahw to i64
  %i.ahz = ptrtoint ptr %i.ahx to i64
  %i.aia = sub i64 %i.ahy, %i.ahz
  %i.aib = ashr exact i64 %i.aia, 3
  %i.aic = icmp ult i64 %i.ahv, %i.aib
  br i1 %i.aic, label %.lr.ph1151, label %._crit_edge1152, !llvm.loop !286

bb.go:                                            ; preds = %.lr.ph1151
  %i.aid = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517

bb.gp:                                            ; preds = %bb.gm
  %i.aie = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aif = load ptr, ptr %38, align 8             ; 2 uses
  %i.aig = icmp eq ptr %i.aif, %i.afv
  br i1 %i.aig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515: ; preds = %bb.gp
  %i.aih = load i64, ptr %i.afv, align 8
  %i.aii = add i64 %i.aih, 1
  call void @_ZdlPvm(ptr noundef %i.aif, i64 noundef %i.aii) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517: ; preds = %bb.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515, %bb.go
  %.pn180 = phi { ptr, i32 } [ %i.aid, %bb.go ], [ %i.aie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515 ], [ %i.aie, %bb.gp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

bb.gq:                                            ; preds = %._crit_edge1152
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !281
  %i.aij = load ptr, ptr %37, align 8             ; 2 uses
  %i.aik = load ptr, ptr %i.afw, align 8          ; 2 uses
  %i.ail = load ptr, ptr %i.afx, align 8          ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN2v88internal6torque15InstructionBaseE, i64 16), ptr %40, align 8
  %i.aim = load ptr, ptr %i.afz, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.afy, ptr noundef nonnull align 4 dereferenceable(28) %i.aim, i64 28, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN2v88internal6torque23GotoExternalInstructionE, i64 16), ptr %40, align 8
  store ptr %i.agb, ptr %i.aga, align 8
  %i.ain = load ptr, ptr %41, align 8             ; 3 uses
  %i.aio = icmp eq ptr %i.ain, %i.agc
  br i1 %i.aio, label %bb.gr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i518

bb.gr:                                            ; preds = %bb.gq
  %i.aip = load i64, ptr %i.agd, align 8          ; 3 uses
  %i.aiq = icmp ult i64 %i.aip, 16
  call void @llvm.assume(i1 %i.aiq)
  %i.air = add nuw nsw i64 %i.aip, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.agb, ptr noundef nonnull align 8 dereferenceable(1) %i.agc, i64 %i.air, i1 false)
  br label %bb.gs

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i518: ; preds = %bb.gq
  store ptr %i.ain, ptr %i.aga, align 8
  %i.ais = load i64, ptr %i.agc, align 8
  store i64 %i.ais, ptr %i.agb, align 8
  %.pre1248 = load i64, ptr %i.agd, align 8
  br label %bb.gs

bb.gs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i518, %bb.gr
  %i.ait = phi ptr [ %i.ain, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i518 ], [ %i.agb, %bb.gr ] ; 2 uses
  %i.aiu = phi i64 [ %.pre1248, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i518 ], [ %i.aip, %bb.gr ] ; 4 uses
  store i64 %i.aiu, ptr %i.age, align 8
  store ptr %i.agc, ptr %41, align 8
  store i64 0, ptr %i.agd, align 8
  store i8 0, ptr %i.agc, align 8
  store ptr %i.aij, ptr %i.agf, align 8
  store ptr %i.aik, ptr %i.agg, align 8
  store ptr %i.ail, ptr %i.agh, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  store i32 %i.agi, ptr %39, align 8
  %i.aiv = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc522 unwind label %bb.gz ; 9 uses

.noexc522:                                        ; preds = %bb.gs
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 8
end_hunk_0
