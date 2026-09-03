Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/parser?download=true
inline.NumInlined: 5493
inline.NumDeleted: 1043
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN4pbrt22FormattingParserTarget7TextureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_NS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorISB_EEEENS_7FileLocE:bb.a
  %i.aee = icmp eq ptr %i.aed, %i.adm
  br i1 %i.aee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i355
  %i.aef = load i64, ptr %i.adm, align 8, !tbaa !44
  %i.aeg = add i64 %i.aef, 1
  call void @_ZdlPvm(ptr noundef %i.aed, i64 noundef %i.aeg) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i355, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  br label %bb.cx

bb.cs:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit332.thread429
  %i.aeh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363

bb.ct:                                            ; preds = %_ZNK4pbrt22FormattingParserTarget6indentB5cxx11Ei.exit349
  %i.aei = landingpad { ptr, i32 }
          cleanup
  br label %.body356

.body356:                                         ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i350, %bb.ct
  %eh.lpad-body357 = phi { ptr, i32 } [ %i.aei, %bb.ct ], [ %i.adr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i350 ], [ %i.adr, %bb.cr ] ; 2 uses
  %i.aej = load ptr, ptr %30, align 8, !tbaa !45  ; 2 uses
  %i.aek = icmp eq ptr %i.aej, %i.adm
  br i1 %i.aek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361: ; preds = %.body356
  %i.ael = load i64, ptr %i.adm, align 8, !tbaa !44
  %i.aem = add i64 %i.ael, 1
  call void @_ZdlPvm(ptr noundef %i.aej, i64 noundef %i.aem) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363: ; preds = %.body356, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361, %bb.cs
  %.pn133 = phi { ptr, i32 } [ %i.aeh, %bb.cs ], [ %eh.lpad-body357, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361 ], [ %eh.lpad-body357, %.body356 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  br label %bb.dd

bb.cu:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit222.thread427
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  %i.aen = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aeo = load i32, ptr %i.aen, align 4, !tbaa !129, !noalias !1044
  %i.aep = sext i32 %i.aeo to i64
  %i.aeq = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 5 uses
  store ptr %i.aeq, ptr %31, align 8, !tbaa !41, !alias.scope !1044
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %31, i64 noundef %i.aep, i8 noundef signext 32)
          to label %_ZNK4pbrt22FormattingParserTarget6indentB5cxx11Ei.exit365 unwind label %bb.cw

_ZNK4pbrt22FormattingParserTarget6indentB5cxx11Ei.exit365: ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.aer = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.aer, ptr %6, align 8, !tbaa !41, !alias.scope !1045
  %i.aes = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.aes, align 8, !tbaa !43, !alias.scope !1045
  store i8 0, ptr %i.aer, align 8, !tbaa !44, !alias.scope !1045
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS7_S9_S9_EEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %6, ptr noundef nonnull @.str.179, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS6_S8_S8_EEES6_PKcDpOT_.exit.i unwind label %bb.cv

bb.cv:                                            ; preds = %_ZNK4pbrt22FormattingParserTarget6indentB5cxx11Ei.exit365
  %i.aet = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aeu = load ptr, ptr %6, align 8, !tbaa !45, !alias.scope !1045 ; 2 uses
  %i.aev = icmp eq ptr %i.aeu, %i.aer
  br i1 %i.aev, label %.body372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i366: ; preds = %bb.cv
  %i.aew = load i64, ptr %i.aer, align 8, !tbaa !44, !alias.scope !1045
  %i.aex = add i64 %i.aew, 1
  call void @_ZdlPvm(ptr noundef %i.aeu, i64 noundef %i.aex) #36
  br label %.body372

_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS6_S8_S8_EEES6_PKcDpOT_.exit.i: ; preds = %_ZNK4pbrt22FormattingParserTarget6indentB5cxx11Ei.exit365
  %i.aey = load ptr, ptr %6, align 8, !tbaa !45
  %i.aez = load ptr, ptr @stdout, align 8, !tbaa !63
  %i.afa = call i32 @fputs(ptr noundef %i.aey, ptr noundef %i.aez) ; 0 uses
  %i.afb = load ptr, ptr %6, align 8, !tbaa !45   ; 2 uses
  %i.afc = icmp eq ptr %i.afb, %i.aer
  br i1 %i.afc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i371, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i369

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i369: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS6_S8_S8_EEES6_PKcDpOT_.exit.i
  %i.afd = load i64, ptr %i.aer, align 8, !tbaa !44
  %i.afe = add i64 %i.afd, 1
  call void @_ZdlPvm(ptr noundef %i.afb, i64 noundef %i.afe) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i371

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i371: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS6_S8_S8_EEES6_PKcDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i369
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %i.aff = load ptr, ptr %31, align 8, !tbaa !45  ; 2 uses
  %i.afg = icmp eq ptr %i.aff, %i.aeq
  br i1 %i.afg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i371
  %i.afh = load i64, ptr %i.aeq, align 8, !tbaa !44
  %i.afi = add i64 %i.afh, 1
  call void @_ZdlPvm(ptr noundef %i.aff, i64 noundef %i.afi) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i371, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %i.afj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379

.body372:                                         ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i366
  %i.afk = load ptr, ptr %31, align 8, !tbaa !45  ; 2 uses
  %i.afl = icmp eq ptr %i.afk, %i.aeq
  br i1 %i.afl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377: ; preds = %.body372
  %i.afm = load i64, ptr %i.aeq, align 8, !tbaa !44
  %i.afn = add i64 %i.afm, 1
  call void @_ZdlPvm(ptr noundef %i.afk, i64 noundef %i.afn) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379: ; preds = %.body372, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377, %bb.cw
  %.pn131 = phi { ptr, i32 } [ %i.afj, %bb.cw ], [ %i.aet, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377 ], [ %i.aet, %.body372 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  br label %bb.dd

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376
  %i.afo = load ptr, ptr %13, align 8, !tbaa !45
  %i.afp = load i64, ptr %i.abn, align 8, !tbaa !43
  %i.afq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.afo, i64 noundef %i.afp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.av

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #35
  %i.afr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !129
  invoke void @_ZNK4pbrt19ParameterDictionary15ToParameterListB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 8 dereferenceable(108) %11, i32 noundef %i.afs)
          to label %bb.cy unwind label %bb.db

bb.cy:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.aft = load ptr, ptr %32, align 8, !tbaa !45
  %i.afu = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.afv = load i64, ptr %i.afu, align 8, !tbaa !43
  %i.afw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afq, ptr noundef %i.aft, i64 noundef %i.afv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit382 unwind label %bb.dc ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit382: ; preds = %bb.cy
  %i.afx = load ptr, ptr %32, align 8, !tbaa !45  ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.afz = icmp eq ptr %i.afx, %i.afy
  br i1 %i.afz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit382
  %i.aga = load i64, ptr %i.afy, align 8, !tbaa !44
  %i.agb = add i64 %i.aga, 1
  call void @_ZdlPvm(ptr noundef %i.afx, i64 noundef %i.agb) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit382, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #35
  %i.agc = load ptr, ptr %13, align 8, !tbaa !45  ; 2 uses
  %i.agd = icmp eq ptr %i.agc, %i.abo
  br i1 %i.agd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385
  %i.age = load i64, ptr %i.abo, align 8, !tbaa !44
  %i.agf = add i64 %i.age, 1
  call void @_ZdlPvm(ptr noundef %i.agc, i64 noundef %i.agf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  %i.agg = getelementptr inbounds nuw i8, ptr %11, i64 88
  store i64 0, ptr %i.agg, align 8, !tbaa !161
  %i.agh = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !162 ; 2 uses
  %.not.i.i.i.i.i389 = icmp eq ptr %i.agi, null
  br i1 %.not.i.i.i.i.i389, label %_ZN4pbrt19ParameterDictionaryD2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388
  %i.agj = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.agk = load i64, ptr %i.agj, align 8, !tbaa !165
  %i.agl = shl i64 %i.agk, 3
  %i.agm = load ptr, ptr %11, align 8, !tbaa !166 ; 2 uses
  %i.agn = load ptr, ptr %i.agm, align 8, !tbaa !30
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 24
  %i.agp = load ptr, ptr %i.ago, align 8
  invoke void %i.agp(ptr noundef nonnull align 8 dereferenceable(8) %i.agm, ptr noundef nonnull %i.agi, i64 noundef %i.agl, i64 noundef 8)
          to label %_ZN4pbrt19ParameterDictionaryD2Ev.exit unwind label %bb.da, !inline_history !2

bb.da:                                            ; preds = %bb.cz
  %i.agq = landingpad { ptr, i32 }
          catch ptr null
  %i.agr = extractvalue { ptr, i32 } %i.agq, 0
  call void @__clang_call_terminate(ptr %i.agr) #37
  unreachable

_ZN4pbrt19ParameterDictionaryD2Ev.exit:           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %.thread421

.thread421:                                       ; preds = %bb.v, %bb.t, %bb.ac, %bb.y, %_ZN4pbrt19ParameterDictionaryD2Ev.exit
  ret void

bb.db:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ags = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392

bb.dc:                                            ; preds = %bb.cy
  %i.agt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agu = load ptr, ptr %32, align 8, !tbaa !45  ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.agw = icmp eq ptr %i.agu, %i.agv
  br i1 %i.agw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390: ; preds = %bb.dc
  %i.agx = load i64, ptr %i.agv, align 8, !tbaa !44
  %i.agy = add i64 %i.agx, 1
  call void @_ZdlPvm(ptr noundef %i.agu, i64 noundef %i.agy) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390, %bb.db
  %.pn137 = phi { ptr, i32 } [ %i.ags, %bb.db ], [ %i.agt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i390 ], [ %i.agt, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #35
  br label %bb.dd

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, %bb.ck, %_ZNSt6vectorIhSaIhEED2Ev.exit218, %bb.av
  %i.agz = phi ptr [ %i.abo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392 ], [ %i.abo, %bb.av ], [ %i.abo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347 ], [ %i.abo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363 ], [ %i.abo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379 ], [ %i.op, %bb.ck ], [ %i.op, %_ZNSt6vectorIhSaIhEED2Ev.exit218 ] ; 2 uses
  %.pn137.pn = phi { ptr, i32 } [ %.pn137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit392 ], [ %i.rm, %bb.av ], [ %.pn135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347 ], [ %.pn133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363 ], [ %.pn131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379 ], [ %.pn126.pn.pn.pn, %bb.ck ], [ %.pn108.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit218 ]
  %i.aha = load ptr, ptr %13, align 8, !tbaa !45  ; 2 uses
  %i.ahb = icmp eq ptr %i.aha, %i.agz
  br i1 %i.ahb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i393

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i393: ; preds = %bb.dd
  %i.ahc = load i64, ptr %i.agz, align 8, !tbaa !44
  %i.ahd = add i64 %i.ahc, 1
  call void @_ZdlPvm(ptr noundef %i.aha, i64 noundef %i.ahd) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i393
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %bb.de

bb.de:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395, %bb.al
  %.pn137.pn.pn = phi { ptr, i32 } [ %.pn137.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit395 ], [ %i.on, %bb.al ]
  call void @_ZN4pbrt19ParameterDictionaryD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %11) #35
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.ak
  %.pn137.pn.pn.pn = phi { ptr, i32 } [ %.pn137.pn.pn, %bb.de ], [ %i.om, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.171", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.144", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !43   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !43   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #35 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !193 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !5

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !43   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #35 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  store ptr %1, ptr %2, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt12ParserTarget17ErrorExitDeferredIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !41, !alias.scope !1048
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !43, !alias.scope !1048
  store i8 0, ptr %i.b, align 8, !tbaa !44, !alias.scope !1048
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %4, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !45, !alias.scope !1048 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %common.resume.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !tbaa !44, !alias.scope !1048
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #36
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i: ; preds = %bb.a
  %i.i = load ptr, ptr %4, align 8, !tbaa !45
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef %1, ptr noundef %i.i)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.j = load ptr, ptr %4, align 8, !tbaa !45     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %_ZN4pbrt5ErrorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !44
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #36
  br label %_ZN4pbrt5ErrorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit
end_hunk_0
