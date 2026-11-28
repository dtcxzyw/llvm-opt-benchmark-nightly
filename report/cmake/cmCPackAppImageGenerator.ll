Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCPackAppImageGenerator?download=true
inline.NumInlined: 1278
inline.NumDeleted: 333
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN24cmCPackAppImageGenerator12PackageFilesEv:bb.a
  call void @_ZdlPvm(ptr noundef %i.awk, i64 noundef %i.awo) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit959

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit959: ; preds = %bb.mj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i957
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #23
  %i.awp = load ptr, ptr %108, align 8, !tbaa !24 ; 2 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %108, i64 16 ; 2 uses
  %i.awr = icmp eq ptr %i.awp, %i.awq
  br i1 %i.awr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit962, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i960

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i960: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit959
  %i.aws = load i64, ptr %i.awq, align 8, !tbaa !23
  %i.awt = add i64 %i.aws, 1
  call void @_ZdlPvm(ptr noundef %i.awp, i64 noundef %i.awt) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit962

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit962: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit959, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i960
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %112, ptr noundef nonnull @.str.54, ptr noundef nonnull align 1 dereferenceable(1) %113)
          to label %bb.mk unwind label %bb.ny

bb.mk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit962
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(1) %115)
          to label %bb.ml unwind label %bb.nz

bb.ml:                                            ; preds = %bb.mk
  invoke fastcc void @"_ZZN24cmCPackAppImageGenerator12PackageFilesEvENK3$_1clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_"(ptr nonnull %73, ptr %0, ptr noundef nonnull align 8 dereferenceable(32) %112, ptr noundef align 8 %114)
          to label %bb.mm unwind label %bb.oa

bb.mm:                                            ; preds = %bb.ml
  %i.awu = load ptr, ptr %114, align 8, !tbaa !24 ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %114, i64 16 ; 2 uses
  %i.aww = icmp eq ptr %i.awu, %i.awv
  br i1 %i.aww, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit965, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i963

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i963: ; preds = %bb.mm
  %i.awx = load i64, ptr %i.awv, align 8, !tbaa !23
  %i.awy = add i64 %i.awx, 1
  call void @_ZdlPvm(ptr noundef %i.awu, i64 noundef %i.awy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit965

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit965: ; preds = %bb.mm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i963
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #23
  %i.awz = load ptr, ptr %112, align 8, !tbaa !24 ; 2 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %112, i64 16 ; 2 uses
  %i.axb = icmp eq ptr %i.awz, %i.axa
  br i1 %i.axb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit968, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i966

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i966: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit965
  %i.axc = load i64, ptr %i.axa, align 8, !tbaa !23
  %i.axd = add i64 %i.axc, 1
  call void @_ZdlPvm(ptr noundef %i.awz, i64 noundef %i.axd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit968

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit968: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit965, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i966
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %116)
          to label %bb.mn unwind label %bb.ob

bb.mn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit968
  %i.axe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %116, ptr noundef nonnull @.str.56, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit970 unwind label %bb.oc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit970: ; preds = %bb.mn
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #23
  invoke void @_ZN13cmSystemTools18PrintSingleCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %117, ptr noundef nonnull align 8 dereferenceable(24) %73)
          to label %bb.mo unwind label %bb.od

bb.mo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit970
  %i.axf = load ptr, ptr %117, align 8, !tbaa !24
  %i.axg = getelementptr inbounds nuw i8, ptr %117, i64 8
  %i.axh = load i64, ptr %i.axg, align 8, !tbaa !22
  %i.axi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %116, ptr noundef %i.axf, i64 noundef %i.axh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit972 unwind label %bb.oe

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit972: ; preds = %bb.mo
  %i.axj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.axi)
          to label %_ZNSolsEPFRSoS_E.exit974 unwind label %bb.oe, !inline_history !170 ; 0 uses

_ZNSolsEPFRSoS_E.exit974:                         ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit972
  %i.axk = load ptr, ptr %117, align 8, !tbaa !24 ; 2 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %117, i64 16 ; 2 uses
  %i.axm = icmp eq ptr %i.axk, %i.axl
  br i1 %i.axm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit977, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i975

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i975: ; preds = %_ZNSolsEPFRSoS_E.exit974
  %i.axn = load i64, ptr %i.axl, align 8, !tbaa !23
  %i.axo = add i64 %i.axn, 1
  call void @_ZdlPvm(ptr noundef %i.axk, i64 noundef %i.axo) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit977

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit977: ; preds = %_ZNSolsEPFRSoS_E.exit974, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i975
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #23
  %i.axp = load ptr, ptr %i.ac, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %118, ptr noundef nonnull align 8 dereferenceable(112) %116)
          to label %bb.mp unwind label %bb.of

bb.mp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit977
  %i.axq = load ptr, ptr %118, align 8, !tbaa !24 ; 2 uses
  %i.axr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.axq) #25
  invoke void @_ZN10cmCPackLog3LogEiPKciS1_m(ptr noundef nonnull align 8 dereferenceable(232) %i.axp, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 294, ptr noundef nonnull %i.axq, i64 noundef %i.axr)
          to label %_ZN10cmCPackLog3LogEiPKciS1_.exit979 unwind label %bb.og

_ZN10cmCPackLog3LogEiPKciS1_.exit979:             ; preds = %bb.mp
  %i.axs = load ptr, ptr %118, align 8, !tbaa !24 ; 2 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %118, i64 16 ; 2 uses
  %i.axu = icmp eq ptr %i.axs, %i.axt
  br i1 %i.axu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit982, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i980

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i980: ; preds = %_ZN10cmCPackLog3LogEiPKciS1_.exit979
  %i.axv = load i64, ptr %i.axt, align 8, !tbaa !23
  %i.axw = add i64 %i.axv, 1
  call void @_ZdlPvm(ptr noundef %i.axs, i64 noundef %i.axw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit982

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit982: ; preds = %_ZN10cmCPackLog3LogEiPKciS1_.exit979, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i980
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %116) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i32 1, ptr %i.e, align 4, !tbaa !89
  %i.axx = load ptr, ptr %i.g, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %119, i8 0, i64 24, i1 false)
  %i.axy = invoke noundef zeroext i1 @_ZN13cmSystemTools16RunSingleCommandERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEPS6_SB_PiPKcNS_12OutputOptionENSt6chrono8durationIdSt5ratioILl1ELl1EEEEN15cmProcessOutput8EncodingES8_(ptr noundef nonnull align 8 dereferenceable(24) %73, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.e, ptr noundef %i.axx, i32 noundef 3, double 0.000000e+00, i32 noundef 1, ptr noundef nonnull align 8 %119)
          to label %bb.mq unwind label %bb.oj

bb.mq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit982
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %119) #23
  %i.axz = load i32, ptr %i.e, align 4
  %i.aya = icmp eq i32 %i.axz, 0
  %or.cond.not = select i1 %i.axy, i1 %i.aya, i1 false
  br i1 %or.cond.not, label %bb.oq, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %120)
          to label %bb.ms unwind label %bb.ok

bb.ms:                                            ; preds = %bb.mr
  %i.ayb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %120, ptr noundef nonnull @.str.57, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit984 unwind label %bb.ol ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit984: ; preds = %bb.ms
  %i.ayc = load ptr, ptr %i.asj, align 8, !tbaa !24
  %i.ayd = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.aye = load i64, ptr %i.ayd, align 8, !tbaa !22
  %i.ayf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %120, ptr noundef %i.ayc, i64 noundef %i.aye)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit986 unwind label %bb.ol

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit986: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit984
  %i.ayg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.ayf)
          to label %_ZNSolsEPFRSoS_E.exit988 unwind label %bb.ol, !inline_history !170 ; 0 uses

_ZNSolsEPFRSoS_E.exit988:                         ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit986
  %i.ayh = load ptr, ptr %i.ac, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %121, ptr noundef nonnull align 8 dereferenceable(112) %120)
          to label %bb.mt unwind label %bb.om

bb.mt:                                            ; preds = %_ZNSolsEPFRSoS_E.exit988
  %i.ayi = load ptr, ptr %121, align 8, !tbaa !24 ; 2 uses
  %i.ayj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ayi) #25
  invoke void @_ZN10cmCPackLog3LogEiPKciS1_m(ptr noundef nonnull align 8 dereferenceable(232) %i.ayh, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef 302, ptr noundef nonnull %i.ayi, i64 noundef %i.ayj)
          to label %_ZN10cmCPackLog3LogEiPKciS1_.exit990 unwind label %bb.on

_ZN10cmCPackLog3LogEiPKciS1_.exit990:             ; preds = %bb.mt
  %i.ayk = load ptr, ptr %121, align 8, !tbaa !24 ; 2 uses
  %i.ayl = getelementptr inbounds nuw i8, ptr %121, i64 16 ; 2 uses
  %i.aym = icmp eq ptr %i.ayk, %i.ayl
  br i1 %i.aym, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i991

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i991: ; preds = %_ZN10cmCPackLog3LogEiPKciS1_.exit990
  %i.ayn = load i64, ptr %i.ayl, align 8, !tbaa !23
  %i.ayo = add i64 %i.ayn, 1
  call void @_ZdlPvm(ptr noundef %i.ayk, i64 noundef %i.ayo) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993: ; preds = %_ZN10cmCPackLog3LogEiPKciS1_.exit990, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i991
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %120) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #23
  br label %bb.oq

bb.mu:                                            ; preds = %bb.ld
  %i.ayp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ayq = load ptr, ptr %74, align 8, !tbaa !24  ; 2 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 2 uses
  %i.ays = icmp eq ptr %i.ayq, %i.ayr
  br i1 %i.ays, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i994

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i994: ; preds = %bb.mu
  %i.ayt = load i64, ptr %i.ayr, align 8, !tbaa !23
  %122 = add i64 %i.ayt, 1
  call void @_ZdlPvm(ptr noundef %i.ayq, i64 noundef %122) #22
  br label %.loopexit

bb.mv:                                            ; preds = %bb.le
  %i.ayu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #23
  %i.ayv = getelementptr inbounds nuw i8, ptr %74, i64 32
  %i.ayw = load ptr, ptr %i.ayv, align 8, !tbaa !24 ; 2 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %74, i64 48 ; 2 uses
  %i.ayy = icmp eq ptr %i.ayw, %i.ayx
  br i1 %i.ayy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i997

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i997: ; preds = %bb.mv
  %i.ayz = load i64, ptr %i.ayx, align 8, !tbaa !23
  %i.aza = add i64 %i.ayz, 1
  call void @_ZdlPvm(ptr noundef %i.ayw, i64 noundef %i.aza) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999: ; preds = %bb.mv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i997
  %i.azb = load ptr, ptr %74, align 8, !tbaa !24  ; 2 uses
  %i.azc = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 2 uses
  %i.azd = icmp eq ptr %i.azb, %i.azc
  br i1 %i.azd, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i997.1.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i997.1.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999
  %123 = load i64, ptr %i.azc, align 8, !tbaa !23
  %i.aze = add i64 %123, 1
  call void @_ZdlPvm(ptr noundef %i.azb, i64 noundef %i.aze) #22
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999, %bb.mu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i997.1.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i994, %.thread
  %.pn299 = phi { ptr, i32 } [ %i.ayp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i994 ], [ %i.ask, %.thread ], [ %i.ayu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i997.1.a ], [ %i.ayp, %bb.mu ], [ %i.ayu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #23
  br label %bb.ot

bb.mw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit903.1
  %i.azf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1008

bb.mx:                                            ; preds = %bb.lh, %bb.lg
  %i.azg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005

bb.my:                                            ; preds = %bb.lj, %bb.li
  %i.azh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002

bb.mz:                                            ; preds = %bb.lk
  %i.azi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.azj = load ptr, ptr %76, align 8, !tbaa !24  ; 2 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 2 uses
  %i.azl = icmp eq ptr %i.azj, %i.azk
  br i1 %i.azl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1000

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1000: ; preds = %bb.mz
  %i.azm = load i64, ptr %i.azk, align 8, !tbaa !23
  %i.azn = add i64 %i.azm, 1
  call void @_ZdlPvm(ptr noundef %i.azj, i64 noundef %i.azn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002: ; preds = %bb.mz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1000, %bb.my
  %.pn301 = phi { ptr, i32 } [ %i.azh, %bb.my ], [ %i.azi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1000 ], [ %i.azi, %bb.mz ] ; 2 uses
  %i.azo = load ptr, ptr %77, align 8, !tbaa !24  ; 2 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 2 uses
  %i.azq = icmp eq ptr %i.azo, %i.azp
  br i1 %i.azq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1003

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1003: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002
  %i.azr = load i64, ptr %i.azp, align 8, !tbaa !23
  %i.azs = add i64 %i.azr, 1
  call void @_ZdlPvm(ptr noundef %i.azo, i64 noundef %i.azs) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1003, %bb.mx
  %.pn301.pn = phi { ptr, i32 } [ %i.azg, %bb.mx ], [ %.pn301, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1003 ], [ %.pn301, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002 ] ; 2 uses
  %i.azt = load ptr, ptr %78, align 8, !tbaa !24  ; 2 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 2 uses
  %i.azv = icmp eq ptr %i.azt, %i.azu
  br i1 %i.azv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1008, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1006

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1006: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005
  %i.azw = load i64, ptr %i.azu, align 8, !tbaa !23
  %i.azx = add i64 %i.azw, 1
  call void @_ZdlPvm(ptr noundef %i.azt, i64 noundef %i.azx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1008

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1008: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1006, %bb.mw
  %.pn301.pn.pn = phi { ptr, i32 } [ %i.azf, %bb.mw ], [ %.pn301.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1006 ], [ %.pn301.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #23
  br label %bb.os

bb.na:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit914
  %i.azy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1014

bb.nb:                                            ; preds = %bb.lm
  %i.azz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1011

bb.nc:                                            ; preds = %bb.ln
  %i.baa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bab = load ptr, ptr %82, align 8, !tbaa !24  ; 2 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 2 uses
  %i.bad = icmp eq ptr %i.bab, %i.bac
  br i1 %i.bad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1011, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1009

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1009: ; preds = %bb.nc
  %i.bae = load i64, ptr %i.bac, align 8, !tbaa !23
  %i.baf = add i64 %i.bae, 1
  call void @_ZdlPvm(ptr noundef %i.bab, i64 noundef %i.baf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1011

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1011: ; preds = %bb.nc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1009, %bb.nb
  %.pn305 = phi { ptr, i32 } [ %i.azz, %bb.nb ], [ %i.baa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1009 ], [ %i.baa, %bb.nc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #23
  %i.bag = load ptr, ptr %80, align 8, !tbaa !24  ; 2 uses
  %i.bah = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 2 uses
  %i.bai = icmp eq ptr %i.bag, %i.bah
  br i1 %i.bai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1014, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1012

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1012: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1011
  %i.baj = load i64, ptr %i.bah, align 8, !tbaa !23
  %i.bak = add i64 %i.baj, 1
  call void @_ZdlPvm(ptr noundef %i.bag, i64 noundef %i.bak) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1014

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1014: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1011, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1012, %bb.na
  %.pn305.pn = phi { ptr, i32 } [ %i.azy, %bb.na ], [ %.pn305, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1012 ], [ %.pn305, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1011 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #23
  br label %bb.os

bb.nd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit920
  %i.bal = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1020

bb.ne:                                            ; preds = %bb.lp
  %i.bam = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017

bb.nf:                                            ; preds = %bb.lq
  %i.ban = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bao = load ptr, ptr %86, align 8, !tbaa !24  ; 2 uses
  %i.bap = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 2 uses
  %i.baq = icmp eq ptr %i.bao, %i.bap
  br i1 %i.baq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1015

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1015: ; preds = %bb.nf
  %i.bar = load i64, ptr %i.bap, align 8, !tbaa !23
  %i.bas = add i64 %i.bar, 1
  call void @_ZdlPvm(ptr noundef %i.bao, i64 noundef %i.bas) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017: ; preds = %bb.nf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1015, %bb.ne
  %.pn308 = phi { ptr, i32 } [ %i.bam, %bb.ne ], [ %i.ban, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1015 ], [ %i.ban, %bb.nf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #23
  %i.bat = load ptr, ptr %84, align 8, !tbaa !24  ; 2 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 2 uses
  %i.bav = icmp eq ptr %i.bat, %i.bau
  br i1 %i.bav, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1020, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1018

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1018: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017
  %i.baw = load i64, ptr %i.bau, align 8, !tbaa !23
  %i.bax = add i64 %i.baw, 1
  call void @_ZdlPvm(ptr noundef %i.bat, i64 noundef %i.bax) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1020

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1020: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1018, %bb.nd
  %.pn308.pn = phi { ptr, i32 } [ %i.bal, %bb.nd ], [ %.pn308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1018 ], [ %.pn308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #23
  br label %bb.os

bb.ng:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit926
  %i.bay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1026

bb.nh:                                            ; preds = %bb.ls
  %i.baz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1023

bb.ni:                                            ; preds = %bb.lt
  %i.bba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bbb = load ptr, ptr %90, align 8, !tbaa !24  ; 2 uses
  %i.bbc = getelementptr inbounds nuw i8, ptr %90, i64 16 ; 2 uses
  %i.bbd = icmp eq ptr %i.bbb, %i.bbc
  br i1 %i.bbd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1023, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1021

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1021: ; preds = %bb.ni
  %i.bbe = load i64, ptr %i.bbc, align 8, !tbaa !23
  %i.bbf = add i64 %i.bbe, 1
  call void @_ZdlPvm(ptr noundef %i.bbb, i64 noundef %i.bbf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1023

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1023: ; preds = %bb.ni, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1021, %bb.nh
  %.pn311 = phi { ptr, i32 } [ %i.baz, %bb.nh ], [ %i.bba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1021 ], [ %i.bba, %bb.ni ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #23
  %i.bbg = load ptr, ptr %88, align 8, !tbaa !24  ; 2 uses
  %i.bbh = getelementptr inbounds nuw i8, ptr %88, i64 16 ; 2 uses
  %i.bbi = icmp eq ptr %i.bbg, %i.bbh
  br i1 %i.bbi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1026, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1024

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1024: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1023
  %i.bbj = load i64, ptr %i.bbh, align 8, !tbaa !23
  %i.bbk = add i64 %i.bbj, 1
  call void @_ZdlPvm(ptr noundef %i.bbg, i64 noundef %i.bbk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1026

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1026: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1023, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1024, %bb.ng
  %.pn311.pn = phi { ptr, i32 } [ %i.bay, %bb.ng ], [ %.pn311, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1024 ], [ %.pn311, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1023 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #23
  br label %bb.os

bb.nj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit932
  %i.bbl = landingpad { ptr, i32 }
end_hunk_0
