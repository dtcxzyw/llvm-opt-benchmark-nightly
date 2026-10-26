Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/implementation-visitor?download=true
inline.NumInlined: 15498
inline.NumDeleted: 4769
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN2v88internal6torque21ImplementationVisitor12GenerateCallEPNS1_8CallableESt8optionalINS1_17LocationReferenceEENS1_9ArgumentsERKSt6vectorIPKNS1_4TypeESaISC_EEb:bb.a
  %i.ajq = invoke noundef ptr @_ZN2v88internal6torque10TypeOracle14GetBuiltinTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %i.ajm, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.iq unwind label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.ajr = load ptr, ptr %9, align 8              ; 2 uses
  %i.ajs = icmp eq ptr %i.ajr, %i.ajn
  br i1 %i.ajs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i953, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i952

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i952: ; preds = %bb.iq
  %i.ajt = load i64, ptr %i.ajn, align 8
  %i.aju = add i64 %i.ajt, 1
  call void @_ZdlPvm(ptr noundef %i.ajr, i64 noundef %i.aju) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i953

bb.ir:                                            ; preds = %bb.ip
  %i.ajv = landingpad { ptr, i32 }
          cleanup
  %i.ajw = load ptr, ptr %9, align 8              ; 2 uses
  %i.ajx = icmp eq ptr %i.ajw, %i.ajn
  br i1 %i.ajx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i950, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i949

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i949: ; preds = %bb.ir
  %i.ajy = load i64, ptr %i.ajn, align 8
  %i.ajz = add i64 %i.ajy, 1
  call void @_ZdlPvm(ptr noundef %i.ajw, i64 noundef %i.ajz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i950

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i950: ; preds = %bb.ir, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i949
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit732

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i953: ; preds = %bb.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i952
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %.not540 = icmp eq ptr %i.ad, %i.ajq
  br i1 %.not540, label %._crit_edge1836, label %bb.is

bb.is:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i953
  %i.aka = invoke { ptr, i8 } @_ZN2v88internal6torque21ImplementationVisitor13GetCatchBlockEv(ptr noundef nonnull align 8 dereferenceable(1460) %1)
          to label %bb.it unwind label %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit4.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.it:                                            ; preds = %bb.is
  %i.akb = extractvalue { ptr, i8 } %i.aka, 0     ; 2 uses
  %i.akc = extractvalue { ptr, i8 } %i.aka, 1     ; 2 uses
  %i.akd = load <2 x ptr>, ptr %33, align 16
  store <2 x ptr> %i.akd, ptr %56, align 16
  %i.ake = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.akf = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.akg = load ptr, ptr %i.akf, align 16
  store ptr %i.akg, ptr %i.ake, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  invoke void @_ZN2v88internal6torque23CallCsaMacroInstructionC2EPNS1_5MacroESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESt8optionalIPNS1_5BlockEE(ptr noundef nonnull align 8 dereferenceable(88) %55, ptr noundef nonnull %2, ptr noundef nonnull align 8 %56, ptr %i.akb, i8 %i.akc)
          to label %bb.iu unwind label %bb.iz

bb.iu:                                            ; preds = %bb.it
  %i.akh = load i32, ptr @_ZN2v88internal6torque23CallCsaMacroInstruction5kKindE, align 4
  store i32 %i.akh, ptr %54, align 8
  %i.aki = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 3 uses
  %i.akj = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #29
          to label %bb.iv unwind label %bb.ja     ; 6 uses

bb.iv:                                            ; preds = %bb.iu
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 8
  %i.akl = getelementptr inbounds nuw i8, ptr %55, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.akk, ptr noundef nonnull align 8 dereferenceable(28) %i.akl, i64 28, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN2v88internal6torque23CallCsaMacroInstructionE, i64 16), ptr %i.akj, align 8
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akj, i64 40
  %i.akn = getelementptr inbounds nuw i8, ptr %55, i64 40
  %i.ako = getelementptr inbounds nuw i8, ptr %55, i64 48
  %i.akp = load <2 x ptr>, ptr %i.akn, align 8
  store <2 x ptr> %i.akp, ptr %i.akm, align 8
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akj, i64 56
  %i.akr = getelementptr inbounds nuw i8, ptr %55, i64 56
  %i.aks = load <2 x ptr>, ptr %i.akr, align 8
  store <2 x ptr> %i.aks, ptr %i.akq, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ako, i8 0, i64 24, i1 false)
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akj, i64 72
  %i.aku = getelementptr inbounds nuw i8, ptr %55, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.akt, ptr noundef nonnull align 8 dereferenceable(16) %i.aku, i64 16, i1 false)
  store ptr %i.akj, ptr %i.aki, align 8
  invoke void @_ZN2v88internal6torque12CfgAssembler4EmitENS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 %54)
          to label %bb.iw unwind label %bb.jb

bb.iw:                                            ; preds = %bb.iv
  %i.akv = load ptr, ptr %i.aki, align 8          ; 3 uses
  %.not.i.i957 = icmp eq ptr %i.akv, null
  br i1 %.not.i.i957, label %_ZN2v88internal6torque11InstructionD2Ev.exit959, label %_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i958

_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i958: ; preds = %bb.iw
  %i.akw = load ptr, ptr %i.akv, align 8
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 24
  %i.aky = load ptr, ptr %i.akx, align 8
  call void %i.aky(ptr noundef nonnull align 8 dereferenceable(36) %i.akv) #27, !inline_history !8
  br label %_ZN2v88internal6torque11InstructionD2Ev.exit959

_ZN2v88internal6torque11InstructionD2Ev.exit959:  ; preds = %bb.iw, %_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i958
  call void @_ZN2v88internal6torque23CallCsaMacroInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %55) #27
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %56) #27
  invoke void @_ZN2v88internal6torque21ImplementationVisitor18GenerateCatchBlockESt8optionalIPNS1_5BlockEE(ptr noundef nonnull align 8 dereferenceable(1460) %1, ptr %i.akb, i8 %i.akc)
          to label %bb.ix unwind label %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit4.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ix:                                            ; preds = %_ZN2v88internal6torque11InstructionD2Ev.exit959
  %i.akz = invoke noundef i64 @_ZN2v88internal6torque16LoweredSlotCountEPKNS1_4TypeE(ptr noundef nonnull %i.ad)
          to label %bb.iy unwind label %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit4.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.iy:                                            ; preds = %bb.ix
  %i.ala = load ptr, ptr %i.lc, align 8
  %i.alb = load ptr, ptr %1, align 8
  %i.alc = ptrtoint ptr %i.ala to i64
  %i.ald = ptrtoint ptr %i.alb to i64
  %i.ale = sub i64 %i.alc, %i.ald
  %i.alf = ashr exact i64 %i.ale, 3               ; 2 uses
  %i.alg = sub i64 %i.alf, %i.akz
  store ptr %i.ad, ptr %0, align 8
  %i.alh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.alh, align 8
  %i.ali = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.alg, ptr %i.ali, align 8
  %.sroa.2.0..sroa_idx.i962 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.alf, ptr %.sroa.2.0..sroa_idx.i962, align 8
  %i.alj = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.alj, align 8
  br label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit942

bb.iz:                                            ; preds = %bb.it
  %i.alk = landingpad { ptr, i32 }
          cleanup
  br label %bb.jc

bb.ja:                                            ; preds = %bb.iu
  %i.all = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2v88internal6torque11InstructionD2Ev.exit965

bb.jb:                                            ; preds = %bb.iv
  %i.alm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aln = load ptr, ptr %i.aki, align 8          ; 3 uses
  %.not.i.i963 = icmp eq ptr %i.aln, null
  br i1 %.not.i.i963, label %_ZN2v88internal6torque11InstructionD2Ev.exit965, label %_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i964

_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i964: ; preds = %bb.jb
  %i.alo = load ptr, ptr %i.aln, align 8
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 24
  %i.alq = load ptr, ptr %i.alp, align 8
  call void %i.alq(ptr noundef nonnull align 8 dereferenceable(36) %i.aln) #27, !inline_history !8
  br label %_ZN2v88internal6torque11InstructionD2Ev.exit965

_ZN2v88internal6torque11InstructionD2Ev.exit965:  ; preds = %_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i964, %bb.jb, %bb.ja
  %.pn564 = phi { ptr, i32 } [ %i.all, %bb.ja ], [ %i.alm, %bb.jb ], [ %i.alm, %_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i964 ]
  call void @_ZN2v88internal6torque23CallCsaMacroInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %55) #27
  br label %bb.jc

bb.jc:                                            ; preds = %_ZN2v88internal6torque11InstructionD2Ev.exit965, %bb.iz
  %.pn564.pn = phi { ptr, i32 } [ %.pn564, %_ZN2v88internal6torque11InstructionD2Ev.exit965 ], [ %i.alk, %bb.iz ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %56) #27
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit732

._crit_edge1836:                                  ; preds = %bb.io, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i953
  %i.alr = load ptr, ptr %i.ajl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.als = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.als, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.als, ptr noundef nonnull align 1 dereferenceable(5) @.str.516, i64 5, i1 false)
  %i.alt = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 5, ptr %i.alt, align 8
  %i.alu = getelementptr inbounds nuw i8, ptr %8, i64 21
  store i8 0, ptr %i.alu, align 1
  %i.alv = invoke noundef ptr @_ZN2v88internal6torque10TypeOracle14GetBuiltinTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %i.alr, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.jd unwind label %bb.je

bb.jd:                                            ; preds = %._crit_edge1836
  %i.alw = load ptr, ptr %8, align 8              ; 2 uses
  %i.alx = icmp eq ptr %i.alw, %i.als
  br i1 %i.alx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i971, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i970

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i970: ; preds = %bb.jd
  %i.aly = load i64, ptr %i.als, align 8
  %i.alz = add i64 %i.aly, 1
  call void @_ZdlPvm(ptr noundef %i.alw, i64 noundef %i.alz) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i971

bb.je:                                            ; preds = %._crit_edge1836
  %i.ama = landingpad { ptr, i32 }
          cleanup
  %i.amb = load ptr, ptr %8, align 8              ; 2 uses
  %i.amc = icmp eq ptr %i.amb, %i.als
  br i1 %i.amc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i968, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i967

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i967: ; preds = %bb.je
  %i.amd = load i64, ptr %i.als, align 8
  %i.ame = add i64 %i.amd, 1
  call void @_ZdlPvm(ptr noundef %i.amb, i64 noundef %i.ame) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i968

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i968: ; preds = %bb.je, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i967
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit732

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i971: ; preds = %bb.jd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i970
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %.not541 = icmp eq ptr %i.ad, %i.alv            ; 2 uses
  br i1 %.not541, label %bb.jf, label %_ZNSt8optionalIN2v88internal6torque5StackIPKNS2_4TypeEEEEC2EOS8_.exit.i

_ZNSt8optionalIN2v88internal6torque5StackIPKNS2_4TypeEEEEC2EOS8_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i971
  %i.amf = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.amg = load i64, ptr %i.amf, align 8          ; 2 uses
  %i.amh = add i64 %i.amg, 1
  store i64 %i.amh, ptr %i.amf, align 8
  %i.ami = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #29
          to label %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit unwind label %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit4.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit4.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i769, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1186, %.noexc6.i.i.i.i.i.i.i.i.i.invoke, %.noexc.i.i.i.i.i.i.i.i.i.invoke, %.invoke2236, %.invoke2235, %.invoke2233, %bb.sn, %bb.na, %bb.gt, %bb.fl, %_ZN2v88internal6torque11InstructionD2Ev.exit, %bb.gu, %bb.gm, %bb.is, %_ZN2v88internal6torque11InstructionD2Ev.exit959, %bb.ix, %bb.lv, %_ZN2v88internal6torque11InstructionD2Ev.exit1073, %bb.me, %bb.pw, %_ZNSt6vectorIPKN2v88internal6torque4TypeESaIS5_EED2Ev.exit1262, %bb.tn, %bb.sy, %bb.sc, %bb.qf, %bb.qc, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit2270.thread2279, %bb.ot, %bb.or, %bb.mh, %bb.sg, %bb.sl, %bb.sk, %bb.fm, %bb.lw, %_ZNSt8optionalIN2v88internal6torque5StackIPKNS2_4TypeEEEEC2EOS8_.exit.i
  %lpad.loopexit.split-lp2966 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2v88internal6torque11VisitResultD2Ev.exit732

_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt8optionalIN2v88internal6torque5StackIPKNS2_4TypeEEEEC2EOS8_.exit.i
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.amj, i8 0, i64 24, i1 false)
  %i.amk = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.ami, i64 16
  store ptr %i.amk, ptr %i.aml, align 8
  %i.amm = getelementptr inbounds nuw i8, ptr %i.ami, i64 72
  store i8 0, ptr %i.amm, align 8
  %i.amn = getelementptr inbounds nuw i8, ptr %i.ami, i64 104
  store i8 0, ptr %i.amn, align 8
  %i.amo = getelementptr inbounds nuw i8, ptr %i.ami, i64 112
  store i64 %i.amg, ptr %i.amo, align 8
  %i.amp = getelementptr inbounds nuw i8, ptr %i.ami, i64 120
  store i8 0, ptr %i.amp, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ami, ptr noundef nonnull align 8 dereferenceable(112) %i.amk) #27
  %i.amq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.amr = load i64, ptr %i.amq, align 8
  %i.ams = add i64 %i.amr, 1
  store i64 %i.ams, ptr %i.amq, align 8
  %i.amt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.amu = load ptr, ptr %i.amt, align 8
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 16
  br label %bb.jf

bb.jf:                                            ; preds = %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i971
  %.sroa.01351.0 = phi ptr [ undef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i971 ], [ %i.amv, %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit ] ; 2 uses
  %.sroa.61352.0 = phi i8 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i971 ], [ 1, %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit ]
  %.not1759 = icmp eq ptr %i.rn, %i.ro            ; 2 uses
  br i1 %.not1759, label %._crit_edge1727, label %_ZNSt8optionalIN2v88internal6torque5StackIPKNS2_4TypeEEEEC2EOS8_.exit.i980.lr.ph

_ZNSt8optionalIN2v88internal6torque5StackIPKNS2_4TypeEEEEC2EOS8_.exit.i980.lr.ph: ; preds = %bb.jf
  %i.amw = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_ZNSt8optionalIN2v88internal6torque5StackIPKNS2_4TypeEEEEC2EOS8_.exit.i980

._crit_edge1727:                                  ; preds = %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit997, %bb.jf
  %.sroa.01325.0.lcssa = phi ptr [ null, %bb.jf ], [ %.sroa.01325.1, %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit997 ] ; 22 uses
  %.sroa.11.0.lcssa = phi ptr [ null, %bb.jf ], [ %.sroa.11.1, %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit997 ] ; 2 uses
  %.sroa.17.0.lcssa = phi ptr [ null, %bb.jf ], [ %.sroa.17.1, %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit997 ] ; 16 uses
  %i.ana = invoke { ptr, i8 } @_ZN2v88internal6torque21ImplementationVisitor13GetCatchBlockEv(ptr noundef nonnull align 8 dereferenceable(1460) %1)
          to label %bb.jm unwind label %.loopexit.split-lp1459.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSt8optionalIN2v88internal6torque5StackIPKNS2_4TypeEEEEC2EOS8_.exit.i980: ; preds = %_ZNSt8optionalIN2v88internal6torque5StackIPKNS2_4TypeEEEEC2EOS8_.exit.i980.lr.ph, %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit997
  %.04201726 = phi i64 [ 0, %_ZNSt8optionalIN2v88internal6torque5StackIPKNS2_4TypeEEEEC2EOS8_.exit.i980.lr.ph ], [ %i.aoc, %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit997 ]
  %.sroa.17.01725 = phi ptr [ null, %_ZNSt8optionalIN2v88internal6torque5StackIPKNS2_4TypeEEEEC2EOS8_.exit.i980.lr.ph ], [ %.sroa.17.1, %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit997 ] ; 5 uses
  %.sroa.11.01724 = phi ptr [ null, %_ZNSt8optionalIN2v88internal6torque5StackIPKNS2_4TypeEEEEC2EOS8_.exit.i980.lr.ph ], [ %.sroa.11.1, %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit997 ] ; 3 uses
  %.sroa.01325.01723 = phi ptr [ null, %_ZNSt8optionalIN2v88internal6torque5StackIPKNS2_4TypeEEEEC2EOS8_.exit.i980.lr.ph ], [ %.sroa.01325.1, %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit997 ] ; 7 uses
  %i.anb = load i64, ptr %i.amw, align 8          ; 2 uses
  %i.anc = add i64 %i.anb, 1
  store i64 %i.anc, ptr %i.amw, align 8
  %i.and = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #29
          to label %bb.jg unwind label %.loopexit.split-lp1459.loopexit.split-lp.loopexit ; 7 uses

bb.jg:                                            ; preds = %_ZNSt8optionalIN2v88internal6torque5StackIPKNS2_4TypeEEEEC2EOS8_.exit.i980
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ane, i8 0, i64 24, i1 false)
  %i.anf = getelementptr inbounds nuw i8, ptr %i.and, i64 16
  store ptr %i.amx, ptr %i.anf, align 8
  %i.ang = getelementptr inbounds nuw i8, ptr %i.and, i64 72
  store i8 0, ptr %i.ang, align 8
  %i.anh = getelementptr inbounds nuw i8, ptr %i.and, i64 104
  store i8 0, ptr %i.anh, align 8
  %i.ani = getelementptr inbounds nuw i8, ptr %i.and, i64 112
  store i64 %i.anb, ptr %i.ani, align 8
  %i.anj = getelementptr inbounds nuw i8, ptr %i.and, i64 120
  store i8 0, ptr %i.anj, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.and, ptr noundef nonnull align 8 dereferenceable(112) %i.amx) #27
  %i.ank = load i64, ptr %i.amy, align 8
  %i.anl = add i64 %i.ank, 1
  store i64 %i.anl, ptr %i.amy, align 8
  %i.anm = load ptr, ptr %i.amz, align 8
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 16 ; 2 uses
  %.not.i.i992 = icmp eq ptr %.sroa.11.01724, %.sroa.17.01725
  br i1 %.not.i.i992, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  store ptr %i.ann, ptr %.sroa.11.01724, align 8
  br label %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit997

bb.ji:                                            ; preds = %bb.jg
  %i.ano = ptrtoint ptr %.sroa.17.01725 to i64
  %i.anp = ptrtoint ptr %.sroa.01325.01723 to i64
  %i.anq = sub i64 %i.ano, %i.anp                 ; 6 uses
  %i.anr = icmp eq i64 %i.anq, 9223372036854775800
  br i1 %i.anr, label %bb.jj, label %_ZNKSt6vectorIPN2v88internal6torque5BlockESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.jj:                                            ; preds = %bb.ji
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.521) #28
          to label %.noexc994 unwind label %.loopexit.split-lp1459.loopexit.split-lp.loopexit.split-lp

.noexc994:                                        ; preds = %bb.jj
  unreachable

_ZNKSt6vectorIPN2v88internal6torque5BlockESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ji
  %i.ans = ashr exact i64 %i.anq, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ans, i64 1)
  %i.ant = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ans ; 2 uses
  %i.anu = icmp ult i64 %i.ant, %i.ans
  %i.anv = call i64 @llvm.umin.i64(i64 %i.ant, i64 1152921504606846975)
  %i.anw = select i1 %i.anu, i64 1152921504606846975, i64 %i.anv ; 3 uses
  %.not.i.i.i.i993 = icmp ne i64 %i.anw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i993)
  %i.anx = shl nuw nsw i64 %i.anw, 3
  %i.any = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.anx) #29
          to label %.noexc995 unwind label %.loopexit.split-lp1459.loopexit.split-lp.loopexit ; 4 uses

.noexc995:                                        ; preds = %_ZNKSt6vectorIPN2v88internal6torque5BlockESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.anz = getelementptr inbounds i8, ptr %i.any, i64 %i.anq ; 2 uses
  store ptr %i.ann, ptr %i.anz, align 8
  %i.aoa = icmp sgt i64 %i.anq, 0
  br i1 %i.aoa, label %bb.jk, label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.jk:                                            ; preds = %.noexc995
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.any, ptr align 8 %.sroa.01325.01723, i64 %i.anq, i1 false)
  br label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.jk, %.noexc995
  %.not.i17.i.i.i = icmp eq ptr %.sroa.01325.01723, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.jl

bb.jl:                                            ; preds = %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01325.01723, i64 noundef %i.anq) #30
  br label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.jl, %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.aob = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %i.anw
  br label %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit997

_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit997: ; preds = %bb.jh, %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  %.sroa.01325.1 = phi ptr [ %i.any, %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.01325.01723, %bb.jh ] ; 2 uses
  %.pn1445 = phi ptr [ %i.anz, %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.11.01724, %bb.jh ]
  %.sroa.17.1 = phi ptr [ %i.aob, %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.17.01725, %bb.jh ] ; 2 uses
  %.sroa.11.1 = getelementptr inbounds nuw i8, ptr %.pn1445, i64 8 ; 2 uses
  %i.aoc = add nuw i64 %.04201726, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aoc, %i.rs
  br i1 %exitcond.not, label %._crit_edge1727, label %_ZNSt8optionalIN2v88internal6torque5StackIPKNS2_4TypeEEEEC2EOS8_.exit.i980, !llvm.loop !894

bb.jm:                                            ; preds = %._crit_edge1727
  %i.aod = extractvalue { ptr, i8 } %i.ana, 0     ; 2 uses
  %i.aoe = extractvalue { ptr, i8 } %i.ana, 1     ; 2 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.aog = load ptr, ptr %i.aof, align 8          ; 3 uses
  %i.aoh = load ptr, ptr %33, align 16            ; 3 uses
  %i.aoi = ptrtoint ptr %i.aog to i64
  %i.aoj = ptrtoint ptr %i.aoh to i64
  %i.aok = sub i64 %i.aoi, %i.aoj                 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false)
  %.not.i.i.i.i1000 = icmp eq ptr %i.aog, %i.aoh
  br i1 %.not.i.i.i.i1000, label %.noexc1003, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.aol = icmp ugt i64 %i.aok, 9223372036854775776
  br i1 %i.aol, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !43

.noexc.i.i:                                       ; preds = %bb.jn
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc1002 unwind label %.loopexit.split-lp1459.loopexit.split-lp.loopexit.split-lp

.noexc1002:                                       ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.jn
  %i.aom = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aok) #29
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc1003_crit_edge unwind label %.loopexit.split-lp1459.loopexit.split-lp.loopexit.split-lp

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc1003_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i
  %.pre1826 = load ptr, ptr %33, align 16
  %.pre1827 = load ptr, ptr %i.aof, align 8
  br label %.noexc1003

.noexc1003:                                       ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc1003_crit_edge, %bb.jm
  %i.aon = phi ptr [ %i.aog, %bb.jm ], [ %.pre1827, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc1003_crit_edge ]
  %i.aoo = phi ptr [ %i.aoh, %bb.jm ], [ %.pre1826, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc1003_crit_edge ]
  %i.aop = phi ptr [ null, %bb.jm ], [ %i.aom, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i..noexc1003_crit_edge ] ; 4 uses
  store ptr %i.aop, ptr %59, align 8
  %i.aoq = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 3 uses
  store ptr %i.aop, ptr %i.aoq, align 8
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aop, i64 %i.aok
  %i.aos = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 3 uses
  store ptr %i.aor, ptr %i.aos, align 8
  %i.aot = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aoo, ptr %i.aon, ptr noundef %i.aop)
          to label %bb.jq unwind label %bb.jo

bb.jo:                                            ; preds = %.noexc1003
  %i.aou = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aov = load ptr, ptr %59, align 8             ; 3 uses
  %.not.i.i.i1001 = icmp eq ptr %i.aov, null
  br i1 %.not.i.i.i1001, label %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit999, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.aow = load ptr, ptr %i.aos, align 8
  %i.aox = ptrtoint ptr %i.aow to i64
  %i.aoy = ptrtoint ptr %i.aov to i64
  %i.aoz = sub i64 %i.aox, %i.aoy
  call void @_ZdlPvm(ptr noundef nonnull %i.aov, i64 noundef %i.aoz) #30
  br label %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit999

bb.jq:                                            ; preds = %.noexc1003
  store ptr %i.aot, ptr %i.aoq, align 8
  %i.apa = ptrtoint ptr %.sroa.11.0.lcssa to i64
  %i.apb = ptrtoint ptr %.sroa.01325.0.lcssa to i64 ; 4 uses
  %i.apc = sub i64 %i.apa, %i.apb                 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false)
  %.not.i.i.i.i1006 = icmp eq ptr %.sroa.11.0.lcssa, %.sroa.01325.0.lcssa
  br i1 %.not.i.i.i.i1006, label %.thread1415, label %bb.jr

.thread1415:                                      ; preds = %bb.jq
  %i.apd = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.ape = getelementptr inbounds i8, ptr null, i64 %i.apc ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, i8 0, i64 16, i1 false)
  store ptr %i.ape, ptr %i.apf, align 8
  br label %bb.jv

bb.jr:                                            ; preds = %bb.jq
  %i.apg = icmp ugt i64 %i.apc, 9223372036854775800
  br i1 %i.apg, label %.noexc.i.i1007, label %_ZNSt15__new_allocatorIPN2v88internal6torque5BlockEE8allocateEmPKv.exit.i.i.i.i, !prof !43

.noexc.i.i1007:                                   ; preds = %bb.jr
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc1008 unwind label %bb.kd

.noexc1008:                                       ; preds = %.noexc.i.i1007
  unreachable
end_hunk_0
begin_hunk_1_@_ZN2v88internal6torque21ImplementationVisitor12GenerateCallEPNS1_8CallableESt8optionalINS1_17LocationReferenceEENS1_9ArgumentsERKSt6vectorIPKNS1_4TypeESaISC_EEb:bb.a
bb.js:                                            ; preds = %.noexc1009
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aph, ptr align 8 %.sroa.01325.0.lcssa, i64 %i.apc, i1 false)
  br label %bb.jv

bb.jt:                                            ; preds = %.noexc1009
  %i.apm = icmp eq i64 %i.apc, 8
  br i1 %i.apm, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.apn = load ptr, ptr %.sroa.01325.0.lcssa, align 8
  store ptr %i.apn, ptr %i.aph, align 8
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt, %bb.js, %.thread1415
  %i.apo = phi ptr [ %i.apk, %bb.js ], [ %i.apk, %bb.jt ], [ %i.apk, %bb.ju ], [ %i.apf, %.thread1415 ] ; 2 uses
  %i.app = phi ptr [ %i.apj, %bb.js ], [ %i.apj, %bb.jt ], [ %i.apj, %bb.ju ], [ %i.ape, %.thread1415 ]
  %i.apq = phi ptr [ %i.api, %bb.js ], [ %i.api, %bb.jt ], [ %i.api, %bb.ju ], [ %i.apd, %.thread1415 ]
  store ptr %i.app, ptr %i.apq, align 8
  store ptr %i.aod, ptr %61, align 8
  %.sroa.6115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i8 %i.aoe, ptr %.sroa.6115.0..sroa_idx, align 8
  invoke void @_ZN2v88internal6torque32CallCsaMacroAndBranchInstructionC2EPNS1_5MacroESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESt8optionalIPNS1_5BlockEES5_ISG_SaISG_EESH_(ptr noundef nonnull align 8 dereferenceable(128) %58, ptr noundef nonnull %2, ptr noundef nonnull align 8 %59, ptr %.sroa.01351.0, i8 %.sroa.61352.0, ptr noundef nonnull align 8 %60, ptr noundef nonnull byval(%"class.std::optional.27") align 8 %61)
          to label %bb.jw unwind label %bb.ke

bb.jw:                                            ; preds = %bb.jv
  %i.apr = load i32, ptr @_ZN2v88internal6torque32CallCsaMacroAndBranchInstruction5kKindE, align 4
  store i32 %i.apr, ptr %57, align 8
  %i.aps = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 3 uses
  %i.apt = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #29
          to label %bb.jx unwind label %bb.kf     ; 9 uses

bb.jx:                                            ; preds = %bb.jw
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 8
  %i.apv = getelementptr inbounds nuw i8, ptr %58, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.apu, ptr noundef nonnull align 8 dereferenceable(28) %i.apv, i64 28, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN2v88internal6torque32CallCsaMacroAndBranchInstructionE, i64 16), ptr %i.apt, align 8
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apt, i64 40
  %i.apx = getelementptr inbounds nuw i8, ptr %58, i64 40
  %i.apy = getelementptr inbounds nuw i8, ptr %58, i64 48 ; 3 uses
  %i.apz = load <2 x ptr>, ptr %i.apx, align 8
  store <2 x ptr> %i.apz, ptr %i.apw, align 8
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apt, i64 56
  %i.aqb = getelementptr inbounds nuw i8, ptr %58, i64 56 ; 2 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %58, i64 64
  %i.aqd = load <2 x ptr>, ptr %i.aqb, align 8
  store <2 x ptr> %i.aqd, ptr %i.aqa, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.apy, i8 0, i64 24, i1 false)
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.apt, i64 72
  %i.aqf = getelementptr inbounds nuw i8, ptr %58, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqe, ptr noundef nonnull align 8 dereferenceable(16) %i.aqf, i64 16, i1 false)
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.apt, i64 88
  %i.aqh = getelementptr inbounds nuw i8, ptr %58, i64 88 ; 3 uses
  %i.aqi = load <2 x ptr>, ptr %i.aqh, align 8
  store <2 x ptr> %i.aqi, ptr %i.aqg, align 8
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.apt, i64 104
  %i.aqk = getelementptr inbounds nuw i8, ptr %58, i64 104 ; 2 uses
  %i.aql = load ptr, ptr %i.aqk, align 8
  store ptr %i.aql, ptr %i.aqj, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqh, i8 0, i64 24, i1 false)
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.apt, i64 112
  %i.aqn = getelementptr inbounds nuw i8, ptr %58, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqm, ptr noundef nonnull align 8 dereferenceable(16) %i.aqn, i64 16, i1 false)
  store ptr %i.apt, ptr %i.aps, align 8
  invoke void @_ZN2v88internal6torque12CfgAssembler4EmitENS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 %57)
          to label %bb.jy unwind label %bb.kg

bb.jy:                                            ; preds = %bb.jx
  %i.aqo = load ptr, ptr %i.aps, align 8          ; 3 uses
  %.not.i.i1011 = icmp eq ptr %i.aqo, null
  br i1 %.not.i.i1011, label %_ZN2v88internal6torque11InstructionD2Ev.exit1013, label %_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i1012

_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i1012: ; preds = %bb.jy
  %i.aqp = load ptr, ptr %i.aqo, align 8
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 24
  %i.aqr = load ptr, ptr %i.aqq, align 8
  call void %i.aqr(ptr noundef nonnull align 8 dereferenceable(36) %i.aqo) #27, !inline_history !8
  br label %_ZN2v88internal6torque11InstructionD2Ev.exit1013

_ZN2v88internal6torque11InstructionD2Ev.exit1013: ; preds = %bb.jy, %_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i1012
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN2v88internal6torque32CallCsaMacroAndBranchInstructionE, i64 16), ptr %58, align 8
  %i.aqs = load ptr, ptr %i.aqh, align 8          ; 3 uses
  %.not.i.i.i.i1014 = icmp eq ptr %i.aqs, null
  br i1 %.not.i.i.i.i1014, label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit.i, label %bb.jz

bb.jz:                                            ; preds = %_ZN2v88internal6torque11InstructionD2Ev.exit1013
  %i.aqt = load ptr, ptr %i.aqk, align 8
  %i.aqu = ptrtoint ptr %i.aqt to i64
  %i.aqv = ptrtoint ptr %i.aqs to i64
  %i.aqw = sub i64 %i.aqu, %i.aqv
  call void @_ZdlPvm(ptr noundef nonnull %i.aqs, i64 noundef %i.aqw) #30
  br label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit.i: ; preds = %bb.jz, %_ZN2v88internal6torque11InstructionD2Ev.exit1013
  %i.aqx = load ptr, ptr %i.apy, align 8          ; 3 uses
  %i.aqy = load ptr, ptr %i.aqb, align 8          ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aqx, %i.aqy
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.are, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.aqx, %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit.i ] ; 3 uses
  %i.aqz = load ptr, ptr %.05.i.i.i.i, align 8    ; 2 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.arb = icmp eq ptr %i.aqz, %i.ara
  br i1 %i.arb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.arc = load i64, ptr %i.ara, align 8
  %i.ard = add i64 %i.arc, 1
  call void @_ZdlPvm(ptr noundef %i.aqz, i64 noundef %i.ard) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.are = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.are, %i.aqy
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.apy, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit.i
  %i.arf = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.aqx, %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.arf, null
  br i1 %.not.i.i1.i.i, label %_ZN2v88internal6torque32CallCsaMacroAndBranchInstructionD2Ev.exit, label %bb.ka

bb.ka:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.arg = load ptr, ptr %i.aqc, align 8
  %i.arh = ptrtoint ptr %i.arg to i64
  %i.ari = ptrtoint ptr %i.arf to i64
  %i.arj = sub i64 %i.arh, %i.ari
  call void @_ZdlPvm(ptr noundef nonnull %i.arf, i64 noundef %i.arj) #30
  br label %_ZN2v88internal6torque32CallCsaMacroAndBranchInstructionD2Ev.exit

_ZN2v88internal6torque32CallCsaMacroAndBranchInstructionD2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.ka
  %i.ark = load ptr, ptr %60, align 8             ; 3 uses
  %.not.i.i.i1015 = icmp eq ptr %i.ark, null
  br i1 %.not.i.i.i1015, label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit1016, label %bb.kb

bb.kb:                                            ; preds = %_ZN2v88internal6torque32CallCsaMacroAndBranchInstructionD2Ev.exit
  %i.arl = load ptr, ptr %i.apo, align 8
  %i.arm = ptrtoint ptr %i.arl to i64
  %i.arn = ptrtoint ptr %i.ark to i64
  %i.aro = sub i64 %i.arm, %i.arn
  call void @_ZdlPvm(ptr noundef nonnull %i.ark, i64 noundef %i.aro) #30
  br label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit1016

_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit1016: ; preds = %_ZN2v88internal6torque32CallCsaMacroAndBranchInstructionD2Ev.exit, %bb.kb
  %i.arp = load ptr, ptr %59, align 8             ; 3 uses
  %i.arq = load ptr, ptr %i.aoq, align 8          ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.arp, %i.arq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i1017

.lr.ph.i.i.i1017:                                 ; preds = %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit1016, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.arw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.arp, %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit1016 ] ; 3 uses
  %i.arr = load ptr, ptr %.05.i.i.i, align 8      ; 2 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.art = icmp eq ptr %i.arr, %i.ars
  br i1 %i.art, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1018

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1018: ; preds = %.lr.ph.i.i.i1017
  %i.aru = load i64, ptr %i.ars, align 8
  %i.arv = add i64 %i.aru, 1
  call void @_ZdlPvm(ptr noundef %i.arr, i64 noundef %i.arv) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i1017, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1018
  %i.arw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1019 = icmp eq ptr %i.arw, %i.arq
  br i1 %.not.i.i.i1019, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i1017, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %59, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit1016
  %i.arx = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.arp, %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit1016 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.arx, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.kc

bb.kc:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ary = load ptr, ptr %i.aos, align 8
  %i.arz = ptrtoint ptr %i.ary to i64
  %i.asa = ptrtoint ptr %i.arx to i64
  %i.asb = sub i64 %i.arz, %i.asa
  call void @_ZdlPvm(ptr noundef nonnull %i.arx, i64 noundef %i.asb) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.kc
  invoke void @_ZN2v88internal6torque21ImplementationVisitor18GenerateCatchBlockESt8optionalIPNS1_5BlockEE(ptr noundef nonnull align 8 dereferenceable(1460) %1, ptr %i.aod, i8 %i.aoe)
          to label %.preheader unwind label %.loopexit.split-lp1459.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  br i1 %.not1759, label %._crit_edge1738, label %.lr.ph1737

.lr.ph1737:                                       ; preds = %.preheader
  %i.asc = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.asd = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  br label %bb.kj

._crit_edge1738:                                  ; preds = %._crit_edge1734, %.preheader
  br i1 %.not541, label %bb.lr, label %bb.lo

bb.kd:                                            ; preds = %_ZNSt15__new_allocatorIPN2v88internal6torque5BlockEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i1007
  %i.ase = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit1026

bb.ke:                                            ; preds = %bb.jv
  %i.asf = landingpad { ptr, i32 }
          cleanup
  br label %bb.kh

bb.kf:                                            ; preds = %bb.jw
  %i.asg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2v88internal6torque11InstructionD2Ev.exit1024

bb.kg:                                            ; preds = %bb.jx
  %i.ash = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.asi = load ptr, ptr %i.aps, align 8          ; 3 uses
  %.not.i.i1022 = icmp eq ptr %i.asi, null
  br i1 %.not.i.i1022, label %_ZN2v88internal6torque11InstructionD2Ev.exit1024, label %_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i1023

_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i1023: ; preds = %bb.kg
  %i.asj = load ptr, ptr %i.asi, align 8
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 24
  %i.asl = load ptr, ptr %i.ask, align 8
  call void %i.asl(ptr noundef nonnull align 8 dereferenceable(36) %i.asi) #27, !inline_history !8
  br label %_ZN2v88internal6torque11InstructionD2Ev.exit1024

_ZN2v88internal6torque11InstructionD2Ev.exit1024: ; preds = %_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i1023, %bb.kg, %bb.kf
  %.pn542 = phi { ptr, i32 } [ %i.asg, %bb.kf ], [ %i.ash, %bb.kg ], [ %i.ash, %_ZNKSt14default_deleteIN2v88internal6torque15InstructionBaseEEclEPS3_.exit.i.i1023 ]
  call void @_ZN2v88internal6torque32CallCsaMacroAndBranchInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %58) #27
  br label %bb.kh

bb.kh:                                            ; preds = %_ZN2v88internal6torque11InstructionD2Ev.exit1024, %bb.ke
  %.pn542.pn = phi { ptr, i32 } [ %.pn542, %_ZN2v88internal6torque11InstructionD2Ev.exit1024 ], [ %i.asf, %bb.ke ] ; 2 uses
  %i.asm = load ptr, ptr %60, align 8             ; 3 uses
  %.not.i.i.i1025 = icmp eq ptr %i.asm, null
  br i1 %.not.i.i.i1025, label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit1026, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.asn = load ptr, ptr %i.apo, align 8
  %i.aso = ptrtoint ptr %i.asn to i64
  %i.asp = ptrtoint ptr %i.asm to i64
  %i.asq = sub i64 %i.aso, %i.asp
  call void @_ZdlPvm(ptr noundef nonnull %i.asm, i64 noundef %i.asq) #30
  br label %_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit1026

_ZNSt6vectorIPN2v88internal6torque5BlockESaIS4_EED2Ev.exit1026: ; preds = %bb.ki, %bb.kh, %bb.kd
  %.pn542.pn.pn = phi { ptr, i32 } [ %i.ase, %bb.kd ], [ %.pn542.pn, %bb.kh ], [ %.pn542.pn, %bb.ki ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %59) #27
  br label %_ZNSt14_Optional_baseIN2v88internal6torque5StackIPKNS2_4TypeEEELb0ELb0EED2Ev.exit999

bb.kj:                                            ; preds = %.lr.ph1737, %._crit_edge1734
  %.04161736 = phi i64 [ 0, %.lr.ph1737 ], [ %i.awq, %._crit_edge1734 ] ; 7 uses
  %i.asr = load ptr, ptr %i.rt, align 8
  %i.ass = getelementptr inbounds nuw [8 x i8], ptr %i.asr, i64 %.04161736
  %i.ast = load ptr, ptr %i.ass, align 8          ; 6 uses
  %i.asu = load ptr, ptr %i.rl, align 8
  %i.asv = getelementptr inbounds nuw [32 x i8], ptr %i.asu, i64 %.04161736 ; 2 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 8
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asv, i64 16
  %i.asy = load ptr, ptr %i.asx, align 8
  %i.asz = load ptr, ptr %i.asw, align 8
  %i.ata = ptrtoint ptr %i.asy to i64
  %i.atb = ptrtoint ptr %i.asz to i64
  %i.atc = sub i64 %i.ata, %i.atb                 ; 2 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %i.ast, i64 8 ; 3 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %i.ast, i64 16
  %i.atf = load ptr, ptr %i.ate, align 8
  %i.atg = load ptr, ptr %i.atd, align 8
  %i.ath = ptrtoint ptr %i.atf to i64
  %i.ati = ptrtoint ptr %i.atg to i64
  %i.atj = sub i64 %i.ath, %i.ati
  %.not546 = icmp eq i64 %i.atj, %i.atc
  br i1 %.not546, label %bb.lb, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.atk = getelementptr inbounds nuw i8, ptr %i.ast, i64 16
  %i.atl = ashr exact i64 %i.atc, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #27
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %62)
          to label %bb.kl unwind label %bb.kq

bb.kl:                                            ; preds = %bb.kk
  %i.atm = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  %i.atn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.atm, ptr noundef nonnull @.str.210, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1028 unwind label %bb.kr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1028: ; preds = %bb.kl
  %i.ato = getelementptr inbounds nuw i8, ptr %i.ast, i64 40
  %i.atp = load ptr, ptr %i.ato, align 8
  %i.atq = getelementptr inbounds nuw i8, ptr %i.ast, i64 48
  %i.atr = load i64, ptr %i.atq, align 8
  %i.ats = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.atm, ptr noundef %i.atp, i64 noundef %i.atr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1030 unwind label %bb.kr ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1030: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1028
  %i.att = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ats, ptr noundef nonnull @.str.269, i64 noundef 52)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1032 unwind label %bb.kr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1032: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1030
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #27
  %i.atu = load ptr, ptr %i.atk, align 8
  %i.atv = load ptr, ptr %i.atd, align 8
  %i.atw = ptrtoint ptr %i.atu to i64
  %i.atx = ptrtoint ptr %i.atv to i64
  %i.aty = sub i64 %i.atw, %i.atx
  %i.atz = ashr exact i64 %i.aty, 3
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %63, i64 noundef %i.atz)
          to label %bb.km unwind label %bb.ks

bb.km:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1032
  %i.aua = load ptr, ptr %63, align 8
  %i.aub = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.auc = load i64, ptr %i.aub, align 8
  %i.aud = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ats, ptr noundef %i.aua, i64 noundef %i.auc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1034 unwind label %bb.kt ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1034: ; preds = %bb.km
  %i.aue = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aud, ptr noundef nonnull @.str.270, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1036 unwind label %bb.kt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1036: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1034
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #27
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %64, i64 noundef %i.atl)
          to label %bb.kn unwind label %bb.ku

bb.kn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1036
  %i.auf = load ptr, ptr %64, align 8
  %i.aug = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.auh = load i64, ptr %i.aug, align 8
  %i.aui = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aud, ptr noundef %i.auf, i64 noundef %i.auh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1038 unwind label %bb.kv

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1038: ; preds = %bb.kn
  %i.auj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aui, ptr noundef nonnull @.str.124, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1040 unwind label %bb.kv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1040: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1038
  %i.auk = load ptr, ptr %64, align 8             ; 2 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 2 uses
  %i.aum = icmp eq ptr %i.auk, %i.aul
  br i1 %i.aum, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1043, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1041

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1041: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1040
  %i.aun = load i64, ptr %i.aul, align 8
  %i.auo = add i64 %i.aun, 1
  call void @_ZdlPvm(ptr noundef %i.auk, i64 noundef %i.auo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1043

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1043: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1040, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1041
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #27
  %i.aup = load ptr, ptr %63, align 8             ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  %i.aur = icmp eq ptr %i.aup, %i.auq
  br i1 %i.aur, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1046, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1044

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1044: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1043
  %i.aus = load i64, ptr %i.auq, align 8
  %i.aut = add i64 %i.aus, 1
  call void @_ZdlPvm(ptr noundef %i.aup, i64 noundef %i.aut) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1046

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1046: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1043, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1044
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #27
  invoke void @_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %65, ptr noundef nonnull align 8 dereferenceable(128) %62)
          to label %bb.ko unwind label %bb.kx

bb.ko:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1046
  invoke void @_ZN2v88internal6torque11ReportErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %65) #28
          to label %bb.kp unwind label %bb.ky

bb.kp:                                            ; preds = %bb.ko
  unreachable

bb.kq:                                            ; preds = %bb.kk
  %i.auu = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

bb.kr:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1030, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1028, %bb.kl
  %i.auv = landingpad { ptr, i32 }
          cleanup
  br label %bb.kz

bb.ks:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1032
  %i.auw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1052

bb.kt:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1034, %bb.km
  %i.aux = landingpad { ptr, i32 }
          cleanup
  br label %bb.kw

bb.ku:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1036
  %i.auy = landingpad { ptr, i32 }
end_hunk_1
