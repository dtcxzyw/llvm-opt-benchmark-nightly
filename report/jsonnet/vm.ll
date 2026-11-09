Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/vm?download=true
inline.NumInlined: 10178
inline.NumDeleted: 3163
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter8evaluateEPKNS0_3ASTEj:bb.a
bb.aag:                                           ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_18type_strB5cxx11ERKNS1_5ValueE.exit3022
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %135, ptr noundef nonnull align 8 dereferenceable(32) %136, ptr noundef nonnull @.str.181)
          to label %bb.aah unwind label %bb.aai

bb.aah:                                           ; preds = %bb.aag
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_15Stack9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %i.dmy, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.dmz, ptr noundef nonnull readonly align 8 dereferenceable(32) %135)
          to label %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3024 unwind label %bb.aaj

_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3024: ; preds = %bb.aah
  invoke void @__cxa_throw(ptr %i.dmy, ptr nonnull @_ZTIN7jsonnet8internal12RuntimeErrorE, ptr nonnull @_ZN7jsonnet8internal12RuntimeErrorD2Ev) #42
          to label %bb.agy unwind label %bb.aaj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3033.thread: ; preds = %bb.aaf
  %i.dna = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split8457

bb.aai:                                           ; preds = %bb.aag
  %i.dnb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3027

bb.aaj:                                           ; preds = %bb.aah, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3024
  %.01103 = phi i1 [ false, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3024 ], [ true, %bb.aah ] ; 2 uses
  %i.dnc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dnd = load ptr, ptr %135, align 8, !tbaa !66 ; 2 uses
  %i.dne = getelementptr inbounds nuw i8, ptr %135, i64 16 ; 2 uses
  %i.dnf = icmp eq ptr %i.dnd, %i.dne
  br i1 %i.dnf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3027, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3025

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3025: ; preds = %bb.aaj
  %i.dng = load i64, ptr %i.dne, align 8, !tbaa !67
  %i.dnh = add i64 %i.dng, 1
  call void @_ZdlPvm(ptr noundef %i.dnd, i64 noundef %i.dnh) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3027

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3027: ; preds = %bb.aaj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3025, %bb.aai
  %.11104 = phi i1 [ true, %bb.aai ], [ %.01103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3025 ], [ %.01103, %bb.aaj ] ; 2 uses
  %.pn1356 = phi { ptr, i32 } [ %i.dnb, %bb.aai ], [ %i.dnc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3025 ], [ %i.dnc, %bb.aaj ] ; 4 uses
  %i.dni = load ptr, ptr %136, align 8, !tbaa !66 ; 2 uses
  %i.dnj = getelementptr inbounds nuw i8, ptr %136, i64 16 ; 2 uses
  %i.dnk = icmp eq ptr %i.dni, %i.dnj
  br i1 %i.dnk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3030, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3028

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3028: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3027
  %i.dnl = load i64, ptr %i.dnj, align 8, !tbaa !67
  %i.dnm = add i64 %i.dnl, 1
  call void @_ZdlPvm(ptr noundef %i.dni, i64 noundef %i.dnm) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3030

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3030: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3027, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3028
  %i.dnn = load ptr, ptr %137, align 8, !tbaa !66 ; 2 uses
  %i.dno = getelementptr inbounds nuw i8, ptr %137, i64 16 ; 2 uses
  %i.dnp = icmp eq ptr %i.dnn, %i.dno
  br i1 %i.dnp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3033, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3031

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3030.thread: ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_18type_strB5cxx11ERKNS1_5ValueE.exit3022
  %i.dnq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dnr = load ptr, ptr %137, align 8, !tbaa !66 ; 2 uses
  %i.dns = getelementptr inbounds nuw i8, ptr %137, i64 16 ; 2 uses
  %i.dnt = icmp eq ptr %i.dnr, %i.dns
  br i1 %i.dnt, label %.sink.split8457, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3031.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3031.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3030.thread
  %i.dnu = load i64, ptr %i.dns, align 8, !tbaa !67
  %i.dnv = add i64 %i.dnu, 1
  call void @_ZdlPvm(ptr noundef %i.dnr, i64 noundef %i.dnv) #40
  br label %.sink.split8457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3031: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3030
  %i.dnw = load i64, ptr %i.dno, align 8, !tbaa !67
  %i.dnx = add i64 %i.dnw, 1
  call void @_ZdlPvm(ptr noundef %i.dnn, i64 noundef %i.dnx) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #39
  br i1 %.11104, label %bb.aak, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3033: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3030
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #39
  br i1 %.11104, label %bb.aak, label %common.resume

.sink.split8457:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3030.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3033.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3031.thread
  %.pn1356.pn.pn3832.ph = phi { ptr, i32 } [ %i.dnq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3031.thread ], [ %i.dna, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3033.thread ], [ %i.dnq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3030.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #39
  br label %bb.aak

bb.aak:                                           ; preds = %.sink.split8457, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3031, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3033
  %.pn1356.pn.pn3832 = phi { ptr, i32 } [ %.pn1356, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3031 ], [ %.pn1356, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3033 ], [ %.pn1356.pn.pn3832.ph, %.sink.split8457 ]
  call void @__cxa_free_exception(ptr %i.dmy) #39
  br label %common.resume

bb.aal:                                           ; preds = %bb.aae
  %i.dny = getelementptr inbounds i8, ptr %.val1858, i64 -304
  %i.dnz = load ptr, ptr %i.dny, align 8, !tbaa !67 ; 2 uses
  %i.doa = getelementptr inbounds nuw i8, ptr %i.dnz, i64 24
  %i.dob = load i64, ptr %i.doa, align 8, !tbaa !73 ; 2 uses
  %i.doc = load double, ptr %i.ab, align 8, !tbaa !67
  %i.dod = fptosi double %i.doc to i64            ; 4 uses
  %i.doe = icmp sgt i64 %i.dod, -1
  %.not1349 = icmp sgt i64 %i.dob, %i.dod
  %or.cond1572 = and i1 %i.doe, %.not1349
  br i1 %or.cond1572, label %bb.aas, label %bb.aam

bb.aam:                                           ; preds = %bb.aal
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #39
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %138)
  %i.dof = getelementptr inbounds nuw i8, ptr %138, i64 16 ; 2 uses
  %i.dog = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dof, ptr noundef nonnull @.str.369, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3035 unwind label %bb.aao ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3035: ; preds = %bb.aam
  %i.doh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dof, i64 noundef %i.dod)
          to label %_ZNSolsEl.exit3037 unwind label %bb.aao ; 2 uses

_ZNSolsEl.exit3037:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3035
  %i.doi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.doh, ptr noundef nonnull @.str.365, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3039 unwind label %bb.aao ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3039: ; preds = %_ZNSolsEl.exit3037
  %i.doj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.doh, i64 noundef %i.dob)
          to label %_ZNSolsEl.exit3041 unwind label %bb.aao

_ZNSolsEl.exit3041:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3039
  %i.dok = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.doj, ptr noundef nonnull @.str.77, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3043 unwind label %bb.aao ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3043: ; preds = %_ZNSolsEl.exit3041
  %i.dol = call ptr @__cxa_allocate_exception(i64 56) #39 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #39
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %139, ptr noundef nonnull align 8 dereferenceable(128) %138)
          to label %bb.aan unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3048.thread

bb.aan:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3043
  %i.dom = getelementptr inbounds nuw i8, ptr %i.dgy, i64 8
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_15Stack9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %i.dol, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.dom, ptr noundef nonnull readonly align 8 dereferenceable(32) %139)
          to label %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3045 unwind label %bb.aap

_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3045: ; preds = %bb.aan
  invoke void @__cxa_throw(ptr %i.dol, ptr nonnull @_ZTIN7jsonnet8internal12RuntimeErrorE, ptr nonnull @_ZN7jsonnet8internal12RuntimeErrorD2Ev) #42
          to label %bb.agy unwind label %bb.aap

bb.aao:                                           ; preds = %_ZNSolsEl.exit3041, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3039, %_ZNSolsEl.exit3037, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3035, %bb.aam
  %i.don = landingpad { ptr, i32 }
          cleanup
  br label %bb.aar

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3048.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3043
  %i.doo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #39
  br label %bb.aaq

bb.aap:                                           ; preds = %bb.aan, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3045
  %.01101 = phi i1 [ false, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3045 ], [ true, %bb.aan ] ; 2 uses
  %i.dop = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.doq = load ptr, ptr %139, align 8, !tbaa !66 ; 2 uses
  %i.dor = getelementptr inbounds nuw i8, ptr %139, i64 16 ; 2 uses
  %i.dos = icmp eq ptr %i.doq, %i.dor
  br i1 %i.dos, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3048, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3046

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3046: ; preds = %bb.aap
  %i.dot = load i64, ptr %i.dor, align 8, !tbaa !67
  %i.dou = add i64 %i.dot, 1
  call void @_ZdlPvm(ptr noundef %i.doq, i64 noundef %i.dou) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #39
  br i1 %.01101, label %bb.aaq, label %bb.aar

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3048: ; preds = %bb.aap
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #39
  br i1 %.01101, label %bb.aaq, label %bb.aar

bb.aaq:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3046, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3048.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3048
  %.pn13523844 = phi { ptr, i32 } [ %i.doo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3048.thread ], [ %i.dop, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3048 ], [ %i.dop, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3046 ]
  call void @__cxa_free_exception(ptr %i.dol) #39
  br label %bb.aar

bb.aar:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3046, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3048, %bb.aaq, %bb.aao
  %.pn1352.pn = phi { ptr, i32 } [ %.pn13523844, %bb.aaq ], [ %i.dop, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3048 ], [ %i.don, %bb.aao ], [ %i.dop, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3046 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %138) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #39
  br label %common.resume

bb.aas:                                           ; preds = %bb.aal
  %i.dov = getelementptr inbounds nuw i8, ptr %i.dnz, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #39
  %i.dow = load ptr, ptr %i.dov, align 8, !tbaa !72
  %i.dox = getelementptr inbounds nuw [4 x i8], ptr %i.dow, i64 %i.dod
  %i.doy = load i32, ptr %i.dox, align 4, !tbaa !76 ; 2 uses
  store i32 %i.doy, ptr %i.t, align 4, !tbaa !76
  store i32 0, ptr %i.ee, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #39
  store ptr %i.ef, ptr %140, align 8, !tbaa !74
  %wcslen.i.i = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.t) ; 6 uses
  %.idx.i = shl nuw nsw i64 %wcslen.i.i, 2        ; 3 uses
  %i.doz = icmp ugt i64 %wcslen.i.i, 3
  br i1 %i.doz, label %bb.aat, label %._crit_edge.i.i3049

bb.aat:                                           ; preds = %bb.aas
  %i.dpa = icmp ugt i64 %wcslen.i.i, 1152921504606846975
  br i1 %i.dpa, label %.noexc.i3050, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i

.noexc.i3050:                                     ; preds = %bb.aat
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #42
          to label %.noexc3051 unwind label %.loopexit.split-lp4092.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc3051:                                       ; preds = %.noexc.i3050
  unreachable

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i: ; preds = %bb.aat
  %i.dpb = add nuw nsw i64 %.idx.i, 4
  %i.dpc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dpb) #41
          to label %.noexc3052 unwind label %.loopexit.split-lp4092.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc3052:                                       ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i
  store ptr %i.dpc, ptr %140, align 8, !tbaa !72
  store i64 %wcslen.i.i, ptr %i.ef, align 8, !tbaa !67
  br label %._crit_edge.i.i3049

._crit_edge.i.i3049:                              ; preds = %.noexc3052, %bb.aas
  %.pre8.i.i = phi ptr [ %i.dpc, %.noexc3052 ], [ %i.ef, %bb.aas ] ; 3 uses
  switch i64 %wcslen.i.i, label %bb.aav [
    i64 1, label %bb.aau
    i64 0, label %bb.aaw
  ]

bb.aau:                                           ; preds = %._crit_edge.i.i3049
  store i32 %i.doy, ptr %.pre8.i.i, align 4, !tbaa !76
  br label %bb.aaw

bb.aav:                                           ; preds = %._crit_edge.i.i3049
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.pre8.i.i, ptr nonnull align 4 %i.t, i64 %.idx.i, i1 false)
  br label %bb.aaw

bb.aaw:                                           ; preds = %bb.aav, %bb.aau, %._crit_edge.i.i3049
  store i64 %wcslen.i.i, ptr %i.eg, align 8, !tbaa !73
  %i.dpd = getelementptr inbounds nuw i8, ptr %.pre8.i.i, i64 %.idx.i
  store i32 0, ptr %i.dpd, align 4, !tbaa !76
  %.val1841 = load ptr, ptr %140, align 8
  %.val1842 = load i64, ptr %i.eg, align 8
  %i.dpe = invoke fastcc ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter10makeStringERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr %.val1841, i64 %.val1842)
          to label %._crit_edge8477 unwind label %bb.aax

._crit_edge8477:                                  ; preds = %bb.aaw
  store i32 19, ptr %i.aa, align 8, !tbaa !67
  store ptr %i.dpe, ptr %i.ab, align 8, !tbaa !67
  %i.dpf = load ptr, ptr %140, align 8, !tbaa !72 ; 2 uses
  %i.dpg = icmp eq ptr %i.dpf, %i.ef
  br i1 %i.dpg, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit3055, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i3053

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i3053: ; preds = %._crit_edge8477
  %i.dph = load i64, ptr %i.ef, align 8, !tbaa !67
  %i.dpi = shl i64 %i.dph, 2
  %i.dpj = add i64 %i.dpi, 4
  call void @_ZdlPvm(ptr noundef %i.dpf, i64 noundef %i.dpj) #40
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit3055

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit3055: ; preds = %._crit_edge8477, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i3053
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #39
  br label %.thread3548

.loopexit.split-lp4092.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i, %.noexc.i3050
  %lpad.loopexit.split-lp9593 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit3058

bb.aax:                                           ; preds = %bb.aaw
  %i.dpk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dpl = load ptr, ptr %140, align 8, !tbaa !72 ; 2 uses
  %i.dpm = icmp eq ptr %i.dpl, %i.ef
  br i1 %i.dpm, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit3058, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i3056

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i3056: ; preds = %bb.aax
  %i.dpn = load i64, ptr %i.ef, align 8, !tbaa !67
  %i.dpo = shl i64 %i.dpn, 2
  %i.dpp = add i64 %i.dpo, 4
  call void @_ZdlPvm(ptr noundef %i.dpl, i64 noundef %i.dpp) #40
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit3058

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit3058: ; preds = %bb.aax, %.loopexit.split-lp4092.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i3056
  %.pn1350 = phi { ptr, i32 } [ %i.dpk, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i3056 ], [ %lpad.loopexit.split-lp9593, %.loopexit.split-lp4092.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.dpk, %bb.aax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #39
  br label %common.resume

bb.aay:                                           ; preds = %bb.yp
  %i.dpq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.370)
  %i.dpr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.dpq), !inline_history !6 ; 0 uses
  call void @abort() #38
  unreachable

select.unfold3845:                                ; preds = %bb.zu
  %i.dps = getelementptr inbounds nuw i8, ptr %i.dlg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.dps, i64 16, i1 false), !tbaa.struct !253
  br label %.thread3548

bb.aaz:                                           ; preds = %bb.zu
  %i.dpt = getelementptr inbounds i8, ptr %.val1858, i64 -400 ; 2 uses
  store ptr %i.dpt, ptr %i.z, align 8, !tbaa !219
  call fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_15FrameD2Ev(ptr noundef nonnull align 8 dead_on_return(400) dereferenceable(400) %i.dpt) #39
  %i.dpu = getelementptr inbounds nuw i8, ptr %i.dgy, i64 8
  %i.dpv = getelementptr inbounds nuw i8, ptr %i.dlg, i64 88
  %i.dpw = load ptr, ptr %i.dpv, align 8, !tbaa !204
  %i.dpx = getelementptr inbounds nuw i8, ptr %i.dlg, i64 96
  %i.dpy = load i32, ptr %i.dpx, align 8, !tbaa !205
  %i.dpz = getelementptr inbounds nuw i8, ptr %i.dlg, i64 40
  call fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_15Stack7newCallERKNS0_13LocationRangeEPNS1_10HeapEntityEPNS1_10HeapObjectEjRKSt3mapIPKNS0_10IdentifierEPNS1_9HeapThunkESt4lessISD_ESaISt4pairIKSD_SF_EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.dpu, ptr noundef nonnull %i.dlg, ptr noundef %i.dpw, i32 noundef %i.dpy, ptr noundef nonnull align 8 dereferenceable(48) %i.dpz)
  %i.dqa = getelementptr inbounds nuw i8, ptr %i.dlg, i64 104
  %i.dqb = load ptr, ptr %i.dqa, align 8, !tbaa !185
  br label %.backedge.backedge

bb.aba:                                           ; preds = %bb.ev
  %i.dqc = getelementptr inbounds i8, ptr %.val1858, i64 -392
  %i.dqd = load ptr, ptr %i.dqc, align 8, !tbaa !260 ; 5 uses
  %i.dqe = load i32, ptr %i.aa, align 8, !tbaa !256
  switch i32 %i.dqe, label %bb.abb [
    i32 16, label %bb.abh
    i32 18, label %bb.abh
    i32 19, label %bb.abh
  ]

bb.abb:                                           ; preds = %bb.aba
  %i.dqf = call ptr @__cxa_allocate_exception(i64 56) #39 ; 3 uses
  %i.dqg = getelementptr inbounds nuw i8, ptr %i.dqd, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %142) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %143) #39
  %.val1862 = load i32, ptr %i.aa, align 8, !tbaa !261
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_18type_strB5cxx11ENS1_5Value4TypeE(ptr dead_on_unwind noalias nonnull writable align 8 %143, i32 noundef %.val1862)
          to label %_ZN7jsonnet8internal12_GLOBAL__N_18type_strB5cxx11ERKNS1_5ValueE.exit3060 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3071.thread

_ZN7jsonnet8internal12_GLOBAL__N_18type_strB5cxx11ERKNS1_5ValueE.exit3060: ; preds = %bb.abb
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %142, ptr noundef nonnull @.str.371, ptr noundef nonnull align 8 dereferenceable(32) %143)
          to label %bb.abc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3068.thread

bb.abc:                                           ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_18type_strB5cxx11ERKNS1_5ValueE.exit3060
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %141, ptr noundef nonnull align 8 dereferenceable(32) %142, ptr noundef nonnull @.str.181)
          to label %bb.abd unwind label %bb.abe

bb.abd:                                           ; preds = %bb.abc
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_15Stack9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %i.dqf, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.dqg, ptr noundef nonnull readonly align 8 dereferenceable(32) %141)
          to label %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3062 unwind label %bb.abf

_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3062: ; preds = %bb.abd
  invoke void @__cxa_throw(ptr %i.dqf, ptr nonnull @_ZTIN7jsonnet8internal12RuntimeErrorE, ptr nonnull @_ZN7jsonnet8internal12RuntimeErrorD2Ev) #42
          to label %bb.agy unwind label %bb.abf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3071.thread: ; preds = %bb.abb
  %i.dqh = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split8458

bb.abe:                                           ; preds = %bb.abc
  %i.dqi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3065

bb.abf:                                           ; preds = %bb.abd, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3062
  %.01097 = phi i1 [ false, %_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3062 ], [ true, %bb.abd ] ; 2 uses
  %i.dqj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dqk = load ptr, ptr %141, align 8, !tbaa !66 ; 2 uses
  %i.dql = getelementptr inbounds nuw i8, ptr %141, i64 16 ; 2 uses
  %i.dqm = icmp eq ptr %i.dqk, %i.dql
  br i1 %i.dqm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3065, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3063

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3063: ; preds = %bb.abf
  %i.dqn = load i64, ptr %i.dql, align 8, !tbaa !67
  %i.dqo = add i64 %i.dqn, 1
  call void @_ZdlPvm(ptr noundef %i.dqk, i64 noundef %i.dqo) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3065

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3065: ; preds = %bb.abf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3063, %bb.abe
  %.11098 = phi i1 [ true, %bb.abe ], [ %.01097, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3063 ], [ %.01097, %bb.abf ] ; 2 uses
  %.pn1343 = phi { ptr, i32 } [ %i.dqi, %bb.abe ], [ %i.dqj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3063 ], [ %i.dqj, %bb.abf ] ; 4 uses
  %i.dqp = load ptr, ptr %142, align 8, !tbaa !66 ; 2 uses
  %i.dqq = getelementptr inbounds nuw i8, ptr %142, i64 16 ; 2 uses
  %i.dqr = icmp eq ptr %i.dqp, %i.dqq
  br i1 %i.dqr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3068, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3066

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3066: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3065
  %i.dqs = load i64, ptr %i.dqq, align 8, !tbaa !67
  %i.dqt = add i64 %i.dqs, 1
  call void @_ZdlPvm(ptr noundef %i.dqp, i64 noundef %i.dqt) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3068

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3068: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3065, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3066
  %i.dqu = load ptr, ptr %143, align 8, !tbaa !66 ; 2 uses
  %i.dqv = getelementptr inbounds nuw i8, ptr %143, i64 16 ; 2 uses
  %i.dqw = icmp eq ptr %i.dqu, %i.dqv
  br i1 %i.dqw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3071, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3069

end_hunk_0
begin_hunk_1_@_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter12manifestJsonERKNS0_13LocationRangeEbRKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.str.393..str.394 = select i1 %3, ptr @.str.393, ptr @.str.394
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  br label %bb.n

._crit_edge459:                                   ; preds = %_ZN7jsonnet8internal13LocationRangeD2Ev.exit, %bb.i
  %i.at = select i1 %3, ptr @.str.395, ptr @.str.3
  %wcslen.i.i.i129 = zext i1 %3 to i64            ; 3 uses
  %i.au = load i64, ptr %i.c, align 8, !tbaa !73  ; 5 uses
  %i.av = sub i64 1152921504606846975, %i.au
  %i.aw = icmp ult i64 %i.av, %wcslen.i.i.i129
  br i1 %i.aw, label %.invoke550, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i130

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i130: ; preds = %._crit_edge459
  %i.ax = add i64 %i.au, %wcslen.i.i.i129         ; 7 uses
  %i.ay = load ptr, ptr %7, align 8, !tbaa !72    ; 4 uses
  %i.az = icmp eq ptr %i.ay, %i.b
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i136, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i131

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i136: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i130
  %i.ba = icmp ult i64 %i.au, 4
  call void @llvm.assume(i1 %i.ba)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i132

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i131: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i130
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i132

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i132: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i131, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i136
  %i.bc = phi i64 [ %i.bb, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i131 ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i136 ]
  %.not.i.i.i133 = icmp ugt i64 %i.ax, %i.bc
  br i1 %.not.i.i.i133, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i132
  br i1 %3, label %bb.k, label %bb.at

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.au
  store i32 10, ptr %i.bd, align 4, !tbaa !76
  br label %bb.at

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i132
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.au, i64 noundef 0, ptr noundef nonnull %i.at, i64 noundef %wcslen.i.i.i129)
          to label %._crit_edge469 unwind label %bb.bc

._crit_edge469:                                   ; preds = %bb.l
  %.pre470 = load ptr, ptr %7, align 8, !tbaa !72
  br label %bb.at

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i, %.noexc.i, %bb.d
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit196

bb.n:                                             ; preds = %.lr.ph458, %_ZN7jsonnet8internal13LocationRangeD2Ev.exit
  %.057456 = phi ptr [ %i.p, %.lr.ph458 ], [ %.str.393..str.394, %_ZN7jsonnet8internal13LocationRangeD2Ev.exit ] ; 4 uses
  %.sroa.0400.0455 = phi ptr [ %.val109, %.lr.ph458 ], [ %i.et, %_ZN7jsonnet8internal13LocationRangeD2Ev.exit ] ; 2 uses
  %i.bf = load ptr, ptr %.sroa.0400.0455, align 8, !tbaa !217 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 104 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !185 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = select i1 %i.bi, ptr %2, ptr %i.bj      ; 3 uses
  store ptr %i.ae, ptr %9, align 8, !tbaa !63
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !66 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !68 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !64
  %i.bo = icmp ugt i64 %i.bn, 15
  br i1 %i.bo, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.bp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc140 unwind label %bb.t  ; 2 uses

.noexc140:                                        ; preds = %.noexc.i.i
  store ptr %i.bp, ptr %9, align 8, !tbaa !66
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !64
  store i64 %i.bq, ptr %i.ae, align 8, !tbaa !67
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc140, %bb.n
  %i.br = phi ptr [ %i.bp, %.noexc140 ], [ %i.ae, %bb.n ] ; 2 uses
  switch i64 %i.bn, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.bs = load i8, ptr %i.bl, align 1, !tbaa !67
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !67
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bl, i64 %i.bn, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !64  ; 2 uses
  store i64 %i.bt, ptr %i.af, align 8, !tbaa !68
  %i.bu = load ptr, ptr %9, align 8, !tbaa !66
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  store i8 0, ptr %i.bv, align 1, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i64 32, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 10
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !183, !range !251, !noundef !252
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !166
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !167
  store i64 0, ptr %i.ao, align 8, !tbaa !168
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_15Stack7newCallERKNS0_13LocationRangeEPNS1_10HeapEntityEPNS1_10HeapObjectEjRKSt3mapIPKNS0_10IdentifierEPNS1_9HeapThunkESt4lessISD_ESaISt4pairIKSD_SF_EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.bf, ptr noundef null, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %.val108 = load ptr, ptr %i.al, align 8, !tbaa !60
  call fastcc void @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef %.val108)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %.val120 = load ptr, ptr %i.ai, align 8, !tbaa !194
  %i.ca = getelementptr inbounds i8, ptr %.val120, i64 -312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !253
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !253
  br label %bb.y

bb.t:                                             ; preds = %.noexc.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit169

bb.u:                                             ; preds = %bb.r
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %i.al, align 8, !tbaa !60
  call fastcc void @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef %.val)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %bb.as

bb.v:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bf, i64 88
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !204
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !205
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_15Stack7newCallERKNS0_13LocationRangeEPNS1_10HeapEntityEPNS1_10HeapObjectEjRKSt3mapIPKNS0_10IdentifierEPNS1_9HeapThunkESt4lessISD_ESaISt4pairIKSD_SF_EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.bf, ptr noundef %i.cf, i32 noundef %i.ch, ptr noundef nonnull align 8 dereferenceable(48) %i.ci)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %.val119 = load ptr, ptr %i.ai, align 8, !tbaa !194
  %i.cj = getelementptr inbounds i8, ptr %.val119, i64 -312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !253
  %i.ck = load ptr, ptr %i.bg, align 8, !tbaa !185
  %.val123 = load ptr, ptr %i.aj, align 8, !tbaa !218
  %.val124 = load ptr, ptr %i.ai, align 8, !tbaa !219
  %i.cl = ptrtoint ptr %.val124 to i64
  %i.cm = ptrtoint ptr %.val123 to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = sdiv exact i64 %i.cn, 400
  %i.cp = trunc i64 %i.co to i32
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter8evaluateEPKNS0_3ASTEj(ptr noundef nonnull align 8 dereferenceable(480) %1, ptr noundef %i.ck, i32 noundef %i.cp)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.y:                                             ; preds = %bb.w, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter12manifestJsonERKNS0_13LocationRangeEbRKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef nonnull align 8 dereferenceable(480) %1, ptr noundef nonnull align 8 dereferenceable(64) %9, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.z unwind label %bb.ar

bb.z:                                             ; preds = %bb.y
  %.val118 = load ptr, ptr %i.ai, align 8, !tbaa !194 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.val118, i64 -400 ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %.val118, i64 -312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i64 16, i1 false), !tbaa.struct !253
  %.val.i = load i32, ptr %i.cr, align 8, !tbaa !231
  %i.ct = icmp eq i32 %.val.i, 6
  br i1 %i.ct, label %bb.aa, label %_ZN7jsonnet8internal12_GLOBAL__N_15Stack3popEv.exit

bb.aa:                                            ; preds = %bb.z
  %i.cu = load i32, ptr %i.ap, align 8, !tbaa !96
  %i.cv = add i32 %i.cu, -1
  store i32 %i.cv, ptr %i.ap, align 8, !tbaa !96
  br label %_ZN7jsonnet8internal12_GLOBAL__N_15Stack3popEv.exit

_ZN7jsonnet8internal12_GLOBAL__N_15Stack3popEv.exit: ; preds = %bb.z, %bb.aa
  store ptr %i.cr, ptr %i.ai, align 8, !tbaa !219
  call fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_15FrameD2Ev(ptr noundef nonnull align 8 dead_on_return(400) dereferenceable(400) %i.cr) #39
  %wcslen.i.i.i141 = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %.057456) ; 6 uses
  %i.cw = load i64, ptr %i.c, align 8, !tbaa !73  ; 5 uses
  %i.cx = sub i64 1152921504606846975, %i.cw
  %i.cy = icmp ult i64 %i.cx, %wcslen.i.i.i141
  br i1 %i.cy, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i142

.invoke:                                          ; preds = %bb.al, %bb.ag, %_ZN7jsonnet8internal12_GLOBAL__N_15Stack3popEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #42
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i142: ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_15Stack3popEv.exit
  %i.cz = add i64 %i.cw, %wcslen.i.i.i141         ; 7 uses
  %i.da = load ptr, ptr %7, align 8, !tbaa !72    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.b
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i148, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i143

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i148: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i142
  %i.dc = icmp ult i64 %i.cw, 4
  call void @llvm.assume(i1 %i.dc)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i144

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i143: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i142
  %i.dd = load i64, ptr %i.b, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i144

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i144: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i143, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i148
  %i.de = phi i64 [ %i.dd, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i143 ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i148 ]
  %.not.i.i.i145 = icmp ugt i64 %i.cz, %i.de
  br i1 %.not.i.i.i145, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i144
  %.not8.i.i.i146 = icmp eq i64 %wcslen.i.i.i141, 0
  br i1 %.not8.i.i.i146, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cw ; 2 uses
  %cond.i.i.i147 = icmp eq i64 %wcslen.i.i.i141, 1
  br i1 %cond.i.i.i147, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dg = load i32, ptr %.057456, align 4, !tbaa !76
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !76
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.dh = shl i64 %wcslen.i.i.i141, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.df, ptr nonnull align 4 %.057456, i64 %i.dh, i1 false)
  br label %bb.ag

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i144
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cw, i64 noundef 0, ptr noundef nonnull %.057456, i64 noundef %wcslen.i.i.i141)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.ae, %bb.ad, %bb.ab, %bb.af
  store i64 %i.cz, ptr %i.c, align 8, !tbaa !73
  %i.di = load ptr, ptr %7, align 8, !tbaa !72    ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.cz ; 3 uses
  store i32 0, ptr %i.dj, align 4, !tbaa !76
  %i.dk = load ptr, ptr %8, align 8, !tbaa !72    ; 3 uses
  %i.dl = load i64, ptr %i.aq, align 8, !tbaa !73 ; 5 uses
  %i.dm = sub i64 1152921504606846975, %i.cz
  %i.dn = icmp ult i64 %i.dm, %i.dl
  br i1 %i.dn, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ag
  %i.do = add i64 %i.dl, %i.cz                    ; 7 uses
  %i.dp = icmp eq ptr %i.di, %i.b
  br i1 %i.dp, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.dq = icmp ult i64 %i.cz, 4
  call void @llvm.assume(i1 %i.dq)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.dr = load i64, ptr %i.b, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ds = phi i64 [ %i.dr, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.do, %i.ds
  br i1 %.not.i.i.i.i, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i
  switch i64 %i.dl, label %bb.aj [
    i64 0, label %bb.al
    i64 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.dt = load i32, ptr %i.dk, align 4, !tbaa !76
  store i32 %i.dt, ptr %i.dj, align 4, !tbaa !76
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.du = shl i64 %i.dl, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dj, ptr align 4 %i.dk, i64 %i.du, i1 false)
  br label %bb.al

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cz, i64 noundef 0, ptr noundef %i.dk, i64 noundef %i.dl)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ah, %bb.aj, %bb.ai, %bb.ak
  store i64 %i.do, ptr %i.c, align 8, !tbaa !73
  %i.dv = load ptr, ptr %7, align 8, !tbaa !72    ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.do ; 3 uses
  store i32 0, ptr %i.dw, align 4, !tbaa !76
  %i.dx = load ptr, ptr %11, align 8, !tbaa !72   ; 3 uses
  %i.dy = load i64, ptr %i.ar, align 8, !tbaa !73 ; 5 uses
  %i.dz = sub i64 1152921504606846975, %i.do
  %i.ea = icmp ult i64 %i.dz, %i.dy
  br i1 %i.ea, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i154

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i154: ; preds = %bb.al
  %i.eb = add i64 %i.dy, %i.do                    ; 3 uses
  %i.ec = icmp eq ptr %i.dv, %i.b
  br i1 %i.ec, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i160, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i155

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i160: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i154
  %i.ed = icmp ult i64 %i.do, 4
  call void @llvm.assume(i1 %i.ed)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i156

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i155: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i154
  %i.ee = load i64, ptr %i.b, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i156

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i156: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i155, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i160
  %i.ef = phi i64 [ %i.ee, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i155 ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i160 ]
  %.not.i.i.i.i157 = icmp ugt i64 %i.eb, %i.ef
  br i1 %.not.i.i.i.i157, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i156
  switch i64 %i.dy, label %bb.ao [
    i64 0, label %bb.aq
    i64 1, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  %i.eg = load i32, ptr %i.dx, align 4, !tbaa !76
  store i32 %i.eg, ptr %i.dw, align 4, !tbaa !76
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.eh = shl i64 %i.dy, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dw, ptr align 4 %i.dx, i64 %i.eh, i1 false)
  br label %bb.aq

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i156
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.do, i64 noundef 0, ptr noundef %i.dx, i64 noundef %i.dy)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.am, %bb.ao, %bb.an, %bb.ap
  store i64 %i.eb, ptr %i.c, align 8, !tbaa !73
  %i.ei = load ptr, ptr %7, align 8, !tbaa !72
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.eb
  store i32 0, ptr %i.ej, align 4, !tbaa !76
  %i.ek = load ptr, ptr %11, align 8, !tbaa !72   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.as
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %bb.aq
  %i.em = load i64, ptr %i.as, align 8, !tbaa !67
  %i.en = shl i64 %i.em, 2
  %i.eo = add i64 %i.en, 4
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #40
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  %i.ep = load ptr, ptr %9, align 8, !tbaa !66    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.ae
  br i1 %i.eq, label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit
  %i.er = load i64, ptr %i.ae, align 8, !tbaa !67
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #40
  br label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit

_ZN7jsonnet8internal13LocationRangeD2Ev.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0400.0455, i64 8 ; 2 uses
  %.not411 = icmp eq ptr %i.et, %.val110
  br i1 %.not411, label %._crit_edge459, label %bb.n

bb.ar:                                            ; preds = %bb.y
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit166

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ap, %bb.ak, %bb.af, %.invoke
  %lpad.loopexit.split-lp567 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = load ptr, ptr %11, align 8, !tbaa !72   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.as
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i164
end_hunk_1
begin_hunk_2_@_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter12manifestJsonERKNS0_13LocationRangeEbRKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE:bb.a
bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i245
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.jv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ke, ptr noundef nonnull align 4 dereferenceable(12) @.str.400, i64 12, i1 false)
  br label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit252

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i245
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.jv, i64 noundef 0, ptr noundef nonnull @.str.400, i64 noundef 3)
          to label %_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit252 unwind label %bb.ca

_ZN7jsonnet8internal13UStringStreamlsEPKDi.exit252: ; preds = %bb.cg, %bb.cf
  store i64 %i.jy, ptr %i.c, align 8, !tbaa !73
  %i.kf = load ptr, ptr %7, align 8, !tbaa !72
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.jy
  store i32 0, ptr %i.kg, align 4, !tbaa !76
  br label %bb.ei

bb.ch:                                            ; preds = %_ZNSt3setIPKN7jsonnet8internal10IdentifierESt4lessIS4_ESaIS4_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  br i1 %3, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.kh = load ptr, ptr %4, align 8, !tbaa !72, !noalias !710
  %i.ki = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !73, !noalias !710
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !710
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.54") align 8 %18, ptr noundef %i.kh, i64 noundef %i.kj, ptr noundef nonnull @.str.392, i64 noundef 3, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZStplIDiSt11char_traitsIDiESaIDiEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit255 unwind label %bb.cr

_ZStplIDiSt11char_traitsIDiESaIDiEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit255: ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !710
  br label %bb.cn

bb.cj:                                            ; preds = %bb.ch
  %i.kk = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.kk, ptr %18, align 8, !tbaa !74
  %i.kl = load ptr, ptr %4, align 8, !tbaa !72    ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !73 ; 6 uses
  %.idx.i256 = shl nuw nsw i64 %i.kn, 2           ; 3 uses
  %i.ko = icmp ugt i64 %i.kn, 3
  br i1 %i.ko, label %bb.ck, label %._crit_edge.i.i257

bb.ck:                                            ; preds = %bb.cj
  %i.kp = icmp ugt i64 %i.kn, 1152921504606846975
  br i1 %i.kp, label %.noexc.i260, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i259

.noexc.i260:                                      ; preds = %bb.ck
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #42
          to label %.noexc261 unwind label %bb.cr

.noexc261:                                        ; preds = %.noexc.i260
  unreachable

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i259: ; preds = %bb.ck
  %i.kq = add nuw nsw i64 %.idx.i256, 4
  %i.kr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kq) #41
          to label %.noexc262 unwind label %bb.cr ; 2 uses

.noexc262:                                        ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i259
  store ptr %i.kr, ptr %18, align 8, !tbaa !72
  store i64 %i.kn, ptr %i.kk, align 8, !tbaa !67
  br label %._crit_edge.i.i257

._crit_edge.i.i257:                               ; preds = %.noexc262, %bb.cj
  %.pre8.i.i258 = phi ptr [ %i.kr, %.noexc262 ], [ %i.kk, %bb.cj ] ; 3 uses
  switch i64 %i.kn, label %bb.cm [
    i64 1, label %bb.cl
    i64 0, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEC2ERKS4_.exit263
  ]

bb.cl:                                            ; preds = %._crit_edge.i.i257
  %i.ks = load i32, ptr %i.kl, align 4, !tbaa !76
  store i32 %i.ks, ptr %.pre8.i.i258, align 4, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEC2ERKS4_.exit263

bb.cm:                                            ; preds = %._crit_edge.i.i257
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.pre8.i.i258, ptr align 4 %i.kl, i64 %.idx.i256, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEC2ERKS4_.exit263

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEC2ERKS4_.exit263: ; preds = %._crit_edge.i.i257, %bb.cl, %bb.cm
  %i.kt = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.kn, ptr %i.kt, align 8, !tbaa !73
  %i.ku = getelementptr inbounds nuw i8, ptr %.pre8.i.i258, i64 %.idx.i256
  store i32 0, ptr %i.ku, align 4, !tbaa !76
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEC2ERKS4_.exit263, %_ZStplIDiSt11char_traitsIDiESaIDiEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit255
  %i.kv = phi ptr [ @.str.402, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEC2ERKS4_.exit263 ], [ @.str.401, %_ZStplIDiSt11char_traitsIDiESaIDiEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit255 ]
  %i.kw = load ptr, ptr %i.jc, align 8, !tbaa !166 ; 2 uses
  %.not410448 = icmp eq ptr %i.kw, %i.ja
  br i1 %.not410448, label %._crit_edge453, label %.lr.ph452

.lr.ph452:                                        ; preds = %bb.cn
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.lb = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.lc = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ld = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %.str.393..str.3941 = select i1 %3, ptr @.str.393, ptr @.str.394
  %i.le = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  br label %bb.cs

._crit_edge453:                                   ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit335, %bb.cn
  %i.lf = select i1 %3, ptr @.str.395, ptr @.str.3
  %wcslen.i.i.i264 = zext i1 %3 to i64            ; 3 uses
  %i.lg = load i64, ptr %i.c, align 8, !tbaa !73  ; 5 uses
  %i.lh = sub i64 1152921504606846975, %i.lg
  %i.li = icmp ult i64 %i.lh, %wcslen.i.i.i264
  br i1 %i.li, label %.invoke556, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i265

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i265: ; preds = %._crit_edge453
  %i.lj = add i64 %i.lg, %wcslen.i.i.i264         ; 7 uses
  %i.lk = load ptr, ptr %7, align 8, !tbaa !72    ; 4 uses
  %i.ll = icmp eq ptr %i.lk, %i.b
  br i1 %i.ll, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i271, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i266

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i271: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i265
  %i.lm = icmp ult i64 %i.lg, 4
  call void @llvm.assume(i1 %i.lm)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i267

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i266: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i265
  %i.ln = load i64, ptr %i.b, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i267

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i267: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i266, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i271
  %i.lo = phi i64 [ %i.ln, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i266 ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i271 ]
  %.not.i.i.i268 = icmp ugt i64 %i.lj, %i.lo
  br i1 %.not.i.i.i268, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i267
  br i1 %3, label %bb.cp, label %bb.dz

bb.cp:                                            ; preds = %bb.co
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.lg
  store i32 10, ptr %i.lp, align 4, !tbaa !76
  br label %bb.dz

bb.cq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i267
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.lg, i64 noundef 0, ptr noundef nonnull %i.lf, i64 noundef %wcslen.i.i.i264)
          to label %._crit_edge466 unwind label %.loopexit.split-lp413.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge466:                                   ; preds = %bb.cq
  %.pre = load ptr, ptr %7, align 8, !tbaa !72
  br label %bb.dz

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i259, %.noexc.i260, %bb.ci
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit368

bb.cs:                                            ; preds = %.lr.ph452, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit335
  %.0450 = phi ptr [ %i.kv, %.lr.ph452 ], [ %.str.393..str.3941, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit335 ] ; 4 uses
  %.sroa.0392.0449 = phi ptr [ %i.kw, %.lr.ph452 ], [ %i.pe, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit335 ] ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0392.0449, i64 32
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.0392.0449, i64 64
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !307
  %i.lu = invoke fastcc noundef ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter11objectIndexERKNS0_13LocationRangeEPNS1_10HeapObjectEPKNS0_10IdentifierEj(ptr noundef nonnull align 8 dereferenceable(480) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %i.iz, ptr noundef %i.lt, i32 noundef 0)
          to label %bb.ct unwind label %.loopexit.split-lp413.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ct:                                            ; preds = %bb.cs
  %.val117 = load ptr, ptr %i.kx, align 8, !tbaa !194
  %i.lv = getelementptr inbounds i8, ptr %.val117, i64 -312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lv, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !253
  %.val121 = load ptr, ptr %i.ky, align 8, !tbaa !218
  %.val122 = load ptr, ptr %i.kx, align 8, !tbaa !219
  %i.lw = ptrtoint ptr %.val122 to i64
  %i.lx = ptrtoint ptr %.val121 to i64
  %i.ly = sub i64 %i.lw, %i.lx
  %i.lz = sdiv exact i64 %i.ly, 400
  %i.ma = trunc i64 %i.lz to i32
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter8evaluateEPKNS0_3ASTEj(ptr noundef nonnull align 8 dereferenceable(480) %1, ptr noundef %i.lu, i32 noundef %i.ma)
          to label %bb.cu unwind label %.loopexit.split-lp413.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter12manifestJsonERKNS0_13LocationRangeEbRKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEE(ptr dead_on_unwind noalias writable align 8 %19, ptr noundef nonnull align 8 dereferenceable(480) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.mb, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.cv unwind label %bb.dx

bb.cv:                                            ; preds = %bb.cu
  %.val116 = load ptr, ptr %i.kx, align 8, !tbaa !194 ; 2 uses
  %i.mc = getelementptr inbounds i8, ptr %.val116, i64 -400 ; 3 uses
  %i.md = getelementptr inbounds i8, ptr %.val116, i64 -312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.md, i64 16, i1 false), !tbaa.struct !253
  %.val.i276 = load i32, ptr %i.mc, align 8, !tbaa !231
  %i.me = icmp eq i32 %.val.i276, 6
  br i1 %i.me, label %bb.cw, label %_ZN7jsonnet8internal12_GLOBAL__N_15Stack3popEv.exit277

bb.cw:                                            ; preds = %bb.cv
  %i.mf = load i32, ptr %i.kz, align 8, !tbaa !96
  %i.mg = add i32 %i.mf, -1
  store i32 %i.mg, ptr %i.kz, align 8, !tbaa !96
  br label %_ZN7jsonnet8internal12_GLOBAL__N_15Stack3popEv.exit277

_ZN7jsonnet8internal12_GLOBAL__N_15Stack3popEv.exit277: ; preds = %bb.cv, %bb.cw
  store ptr %i.mc, ptr %i.kx, align 8, !tbaa !219
  call fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_15FrameD2Ev(ptr noundef nonnull align 8 dead_on_return(400) dereferenceable(400) %i.mc) #39
  %wcslen.i.i.i278 = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %.0450) ; 6 uses
  %i.mh = load i64, ptr %i.c, align 8, !tbaa !73  ; 5 uses
  %i.mi = sub i64 1152921504606846975, %i.mh
  %i.mj = icmp ult i64 %i.mi, %wcslen.i.i.i278
  br i1 %i.mj, label %.invoke552, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i279

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i279: ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_15Stack3popEv.exit277
  %i.mk = add i64 %i.mh, %wcslen.i.i.i278         ; 7 uses
  %i.ml = load ptr, ptr %7, align 8, !tbaa !72    ; 2 uses
  %i.mm = icmp eq ptr %i.ml, %i.b
  br i1 %i.mm, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i285, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i280

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i285: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i279
  %i.mn = icmp ult i64 %i.mh, 4
  call void @llvm.assume(i1 %i.mn)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i281

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i280: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i279
  %i.mo = load i64, ptr %i.b, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i281

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i281: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i280, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i285
  %i.mp = phi i64 [ %i.mo, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i280 ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i285 ]
  %.not.i.i.i282 = icmp ugt i64 %i.mk, %i.mp
  br i1 %.not.i.i.i282, label %bb.db, label %bb.cx

bb.cx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i281
  %.not8.i.i.i283 = icmp eq i64 %wcslen.i.i.i278, 0
  br i1 %.not8.i.i.i283, label %bb.dc, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.mh ; 2 uses
  %cond.i.i.i284 = icmp eq i64 %wcslen.i.i.i278, 1
  br i1 %cond.i.i.i284, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.mr = load i32, ptr %.0450, align 4, !tbaa !76
  store i32 %i.mr, ptr %i.mq, align 4, !tbaa !76
  br label %bb.dc

bb.da:                                            ; preds = %bb.cy
  %i.ms = shl i64 %wcslen.i.i.i278, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.mq, ptr nonnull align 4 %.0450, i64 %i.ms, i1 false)
  br label %bb.dc

bb.db:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i281
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.mh, i64 noundef 0, ptr noundef nonnull %.0450, i64 noundef %wcslen.i.i.i278)
          to label %bb.dc unwind label %.loopexit.split-lp418.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dc:                                            ; preds = %bb.da, %bb.cz, %bb.cx, %bb.db
  store i64 %i.mk, ptr %i.c, align 8, !tbaa !73
  %i.mt = load ptr, ptr %7, align 8, !tbaa !72    ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.mk ; 3 uses
  store i32 0, ptr %i.mu, align 4, !tbaa !76
  %i.mv = load ptr, ptr %18, align 8, !tbaa !72   ; 3 uses
  %i.mw = load i64, ptr %i.la, align 8, !tbaa !73 ; 5 uses
  %i.mx = sub i64 1152921504606846975, %i.mk
  %i.my = icmp ult i64 %i.mx, %i.mw
  br i1 %i.my, label %.invoke552, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i289

.invoke552:                                       ; preds = %bb.dc, %_ZN7jsonnet8internal12_GLOBAL__N_15Stack3popEv.exit277
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #42
          to label %.cont553 unwind label %.loopexit.split-lp418.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont553:                                         ; preds = %.invoke552
  unreachable

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i289: ; preds = %bb.dc
  %i.mz = add i64 %i.mw, %i.mk                    ; 3 uses
  %i.na = icmp eq ptr %i.mt, %i.b
  br i1 %i.na, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i295, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i290

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i295: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i289
  %i.nb = icmp ult i64 %i.mk, 4
  call void @llvm.assume(i1 %i.nb)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i291

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i290: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i289
  %i.nc = load i64, ptr %i.b, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i291

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i291: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i290, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i295
  %i.nd = phi i64 [ %i.nc, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i290 ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i295 ]
  %.not.i.i.i.i292 = icmp ugt i64 %i.mz, %i.nd
  br i1 %.not.i.i.i.i292, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i291
  switch i64 %i.mw, label %bb.df [
    i64 0, label %bb.dh
    i64 1, label %bb.de
  ]

bb.de:                                            ; preds = %bb.dd
  %i.ne = load i32, ptr %i.mv, align 4, !tbaa !76
  store i32 %i.ne, ptr %i.mu, align 4, !tbaa !76
  br label %bb.dh

bb.df:                                            ; preds = %bb.dd
  %i.nf = shl i64 %i.mw, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mu, ptr align 4 %i.mv, i64 %i.nf, i1 false)
  br label %bb.dh

bb.dg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i291
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.mk, i64 noundef 0, ptr noundef %i.mv, i64 noundef %i.mw)
          to label %bb.dh unwind label %.loopexit.split-lp418.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dh:                                            ; preds = %bb.dd, %bb.df, %bb.de, %bb.dg
  store i64 %i.mz, ptr %i.c, align 8, !tbaa !73
  %i.ng = load ptr, ptr %7, align 8, !tbaa !72
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.mz
  store i32 0, ptr %i.nh, align 4, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  invoke void @_ZN7jsonnet8internal22jsonnet_string_unparseERKNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.54") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %i.lr, i1 noundef zeroext false)
          to label %bb.di unwind label %bb.dy

bb.di:                                            ; preds = %bb.dh
  %i.ni = load ptr, ptr %20, align 8, !tbaa !72   ; 3 uses
  %i.nj = load i64, ptr %i.lb, align 8, !tbaa !73 ; 6 uses
  %i.nk = load i64, ptr %i.c, align 8, !tbaa !73  ; 5 uses
  %i.nl = sub i64 1152921504606846975, %i.nk
  %i.nm = icmp ult i64 %i.nl, %i.nj
  br i1 %i.nm, label %.invoke554, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i299

.invoke554:                                       ; preds = %bb.dr, %bb.do, %bb.di
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #42
          to label %.cont555 unwind label %.loopexit.split-lp423.loopexit.split-lp.loopexit.split-lp

.cont555:                                         ; preds = %.invoke554
  unreachable

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i299: ; preds = %bb.di
  %i.nn = add i64 %i.nk, %i.nj                    ; 8 uses
  %i.no = load ptr, ptr %7, align 8, !tbaa !72    ; 2 uses
  %i.np = icmp eq ptr %i.no, %i.b
  br i1 %i.np, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i305, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i300

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i305: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i299
  %i.nq = icmp ult i64 %i.nk, 4
  call void @llvm.assume(i1 %i.nq)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i301

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i300: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i.i299
  %i.nr = load i64, ptr %i.b, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i301

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i301: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i300, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i305
  %i.ns = phi i64 [ %i.nr, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i300 ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i.i305 ]
  %.not.i.i.i.i302 = icmp ugt i64 %i.nn, %i.ns
  br i1 %.not.i.i.i.i302, label %bb.dn, label %bb.dj

bb.dj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i301
  %.not8.i.i.i.i303 = icmp eq i64 %i.nj, 0
  br i1 %.not8.i.i.i.i303, label %bb.do, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.nk ; 2 uses
  %cond.i.i.i.i304 = icmp eq i64 %i.nj, 1
  br i1 %cond.i.i.i.i304, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.nu = load i32, ptr %i.ni, align 4, !tbaa !76
  store i32 %i.nu, ptr %i.nt, align 4, !tbaa !76
  br label %bb.do

bb.dm:                                            ; preds = %bb.dk
  %i.nv = shl i64 %i.nj, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.nt, ptr align 4 %i.ni, i64 %i.nv, i1 false)
  br label %bb.do

bb.dn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i.i301
  invoke void @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_mutateEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.nk, i64 noundef 0, ptr noundef %i.ni, i64 noundef %i.nj)
          to label %bb.do unwind label %.loopexit.split-lp423.loopexit.split-lp.loopexit.split-lp

bb.do:                                            ; preds = %bb.dm, %bb.dl, %bb.dj, %bb.dn
  store i64 %i.nn, ptr %i.c, align 8, !tbaa !73
  %i.nw = load ptr, ptr %7, align 8, !tbaa !72    ; 2 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %i.nn ; 2 uses
  store i32 0, ptr %i.nx, align 4, !tbaa !76
  %i.ny = and i64 %i.nn, -2
  %i.nz = icmp eq i64 %i.ny, 1152921504606846974
  br i1 %i.nz, label %.invoke554, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i310

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i310: ; preds = %bb.do
  %i.oa = add i64 %i.nn, 2                        ; 6 uses
  %i.ob = icmp eq ptr %i.nw, %i.b
  br i1 %i.ob, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i316, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i311

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i316: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i310
  %i.oc = icmp ult i64 %i.nn, 4
  call void @llvm.assume(i1 %i.oc)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i312

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i311: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE15_M_check_lengthEmmPKc.exit.i.i310
  %i.od = load i64, ptr %i.b, align 8, !tbaa !67
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i312

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i.i.i312: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i311, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i316
  %i.oe = phi i64 [ %i.od, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i311 ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i.i.i316 ]
  %.not.i.i.i313 = icmp ugt i64 %i.oa, %i.oe
  br i1 %.not.i.i.i313, label %bb.dq, label %bb.dp

end_hunk_2
